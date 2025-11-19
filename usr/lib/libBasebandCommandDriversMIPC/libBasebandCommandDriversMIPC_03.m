void sub_296E64FE0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E6501C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E6500CLL);
}

void radio::MipcCommandDriver::getFieldTestConfig(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getFieldTestConfig";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296E65234(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E65270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E65260);
}

void radio::MipcCommandDriver::setAntennaTxPort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "setAntennaTxPort";
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v13 = &__block_descriptor_tmp_120;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v6, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296E65478(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E654B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E654A0);
}

void radio::MipcCommandDriver::setFieldTestConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "setFieldTestConfig";
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v13 = &__block_descriptor_tmp_120;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v6, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296E656B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E656F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E656E0);
}

void radio::MipcCommandDriver::enableDumpLogsInd(radio::MipcCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "enableDumpLogsInd";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::disableDumpLogsInd(radio::MipcCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "disableDumpLogsInd";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::simTestCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D not supported!", block, 2u);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  block[3] = &__block_descriptor_tmp_140;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v13 = 0;
  dispatch_async(v6, block);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296E65A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::getFirmwareNonce(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getRFSelfTestNonce(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = "getRFSelfTestNonce";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v11, 0xCu);
  }

  v4 = operator new(0x28uLL);
  v5 = v4;
  strcpy(v4, "Unsupported cmd: getRFSelfTestNonce");
  if (*a2 && *(a2 + 8))
  {
    v6 = xpc_string_create(v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = xpc_null_create();
    if (*a2)
    {
      v8 = _Block_copy(*a2);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 8);
    *&v11 = MEMORY[0x29EDCA5F8];
    *(&v11 + 1) = 1174405120;
    v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v13 = &__block_descriptor_tmp_218;
    if (v8)
    {
      aBlock = _Block_copy(v8);
      v15 = v6;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      aBlock = 0;
      v15 = v6;
      if (v6)
      {
LABEL_12:
        xpc_retain(v6);
        object = v7;
        if (v7)
        {
LABEL_13:
          xpc_retain(v7);
LABEL_17:
          dispatch_async(v9, &v11);
          xpc_release(object);
          object = 0;
          xpc_release(v15);
          v15 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          xpc_release(v7);
          xpc_release(v6);
          goto LABEL_22;
        }

LABEL_16:
        object = xpc_null_create();
        goto LABEL_17;
      }
    }

    v15 = xpc_null_create();
    object = v7;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_22:
  operator delete(v5);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E65DD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::setRFSelfTestTicket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D Set RF Self Test Ticket: not supported", block, 2u);
    if (!*a3)
    {
      return;
    }
  }

  else if (!*a3)
  {
    return;
  }

  if (*(a3 + 8))
  {
    __p = operator new(0x28uLL);
    strcpy(__p, "Set RF Self Test Ticket: not supported!");
    CreateError();
    if (*a3)
    {
      v5 = _Block_copy(*a3);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a3 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_120;
    if (v5)
    {
      v7 = _Block_copy(v5);
      v8 = cf;
      aBlock = v7;
      v13 = cf;
      if (!cf)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = cf;
      aBlock = 0;
      v13 = cf;
      if (!cf)
      {
LABEL_12:
        dispatch_async(v6, block);
        if (v13)
        {
          CFRelease(v13);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v5)
        {
          _Block_release(v5);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        operator delete(__p);
        return;
      }
    }

    CFRetain(v8);
    goto LABEL_12;
  }
}

void sub_296E6600C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::prepareRFSelfTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Prepare baseband for RF Self Test: not supported!", buf, 2u);
  }

  if (*a3 && *(a3 + 8))
  {
    __p = operator new(0x38uLL);
    strcpy(__p, "Prepare baseband for RF Self Test: not supported!");
    CreateError();
    if (*a3)
    {
      v5 = _Block_copy(*a3);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a3 + 8);
    *buf = MEMORY[0x29EDCA5F8];
    v12 = 1174405120;
    v13 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    v14 = &__block_descriptor_tmp_120;
    if (v5)
    {
      v7 = _Block_copy(v5);
      v8 = cf;
      aBlock = v7;
      v16 = cf;
      if (!cf)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = cf;
      aBlock = 0;
      v16 = cf;
      if (!cf)
      {
LABEL_13:
        dispatch_async(v6, buf);
        if (v16)
        {
          CFRelease(v16);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v5)
        {
          _Block_release(v5);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        operator delete(__p);
        return;
      }
    }

    CFRetain(v8);
    goto LABEL_13;
  }
}

void sub_296E661F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::sendRFSelfTestReq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "sendRFSelfTestReq";
    _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I %s: not supported!", &buf, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v13 = &__block_descriptor_tmp_140;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v16 = 0;
  dispatch_async(v6, &buf);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296E66404(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E66440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E66430);
}

void radio::MipcCommandDriver::getPkHash(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getPersParams(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x20uLL);
  __p = v4;
  v13 = xmmword_296EB9C80;
  strcpy(v4, "Unsupported cmd: getPersParams");
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v4;
    _os_log_debug_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEBUG, "#D %s", &block, 0xCu);
    if (!*a2)
    {
      goto LABEL_24;
    }
  }

  else if (!*a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_24;
  }

  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = xpc_string_create(p_p);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  if (*a2)
  {
    v9 = _Block_copy(*a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
  v16 = &__block_descriptor_tmp_218;
  if (v9)
  {
    aBlock = _Block_copy(v9);
    v18 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    v18 = xpc_null_create();
    object = v8;
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_18:
    object = xpc_null_create();
    goto LABEL_19;
  }

  aBlock = 0;
  v18 = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_14:
  xpc_retain(v7);
  object = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  xpc_retain(v8);
LABEL_19:
  dispatch_async(v10, &block);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v8);
  xpc_release(v7);
LABEL_24:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_296E667D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::getFirmwareInfo(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getManifestStatus(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = "getManifestStatus";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v11, 0xCu);
  }

  v4 = operator new(0x28uLL);
  v5 = v4;
  strcpy(v4, "Unsupported cmd: getManifestStatus");
  if (*a2 && *(a2 + 8))
  {
    v6 = xpc_string_create(v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = xpc_null_create();
    if (*a2)
    {
      v8 = _Block_copy(*a2);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 8);
    *&v11 = MEMORY[0x29EDCA5F8];
    *(&v11 + 1) = 1174405120;
    v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v13 = &__block_descriptor_tmp_218;
    if (v8)
    {
      aBlock = _Block_copy(v8);
      v15 = v6;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      aBlock = 0;
      v15 = v6;
      if (v6)
      {
LABEL_12:
        xpc_retain(v6);
        object = v7;
        if (v7)
        {
LABEL_13:
          xpc_retain(v7);
LABEL_17:
          dispatch_async(v9, &v11);
          xpc_release(object);
          object = 0;
          xpc_release(v15);
          v15 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          xpc_release(v7);
          xpc_release(v6);
          goto LABEL_22;
        }

LABEL_16:
        object = xpc_null_create();
        goto LABEL_17;
      }
    }

    v15 = xpc_null_create();
    object = v7;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_22:
  operator delete(v5);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E66B88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::getManifest(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = "getManifest";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v11, 0xCu);
  }

  v4 = operator new(0x20uLL);
  v5 = v4;
  strcpy(v4, "Unsupported cmd: getManifest");
  if (*a2 && *(a2 + 8))
  {
    v6 = xpc_string_create(v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = xpc_null_create();
    if (*a2)
    {
      v8 = _Block_copy(*a2);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 8);
    *&v11 = MEMORY[0x29EDCA5F8];
    *(&v11 + 1) = 1174405120;
    v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v13 = &__block_descriptor_tmp_218;
    if (v8)
    {
      aBlock = _Block_copy(v8);
      v15 = v6;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      aBlock = 0;
      v15 = v6;
      if (v6)
      {
LABEL_12:
        xpc_retain(v6);
        object = v7;
        if (v7)
        {
LABEL_13:
          xpc_retain(v7);
LABEL_17:
          dispatch_async(v9, &v11);
          xpc_release(object);
          object = 0;
          xpc_release(v15);
          v15 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          xpc_release(v7);
          xpc_release(v6);
          goto LABEL_22;
        }

LABEL_16:
        object = xpc_null_create();
        goto LABEL_17;
      }
    }

    v15 = xpc_null_create();
    object = v7;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_22:
  operator delete(v5);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E66E08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::setRegionCode(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setRegionCode";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::screenState(radio::MipcCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "screenState";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::forceNetworkSearch(radio::MipcCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "forceNetworkSearch";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::setBreadMode(radio::MipcCommandDriver *this, char a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void radio::MipcCommandDriver::setButterMode(radio::MipcCommandDriver *this, char a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::setButterMode(BOOL)::$_0>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::setButterMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::setButterMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void radio::MipcCommandDriver::setMCC(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setMCC";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::sendVisitInfo(radio::MipcCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "sendVisitInfo";
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::sendAccessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "sendAccessoryInfo";
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v13 = &__block_descriptor_tmp_120;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v6, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296E67608(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E67640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E67630);
}

void radio::MipcCommandDriver::getRFFEScanData(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x28uLL);
  __p = v4;
  v13 = xmmword_296EB9C90;
  strcpy(v4, "Get RFFE Scan Data: not supported!");
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v4;
    _os_log_debug_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEBUG, "#D %s: \n", &block, 0xCu);
    if (!*a2)
    {
      goto LABEL_24;
    }
  }

  else if (!*a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_24;
  }

  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = xpc_string_create(p_p);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  if (*a2)
  {
    v9 = _Block_copy(*a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
  v16 = &__block_descriptor_tmp_218;
  if (v9)
  {
    aBlock = _Block_copy(v9);
    v18 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    v18 = xpc_null_create();
    object = v8;
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_18:
    object = xpc_null_create();
    goto LABEL_19;
  }

  aBlock = 0;
  v18 = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_14:
  xpc_retain(v7);
  object = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  xpc_retain(v8);
LABEL_19:
  dispatch_async(v10, &block);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v8);
  xpc_release(v7);
LABEL_24:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_296E67894(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::enableResetSPMIEvent(radio::MipcCommandDriver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEBUG, "#D Enable resetting SPMI: not supported!", v2, 2u);
  }
}

void radio::MipcCommandDriver::toString(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        a2[23] = 15;
        strcpy(a2, "kOnlineEntering");
      }

      else
      {
        a2[23] = 5;
        *a2 = 1818511723;
        a2[4] = 101;
        a2[5] = 0;
      }
    }

    else if (a1 == 2)
    {
      a2[23] = 20;
      strcpy(a2, "kOnlineEnteringError");
    }

    else if (a1 == 3)
    {
      a2[23] = 17;
      strcpy(a2, "kLowpowerEntering");
    }

    else
    {
      a2[23] = 22;
      strcpy(a2, "kLowpowerEnteringError");
    }
  }

  else if (a1 > 7)
  {
    if (a1 == 8)
    {
      a2[23] = 20;
      strcpy(a2, "kStewieEnteringError");
    }

    else if (a1 == 9)
    {
      a2[23] = 17;
      strcpy(a2, "kPowerOffEntering");
    }

    else
    {
      a2[23] = 22;
      strcpy(a2, "kPowerOffEnteringError");
    }
  }

  else if (a1 == 5)
  {
    a2[23] = 17;
    strcpy(a2, "kCampOnlyEntering");
  }

  else if (a1 == 6)
  {
    a2[23] = 22;
    strcpy(a2, "kCampOnlyEnteringError");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "kStewieEntering");
  }
}

std::string *radio::MipcCommandDriver::reqCnfMaskToStr@<X0>(char a1@<W1>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 1;
  LOWORD(a2->__r_.__value_.__l.__data_) = 91;
  if (a1)
  {
    std::string::append(a2, "rd st,", 6uLL);
  }

  if ((a1 & 2) != 0)
  {
    std::string::append(a2, "svc type,", 9uLL);
  }

  if ((a1 & 4) != 0)
  {
    std::string::append(a2, "skp md,", 7uLL);
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_296E67C10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::radioStateToStr(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    a2[23] = 2;
    strcpy(a2, "On");
  }

  else if (a1)
  {
    a2[23] = 7;
    strcpy(a2, "Unknown");
  }

  else
  {
    a2[23] = 3;
    *a2 = 26191;
    a2[2] = 102;
    a2[3] = 0;
  }
}

void radio::MipcCommandDriver::serviceTypeToStr(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    a2[23] = 7;
    strcpy(a2, "Rx Only");
  }

  else if (a1)
  {
    a2[23] = 7;
    strcpy(a2, "Unknown");
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "Normal");
  }
}

void radio::MipcCommandDriver::skipperModeToStr(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    a2[23] = 2;
    strcpy(a2, "On");
  }

  else if (a1)
  {
    a2[23] = 7;
    strcpy(a2, "Unknown");
  }

  else
  {
    a2[23] = 3;
    *a2 = 26191;
    a2[2] = 102;
    a2[3] = 0;
  }
}

uint64_t radio::MipcCommandDriver::getAggregatedOpMode(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[3]);
  if (*(this + 323))
  {
    v2 = *(this + 324);
    v3 = this[5];
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Aggregated Op Mode: CampOnly", buf, 2u);
        return 6;
      }

      else
      {
        return 6;
      }
    }

    else if (result)
    {
      *v9 = 0;
      _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Aggregated Op Mode: Online", v9, 2u);
      return 0;
    }
  }

  else if (*(this + 326) == 1)
  {
    v5 = this[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Aggregated Op Mode: Reset", v13, 2u);
    }

    return 4;
  }

  else
  {
    v6 = *(this + 325);
    v7 = this[5];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v12 = 0;
        _os_log_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEFAULT, "#I Aggregated Op Mode: Stewie", v12, 2u);
      }

      return 7;
    }

    else
    {
      if (v8)
      {
        *v11 = 0;
        _os_log_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEFAULT, "#I Aggregated Op Mode: LowPower", v11, 2u);
      }

      return 1;
    }
  }

  return result;
}

void radio::MipcCommandDriver::setRadioState(dispatch_queue_t *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 323) == 1)
    {
      v6 = v10 + 2;
      v11 = 2;
      LOWORD(v10[0]) = 28239;
    }

    else if (*(this + 323))
    {
      v6 = v10 + 7;
      v11 = 7;
      qmemcpy(v10, "Unknown", 7);
    }

    else
    {
      v6 = v10 + 3;
      v11 = 3;
      qmemcpy(v10, "Off", 3);
    }

    *v6 = 0;
    if (a2 == 1)
    {
      v7 = __p + 2;
      v9 = 2;
      LOWORD(__p[0]) = 28239;
    }

    else if (a2)
    {
      v7 = __p + 7;
      v9 = 7;
      qmemcpy(__p, "Unknown", 7);
    }

    else
    {
      v7 = __p + 3;
      v9 = 3;
      qmemcpy(__p, "Off", 3);
    }

    *v7 = 0;
    *buf = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = __p;
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D Setting radio state from %s to %s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  *(this + 323) = a2;
  v5 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::setServiceType(dispatch_queue_t *this, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_2;
  }

  v6 = __p + 7;
  v7 = v12 + 7;
  if (*(this + 324) == 1)
  {
    v13 = 7;
    LODWORD(v12[0]) = 1327528018;
    v8 = 2037149263;
  }

  else
  {
    if (!*(this + 324))
    {
      v7 = v12 + 6;
      v13 = 6;
      qmemcpy(v12, "Normal", 6);
      goto LABEL_9;
    }

    v13 = 7;
    LODWORD(v12[0]) = 1852534357;
    v8 = 1853321070;
  }

  *(v12 + 3) = v8;
LABEL_9:
  *v7 = 0;
  if (a2 == 1)
  {
    v11 = 7;
    LODWORD(__p[0]) = 1327528018;
    v9 = 2037149263;
LABEL_14:
    *(__p + 3) = v9;
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = 7;
    LODWORD(__p[0]) = 1852534357;
    v9 = 1853321070;
    goto LABEL_14;
  }

  v6 = __p + 6;
  v11 = 6;
  qmemcpy(__p, "Normal", 6);
LABEL_15:
  *v6 = 0;
  *buf = 136315394;
  v15 = v12;
  v16 = 2080;
  v17 = __p;
  _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D Setting service type from %s to %s", buf, 0x16u);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

LABEL_2:
  *(this + 324) = a2;
  v5 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::checkPendingPowerOff_sync(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[3]);
  v2 = this[38];
  if (v2)
  {
    v3 = this[39];
    if (v3)
    {
      v4 = this[37];
      v7 = this[38];
      v8 = v3;
      this[38] = 0;
      this[39] = 0;
      this[37] = 0;
      aBlock = _Block_copy(v2);
      object = v3;
      dispatch_retain(v3);
      radio::MipcCommandDriver::handleOpModeTransitionToPowerOff_sync(this, v4, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      dispatch_release(v3);
      _Block_release(v2);
    }
  }
}

void sub_296E683EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a11);
  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::handleOpModeTransitionToPowerOff_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  *(a1 + 326) = 1;
  if (radio::OpMode::getMode(*(a1 + 256)) == 7)
  {
    *(a1 + 320) |= 4u;
    radio::MipcCommandDriver::sendSkipperModeSwitchRequest(a1, a2, 0);
  }

  *(a1 + 320) |= 2u;
  radio::MipcCommandDriver::sendServiceTypeChangeRequest(a1, a2, 0);
  *(a1 + 320) |= 1u;
  radio::MipcCommandDriver::sendRadioStateChangeRequest(a1, a2, 1, 1);
  v6 = operator new(0x20uLL);
  v6[1] = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = *(a1 + 272);
  *v6 = v7;
  *(v6 + 1) = a1 + 272;
  *(v7 + 8) = v6;
  *(a1 + 272) = v6;
  ++*(a1 + 288);
  radio::MipcCommandDriver::setTransitionState_sync(a1, 9);

  radio::MipcCommandDriver::startModeTransitionTimer(a1);
}

void radio::MipcCommandDriver::setSkipperMode(dispatch_queue_t *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 325) == 1)
    {
      v6 = v10 + 2;
      v11 = 2;
      LOWORD(v10[0]) = 28239;
    }

    else if (*(this + 325))
    {
      v6 = v10 + 7;
      v11 = 7;
      qmemcpy(v10, "Unknown", 7);
    }

    else
    {
      v6 = v10 + 3;
      v11 = 3;
      qmemcpy(v10, "Off", 3);
    }

    *v6 = 0;
    if (a2 == 1)
    {
      v7 = __p + 2;
      v9 = 2;
      LOWORD(__p[0]) = 28239;
    }

    else if (a2)
    {
      v7 = __p + 7;
      v9 = 7;
      qmemcpy(__p, "Unknown", 7);
    }

    else
    {
      v7 = __p + 3;
      v9 = 3;
      qmemcpy(__p, "Off", 3);
    }

    *v7 = 0;
    *buf = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = __p;
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D Setting skipper mode from %s to %s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  *(this + 325) = a2;
  v5 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::handleCampOnlyServiceTypeInd_sync(dispatch_queue_t *this, const mipc::cust::Service_Type_Ind *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  v5 = &__p[15];
  v6 = *(this + 322);
  if (v6 <= 4)
  {
    if (*(this + 322) <= 1u)
    {
      if (!*(this + 322))
      {
        v5 = &__p[5];
        __p[23] = 5;
        qmemcpy(__p, "kIdle", 5);
        goto LABEL_27;
      }

      __p[23] = 15;
      v10 = "kOnlineEntering";
      goto LABEL_24;
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        v7 = "kLowpowerEnteringError";
        goto LABEL_26;
      }

      __p[23] = 17;
      __p[16] = 103;
      v8 = "kLowpowerEntering";
LABEL_18:
      *__p = *v8;
      v5 = &__p[17];
      goto LABEL_27;
    }

    __p[23] = 20;
    *&__p[16] = 1919906418;
    v9 = "kOnlineEnteringError";
LABEL_20:
    *__p = *v9;
    v5 = &__p[20];
    goto LABEL_27;
  }

  if (*(this + 322) > 7u)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        v7 = "kPowerOffEnteringError";
        goto LABEL_26;
      }

      __p[23] = 17;
      __p[16] = 103;
      v8 = "kPowerOffEntering";
      goto LABEL_18;
    }

    __p[23] = 20;
    *&__p[16] = 1919906418;
    v9 = "kStewieEnteringError";
    goto LABEL_20;
  }

  if (v6 == 5)
  {
    __p[23] = 17;
    __p[16] = 103;
    v8 = "kCampOnlyEntering";
    goto LABEL_18;
  }

  if (v6 != 6)
  {
    __p[23] = 15;
    v10 = "kStewieEntering";
LABEL_24:
    *__p = *v10;
    *&__p[7] = *(v10 + 7);
    goto LABEL_27;
  }

  v7 = "kCampOnlyEnteringError";
LABEL_26:
  __p[23] = 22;
  *__p = *v7;
  *&__p[14] = *(v7 + 14);
  v5 = &__p[22];
LABEL_27:
  *v5 = 0;
  LODWORD(buf) = 136446210;
  *(&buf + 4) = __p;
  _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Received service type indication from BB in state: %{public}s", &buf, 0xCu);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_29:
  if (mipc::operator==())
  {
    v11 = *(a2 + 11);
    if (!v11)
    {
      goto LABEL_40;
    }

    v12 = this[5];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    v24 = &__p[7];
    if (*v11 == 1)
    {
      __p[23] = 7;
      *__p = 1327528018;
      v25 = 2037149263;
    }

    else
    {
      if (!*v11)
      {
        v24 = &__p[6];
        __p[23] = 6;
        qmemcpy(__p, "Normal", 6);
LABEL_62:
        *v24 = 0;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = __p;
        _os_log_debug_impl(&dword_296E3E000, v12, OS_LOG_TYPE_DEBUG, "#D Received service type: %s", &buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v11 = *(a2 + 11);
LABEL_32:
        radio::MipcCommandDriver::setServiceType(this, *v11);
        goto LABEL_40;
      }

      __p[23] = 7;
      *__p = 1852534357;
      v25 = 1853321070;
    }

    *&__p[3] = v25;
    goto LABEL_62;
  }

  v13 = *(a2 + 4);
  memset(v26, 170, sizeof(v26));
  v29 = 7;
  buf = v13;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[14] = v14;
  v33[15] = v14;
  v33[13] = v14;
  v33[12] = v14;
  v33[11] = v14;
  v33[10] = v14;
  v33[9] = v14;
  v33[8] = v14;
  v33[7] = v14;
  v33[6] = v14;
  v33[5] = v14;
  v33[4] = v14;
  v33[3] = v14;
  v33[2] = v14;
  v33[1] = v14;
  v33[0] = v14;
  *__p = v33;
  *&__p[8] = xmmword_296EB9CA0;
  v31 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v32 = 0;
  __src = v33;
  v27[0] = 1;
  v27[1] = &buf;
  v27[2] = 7;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__p, "Service type indication failure {:#0x}", 38, v27);
  v15 = *&__p[16];
  if (*&__p[16] >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = __src;
  if (*&__p[16] >= 0x17uLL)
  {
    if ((*&__p[16] | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (*&__p[16] | 7) + 1;
    }

    v17 = operator new(v21);
    v26[1] = v15;
    v26[2] = (v21 | 0x8000000000000000);
    v26[0] = v17;
  }

  else
  {
    HIBYTE(v26[2]) = __p[16];
    v17 = v26;
    if (!*&__p[16])
    {
      LOBYTE(v26[0]) = 0;
      v18 = __src;
      if (__src == v33)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  memmove(v17, v16, v15);
  *(v15 + v17) = 0;
  v18 = __src;
  if (__src != v33)
  {
LABEL_37:
    operator delete(v18);
  }

LABEL_38:
  v19 = this[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v22 = v26;
    if (SHIBYTE(v26[2]) < 0)
    {
      v22 = v26[0];
    }

    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_error_impl(&dword_296E3E000, v19, OS_LOG_TYPE_ERROR, "%s", __p, 0xCu);
    if ((SHIBYTE(v26[2]) & 0x80000000) == 0)
    {
LABEL_40:
      if (!*(this + 322))
      {
        goto LABEL_55;
      }

      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v26[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v26[0]);
  if (!*(this + 322))
  {
    goto LABEL_55;
  }

LABEL_41:
  if ((mipc::operator==() & 1) == 0)
  {
    dispatch_assert_queue_V2(this[3]);
    v20 = *(this + 322) - 1;
    if (v20 <= 8 && ((0x155u >> v20) & 1) != 0)
    {
      radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
    }
  }

LABEL_55:
  radio::MipcCommandDriver::evaluate_sync(this);
  v23 = *MEMORY[0x29EDCA608];
}

void sub_296E68C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p)
{
  if (__p != v56)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::setTransitionStateToError_sync(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[3]);
  v2 = *(this + 322) - 1;
  if (v2 <= 8 && ((0x155u >> v2) & 1) != 0)
  {
    v3 = byte_296EBEADB[(*(this + 322) - 1)];

    radio::MipcCommandDriver::setTransitionState_sync(this, v3);
  }
}

void radio::MipcCommandDriver::evaluate_sync(radio::MipcCommandDriver *this)
{
  v67 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(*(this + 3));
  if (*(this + 321) == *(this + 320) || (*(this + 328) & 1) != 0)
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    v3 = *(this + 322);
    if (v3 <= 4)
    {
      if (*(this + 322) <= 1u)
      {
        if (!*(this + 322))
        {
          *(&v58.__r_.__value_.__s + 23) = 5;
          strcpy(&v58, "kIdle");
          v7 = *(this + 323);
          if (v7 != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        *(&v58.__r_.__value_.__s + 23) = 15;
        v9 = "kOnlineEntering";
        goto LABEL_31;
      }

      if (v3 != 2)
      {
        if (v3 == 3)
        {
          *(&v58.__r_.__value_.__s + 23) = 17;
          v58.__r_.__value_.__s.__data_[16] = 103;
          v6 = "kLowpowerEntering";
          goto LABEL_23;
        }

        v4 = "kLowpowerEnteringError";
        goto LABEL_35;
      }

      *(&v58.__r_.__value_.__s + 23) = 20;
      LODWORD(v58.__r_.__value_.__r.__words[2]) = 1919906418;
      v8 = "kOnlineEnteringError";
    }

    else
    {
      if (*(this + 322) <= 7u)
      {
        if (v3 != 5)
        {
          if (v3 == 6)
          {
            v4 = "kCampOnlyEnteringError";
            goto LABEL_35;
          }

          *(&v58.__r_.__value_.__s + 23) = 15;
          v9 = "kStewieEntering";
LABEL_31:
          v58.__r_.__value_.__r.__words[0] = *v9;
          *(v58.__r_.__value_.__r.__words + 7) = *(v9 + 7);
          v58.__r_.__value_.__s.__data_[15] = 0;
          v7 = *(this + 323);
          if (v7 != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        *(&v58.__r_.__value_.__s + 23) = 17;
        v58.__r_.__value_.__s.__data_[16] = 103;
        v6 = "kCampOnlyEntering";
LABEL_23:
        *&v58.__r_.__value_.__l.__data_ = *v6;
        v58.__r_.__value_.__s.__data_[17] = 0;
        v7 = *(this + 323);
        if (v7 != 1)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      if (v3 != 8)
      {
        if (v3 == 9)
        {
          *(&v58.__r_.__value_.__s + 23) = 17;
          v58.__r_.__value_.__s.__data_[16] = 103;
          v6 = "kPowerOffEntering";
          goto LABEL_23;
        }

        v4 = "kPowerOffEnteringError";
LABEL_35:
        *&v58.__r_.__value_.__l.__data_ = *v4;
        *(&v58.__r_.__value_.__r.__words[1] + 6) = *(v4 + 14);
        HIWORD(v58.__r_.__value_.__r.__words[2]) = 5632;
        v7 = *(this + 323);
        if (v7 != 1)
        {
LABEL_36:
          if (v7)
          {
            *(&__dst.__r_.__value_.__s + 23) = 7;
            strcpy(&__dst, "Unknown");
            v10 = *(this + 324);
            if (v10 != 1)
            {
              goto LABEL_38;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = 3;
            LODWORD(__dst.__r_.__value_.__l.__data_) = 6710863;
            v10 = *(this + 324);
            if (v10 != 1)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_42;
        }

LABEL_32:
        *(&__dst.__r_.__value_.__s + 23) = 2;
        strcpy(&__dst, "On");
        v10 = *(this + 324);
        if (v10 != 1)
        {
LABEL_38:
          if (!v10)
          {
            v56 = 6;
            strcpy(v55, "Normal");
            v11 = *(this + 325);
            if (v11 == 1)
            {
LABEL_40:
              v12 = v53 + 2;
              v54 = 2;
              LOWORD(v53[0]) = 28239;
LABEL_48:
              *v12 = 0;
              v14 = *(this + 326);
              radio::OpMode::getMode(*(this + 32));
              radio::OpMode::modeToString();
              if (v52 >= 0)
              {
                v15 = &v51;
              }

              else
              {
                v15 = v51;
              }

              radio::MipcCommandDriver::reqCnfMaskToStr(*(this + 320), &v50);
              v16 = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
              v17 = v50.__r_.__value_.__r.__words[0];
              radio::MipcCommandDriver::reqCnfMaskToStr(*(this + 321), &__p);
              v18 = &v50;
              if (v16 < 0)
              {
                v18 = v17;
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136316930;
              *&buf[4] = &v58;
              *&buf[12] = 2080;
              *&buf[14] = &__dst;
              *&buf[22] = 2080;
              *&buf[24] = v55;
              LOWORD(v60) = 2080;
              *(&v60 + 2) = v53;
              WORD5(v60) = 1024;
              HIDWORD(v60) = v14;
              *v61 = 2080;
              *&v61[2] = v15;
              *&v61[10] = 2080;
              *&v61[12] = v18;
              *&v61[20] = 2080;
              *&v61[22] = p_p;
              _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I evaluate: tr: %s, rd: %s, svc: %s, skp: %s, pOff: %d, curr op mode: %s, exp reqCnf: %s, curr reqCnf: %s", buf, 0x4Eu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_58:
                  if ((v52 & 0x80000000) == 0)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_70;
                }
              }

              else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

              operator delete(v50.__r_.__value_.__l.__data_);
              if ((v52 & 0x80000000) == 0)
              {
LABEL_59:
                if ((v54 & 0x80000000) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_71;
              }

LABEL_70:
              operator delete(v51);
              if ((v54 & 0x80000000) == 0)
              {
LABEL_60:
                if ((v56 & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_72;
              }

LABEL_71:
              operator delete(v53[0]);
              if ((v56 & 0x80000000) == 0)
              {
LABEL_61:
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_73;
              }

LABEL_72:
              operator delete(v55[0]);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_62:
                if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_74;
              }

LABEL_73:
              operator delete(__dst.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_63:
                memset(&v58, 0, sizeof(v58));
                v20 = *(this + 322);
                if (v20 <= 5)
                {
LABEL_64:
                  if (v20 != 2)
                  {
                    if (v20 != 4)
                    {
                      goto LABEL_81;
                    }

                    v21 = "Setting operating mode to LowPower failed";
                    goto LABEL_79;
                  }

                  v21 = "Setting operating mode to Online failed";
                  v22 = 39;
                  goto LABEL_80;
                }

LABEL_75:
                if (v20 == 6)
                {
                  v21 = "Setting operating mode to CampOnly failed";
LABEL_79:
                  v22 = 41;
                  goto LABEL_80;
                }

                if (v20 != 10)
                {
                  goto LABEL_81;
                }

                *(this + 326) = 0;
                v21 = "Setting operating mode to Poweroff(reset) failed";
                v22 = 48;
LABEL_80:
                std::string::__assign_external(&v58, v21, v22);
                v20 = *(this + 322);
LABEL_81:
                if (!v20)
                {
                  dispatch_assert_queue_V2(*(this + 3));
                  AggregatedOpMode = radio::MipcCommandDriver::getAggregatedOpMode(this);
                  if (radio::OpMode::getMode(*(this + 32)) != AggregatedOpMode)
                  {
                    v31 = *(this + 32);
                    radio::OpMode::setMode();
                    dispatch_assert_queue_V2(*(this + 3));
                    radio::OpMode::getMode(*(this + 32));
                    radio::CommandDriver::handleOperatingModeChanged_sync();
                  }

                  goto LABEL_139;
                }

                if (*(this + 321) != *(this + 320) && *(this + 328) != 1)
                {
LABEL_139:
                  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v58.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_141;
                }

                if (*(this + 327) == 1)
                {
                  v23 = *(this + 5);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_296E3E000, v23, OS_LOG_TYPE_DEFAULT, "#I Canceling operating mode timeout timer", buf, 2u);
                  }

                  *(this + 328) = 0;
                  v24 = *(this + 42);
                  if (v24)
                  {
                    dispatch_source_cancel(v24);
                    v25 = *(this + 42);
                    *(this + 42) = 0;
                    if (v25)
                    {
                      dispatch_release(v25);
                    }
                  }
                }

                dispatch_assert_queue_V2(*(this + 3));
                v26 = radio::MipcCommandDriver::getAggregatedOpMode(this);
                Mode = radio::OpMode::getMode(*(this + 32));
                if (Mode != v26)
                {
                  v28 = *(this + 32);
                  radio::OpMode::setMode();
                }

                if (*(this + 327) == 1)
                {
                  v29 = radio::OpMode::getMode(*(this + 32));
                  if (*(this + 322) - 1 <= 8)
                  {
                    if (v29 == byte_296EBEAD2[(*(this + 322) - 1)])
                    {
                      goto LABEL_136;
                    }

LABEL_99:
                    v66 = 0xAAAAAAAAAAAAAAAALL;
                    *&v32 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v65[7] = v32;
                    v65[8] = v32;
                    v65[5] = v32;
                    v65[6] = v32;
                    v65[3] = v32;
                    v65[4] = v32;
                    v65[1] = v32;
                    v65[2] = v32;
                    v64 = v32;
                    v65[0] = v32;
                    *v62 = v32;
                    v63 = v32;
                    *v61 = v32;
                    *&v61[16] = v32;
                    *&buf[16] = v32;
                    v60 = v32;
                    *buf = v32;
                    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
                    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], "Unexpected Mode Transition, current: ", 37);
                    radio::OpMode::getMode(*(this + 32));
                    radio::OpMode::modeToString();
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_dst = &__dst;
                    }

                    else
                    {
                      p_dst = __dst.__r_.__value_.__r.__words[0];
                    }

                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = __dst.__r_.__value_.__l.__size_;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, p_dst, size);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], ",expected: ", 11);
                    v37 = *(this + 32);
                    if (*(this + 322) - 1 <= 8)
                    {
                      v38 = byte_296EBEAD2[(*(this + 322) - 1)];
                    }

                    radio::OpMode::modeToString();
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v39 = &__dst;
                    }

                    else
                    {
                      v39 = __dst.__r_.__value_.__r.__words[0];
                    }

                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v40 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v40 = __dst.__r_.__value_.__l.__size_;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v39, v40);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                      v41 = BYTE8(v64);
                      if ((BYTE8(v64) & 0x10) == 0)
                      {
LABEL_117:
                        if ((v41 & 8) == 0)
                        {
                          v42 = 0;
                          *(&__dst.__r_.__value_.__s + 23) = 0;
                          v43 = &__dst;
                          goto LABEL_131;
                        }

                        v45 = *(&v60 + 1);
                        v42 = *&v61[8] - *(&v60 + 1);
                        if (*&v61[8] - *(&v60 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
                        {
LABEL_143:
                          std::string::__throw_length_error[abi:ne200100]();
                        }

LABEL_123:
                        if (v42 >= 0x17)
                        {
                          if ((v42 | 7) == 0x17)
                          {
                            v46 = 25;
                          }

                          else
                          {
                            v46 = (v42 | 7) + 1;
                          }

                          v43 = operator new(v46);
                          __dst.__r_.__value_.__l.__size_ = v42;
                          __dst.__r_.__value_.__r.__words[2] = v46 | 0x8000000000000000;
                          __dst.__r_.__value_.__r.__words[0] = v43;
                        }

                        else
                        {
                          *(&__dst.__r_.__value_.__s + 23) = v42;
                          v43 = &__dst;
                          if (!v42)
                          {
                            goto LABEL_131;
                          }
                        }

                        memmove(v43, v45, v42);
LABEL_131:
                        v43->__r_.__value_.__s.__data_[v42] = 0;
                        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v58.__r_.__value_.__l.__data_);
                        }

                        v58 = __dst;
                        *buf = *MEMORY[0x29EDC9528];
                        v47 = *(MEMORY[0x29EDC9528] + 72);
                        *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9528] + 64);
                        *&buf[16] = v47;
                        *&buf[24] = MEMORY[0x29EDC9570] + 16;
                        if (SHIBYTE(v63) < 0)
                        {
                          operator delete(v62[1]);
                        }

                        *&buf[24] = MEMORY[0x29EDC9568] + 16;
                        std::locale::~locale(&v60);
                        std::iostream::~basic_iostream();
                        MEMORY[0x29C267970](v65);
                        goto LABEL_136;
                      }
                    }

                    else
                    {
                      v41 = BYTE8(v64);
                      if ((BYTE8(v64) & 0x10) == 0)
                      {
                        goto LABEL_117;
                      }
                    }

                    v44 = v64;
                    if (v64 < *&v61[24])
                    {
                      *&v64 = *&v61[24];
                      v44 = *&v61[24];
                    }

                    v45 = *&v61[16];
                    v42 = v44 - *&v61[16];
                    if ((v44 - *&v61[16]) >= 0x7FFFFFFFFFFFFFF8)
                    {
                      goto LABEL_143;
                    }

                    goto LABEL_123;
                  }

                  if (v29 != 8)
                  {
                    goto LABEL_99;
                  }
                }

LABEL_136:
                radio::MipcCommandDriver::performCallback(this, &v58);
                if (Mode != v26)
                {
                  dispatch_assert_queue_V2(*(this + 3));
                  radio::OpMode::getMode(*(this + 32));
                  radio::CommandDriver::handleOperatingModeChanged_sync();
                }

                dispatch_assert_queue_V2(*(this + 3));
                *(this + 160) = 0;
                dispatch_assert_queue_V2(*(this + 3));
                radio::MipcCommandDriver::setTransitionState_sync(this, 0);
                radio::MipcCommandDriver::checkPendingPowerOff_sync(this);
                goto LABEL_139;
              }

LABEL_74:
              operator delete(v58.__r_.__value_.__l.__data_);
              memset(&v58, 0, sizeof(v58));
              v20 = *(this + 322);
              if (v20 <= 5)
              {
                goto LABEL_64;
              }

              goto LABEL_75;
            }

LABEL_45:
            if (v11)
            {
              v12 = v53 + 7;
              v54 = 7;
              qmemcpy(v53, "Unknown", 7);
            }

            else
            {
              v12 = v53 + 3;
              v54 = 3;
              qmemcpy(v53, "Off", 3);
            }

            goto LABEL_48;
          }

          v56 = 7;
          LODWORD(v55[0]) = 1852534357;
          v13 = 1853321070;
LABEL_44:
          *(v55 + 3) = v13;
          HIBYTE(v55[0]) = 0;
          v11 = *(this + 325);
          if (v11 == 1)
          {
            goto LABEL_40;
          }

          goto LABEL_45;
        }

LABEL_42:
        v56 = 7;
        LODWORD(v55[0]) = 1327528018;
        v13 = 2037149263;
        goto LABEL_44;
      }

      *(&v58.__r_.__value_.__s + 23) = 20;
      LODWORD(v58.__r_.__value_.__r.__words[2]) = 1919906418;
      v8 = "kStewieEnteringError";
    }

    *&v58.__r_.__value_.__l.__data_ = *v8;
    v58.__r_.__value_.__s.__data_[20] = 0;
    v7 = *(this + 323);
    if (v7 != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEBUG, "#D Skip evaluation - operations pending for state transition", buf, 2u);
  }

LABEL_141:
  v48 = *MEMORY[0x29EDCA608];
}

void sub_296E698D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a49);
  if ((a47 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a42);
  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::handleRadioInd_sync(dispatch_queue_t *this, const mipc::nw::Radio_Ind *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  v5 = &__p[15];
  v6 = *(this + 322);
  if (v6 <= 4)
  {
    if (*(this + 322) <= 1u)
    {
      if (!*(this + 322))
      {
        v5 = &__p[5];
        __p[23] = 5;
        qmemcpy(__p, "kIdle", 5);
        goto LABEL_27;
      }

      __p[23] = 15;
      v10 = "kOnlineEntering";
      goto LABEL_24;
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        v7 = "kLowpowerEnteringError";
        goto LABEL_26;
      }

      __p[23] = 17;
      __p[16] = 103;
      v8 = "kLowpowerEntering";
LABEL_18:
      *__p = *v8;
      v5 = &__p[17];
      goto LABEL_27;
    }

    __p[23] = 20;
    *&__p[16] = 1919906418;
    v9 = "kOnlineEnteringError";
LABEL_20:
    *__p = *v9;
    v5 = &__p[20];
    goto LABEL_27;
  }

  if (*(this + 322) > 7u)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        v7 = "kPowerOffEnteringError";
        goto LABEL_26;
      }

      __p[23] = 17;
      __p[16] = 103;
      v8 = "kPowerOffEntering";
      goto LABEL_18;
    }

    __p[23] = 20;
    *&__p[16] = 1919906418;
    v9 = "kStewieEnteringError";
    goto LABEL_20;
  }

  if (v6 == 5)
  {
    __p[23] = 17;
    __p[16] = 103;
    v8 = "kCampOnlyEntering";
    goto LABEL_18;
  }

  if (v6 != 6)
  {
    __p[23] = 15;
    v10 = "kStewieEntering";
LABEL_24:
    *__p = *v10;
    *&__p[7] = *(v10 + 7);
    goto LABEL_27;
  }

  v7 = "kCampOnlyEnteringError";
LABEL_26:
  __p[23] = 22;
  *__p = *v7;
  *&__p[14] = *(v7 + 14);
  v5 = &__p[22];
LABEL_27:
  *v5 = 0;
  LODWORD(buf) = 136446210;
  *(&buf + 4) = __p;
  _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Received radio state indication from BB in state: %{public}s", &buf, 0xCu);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_29:
  if (mipc::operator==())
  {
    v11 = *(a2 + 11);
    if (v11)
    {
      v12 = this[5];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        if (*v11 == 1)
        {
          v24 = &__p[2];
          __p[23] = 2;
          *__p = 28239;
        }

        else if (*v11)
        {
          v24 = &__p[7];
          __p[23] = 7;
          qmemcpy(__p, "Unknown", 7);
        }

        else
        {
          v24 = &__p[3];
          __p[23] = 3;
          qmemcpy(__p, "Off", 3);
        }

        *v24 = 0;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = __p;
        _os_log_debug_impl(&dword_296E3E000, v12, OS_LOG_TYPE_DEBUG, "#D Received radio state: %s", &buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v11 = *(a2 + 11);
      }

      radio::MipcCommandDriver::setRadioState(this, *v11);
    }

    goto LABEL_40;
  }

  v13 = *(a2 + 4);
  memset(v25, 170, sizeof(v25));
  v28 = 7;
  buf = v13;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[14] = v14;
  v32[15] = v14;
  v32[13] = v14;
  v32[12] = v14;
  v32[11] = v14;
  v32[10] = v14;
  v32[9] = v14;
  v32[8] = v14;
  v32[7] = v14;
  v32[6] = v14;
  v32[5] = v14;
  v32[4] = v14;
  v32[3] = v14;
  v32[2] = v14;
  v32[1] = v14;
  v32[0] = v14;
  *__p = v32;
  *&__p[8] = xmmword_296EB9CA0;
  v30 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v31 = 0;
  __src = v32;
  v26[0] = 1;
  v26[1] = &buf;
  v26[2] = 7;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__p, "Radio state indication failure {:#0x}", 37, v26);
  v15 = *&__p[16];
  if (*&__p[16] >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = __src;
  if (*&__p[16] >= 0x17uLL)
  {
    if ((*&__p[16] | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (*&__p[16] | 7) + 1;
    }

    v17 = operator new(v21);
    v25[1] = v15;
    v25[2] = (v21 | 0x8000000000000000);
    v25[0] = v17;
  }

  else
  {
    HIBYTE(v25[2]) = __p[16];
    v17 = v25;
    if (!*&__p[16])
    {
      LOBYTE(v25[0]) = 0;
      v18 = __src;
      if (__src == v32)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  memmove(v17, v16, v15);
  *(v15 + v17) = 0;
  v18 = __src;
  if (__src != v32)
  {
LABEL_37:
    operator delete(v18);
  }

LABEL_38:
  v19 = this[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v22 = v25;
    if (SHIBYTE(v25[2]) < 0)
    {
      v22 = v25[0];
    }

    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_error_impl(&dword_296E3E000, v19, OS_LOG_TYPE_ERROR, "%s", __p, 0xCu);
    if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
    {
LABEL_40:
      if (!*(this + 322))
      {
        goto LABEL_55;
      }

      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v25[0]);
  if (!*(this + 322))
  {
    goto LABEL_55;
  }

LABEL_41:
  if ((mipc::operator==() & 1) == 0)
  {
    dispatch_assert_queue_V2(this[3]);
    v20 = *(this + 322) - 1;
    if (v20 <= 8 && ((0x155u >> v20) & 1) != 0)
    {
      radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
    }
  }

LABEL_55:
  radio::MipcCommandDriver::evaluate_sync(this);
  v23 = *MEMORY[0x29EDCA608];
}

void sub_296E69F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p)
{
  if (__p != v56)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::handleRadioStateResultInd_sync(dispatch_queue_t *this, const mipc::cust::Set_Radio_State_Result_Ind *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v4 = this[5];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
LABEL_28:
    if (*(this + 322))
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v5 = &v30[15];
  v6 = *(this + 322);
  if (v6 <= 4)
  {
    if (*(this + 322) <= 1u)
    {
      if (!*(this + 322))
      {
        v5 = &v30[5];
        v30[23] = 5;
        qmemcpy(v30, "kIdle", 5);
        goto LABEL_27;
      }

      v30[23] = 15;
      v10 = "kOnlineEntering";
      goto LABEL_24;
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        v7 = "kLowpowerEnteringError";
        goto LABEL_26;
      }

      v30[23] = 17;
      v30[16] = 103;
      v8 = "kLowpowerEntering";
LABEL_18:
      *v30 = *v8;
      v5 = &v30[17];
      goto LABEL_27;
    }

    v30[23] = 20;
    *&v30[16] = 1919906418;
    v9 = "kOnlineEnteringError";
LABEL_20:
    *v30 = *v9;
    v5 = &v30[20];
    goto LABEL_27;
  }

  if (*(this + 322) > 7u)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        v7 = "kPowerOffEnteringError";
        goto LABEL_26;
      }

      v30[23] = 17;
      v30[16] = 103;
      v8 = "kPowerOffEntering";
      goto LABEL_18;
    }

    v30[23] = 20;
    *&v30[16] = 1919906418;
    v9 = "kStewieEnteringError";
    goto LABEL_20;
  }

  if (v6 == 5)
  {
    v30[23] = 17;
    v30[16] = 103;
    v8 = "kCampOnlyEntering";
    goto LABEL_18;
  }

  if (v6 != 6)
  {
    v30[23] = 15;
    v10 = "kStewieEntering";
LABEL_24:
    *v30 = *v10;
    *&v30[7] = *(v10 + 7);
    goto LABEL_27;
  }

  v7 = "kCampOnlyEnteringError";
LABEL_26:
  v30[23] = 22;
  *v30 = *v7;
  *&v30[14] = *(v7 + 14);
  v5 = &v30[22];
LABEL_27:
  *v5 = 0;
  LODWORD(buf) = 136446210;
  *(&buf + 4) = v30;
  _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Received result state indication in state: %{public}s", &buf, 0xCu);
  if ((v30[23] & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(*v30);
  if (*(this + 322))
  {
LABEL_29:
    *(this + 321) |= 1u;
    if (mipc::operator==())
    {
      v11 = *(a2 + 11);
      if (v11)
      {
        v12 = this[5];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          if (*v11 == 1)
          {
            v25 = &v30[2];
            v30[23] = 2;
            *v30 = 28239;
          }

          else if (*v11)
          {
            v25 = &v30[7];
            v30[23] = 7;
            qmemcpy(v30, "Unknown", 7);
          }

          else
          {
            v25 = &v30[3];
            v30[23] = 3;
            qmemcpy(v30, "Off", 3);
          }

          *v25 = 0;
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v30;
          _os_log_debug_impl(&dword_296E3E000, v12, OS_LOG_TYPE_DEBUG, "#D Radio state: %s", &buf, 0xCu);
          if ((v30[23] & 0x80000000) != 0)
          {
            operator delete(*v30);
          }

          v11 = *(a2 + 11);
        }

        radio::MipcCommandDriver::setRadioState(this, *v11);
      }

LABEL_44:
      radio::MipcCommandDriver::evaluate_sync(this);
      goto LABEL_48;
    }

    v13 = *(a2 + 4);
    memset(v26, 170, sizeof(v26));
    v29 = 7;
    buf = v13;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33[14] = v14;
    v33[15] = v14;
    v33[13] = v14;
    v33[12] = v14;
    v33[11] = v14;
    v33[10] = v14;
    v33[9] = v14;
    v33[8] = v14;
    v33[7] = v14;
    v33[6] = v14;
    v33[5] = v14;
    v33[4] = v14;
    v33[3] = v14;
    v33[2] = v14;
    v33[1] = v14;
    v33[0] = v14;
    *v30 = v33;
    *&v30[8] = xmmword_296EB9CA0;
    v31 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v32 = 0;
    __p = v33;
    v27[0] = 1;
    v27[1] = &buf;
    v27[2] = 7;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v30, "Radio state result indication failure {:#0x}", 44, v27);
    v15 = *&v30[16];
    if (*&v30[16] >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = __p;
    if (*&v30[16] >= 0x17uLL)
    {
      if ((*&v30[16] | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (*&v30[16] | 7) + 1;
      }

      v17 = operator new(v23);
      v26[1] = v15;
      v26[2] = (v23 | 0x8000000000000000);
      v26[0] = v17;
    }

    else
    {
      HIBYTE(v26[2]) = v30[16];
      v17 = v26;
      if (!*&v30[16])
      {
        LOBYTE(v26[0]) = 0;
        v18 = __p;
        if (__p == v33)
        {
LABEL_38:
          v19 = this[5];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v24 = v26;
            if (SHIBYTE(v26[2]) < 0)
            {
              v24 = v26[0];
            }

            *v30 = 136315138;
            *&v30[4] = v24;
            _os_log_error_impl(&dword_296E3E000, v19, OS_LOG_TYPE_ERROR, "%s", v30, 0xCu);
          }

          dispatch_assert_queue_V2(this[3]);
          v20 = *(this + 322) - 1;
          if (v20 <= 8 && ((0x155u >> v20) & 1) != 0)
          {
            radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
          }

          if (SHIBYTE(v26[2]) < 0)
          {
            operator delete(v26[0]);
          }

          goto LABEL_44;
        }

LABEL_37:
        operator delete(v18);
        goto LABEL_38;
      }
    }

    memmove(v17, v16, v15);
    *(v15 + v17) = 0;
    v18 = __p;
    if (__p == v33)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_46:
  v21 = this[5];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&dword_296E3E000, v21, OS_LOG_TYPE_DEFAULT, "#I Received radio state result indication in idle state, dropping", v30, 2u);
  }

LABEL_48:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296E6A594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (__p != v59)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::handleSkipperModeSwitchCnf_sync(dispatch_queue_t *this, const mipc::dale_skpr::Mode_Switch_Cnf *a2, int a3)
{
  v34 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  *(this + 321) |= 4u;
  v6 = mipc::operator==();
  v7 = this[5];
  if (v6)
  {
    if (os_log_type_enabled(this[5], OS_LOG_TYPE_DEFAULT))
    {
      if (a3 == 1)
      {
        v8 = &__p + 2;
        v19.__r_.__value_.__s.__data_[15] = 2;
        LOWORD(__p) = 28239;
      }

      else if (a3)
      {
        v8 = &__p + 7;
        v19.__r_.__value_.__s.__data_[15] = 7;
        qmemcpy(&__p, "Unknown", 7);
      }

      else
      {
        v8 = &__p + 3;
        v19.__r_.__value_.__s.__data_[15] = 3;
        qmemcpy(&__p, "Off", 3);
      }

      *v8 = 0;
      *buf = 136315138;
      *&buf[4] = &__p;
      _os_log_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEFAULT, "#I Skipper mode switch (%s) request succeeded", buf, 0xCu);
      if (v19.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(__p);
      }
    }

    radio::MipcCommandDriver::setSkipperMode(this, a3);
  }

  else
  {
    if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
    {
      if (a3 == 1)
      {
        v11 = v22 + 2;
        v23 = 2;
        LOWORD(v22[0]) = 28239;
      }

      else if (a3)
      {
        v11 = v22 + 7;
        v23 = 7;
        qmemcpy(v22, "Unknown", 7);
      }

      else
      {
        v11 = v22 + 3;
        v23 = 3;
        qmemcpy(v22, "Off", 3);
      }

      *v11 = 0;
      __p = *(a2 + 4);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(a2 + 5), *(a2 + 6));
      }

      else
      {
        v19 = *(a2 + 40);
      }

      v12 = *(a2 + 9);
      v20 = *(a2 + 8);
      v21 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = mipc::asString();
      *buf = *(a2 + 4);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&buf[8], *(a2 + 5), *(a2 + 6));
      }

      else
      {
        *&buf[8] = *(a2 + 40);
        v25 = *(a2 + 7);
      }

      v14 = *(a2 + 9);
      v26 = *(a2 + 8);
      v27 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v25 >= 0)
      {
        v15 = &buf[8];
      }

      else
      {
        v15 = *&buf[8];
      }

      *v28 = 136315650;
      v29 = v22;
      v30 = 2080;
      v31 = v13;
      v32 = 2082;
      v33 = v15;
      _os_log_error_impl(&dword_296E3E000, v7, OS_LOG_TYPE_ERROR, "Skipper mode switch (%s) request failed: Error: %s (%{public}s)", v28, 0x20u);
      v16 = v27;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(*&buf[8]);
      }

      v17 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    dispatch_assert_queue_V2(this[3]);
    v9 = *(this + 322) - 1;
    if (v9 <= 8 && ((0x155u >> v9) & 1) != 0)
    {
      radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
    }
  }

  radio::MipcCommandDriver::evaluate_sync(this);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E6A9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  mipc::Error::~Error(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::handleServiceStateCnf_sync(dispatch_queue_t *this, const mipc::cust::Set_Service_Type_Cnf *a2, int a3)
{
  v36 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  *(this + 321) |= 2u;
  v6 = mipc::operator==();
  v7 = this[5];
  if (v6)
  {
    if (!os_log_type_enabled(this[5], OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      radio::MipcCommandDriver::setServiceType(this, a3);
      goto LABEL_16;
    }

    v8 = &__p + 7;
    if (a3 == 1)
    {
      v21.__r_.__value_.__s.__data_[15] = 7;
      LODWORD(__p) = 1327528018;
      v10 = 2037149263;
    }

    else
    {
      if (!a3)
      {
        v8 = &__p + 6;
        v21.__r_.__value_.__s.__data_[15] = 6;
        qmemcpy(&__p, "Normal", 6);
        goto LABEL_13;
      }

      v21.__r_.__value_.__s.__data_[15] = 7;
      LODWORD(__p) = 1852534357;
      v10 = 1853321070;
    }

    *(&__p + 3) = v10;
LABEL_13:
    *v8 = 0;
    *buf = 136315138;
    *&buf[4] = &__p;
    _os_log_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEFAULT, "#I Set CampOnly service type (%s) request succeeded", buf, 0xCu);
    if (v21.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
  {
    v12 = v24 + 7;
    if (a3 == 1)
    {
      v25 = 7;
      LODWORD(v24[0]) = 1327528018;
      v13 = 2037149263;
    }

    else
    {
      if (!a3)
      {
        v12 = v24 + 6;
        v25 = 6;
        qmemcpy(v24, "Normal", 6);
LABEL_23:
        *v12 = 0;
        __p = *(a2 + 4);
        if (*(a2 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, *(a2 + 5), *(a2 + 6));
        }

        else
        {
          v21 = *(a2 + 40);
        }

        v14 = *(a2 + 9);
        v22 = *(a2 + 8);
        v23 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = mipc::asString();
        *buf = *(a2 + 4);
        if (*(a2 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&buf[8], *(a2 + 5), *(a2 + 6));
        }

        else
        {
          *&buf[8] = *(a2 + 40);
          v27 = *(a2 + 7);
        }

        v16 = *(a2 + 9);
        v28 = *(a2 + 8);
        v29 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v27 >= 0)
        {
          v17 = &buf[8];
        }

        else
        {
          v17 = *&buf[8];
        }

        *v30 = 136315650;
        v31 = v24;
        v32 = 2080;
        v33 = v15;
        v34 = 2082;
        v35 = v17;
        _os_log_error_impl(&dword_296E3E000, v7, OS_LOG_TYPE_ERROR, "Set service type (%s) request failed: Error: %s (%{public}s)", v30, 0x20u);
        v18 = v29;
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(*&buf[8]);
        }

        v19 = v23;
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        goto LABEL_7;
      }

      v25 = 7;
      LODWORD(v24[0]) = 1852534357;
      v13 = 1853321070;
    }

    *(v24 + 3) = v13;
    goto LABEL_23;
  }

LABEL_7:
  dispatch_assert_queue_V2(this[3]);
  v9 = *(this + 322) - 1;
  if (v9 <= 8 && ((0x155u >> v9) & 1) != 0)
  {
    radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
  }

LABEL_16:
  radio::MipcCommandDriver::evaluate_sync(this);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_296E6AE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  mipc::Error::~Error(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::handleSetRadioStateCnf_sync(dispatch_queue_t *this, const mipc::nw::Set_Radio_State_Cnf *a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  if (a3)
  {
    v6 = "PowerOff";
  }

  else
  {
    v6 = "Set Radio State";
  }

  v7 = *(a2 + 4);
  v8 = this[5];
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = v6;
      _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I %s request succeeded", &v12, 0xCu);
    }

    *(this + 321) |= 1u;
    v9 = *(a2 + 11);
    if (v9)
    {
      radio::MipcCommandDriver::setRadioState(this, *v9);
    }

    goto LABEL_17;
  }

  if (v7 != 46)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = v6;
      _os_log_error_impl(&dword_296E3E000, v8, OS_LOG_TYPE_ERROR, "%s request failed", &v12, 0xCu);
    }

    *(this + 321) |= 1u;
    dispatch_assert_queue_V2(this[3]);
    v10 = *(this + 322) - 1;
    if (v10 <= 8 && ((0x155u >> v10) & 1) != 0)
    {
      radio::MipcCommandDriver::setTransitionState_sync(this, byte_296EBEADB[(*(this + 322) - 1)]);
    }

LABEL_17:
    radio::MipcCommandDriver::evaluate_sync(this);
    goto LABEL_18;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = v6;
    _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I %s request in-progress", &v12, 0xCu);
  }

LABEL_18:
  v11 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::resetToIdle(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[3]);

  radio::MipcCommandDriver::setTransitionState_sync(this, 0);
}

void radio::MipcCommandDriver::setTransitionState_sync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &__p[15];
    v6 = *(a1 + 322);
    if (v6 <= 4)
    {
      if (*(a1 + 322) <= 1u)
      {
        if (!*(a1 + 322))
        {
          v20 = 5;
          strcpy(v18, "kIdle");
          if (a2 <= 4)
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        }

        v20 = 15;
        v10 = "kOnlineEntering";
LABEL_27:
        *v18 = *v10;
        *&v18[7] = *(v10 + 7);
        v18[15] = 0;
        if (a2 <= 4)
        {
          goto LABEL_28;
        }

LABEL_39:
        if (a2 <= 7)
        {
          if (a2 != 5)
          {
            if (a2 == 6)
            {
              v13 = "kCampOnlyEnteringError";
              goto LABEL_53;
            }

            HIBYTE(v17) = 15;
            v14 = "kStewieEntering";
LABEL_51:
            *__p = *v14;
            *&__p[7] = *(v14 + 7);
            goto LABEL_54;
          }

          HIBYTE(v17) = 17;
          __p[16] = 103;
          v11 = "kCampOnlyEntering";
LABEL_47:
          *__p = *v11;
          v5 = &__p[17];
          goto LABEL_54;
        }

        if (a2 != 8)
        {
          if (a2 != 9)
          {
            v13 = "kPowerOffEnteringError";
            goto LABEL_53;
          }

          HIBYTE(v17) = 17;
          __p[16] = 103;
          v11 = "kPowerOffEntering";
          goto LABEL_47;
        }

        HIBYTE(v17) = 20;
        *&__p[16] = 1919906418;
        v12 = "kStewieEnteringError";
        goto LABEL_49;
      }

      if (v6 != 2)
      {
        if (v6 == 3)
        {
          v20 = 17;
          v18[16] = 103;
          v8 = "kLowpowerEntering";
          goto LABEL_19;
        }

        v7 = "kLowpowerEnteringError";
        goto LABEL_38;
      }

      v20 = 20;
      *&v18[16] = 1919906418;
      v9 = "kOnlineEnteringError";
    }

    else
    {
      if (*(a1 + 322) <= 7u)
      {
        if (v6 != 5)
        {
          if (v6 == 6)
          {
            v7 = "kCampOnlyEnteringError";
            goto LABEL_38;
          }

          v20 = 15;
          v10 = "kStewieEntering";
          goto LABEL_27;
        }

        v20 = 17;
        v18[16] = 103;
        v8 = "kCampOnlyEntering";
LABEL_19:
        *v18 = *v8;
        v18[17] = 0;
        if (a2 <= 4)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      if (v6 != 8)
      {
        if (v6 == 9)
        {
          v20 = 17;
          v18[16] = 103;
          v8 = "kPowerOffEntering";
          goto LABEL_19;
        }

        v7 = "kPowerOffEnteringError";
LABEL_38:
        v20 = 22;
        *v18 = *v7;
        *&v18[14] = *(v7 + 14);
        v19 = 0;
        if (a2 > 4)
        {
          goto LABEL_39;
        }

LABEL_28:
        if (a2 <= 1)
        {
          if (!a2)
          {
            v5 = &__p[5];
            HIBYTE(v17) = 5;
            qmemcpy(__p, "kIdle", 5);
            goto LABEL_54;
          }

          HIBYTE(v17) = 15;
          v14 = "kOnlineEntering";
          goto LABEL_51;
        }

        if (a2 != 2)
        {
          if (a2 != 3)
          {
            v13 = "kLowpowerEnteringError";
LABEL_53:
            HIBYTE(v17) = 22;
            *__p = *v13;
            *&__p[14] = *(v13 + 14);
            v5 = &v17;
LABEL_54:
            *v5 = 0;
            *buf = 136315394;
            v22 = v18;
            v23 = 2080;
            v24 = __p;
            _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Transitioning from %s to %s", buf, 0x16u);
            if (SHIBYTE(v17) < 0)
            {
              operator delete(*__p);
              if ((v20 & 0x80000000) == 0)
              {
                goto LABEL_56;
              }
            }

            else if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }

            operator delete(*v18);
            goto LABEL_56;
          }

          HIBYTE(v17) = 17;
          __p[16] = 103;
          v11 = "kLowpowerEntering";
          goto LABEL_47;
        }

        HIBYTE(v17) = 20;
        *&__p[16] = 1919906418;
        v12 = "kOnlineEnteringError";
LABEL_49:
        *__p = *v12;
        v5 = &__p[20];
        goto LABEL_54;
      }

      v20 = 20;
      *&v18[16] = 1919906418;
      v9 = "kStewieEnteringError";
    }

    *v18 = *v9;
    v18[20] = 0;
    if (a2 <= 4)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_56:
  *(a1 + 322) = a2;
  v15 = *MEMORY[0x29EDCA608];
}

void radio::MipcCommandDriver::performCallback(uint64_t a1, const char *a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a1 + 288))
  {
    v23 = 0;
    if (a2[23] < 0)
    {
      if (*(a2 + 1))
      {
        a2 = *a2;
        v4 = strlen(a2);
        if (v4 < 0x7FFFFFFFFFFFFFF8)
        {
LABEL_5:
          v5 = v4;
          if (v4 >= 0x17)
          {
            if ((v4 | 7) == 0x17)
            {
              v10 = 25;
            }

            else
            {
              v10 = (v4 | 7) + 1;
            }

            v6 = operator new(v10);
            __p[1] = v5;
            v22 = v10 | 0x8000000000000000;
            __p[0] = v6;
          }

          else
          {
            HIBYTE(v22) = v4;
            v6 = __p;
            if (!v4)
            {
              goto LABEL_18;
            }
          }

          memmove(v6, a2, v5);
LABEL_18:
          *(v5 + v6) = 0;
          CreateError();
          v11 = v23;
          v7 = cf[0];
          v23 = cf[0];
          cf[0] = 0;
          if (v11)
          {
            CFRelease(v11);
            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p[0]);
            v8 = *(a1 + 280);
            v9 = *(v8 + 16);
            if (v9)
            {
LABEL_23:
              v12 = _Block_copy(v9);
              v13 = *(v8 + 24);
              if (!v13)
              {
                goto LABEL_25;
              }

              goto LABEL_24;
            }
          }

          else
          {
            v8 = *(a1 + 280);
            v9 = *(v8 + 16);
            if (v9)
            {
              goto LABEL_23;
            }
          }

LABEL_39:
          v12 = 0;
          v13 = *(v8 + 24);
          if (!v13)
          {
LABEL_25:
            v14 = *(a1 + 280);
            v16 = *v14;
            v15 = v14[1];
            *(v16 + 8) = v15;
            *v15 = v16;
            --*(a1 + 288);
            v17 = v14[3];
            if (v17)
            {
              dispatch_release(v17);
            }

            v18 = v14[2];
            if (v18)
            {
              _Block_release(v18);
            }

            operator delete(v14);
            if (!v12)
            {
              if (v13)
              {
                dispatch_release(v13);
              }

              goto LABEL_53;
            }

            if (!v13)
            {
LABEL_52:
              _Block_release(v12);
LABEL_53:
              if (v7)
              {
                CFRelease(v7);
              }

              return;
            }

            if (v7)
            {
              CFRetain(v7);
            }

            v19 = _Block_copy(v12);
            v20 = v19;
            cf[0] = MEMORY[0x29EDCA5F8];
            cf[1] = 1174405120;
            cf[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
            cf[3] = &__block_descriptor_tmp_120;
            if (v19)
            {
              aBlock = _Block_copy(v19);
              v26 = v7;
              if (!v7)
              {
                goto LABEL_43;
              }
            }

            else
            {
              aBlock = 0;
              v26 = v7;
              if (!v7)
              {
LABEL_43:
                dispatch_async(v13, cf);
                if (v26)
                {
                  CFRelease(v26);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v20)
                {
                  _Block_release(v20);
                }

                if (v7)
                {
                  CFRelease(v7);
                }

                dispatch_release(v13);
                goto LABEL_52;
              }
            }

            CFRetain(v7);
            goto LABEL_43;
          }

LABEL_24:
          dispatch_retain(v13);
          goto LABEL_25;
        }

LABEL_10:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else if (a2[23])
    {
      v4 = strlen(a2);
      if (v4 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }

    v7 = 0;
    v8 = *(a1 + 280);
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }
}

void sub_296E6B810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a15);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a15);
  _Unwind_Resume(a1);
}

BOOL radio::MipcCommandDriver::checkAndUpdateModeChange_sync(radio::MipcCommandDriver *this)
{
  dispatch_assert_queue_V2(*(this + 3));
  AggregatedOpMode = radio::MipcCommandDriver::getAggregatedOpMode(this);
  Mode = radio::OpMode::getMode(*(this + 32));
  if (Mode != AggregatedOpMode)
  {
    v4 = *(this + 32);
    radio::OpMode::setMode();
  }

  return Mode != AggregatedOpMode;
}

uint64_t radio::MipcCommandDriver::reportAggregatedMode_sync(radio::MipcCommandDriver *this)
{
  dispatch_assert_queue_V2(*(this + 3));
  radio::OpMode::getMode(*(this + 32));

  return radio::CommandDriver::handleOperatingModeChanged_sync();
}

uint64_t radio::MipcCommandDriver::expectedMode(radio::MipcCommandDriver *this)
{
  if (*(this + 322) - 1 > 8)
  {
    return 8;
  }

  else
  {
    return byte_296EBEAD2[(*(this + 322) - 1)];
  }
}

void radio::MipcCommandDriver::cancelModeTransitionTimer(radio::MipcCommandDriver *this)
{
  if (*(this + 327) == 1)
  {
    v8 = v1;
    v9 = v2;
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEFAULT, "#I Canceling operating mode timeout timer", v7, 2u);
    }

    *(this + 328) = 0;
    v5 = *(this + 42);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 42);
      *(this + 42) = 0;
      if (v6)
      {
        dispatch_release(v6);
      }
    }
  }
}

void radio::MipcCommandDriver::startModeTransitionTimer(dispatch_queue_t *this)
{
  if (*(this + 327) == 1)
  {
    v12 = v1;
    v13 = v2;
    if (!this[42])
    {
      v4 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, this[3]);
      v5 = this[42];
      this[42] = v4;
      if (v5)
      {
        dispatch_release(v5);
        v4 = this[42];
      }

      if (v4)
      {
        dispatch_retain(v4);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN5radio17MipcCommandDriver24startModeTransitionTimerEv_block_invoke;
        handler[3] = &__block_descriptor_tmp_6;
        handler[4] = this;
        object = v4;
        dispatch_retain(v4);
        dispatch_source_set_event_handler(v4, handler);
        v6 = this[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Starting operating mode timeout timer", v9, 2u);
        }

        v7 = this[42];
        v8 = dispatch_time(0, 30000000000);
        dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        dispatch_activate(this[42]);
        if (object)
        {
          dispatch_release(object);
        }

        dispatch_release(v4);
      }
    }
  }
}

void ___ZN5radio17MipcCommandDriver24startModeTransitionTimerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_296E3E000, v3, OS_LOG_TYPE_ERROR, "Timeout while waiting for operating mode transition", v5, 2u);
  }

  dispatch_source_cancel(*(a1 + 40));
  *(v2 + 328) = 1;
  dispatch_assert_queue_V2(*(v2 + 24));
  v4 = *(v2 + 322) - 1;
  if (v4 <= 8 && ((0x155u >> v4) & 1) != 0)
  {
    radio::MipcCommandDriver::setTransitionState_sync(v2, byte_296EBEADB[(*(v2 + 322) - 1)]);
  }

  radio::MipcCommandDriver::evaluate_sync(v2);
}

void __copy_helper_block_e8_40c22_ZTSN8dispatch6sourceE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c22_ZTSN8dispatch6sourceE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void radio::MipcCommandDriver::handleOpModeTransitionToLowPower_sync(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  *(a1 + 326) = 0;
  if (radio::OpMode::getMode(*(a1 + 256)) == 7)
  {
    *(a1 + 320) |= 4u;
    radio::MipcCommandDriver::sendSkipperModeSwitchRequest(a1, a2, 0);
  }

  *(a1 + 320) |= 1u;
  radio::MipcCommandDriver::sendRadioStateChangeRequest(a1, a2, a3, 0);
  v8 = operator new(0x20uLL);
  v8[1] = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = *(a1 + 272);
  *v8 = v9;
  *(v8 + 1) = a1 + 272;
  *(v9 + 8) = v8;
  *(a1 + 272) = v8;
  ++*(a1 + 288);
  radio::MipcCommandDriver::setTransitionState_sync(a1, 3);

  radio::MipcCommandDriver::startModeTransitionTimer(a1);
}

void radio::MipcCommandDriver::handleOpModeTransitionToOnline_sync(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  *(a1 + 326) = 0;
  if (radio::OpMode::getMode(*(a1 + 256)) == 7)
  {
    *(a1 + 320) |= 4u;
    radio::MipcCommandDriver::sendSkipperModeSwitchRequest(a1, a2, 0);
  }

  *(a1 + 320) |= 2u;
  radio::MipcCommandDriver::sendServiceTypeChangeRequest(a1, a2, 0);
  *(a1 + 320) |= 1u;
  radio::MipcCommandDriver::sendRadioStateChangeRequest(a1, a2, a3, 0);
  v8 = operator new(0x20uLL);
  v8[1] = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = *(a1 + 272);
  *v8 = v9;
  *(v8 + 1) = a1 + 272;
  *(v9 + 8) = v8;
  *(a1 + 272) = v8;
  ++*(a1 + 288);
  radio::MipcCommandDriver::setTransitionState_sync(a1, 1);

  radio::MipcCommandDriver::startModeTransitionTimer(a1);
}

void radio::MipcCommandDriver::handleOpModeTransitionToCampOnly_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  *(a1 + 326) = 0;
  if (radio::OpMode::getMode(*(a1 + 256)) == 7)
  {
    *(a1 + 320) |= 4u;
    radio::MipcCommandDriver::sendSkipperModeSwitchRequest(a1, a2, 0);
  }

  *(a1 + 320) |= 2u;
  radio::MipcCommandDriver::sendServiceTypeChangeRequest(a1, a2, 1);
  *(a1 + 320) |= 1u;
  radio::MipcCommandDriver::sendRadioStateChangeRequest(a1, a2, 0, 0);
  v6 = operator new(0x20uLL);
  v6[1] = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = *(a1 + 272);
  *v6 = v7;
  *(v6 + 1) = a1 + 272;
  *(v7 + 8) = v6;
  *(a1 + 272) = v6;
  ++*(a1 + 288);
  radio::MipcCommandDriver::setTransitionState_sync(a1, 5);

  radio::MipcCommandDriver::startModeTransitionTimer(a1);
}

void radio::MipcCommandDriver::handleOpModeTransitionToStewie_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  *(a1 + 326) = 0;
  *(a1 + 320) |= 1u;
  radio::MipcCommandDriver::sendRadioStateChangeRequest(a1, a2, 1, 0);
  *(a1 + 320) |= 4u;
  radio::MipcCommandDriver::sendSkipperModeSwitchRequest(a1, a2, 1);
  v6 = operator new(0x20uLL);
  v6[1] = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = *(a1 + 272);
  *v6 = v7;
  *(v6 + 1) = a1 + 272;
  *(v7 + 8) = v6;
  *(a1 + 272) = v6;
  ++*(a1 + 288);
  radio::MipcCommandDriver::setTransitionState_sync(a1, 7);

  radio::MipcCommandDriver::startModeTransitionTimer(a1);
}

void radio::MipcCommandDriver::handleDumpLogsInd_sync(dispatch_queue_t *this, const mipc::cust::Bb_Dump_Logs_Ind *a2)
{
  v79 = *MEMORY[0x29EDCA608];
  dispatch_assert_queue_V2(this[3]);
  v43 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    v43 = Mutable;
  }

  memset(&v42, 170, sizeof(v42));
  v6 = *(a2 + 12);
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v58, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      *&v58[16] = *(v6 + 2);
      *v58 = v7;
    }
  }

  else
  {
    *v58 = operator new(0x20uLL);
    *&v58[8] = xmmword_296EB9C80;
    strcpy(*v58, "Log dump requested by baseband");
  }

  if ((v58[23] & 0x80000000) == 0)
  {
    v42 = *v58;
LABEL_12:
    *v58 = v42;
    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(&v42, *v58, *&v58[8]);
  if ((v58[23] & 0x80000000) != 0)
  {
    operator delete(*v58);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  std::string::__init_copy_ctor_external(v58, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
LABEL_15:
  ctu::cf::insert<__CFString const*,std::string>(v5, *MEMORY[0x29EDC8E18]);
  if ((v58[23] & 0x80000000) == 0)
  {
    v8 = *(a2 + 11);
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_20:
    v9 = 1;
    v10 = *MEMORY[0x29EDC8F50];
    *v58 = v10;
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  operator delete(*v58);
  v8 = *(a2 + 11);
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_17:
  v9 = *v8 != 0;
  v10 = *MEMORY[0x29EDC8F50];
  *v58 = v10;
  if (v10)
  {
LABEL_21:
    CFRetain(v10);
  }

LABEL_22:
  v11 = MEMORY[0x29EDB8F00];
  if (!v9)
  {
    v11 = MEMORY[0x29EDB8EF8];
  }

  v12 = *v11;
  *&v53 = *v11;
  if (v10 && v12)
  {
    CFDictionaryAddValue(v5, v10, v12);
  }

  else if (!v12)
  {
    goto LABEL_29;
  }

  CFRelease(v12);
LABEL_29:
  if (v10)
  {
    CFRelease(v10);
  }

  v13 = this[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 138412290;
    *&v58[4] = v5;
    _os_log_impl(&dword_296E3E000, v13, OS_LOG_TYPE_DEFAULT, "#I Baseband requested to dump logs\n%@", v58, 0xCu);
  }

  if (v5 && (v14 = CFGetTypeID(v5), v14 == CFDictionaryGetTypeID()))
  {
    CFRetain(v5);
    v15 = this[7];
    v44 = v5;
    CFRetain(v5);
  }

  else
  {
    v5 = 0;
    v15 = this[7];
    v44 = 0;
  }

  v51 = 0;
  v52 = 0;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v16;
  v66 = v16;
  v63 = v16;
  v64 = v16;
  v61 = v16;
  v62 = v16;
  v59 = v16;
  v60 = v16;
  *v58 = v16;
  *&v58[16] = v16;
  isa = v15[3].isa;
  *&v67 = 10;
  *(&v67 + 1) = v58;
  *&v68 = 0;
  *(&v68 + 1) = isa;
  pthread_mutex_lock(isa);
  v18 = v15[1].isa;
  if (!v18)
  {
    v20 = v15->isa;
    goto LABEL_49;
  }

  explicit = atomic_load_explicit(v18 + 2, memory_order_acquire);
  v20 = v15->isa;
  if (explicit == 1)
  {
    v21 = *v20;
    v22 = v15[2].isa;
    if (v22 == *v20)
    {
      v22 = *(v21 + 1);
      *&v53 = v22;
      if (v21 == v22)
      {
LABEL_46:
        v15[2].isa = v22;
        goto LABEL_47;
      }
    }

    else
    {
      *&v53 = v15[2];
    }

    v23 = *(v22 + 2);
    if (*(v23 + 24))
    {
      v22 = *(v22 + 1);
    }

    else
    {
      v22 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(v21, (v23 + 64), &v53);
      v20 = v15->isa;
    }

    goto LABEL_46;
  }

LABEL_47:
  v18 = v15[1].isa;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
  }

LABEL_49:
  v24 = v52;
  v51 = v20;
  v52 = v18;
  if (v24)
  {
    if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v24 + 16))(v24);
      if (atomic_fetch_add(v24 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v24 + 24))(v24);
      }
    }
  }

  pthread_mutex_unlock(*(&v68 + 1));
  v25 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    if (v68 > 0)
    {
      v40 = *(&v67 + 1) + 16 * v68;
      do
      {
        v41 = *(v40 - 8);
        if (v41)
        {
          if (atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v41 + 16))(v41);
            if (atomic_fetch_add(v41 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v41 + 24))(v41);
            }
          }
        }

        v40 -= 16;
      }

      while (v40 > v25);
    }

    if (v67 >= 0xB)
    {
      operator delete(*(&v67 + 1));
    }
  }

  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70 = v26;
  v71 = v26;
  v68 = v26;
  v69 = v26;
  v66 = v26;
  v67 = v26;
  v64 = v26;
  v65 = v26;
  v62 = v26;
  v63 = v26;
  v60 = v26;
  v61 = v26;
  *&v58[16] = v26;
  v59 = v26;
  *v58 = v26;
  v58[0] = 0;
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v73 = 10;
  v74 = &v58[8];
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = &v44;
  v27 = v51;
  v28 = *v51;
  v48 = v58;
  v49 = v15;
  v50 = v28;
  *&v46 = *(v28 + 8);
  *(&v46 + 1) = v28;
  *&v47 = v58;
  *(&v47 + 1) = v28;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v46);
  v45[0] = *v27;
  v45[1] = v45[0];
  v45[2] = v58;
  v45[3] = v45[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(v45);
  v53 = v46;
  v54 = v47;
  v29 = v45[0];
  v30 = v46;
  if (v46 == v45[0])
  {
    if (HIDWORD(v77) <= v77)
    {
      goto LABEL_75;
    }

LABEL_74:
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(v49, v50);
    goto LABEL_75;
  }

  v31 = v54;
  v32 = *v54;
  do
  {
    if ((v32 & 1) == 0)
    {
      v33 = **(v31 + 272);
      v34 = *(*(v30 + 16) + 32);
      v55 = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      v35 = *(v34 + 24);
      if (!v35)
      {
        std::runtime_error::runtime_error(&v57, "call to empty boost::function");
        v57.__vftable = &unk_2A1E13820;
        boost::throw_exception<boost::bad_function_call>(&v57);
      }

      v36 = *((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
      v55 = 0;
      cf = v33;
      v36(v34 + 32, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if ((*v31 & 1) == 0)
      {
        *v31 = 1;
      }
    }

    *&v53 = *(v30 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v53);
    v31 = v54;
    if (*v54 == 1)
    {
      *v54 = 0;
    }

    v32 = 0;
    v30 = v53;
  }

  while (v53 != v29);
  if (*(v48 + 71) > *(v48 + 70))
  {
    goto LABEL_74;
  }

LABEL_75:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(v58);
  v37 = v52;
  if (v52)
  {
    if (atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v37 + 16))(v37);
      if (atomic_fetch_add(v37 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v37 + 24))(v37);
      }
    }
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v38 = v43;
    if (!v43)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  v38 = v43;
  if (v43)
  {
LABEL_87:
    CFRelease(v38);
  }

LABEL_88:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_296E6C934(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296E6CA48);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void radio::MipcCommandDriver::getSIMSummary(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getSIMPresence(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void mipc::router::Client::~Client(mipc::router::Client *this)
{
  *this = &unk_2A1E11970;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void *boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E12A98;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E12B58;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E12A98;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E12B58;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(float *a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % *(a1 + 1);
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 16) == a2)
              {
                return;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 16) == a2)
            {
              return;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v13 = operator new(0x30uLL);
  v38 = v13;
  v13->__r_.__value_.__r.__words[0] = 0;
  v13->__r_.__value_.__l.__size_ = v5;
  v13->__r_.__value_.__s.__data_[16] = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v13 + 1, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *&v13[1].__r_.__value_.__l.__data_ = *(a3 + 8);
    v13[1].__r_.__value_.__r.__words[2] = *(a3 + 24);
  }

  v14 = (*(a1 + 3) + 1);
  v15 = a1[8];
  if (!v6 || (v15 * v6) < v14)
  {
    v18 = 1;
    if (v6 >= 3)
    {
      v18 = (v6 & (v6 - 1)) != 0;
    }

    v19 = v18 | (2 * v6);
    v20 = vcvtps_u32_f32(v14 / v15);
    if (v19 <= v20)
    {
      prime = v20;
    }

    else
    {
      prime = v19;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v6 = *(a1 + 1);
    if (prime > v6)
    {
LABEL_41:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = operator new(8 * prime);
      v23 = *a1;
      *a1 = v22;
      if (v23)
      {
        operator delete(v23);
        v22 = *a1;
      }

      *(a1 + 1) = prime;
      bzero(v22, 8 * prime);
      v25 = (a1 + 4);
      v24 = *(a1 + 2);
      if (!v24)
      {
        goto LABEL_71;
      }

      v26 = v24[1];
      v27 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v28 = v26 & v27;
        v22[v28] = v25;
        for (i = *v24; *v24; i = *v24)
        {
          v30 = i[1] & v27;
          if (v30 == v28)
          {
            v24 = i;
          }

          else if (v22[v30])
          {
            *v24 = *i;
            *i = *v22[v30];
            *v22[v30] = i;
          }

          else
          {
            v22[v30] = v24;
            v24 = i;
            v28 = v30;
          }
        }

        goto LABEL_71;
      }

      if (v26 >= prime)
      {
        v26 %= prime;
      }

      v22[v26] = v25;
      v34 = *v24;
      if (!*v24)
      {
LABEL_71:
        v6 = prime;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_72;
        }

        goto LABEL_87;
      }

      while (1)
      {
        v35 = v34[1];
        if (v35 >= prime)
        {
          v35 %= prime;
        }

        if (v35 == v26)
        {
          goto LABEL_65;
        }

        if (v22[v35])
        {
          *v24 = *v34;
          *v34 = *v22[v35];
          *v22[v35] = v34;
          v34 = v24;
LABEL_65:
          v24 = v34;
          v34 = *v34;
          if (!v34)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v22[v35] = v24;
          v24 = v34;
          v34 = *v34;
          v26 = v35;
          if (!v34)
          {
            goto LABEL_71;
          }
        }
      }
    }

    if (prime < v6)
    {
      v31 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v6 < 3 || (v32 = vcnt_s8(v6), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
      {
        v31 = std::__next_prime(v31);
      }

      else
      {
        v33 = 1 << -__clz(v31 - 1);
        if (v31 >= 2)
        {
          v31 = v33;
        }
      }

      if (prime <= v31)
      {
        prime = v31;
      }

      if (prime < v6)
      {
        if (!prime)
        {
          v36 = *a1;
          *a1 = 0;
          if (v36)
          {
            operator delete(v36);
          }

          v6 = 0;
          *(a1 + 1) = 0;
          goto LABEL_87;
        }

        goto LABEL_41;
      }

      v6 = *(a1 + 1);
    }

    if ((v6 & (v6 - 1)) != 0)
    {
LABEL_72:
      if (v6 <= v5)
      {
        v8 = v5 % v6;
        v16 = *a1;
        v17 = *(*a1 + 8 * (v5 % v6));
        if (v17)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v5;
        v16 = *a1;
        v17 = *(*a1 + 8 * v5);
        if (v17)
        {
          goto LABEL_28;
        }
      }

LABEL_88:
      v38->__r_.__value_.__r.__words[0] = *(a1 + 2);
      *(a1 + 2) = v38;
      v16[v8] = a1 + 4;
      if (v38->__r_.__value_.__r.__words[0])
      {
        v37 = *(v38->__r_.__value_.__r.__words[0] + 8);
        if ((v6 & (v6 - 1)) != 0)
        {
          if (v37 >= v6)
          {
            v37 %= v6;
          }

          v16[v37] = v38;
        }

        else
        {
          v16[v37 & (v6 - 1)] = v38;
        }
      }

      goto LABEL_29;
    }

LABEL_87:
    v8 = (v6 - 1) & v5;
    v16 = *a1;
    v17 = *(*a1 + 8 * v8);
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

  v16 = *a1;
  v17 = *(*a1 + 8 * v8);
  if (!v17)
  {
    goto LABEL_88;
  }

LABEL_28:
  v38->__r_.__value_.__r.__words[0] = *v17;
  *v17 = v38;
LABEL_29:
  ++*(a1 + 3);
}

void sub_296E6D788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E6D79C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<radio::MipcCommandDriver>::shared_ptr[abi:ne200100]<radio::MipcCommandDriver,std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E12BC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296E6D9A4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver*)#1}::operator() const(radio::MipcCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::MipcCommandDriver *,std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver *)#1},std::allocator<radio::MipcCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::MipcCommandDriver *,std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver *)#1},std::allocator<radio::MipcCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver*)#1}::operator() const(radio::MipcCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296E6DB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::init(void)::$_0>(radio::MipcCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!qword_2A1398690)
  {
    v5 = operator new(0x18uLL);
    MEMORY[0x29C266890](v5, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v5;
    v4 = operator new(0x20uLL);
    v4->__vftable = &unk_2A1E12C48;
    v4->__shared_owners_ = 0;
    v4->__shared_weak_owners_ = 0;
    v4[1].__vftable = v5;
    v6 = off_2A1398698;
    qword_2A1398690 = v5;
    off_2A1398698 = v4;
    if (!v6)
    {
      v33 = v4;
      goto LABEL_10;
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v5 = qword_2A1398690;
  v4 = off_2A1398698;
  v33 = off_2A1398698;
  if (off_2A1398698)
  {
LABEL_10:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v7 = *MEMORY[0x29EDC8F98];
  v8 = strlen(*MEMORY[0x29EDC8F98]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    v37 = v9;
    v38 = v11 | 0x8000000000000000;
    *buf = v10;
    goto LABEL_19;
  }

  HIBYTE(v38) = v8;
  v10 = buf;
  if (v8)
  {
LABEL_19:
    memmove(v10, v7, v9);
  }

  *(v10 + v9) = 0;
  if (v38 >= 0)
  {
    v12 = buf;
  }

  else
  {
    v12 = *buf;
  }

  ctu::cf::MakeCFString::MakeCFString(&v35, v12);
  v13 = (*v5->~__shared_weak_count)(v5, v35);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign((&v2[8].~__shared_weak_count + 7), v14, v16);
    }

    CFRelease(v14);
  }

  MEMORY[0x29C266860](&v35);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
  }

  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v18 = v2->~__shared_weak_count_0, (v19 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = std::__shared_weak_count::lock(v19);
    if (v21)
    {
      goto LABEL_36;
    }

LABEL_39:
    v34 = 0;
    goto LABEL_40;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v20);
  v21 = std::__shared_weak_count::lock(v20);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_36:
  v22 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = v21;
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_40:
  abb::router::Client::setClientTracker();
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v23 = operator new(0x20uLL);
  *v23 = &unk_2A1E12C98;
  *(v23 + 1) = v2;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  v39 = v23;
  abb::router::Client::regEventHandler();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E12D18;
  *(v24 + 1) = v2;
  *(v24 + 2) = v18;
  *(v24 + 3) = v20;
  v39 = v24;
  abb::router::Client::regEventHandler();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x20uLL);
  *v25 = &unk_2A1E12D98;
  *(v25 + 1) = v2;
  *(v25 + 2) = v18;
  *(v25 + 3) = v20;
  v39 = v25;
  abb::router::Client::regIndHandlerInternal();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v26 = operator new(0x20uLL);
  *v26 = &unk_2A1E12E18;
  *(v26 + 1) = v2;
  *(v26 + 2) = v18;
  *(v26 + 3) = v20;
  v39 = v26;
  abb::router::Client::regIndHandlerInternal();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v27 = operator new(0x20uLL);
  *v27 = &unk_2A1E12E98;
  *(v27 + 1) = v2;
  *(v27 + 2) = v18;
  *(v27 + 3) = v20;
  v39 = v27;
  abb::router::Client::regIndHandlerInternal();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v28 = operator new(0x20uLL);
  *v28 = &unk_2A1E12F18;
  *(v28 + 1) = v2;
  *(v28 + 2) = v18;
  *(v28 + 3) = v20;
  v39 = v28;
  abb::router::Client::regIndHandlerInternal();
  if (v39 == buf)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  abb::router::Client::setIndShouldWake(&v2[5].__on_zero_shared_weak);
  abb::router::Client::start(&v2[5].__on_zero_shared_weak);
  std::__shared_weak_count::__release_weak(v20);
  operator delete(v1);
  v29 = a1;
  if (a1)
  {
    v30 = a1[2];
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v29 = a1;
    }

    operator delete(v29);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_296E6E460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  operator delete(v18);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C2668A0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296EBA28CLL)
  {
    if (((v2 & 0x8000000296EBA28CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296EBA28CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296EBA28CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x29C2668A0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12C98;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12C98;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12C98;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12C98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v7[0]) = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Started", v7, 2u);
        }

        radio::CommandDriver::handleClientStateChanged_sync(v3);
        v7[0] = 0;
        v7[1] = 0;
        radio::MipcCommandDriver::getOperatingMode(v3, v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296E6E938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12D18;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12D18;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12D18;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12D18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    return;
  }

  v3 = a1[1];
  v4 = std::__shared_weak_count::lock(v2);
  v46 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[2])
  {
LABEL_105:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v39 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v39);
    }

    return;
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Stopped", &buf, 2u);
  }

  radio::CommandDriver::handleClientStateChanged_sync(v3);
  v6 = (v3 + 272);
  v7 = *(v3 + 280);
  v8 = &__block_descriptor_tmp_120;
  if (v7 != (v3 + 272))
  {
    do
    {
      v9 = *(v3 + 322);
      if (v9 <= 4)
      {
        if (*(v3 + 322) <= 1u)
        {
          if (!*(v3 + 322))
          {
            *(&buf.__r_.__value_.__s + 23) = 5;
            qmemcpy(&buf, "kIdle", 5);
            v12 = &buf.__r_.__value_.__s.__data_[5];
            goto LABEL_34;
          }

          *(&buf.__r_.__value_.__s + 23) = 15;
          v14 = "kOnlineEntering";
          goto LABEL_31;
        }

        if (v9 == 2)
        {
          *(&buf.__r_.__value_.__s + 23) = 20;
          LODWORD(buf.__r_.__value_.__r.__words[2]) = 1919906418;
          v13 = "kOnlineEnteringError";
LABEL_27:
          *&buf.__r_.__value_.__l.__data_ = *v13;
          v12 = &buf.__r_.__value_.__s.__data_[20];
          goto LABEL_34;
        }

        if (v9 == 3)
        {
          *(&buf.__r_.__value_.__s + 23) = 17;
          buf.__r_.__value_.__s.__data_[16] = 103;
          v11 = "kLowpowerEntering";
LABEL_25:
          *&buf.__r_.__value_.__l.__data_ = *v11;
          v12 = &buf.__r_.__value_.__s.__data_[17];
          goto LABEL_34;
        }

        *(&buf.__r_.__value_.__s + 23) = 22;
        v10 = "kLowpowerEnteringError";
      }

      else if (*(v3 + 322) > 7u)
      {
        if (v9 == 8)
        {
          *(&buf.__r_.__value_.__s + 23) = 20;
          LODWORD(buf.__r_.__value_.__r.__words[2]) = 1919906418;
          v13 = "kStewieEnteringError";
          goto LABEL_27;
        }

        if (v9 == 9)
        {
          *(&buf.__r_.__value_.__s + 23) = 17;
          buf.__r_.__value_.__s.__data_[16] = 103;
          v11 = "kPowerOffEntering";
          goto LABEL_25;
        }

        *(&buf.__r_.__value_.__s + 23) = 22;
        v10 = "kPowerOffEnteringError";
      }

      else
      {
        if (v9 == 5)
        {
          *(&buf.__r_.__value_.__s + 23) = 17;
          buf.__r_.__value_.__s.__data_[16] = 103;
          v11 = "kCampOnlyEntering";
          goto LABEL_25;
        }

        if (v9 != 6)
        {
          *(&buf.__r_.__value_.__s + 23) = 15;
          v14 = "kStewieEntering";
LABEL_31:
          buf.__r_.__value_.__r.__words[0] = *v14;
          *(buf.__r_.__value_.__r.__words + 7) = *(v14 + 7);
          v12 = &buf.__r_.__value_.__s.__data_[15];
          goto LABEL_34;
        }

        *(&buf.__r_.__value_.__s + 23) = 22;
        v10 = "kCampOnlyEnteringError";
      }

      *&buf.__r_.__value_.__l.__data_ = *v10;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = *(v10 + 14);
      v12 = &buf.__r_.__value_.__s.__data_[22];
LABEL_34:
      *v12 = 0;
      v15 = std::string::insert(&buf, 0, "clearing callback in state: ", 0x1CuLL);
      __p = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = strlen(p_p);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        v20 = v8;
        if ((v17 | 7) == 0x17)
        {
          v21 = 25;
        }

        else
        {
          v21 = (v17 | 7) + 1;
        }

        v19 = operator new(v21);
        __dst[1] = v18;
        v43 = v21 | 0x8000000000000000;
        __dst[0] = v19;
        v8 = v20;
LABEL_47:
        memmove(v19, p_p, v18);
        goto LABEL_48;
      }

      HIBYTE(v43) = v17;
      v19 = __dst;
      if (v17)
      {
        goto LABEL_47;
      }

LABEL_48:
      *(v18 + v19) = 0;
      CreateError();
      v22 = buf.__r_.__value_.__r.__words[0];
      buf.__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__dst[0]);
        if (!v22)
        {
          goto LABEL_53;
        }

LABEL_52:
        CFRetain(v22);
        goto LABEL_53;
      }

      if (v22)
      {
        goto LABEL_52;
      }

LABEL_53:
      v23 = v7[2];
      if (v23)
      {
        v24 = _Block_copy(v23);
      }

      else
      {
        v24 = 0;
      }

      v25 = v7[3];
      buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      buf.__r_.__value_.__l.__size_ = 1174405120;
      buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      v48 = v8;
      if (!v24)
      {
        aBlock = 0;
        v50 = v22;
        if (!v22)
        {
          goto LABEL_61;
        }

LABEL_60:
        CFRetain(v22);
        goto LABEL_61;
      }

      aBlock = _Block_copy(v24);
      v50 = v22;
      if (v22)
      {
        goto LABEL_60;
      }

LABEL_61:
      dispatch_async(v25, &buf);
      if (v50)
      {
        CFRelease(v50);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v24)
      {
        _Block_release(v24);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v22)
        {
          goto LABEL_8;
        }

LABEL_73:
        CFRelease(v22);
        goto LABEL_8;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v22)
      {
        goto LABEL_73;
      }

LABEL_8:
      v7 = v7[1];
    }

    while (v7 != v6);
  }

  if (*(v3 + 288))
  {
    v26 = *(v3 + 280);
    v27 = *(*(v3 + 272) + 8);
    v28 = *v26;
    *(v28 + 8) = v27;
    *v27 = v28;
    *(v3 + 288) = 0;
    if (v26 != v6)
    {
      do
      {
        v35 = v26[1];
        v36 = v26[3];
        if (v36)
        {
          dispatch_release(v36);
        }

        v37 = v26[2];
        if (v37)
        {
          _Block_release(v37);
        }

        operator delete(v26);
        v26 = v35;
      }

      while (v35 != v6);
    }
  }

  v29 = *(v3 + 304);
  if (!v29)
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
    goto LABEL_102;
  }

  v30 = *(v3 + 312);
  if (!v30)
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
LABEL_101:
    _Block_release(v29);
    goto LABEL_102;
  }

  cf = *(v3 + 304);
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  __p.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_296EB9CB0;
  strcpy(__p.__r_.__value_.__l.__data_, "Pending powerOff failed");
  CreateError();
  v31 = _Block_copy(v29);
  v32 = v31;
  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 1174405120;
  buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v48 = v8;
  if (!v31)
  {
    v34 = v40;
    aBlock = 0;
    v50 = v40;
    if (!v40)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v33 = _Block_copy(v31);
  v34 = v40;
  aBlock = v33;
  v50 = v40;
  if (v40)
  {
LABEL_89:
    CFRetain(v34);
  }

LABEL_90:
  dispatch_async(v30, &buf);
  if (v50)
  {
    CFRelease(v50);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  dispatch_release(v30);
  _Block_release(v29);
  v29 = *(v3 + 304);
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  if (v29)
  {
    goto LABEL_101;
  }

LABEL_102:
  v38 = *(v3 + 312);
  *(v3 + 312) = 0;
  if (v38)
  {
    dispatch_release(v38);
  }

  dispatch_assert_queue_V2(*(v3 + 24));
  *(v3 + 320) = 0;
  dispatch_assert_queue_V2(*(v3 + 24));
  radio::MipcCommandDriver::setTransitionState_sync(v3, 0);
  *(v3 + 323) = 0;
  radio::CommandDriver::handleOperatingModeChanged_sync();
  v4 = v46;
  if (v46)
  {
    goto LABEL_105;
  }
}

void sub_296E6F2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a16);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
    _Unwind_Resume(a1);
  }

  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void sub_296E6F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E6F30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12D98;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12D98;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12D98;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12D98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[4] = v4;
  v14[5] = v4;
  v14[2] = v4;
  v14[3] = v4;
  v14[0] = v4;
  v14[1] = v4;
  abb::router::Message::getRawMsg(&v15, this);
  v5 = *v15;
  abb::router::Message::getRawMsg(&v12, this);
  MEMORY[0x29C266A40](v14, v5, v12[1] - *v12);
  v6 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    v16 = v10;
    if (v10)
    {
      v11 = v10;
      v15 = a1[2];
      if (v15)
      {
        radio::MipcCommandDriver::handleRadioInd_sync(v9, v14);
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  mipc::nw::Radio_Ind::~Radio_Ind(v14);
}

void sub_296E6F73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 48);
  mipc::nw::Radio_Ind::~Radio_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E6F758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::nw::Radio_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc2nw9Radio_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc2nw9Radio_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc2nw9Radio_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc2nw9Radio_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12E18;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12E18;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12E18;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12E18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[4] = v4;
  v14[5] = v4;
  v14[2] = v4;
  v14[3] = v4;
  v14[0] = v4;
  v14[1] = v4;
  abb::router::Message::getRawMsg(&v16, this);
  v5 = *v16;
  abb::router::Message::getRawMsg(&v12, this);
  MEMORY[0x29C266ED0](v14, v5, v12[1] - *v12);
  v6 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    v17 = v10;
    if (v10)
    {
      v11 = v10;
      v16 = a1[2];
      if (v16)
      {
        radio::MipcCommandDriver::handleRadioStateResultInd_sync(v9, v14);
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  mipc::cust::Set_Radio_State_Result_Ind::~Set_Radio_State_Result_Ind(v14);
}

void sub_296E6FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 48);
  mipc::cust::Set_Radio_State_Result_Ind::~Set_Radio_State_Result_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E6FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Radio_State_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust26Set_Radio_State_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust26Set_Radio_State_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust26Set_Radio_State_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust26Set_Radio_State_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12E98;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12E98;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12E98;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12E98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[4] = v4;
  v14[5] = v4;
  v14[2] = v4;
  v14[3] = v4;
  v14[0] = v4;
  v14[1] = v4;
  abb::router::Message::getRawMsg(&v15, this);
  v5 = *v15;
  abb::router::Message::getRawMsg(&v12, this);
  MEMORY[0x29C266DF0](v14, v5, v12[1] - *v12);
  v6 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    v16 = v10;
    if (v10)
    {
      v11 = v10;
      v15 = a1[2];
      if (v15)
      {
        radio::MipcCommandDriver::handleCampOnlyServiceTypeInd_sync(v9, v14);
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  mipc::cust::Service_Type_Ind::~Service_Type_Ind(v14);
}

void sub_296E6FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 48);
  mipc::cust::Service_Type_Ind::~Service_Type_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E6FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Service_Type_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Service_Type_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Service_Type_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Service_Type_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Service_Type_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12F18;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12F18;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12F18;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12F18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[4] = v4;
  v14[5] = v4;
  v14[2] = v4;
  v14[3] = v4;
  v14[0] = v4;
  v14[1] = v4;
  abb::router::Message::getRawMsg(&v16, this);
  v5 = *v16;
  abb::router::Message::getRawMsg(&v12, this);
  MEMORY[0x29C266DD0](v14, v5, v12[1] - *v12);
  v6 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v8);
    v17 = v10;
    if (v10)
    {
      v11 = v10;
      v16 = a1[2];
      if (v16)
      {
        radio::MipcCommandDriver::handleDumpLogsInd_sync(v9, v14);
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  mipc::cust::Bb_Dump_Logs_Ind::~Bb_Dump_Logs_Ind(v14);
}

void sub_296E70334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 48);
  mipc::cust::Bb_Dump_Logs_Ind::~Bb_Dump_Logs_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E70350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1}>(unsigned int,radio::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::cust::Bb_Dump_Logs_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Bb_Dump_Logs_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Bb_Dump_Logs_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Bb_Dump_Logs_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN5radio17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc4cust16Bb_Dump_Logs_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[2];
  if (!v2 || (v3 = *v1, v4 = std::__shared_weak_count::lock(v2), (v28 = v4) == 0))
  {
LABEL_23:
    v16 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v5 = v4;
  if (v1[1])
  {
    if (*(v3 + 322))
    {
      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Delaying power off as mode transition is in progress", buf, 2u);
      }

      v8 = v1[3];
      v7 = v1[4];
      if (v7)
      {
        v9 = _Block_copy(v7);
        v10 = v1[5];
        if (!v10)
        {
LABEL_10:
          v11 = *(v3 + 304);
          *(v3 + 296) = v8;
          *(v3 + 304) = v9;
          if (v11)
          {
            _Block_release(v11);
          }

          v12 = *(v3 + 312);
          *(v3 + 312) = v10;
          if (v12)
          {
            dispatch_release(v12);
          }

          goto LABEL_22;
        }
      }

      else
      {
        v9 = 0;
        v10 = v1[5];
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      dispatch_retain(v10);
      goto LABEL_10;
    }

    v14 = v1[3];
    v13 = v1[4];
    if (v13)
    {
      v13 = _Block_copy(v13);
    }

    v15 = v1[5];
    *buf = v13;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    radio::MipcCommandDriver::handleOpModeTransitionToPowerOff_sync(v3, v14, buf);
    if (object)
    {
      dispatch_release(object);
    }

    if (*buf)
    {
      _Block_release(*buf);
    }
  }

LABEL_22:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_23;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v16 = __p;
  if (!__p)
  {
LABEL_24:
    v17 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_27:
  v18 = v16[5];
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = v16[4];
  if (v19)
  {
    _Block_release(v19);
  }

  v20 = v16[2];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(v16);
  v17 = a1;
  if (a1)
  {
LABEL_34:
    v21 = v17[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v22 = v17;
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v17 = v22;
      }
    }

    operator delete(v17);
  }
}

void sub_296E7064C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, uint64_t a12, char a13)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ctu::cf::insert<__CFString const*,std::string>(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  ctu::cf::convert_copy();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296E7079C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296E707C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting baseband firwmare version", buf, 2u);
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[3] = v4;
  v29[4] = v4;
  v29[1] = v4;
  v29[2] = v4;
  v29[0] = v4;
  mipc::sys::Get_Info_Req::Get_Info_Req();
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v5;
  v41 = v5;
  v39 = v5;
  mipc::sys::Get_Info_Req::serialize(&v39, v29);
  if (v42)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  *v31 = v6;
  *&v31[16] = v6;
  MEMORY[0x29C266720](v31, &v39);
  abb::router::SendProxy::SendProxy(buf, &v2[5].__on_zero_shared_weak, v31);
  MEMORY[0x29C266730](v31);
  if (v42 != -1)
  {
    *v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *&v31[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*&v31[8 * v42])(&v26, &v39);
  }

  v7 = abb::router::SendProxy::timeout();
  v26 = v2;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v9 = v2->~__shared_weak_count_0, (v10 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v27 = v9;
  *(&v27 + 1) = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v17);
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
LABEL_10:
      v12 = _Block_copy(shared_owners);
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
LABEL_11:
    dispatch_retain(shared_weak_owners);
  }

LABEL_12:
  v14 = v26;
  v15 = v27;
  v28 = 0u;
  v27 = 0u;
  *v31 = v26;
  *&v31[8] = v15;
  v39 = v26;
  *&v31[24] = v12;
  *&v32 = shared_weak_owners;
  *&v41 = 0;
  v40 = 0uLL;
  v16 = operator new(0x30uLL);
  *v16 = &unk_2A1E12FC8;
  v16[1] = v14;
  *(v16 + 1) = v15;
  v16[4] = v12;
  v16[5] = shared_weak_owners;
  v45 = v16;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v44, (v7 + 152));
  if (v45 == v44)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))(v45);
  }

  MEMORY[0x29C266750](buf);
  mipc::sys::Get_Info_Req::~Get_Info_Req(v29);
  if (__p)
  {
    v18 = __p->__shared_weak_owners_;
    if (v18)
    {
      dispatch_release(v18);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v20 = a1;
    }

    operator delete(v20);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_296E70C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}::~Get_Info_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E12FC8;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E12FC8;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E12FC8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(v2 + 4) = v4;
  *(v2 + 5) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E12FC8;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 40);
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[11] = v4;
  v12[12] = v4;
  v12[9] = v4;
  v12[10] = v4;
  v12[7] = v4;
  v12[8] = v4;
  v12[5] = v4;
  v12[6] = v4;
  v12[3] = v4;
  v12[4] = v4;
  v12[1] = v4;
  v12[2] = v4;
  v12[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v13.__val_, this);
    if ((v14 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v19 = v13;
    v6 = mipc::toErrorCode(v13.__val_, v5);
    std::error_code::message(&v16, &v19);
    v17 = 0;
    v18 = 0;
    v15 = v6;
    MEMORY[0x29C266B00](v12, &v15, 1);
    v7 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v15, this);
    v8 = *v15;
    abb::router::Message::getRawMsg(&v13.__val_, this);
    MEMORY[0x29C266B10](v12, v8, *(*&v13.__val_ + 8) - **&v13.__val_);
    cat = v13.__cat_;
    if (v13.__cat_ && !atomic_fetch_add(&v13.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v16.__r_.__value_.__r.__words[0];
    if (v16.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v16.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}::operator()(a1 + 8, v12);
  return MEMORY[0x29C266B20](v12);
}

void sub_296E71258(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 128);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys12Get_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys12Get_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys12Get_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys12Get_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Info_Cnf const&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v331 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_625;
  }

  v5 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v318 = v6;
  if (!v6)
  {
    goto LABEL_625;
  }

  if (v2[1])
  {
    cf = 0;
    memset(&v315, 0, sizeof(v315));
    v314 = 0;
    v313 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v312[7] = v7;
    v312[8] = v7;
    v312[5] = v7;
    v312[6] = v7;
    v312[3] = v7;
    v312[4] = v7;
    v312[1] = v7;
    v312[2] = v7;
    v311 = v7;
    v312[0] = v7;
    *v309 = v7;
    v310 = v7;
    v307 = v7;
    v308 = v7;
    v305 = v7;
    v306 = v7;
    v304 = v7;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v304);
    v296 = v5;
    if ((mipc::operator==() & 1) == 0)
    {
      std::string::__assign_external(&v315, "Get info confirmation error: %s, %s\n", 0x24uLL);
      __dst.__r_.__value_.__r.__words[0] = *(a2 + 32);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst.__r_.__value_.__r.__words[1], *(a2 + 40), *(a2 + 48));
      }

      else
      {
        *&__dst.__r_.__value_.__r.__words[1] = *(a2 + 40);
        v323 = *(a2 + 56);
      }

      v8 = *(a2 + 72);
      aBlock = *(a2 + 64);
      v325 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      mipc::asString();
      __p.__r_.__value_.__r.__words[0] = *(a2 + 32);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *(a2 + 40), *(a2 + 48));
      }

      else
      {
        *&__p.__r_.__value_.__r.__words[1] = *(a2 + 40);
        v301 = *(a2 + 56);
      }

      v9 = *(a2 + 72);
      v302 = *(a2 + 64);
      v303 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = v303;
        if (v303)
        {
          if (!atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      if (SHIBYTE(v301) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__size_);
      }

      v11 = v325;
      if (v325 && !atomic_fetch_add(v325 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      if (SHIBYTE(v323) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__size_);
      }

      v5 = v296;
      if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v299, v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
      }

      else
      {
        v299 = v315;
      }

      CreateError();
      v12 = cf;
      v13 = __dst.__r_.__value_.__r.__words[0];
      cf = __dst.__r_.__value_.__r.__words[0];
      __dst.__r_.__value_.__r.__words[0] = 0;
      if (v12)
      {
        CFRelease(v12);
        if (__dst.__r_.__value_.__r.__words[0])
        {
          CFRelease(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v299.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
LABEL_585:
        v281 = MEMORY[0x29EDC9528];
        if (!v2[3] || !v2[4])
        {
          goto LABEL_613;
        }

        v282 = v2;
        v283 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v284 = v314;
        if (v314)
        {
          CFRetain(v314);
        }

        v285 = v282[3];
        if (v285)
        {
          v286 = _Block_copy(v285);
        }

        else
        {
          v286 = 0;
        }

        v287 = v282[4];
        __dst.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        __dst.__r_.__value_.__l.__size_ = 1174405120;
        __dst.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
        v323 = &__block_descriptor_tmp_148;
        if (v286)
        {
          aBlock = _Block_copy(v286);
          v325 = v283;
          if (!v283)
          {
            goto LABEL_599;
          }
        }

        else
        {
          aBlock = 0;
          v325 = v283;
          if (!v283)
          {
LABEL_599:
            v326 = v284;
            if (v284)
            {
              CFRetain(v284);
            }

            dispatch_async(v287, &__dst);
            if (v326)
            {
              CFRelease(v326);
            }

            v281 = MEMORY[0x29EDC9528];
            if (v325)
            {
              CFRelease(v325);
            }

            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v286)
            {
              _Block_release(v286);
            }

            if (v284)
            {
              CFRelease(v284);
            }

            if (v283)
            {
              CFRelease(v283);
            }

LABEL_613:
            *&v304 = *v281;
            v288 = v281[9];
            *(&v304 + *(v304 - 24)) = v281[8];
            *&v305 = v288;
            *(&v305 + 1) = MEMORY[0x29EDC9570] + 16;
            if (SHIBYTE(v310) < 0)
            {
              operator delete(v309[1]);
            }

            *(&v305 + 1) = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(&v306);
            std::iostream::~basic_iostream();
            MEMORY[0x29C267970](v312);
            if (v314)
            {
              CFRelease(v314);
            }

            if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v315.__r_.__value_.__l.__data_);
              v289 = cf;
              if (!cf)
              {
                goto LABEL_622;
              }
            }

            else
            {
              v289 = cf;
              if (!cf)
              {
LABEL_622:
                v6 = v318;
                if (!v318)
                {
                  goto LABEL_625;
                }

                goto LABEL_623;
              }
            }

            CFRelease(v289);
            goto LABEL_622;
          }
        }

        CFRetain(v283);
        goto LABEL_599;
      }
    }

    *v297 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v15 = v314;
      v314 = Mutable;
      if (v15)
      {
        CFRelease(v15);
      }
    }

    memset(&__p, 170, sizeof(__p));
    v298 = a2;
    v16 = *(a2 + 144);
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = v16[1];
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = *v16;
      if (v17 < 0x17)
      {
LABEL_38:
        *(&__p.__r_.__value_.__s + 23) = v17;
        p_p = &__p;
        if (!v17)
        {
LABEL_47:
          p_p->__r_.__value_.__s.__data_[v17] = 0;
          v20 = *(v5 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v21 = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
            *(__dst.__r_.__value_.__r.__words + 4) = v21;
            _os_log_impl(&dword_296E3E000, v20, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", &__dst, 0xCu);
          }

          v22 = v314;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __p;
          }

          ctu::cf::insert<__CFString const*,std::string>(v22, *MEMORY[0x29EDC8E08]);
          v292 = v2;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          LODWORD(v24) = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          size = __p.__r_.__value_.__l.__size_;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          if (v26 < 2 || ((v27 = __p.__r_.__value_.__r.__words[0], (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v28 = &__p) : (v28 = __p.__r_.__value_.__r.__words[0]), (v29 = memchr(&v28->__r_.__value_.__l.__data_ + 1, 45, v26 - 1)) == 0 || (v30 = v29 - v28, v29 - v28 == -1)))
          {
LABEL_84:
            if ((v24 & 0x80u) == 0)
            {
              v36 = v23;
            }

            else
            {
              v36 = size;
            }

            if (v36)
            {
              v37 = __p.__r_.__value_.__r.__words[0];
              v38 = (v24 & 0x80u) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              v39 = memchr(v38, 44, v36);
              if (v39)
              {
                v40 = v39 - v38;
                if (v39 - v38 != -1)
                {
                  v41 = v37 + size;
                  if ((v24 & 0x80u) == 0)
                  {
                    v41 = &__p + v23;
                  }

                  if (v36 < v40)
                  {
                    std::string::__throw_out_of_range[abi:ne200100]();
                  }

                  if (v41 - v39 == -1)
                  {
                    if ((v24 & 0x80) != 0)
                    {
                      __p.__r_.__value_.__l.__size_ = v39 - v38;
                    }

                    else
                    {
                      *(&__p.__r_.__value_.__s + 23) = v40 & 0x7F;
                      v37 = &__p;
                    }

                    v37->__r_.__value_.__s.__data_[v40] = 0;
                  }

                  else
                  {
                    std::string::__erase_external_with_move(&__p, v40, v41 - v39);
                  }
                }
              }
            }

            v42 = *(v296 + 40);
            v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
            v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if (v43)
            {
              v45 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v45 = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
              *(__dst.__r_.__value_.__r.__words + 4) = v45;
              _os_log_impl(&dword_296E3E000, v42, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version (stripped): %s", &__dst, 0xCu);
              v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            v46 = v314;
            if (v44 < 0)
            {
              std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = __p;
            }

            ctu::cf::insert<__CFString const*,std::string>(v46, *MEMORY[0x29EDC8D98]);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              v47 = *(v298 + 168);
              v48 = *(v47 + 23);
              if ((v48 & 0x8000000000000000) == 0)
              {
LABEL_111:
                if (v48 < 0x17)
                {
                  goto LABEL_112;
                }

                goto LABEL_118;
              }
            }

            else
            {
              v47 = *(v298 + 168);
              v48 = *(v47 + 23);
              if ((v48 & 0x8000000000000000) == 0)
              {
                goto LABEL_111;
              }
            }

            v48 = v47[1];
            if (v48 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v47 = *v47;
            if (v48 < 0x17)
            {
LABEL_112:
              *(&buf.__r_.__value_.__s + 23) = v48;
              p_buf = &buf;
              if (!v48)
              {
                buf.__r_.__value_.__s.__data_[0] = 0;
                v50 = v314;
                v51 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_114:
                  __dst = buf;
                  goto LABEL_124;
                }

LABEL_123:
                std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
LABEL_124:
                ctu::cf::insert<__CFString const*,std::string>(v50, *MEMORY[0x29EDC8E30]);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  if ((v51 & 0x80000000) == 0)
                  {
LABEL_126:
                    v53 = *(v296 + 40);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_127;
                    }

                    goto LABEL_138;
                  }
                }

                else if ((v51 & 0x80000000) == 0)
                {
                  goto LABEL_126;
                }

                operator delete(buf.__r_.__value_.__l.__data_);
                v53 = *(v296 + 40);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
LABEL_127:
                  v54 = *(v298 + 168);
                  if (*(v54 + 23) < 0)
                  {
                    v54 = *v54;
                  }

                  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                  *(__dst.__r_.__value_.__r.__words + 4) = v54;
                  _os_log_impl(&dword_296E3E000, v53, OS_LOG_TYPE_DEFAULT, "#I Custom firmware: %s", &__dst, 0xCu);
                  v55 = *(v298 + 136);
                  v56 = v55[23];
                  if ((v56 & 0x8000000000000000) != 0)
                  {
LABEL_130:
                    v56 = *(v55 + 1);
                    if (v56 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v55 = *v55;
                    if (v56 >= 0x17)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_140;
                  }

LABEL_139:
                  if (v56 >= 0x17)
                  {
LABEL_132:
                    if ((v56 | 7) == 0x17)
                    {
                      v57 = 25;
                    }

                    else
                    {
                      v57 = (v56 | 7) + 1;
                    }

                    v58 = operator new(v57);
                    buf.__r_.__value_.__l.__size_ = v56;
                    buf.__r_.__value_.__r.__words[2] = v57 | 0x8000000000000000;
                    buf.__r_.__value_.__r.__words[0] = v58;
                    goto LABEL_141;
                  }

LABEL_140:
                  *(&buf.__r_.__value_.__s + 23) = v56;
                  v58 = &buf;
                  if (!v56)
                  {
                    buf.__r_.__value_.__s.__data_[0] = 0;
                    v59 = v314;
                    v60 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_144;
                  }

LABEL_141:
                  memmove(v58, v55, v56);
                  v58->__r_.__value_.__s.__data_[v56] = 0;
                  v59 = v314;
                  v60 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_142:
                    std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                    goto LABEL_145;
                  }

LABEL_144:
                  __dst = buf;
LABEL_145:
                  ctu::cf::insert<__CFString const*,std::string>(v59, *MEMORY[0x29EDC8DF0]);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                    if ((v60 & 0x80000000) == 0)
                    {
LABEL_147:
                      v61 = *(v296 + 40);
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_154;
                    }
                  }

                  else if ((v60 & 0x80000000) == 0)
                  {
                    goto LABEL_147;
                  }

                  operator delete(buf.__r_.__value_.__l.__data_);
                  v61 = *(v296 + 40);
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_148:
                    v62 = *(v298 + 136);
                    if (*(v62 + 23) < 0)
                    {
                      v62 = *v62;
                    }

                    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                    *(__dst.__r_.__value_.__r.__words + 4) = v62;
                    _os_log_impl(&dword_296E3E000, v61, OS_LOG_TYPE_DEFAULT, "#I Manufacturer: %s", &__dst, 0xCu);
                    v63 = *(v298 + 128);
                    if (!v63)
                    {
LABEL_173:
                      v69 = *(v298 + 160);
                      v70 = *(v69 + 23);
                      if ((v70 & 0x8000000000000000) != 0)
                      {
                        v70 = v69[1];
                        if (v70 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v69 = *v69;
                        if (v70 < 0x17)
                        {
LABEL_175:
                          *(&buf.__r_.__value_.__s + 23) = v70;
                          v71 = &buf;
                          if (!v70)
                          {
                            buf.__r_.__value_.__s.__data_[0] = 0;
                            v72 = v314;
                            v73 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
LABEL_177:
                              __dst = buf;
                              goto LABEL_186;
                            }

LABEL_185:
                            std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
LABEL_186:
                            ctu::cf::insert<__CFString const*,std::string>(v72, *MEMORY[0x29EDC8D20]);
                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__dst.__r_.__value_.__l.__data_);
                              if ((v73 & 0x80000000) == 0)
                              {
LABEL_188:
                                v75 = *(v296 + 40);
                                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_189;
                                }

                                goto LABEL_200;
                              }
                            }

                            else if ((v73 & 0x80000000) == 0)
                            {
                              goto LABEL_188;
                            }

                            operator delete(buf.__r_.__value_.__l.__data_);
                            v75 = *(v296 + 40);
                            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                            {
LABEL_189:
                              v76 = *(v298 + 160);
                              if (*(v76 + 23) < 0)
                              {
                                v76 = *v76;
                              }

                              LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                              *(__dst.__r_.__value_.__r.__words + 4) = v76;
                              _os_log_impl(&dword_296E3E000, v75, OS_LOG_TYPE_DEFAULT, "#I IMEI software version: %s", &__dst, 0xCu);
                              v77 = *(v298 + 152);
                              v78 = v77[23];
                              if ((v78 & 0x8000000000000000) != 0)
                              {
LABEL_192:
                                v78 = *(v77 + 1);
                                if (v78 > 0x7FFFFFFFFFFFFFF7)
                                {
                                  std::string::__throw_length_error[abi:ne200100]();
                                }

                                v77 = *v77;
                                if (v78 >= 0x17)
                                {
                                  goto LABEL_194;
                                }

                                goto LABEL_202;
                              }

LABEL_201:
                              if (v78 >= 0x17)
                              {
LABEL_194:
                                if ((v78 | 7) == 0x17)
                                {
                                  v79 = 25;
                                }

                                else
                                {
                                  v79 = (v78 | 7) + 1;
                                }

                                v80 = operator new(v79);
                                buf.__r_.__value_.__l.__size_ = v78;
                                buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
                                buf.__r_.__value_.__r.__words[0] = v80;
                                goto LABEL_203;
                              }

LABEL_202:
                              *(&buf.__r_.__value_.__s + 23) = v78;
                              v80 = &buf;
                              if (!v78)
                              {
                                buf.__r_.__value_.__s.__data_[0] = 0;
                                v81 = v314;
                                v82 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  goto LABEL_204;
                                }

                                goto LABEL_206;
                              }

LABEL_203:
                              memmove(v80, v77, v78);
                              v80->__r_.__value_.__s.__data_[v78] = 0;
                              v81 = v314;
                              v82 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                              {
LABEL_204:
                                std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                goto LABEL_207;
                              }

LABEL_206:
                              __dst = buf;
LABEL_207:
                              ctu::cf::insert<__CFString const*,std::string>(v81, *MEMORY[0x29EDC8E38]);
                              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__dst.__r_.__value_.__l.__data_);
                                if ((v82 & 0x80000000) == 0)
                                {
LABEL_209:
                                  v83 = *(v296 + 40);
                                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_210;
                                  }

                                  goto LABEL_216;
                                }
                              }

                              else if ((v82 & 0x80000000) == 0)
                              {
                                goto LABEL_209;
                              }

                              operator delete(buf.__r_.__value_.__l.__data_);
                              v83 = *(v296 + 40);
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_210:
                                v84 = *(v298 + 152);
                                if (*(v84 + 23) < 0)
                                {
                                  v84 = *v84;
                                }

                                LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                                *(__dst.__r_.__value_.__r.__words + 4) = v84;
                                _os_log_impl(&dword_296E3E000, v83, OS_LOG_TYPE_DEFAULT, "#I Hardware version: %s", &__dst, 0xCu);
                                v85 = *(v298 + 176);
                                v87 = *v85;
                                v86 = v85[1];
                                if (*v85 == v86)
                                {
LABEL_220:
                                  if ((BYTE8(v311) & 0x10) != 0)
                                  {
                                    v101 = v311;
                                    if (v311 < *(&v308 + 1))
                                    {
                                      *&v311 = *(&v308 + 1);
                                      v101 = *(&v308 + 1);
                                    }

                                    v102 = &v308;
                                  }

                                  else
                                  {
                                    if ((BYTE8(v311) & 8) == 0)
                                    {
                                      v98 = 0;
                                      *(&buf.__r_.__value_.__s + 23) = 0;
                                      v99 = &buf;
                                      v100 = v296;
                                      goto LABEL_236;
                                    }

                                    v102 = &v306 + 1;
                                    v101 = *(&v307 + 1);
                                  }

                                  v100 = v296;
                                  v103 = *v102;
                                  v98 = v101 - *v102;
                                  if (v98 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v98 >= 0x17)
                                  {
                                    if ((v98 | 7) == 0x17)
                                    {
                                      v104 = 25;
                                    }

                                    else
                                    {
                                      v104 = (v98 | 7) + 1;
                                    }

                                    v99 = operator new(v104);
                                    buf.__r_.__value_.__l.__size_ = v98;
                                    buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
                                    buf.__r_.__value_.__r.__words[0] = v99;
                                  }

                                  else
                                  {
                                    *(&buf.__r_.__value_.__s + 23) = v101 - *v102;
                                    v99 = &buf;
                                    if (!v98)
                                    {
LABEL_236:
                                      v99->__r_.__value_.__s.__data_[v98] = 0;
                                      v105 = v314;
                                      v106 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                      }

                                      else
                                      {
                                        __dst = buf;
                                      }

                                      ctu::cf::insert<__CFString const*,std::string>(v105, *MEMORY[0x29EDC8E20]);
                                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(__dst.__r_.__value_.__l.__data_);
                                        if ((v106 & 0x80000000) == 0)
                                        {
LABEL_241:
                                          v107 = *(v100 + 40);
                                          v109 = *v297;
                                          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                                          {
                                            goto LABEL_242;
                                          }

                                          goto LABEL_247;
                                        }
                                      }

                                      else if ((v106 & 0x80000000) == 0)
                                      {
                                        goto LABEL_241;
                                      }

                                      operator delete(buf.__r_.__value_.__l.__data_);
                                      v107 = *(v100 + 40);
                                      v109 = *v297;
                                      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                                      {
LABEL_242:
                                        if ((BYTE8(v311) & 0x10) != 0)
                                        {
                                          v113 = v311;
                                          if (v311 < *(&v308 + 1))
                                          {
                                            *&v311 = *(&v308 + 1);
                                            v113 = *(&v308 + 1);
                                          }

                                          v114 = v308;
                                          v110 = v113 - v308;
                                          if ((v113 - v308) > 0x7FFFFFFFFFFFFFF7)
                                          {
                                            goto LABEL_627;
                                          }
                                        }

                                        else
                                        {
                                          if ((BYTE8(v311) & 8) == 0)
                                          {
                                            v110 = 0;
                                            *(&__dst.__r_.__value_.__s + 23) = 0;
                                            p_dst = &__dst;
                                            goto LABEL_260;
                                          }

                                          v114 = *(&v306 + 1);
                                          v110 = *(&v307 + 1) - *(&v306 + 1);
                                          if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                          {
LABEL_627:
                                            std::string::__throw_length_error[abi:ne200100]();
                                          }
                                        }

                                        if (v110 >= 0x17)
                                        {
                                          if ((v110 | 7) == 0x17)
                                          {
                                            v115 = 25;
                                          }

                                          else
                                          {
                                            v115 = (v110 | 7) + 1;
                                          }

                                          p_dst = operator new(v115);
                                          __dst.__r_.__value_.__r.__words[2] = v115 | 0x8000000000000000;
                                          __dst.__r_.__value_.__r.__words[0] = p_dst;
                                          __dst.__r_.__value_.__l.__size_ = v110;
                                        }

                                        else
                                        {
                                          *(&__dst.__r_.__value_.__s + 23) = v110;
                                          p_dst = &__dst;
                                          if (!v110)
                                          {
LABEL_260:
                                            p_dst->__r_.__value_.__s.__data_[v110] = 0;
                                            v116 = &__dst;
                                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                            {
                                              v116 = __dst.__r_.__value_.__r.__words[0];
                                            }

                                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                            *(buf.__r_.__value_.__r.__words + 4) = v116;
                                            _os_log_impl(&dword_296E3E000, v107, OS_LOG_TYPE_DEFAULT, "#I Hardware chip ID: %s", &buf, 0xCu);
                                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                            {
                                              operator delete(__dst.__r_.__value_.__l.__data_);
                                            }

                                            v112 = *(v298 + 184);
                                            if (!v112)
                                            {
                                              goto LABEL_295;
                                            }

LABEL_265:
                                            v117 = *(v112 + 23);
                                            if ((v117 & 0x8000000000000000) != 0)
                                            {
                                              v117 = v112[1];
                                              if (v117 > 0x7FFFFFFFFFFFFFF7)
                                              {
                                                std::string::__throw_length_error[abi:ne200100]();
                                              }

                                              v112 = *v112;
                                              if (v117 < 0x17)
                                              {
LABEL_267:
                                                *(&buf.__r_.__value_.__s + 23) = v117;
                                                v118 = &buf;
                                                if (!v117)
                                                {
LABEL_276:
                                                  v118->__r_.__value_.__s.__data_[v117] = 0;
                                                  v120 = v314;
                                                  v121 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                  }

                                                  else
                                                  {
                                                    __dst = buf;
                                                  }

                                                  v122 = *MEMORY[0x29EDC8BF8];
                                                  value = 0;
                                                  ctu::cf::convert_copy(&value, v122, 0x8000100, v109, v108);
                                                  v123 = value;
                                                  v320 = value;
                                                  value = 0;
                                                  ctu::cf::convert_copy();
                                                  v124 = value;
                                                  v319 = value;
                                                  if (v123 && value)
                                                  {
                                                    CFDictionaryAddValue(v120, v123, value);
                                                  }

                                                  else if (!value)
                                                  {
                                                    goto LABEL_284;
                                                  }

                                                  CFRelease(v124);
LABEL_284:
                                                  if (v123)
                                                  {
                                                    CFRelease(v123);
                                                  }

                                                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(__dst.__r_.__value_.__l.__data_);
                                                    if ((v121 & 0x80000000) == 0)
                                                    {
LABEL_288:
                                                      v100 = v296;
                                                      v125 = *(v296 + 40);
                                                      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        goto LABEL_289;
                                                      }

                                                      goto LABEL_295;
                                                    }
                                                  }

                                                  else if ((v121 & 0x80000000) == 0)
                                                  {
                                                    goto LABEL_288;
                                                  }

                                                  operator delete(buf.__r_.__value_.__l.__data_);
                                                  v100 = v296;
                                                  v125 = *(v296 + 40);
                                                  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                                                  {
LABEL_289:
                                                    v126 = *(v298 + 184);
                                                    if (*(v126 + 23) < 0)
                                                    {
                                                      v126 = *v126;
                                                    }

                                                    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                                                    *(__dst.__r_.__value_.__r.__words + 4) = v126;
                                                    _os_log_impl(&dword_296E3E000, v125, OS_LOG_TYPE_DEFAULT, "#I Serial number: %s", &__dst, 0xCu);
                                                    v127 = *(v298 + 192);
                                                    if (!v127)
                                                    {
LABEL_319:
                                                      v135 = *(v298 + 200);
                                                      if (!v135)
                                                      {
                                                        goto LABEL_343;
                                                      }

                                                      goto LABEL_320;
                                                    }

LABEL_296:
                                                    v128 = *(v127 + 23);
                                                    if ((v128 & 0x8000000000000000) != 0)
                                                    {
                                                      v128 = v127[1];
                                                      if (v128 > 0x7FFFFFFFFFFFFFF7)
                                                      {
                                                        std::string::__throw_length_error[abi:ne200100]();
                                                      }

                                                      v127 = *v127;
                                                      if (v128 < 0x17)
                                                      {
LABEL_298:
                                                        *(&buf.__r_.__value_.__s + 23) = v128;
                                                        v129 = &buf;
                                                        if (!v128)
                                                        {
LABEL_307:
                                                          v129->__r_.__value_.__s.__data_[v128] = 0;
                                                          v131 = v314;
                                                          v132 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                          {
                                                            std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                          }

                                                          else
                                                          {
                                                            __dst = buf;
                                                          }

                                                          ctu::cf::insert<__CFString const*,std::string>(v131, *MEMORY[0x29EDC8DE0]);
                                                          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                          {
                                                            operator delete(__dst.__r_.__value_.__l.__data_);
                                                            if ((v132 & 0x80000000) == 0)
                                                            {
LABEL_312:
                                                              v133 = *(v100 + 40);
                                                              if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                                                              {
                                                                goto LABEL_319;
                                                              }

                                                              goto LABEL_313;
                                                            }
                                                          }

                                                          else if ((v132 & 0x80000000) == 0)
                                                          {
                                                            goto LABEL_312;
                                                          }

                                                          operator delete(buf.__r_.__value_.__l.__data_);
                                                          v133 = *(v100 + 40);
                                                          if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                                                          {
                                                            goto LABEL_319;
                                                          }

LABEL_313:
                                                          v134 = *(v298 + 192);
                                                          if (*(v134 + 23) < 0)
                                                          {
                                                            v134 = *v134;
                                                          }

                                                          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                                                          *(__dst.__r_.__value_.__r.__words + 4) = v134;
                                                          _os_log_impl(&dword_296E3E000, v133, OS_LOG_TYPE_DEFAULT, "#I Project name: %s", &__dst, 0xCu);
                                                          v135 = *(v298 + 200);
                                                          if (!v135)
                                                          {
LABEL_343:
                                                            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__dst);
                                                            v143 = __dst.__r_.__value_.__l.__size_;
                                                            __dst.__r_.__value_.__l.__size_ = *(&v304 + 1);
                                                            *(&v304 + 1) = v143;
                                                            v144 = (&__dst + *(__dst.__r_.__value_.__r.__words[0] - 24));
                                                            v145 = (&v304 + *(v304 - 24));
                                                            std::ios_base::swap(v144, v145);
                                                            v146 = v144[1].__vftable;
                                                            v144[1].__vftable = v145[1].__vftable;
                                                            v145[1].__vftable = v146;
                                                            LODWORD(v146) = v144[1].__fmtflags_;
                                                            v144[1].__fmtflags_ = v145[1].__fmtflags_;
                                                            v145[1].__fmtflags_ = v146;
                                                            std::stringbuf::swap();
                                                            v295 = *MEMORY[0x29EDC9528];
                                                            __dst.__r_.__value_.__r.__words[0] = v295;
                                                            v147 = *(MEMORY[0x29EDC9528] + 72);
                                                            v148 = *(MEMORY[0x29EDC9528] + 64);
                                                            *(__dst.__r_.__value_.__r.__words + *(v295 - 24)) = v148;
                                                            v293 = v147;
                                                            v294 = v148;
                                                            __dst.__r_.__value_.__r.__words[2] = v147;
                                                            v323 = (MEMORY[0x29EDC9570] + 16);
                                                            if (v328 < 0)
                                                            {
                                                              operator delete(v327);
                                                            }

                                                            v323 = (MEMORY[0x29EDC9568] + 16);
                                                            std::locale::~locale(&aBlock);
                                                            std::iostream::~basic_iostream();
                                                            MEMORY[0x29C267970](v329);
                                                            v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                                            v150 = *v149;
                                                            v151 = *v149;
                                                            *(v149 + *(*v149 - 24) + 24) = 2;
                                                            v152 = (v149 + *(v151 - 24));
                                                            if (v152[1].__fmtflags_ == -1)
                                                            {
                                                              std::ios_base::getloc(v152);
                                                              v153 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
                                                              v154 = (v153->__vftable[2].~facet_0)(v153, 32);
                                                              std::locale::~locale(&__dst);
                                                              v152[1].__fmtflags_ = v154;
                                                              v150 = *v149;
                                                            }

                                                            v152[1].__fmtflags_ = 48;
                                                            *(v149 + *(v150 - 24) + 8) = *(v149 + *(v150 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                            v155 = MEMORY[0x29C267790](v149, **(v298 + 88));
                                                            v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v155, " ", 1);
                                                            *(v156 + *(*v156 - 24) + 8) = *(v156 + *(*v156 - 24) + 8) & 0xFFFFFFB5 | 2;
                                                            if ((BYTE8(v311) & 0x10) != 0)
                                                            {
                                                              v159 = v311;
                                                              if (v311 < *(&v308 + 1))
                                                              {
                                                                *&v311 = *(&v308 + 1);
                                                                v159 = *(&v308 + 1);
                                                              }

                                                              v160 = v308;
                                                              v157 = v159 - v308;
                                                              if ((v159 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                              {
                                                                goto LABEL_374;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if ((BYTE8(v311) & 8) == 0)
                                                              {
                                                                v157 = 0;
                                                                *(&buf.__r_.__value_.__s + 23) = 0;
                                                                v158 = &buf;
                                                                goto LABEL_361;
                                                              }

                                                              v160 = *(&v306 + 1);
                                                              v157 = *(&v307 + 1) - *(&v306 + 1);
                                                              if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                              {
LABEL_374:
                                                                std::string::__throw_length_error[abi:ne200100]();
                                                              }
                                                            }

                                                            if (v157 >= 0x17)
                                                            {
                                                              if ((v157 | 7) == 0x17)
                                                              {
                                                                v161 = 25;
                                                              }

                                                              else
                                                              {
                                                                v161 = (v157 | 7) + 1;
                                                              }

                                                              v158 = operator new(v161);
                                                              buf.__r_.__value_.__l.__size_ = v157;
                                                              buf.__r_.__value_.__r.__words[2] = v161 | 0x8000000000000000;
                                                              buf.__r_.__value_.__r.__words[0] = v158;
                                                            }

                                                            else
                                                            {
                                                              *(&buf.__r_.__value_.__s + 23) = v157;
                                                              v158 = &buf;
                                                              if (!v157)
                                                              {
LABEL_361:
                                                                v158->__r_.__value_.__s.__data_[v157] = 0;
                                                                v162 = v314;
                                                                v163 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                }

                                                                else
                                                                {
                                                                  __dst = buf;
                                                                }

                                                                ctu::cf::insert<__CFString const*,std::string>(v162, *MEMORY[0x29EDC8D88]);
                                                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                                                  if ((v163 & 0x80000000) == 0)
                                                                  {
LABEL_366:
                                                                    v164 = *(v296 + 40);
                                                                    if (!os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                                                                    {
                                                                      goto LABEL_390;
                                                                    }

LABEL_370:
                                                                    if ((BYTE8(v311) & 0x10) != 0)
                                                                    {
                                                                      v167 = v311;
                                                                      if (v311 < *(&v308 + 1))
                                                                      {
                                                                        *&v311 = *(&v308 + 1);
                                                                        v167 = *(&v308 + 1);
                                                                      }

                                                                      v168 = v308;
                                                                      v165 = v167 - v308;
                                                                      if ((v167 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                      {
                                                                        goto LABEL_629;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      if ((BYTE8(v311) & 8) == 0)
                                                                      {
                                                                        v165 = 0;
                                                                        *(&__dst.__r_.__value_.__s + 23) = 0;
                                                                        v166 = &__dst;
                                                                        goto LABEL_386;
                                                                      }

                                                                      v168 = *(&v306 + 1);
                                                                      v165 = *(&v307 + 1) - *(&v306 + 1);
                                                                      if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                      {
LABEL_629:
                                                                        std::string::__throw_length_error[abi:ne200100]();
                                                                      }
                                                                    }

                                                                    if (v165 >= 0x17)
                                                                    {
                                                                      if ((v165 | 7) == 0x17)
                                                                      {
                                                                        v169 = 25;
                                                                      }

                                                                      else
                                                                      {
                                                                        v169 = (v165 | 7) + 1;
                                                                      }

                                                                      v166 = operator new(v169);
                                                                      __dst.__r_.__value_.__r.__words[2] = v169 | 0x8000000000000000;
                                                                      __dst.__r_.__value_.__r.__words[0] = v166;
                                                                      __dst.__r_.__value_.__l.__size_ = v165;
                                                                    }

                                                                    else
                                                                    {
                                                                      *(&__dst.__r_.__value_.__s + 23) = v165;
                                                                      v166 = &__dst;
                                                                      if (!v165)
                                                                      {
                                                                        goto LABEL_386;
                                                                      }
                                                                    }

                                                                    memmove(v166, v168, v165);
LABEL_386:
                                                                    v166->__r_.__value_.__s.__data_[v165] = 0;
                                                                    v170 = &__dst;
                                                                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                    {
                                                                      v170 = __dst.__r_.__value_.__r.__words[0];
                                                                    }

                                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                                                    *(buf.__r_.__value_.__r.__words + 4) = v170;
                                                                    _os_log_impl(&dword_296E3E000, v164, OS_LOG_TYPE_DEFAULT, "#I Sim class: %s", &buf, 0xCu);
                                                                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                    {
                                                                      operator delete(__dst.__r_.__value_.__l.__data_);
                                                                    }

LABEL_390:
                                                                    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__dst);
                                                                    v171 = __dst.__r_.__value_.__l.__size_;
                                                                    __dst.__r_.__value_.__l.__size_ = *(&v304 + 1);
                                                                    *(&v304 + 1) = v171;
                                                                    v172 = (&__dst + *(__dst.__r_.__value_.__r.__words[0] - 24));
                                                                    v173 = (&v304 + *(v304 - 24));
                                                                    std::ios_base::swap(v172, v173);
                                                                    v174 = v172[1].__vftable;
                                                                    v172[1].__vftable = v173[1].__vftable;
                                                                    v173[1].__vftable = v174;
                                                                    LODWORD(v174) = v172[1].__fmtflags_;
                                                                    v172[1].__fmtflags_ = v173[1].__fmtflags_;
                                                                    v173[1].__fmtflags_ = v174;
                                                                    std::stringbuf::swap();
                                                                    __dst.__r_.__value_.__r.__words[0] = v295;
                                                                    *(__dst.__r_.__value_.__r.__words + *(v295 - 24)) = v294;
                                                                    __dst.__r_.__value_.__r.__words[2] = v293;
                                                                    v323 = (MEMORY[0x29EDC9570] + 16);
                                                                    if (v328 < 0)
                                                                    {
                                                                      operator delete(v327);
                                                                    }

                                                                    v323 = (MEMORY[0x29EDC9568] + 16);
                                                                    std::locale::~locale(&aBlock);
                                                                    std::iostream::~basic_iostream();
                                                                    MEMORY[0x29C267970](v329);
                                                                    v175 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                                                    v176 = *v175;
                                                                    v177 = *v175;
                                                                    *(v175 + *(*v175 - 24) + 24) = 2;
                                                                    v178 = (v175 + *(v177 - 24));
                                                                    if (v178[1].__fmtflags_ == -1)
                                                                    {
                                                                      std::ios_base::getloc(v178);
                                                                      v179 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
                                                                      v180 = (v179->__vftable[2].~facet_0)(v179, 32);
                                                                      std::locale::~locale(&__dst);
                                                                      v178[1].__fmtflags_ = v180;
                                                                      v176 = *v175;
                                                                    }

                                                                    v178[1].__fmtflags_ = 48;
                                                                    *(v175 + *(v176 - 24) + 8) = *(v175 + *(v176 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                    v181 = MEMORY[0x29C267790](v175, **(v298 + 112));
                                                                    v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v181, " ", 1);
                                                                    *(v182 + *(*v182 - 24) + 8) = *(v182 + *(*v182 - 24) + 8) & 0xFFFFFFB5 | 2;
                                                                    if ((BYTE8(v311) & 0x10) != 0)
                                                                    {
                                                                      v185 = v311;
                                                                      if (v311 < *(&v308 + 1))
                                                                      {
                                                                        *&v311 = *(&v308 + 1);
                                                                        v185 = *(&v308 + 1);
                                                                      }

                                                                      v186 = v308;
                                                                      v183 = v185 - v308;
                                                                      if ((v185 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                      {
                                                                        goto LABEL_421;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      if ((BYTE8(v311) & 8) == 0)
                                                                      {
                                                                        v183 = 0;
                                                                        *(&buf.__r_.__value_.__s + 23) = 0;
                                                                        v184 = &buf;
                                                                        goto LABEL_408;
                                                                      }

                                                                      v186 = *(&v306 + 1);
                                                                      v183 = *(&v307 + 1) - *(&v306 + 1);
                                                                      if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                      {
LABEL_421:
                                                                        std::string::__throw_length_error[abi:ne200100]();
                                                                      }
                                                                    }

                                                                    if (v183 >= 0x17)
                                                                    {
                                                                      if ((v183 | 7) == 0x17)
                                                                      {
                                                                        v187 = 25;
                                                                      }

                                                                      else
                                                                      {
                                                                        v187 = (v183 | 7) + 1;
                                                                      }

                                                                      v184 = operator new(v187);
                                                                      buf.__r_.__value_.__l.__size_ = v183;
                                                                      buf.__r_.__value_.__r.__words[2] = v187 | 0x8000000000000000;
                                                                      buf.__r_.__value_.__r.__words[0] = v184;
                                                                    }

                                                                    else
                                                                    {
                                                                      *(&buf.__r_.__value_.__s + 23) = v183;
                                                                      v184 = &buf;
                                                                      if (!v183)
                                                                      {
LABEL_408:
                                                                        v184->__r_.__value_.__s.__data_[v183] = 0;
                                                                        v188 = v314;
                                                                        v189 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                        {
                                                                          std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                        }

                                                                        else
                                                                        {
                                                                          __dst = buf;
                                                                        }

                                                                        ctu::cf::insert<__CFString const*,std::string>(v188, *MEMORY[0x29EDC8D48]);
                                                                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                        {
                                                                          operator delete(__dst.__r_.__value_.__l.__data_);
                                                                          if ((v189 & 0x80000000) == 0)
                                                                          {
LABEL_413:
                                                                            v190 = *(v296 + 40);
                                                                            if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                                                                            {
                                                                              goto LABEL_437;
                                                                            }

LABEL_417:
                                                                            if ((BYTE8(v311) & 0x10) != 0)
                                                                            {
                                                                              v193 = v311;
                                                                              if (v311 < *(&v308 + 1))
                                                                              {
                                                                                *&v311 = *(&v308 + 1);
                                                                                v193 = *(&v308 + 1);
                                                                              }

                                                                              v194 = v308;
                                                                              v191 = v193 - v308;
                                                                              if ((v193 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                              {
                                                                                goto LABEL_631;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if ((BYTE8(v311) & 8) == 0)
                                                                              {
                                                                                v191 = 0;
                                                                                *(&__dst.__r_.__value_.__s + 23) = 0;
                                                                                v192 = &__dst;
                                                                                goto LABEL_433;
                                                                              }

                                                                              v194 = *(&v306 + 1);
                                                                              v191 = *(&v307 + 1) - *(&v306 + 1);
                                                                              if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                              {
LABEL_631:
                                                                                std::string::__throw_length_error[abi:ne200100]();
                                                                              }
                                                                            }

                                                                            if (v191 >= 0x17)
                                                                            {
                                                                              if ((v191 | 7) == 0x17)
                                                                              {
                                                                                v195 = 25;
                                                                              }

                                                                              else
                                                                              {
                                                                                v195 = (v191 | 7) + 1;
                                                                              }

                                                                              v192 = operator new(v195);
                                                                              __dst.__r_.__value_.__r.__words[2] = v195 | 0x8000000000000000;
                                                                              __dst.__r_.__value_.__r.__words[0] = v192;
                                                                              __dst.__r_.__value_.__l.__size_ = v191;
                                                                            }

                                                                            else
                                                                            {
                                                                              *(&__dst.__r_.__value_.__s + 23) = v191;
                                                                              v192 = &__dst;
                                                                              if (!v191)
                                                                              {
                                                                                goto LABEL_433;
                                                                              }
                                                                            }

                                                                            memmove(v192, v194, v191);
LABEL_433:
                                                                            v192->__r_.__value_.__s.__data_[v191] = 0;
                                                                            v196 = &__dst;
                                                                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                            {
                                                                              v196 = __dst.__r_.__value_.__r.__words[0];
                                                                            }

                                                                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                                                            *(buf.__r_.__value_.__r.__words + 4) = v196;
                                                                            _os_log_impl(&dword_296E3E000, v190, OS_LOG_TYPE_DEFAULT, "#I SMS caps: %s", &buf, 0xCu);
                                                                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                            {
                                                                              operator delete(__dst.__r_.__value_.__l.__data_);
                                                                            }

LABEL_437:
                                                                            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__dst);
                                                                            v197 = __dst.__r_.__value_.__l.__size_;
                                                                            __dst.__r_.__value_.__l.__size_ = *(&v304 + 1);
                                                                            *(&v304 + 1) = v197;
                                                                            v198 = (&__dst + *(__dst.__r_.__value_.__r.__words[0] - 24));
                                                                            v199 = (&v304 + *(v304 - 24));
                                                                            std::ios_base::swap(v198, v199);
                                                                            v200 = v198[1].__vftable;
                                                                            v198[1].__vftable = v199[1].__vftable;
                                                                            v199[1].__vftable = v200;
                                                                            LODWORD(v200) = v198[1].__fmtflags_;
                                                                            v198[1].__fmtflags_ = v199[1].__fmtflags_;
                                                                            v199[1].__fmtflags_ = v200;
                                                                            std::stringbuf::swap();
                                                                            __dst.__r_.__value_.__r.__words[0] = v295;
                                                                            *(__dst.__r_.__value_.__r.__words + *(v295 - 24)) = v294;
                                                                            __dst.__r_.__value_.__r.__words[2] = v293;
                                                                            v323 = (MEMORY[0x29EDC9570] + 16);
                                                                            if (v328 < 0)
                                                                            {
                                                                              operator delete(v327);
                                                                            }

                                                                            v323 = (MEMORY[0x29EDC9568] + 16);
                                                                            std::locale::~locale(&aBlock);
                                                                            std::iostream::~basic_iostream();
                                                                            MEMORY[0x29C267970](v329);
                                                                            v201 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                                                            v202 = *v201;
                                                                            v203 = *v201;
                                                                            *(v201 + *(*v201 - 24) + 24) = 2;
                                                                            v204 = (v201 + *(v203 - 24));
                                                                            if (v204[1].__fmtflags_ == -1)
                                                                            {
                                                                              std::ios_base::getloc(v204);
                                                                              v205 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
                                                                              v206 = (v205->__vftable[2].~facet_0)(v205, 32);
                                                                              std::locale::~locale(&__dst);
                                                                              v204[1].__fmtflags_ = v206;
                                                                              v202 = *v201;
                                                                            }

                                                                            v204[1].__fmtflags_ = 48;
                                                                            *(v201 + *(v202 - 24) + 8) = *(v201 + *(v202 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                            v207 = MEMORY[0x29C267790](v201, **(v298 + 120));
                                                                            v208 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v207, " ", 1);
                                                                            *(v208 + *(*v208 - 24) + 8) = *(v208 + *(*v208 - 24) + 8) & 0xFFFFFFB5 | 2;
                                                                            if ((BYTE8(v311) & 0x10) != 0)
                                                                            {
                                                                              v211 = v311;
                                                                              if (v311 < *(&v308 + 1))
                                                                              {
                                                                                *&v311 = *(&v308 + 1);
                                                                                v211 = *(&v308 + 1);
                                                                              }

                                                                              v212 = v308;
                                                                              v209 = v211 - v308;
                                                                              if ((v211 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                              {
                                                                                goto LABEL_468;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if ((BYTE8(v311) & 8) == 0)
                                                                              {
                                                                                v209 = 0;
                                                                                *(&buf.__r_.__value_.__s + 23) = 0;
                                                                                v210 = &buf;
                                                                                goto LABEL_455;
                                                                              }

                                                                              v212 = *(&v306 + 1);
                                                                              v209 = *(&v307 + 1) - *(&v306 + 1);
                                                                              if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                              {
LABEL_468:
                                                                                std::string::__throw_length_error[abi:ne200100]();
                                                                              }
                                                                            }

                                                                            if (v209 >= 0x17)
                                                                            {
                                                                              if ((v209 | 7) == 0x17)
                                                                              {
                                                                                v213 = 25;
                                                                              }

                                                                              else
                                                                              {
                                                                                v213 = (v209 | 7) + 1;
                                                                              }

                                                                              v210 = operator new(v213);
                                                                              buf.__r_.__value_.__l.__size_ = v209;
                                                                              buf.__r_.__value_.__r.__words[2] = v213 | 0x8000000000000000;
                                                                              buf.__r_.__value_.__r.__words[0] = v210;
                                                                            }

                                                                            else
                                                                            {
                                                                              *(&buf.__r_.__value_.__s + 23) = v209;
                                                                              v210 = &buf;
                                                                              if (!v209)
                                                                              {
LABEL_455:
                                                                                v210->__r_.__value_.__s.__data_[v209] = 0;
                                                                                v214 = v314;
                                                                                v215 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                                {
                                                                                  std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                                }

                                                                                else
                                                                                {
                                                                                  __dst = buf;
                                                                                }

                                                                                ctu::cf::insert<__CFString const*,std::string>(v214, *MEMORY[0x29EDC8DE8]);
                                                                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                {
                                                                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                  if ((v215 & 0x80000000) == 0)
                                                                                  {
LABEL_460:
                                                                                    v216 = *(v296 + 40);
                                                                                    if (!os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                                                                                    {
                                                                                      goto LABEL_484;
                                                                                    }

LABEL_464:
                                                                                    if ((BYTE8(v311) & 0x10) != 0)
                                                                                    {
                                                                                      v219 = v311;
                                                                                      if (v311 < *(&v308 + 1))
                                                                                      {
                                                                                        *&v311 = *(&v308 + 1);
                                                                                        v219 = *(&v308 + 1);
                                                                                      }

                                                                                      v220 = v308;
                                                                                      v217 = v219 - v308;
                                                                                      if ((v219 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                                      {
                                                                                        goto LABEL_633;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if ((BYTE8(v311) & 8) == 0)
                                                                                      {
                                                                                        v217 = 0;
                                                                                        *(&__dst.__r_.__value_.__s + 23) = 0;
                                                                                        v218 = &__dst;
                                                                                        goto LABEL_480;
                                                                                      }

                                                                                      v220 = *(&v306 + 1);
                                                                                      v217 = *(&v307 + 1) - *(&v306 + 1);
                                                                                      if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                                      {
LABEL_633:
                                                                                        std::string::__throw_length_error[abi:ne200100]();
                                                                                      }
                                                                                    }

                                                                                    if (v217 >= 0x17)
                                                                                    {
                                                                                      if ((v217 | 7) == 0x17)
                                                                                      {
                                                                                        v221 = 25;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v221 = (v217 | 7) + 1;
                                                                                      }

                                                                                      v218 = operator new(v221);
                                                                                      __dst.__r_.__value_.__r.__words[2] = v221 | 0x8000000000000000;
                                                                                      __dst.__r_.__value_.__r.__words[0] = v218;
                                                                                      __dst.__r_.__value_.__l.__size_ = v217;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(&__dst.__r_.__value_.__s + 23) = v217;
                                                                                      v218 = &__dst;
                                                                                      if (!v217)
                                                                                      {
                                                                                        goto LABEL_480;
                                                                                      }
                                                                                    }

                                                                                    memmove(v218, v220, v217);
LABEL_480:
                                                                                    v218->__r_.__value_.__s.__data_[v217] = 0;
                                                                                    v222 = &__dst;
                                                                                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                                    {
                                                                                      v222 = __dst.__r_.__value_.__r.__words[0];
                                                                                    }

                                                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                                                                    *(buf.__r_.__value_.__r.__words + 4) = v222;
                                                                                    _os_log_impl(&dword_296E3E000, v216, OS_LOG_TYPE_DEFAULT, "#I Auth algo caps: %s", &buf, 0xCu);
                                                                                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                    {
                                                                                      operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                    }

LABEL_484:
                                                                                    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__dst);
                                                                                    v223 = __dst.__r_.__value_.__l.__size_;
                                                                                    __dst.__r_.__value_.__l.__size_ = *(&v304 + 1);
                                                                                    *(&v304 + 1) = v223;
                                                                                    v224 = (&__dst + *(__dst.__r_.__value_.__r.__words[0] - 24));
                                                                                    v225 = (&v304 + *(v304 - 24));
                                                                                    std::ios_base::swap(v224, v225);
                                                                                    v226 = v224[1].__vftable;
                                                                                    v224[1].__vftable = v225[1].__vftable;
                                                                                    v225[1].__vftable = v226;
                                                                                    LODWORD(v226) = v224[1].__fmtflags_;
                                                                                    v224[1].__fmtflags_ = v225[1].__fmtflags_;
                                                                                    v225[1].__fmtflags_ = v226;
                                                                                    std::stringbuf::swap();
                                                                                    __dst.__r_.__value_.__r.__words[0] = v295;
                                                                                    *(__dst.__r_.__value_.__r.__words + *(v295 - 24)) = v294;
                                                                                    __dst.__r_.__value_.__r.__words[2] = v293;
                                                                                    v323 = (MEMORY[0x29EDC9570] + 16);
                                                                                    if (v328 < 0)
                                                                                    {
                                                                                      operator delete(v327);
                                                                                    }

                                                                                    v323 = (MEMORY[0x29EDC9568] + 16);
                                                                                    std::locale::~locale(&aBlock);
                                                                                    std::iostream::~basic_iostream();
                                                                                    MEMORY[0x29C267970](v329);
                                                                                    v227 = 0;
                                                                                    v228 = v298;
                                                                                    do
                                                                                    {
                                                                                      v229 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                                                                      v230 = *v229;
                                                                                      v231 = *v229;
                                                                                      *(v229 + *(*v229 - 24) + 24) = 8;
                                                                                      v232 = (v229 + *(v231 - 24));
                                                                                      if (v232[1].__fmtflags_ == -1)
                                                                                      {
                                                                                        std::ios_base::getloc(v232);
                                                                                        v233 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
                                                                                        v234 = (v233->__vftable[2].~facet_0)(v233, 32);
                                                                                        std::locale::~locale(&__dst);
                                                                                        v232[1].__fmtflags_ = v234;
                                                                                        v230 = *v229;
                                                                                        v228 = v298;
                                                                                      }

                                                                                      v232[1].__fmtflags_ = 48;
                                                                                      *(v229 + *(v230 - 24) + 8) = *(v229 + *(v230 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                                      v235 = MEMORY[0x29C267790](v229, *(*(v228 + 96) + v227));
                                                                                      v236 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v235, " ", 1);
                                                                                      *(v236 + *(*v236 - 24) + 8) = *(v236 + *(*v236 - 24) + 8) & 0xFFFFFFB5 | 2;
                                                                                      v227 += 4;
                                                                                    }

                                                                                    while (v227 != 32);
                                                                                    if ((BYTE8(v311) & 0x10) != 0)
                                                                                    {
                                                                                      v240 = v311;
                                                                                      if (v311 < *(&v308 + 1))
                                                                                      {
                                                                                        *&v311 = *(&v308 + 1);
                                                                                        v240 = *(&v308 + 1);
                                                                                      }

                                                                                      v241 = &v308;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if ((BYTE8(v311) & 8) == 0)
                                                                                      {
                                                                                        v237 = 0;
                                                                                        *(&buf.__r_.__value_.__s + 23) = 0;
                                                                                        v238 = &buf;
                                                                                        v239 = v296;
                                                                                        goto LABEL_506;
                                                                                      }

                                                                                      v241 = &v306 + 1;
                                                                                      v240 = *(&v307 + 1);
                                                                                    }

                                                                                    v239 = v296;
                                                                                    v242 = *v241;
                                                                                    v237 = v240 - *v241;
                                                                                    if (v237 > 0x7FFFFFFFFFFFFFF7)
                                                                                    {
                                                                                      std::string::__throw_length_error[abi:ne200100]();
                                                                                    }

                                                                                    if (v237 >= 0x17)
                                                                                    {
                                                                                      if ((v237 | 7) == 0x17)
                                                                                      {
                                                                                        v243 = 25;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v243 = (v237 | 7) + 1;
                                                                                      }

                                                                                      v238 = operator new(v243);
                                                                                      buf.__r_.__value_.__l.__size_ = v237;
                                                                                      buf.__r_.__value_.__r.__words[2] = v243 | 0x8000000000000000;
                                                                                      buf.__r_.__value_.__r.__words[0] = v238;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(&buf.__r_.__value_.__s + 23) = v240 - *v241;
                                                                                      v238 = &buf;
                                                                                      if (!v237)
                                                                                      {
LABEL_506:
                                                                                        v238->__r_.__value_.__s.__data_[v237] = 0;
                                                                                        v244 = v314;
                                                                                        v245 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                                        {
                                                                                          std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          __dst = buf;
                                                                                        }

                                                                                        ctu::cf::insert<__CFString const*,std::string>(v244, *MEMORY[0x29EDC8D80]);
                                                                                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                        {
                                                                                          operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                          if ((v245 & 0x80000000) == 0)
                                                                                          {
LABEL_511:
                                                                                            v246 = *(v239 + 40);
                                                                                            if (!os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                                                                                            {
                                                                                              goto LABEL_533;
                                                                                            }

LABEL_515:
                                                                                            if ((BYTE8(v311) & 0x10) != 0)
                                                                                            {
                                                                                              v249 = v311;
                                                                                              if (v311 < *(&v308 + 1))
                                                                                              {
                                                                                                *&v311 = *(&v308 + 1);
                                                                                                v249 = *(&v308 + 1);
                                                                                              }

                                                                                              v250 = v308;
                                                                                              v247 = v249 - v308;
                                                                                              if ((v249 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                                              {
                                                                                                goto LABEL_635;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              if ((BYTE8(v311) & 8) == 0)
                                                                                              {
                                                                                                v247 = 0;
                                                                                                *(&__dst.__r_.__value_.__s + 23) = 0;
                                                                                                v248 = &__dst;
                                                                                                goto LABEL_529;
                                                                                              }

                                                                                              v250 = *(&v306 + 1);
                                                                                              v247 = *(&v307 + 1) - *(&v306 + 1);
                                                                                              if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                                              {
LABEL_635:
                                                                                                std::string::__throw_length_error[abi:ne200100]();
                                                                                              }
                                                                                            }

                                                                                            if (v247 >= 0x17)
                                                                                            {
                                                                                              if ((v247 | 7) == 0x17)
                                                                                              {
                                                                                                v251 = 25;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v251 = (v247 | 7) + 1;
                                                                                              }

                                                                                              v248 = operator new(v251);
                                                                                              __dst.__r_.__value_.__r.__words[2] = v251 | 0x8000000000000000;
                                                                                              __dst.__r_.__value_.__r.__words[0] = v248;
                                                                                              __dst.__r_.__value_.__l.__size_ = v247;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(&__dst.__r_.__value_.__s + 23) = v247;
                                                                                              v248 = &__dst;
                                                                                              if (!v247)
                                                                                              {
                                                                                                goto LABEL_529;
                                                                                              }
                                                                                            }

                                                                                            memmove(v248, v250, v247);
LABEL_529:
                                                                                            v248->__r_.__value_.__s.__data_[v247] = 0;
                                                                                            v252 = &__dst;
                                                                                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                                            {
                                                                                              v252 = __dst.__r_.__value_.__r.__words[0];
                                                                                            }

                                                                                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                                                                            *(buf.__r_.__value_.__r.__words + 4) = v252;
                                                                                            _os_log_impl(&dword_296E3E000, v246, OS_LOG_TYPE_DEFAULT, "#I LTE bands: %s", &buf, 0xCu);
                                                                                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                            {
                                                                                              operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                            }

LABEL_533:
                                                                                            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__dst);
                                                                                            v253 = __dst.__r_.__value_.__l.__size_;
                                                                                            __dst.__r_.__value_.__l.__size_ = *(&v304 + 1);
                                                                                            *(&v304 + 1) = v253;
                                                                                            v254 = (&__dst + *(__dst.__r_.__value_.__r.__words[0] - 24));
                                                                                            v255 = (&v304 + *(v304 - 24));
                                                                                            std::ios_base::swap(v254, v255);
                                                                                            v256 = v254[1].__vftable;
                                                                                            v254[1].__vftable = v255[1].__vftable;
                                                                                            v255[1].__vftable = v256;
                                                                                            LODWORD(v256) = v254[1].__fmtflags_;
                                                                                            v254[1].__fmtflags_ = v255[1].__fmtflags_;
                                                                                            v255[1].__fmtflags_ = v256;
                                                                                            std::stringbuf::swap();
                                                                                            __dst.__r_.__value_.__r.__words[0] = v295;
                                                                                            *(__dst.__r_.__value_.__r.__words + *(v295 - 24)) = v294;
                                                                                            __dst.__r_.__value_.__r.__words[2] = v293;
                                                                                            v323 = (MEMORY[0x29EDC9570] + 16);
                                                                                            if (v328 < 0)
                                                                                            {
                                                                                              operator delete(v327);
                                                                                            }

                                                                                            v323 = (MEMORY[0x29EDC9568] + 16);
                                                                                            std::locale::~locale(&aBlock);
                                                                                            std::iostream::~basic_iostream();
                                                                                            MEMORY[0x29C267970](v329);
                                                                                            v257 = 0;
                                                                                            v258 = MEMORY[0x29EDC93D0];
                                                                                            do
                                                                                            {
                                                                                              v259 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                                                                              v260 = *v259;
                                                                                              v261 = *v259;
                                                                                              *(v259 + *(*v259 - 24) + 24) = 8;
                                                                                              v262 = (v259 + *(v261 - 24));
                                                                                              if (v262[1].__fmtflags_ == -1)
                                                                                              {
                                                                                                std::ios_base::getloc(v262);
                                                                                                v263 = std::locale::use_facet(&__dst, v258);
                                                                                                v264 = (v263->__vftable[2].~facet_0)(v263, 32);
                                                                                                std::locale::~locale(&__dst);
                                                                                                v262[1].__fmtflags_ = v264;
                                                                                                v260 = *v259;
                                                                                              }

                                                                                              v262[1].__fmtflags_ = 48;
                                                                                              *(v259 + *(v260 - 24) + 8) = *(v259 + *(v260 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                                              v265 = MEMORY[0x29C267790](v259, *(*(v298 + 104) + v257));
                                                                                              v266 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v265, " ", 1);
                                                                                              *(v266 + *(*v266 - 24) + 8) = *(v266 + *(*v266 - 24) + 8) & 0xFFFFFFB5 | 2;
                                                                                              v257 += 4;
                                                                                            }

                                                                                            while (v257 != 128);
                                                                                            if ((BYTE8(v311) & 0x10) != 0)
                                                                                            {
                                                                                              v269 = v311;
                                                                                              if (v311 < *(&v308 + 1))
                                                                                              {
                                                                                                *&v311 = *(&v308 + 1);
                                                                                                v269 = *(&v308 + 1);
                                                                                              }

                                                                                              v270 = v308;
                                                                                              v267 = v269 - v308;
                                                                                              if ((v269 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                                              {
                                                                                                goto LABEL_566;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              if ((BYTE8(v311) & 8) == 0)
                                                                                              {
                                                                                                v267 = 0;
                                                                                                *(&buf.__r_.__value_.__s + 23) = 0;
                                                                                                v268 = &buf;
                                                                                                goto LABEL_553;
                                                                                              }

                                                                                              v270 = *(&v306 + 1);
                                                                                              v267 = *(&v307 + 1) - *(&v306 + 1);
                                                                                              if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                                              {
LABEL_566:
                                                                                                std::string::__throw_length_error[abi:ne200100]();
                                                                                              }
                                                                                            }

                                                                                            if (v267 >= 0x17)
                                                                                            {
                                                                                              if ((v267 | 7) == 0x17)
                                                                                              {
                                                                                                v271 = 25;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v271 = (v267 | 7) + 1;
                                                                                              }

                                                                                              v268 = operator new(v271);
                                                                                              buf.__r_.__value_.__l.__size_ = v267;
                                                                                              buf.__r_.__value_.__r.__words[2] = v271 | 0x8000000000000000;
                                                                                              buf.__r_.__value_.__r.__words[0] = v268;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(&buf.__r_.__value_.__s + 23) = v267;
                                                                                              v268 = &buf;
                                                                                              if (!v267)
                                                                                              {
LABEL_553:
                                                                                                v268->__r_.__value_.__s.__data_[v267] = 0;
                                                                                                v272 = v314;
                                                                                                v273 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                                                {
                                                                                                  std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  __dst = buf;
                                                                                                }

                                                                                                ctu::cf::insert<__CFString const*,std::string>(v272, *MEMORY[0x29EDC8D40]);
                                                                                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                                {
                                                                                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                                  if ((v273 & 0x80000000) == 0)
                                                                                                  {
LABEL_558:
                                                                                                    v274 = *(v296 + 40);
                                                                                                    if (!os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
                                                                                                    {
                                                                                                      goto LABEL_582;
                                                                                                    }

                                                                                                    goto LABEL_562;
                                                                                                  }
                                                                                                }

                                                                                                else if ((v273 & 0x80000000) == 0)
                                                                                                {
                                                                                                  goto LABEL_558;
                                                                                                }

                                                                                                operator delete(buf.__r_.__value_.__l.__data_);
                                                                                                v274 = *(v296 + 40);
                                                                                                if (!os_log_type_enabled(v274, OS_LOG_TYPE_DEFAULT))
                                                                                                {
LABEL_582:
                                                                                                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                                                                                  {
                                                                                                    operator delete(__p.__r_.__value_.__l.__data_);
                                                                                                  }

                                                                                                  v2 = v292;
                                                                                                  goto LABEL_585;
                                                                                                }

LABEL_562:
                                                                                                if ((BYTE8(v311) & 0x10) != 0)
                                                                                                {
                                                                                                  v277 = v311;
                                                                                                  if (v311 < *(&v308 + 1))
                                                                                                  {
                                                                                                    *&v311 = *(&v308 + 1);
                                                                                                    v277 = *(&v308 + 1);
                                                                                                  }

                                                                                                  v278 = v308;
                                                                                                  v275 = v277 - v308;
                                                                                                  if ((v277 - v308) > 0x7FFFFFFFFFFFFFF7)
                                                                                                  {
                                                                                                    goto LABEL_637;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  if ((BYTE8(v311) & 8) == 0)
                                                                                                  {
                                                                                                    v275 = 0;
                                                                                                    *(&__dst.__r_.__value_.__s + 23) = 0;
                                                                                                    v276 = &__dst;
                                                                                                    goto LABEL_578;
                                                                                                  }

                                                                                                  v278 = *(&v306 + 1);
                                                                                                  v275 = *(&v307 + 1) - *(&v306 + 1);
                                                                                                  if (*(&v307 + 1) - *(&v306 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                                                                                  {
LABEL_637:
                                                                                                    std::string::__throw_length_error[abi:ne200100]();
                                                                                                  }
                                                                                                }

                                                                                                if (v275 >= 0x17)
                                                                                                {
                                                                                                  if ((v275 | 7) == 0x17)
                                                                                                  {
                                                                                                    v279 = 25;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v279 = (v275 | 7) + 1;
                                                                                                  }

                                                                                                  v276 = operator new(v279);
                                                                                                  __dst.__r_.__value_.__r.__words[2] = v279 | 0x8000000000000000;
                                                                                                  __dst.__r_.__value_.__r.__words[0] = v276;
                                                                                                  __dst.__r_.__value_.__l.__size_ = v275;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *(&__dst.__r_.__value_.__s + 23) = v275;
                                                                                                  v276 = &__dst;
                                                                                                  if (!v275)
                                                                                                  {
                                                                                                    goto LABEL_578;
                                                                                                  }
                                                                                                }

                                                                                                memmove(v276, v278, v275);
LABEL_578:
                                                                                                v276->__r_.__value_.__s.__data_[v275] = 0;
                                                                                                v280 = &__dst;
                                                                                                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                                                {
                                                                                                  v280 = __dst.__r_.__value_.__r.__words[0];
                                                                                                }

                                                                                                LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                                                                                *(buf.__r_.__value_.__r.__words + 4) = v280;
                                                                                                _os_log_impl(&dword_296E3E000, v274, OS_LOG_TYPE_DEFAULT, "#I NR bands: %s", &buf, 0xCu);
                                                                                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                                                {
                                                                                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                                                                                }

                                                                                                goto LABEL_582;
                                                                                              }
                                                                                            }

                                                                                            memmove(v268, v270, v267);
                                                                                            goto LABEL_553;
                                                                                          }
                                                                                        }

                                                                                        else if ((v245 & 0x80000000) == 0)
                                                                                        {
                                                                                          goto LABEL_511;
                                                                                        }

                                                                                        operator delete(buf.__r_.__value_.__l.__data_);
                                                                                        v246 = *(v239 + 40);
                                                                                        if (!os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                                                                                        {
                                                                                          goto LABEL_533;
                                                                                        }

                                                                                        goto LABEL_515;
                                                                                      }
                                                                                    }

                                                                                    memmove(v238, v242, v237);
                                                                                    goto LABEL_506;
                                                                                  }
                                                                                }

                                                                                else if ((v215 & 0x80000000) == 0)
                                                                                {
                                                                                  goto LABEL_460;
                                                                                }

                                                                                operator delete(buf.__r_.__value_.__l.__data_);
                                                                                v216 = *(v296 + 40);
                                                                                if (!os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                                                                                {
                                                                                  goto LABEL_484;
                                                                                }

                                                                                goto LABEL_464;
                                                                              }
                                                                            }

                                                                            memmove(v210, v212, v209);
                                                                            goto LABEL_455;
                                                                          }
                                                                        }

                                                                        else if ((v189 & 0x80000000) == 0)
                                                                        {
                                                                          goto LABEL_413;
                                                                        }

                                                                        operator delete(buf.__r_.__value_.__l.__data_);
                                                                        v190 = *(v296 + 40);
                                                                        if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                                                                        {
                                                                          goto LABEL_437;
                                                                        }

                                                                        goto LABEL_417;
                                                                      }
                                                                    }

                                                                    memmove(v184, v186, v183);
                                                                    goto LABEL_408;
                                                                  }
                                                                }

                                                                else if ((v163 & 0x80000000) == 0)
                                                                {
                                                                  goto LABEL_366;
                                                                }

                                                                operator delete(buf.__r_.__value_.__l.__data_);
                                                                v164 = *(v296 + 40);
                                                                if (!os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  goto LABEL_390;
                                                                }

                                                                goto LABEL_370;
                                                              }
                                                            }

                                                            memmove(v158, v160, v157);
                                                            goto LABEL_361;
                                                          }

LABEL_320:
                                                          v136 = *(v135 + 23);
                                                          if ((v136 & 0x8000000000000000) != 0)
                                                          {
                                                            v136 = v135[1];
                                                            if (v136 > 0x7FFFFFFFFFFFFFF7)
                                                            {
                                                              std::string::__throw_length_error[abi:ne200100]();
                                                            }

                                                            v135 = *v135;
                                                            if (v136 < 0x17)
                                                            {
LABEL_322:
                                                              *(&buf.__r_.__value_.__s + 23) = v136;
                                                              v137 = &buf;
                                                              if (!v136)
                                                              {
LABEL_331:
                                                                v137->__r_.__value_.__s.__data_[v136] = 0;
                                                                v139 = v314;
                                                                v140 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                                                                }

                                                                else
                                                                {
                                                                  __dst = buf;
                                                                }

                                                                ctu::cf::insert<__CFString const*,std::string>(v139, *MEMORY[0x29EDC8DB0]);
                                                                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                                                  if ((v140 & 0x80000000) == 0)
                                                                  {
LABEL_336:
                                                                    v141 = *(v100 + 40);
                                                                    if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                                                                    {
                                                                      goto LABEL_343;
                                                                    }

                                                                    goto LABEL_340;
                                                                  }
                                                                }

                                                                else if ((v140 & 0x80000000) == 0)
                                                                {
                                                                  goto LABEL_336;
                                                                }

                                                                operator delete(buf.__r_.__value_.__l.__data_);
                                                                v141 = *(v100 + 40);
                                                                if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  goto LABEL_343;
                                                                }

LABEL_340:
                                                                v142 = *(v298 + 200);
                                                                if (*(v142 + 23) < 0)
                                                                {
                                                                  v142 = *v142;
                                                                }

                                                                LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                                                                *(__dst.__r_.__value_.__r.__words + 4) = v142;
                                                                _os_log_impl(&dword_296E3E000, v141, OS_LOG_TYPE_DEFAULT, "#I Flavor name: %s", &__dst, 0xCu);
                                                                goto LABEL_343;
                                                              }

LABEL_330:
                                                              memmove(v137, v135, v136);
                                                              goto LABEL_331;
                                                            }
                                                          }

                                                          else if (v136 < 0x17)
                                                          {
                                                            goto LABEL_322;
                                                          }

                                                          if ((v136 | 7) == 0x17)
                                                          {
                                                            v138 = 25;
                                                          }

                                                          else
                                                          {
                                                            v138 = (v136 | 7) + 1;
                                                          }

                                                          v137 = operator new(v138);
                                                          buf.__r_.__value_.__l.__size_ = v136;
                                                          buf.__r_.__value_.__r.__words[2] = v138 | 0x8000000000000000;
                                                          buf.__r_.__value_.__r.__words[0] = v137;
                                                          goto LABEL_330;
                                                        }

LABEL_306:
                                                        memmove(v129, v127, v128);
                                                        goto LABEL_307;
                                                      }
                                                    }

                                                    else if (v128 < 0x17)
                                                    {
                                                      goto LABEL_298;
                                                    }

                                                    if ((v128 | 7) == 0x17)
                                                    {
                                                      v130 = 25;
                                                    }

                                                    else
                                                    {
                                                      v130 = (v128 | 7) + 1;
                                                    }

                                                    v129 = operator new(v130);
                                                    buf.__r_.__value_.__l.__size_ = v128;
                                                    buf.__r_.__value_.__r.__words[2] = v130 | 0x8000000000000000;
                                                    buf.__r_.__value_.__r.__words[0] = v129;
                                                    goto LABEL_306;
                                                  }

LABEL_295:
                                                  v127 = *(v298 + 192);
                                                  if (!v127)
                                                  {
                                                    goto LABEL_319;
                                                  }

                                                  goto LABEL_296;
                                                }

LABEL_275:
                                                memmove(v118, v112, v117);
                                                goto LABEL_276;
                                              }
                                            }

                                            else if (v117 < 0x17)
                                            {
                                              goto LABEL_267;
                                            }

                                            if ((v117 | 7) == 0x17)
                                            {
                                              v119 = 25;
                                            }

                                            else
                                            {
                                              v119 = (v117 | 7) + 1;
                                            }

                                            v118 = operator new(v119);
                                            buf.__r_.__value_.__l.__size_ = v117;
                                            buf.__r_.__value_.__r.__words[2] = v119 | 0x8000000000000000;
                                            buf.__r_.__value_.__r.__words[0] = v118;
                                            goto LABEL_275;
                                          }
                                        }

                                        memmove(p_dst, v114, v110);
                                        goto LABEL_260;
                                      }

LABEL_247:
                                      v112 = *(v298 + 184);
                                      if (!v112)
                                      {
                                        goto LABEL_295;
                                      }

                                      goto LABEL_265;
                                    }
                                  }

                                  memmove(v99, v103, v98);
                                  goto LABEL_236;
                                }

                                do
                                {
LABEL_217:
                                  v89 = *v87;
                                  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v305, &unk_296EC917B, 0);
                                  v91 = *v90;
                                  v92 = *v90;
                                  *(v90 + *(*v90 - 24) + 24) = 2;
                                  v93 = (v90 + *(v92 - 24));
                                  if (v93[1].__fmtflags_ == -1)
                                  {
                                    std::ios_base::getloc(v93);
                                    v94 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
                                    v95 = (v94->__vftable[2].~facet_0)(v94, 32);
                                    std::locale::~locale(&__dst);
                                    v93[1].__fmtflags_ = v95;
                                    v91 = *v90;
                                  }

                                  v93[1].__fmtflags_ = 48;
                                  *(v90 + *(v91 - 24) + 8) = *(v90 + *(v91 - 24) + 8) & 0xFFFFFFB5 | 8;
                                  v96 = MEMORY[0x29C267790](v90, v89);
                                  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, " ", 1);
                                  *(v97 + *(*v97 - 24) + 8) = *(v97 + *(*v97 - 24) + 8) & 0xFFFFFFB5 | 2;
                                  ++v87;
                                }

                                while (v87 != v86);
                                goto LABEL_220;
                              }

LABEL_216:
                              v88 = *(v298 + 176);
                              v87 = *v88;
                              v86 = v88[1];
                              if (*v88 == v86)
                              {
                                goto LABEL_220;
                              }

                              goto LABEL_217;
                            }

LABEL_200:
                            v77 = *(v298 + 152);
                            v78 = v77[23];
                            if ((v78 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_192;
                            }

                            goto LABEL_201;
                          }

LABEL_184:
                          memmove(v71, v69, v70);
                          v71->__r_.__value_.__s.__data_[v70] = 0;
                          v72 = v314;
                          v73 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_177;
                          }

                          goto LABEL_185;
                        }
                      }

                      else if (v70 < 0x17)
                      {
                        goto LABEL_175;
                      }

                      if ((v70 | 7) == 0x17)
                      {
                        v74 = 25;
                      }

                      else
                      {
                        v74 = (v70 | 7) + 1;
                      }

                      v71 = operator new(v74);
                      buf.__r_.__value_.__l.__size_ = v70;
                      buf.__r_.__value_.__r.__words[2] = v74 | 0x8000000000000000;
                      buf.__r_.__value_.__r.__words[0] = v71;
                      goto LABEL_184;
                    }

LABEL_155:
                    v64 = *(v63 + 23);
                    if ((v64 & 0x8000000000000000) != 0)
                    {
                      v64 = v63[1];
                      if (v64 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v63 = *v63;
                      if (v64 < 0x17)
                      {
LABEL_157:
                        *(&buf.__r_.__value_.__s + 23) = v64;
                        v65 = &buf;
                        if (!v64)
                        {
                          goto LABEL_166;
                        }

                        goto LABEL_165;
                      }
                    }

                    else if (v64 < 0x17)
                    {
                      goto LABEL_157;
                    }

                    if ((v64 | 7) == 0x17)
                    {
                      v66 = 25;
                    }

                    else
                    {
                      v66 = (v64 | 7) + 1;
                    }

                    v65 = operator new(v66);
                    buf.__r_.__value_.__l.__size_ = v64;
                    buf.__r_.__value_.__r.__words[2] = v66 | 0x8000000000000000;
                    buf.__r_.__value_.__r.__words[0] = v65;
LABEL_165:
                    memmove(v65, v63, v64);
LABEL_166:
                    v65->__r_.__value_.__s.__data_[v64] = 0;
                    v67 = v314;
                    v68 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __dst = buf;
                    }

                    ctu::cf::insert<__CFString const*,std::string>(v67, *MEMORY[0x29EDC8D78]);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    if (v68 < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_173;
                  }

LABEL_154:
                  v63 = *(v298 + 128);
                  if (!v63)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_155;
                }

LABEL_138:
                v55 = *(v298 + 136);
                v56 = v55[23];
                if ((v56 & 0x8000000000000000) != 0)
                {
                  goto LABEL_130;
                }

                goto LABEL_139;
              }

LABEL_122:
              memmove(p_buf, v47, v48);
              p_buf->__r_.__value_.__s.__data_[v48] = 0;
              v50 = v314;
              v51 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_123;
            }

LABEL_118:
            if ((v48 | 7) == 0x17)
            {
              v52 = 25;
            }

            else
            {
              v52 = (v48 | 7) + 1;
            }

            p_buf = operator new(v52);
            buf.__r_.__value_.__l.__size_ = v48;
            buf.__r_.__value_.__r.__words[2] = v52 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
            goto LABEL_122;
          }

          if ((v24 & 0x80000000) != 0)
          {
            if (size > v30)
            {
LABEL_69:
              v31 = v30 + 1;
              v32 = size - (v30 + 1);
              if (v32 >= size)
              {
                v33 = size;
              }

              else
              {
                v33 = v32;
              }

              if (v33 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v33 >= 0x17)
              {
                if ((v33 | 7) == 0x17)
                {
                  v35 = 25;
                }

                else
                {
                  v35 = (v33 | 7) + 1;
                }

                v34 = operator new(v35);
                __dst.__r_.__value_.__r.__words[2] = v35 | 0x8000000000000000;
                __dst.__r_.__value_.__r.__words[0] = v34;
                __dst.__r_.__value_.__l.__size_ = v33;
              }

              else
              {
                *(&__dst.__r_.__value_.__s + 23) = v33;
                v34 = &__dst;
                if (size == v31)
                {
                  goto LABEL_81;
                }
              }

              memmove(v34, v27 + v31, v33);
LABEL_81:
              v34->__r_.__value_.__s.__data_[v33] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p = __dst;
              v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              size = __dst.__r_.__value_.__l.__size_;
              v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              goto LABEL_84;
            }
          }

          else if (v30 < v23)
          {
            v27 = &__p;
            size = v23;
            goto LABEL_69;
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }

LABEL_46:
        memmove(p_p, v16, v17);
        goto LABEL_47;
      }
    }

    else if (v17 < 0x17)
    {
      goto LABEL_38;
    }

    if ((v17 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v17 | 7) + 1;
    }

    p_p = operator new(v19);
    __p.__r_.__value_.__l.__size_ = v17;
    __p.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_46;
  }

LABEL_623:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v290 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v290);
  }

LABEL_625:
  v291 = *MEMORY[0x29EDCA608];
}