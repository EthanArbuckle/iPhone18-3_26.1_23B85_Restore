void sub_296DEFF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = *(v20 - 104);
  if (v22)
  {
    _Block_release(v22);
  }

  MEMORY[0x29C263BF0](&a13);
  radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264040](&a19);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

uint64_t radio::ARICommandDriver::detachRequest(unsigned char,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void radio::ARICommandDriver::prepareRFSelfTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (capabilities::radio::initium(a1))
  {
    v5 = dispatch_group_create();
    v6 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v6);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3802000000;
    v31 = __Block_byref_object_copy__42;
    v32 = __Block_byref_object_dispose__43;
    v33 = 0xAAAAAAAAAAAAAAAALL;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    v7 = *a3;
    if (*a3)
    {
      v7 = _Block_copy(v7);
    }

    v8 = *(a3 + 8);
    v33 = v7;
    v34 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN5radio16ARICommandDriver17prepareRFSelfTestEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
    aBlock[3] = &unk_2A1E0E440;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    aBlock[4] = &buf;
    v9 = _Block_copy(aBlock);
    v10 = *(a1 + 24);
    if (v10)
    {
      dispatch_retain(*(a1 + 24));
    }

    v27 = v9;
    v28 = v10;
    if (v9)
    {
      v11 = _Block_copy(v9);
      v23 = v11;
      v24 = v10;
      if (!v10)
      {
LABEL_15:
        radio::ARICommandDriver::detachRequest(a1, 0, &v23);
        if (v10)
        {
          dispatch_release(v10);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        v12 = *(a1 + 24);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZN5radio16ARICommandDriver17prepareRFSelfTestEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_71;
        block[3] = &unk_29EE5BEB0;
        block[4] = &buf;
        block[5] = a1;
        dispatch_group_notify(v6, v12, block);
        if (v10)
        {
          dispatch_release(v10);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        _Block_object_dispose(&buf, 8);
        if (v34)
        {
          dispatch_release(v34);
        }

        if (v33)
        {
          _Block_release(v33);
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
          dispatch_release(v6);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v11 = 0;
      v23 = 0;
      v24 = v10;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v10);
    goto LABEL_15;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "prepareRFSelfTest";
    _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "%s: not supported!", &buf, 0xCu);
    if (!*a3)
    {
      goto LABEL_55;
    }
  }

  else if (!*a3)
  {
    goto LABEL_55;
  }

  if (!*(a3 + 8))
  {
    goto LABEL_55;
  }

  v20 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  if (*a3)
  {
    v14 = _Block_copy(*a3);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 8);
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 1174405120;
  v30 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v31 = &__block_descriptor_tmp_179;
  if (v14)
  {
    v16 = _Block_copy(v14);
    v17 = cf;
    v32 = v16;
    v33 = cf;
    if (!cf)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v17 = cf;
  v32 = 0;
  v33 = cf;
  if (cf)
  {
LABEL_44:
    CFRetain(v17);
  }

LABEL_45:
  dispatch_async(v15, &buf);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_55:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296DF047C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_group_t group, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN5radio16ARICommandDriver17prepareRFSelfTestEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 40))
    {
      if (*(v4 + 48))
      {
        CFRetain(*a2);
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = _Block_copy(v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = *(v4 + 48);
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v12[3] = &__block_descriptor_tmp_179;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        cf = v2;
        CFRetain(v2);
        dispatch_async(v7, v12);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        CFRelease(v2);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v9 + 48);
        *(v9 + 48) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }
  }
}

void ___ZN5radio16ARICommandDriver17prepareRFSelfTestEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_71(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *(v2 + 48);
    v6 = v4;
    v7 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *(v2 + 48);
  v6 = 0;
  v7 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  radio::ARICommandDriver::detachRequest(v1, 1, &v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void radio::ARICommandDriver::sendRFSelfTestReq(void *a1, const void **a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *a2;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = *a2;
  if (v10)
  {
LABEL_7:
    CFRetain(v10);
  }

LABEL_8:
  if (!*a3)
  {
    v11 = 0;
    v12 = *(a3 + 8);
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = _Block_copy(*a3);
  v12 = *(a3 + 8);
  if (v12)
  {
LABEL_10:
    dispatch_retain(v12);
  }

LABEL_11:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x30uLL);
  *v17 = a1;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v7;
  v17[5] = v9;
  v18 = a1[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void radio::ARICommandDriver::getPkHash(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::ARICommandDriver::getPersParams(capabilities::radio *a1, uint64_t a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if (capabilities::radio::initium(a1))
  {
    v4 = *(a1 + 2);
    if (!v4 || (v5 = *(a1 + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = *a2;
      if (*a2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *a2;
      if (*a2)
      {
LABEL_6:
        v9 = _Block_copy(v8);
        v10 = *(a2 + 8);
        if (!v10)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
LABEL_8:
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a1 + 2);
      if (!v11 || (v12 = *(a1 + 1), (v13 = std::__shared_weak_count::lock(v11)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v14 = v13;
      v15 = operator new(0x28uLL);
      *v15 = a1;
      v15[1] = v9;
      v15[2] = v10;
      v15[3] = v5;
      v15[4] = v7;
      v16 = *(a1 + 3);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = operator new(0x18uLL);
      *v17 = v15;
      v17[1] = v12;
      v17[2] = v14;
      dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getPersParams(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v18 = *MEMORY[0x29EDCA608];

      std::__shared_weak_count::__release_weak(v7);
      return;
    }

LABEL_7:
    dispatch_retain(v10);
    goto LABEL_8;
  }

  v19 = operator new(0x20uLL);
  __p = v19;
  v28 = xmmword_296E243A0;
  strcpy(v19, "Unsupported cmd: getPersParams");
  v20 = *(a1 + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v19;
    _os_log_error_impl(&dword_296D7D000, v20, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (!*a2)
    {
      goto LABEL_41;
    }
  }

  else if (!*a2)
  {
    goto LABEL_41;
  }

  if (*(a2 + 8))
  {
    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v22 = xpc_string_create(p_p);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    v23 = xpc_null_create();
    if (*a2)
    {
      v24 = _Block_copy(*a2);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 8);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    v30 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v31 = &__block_descriptor_tmp_269;
    if (v24)
    {
      aBlock = _Block_copy(v24);
      v33 = v22;
      if (v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      aBlock = 0;
      v33 = v22;
      if (v22)
      {
LABEL_31:
        xpc_retain(v22);
        object = v23;
        if (v23)
        {
LABEL_32:
          xpc_retain(v23);
LABEL_36:
          dispatch_async(v25, &block);
          xpc_release(object);
          object = 0;
          xpc_release(v33);
          v33 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v24)
          {
            _Block_release(v24);
          }

          xpc_release(v23);
          xpc_release(v22);
          goto LABEL_41;
        }

LABEL_35:
        object = xpc_null_create();
        goto LABEL_36;
      }
    }

    v33 = xpc_null_create();
    object = v23;
    if (v23)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_296DF0ED8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::getChipID_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v7 = a1->~__shared_weak_count_0, (v8 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v10;
  v25[3] = v10;
  v25[0] = v10;
  v25[1] = v10;
  AriSdk::ARI_CsiSecGetChipIdReq_SDK::ARI_CsiSecGetChipIdReq_SDK(v25);
  v11 = a1[6].__on_zero_shared;
  if (*a3)
  {
    v12 = _Block_copy(*a3);
    v13 = *(a3 + 8);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v13 = *(a3 + 8);
  if (v13)
  {
LABEL_7:
    dispatch_retain(v13);
  }

LABEL_8:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a2;
  if (*a2)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v15 = operator new(0x48uLL);
  *&v15->__shared_owners_ = 0u;
  p_shared_owners = &v15->__shared_owners_;
  v15->__vftable = &unk_2A1E0F878;
  v15[1].__vftable = a1;
  v15[1].__shared_owners_ = v12;
  v15[1].__shared_weak_owners_ = v13;
  v15[2].__vftable = v7;
  v15[2].__shared_owners_ = v9;
  v15[2].__shared_weak_owners_ = v14;
  object = xpc_null_create();
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver14getChipID_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS4_6objectES8_EEEE3__0vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_299;
  v30 = v15 + 1;
  v31 = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v26;
  v17 = _Block_copy(aBlock);
  v18 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_17:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v19;
  v23[1] = v19;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *(v11 + 2);
  v26 = *(v11 + 1);
  if (!v20)
  {
    v27 = 0;
LABEL_29:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v20);
  if (!v27)
  {
    goto LABEL_29;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  aBlock[0] = v17;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  xpc_release(object);
  MEMORY[0x29C264310](v25);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296DF1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 128);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264310](&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

uint64_t radio::ARICommandDriver::getChipID_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::~$_0(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void radio::ARICommandDriver::getScrtPubK_sync(std::__shared_weak_count_vtbl *a1, xpc_object_t *a2, uint64_t a3)
{
  on_zero_shared = a1->__on_zero_shared;
  if (!on_zero_shared || (v7 = a1->~__shared_weak_count_0, (v8 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v10;
  v25[3] = v10;
  v25[0] = v10;
  v25[1] = v10;
  AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::ARI_CsiSecReadSikPKeyReq_SDK(v25);
  v11 = a1[6].__on_zero_shared;
  if (*a3)
  {
    v12 = _Block_copy(*a3);
    v13 = *(a3 + 8);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v13 = *(a3 + 8);
  if (v13)
  {
LABEL_7:
    dispatch_retain(v13);
  }

LABEL_8:
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a2;
  if (*a2)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v15 = operator new(0x48uLL);
  *&v15->__shared_owners_ = 0u;
  p_shared_owners = &v15->__shared_owners_;
  v15->__vftable = &unk_2A1E0F8F8;
  v15[1].__vftable = a1;
  v15[1].__shared_owners_ = v12;
  v15[1].__shared_weak_owners_ = v13;
  v15[2].__vftable = v7;
  v15[2].__shared_owners_ = v9;
  v15[2].__shared_weak_owners_ = v14;
  object = xpc_null_create();
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver16getScrtPubK_syncEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS4_6objectES8_EEEE3__0vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_303;
  v30 = v15 + 1;
  v31 = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v26;
  v17 = _Block_copy(aBlock);
  v18 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_17:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v19;
  v23[1] = v19;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *(v11 + 2);
  v26 = *(v11 + 1);
  if (!v20)
  {
    v27 = 0;
LABEL_29:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v20);
  if (!v27)
  {
    goto LABEL_29;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  aBlock[0] = v17;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  xpc_release(object);
  MEMORY[0x29C264770](v25);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_296DF17F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v24 = *(v22 - 128);
  if (v24)
  {
    _Block_release(v24);
  }

  MEMORY[0x29C263BF0](&a15);
  radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264770](&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

uint64_t radio::ARICommandDriver::getScrtPubK_sync(xpc::dict,dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::~$_0(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void radio::ARICommandDriver::getFirmwareInfo(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::ARICommandDriver::getManifestStatus(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::ARICommandDriver::getManifest(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio16ARICommandDriver11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_93;
  aBlock[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  v9 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = _Block_copy(aBlock);
  v7 = *(a1 + 24);
  if (v7)
  {
    dispatch_retain(*(a1 + 24));
  }

  v11[0] = v6;
  v11[1] = v7;
  radio::ARICommandDriver::getFirmwareInfo(a1, v11);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    _Block_release(v9);
  }
}

void sub_296DF1D4C(_Unwind_Exception *a1)
{
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v2 - 48);
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v1 + 40);
  _Unwind_Resume(a1);
}

void ___ZN5radio16ARICommandDriver11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke(void *a1, void *a2, void *a3)
{
  v102 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  if (MEMORY[0x29C266420](*a2) != MEMORY[0x29EDCAA40])
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_296D7D000, v7, OS_LOG_TYPE_ERROR, "Failed to get serial number", &block, 2u);
      v8 = *a2;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *a2;
      if (v8)
      {
LABEL_4:
        xpc_retain(v8);
        goto LABEL_55;
      }
    }

    v8 = xpc_null_create();
LABEL_55:
    v39 = xpc_null_create();
    v40 = a1[5];
    if (v40)
    {
      v41 = _Block_copy(v40);
    }

    else
    {
      v41 = 0;
    }

    v42 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v98 = &__block_descriptor_tmp_269;
    if (v41)
    {
      v99 = _Block_copy(v41);
      v100 = v8;
      if (v8)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v99 = 0;
      v100 = v8;
      if (v8)
      {
LABEL_60:
        xpc_retain(v8);
        v101 = v39;
        if (v39)
        {
LABEL_61:
          xpc_retain(v39);
LABEL_65:
          dispatch_async(v42, &block);
          xpc_release(v101);
          v101 = 0;
          xpc_release(v100);
          v100 = 0;
          if (v99)
          {
            _Block_release(v99);
          }

          if (v41)
          {
            _Block_release(v41);
          }

          xpc_release(v39);
          xpc_release(v8);
          goto LABEL_203;
        }

LABEL_64:
        v101 = xpc_null_create();
        goto LABEL_65;
      }
    }

    v100 = xpc_null_create();
    v101 = v39;
    if (v39)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  v9 = *a3;
  if (*a3 && MEMORY[0x29C266420](*a3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
  }

  else
  {
    v9 = xpc_null_create();
  }

  memset(&object[3], 170, 24);
  value = xpc_dictionary_get_value(v9, *MEMORY[0x29EDC8BF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(&block, 0, sizeof(block));
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  memset(object, 170, 24);
  v11 = object;
  ctu::hex(object[3], (object[4] - object[3]));
  v12 = HIBYTE(object[2]);
  v13 = object[0];
  if (SHIBYTE(object[2]) >= 0)
  {
    v14 = (object + HIBYTE(object[2]));
  }

  else
  {
    v14 = (object[0] + object[1]);
  }

  if (SHIBYTE(object[2]) < 0)
  {
    v11 = object[0];
  }

  if (v11 != v14)
  {
    do
    {
      *v11 = __toupper(*v11);
      v11 = (v11 + 1);
    }

    while (v11 != v14);
    v12 = HIBYTE(object[2]);
    v13 = object[0];
  }

  v15 = *MEMORY[0x29EDB8ED8];
  if (v12 >= 0)
  {
    v16 = object;
  }

  else
  {
    v16 = v13;
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v16, 0x600u);
  v94 = 0;
  v95 = v17;
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = Mutable;
  if (!Mutable)
  {
    p_p = operator new(0x38uLL);
    __p = p_p;
    __p_8 = xmmword_296E22D20;
    strcpy(p_p, "Failed to create dictionary for PROV FDR options");
    v24 = *(v6 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_error_impl(&dword_296D7D000, v24, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
      if (__p_8 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }
    }

    v25 = xpc_string_create(p_p);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v26 = xpc_null_create();
    v27 = a1[5];
    if (v27)
    {
      v28 = _Block_copy(v27);
    }

    else
    {
      v28 = 0;
    }

    v38 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v98 = &__block_descriptor_tmp_269;
    if (v28)
    {
      v99 = _Block_copy(v28);
      v100 = v25;
      if (v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v99 = 0;
      v100 = v25;
      if (v25)
      {
LABEL_42:
        xpc_retain(v25);
        v101 = v26;
        if (v26)
        {
LABEL_43:
          xpc_retain(v26);
LABEL_47:
          dispatch_async(v38, &block);
          xpc_release(v101);
          v101 = 0;
          xpc_release(v100);
          v100 = 0;
          if (v99)
          {
            _Block_release(v99);
          }

          if (v28)
          {
            _Block_release(v28);
          }

          xpc_release(v26);
          xpc_release(v25);
          if (SHIBYTE(__p_8) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_196;
        }

LABEL_46:
        v101 = xpc_null_create();
        goto LABEL_47;
      }
    }

    v100 = xpc_null_create();
    v101 = v26;
    if (v26)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v94 = Mutable;
  ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"GetCombined", 0);
  ctu::cf::insert<__CFString const*,BOOL>(v19, @"VerifyData", 0);
  ctu::cf::insert<__CFString const*,BOOL>(v19, @"StripImg4", 1);
  v91 = CFStringCreateWithCString(v15, "bbpv", 0x600u);
  v20 = capabilities::radio::chipID(v91);
  theData = 0;
  v90 = CFStringCreateWithFormat(v15, 0, @"%08X-%@", v20, v17);
  xdict[3] = 0;
  v21 = AMFDRCreateWithOptions();
  if (!v21)
  {
    v29 = operator new(0x30uLL);
    __p = v29;
    __p_8 = xmmword_296E243B0;
    strcpy(v29, "Failed to read provision data with options");
    v30 = *(v6 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v29;
      _os_log_error_impl(&dword_296D7D000, v30, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
      if (__p_8 >= 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p;
      }
    }

    v31 = xpc_string_create(v29);
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    v32 = xpc_null_create();
    v33 = a1[5];
    if (v33)
    {
      v34 = _Block_copy(v33);
    }

    else
    {
      v34 = 0;
    }

    v43 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v98 = &__block_descriptor_tmp_269;
    if (v34)
    {
      v99 = _Block_copy(v34);
      v100 = v31;
      if (v31)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v99 = 0;
      v100 = v31;
      if (v31)
      {
LABEL_73:
        xpc_retain(v31);
        v101 = v32;
        if (v32)
        {
LABEL_74:
          xpc_retain(v32);
LABEL_78:
          dispatch_async(v43, &block);
          xpc_release(v101);
          v101 = 0;
          xpc_release(v100);
          v100 = 0;
          if (v99)
          {
            _Block_release(v99);
          }

          if (v34)
          {
            _Block_release(v34);
          }

          xpc_release(v32);
          xpc_release(v31);
          if (SHIBYTE(__p_8) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_190;
        }

LABEL_77:
        v101 = xpc_null_create();
        goto LABEL_78;
      }
    }

    v100 = xpc_null_create();
    v101 = v32;
    if (v32)
    {
      goto LABEL_74;
    }

    goto LABEL_77;
  }

  v22 = AMFDRDataCopy();
  theData = v22;
  CFRelease(v21);
  __p = 0;
  __p_8 = 0uLL;
  v35 = capabilities::radio::initium(0);
  if (v35)
  {
    goto LABEL_37;
  }

  memset(xdict, 170, 24);
  capabilities::radio::personalizedFirmwarePath(xdict, v35);
  v44 = HIBYTE(xdict[2]);
  if (SHIBYTE(xdict[2]) < 0)
  {
    v44 = xdict[1];
  }

  if (!v44)
  {
    memset(&v87, 170, sizeof(v87));
    std::string::basic_string[abi:ne200100]<0>(&v87, "Failed to load bbfw path");
    v47 = *(v6 + 40);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v83 = &v87;
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v83 = v87.__r_.__value_.__r.__words[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v83;
      _os_log_error_impl(&dword_296D7D000, v47, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v87;
    }

    else
    {
      v48 = v87.__r_.__value_.__r.__words[0];
    }

    v49 = xpc_string_create(v48);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    v50 = xpc_null_create();
    v51 = a1[5];
    if (v51)
    {
      v52 = _Block_copy(v51);
    }

    else
    {
      v52 = 0;
    }

    v78 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v98 = &__block_descriptor_tmp_269;
    if (v52)
    {
      v79 = _Block_copy(v52);
    }

    else
    {
      v79 = 0;
    }

    v99 = v79;
    v100 = v49;
    if (v49)
    {
      xpc_retain(v49);
    }

    else
    {
      v100 = xpc_null_create();
    }

    v101 = v50;
    if (v50)
    {
      xpc_retain(v50);
    }

    else
    {
      v101 = xpc_null_create();
    }

    dispatch_async(v78, &block);
    xpc_release(v101);
    v101 = 0;
    xpc_release(v100);
    v100 = 0;
    if (v99)
    {
      _Block_release(v99);
    }

    if (v52)
    {
      _Block_release(v52);
    }

    goto LABEL_182;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v87, xdict);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&block, &v87, "bbticket.der");
  v45 = support::fs::loadFile(&block, &__p);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_89:
      if (v45)
      {
        goto LABEL_90;
      }

      goto LABEL_109;
    }
  }

  else if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

  operator delete(v87.__r_.__value_.__l.__data_);
  if (!v45)
  {
LABEL_109:
    memset(&v87, 170, sizeof(v87));
    std::string::basic_string[abi:ne200100]<0>(&v87, "Failed to load manifest data");
    v53 = *(v6 + 40);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v84 = &v87;
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v84 = v87.__r_.__value_.__r.__words[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v84;
      _os_log_error_impl(&dword_296D7D000, v53, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v87;
    }

    else
    {
      v54 = v87.__r_.__value_.__r.__words[0];
    }

    v49 = xpc_string_create(v54);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    v50 = xpc_null_create();
    v55 = a1[5];
    if (v55)
    {
      v56 = _Block_copy(v55);
    }

    else
    {
      v56 = 0;
    }

    v80 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v98 = &__block_descriptor_tmp_269;
    if (v56)
    {
      v81 = _Block_copy(v56);
    }

    else
    {
      v81 = 0;
    }

    v99 = v81;
    v100 = v49;
    if (v49)
    {
      xpc_retain(v49);
    }

    else
    {
      v100 = xpc_null_create();
    }

    v101 = v50;
    if (v50)
    {
      xpc_retain(v50);
    }

    else
    {
      v101 = xpc_null_create();
    }

    dispatch_async(v80, &block);
    xpc_release(v101);
    v101 = 0;
    xpc_release(v100);
    v100 = 0;
    if (v99)
    {
      _Block_release(v99);
    }

    if (v56)
    {
      _Block_release(v56);
    }

LABEL_182:
    xpc_release(v50);
    xpc_release(v49);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(xdict[2]) < 0)
    {
      operator delete(xdict[0]);
    }

    goto LABEL_186;
  }

LABEL_90:
  if (SHIBYTE(xdict[2]) < 0)
  {
    operator delete(xdict[0]);
  }

LABEL_37:
  xdict[0] = 0xAAAAAAAAAAAAAAAALL;
  v36 = xpc_dictionary_create(0, 0, 0);
  v37 = v36;
  if (v36)
  {
    xdict[0] = v36;
  }

  else
  {
    v37 = xpc_null_create();
    xdict[0] = v37;
    if (!v37)
    {
      v46 = xpc_null_create();
      v37 = 0;
      goto LABEL_121;
    }
  }

  if (MEMORY[0x29C266420](v37) != MEMORY[0x29EDCAA00])
  {
    v46 = xpc_null_create();
LABEL_121:
    xdict[0] = v46;
    goto LABEL_122;
  }

  xpc_retain(v37);
LABEL_122:
  xpc_release(v37);
  if (capabilities::radio::initium(v57))
  {
    v22 = theData;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v22);
    v60 = xpc_data_create(BytePtr, Length);
    if (!v60)
    {
      v60 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict[0], *MEMORY[0x29EDC8C40], v60);
    v61 = xpc_null_create();
    xpc_release(v60);
    xpc_release(v61);
  }

  else
  {
    v62 = *MEMORY[0x29EDC8C30];
    block.__r_.__value_.__r.__words[0] = xdict;
    block.__r_.__value_.__l.__size_ = v62;
    xpc::dict::object_proxy::operator=(&v86, &block);
    xpc_release(v86);
    v86 = 0;
    v63 = *MEMORY[0x29EDC8C58];
    block.__r_.__value_.__r.__words[0] = xdict;
    block.__r_.__value_.__l.__size_ = v63;
    xpc::dict::object_proxy::operator=(&v85, &block);
    xpc_release(v85);
    v85 = 0;
    v64 = xpc_int64_create(2);
    if (!v64)
    {
      v64 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict[0], *MEMORY[0x29EDC8C50], v64);
    v65 = xpc_null_create();
    xpc_release(v64);
    xpc_release(v65);
    v66 = xpc_data_create(__p, __p_8 - __p);
    if (!v66)
    {
      v66 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict[0], *MEMORY[0x29EDC8BE8], v66);
    v67 = xpc_null_create();
    xpc_release(v66);
    xpc_release(v67);
    v22 = theData;
    v68 = CFDataGetBytePtr(theData);
    v69 = CFDataGetLength(v22);
    v70 = xpc_data_create(v68, v69);
    if (!v70)
    {
      v70 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict[0], *MEMORY[0x29EDC8C40], v70);
    v71 = xpc_null_create();
    xpc_release(v70);
    xpc_release(v71);
  }

  v72 = xpc_null_create();
  v73 = xdict[0];
  if (xdict[0])
  {
    xpc_retain(xdict[0]);
  }

  else
  {
    v73 = xpc_null_create();
  }

  v74 = a1[5];
  if (v74)
  {
    v75 = _Block_copy(v74);
  }

  else
  {
    v75 = 0;
  }

  v76 = a1[6];
  block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  block.__r_.__value_.__l.__size_ = 1174405120;
  block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  v98 = &__block_descriptor_tmp_290;
  if (v75)
  {
    v77 = _Block_copy(v75);
  }

  else
  {
    v77 = 0;
  }

  v99 = v77;
  v100 = v72;
  if (v72)
  {
    xpc_retain(v72);
  }

  else
  {
    v100 = xpc_null_create();
  }

  v101 = v73;
  if (v73)
  {
    xpc_retain(v73);
  }

  else
  {
    v101 = xpc_null_create();
  }

  dispatch_async(v76, &block);
  xpc_release(v101);
  v101 = 0;
  xpc_release(v100);
  v100 = 0;
  if (v99)
  {
    _Block_release(v99);
  }

  if (v75)
  {
    _Block_release(v75);
  }

  xpc_release(v73);
  xpc_release(v72);
  xpc_release(xdict[0]);
LABEL_186:
  if (__p)
  {
    *&__p_8 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_190:
  if (v90)
  {
    CFRelease(v90);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v94)
  {
    CFRelease(v94);
  }

LABEL_196:
  if (v95)
  {
    CFRelease(v95);
  }

  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

  if (object[3])
  {
    object[4] = object[3];
    operator delete(object[3]);
  }

  xpc_release(v9);
LABEL_203:
  v82 = *MEMORY[0x29EDCA608];
}

void sub_296DF2F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, int a43, __int16 a44, char a45, char a46, xpc_object_t object, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *result, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 1;
  if (v3 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (v4 < 0x17)
  {
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 23) = v4;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    v6[1] = v4;
    v6[2] = v7 | 0x8000000000000000;
    *v6 = v8;
    v6 = v8;
  }

  v9 = *a2;
  if (v2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  result = memmove(v6, v10, v3);
LABEL_15:
  *(v6 + v3) = 47;
  return result;
}

void xpc::dict::object_proxy::operator=(void *a1, uint64_t a2)
{
  v4 = xpc_null_create();
  xpc_dictionary_set_value(**a2, *(a2 + 8), v4);
  *a1 = v4;
  v5 = xpc_null_create();
  xpc_release(v5);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
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

void __copy_helper_block_e8_40c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(uint64_t a1)
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

void radio::ARICommandDriver::setRegionCode(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_94;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v12 = v6;
  v13 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v10);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v50 = v3;
  v48[2] = v3;
  v48[3] = v3;
  v48[0] = v3;
  v48[1] = v3;
  AriSdk::ARI_IBISetDeviceRegionCodeReq_SDK::ARI_IBISetDeviceRegionCodeReq_SDK(v48);
  v4 = (a1 + 40);
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    v5 = *(a1 + 63);
    if (!*(a1 + 63) || v5 > 4)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      goto LABEL_69;
    }

LABEL_11:
    LogLevels = operator new(1uLL);
    v41 = v2;
    *LogLevels = v5;
    v8 = __p[0];
    __p[0] = LogLevels;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = 0;
    v10 = *(a1 + 63);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v12 = v9;
    if (*(a1 + 48) > v9)
    {
      do
      {
        v13 = (a1 + 40);
        if ((v10 & 0x80000000) != 0)
        {
          v13 = *v4;
          v15 = __p[1];
          v14 = v50;
          v16 = v50 - __p[1];
          if (v50 - __p[1] < 4)
          {
LABEL_23:
            v17 = *(v13 + v12);
            if (v14 < *(&v50 + 1))
            {
              *v14 = v17;
              v11 = (v14 + 1);
            }

            else
            {
              v18 = *(&v50 + 1) - v15;
              if (2 * (*(&v50 + 1) - v15) <= v16 + 1)
              {
                v19 = v16 + 1;
              }

              else
              {
                v19 = 2 * v18;
              }

              if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v20 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v19;
              }

              v21 = operator new(v20);
              v21[v16] = v17;
              v11 = &v21[v16 + 1];
              LogLevels = memcpy(v21, v15, v16);
              __p[1] = v21;
              *&v50 = v11;
              *(&v50 + 1) = &v21[v20];
              if (v15)
              {
                operator delete(v15);
              }
            }

            *&v50 = v11;
LABEL_17:
            v9 = v12 + 1;
            v10 = *(a1 + 63);
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v15 = __p[1];
          v14 = v50;
          v16 = v50 - __p[1];
          if (v50 - __p[1] < 4)
          {
            goto LABEL_23;
          }
        }

        LogLevels = Ari::GetLogLevels(LogLevels);
        if ((LogLevels & 8) == 0)
        {
          goto LABEL_17;
        }

        OsLog = AriOsa::GetOsLog(LogLevels);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(&v42, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v23);
          v26 = &v42;
          if (v44.__r_.__value_.__s.__data_[7] < 0)
          {
            v26 = v42;
          }

          *buf = 136315650;
          *&buf[4] = "ari";
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 1024;
          LODWORD(v53) = 371;
          _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", buf, 0x1Cu);
          if (v44.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v42);
          }
        }

        AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v23);
        v25 = buf;
        if (buf[23] < 0)
        {
          v25 = *buf;
        }

        LogLevels = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v24, v25, 371);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        operator delete(*buf);
        v9 = v12 + 1;
        v10 = *(a1 + 63);
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

LABEL_18:
        v12 = v9;
      }

      while (v10 > v9);
    }

    v27 = *(v41 + 256);
    v28 = *(a1 + 72);
    v42 = *(a1 + 64);
    v43 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v10) = *(a1 + 63);
    }

    if ((v10 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v44, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *&v44.__r_.__value_.__l.__data_ = *v4;
      v44.__r_.__value_.__r.__words[2] = *(a1 + 56);
    }

    v45 = v41;
    v29 = operator new(0x48uLL);
    v30 = v29;
    *(v29 + 1) = 0;
    v31 = (v29 + 8);
    *(v29 + 2) = 0;
    *v29 = &unk_2A1E0FAA8;
    v32 = v43;
    *(v29 + 3) = v42;
    v33 = v29 + 24;
    *(v29 + 4) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v29 + 40), v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      *(v29 + 40) = v44;
    }

    v30[2].__shared_weak_owners_ = v45;
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEUb7_E4__30vEEN8dispatch5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
    v53 = &__block_descriptor_tmp_318;
    v54 = v33;
    v55 = v30;
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
    aBlock[3] = &unk_29EE5BED8;
    aBlock[4] = buf;
    v34 = _Block_copy(aBlock);
    v35 = v55;
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
      if (atomic_fetch_add(v31, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_58:
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v46[0] = v36;
        v46[1] = v36;
        v47 = 0xAAAAAAAAAAAAAAAALL;
        v37 = *(v27 + 16);
        *buf = *(v27 + 8);
        if (v37)
        {
          *&buf[8] = std::__shared_weak_count::lock(v37);
          if (*&buf[8])
          {
            ice::SendMsgBaseProxy::SendMsgBaseProxy();
            v38 = *&buf[8];
            if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
            }

            aBlock[0] = v34;
            ice::SendMsgBaseProxy::callback();
            if (aBlock[0])
            {
              _Block_release(aBlock[0]);
            }

            MEMORY[0x29C263BF0](v46);
            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

            if (v43)
            {
              std::__shared_weak_count::__release_weak(v43);
            }

            goto LABEL_69;
          }
        }

        else
        {
          *&buf[8] = 0;
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else if (atomic_fetch_add(v31, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_58;
    }

    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    goto LABEL_58;
  }

  if ((*(a1 + 48) - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    LOBYTE(v5) = *(a1 + 48);
    goto LABEL_11;
  }

  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v4 = *v4;
LABEL_9:
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_error_impl(&dword_296D7D000, v6, OS_LOG_TYPE_ERROR, "Invalid region code: %s", buf, 0xCu);
  }

LABEL_69:
  result = MEMORY[0x29C2650F0](v48);
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DF3D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  shared_owners = v27[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v30);
  _ZZZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEUb7_EN4__30D1Ev(&a15);
  MEMORY[0x29C2650F0](&a27);
  _Unwind_Resume(a1);
}

void sub_296DF3E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*(v27 - 137) < 0)
  {
    operator delete(*(v27 - 160));
    MEMORY[0x29C2650F0](&a27);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DF3E48);
}

uint64_t _ZZZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEUb7_EN4__30D1Ev(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v5;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    v5 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v5;
    if (!v5)
    {
      return;
    }
  }

  atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void radio::ARICommandDriver::screenState(radio::ARICommandDriver *this, char a2)
{
  v6 = *(this + 1);
  v4 = *(this + 2);
  v5 = (this + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN5radio16ARICommandDriver11screenStateEb_block_invoke;
  v11[3] = &__block_descriptor_tmp_95;
  v13 = a2;
  v11[4] = this;
  v11[5] = v6;
  v12 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver11screenStateEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  v24 = v3;
  v22[2] = v3;
  v22[3] = v3;
  v22[0] = v3;
  v22[1] = v3;
  AriSdk::ARI_IBINetIceApStatusReq_SDK::ARI_IBINetIceApStatusReq_SDK(v22);
  v4 = *(a1 + 56);
  v5 = operator new(4uLL);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *v5 = v6;
  v7 = __p[0];
  __p[0] = v5;
  if (v7)
  {
    operator delete(v7);
  }

  on_zero_shared = v2[6].__on_zero_shared;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = operator new(0x30uLL);
  v12 = v11;
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0FB28;
  v11[1].__vftable = v2;
  v11[1].__shared_owners_ = v10;
  v11[1].__shared_weak_owners_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_321;
  v30 = &v11[1].__vftable;
  v31 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v26;
  v14 = _Block_copy(aBlock);
  v15 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_14:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v16;
  v20[1] = v16;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(on_zero_shared + 2);
  v26 = *(on_zero_shared + 1);
  if (!v17)
  {
    v27 = 0;
LABEL_27:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v17);
  if (!v27)
  {
    goto LABEL_27;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v20);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return MEMORY[0x29C2647E0](v22);
}

void sub_296DF4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *(v16 - 104);
  if (v18)
  {
    _Block_release(v18);
  }

  MEMORY[0x29C263BF0](&a9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C2647E0](&a15);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void radio::ARICommandDriver::forceNetworkSearch(radio::ARICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "forceNetworkSearch";
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::ARICommandDriver::setBreadMode(radio::ARICommandDriver *this, char a2)
{
  v6 = *(this + 1);
  v4 = *(this + 2);
  v5 = (this + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN5radio16ARICommandDriver12setBreadModeEb_block_invoke;
  v11[3] = &__block_descriptor_tmp_98;
  v13 = a2;
  v11[4] = this;
  v11[5] = v6;
  v12 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver12setBreadModeEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[3] = v3;
  *__p = v3;
  v23[1] = v3;
  v23[2] = v3;
  v23[0] = v3;
  AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::ARI_IBICallPsBreadButterModeReq_SDK(v23);
  v4 = *(a1 + 56);
  v5 = operator new(4uLL);
  *v5 = v4;
  v6 = __p[1];
  __p[1] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  on_zero_shared = v2[6].__on_zero_shared;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 56);
  v11 = operator new(0x38uLL);
  v12 = v11;
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0FBA8;
  v11[1].__vftable = v2;
  v11[1].__shared_owners_ = v9;
  v11[1].__shared_weak_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v11[2].__vftable) = v10;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_324;
  v30 = v11 + 1;
  v31 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v26;
  v14 = _Block_copy(aBlock);
  v15 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

LABEL_13:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (__p[0])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_13;
  }

LABEL_10:
  if (__p[0])
  {
    goto LABEL_15;
  }

LABEL_14:
  v16 = operator new(4uLL);
  *v16 = 0;
  __p[0] = v16;
LABEL_15:
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v17;
  v21[1] = v17;
  v18 = *(on_zero_shared + 2);
  v26 = *(on_zero_shared + 1);
  if (!v18)
  {
    v27 = 0;
LABEL_26:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v18);
  if (!v27)
  {
    goto LABEL_26;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v21);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return MEMORY[0x29C265360](v23);
}

void sub_296DF4914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *(v16 - 104);
  if (v18)
  {
    _Block_release(v18);
  }

  MEMORY[0x29C263BF0](&a9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C265360](&a15);
  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::setButterMode(radio::ARICommandDriver *this, char a2)
{
  v6 = *(this + 1);
  v4 = *(this + 2);
  v5 = (this + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN5radio16ARICommandDriver13setButterModeEb_block_invoke;
  v11[3] = &__block_descriptor_tmp_101_0;
  v13 = a2;
  v11[4] = this;
  v11[5] = v6;
  v12 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5radio16ARICommandDriver13setButterModeEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[3] = v3;
  v24 = v3;
  v23[1] = v3;
  v23[2] = v3;
  v23[0] = v3;
  AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::ARI_IBICallPsBreadButterModeReq_SDK(v23);
  v4 = *(a1 + 56);
  v5 = operator new(4uLL);
  *v5 = v4;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  on_zero_shared = v2[6].__on_zero_shared;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 56);
  v11 = operator new(0x38uLL);
  v12 = v11;
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0FC28;
  v11[1].__vftable = v2;
  v11[1].__shared_owners_ = v9;
  v11[1].__shared_weak_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v11[2].__vftable) = v10;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_331;
  v30 = v11 + 1;
  v31 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v26;
  v14 = _Block_copy(aBlock);
  v15 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

LABEL_13:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (v24)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_14:
  v16 = operator new(4uLL);
  *v16 = 0;
  *&v24 = v16;
LABEL_15:
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v17;
  v21[1] = v17;
  v18 = *(on_zero_shared + 2);
  v26 = *(on_zero_shared + 1);
  if (!v18)
  {
    v27 = 0;
LABEL_26:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v18);
  if (!v27)
  {
    goto LABEL_26;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v21);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return MEMORY[0x29C265360](v23);
}

void sub_296DF4DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *(v16 - 104);
  if (v18)
  {
    _Block_release(v18);
  }

  MEMORY[0x29C263BF0](&a9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C265360](&a15);
  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::setMCC(void *a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (!*a3)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _Block_copy(*a3);
  v7 = *(a3 + 8);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void radio::ARICommandDriver::sendVisitInfo(radio::ARICommandDriver *this, int a2, int a3)
{
  v7 = *(this + 1);
  v5 = *(this + 2);
  v6 = (this + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5radio16ARICommandDriver13sendVisitInfoEjj_block_invoke;
  v13[3] = &__block_descriptor_tmp_104_0;
  v15 = a2;
  v16 = a3;
  v13[4] = this;
  v13[5] = v7;
  v14 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v6, v13);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5radio16ARICommandDriver13sendVisitInfoEjj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  *v26 = v3;
  v23[3] = v3;
  v24 = v3;
  v23[1] = v3;
  v23[2] = v3;
  v23[0] = v3;
  AriSdk::ARI_IBICallPsSignificantLocationReq_SDK::ARI_IBICallPsSignificantLocationReq_SDK(v23);
  v4 = operator new(4uLL);
  *v4 = *(a1 + 56);
  v5 = __p[1];
  __p[1] = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = *(a1 + 60);
  v7 = v26[0];
  v26[0] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  on_zero_shared = v2[6].__on_zero_shared;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = operator new(0x30uLL);
  v12 = v11;
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A1E0FD28;
  v11[1].__vftable = v2;
  v11[1].__shared_owners_ = v10;
  v11[1].__shared_weak_owners_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_339;
  v31 = &v11[1].__vftable;
  v32 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v27;
  v14 = _Block_copy(aBlock);
  v15 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

LABEL_15:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_16:
  v16 = operator new(4uLL);
  *v16 = 0;
  *&v24 = v16;
LABEL_17:
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v17;
  v21[1] = v17;
  v18 = *(on_zero_shared + 2);
  v27 = *(on_zero_shared + 1);
  if (!v18)
  {
    v28 = 0;
LABEL_28:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v18);
  if (!v28)
  {
    goto LABEL_28;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v21);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return MEMORY[0x29C2655F0](v23);
}

void sub_296DF5404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *(v16 - 104);
  if (v18)
  {
    _Block_release(v18);
  }

  MEMORY[0x29C263BF0](&a9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C2655F0](&a15);
  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::sendAccessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio16ARICommandDriver17sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_105_0;
  v7[4] = a1;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio16ARICommandDriver17sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = *(a1[4] + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I sendAccessoryInfo not yet supported for ICE", v8, 2u);
  }

  v3 = a1[5];
  if (v3 && a1[6])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = a1[6];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    v8[3] = &__block_descriptor_tmp_179;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      cf = 0;
      dispatch_async(v6, v8);
      v7 = cf;
      if (!cf)
      {
        goto LABEL_10;
      }
    }

    else
    {
      aBlock = 0;
      cf = 0;
      dispatch_async(v6, v8);
      v7 = cf;
      if (!cf)
      {
LABEL_10:
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v5)
        {
          _Block_release(v5);
        }

        return;
      }
    }

    CFRelease(v7);
    goto LABEL_10;
  }
}

void radio::ARICommandDriver::getRFFEScanData(uint64_t *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (capabilities::radio::initium(a1))
  {
    if (*a2 && *(a2 + 8))
    {
      v5 = a1[1];
      v4 = a1[2];
      if (!v4 || (v6 = std::__shared_weak_count::lock(v4)) == 0)
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v7 = v6;
      p_shared_weak_owners = &v6->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v7);
      }

      v22[0] = MEMORY[0x29EDCA5F8];
      v22[1] = 1174405120;
      v22[2] = ___ZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke;
      v22[3] = &__block_descriptor_tmp_106;
      v22[4] = a1;
      v22[5] = v5;
      v23 = v7;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v9 = *a2;
      if (*a2)
      {
        v9 = _Block_copy(v9);
      }

      v10 = *(a2 + 8);
      aBlock = v9;
      object = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v22);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      std::__shared_weak_count::__release_weak(v7);
    }

    else
    {
      v17 = a1[5];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, "No callback for getting RFFE scan data", &buf, 2u);
      }
    }

    goto LABEL_46;
  }

  v11 = operator new(0x28uLL);
  __p = v11;
  v21 = xmmword_296E243C0;
  strcpy(v11, "Get RFFE Scan Data: not supported!");
  v12 = a1[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_error_impl(&dword_296D7D000, v12, OS_LOG_TYPE_ERROR, "%s: \n", &buf, 0xCu);
    if (!*a2)
    {
      goto LABEL_44;
    }
  }

  else if (!*a2)
  {
    goto LABEL_44;
  }

  if (*(a2 + 8))
  {
    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = xpc_string_create(p_p);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    v15 = xpc_null_create();
    if (*a2)
    {
      v16 = _Block_copy(*a2);
    }

    else
    {
      v16 = 0;
    }

    v18 = *(a2 + 8);
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 1174405120;
    v27 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v28 = &__block_descriptor_tmp_269;
    if (v16)
    {
      v29 = _Block_copy(v16);
      v30 = v14;
      if (v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v29 = 0;
      v30 = v14;
      if (v14)
      {
LABEL_34:
        xpc_retain(v14);
        v31 = v15;
        if (v15)
        {
LABEL_35:
          xpc_retain(v15);
LABEL_39:
          dispatch_async(v18, &buf);
          xpc_release(v31);
          v31 = 0;
          xpc_release(v30);
          v30 = 0;
          if (v29)
          {
            _Block_release(v29);
          }

          if (v16)
          {
            _Block_release(v16);
          }

          xpc_release(v15);
          xpc_release(v14);
          goto LABEL_44;
        }

LABEL_38:
        v31 = xpc_null_create();
        goto LABEL_39;
      }
    }

    v30 = xpc_null_create();
    v31 = v15;
    if (v15)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

LABEL_44:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

LABEL_46:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296DF5A30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v3;
  v22[3] = v3;
  v22[0] = v3;
  v22[1] = v3;
  AriSdk::ARI_IBIGetRFFEScanDataReq_SDK::ARI_IBIGetRFFEScanDataReq_SDK(v22);
  on_zero_shared = v2[6].__on_zero_shared;
  v6 = a1[5];
  v5 = a1[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[8];
    v18 = v8;
    object = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = a1[8];
  v18 = 0;
  object = v9;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0x40uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0FDA8;
  v10[1].__vftable = v2;
  v10[1].__shared_owners_ = v6;
  v10[1].__shared_weak_owners_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v10[2].__vftable = 0;
    v10[2].__shared_owners_ = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10[2].__vftable = _Block_copy(v8);
  v10[2].__shared_owners_ = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 1174405120;
  v25 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEEUb12_E4__36vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v26 = &__block_descriptor_tmp_342;
  v27 = v10 + 1;
  v28 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = &v23;
  v12 = _Block_copy(aBlock);
  v13 = v28;
  if (!v28 || atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_15:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v14;
  v20[1] = v14;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(on_zero_shared + 2);
  v23 = *(on_zero_shared + 1);
  if (!v15)
  {
    v24 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = std::__shared_weak_count::lock(v15);
  if (!v24)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  aBlock[0] = v12;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v20);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return MEMORY[0x29C264960](v22);
}

void sub_296DF5E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEEUb12_EN4__36D1Ev(va);
  MEMORY[0x29C264960](va2);
  _Unwind_Resume(a1);
}

void sub_296DF5E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEEUb12_EN4__36D1Ev(&a10);
  MEMORY[0x29C264960](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEEUb12_EN4__36D1Ev(void *a1)
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

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void radio::ARICommandDriver::enableResetSPMIEvent(radio::ARICommandDriver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_296D7D000, v1, OS_LOG_TYPE_ERROR, "Enable resetting SPMI: not supported!", v2, 2u);
  }
}

void radio::ARICommandDriver::getSIMSummary(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getSIMSummary";
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
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
  v12 = &__block_descriptor_tmp_189;
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

void sub_296DF6224(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DF6260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DF6250);
}

void radio::ARICommandDriver::getSIMPresence(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getSIMPresence";
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
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
  v12 = &__block_descriptor_tmp_189;
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

void sub_296DF6478(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DF64B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DF64A4);
}

void *boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E0E830;
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
  *result = &unk_2A1E0E8A0;
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
  *a1 = &unk_2A1E0E830;
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

void boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E0E8A0;
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

atomic_ullong *std::shared_ptr<radio::ARICommandDriver>::shared_ptr[abi:ne200100]<radio::ARICommandDriver,std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0E910;
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

void sub_296DF6970(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver*)#1}::operator() const(radio::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::ARICommandDriver *,std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver *)#1},std::allocator<radio::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::ARICommandDriver *,std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver *)#1},std::allocator<radio::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver*)#1}::operator() const(radio::ARICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver4initEvEUb_E3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *v2;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[2] = v4;
    v13[3] = v4;
    v13[0] = v4;
    v13[1] = v4;
    AriSdk::ARI_CsiModeSetIndCb_SDK::ARI_CsiModeSetIndCb_SDK(v13, a2);
    v5 = AriSdk::ARI_CsiModeSetIndCb_SDK::unpack(v13);
    if (v5)
    {
      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = asString();
        *buf = 136315394;
        *&buf[4] = v7;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, "#N Could not unpack CsiModeSetIndCb: %s (%d)", buf, 0x12u);
      }
    }

    else
    {
      v8 = *(v14 + 4);
      radio::OpMode::convertMode(*(v3 + 240));
      v9 = *(v3 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v3 + 240);
        radio::OpMode::modeToString();
        v11 = v18 >= 0 ? buf : *buf;
        *v19 = 136446210;
        v20 = v11;
        _os_log_impl(&dword_296D7D000, v9, OS_LOG_TYPE_DEFAULT, "#I Got operating mode indication from BB: %{public}s", v19, 0xCu);
        if (v18 < 0)
        {
          operator delete(*buf);
        }
      }

      radio::CommandDriver::handleOperatingModeChanged_sync();
      *(v3 + 272) = 1;
    }

    result = MEMORY[0x29C263FC0](v13);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c69_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver4initEvEUb_E3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c69_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver4initEvEUb_E3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver4initEvEUb_E3__0NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0E990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
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

void sub_296DF6E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296DF6E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296DF6F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296DF78AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296DF78C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E0EA40;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E0E9E0;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296DF8154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296DF8B44(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
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

void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0EA98;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5radio13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5radio13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1(uint64_t a1)
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

void sub_296DF8E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk27ARI_CsiBspShutdownRspCb_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    AriSdk::ARI_CsiBspShutdownRspCb_SDK::ARI_CsiBspShutdownRspCb_SDK(v9, a2);
    if (!*(v2 + 24) || !*(v2 + 32))
    {
      return MEMORY[0x29C264450](v9);
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    checkError(v9, v2, &cf);
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = _Block_copy(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 32);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    block[3] = &__block_descriptor_tmp_179;
    if (v6)
    {
      aBlock = _Block_copy(v6);
      v12 = v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      aBlock = 0;
      v12 = v4;
      if (!v4)
      {
LABEL_14:
        dispatch_async(v7, block);
        if (v12)
        {
          CFRelease(v12);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        return MEMORY[0x29C264450](v9);
      }
    }

    CFRetain(v4);
    goto LABEL_14;
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c260_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk27ARI_CsiBspShutdownRspCb_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c260_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk27ARI_CsiBspShutdownRspCb_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

uint64_t utils::sendMsg<AriSdk::ARI_CsiBspShutdownRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v7 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
  {
    cf = v4;
    CFRetain(v4);
  }

  else
  {
    cf = 0;
  }

  (*(v3 + 16))(v3, &v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296DF92AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DF92C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb0_E3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_51;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_51;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v36 = v6;
  if (!v6)
  {
    goto LABEL_51;
  }

  v7 = v6;
  if (*v2)
  {
    v34 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33[2] = v8;
    v33[3] = v8;
    v33[0] = v8;
    v33[1] = v8;
    AriSdk::ARI_CsiGetSystemTimeResp_SDK::ARI_CsiGetSystemTimeResp_SDK(v33, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block[23] = 21;
    strcpy(block, "getting baseband time");
    checkError(v33, block, &cf);
    if ((block[23] & 0x80000000) != 0)
    {
      operator delete(*block);
    }

    v31 = 0;
    v9 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = Mutable;
    if (Mutable)
    {
      v31 = Mutable;
    }

    if (cf)
    {
LABEL_10:
      if (!v2[2] || !v2[3])
      {
LABEL_44:
        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C2645B0](v33);
        goto LABEL_49;
      }

      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v11)
      {
        CFRetain(v11);
      }

      v13 = v2[2];
      if (v13)
      {
        v14 = _Block_copy(v13);
      }

      else
      {
        v14 = 0;
      }

      v17 = v2[3];
      *block = MEMORY[0x29EDCA5F8];
      *&block[8] = 1174405120;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
      *&block[24] = &__block_descriptor_tmp_182;
      if (v14)
      {
        *&v43 = _Block_copy(v14);
        *(&v43 + 1) = v12;
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *&v43 = 0;
        *(&v43 + 1) = v12;
        if (!v12)
        {
LABEL_30:
          *&v44 = v11;
          if (v11)
          {
            CFRetain(v11);
          }

          dispatch_async(v17, block);
          if (v44)
          {
            CFRelease(v44);
          }

          if (*(&v43 + 1))
          {
            CFRelease(*(&v43 + 1));
          }

          if (v43)
          {
            _Block_release(v43);
          }

          if (v14)
          {
            _Block_release(v14);
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_44;
        }
      }

      CFRetain(v12);
      goto LABEL_30;
    }

    if (AriSdk::ARI_CsiGetSystemTimeResp_SDK::unpack(v33))
    {
      *__str = operator new(0x20uLL);
      *&__str[8] = xmmword_296E243D0;
      strcpy(*__str, "Error response from ARI or BB");
      CreateError();
      v15 = cf;
      cf = *block;
      *block = 0;
      if (v15)
      {
        CFRelease(v15);
        if (*block)
        {
          CFRelease(*block);
        }
      }

      if ((__str[23] & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      v16 = *__str;
LABEL_73:
      operator delete(v16);
      goto LABEL_10;
    }

    v19 = *v34;
    v20 = *v34 / 0x3E8uLL;
    memset(&v30, 0, sizeof(v30));
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v21;
    v44 = v21;
    *block = v21;
    *&block[16] = v21;
    v40 = v21;
    v41 = v21;
    *__str = v21;
    *&__str[16] = v21;
    v29 = v20;
    v22 = localtime(&v29);
    strftime(block, 0x40uLL, "%Y-%m-%d %H:%M:%S", v22);
    v23 = 1000 * (v19 - 1000 * v20);
    snprintf(__str, 0x40uLL, "%s.%06d", block, v23);
    std::string::__assign_external(&v30, __str);
    v24 = *MEMORY[0x29EDC8BE0];
    v38 = v24;
    if (v24)
    {
      CFRetain(v24);
    }

    valuePtr.__r_.__value_.__r.__words[0] = v20;
    v25 = CFNumberCreate(v9, kCFNumberLongLongType, &valuePtr);
    v26 = v25;
    v37 = v25;
    if (v24 && v25)
    {
      CFDictionaryAddValue(v11, v24, v25);
    }

    else if (!v25)
    {
      goto LABEL_59;
    }

    CFRelease(v26);
LABEL_59:
    if (v24)
    {
      CFRelease(v24);
    }

    ctu::cf::insert<__CFString const*,unsigned int>(v11, *MEMORY[0x29EDC8C20], v23, v9);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&valuePtr, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      valuePtr = v30;
    }

    ctu::cf::insert<__CFString const*,std::string>(v11, *MEMORY[0x29EDC8BD0]);
    if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(valuePtr.__r_.__value_.__l.__data_);
      v27 = *(v4 + 40);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_66:
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_72:
        v16 = v30.__r_.__value_.__r.__words[0];
        goto LABEL_73;
      }
    }

    else
    {
      v27 = *(v4 + 40);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }
    }

    v28 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v30.__r_.__value_.__r.__words[0];
    }

    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 136315138;
    *(valuePtr.__r_.__value_.__r.__words + 4) = v28;
    _os_log_impl(&dword_296D7D000, v27, OS_LOG_TYPE_DEFAULT, "#I Baseband time: %s", &valuePtr, 0xCu);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_49:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_51:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296DF98FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, const void *a34, const void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a34);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a35);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a19);
  MEMORY[0x29C2645B0](&a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb0_E3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb0_E3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb0_E3__1NS_9allocatorISG_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb0_E3__1NS_9allocatorISG_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

const void **ctu::cf::CFSharedRef<__CFError>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v3 = *a1;
    *a1 = 0;
    *a1 = *a2;
    *a2 = 0;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb1_E3__2vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_53;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_53;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v34 = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

  if (!*v2)
  {
    goto LABEL_51;
  }

  __src = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v7;
  v31[3] = v7;
  v31[0] = v7;
  v31[1] = v7;
  AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(v31, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p[0] = operator new(0x28uLL);
  *&__p[1] = xmmword_296E1FAB0;
  strcpy(__p[0], "getting baseband firmware version");
  checkError(v31, __p, &cf);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *v29 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    *v29 = Mutable;
  }

  if (cf)
  {
    goto LABEL_18;
  }

  if (AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::unpack(v31) || *(__src + 129))
  {
    buf.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&buf.__r_.__value_.__r.__words[1] = xmmword_296E243D0;
    strcpy(buf.__r_.__value_.__l.__data_, "Error response from ARI or BB");
    CreateError();
    v10 = cf;
    cf = __p[0];
    __p[0] = 0;
    if (v10)
    {
      CFRelease(v10);
      if (__p[0])
      {
        CFRelease(__p[0]);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = buf.__r_.__value_.__r.__words[0];
LABEL_17:
      operator delete(v11);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  memcpy(__p, __src, sizeof(__p));
  v18 = __p[64];
  if (LODWORD(__p[64]) >= 0x200)
  {
    v19 = 512;
  }

  else
  {
    v19 = LODWORD(__p[64]);
  }

  LODWORD(__p[64]) = v19;
  memset(&v28, 170, sizeof(v28));
  if (v18 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v19 | 7) + 1;
    }

    v20 = operator new(v21);
    v28.__r_.__value_.__l.__size_ = v19;
    v28.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = v20;
    goto LABEL_64;
  }

  *(&v28.__r_.__value_.__s + 23) = v19;
  v20 = &v28;
  if (v18)
  {
LABEL_64:
    memcpy(v20, __p, v19);
  }

  v20->__r_.__value_.__s.__data_[v19] = 0;
  v22 = *(v4 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v28.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v23;
    _os_log_impl(&dword_296D7D000, v22, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", &buf, 0xCu);
  }

  LOBYTE(v24) = *(&v28.__r_.__value_.__s + 23);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v26 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
    v27 = memchr(&v26->__r_.__value_.__l.__data_ + 1, 45, size - 1);
    if (v27)
    {
      if (v27 - v26 != -1)
      {
        MEMORY[0x29C265C60](&buf, &v28, v27 - v26 + 1, size, &v35);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v28 = buf;
        v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }
    }
  }

  v9 = *v29;
  if ((v24 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&buf, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v28;
  }

  ctu::cf::insert<__CFString const*,std::string>(v9, *MEMORY[0x29EDC8D98]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_17;
  }

LABEL_18:
  if (!v2[2] || !v2[3])
  {
    goto LABEL_46;
  }

  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v9)
  {
    CFRetain(v9);
  }

  v13 = v2[2];
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = v2[3];
  __p[0] = MEMORY[0x29EDCA5F8];
  __p[1] = 1174405120;
  __p[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
  __p[3] = &__block_descriptor_tmp_182;
  if (v14)
  {
    __p[4] = _Block_copy(v14);
    __p[5] = v12;
    if (!v12)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  __p[4] = 0;
  __p[5] = v12;
  if (v12)
  {
LABEL_31:
    CFRetain(v12);
  }

LABEL_32:
  __p[6] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  dispatch_async(v15, __p);
  if (__p[6])
  {
    CFRelease(__p[6]);
  }

  if (__p[5])
  {
    CFRelease(__p[5]);
  }

  if (__p[4])
  {
    _Block_release(__p[4]);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_46:
  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  MEMORY[0x29C2647A0](v31);
  v6 = v34;
  if (v34)
  {
LABEL_51:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_53:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296DFA100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C2647A0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c185_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb1_E3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c185_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb1_E3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb1_E3__2NS_9allocatorISG_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb1_E3__2NS_9allocatorISG_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb2_E3__3vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v21 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
LABEL_51:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v18[3] = v7;
        v19 = v7;
        v18[1] = v7;
        v18[2] = v7;
        v18[0] = v7;
        AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::ARI_CsiBspGetCalibrationStatusRspCb_SDK(v18, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block = operator new(0x20uLL);
        v23 = xmmword_296E20BE0;
        strcpy(block, "getting calibration status");
        checkError(v18, &block, &cf);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(block);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (cf)
        {
LABEL_18:
          if (!v2[2] || !v2[3])
          {
LABEL_46:
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C265590](v18);
            goto LABEL_51;
          }

          v12 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (Mutable)
          {
            CFRetain(Mutable);
          }

          v13 = v2[2];
          if (v13)
          {
            v14 = _Block_copy(v13);
          }

          else
          {
            v14 = 0;
          }

          v15 = v2[3];
          block = MEMORY[0x29EDCA5F8];
          *&v23 = 1174405120;
          *(&v23 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
          v24 = &__block_descriptor_tmp_182;
          if (v14)
          {
            v25 = _Block_copy(v14);
            v26 = v12;
            if (!v12)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v25 = 0;
            v26 = v12;
            if (!v12)
            {
LABEL_32:
              v27 = Mutable;
              if (Mutable)
              {
                CFRetain(Mutable);
              }

              dispatch_async(v15, &block);
              if (v27)
              {
                CFRelease(v27);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              if (v25)
              {
                _Block_release(v25);
              }

              if (v14)
              {
                _Block_release(v14);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              goto LABEL_46;
            }
          }

          CFRetain(v12);
          goto LABEL_32;
        }

        if (AriSdk::ARI_CsiBspGetCalibrationStatusRspCb_SDK::unpack(v18))
        {
          __p = operator new(0x20uLL);
          strcpy(__p, "Error response from baseband");
          CreateError();
          v9 = cf;
          cf = block;
          block = 0;
          if (!v9)
          {
            goto LABEL_16;
          }

          CFRelease(v9);
          v10 = block;
          if (!block)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (!*v19)
          {
            ctu::cf::insert<__CFString const*,BOOL>(Mutable, *MEMORY[0x29EDC8F78], **(&v19 + 1) == 1);
            goto LABEL_18;
          }

          __p = operator new(0x38uLL);
          strcpy(__p, "failed response in retrieving calibration status");
          CreateError();
          v11 = cf;
          cf = block;
          block = 0;
          if (!v11)
          {
            goto LABEL_16;
          }

          CFRelease(v11);
          v10 = block;
          if (!block)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v10);
LABEL_16:
        operator delete(__p);
        goto LABEL_18;
      }
    }
  }
}

void sub_296DFA734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C265590](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 120);
  _Unwind_Resume(a1);
}

void sub_296DFA7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 - 81) < 0)
  {
    operator delete(*(v7 - 104));
    MEMORY[0x29C265590](va);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v7 - 120);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C265590](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v7 - 120);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c187_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb2_E3__3EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c187_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb2_E3__3EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb2_E3__3NS_9allocatorISG_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0ED18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb2_E3__3NS_9allocatorISG_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb3_E3__4vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_60;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_60;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v38 = v5;
  if (!v5)
  {
    goto LABEL_60;
  }

  v6 = v5;
  if (*v2)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35[3] = v7;
    v36 = v7;
    v35[1] = v7;
    v35[2] = v7;
    v35[0] = v7;
    AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(v35, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_296E22D90;
    strcpy(*__p, "get baseband wake reason");
    checkError(v35, __p, &cf);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v33 = 0;
    v8 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      v33 = Mutable;
    }

    if (!cf)
    {
      if (AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::unpack(v35))
      {
        v31 = operator new(0x38uLL);
        v32 = xmmword_296E22DA0;
        strcpy(v31, "Failed to get baseband wake reason (unpack error)");
        CreateError();
        v13 = cf;
        cf = *__p;
        *__p = 0;
        if (v13)
        {
          CFRelease(v13);
          v14 = *__p;
          if (*__p)
          {
LABEL_17:
            CFRelease(v14);
          }
        }

LABEL_18:
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }

        goto LABEL_25;
      }

      if (*v36)
      {
        v31 = operator new(0x38uLL);
        v32 = xmmword_296E22DA0;
        strcpy(v31, "Failed to get baseband wake reason (result error)");
        CreateError();
        v15 = cf;
        cf = *__p;
        *__p = 0;
        if (v15)
        {
          CFRelease(v15);
          v14 = *__p;
          if (*__p)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_18;
      }

      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v45 + 12) = v16;
      v44 = v16;
      v45[0] = v16;
      v42 = v16;
      v43 = v16;
      aBlock = v16;
      v41 = v16;
      *__p = v16;
      *&__p[16] = v16;
      *__p = **(&v36 + 1);
      v17 = *(*(&v36 + 1) + 64);
      v19 = *(*(&v36 + 1) + 16);
      v18 = *(*(&v36 + 1) + 32);
      v41 = *(*(&v36 + 1) + 48);
      v42 = v17;
      *&__p[16] = v19;
      aBlock = v18;
      v21 = *(*(&v36 + 1) + 96);
      v20 = *(*(&v36 + 1) + 112);
      v22 = *(*(&v36 + 1) + 80);
      *(v45 + 12) = *(*(&v36 + 1) + 124);
      v44 = v21;
      v45[0] = v20;
      v43 = v22;
      ctu::cf::insert<char const*,unsigned int>(v10, *__p, v8, v11, v12);
      if (*&__p[8])
      {
        if (*&__p[8] >= 0x80u)
        {
          v23 = 128;
        }

        else
        {
          v23 = *&__p[8];
        }

        v31 = CFDataCreate(v8, (__p | 0xC), v23);
        ctu::cf::insert<char const*,__CFData const*>(v10, v31, v8, v24, v25);
        ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v31);
      }
    }

LABEL_25:
    if (!v2[2] || !v2[3])
    {
LABEL_53:
      if (v10)
      {
        CFRelease(v10);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      MEMORY[0x29C264D10](v35);
      goto LABEL_58;
    }

    v26 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v10)
    {
      CFRetain(v10);
    }

    v27 = v2[2];
    if (v27)
    {
      v28 = _Block_copy(v27);
    }

    else
    {
      v28 = 0;
    }

    v29 = v2[3];
    *__p = MEMORY[0x29EDCA5F8];
    *&__p[8] = 1174405120;
    *&__p[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    *&__p[24] = &__block_descriptor_tmp_182;
    if (v28)
    {
      *&aBlock = _Block_copy(v28);
      *(&aBlock + 1) = v26;
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = v26;
      if (!v26)
      {
LABEL_39:
        *&v41 = v10;
        if (v10)
        {
          CFRetain(v10);
        }

        dispatch_async(v29, __p);
        if (v41)
        {
          CFRelease(v41);
        }

        if (*(&aBlock + 1))
        {
          CFRelease(*(&aBlock + 1));
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        goto LABEL_53;
      }
    }

    CFRetain(v26);
    goto LABEL_39;
  }

LABEL_58:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_60:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296DFAE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&__p);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264D10](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c178_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb3_E3__4EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c178_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb3_E3__4EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb3_E3__4NS_9allocatorISG_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0ED98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb3_E3__4NS_9allocatorISG_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ctu::cf::insert<char const*,unsigned int>(__CFDictionary *a1, unsigned int a2, const __CFAllocator *a3, uint64_t a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, "kKeyBasebandWakeChannel", 0x8000100, a3, a5);
  v8 = valuePtr;
  valuePtr = a2;
  v9 = CFNumberCreate(a3, kCFNumberLongLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296DFB104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296DFB128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<char const*,__CFData const*>(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  cf = 0;
  ctu::cf::convert_copy(&cf, "kKeyBasebandWakeData", 0x8000100, a3, a5);
  v7 = cf;
  cf = a2;
  if (a2)
  {
    CFRetain(a2);
    if (v7)
    {
      CFDictionaryAddValue(a1, v7, a2);
    }

    CFRelease(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296DFB1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16setOperatingModeEyNS2_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v16 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
LABEL_30:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        v14 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v13[2] = v7;
        v13[3] = v7;
        v13[0] = v7;
        v13[1] = v7;
        AriSdk::ARI_CsiModeSetRespCb_SDK::ARI_CsiModeSetRespCb_SDK(v13, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block = operator new(0x20uLL);
        v18 = xmmword_296E22D30;
        strcpy(block, "setting baseband operating mode");
        checkError(v13, &block, &cf);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(block);
          v8 = v2[2];
          if (!v8)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v8 = v2[2];
          if (!v8)
          {
            goto LABEL_27;
          }
        }

        if (v2[3])
        {
          v9 = cf;
          if (cf && (CFRetain(cf), (v8 = v2[2]) == 0))
          {
            v10 = 0;
          }

          else
          {
            v10 = _Block_copy(v8);
          }

          v11 = v2[3];
          block = MEMORY[0x29EDCA5F8];
          *&v18 = 1174405120;
          *(&v18 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
          v19 = &__block_descriptor_tmp_179;
          if (v10)
          {
            v20 = _Block_copy(v10);
            v21 = v9;
            if (!v9)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v20 = 0;
            v21 = v9;
            if (!v9)
            {
LABEL_19:
              dispatch_async(v11, &block);
              if (v21)
              {
                CFRelease(v21);
              }

              if (v20)
              {
                _Block_release(v20);
              }

              if (v10)
              {
                _Block_release(v10);
              }

              if (v9)
              {
                CFRelease(v9);
              }

              goto LABEL_27;
            }
          }

          CFRetain(v9);
          goto LABEL_19;
        }

LABEL_27:
        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C264100](v13);
        goto LABEL_30;
      }
    }
  }
}

void sub_296DFB460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  MEMORY[0x29C264100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296DFB494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c178_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16setOperatingModeEyNS1_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c178_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16setOperatingModeEyNS1_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver16setOperatingModeEyNS1_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5NS_9allocatorISE_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver16setOperatingModeEyNS1_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__5NS_9allocatorISE_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEEUb5_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_49;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_49;
  }

  v4 = v2[4];
  v6 = std::__shared_weak_count::lock(v3);
  v26 = v6;
  if (!v6)
  {
    goto LABEL_49;
  }

  v7 = v6;
  if (*v2)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[2] = v8;
    v23[3] = v8;
    v23[0] = v8;
    v23[1] = v8;
    AriSdk::ARI_CsiModeGetRspCb_SDK::ARI_CsiModeGetRspCb_SDK(v23, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    __p = operator new(0x20uLL);
    v28 = xmmword_296E22D30;
    strcpy(__p, "getting baseband operating mode");
    checkError(v23, &__p, &cf);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    v9 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!cf)
    {
      if (AriSdk::ARI_CsiModeGetRspCb_SDK::unpack(v23))
      {
        *buf = operator new(0x20uLL);
        *&buf[8] = xmmword_296E243D0;
        strcpy(*buf, "Error response from ARI or BB");
        CreateError();
        v14 = cf;
        cf = __p;
        __p = 0;
        if (v14)
        {
          CFRelease(v14);
          if (__p)
          {
            CFRelease(__p);
          }
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v17 = *(v24 + 8);
        v18 = radio::OpMode::convertMode(*(v4 + 240));
        ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8E10], v18, v9);
        v19 = *(v4 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v4 + 240);
          radio::OpMode::modeToString();
          v21 = v28 >= 0 ? &__p : __p;
          *buf = 136315138;
          *&buf[4] = v21;
          _os_log_impl(&dword_296D7D000, v19, OS_LOG_TYPE_DEFAULT, "#I Got operating mode: %s", buf, 0xCu);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p);
          }
        }

        if ((*(v4 + 272) & 1) == 0)
        {
          radio::CommandDriver::handleOperatingModeChanged_sync();
          *(v4 + 272) = 1;
        }
      }
    }

    if (!v2[2] || !v2[3])
    {
      goto LABEL_42;
    }

    v11 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (Mutable)
    {
      CFRetain(Mutable);
    }

    v12 = v2[2];
    if (v12)
    {
      v13 = _Block_copy(v12);
    }

    else
    {
      v13 = 0;
    }

    v15 = v2[3];
    __p = MEMORY[0x29EDCA5F8];
    *&v28 = 1174405120;
    *(&v28 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    v29 = &__block_descriptor_tmp_182;
    if (v13)
    {
      aBlock = _Block_copy(v13);
      v31 = v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    else
    {
      aBlock = 0;
      v31 = v11;
      if (!v11)
      {
LABEL_28:
        v32 = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        dispatch_async(v15, &__p);
        if (v32)
        {
          CFRelease(v32);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v11)
        {
          CFRelease(v11);
        }

LABEL_42:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C263F90](v23);
        goto LABEL_47;
      }
    }

    CFRetain(v11);
    goto LABEL_28;
  }

LABEL_47:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_49:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296DFBA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  MEMORY[0x29C263F90](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c181_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb5_E3__6EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c181_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb5_E3__6EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb5_E3__6NS_9allocatorISG_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EE98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEEEUb5_E3__6NS_9allocatorISG_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver31getRxDiversityStateWithRAT_syncENS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_45;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_45;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v40 = v6;
  if (!v6)
  {
    goto LABEL_45;
  }

  v7 = v6;
  if (v2[3])
  {
    v38 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[3] = v8;
    v37 = v8;
    v36[1] = v8;
    v36[2] = v8;
    v36[0] = v8;
    AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::ARI_CsiIceGetRxDiversityRspCb_SDK(v36, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
    *&block.__r_.__value_.__r.__words[1] = xmmword_296E1FAC0;
    strcpy(block.__r_.__value_.__l.__data_, "send Getting Rx Diversity Status");
    checkError(v36, &block, &cf);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (cf)
      {
        goto LABEL_19;
      }
    }

    else if (cf)
    {
      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::unpack(v36))
    {
      std::to_string(&block, *(v2 + 10));
      v9 = std::string::insert(&block, 0, "Failed to unpack response of getting Rx Diversity, and RAT selection: ", 0x46uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v11 = cf;
      cf = v32.__r_.__value_.__r.__words[0];
      v32.__r_.__value_.__r.__words[0] = 0;
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v12 = *v37;
    if (v12)
    {
      ctu::hex(v12);
      v13 = std::string::insert(&block, 0, "Error on CsiIceGetRxDiversityRspCb result: 0x", 0x2DuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v11 = cf;
      cf = v32.__r_.__value_.__r.__words[0];
      v32.__r_.__value_.__r.__words[0] = 0;
      if (!v11)
      {
LABEL_14:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          v15 = block.__r_.__value_.__r.__words[0];
LABEL_18:
          operator delete(v15);
        }

LABEL_19:
        v16 = v2[1];
        if (!v16 || !v2[2])
        {
LABEL_40:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C265070](v36);
          goto LABEL_43;
        }

        v17 = cf;
        if (cf && (CFRetain(cf), (v16 = v2[1]) == 0))
        {
          v18 = 0;
        }

        else
        {
          v18 = _Block_copy(v16);
        }

        v19 = v2[2];
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v42 = &__block_descriptor_tmp_189;
        if (v18)
        {
          v43 = _Block_copy(v18);
          v44 = v17;
          if (!v17)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v43 = 0;
          v44 = v17;
          if (!v17)
          {
LABEL_30:
            v45 = 0;
            dispatch_async(v19, &block);
            if (v45)
            {
              CFRelease(v45);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            if (v43)
            {
              _Block_release(v43);
            }

            if (v18)
            {
              _Block_release(v18);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            goto LABEL_40;
          }
        }

        CFRetain(v17);
        goto LABEL_30;
      }

LABEL_11:
      CFRelease(v11);
      goto LABEL_14;
    }

    if (**(&v37 + 1) == *(v2 + 10))
    {
      v21 = *v38;
      *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v4 + 280), **(&v37 + 1)) = v21;
      v22 = *(v4 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(v2 + 10);
        v24 = *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v4 + 280), v23);
        LODWORD(block.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(block.__r_.__value_.__r.__words[0]) = v23;
        LOWORD(block.__r_.__value_.__r.__words[1]) = 1024;
        *(&block.__r_.__value_.__r.__words[1] + 2) = v24;
        _os_log_debug_impl(&dword_296D7D000, v22, OS_LOG_TYPE_DEBUG, "#D fRxDiversity[ %d ]: %d\n", &block, 0xEu);
      }

      goto LABEL_19;
    }

    std::to_string(&v30, **(&v37 + 1));
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, "Getting Rx Diversity Response RAT(", &v30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v32, &v31, ") selection is different from the input RAT(");
    std::to_string(&v29, *(v2 + 10));
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v32, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    block.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&block.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &block, ")");
    CreateError();
    ctu::cf::CFSharedRef<__CFError>::operator=(&cf, &v33);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_64;
      }
    }

    else if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    }

LABEL_64:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_66;
    }

LABEL_65:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_60:
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_67;
    }

LABEL_66:
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_67:
    v15 = v30.__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

LABEL_43:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_45:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296DFC1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41, __int16 a42, char a43, char a44)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a41);
  MEMORY[0x29C265070](&a42);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 144);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c211_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver31getRxDiversityStateWithRAT_syncENS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c211_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver31getRxDiversityStateWithRAT_syncENS2_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EF18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::allocator<radio::ARICommandDriver::getRxDiversityStateWithRAT_sync(radio::ARICommandDriver::RFRatSelection,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v5 = _Block_copy(v3);
    v6 = v2[2];
    v13 = v5;
    v14 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  v6 = v2[2];
  v13 = 0;
  v14 = v6;
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  v7 = v2[3];
  v12 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  radio::ARICommandDriver::getAntennaTxPort_sync(v4, &v13, &v12);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v8 = v2[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v2[2];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_296DFC640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(va3);
  std::unique_ptr<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<radio::ARICommandDriver::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver21getAntennaTxPort_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS8_IK14__CFDictionaryEEEEESD_E3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_57;
  }

  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_57;
  }

  v4 = v2[2];
  v6 = std::__shared_weak_count::lock(v3);
  v32 = v6;
  if (!v6)
  {
    goto LABEL_57;
  }

  v7 = v6;
  if (*v2)
  {
    v30 = 0;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28[3] = v8;
    v29 = v8;
    v28[1] = v8;
    v28[2] = v8;
    v28[0] = v8;
    AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::ARI_CsiIceGetTxAntennaRspCb_SDK(v28, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
    *&block.__r_.__value_.__r.__words[1] = xmmword_296E22D70;
    strcpy(block.__r_.__value_.__l.__data_, "send Getting Antenna Tx Antenna Status");
    checkError(v28, &block, &cf);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (cf)
      {
        goto LABEL_22;
      }
    }

    else if (cf)
    {
      goto LABEL_22;
    }

    if (AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::unpack(v28))
    {
      __p = operator new(0x38uLL);
      strcpy(__p, "Failed to unpack response of getting Antenna Tx Port");
      CreateError();
      v9 = cf;
      cf = block.__r_.__value_.__r.__words[0];
      block.__r_.__value_.__r.__words[0] = 0;
      if (v9)
      {
        CFRelease(v9);
        if (block.__r_.__value_.__r.__words[0])
        {
          CFRelease(block.__r_.__value_.__l.__data_);
        }
      }

      v10 = __p;
      goto LABEL_21;
    }

    v11 = *v29;
    if (!v11)
    {
      v20 = **(&v29 + 1);
      *(v4 + 304) = **(&v29 + 1);
      v21 = *(v4 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(block.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(block.__r_.__value_.__r.__words[0]) = v20;
        _os_log_debug_impl(&dword_296D7D000, v21, OS_LOG_TYPE_DEBUG, "#D Antenna State: %d\n", &block, 8u);
      }

      v22 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v14 = Mutable;
      if (Mutable)
      {
        v30 = Mutable;
        block.__r_.__value_.__r.__words[0] = 0;
        ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&block.__r_.__value_.__l.__data_);
      }

      ctu::cf::insert<__CFString const*,int>(v14, *MEMORY[0x29EDC8C90], *(v4 + 304), v22);
LABEL_23:
      if (!v2[3] || !v2[4])
      {
LABEL_51:
        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C264C90](v28);
        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_55;
      }

      v15 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v14)
      {
        CFRetain(v14);
      }

      v16 = v2[3];
      if (v16)
      {
        v17 = _Block_copy(v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = v2[4];
      block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      block.__r_.__value_.__l.__size_ = 1174405120;
      block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
      v34 = &__block_descriptor_tmp_182;
      if (v17)
      {
        v35 = _Block_copy(v17);
        v36 = v15;
        if (!v15)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v35 = 0;
        v36 = v15;
        if (!v15)
        {
LABEL_37:
          v37 = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          dispatch_async(v18, &block);
          if (v37)
          {
            CFRelease(v37);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          if (v35)
          {
            _Block_release(v35);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          goto LABEL_51;
        }
      }

      CFRetain(v15);
      goto LABEL_37;
    }

    ctu::hex(v11);
    v12 = std::string::insert(&block, 0, "Failed on returning result from getting antenna state: result: 0x", 0x41uLL);
    __pa = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    CreateError();
    v13 = cf;
    cf = v26;
    if (v13)
    {
      CFRelease(v13);
    }

    if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__pa.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = block.__r_.__value_.__r.__words[0];
LABEL_21:
      operator delete(v10);
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

LABEL_55:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_57:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296DFCB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c183_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver21getAntennaTxPort_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEESC_E3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c183_ZTSNSt3__110shared_ptrIZN5radio16ARICommandDriver21getAntennaTxPort_syncEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS7_IK14__CFDictionaryEEEEESC_E3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::allocator<radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0EF98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::allocator<radio::ARICommandDriver::getAntennaTxPort_sync(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio16ARICommandDriver19getARTDWithRAT_syncENS3_14RFRatSelectionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_45;
  }

  v3 = v2[4];
  if (!v3)
  {
    goto LABEL_45;
  }

  v4 = *v2;
  v6 = std::__shared_weak_count::lock(v3);
  v40 = v6;
  if (!v6)
  {
    goto LABEL_45;
  }

  v7 = v6;
  if (v2[3])
  {
    v38 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[3] = v8;
    v37 = v8;
    v36[1] = v8;
    v36[2] = v8;
    v36[0] = v8;
    AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::ARI_CsiIceGetArtdSettingRspCb_SDK(v36, a2);
    cf = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&block.__r_.__value_.__r.__words[1] = xmmword_296E20BE0;
    strcpy(block.__r_.__value_.__l.__data_, "send Getting ARTD Settings");
    checkError(v36, &block, &cf);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (cf)
      {
        goto LABEL_19;
      }
    }

    else if (cf)
    {
      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::unpack(v36))
    {
      std::to_string(&block, *(v2 + 10));
      v9 = std::string::insert(&block, 0, "Failed to unpack response of getting ARTD, and RAT selection: ", 0x3EuLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v11 = cf;
      cf = v32.__r_.__value_.__r.__words[0];
      v32.__r_.__value_.__r.__words[0] = 0;
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v12 = *v37;
    if (v12)
    {
      ctu::hex(v12);
      v13 = std::string::insert(&block, 0, "Error on CsiIceGetArtdSettingRspCb result: 0x", 0x2DuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v11 = cf;
      cf = v32.__r_.__value_.__r.__words[0];
      v32.__r_.__value_.__r.__words[0] = 0;
      if (!v11)
      {
LABEL_14:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          v15 = block.__r_.__value_.__r.__words[0];
LABEL_18:
          operator delete(v15);
        }

LABEL_19:
        v16 = v2[1];
        if (!v16 || !v2[2])
        {
LABEL_40:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C265040](v36);
          goto LABEL_43;
        }

        v17 = cf;
        if (cf && (CFRetain(cf), (v16 = v2[1]) == 0))
        {
          v18 = 0;
        }

        else
        {
          v18 = _Block_copy(v16);
        }

        v19 = v2[2];
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
        v42 = &__block_descriptor_tmp_189;
        if (v18)
        {
          v43 = _Block_copy(v18);
          v44 = v17;
          if (!v17)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v43 = 0;
          v44 = v17;
          if (!v17)
          {
LABEL_30:
            v45 = 0;
            dispatch_async(v19, &block);
            if (v45)
            {
              CFRelease(v45);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            if (v43)
            {
              _Block_release(v43);
            }

            if (v18)
            {
              _Block_release(v18);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            goto LABEL_40;
          }
        }

        CFRetain(v17);
        goto LABEL_30;
      }

LABEL_11:
      CFRelease(v11);
      goto LABEL_14;
    }

    if (**(&v37 + 1) == *(v2 + 10))
    {
      v21 = *v38;
      *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v4 + 312), **(&v37 + 1)) = v21;
      v22 = *(v4 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(v2 + 10);
        v24 = *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[]((v4 + 312), v23);
        LODWORD(block.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(block.__r_.__value_.__r.__words[0]) = v23;
        LOWORD(block.__r_.__value_.__r.__words[1]) = 1024;
        *(&block.__r_.__value_.__r.__words[1] + 2) = v24;
        _os_log_debug_impl(&dword_296D7D000, v22, OS_LOG_TYPE_DEBUG, "#D fARTD[ %d ]: %d\n", &block, 0xEu);
      }

      goto LABEL_19;
    }

    std::to_string(&v30, **(&v37 + 1));
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, "Getting ARTD Response RAT(", &v30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v32, &v31, ") selection is different from the input RAT(");
    std::to_string(&v29, *(v2 + 10));
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v32, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    block.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&block.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &block, ")");
    CreateError();
    ctu::cf::CFSharedRef<__CFError>::operator=(&cf, &v33);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_64;
      }
    }

    else if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    }

LABEL_64:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_66;
    }

LABEL_65:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_60:
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_67;
    }

LABEL_66:
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_67:
    v15 = v30.__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

LABEL_43:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_45:
  v20 = *MEMORY[0x29EDCA608];
}