void ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_64;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v47 = v6;
  if (!v6)
  {
    goto LABEL_64;
  }

  if (!a1[5])
  {
    goto LABEL_62;
  }

  if (*(a2 + 1))
  {
    v7 = v6;
    __p = 0;
    p_p = &__p;
    v50 = 0x2000000000;
    LOWORD(v51) = 0;
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 0x40000000;
    v39 = ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3;
    v40 = &unk_29EE5ED38;
    v41 = &__p;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v10 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 2);
      LOWORD(block.__r_.__value_.__l.__data_) = *v10;
      v39(v38, &block);
    }

    memset(v37, 170, sizeof(v37));
    ctu::hex(*(p_p + 24));
    v11 = std::string::insert(&block, 0, "Failed to get PK hash: BBSecurityStatus: 0x", 0x2BuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v37[2] = v11->__r_.__value_.__r.__words[2];
    *v37 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }

    v13 = *(v5 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v36 = v37;
      if (SHIBYTE(v37[2]) < 0)
      {
        v36 = v37[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v36;
      _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    v14 = xpc_int64_create(*(p_p + 24));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    v15 = xpc_null_create();
    v16 = a1[7];
    if (v16)
    {
      v17 = _Block_copy(v16);
    }

    else
    {
      v17 = 0;
    }

    v24 = a1[8];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
    v56 = &__block_descriptor_tmp_307;
    if (v17)
    {
      v57 = _Block_copy(v17);
      v58 = v14;
      if (v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v57 = 0;
      v58 = v14;
      if (v14)
      {
LABEL_25:
        xpc_retain(v14);
        v59 = v15;
        if (v15)
        {
LABEL_26:
          xpc_retain(v15);
LABEL_30:
          dispatch_async(v24, &block);
          xpc_release(v59);
          v59 = 0;
          xpc_release(v58);
          v58 = 0;
          if (v57)
          {
            _Block_release(v57);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          xpc_release(v15);
          xpc_release(v14);
          if (SHIBYTE(v37[2]) < 0)
          {
            operator delete(v37[0]);
          }

          _Block_object_dispose(&__p, 8);
          v6 = v7;
LABEL_62:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v6;
            (v6->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v34);
          }

          goto LABEL_64;
        }

LABEL_29:
        v59 = xpc_null_create();
        goto LABEL_30;
      }
    }

    v58 = xpc_null_create();
    v59 = v15;
    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  block.__r_.__value_.__r.__words[0] = 0;
  block.__r_.__value_.__l.__size_ = &block;
  block.__r_.__value_.__r.__words[2] = 0x4002000000;
  v56 = __Block_byref_object_copy__308;
  v57 = __Block_byref_object_dispose__309;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v42[0] = MEMORY[0x29EDCA5F8];
  v42[1] = 0x40000000;
  v43 = ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
  v44 = &unk_29EE5ED10;
  p_block = &block;
  v19 = qmi::MessageBase::findTlvValue(a2);
  if (v19)
  {
    __p = 0;
    p_p = 0;
    v50 = 0;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v19, &v19[v18], v18);
    v43(v42, &__p);
    if (__p)
    {
      p_p = __p;
      operator delete(__p);
    }
  }

  v20 = *(block.__r_.__value_.__l.__size_ + 40);
  if (*(block.__r_.__value_.__l.__size_ + 48) - v20 < 4uLL)
  {
    std::vector<unsigned char>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *v20;
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22 || (v22 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C2693B0](v22) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
    }
  }

  else
  {
    v23 = xpc_null_create();
    v22 = 0;
  }

  xpc_release(v22);
  v25 = xpc_data_create(*(block.__r_.__value_.__l.__size_ + 40), *(block.__r_.__value_.__l.__size_ + 48) - *(block.__r_.__value_.__l.__size_ + 40));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, *MEMORY[0x29EDC8B90], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(bswap32(v21));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, *MEMORY[0x29EDC8B80], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = xpc_null_create();
  if (v23)
  {
    xpc_retain(v23);
    v30 = v23;
    v31 = a1[7];
    if (v31)
    {
LABEL_45:
      v32 = _Block_copy(v31);
      goto LABEL_48;
    }
  }

  else
  {
    v30 = xpc_null_create();
    v31 = a1[7];
    if (v31)
    {
      goto LABEL_45;
    }
  }

  v32 = 0;
LABEL_48:
  v33 = a1[8];
  __p = MEMORY[0x29EDCA5F8];
  p_p = 1174405120;
  v50 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  v51 = &__block_descriptor_tmp_325;
  if (v32)
  {
    aBlock = _Block_copy(v32);
    v53 = v29;
    if (v29)
    {
      goto LABEL_50;
    }

LABEL_53:
    v53 = xpc_null_create();
    object = v30;
    if (v30)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  aBlock = 0;
  v53 = v29;
  if (!v29)
  {
    goto LABEL_53;
  }

LABEL_50:
  xpc_retain(v29);
  object = v30;
  if (v30)
  {
LABEL_51:
    xpc_retain(v30);
    goto LABEL_55;
  }

LABEL_54:
  object = xpc_null_create();
LABEL_55:
  dispatch_async(v33, &__p);
  xpc_release(object);
  object = 0;
  xpc_release(v53);
  v53 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  xpc_release(v30);
  xpc_release(v29);
  xpc_release(v23);
  _Block_object_dispose(&block, 8);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v6 = v47;
  if (v47)
  {
    goto LABEL_62;
  }

LABEL_64:
  v35 = *MEMORY[0x29EDCA608];
}

void sub_296F49938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9GetPKHash8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F49BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v6 = xpc_null_create();
    v4 = a1[6];
    object = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v2);
  v4 = a1[6];
  object = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v4);
LABEL_6:
  (*(v3 + 16))(v3, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_296F49CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v16 = v3 + 264;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZZN5radio20QMICommandDriverBase15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_333;
  v12[4] = v3;
  v5 = v2[4];
  v12[5] = v2[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v2[2];
  v14 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm21GetChipIdSerialNumber8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EDD8;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v21);
  v8 = v2[4];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
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

void sub_296F4A010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v25 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  std::unique_ptr<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F4A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_61;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v63 = v6;
  if (!v6)
  {
    goto LABEL_61;
  }

  v7 = v6;
  if (a1[5])
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2000000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    if (*(a2 + 1))
    {
      p_p = operator new(0x28uLL);
      __p = p_p;
      v40 = xmmword_296FBEC50;
      strcpy(p_p, "Failed to get firmware information");
      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 136315138;
        *(&block + 4) = p_p;
        _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }
      }

      v10 = xpc_string_create(p_p);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      v11 = xpc_null_create();
      v12 = a1[7];
      if (v12)
      {
        v13 = _Block_copy(v12);
      }

      else
      {
        v13 = 0;
      }

      v25 = a1[8];
      *&block = MEMORY[0x29EDCA5F8];
      *(&block + 1) = 1174405120;
      v65 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
      v66 = &__block_descriptor_tmp_307;
      if (v13)
      {
        v67 = _Block_copy(v13);
        v68 = v10;
        if (v10)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v67 = 0;
        v68 = v10;
        if (v10)
        {
LABEL_19:
          xpc_retain(v10);
          v69 = v11;
          if (v11)
          {
LABEL_20:
            xpc_retain(v11);
LABEL_24:
            dispatch_async(v25, &block);
            xpc_release(v69);
            v69 = 0;
            xpc_release(v68);
            v68 = 0;
            if (v67)
            {
              _Block_release(v67);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            xpc_release(v11);
            xpc_release(v10);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_58;
          }

LABEL_23:
          v69 = xpc_null_create();
          goto LABEL_24;
        }
      }

      v68 = xpc_null_create();
      v69 = v11;
      if (v11)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v45[0] = MEMORY[0x29EDCA5F8];
    v45[1] = 0x40000000;
    v46 = ___ZZN5radio20QMICommandDriverBase15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
    v47 = &unk_29EE5ED88;
    v48 = &v54;
    v49 = &v58;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v16 = TlvValue;
    if (TlvValue)
    {
      v17 = v15;
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v15, 4);
      v18 = *v16;
      tlv::throwIfNotEnoughBytes((v16 + 4), &v16[v17], 4);
      *&block = v18 | (*(v16 + 1) << 32);
      TlvValue = v46(v45, &block);
    }

    if (capabilities::radio::mav25Plus(TlvValue))
    {
      v41[0] = MEMORY[0x29EDCA5F8];
      v41[1] = 0x40000000;
      v42 = ___ZZN5radio20QMICommandDriverBase15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3;
      v43 = &unk_29EE5EDB0;
      v44 = &v50;
      v19 = qmi::MessageBase::findTlvValue(a2);
      v21 = v19;
      if (v19)
      {
        tlv::throwIfNotEnoughBytes(v19, v19 + v20, 8);
        *&block = *v21;
        v42(v41, &block);
      }

      v22 = v51;
      v23 = operator new(8uLL);
      *v23 = bswap64(v22[3]);
      v24 = (v23 + 1);
    }

    else
    {
      v26 = v55;
      v23 = operator new(4uLL);
      *v23 = bswap32(*(v26 + 6));
      v24 = v23 + 4;
    }

    v27 = xpc_dictionary_create(0, 0, 0);
    if (v27 || (v27 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C2693B0](v27) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v27);
        v28 = v27;
      }

      else
      {
        v28 = xpc_null_create();
      }
    }

    else
    {
      v28 = xpc_null_create();
      v27 = 0;
    }

    xpc_release(v27);
    v29 = xpc_int64_create(*(v59 + 6));
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v28, *MEMORY[0x29EDC8B88], v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
    v31 = xpc_data_create(v23, v24 - v23);
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    xpc_dictionary_set_value(v28, *MEMORY[0x29EDC8BF8], v31);
    v32 = xpc_null_create();
    xpc_release(v31);
    xpc_release(v32);
    v33 = xpc_null_create();
    if (v28)
    {
      xpc_retain(v28);
      v34 = v28;
      v35 = a1[7];
      if (v35)
      {
LABEL_43:
        v36 = _Block_copy(v35);
        goto LABEL_46;
      }
    }

    else
    {
      v34 = xpc_null_create();
      v35 = a1[7];
      if (v35)
      {
        goto LABEL_43;
      }
    }

    v36 = 0;
LABEL_46:
    v37 = a1[8];
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    v65 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
    v66 = &__block_descriptor_tmp_325;
    if (v36)
    {
      v67 = _Block_copy(v36);
      v68 = v33;
      if (v33)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v67 = 0;
      v68 = v33;
      if (v33)
      {
LABEL_48:
        xpc_retain(v33);
        v69 = v34;
        if (v34)
        {
LABEL_49:
          xpc_retain(v34);
LABEL_53:
          dispatch_async(v37, &block);
          xpc_release(v69);
          v69 = 0;
          xpc_release(v68);
          v68 = 0;
          if (v67)
          {
            _Block_release(v67);
          }

          if (v36)
          {
            _Block_release(v36);
          }

          xpc_release(v34);
          xpc_release(v33);
          xpc_release(v28);
          operator delete(v23);
          v7 = v63;
LABEL_58:
          _Block_object_dispose(&v50, 8);
          _Block_object_dispose(&v54, 8);
          _Block_object_dispose(&v58, 8);
          if (!v7)
          {
            goto LABEL_61;
          }

          goto LABEL_59;
        }

LABEL_52:
        v69 = xpc_null_create();
        goto LABEL_53;
      }
    }

    v68 = xpc_null_create();
    v69 = v34;
    if (v34)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

LABEL_59:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_61:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_296F4A798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v31, 16, v32, v33);
    JUMPOUT(0x296F4A32CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZZN5radio20QMICommandDriverBase15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2(uint64_t result, _DWORD *a2)
{
  *(*(*(result + 32) + 8) + 24) = *a2;
  *(*(*(result + 40) + 8) + 24) = a2[1];
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm21GetChipIdSerialNumber8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4AA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v16 = v3 + 264;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_343;
  v12[4] = v3;
  v5 = v2[4];
  v12[5] = v2[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v2[2];
  v14 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17GetManifestStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EEA0;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v21);
  v8 = v2[4];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
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

void sub_296F4AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v25 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  std::unique_ptr<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F4ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v98 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_72;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v84 = v6;
  if (!v6)
  {
    goto LABEL_72;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_70;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = *(v5 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v44 = qmi::asString();
      LODWORD(block) = 67109378;
      HIDWORD(block) = v8;
      LOWORD(v92) = 2080;
      *(&v92 + 2) = v44;
      _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Error = 0x%x (%s)", &block, 0x12u);
      v45 = *(a2 + 1);
    }

    v10 = qmi::asString();
    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v12 = xpc_null_create();
    v13 = a1[7];
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v31 = a1[8];
    block = MEMORY[0x29EDCA5F8];
    *&v92 = 1174405120;
    *(&v92 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
    v93 = &__block_descriptor_tmp_307;
    if (v14)
    {
      v94 = _Block_copy(v14);
      v95 = v11;
      if (v11)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v94 = 0;
      v95 = v11;
      if (v11)
      {
LABEL_33:
        xpc_retain(v11);
        v96 = v12;
        if (v12)
        {
LABEL_34:
          xpc_retain(v12);
LABEL_38:
          dispatch_async(v31, &block);
          xpc_release(v96);
          v96 = 0;
          xpc_release(v95);
          v95 = 0;
          if (v94)
          {
            _Block_release(v94);
          }

          if (v14)
          {
            _Block_release(v14);
          }

          xpc_release(v12);
          xpc_release(v11);
LABEL_70:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          goto LABEL_72;
        }

LABEL_37:
        v96 = xpc_null_create();
        goto LABEL_38;
      }
    }

    v95 = xpc_null_create();
    v96 = v12;
    if (v12)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x2000000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = 0;
  block = 0;
  *&v92 = &block;
  *(&v92 + 1) = 0x4002000000;
  v93 = __Block_byref_object_copy__308;
  v94 = __Block_byref_object_dispose__309;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v65[0] = MEMORY[0x29EDCA5F8];
  v65[1] = 0x40000000;
  v66 = ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
  v67 = &unk_29EE5EE00;
  v69 = &v79;
  v70 = v5;
  v68 = &v75;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v17 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v16, 2);
    LOWORD(v85) = *v17;
    v66(v65, &v85);
  }

  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 0x40000000;
  v60 = ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3;
  v61 = &unk_29EE5EE28;
  v62 = &v71;
  v63 = &v79;
  v64 = v5;
  v18 = qmi::MessageBase::findTlvValue(a2);
  v20 = v18;
  if (v18)
  {
    tlv::throwIfNotEnoughBytes(v18, v18 + v19, 2);
    LOWORD(v85) = *v20;
    v60(v59, &v85);
  }

  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 0x40000000;
  v54 = ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_4;
  v55 = &unk_29EE5EE50;
  v56 = &v75;
  p_block = &block;
  v58 = &v79;
  v22 = qmi::MessageBase::findTlvValue(a2);
  if (v22)
  {
    v85 = 0uLL;
    *&v86 = 0;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v85, v22, &v22[v21], v21);
    v54(v53, &v85);
    if (v85)
    {
      *(&v85 + 1) = v85;
      operator delete(v85);
    }
  }

  if ((v80[3] & 1) == 0)
  {
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 0x40000000;
    v47 = ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_5;
    v48 = &unk_29EE5EE78;
    v49 = &v75;
    v50 = &v71;
    v51 = &block;
    v52 = v5;
    v23 = qmi::MessageBase::findTlvValue(a2);
    v25 = v23;
    if (v23)
    {
      v26 = v24;
      v90 = v23;
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v27;
      v86 = v27;
      tlv::parseV<bsp::tlv::abm::ManifestStruct>(&v90, v24, &v85);
      v28 = v90;
      if (v90)
      {
        v47(v46, &v85);
      }

      if (*(&v85 + 1))
      {
        *&v86 = *(&v85 + 1);
        operator delete(*(&v85 + 1));
      }

      if (!v28)
      {
        (*MEMORY[0x29EDC91A8])(*a2, 1, v25, v26);
      }
    }
  }

  v29 = xpc_dictionary_create(0, 0, 0);
  if (v29 || (v29 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C2693B0](v29) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v29);
      v30 = v29;
    }

    else
    {
      v30 = xpc_null_create();
    }
  }

  else
  {
    v30 = xpc_null_create();
    v29 = 0;
  }

  xpc_release(v29);
  v32 = xpc_int64_create(*(v76 + 6));
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v30, *MEMORY[0x29EDC8BC0], v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  v34 = xpc_int64_create(*(v72 + 6));
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  xpc_dictionary_set_value(v30, *MEMORY[0x29EDC8BB8], v34);
  v35 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v35);
  v36 = xpc_data_create(*(v92 + 40), *(v92 + 48) - *(v92 + 40));
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v30, *MEMORY[0x29EDC8BA8], v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  v38 = xpc_null_create();
  if (v30)
  {
    xpc_retain(v30);
    v39 = v30;
    v40 = a1[7];
    if (v40)
    {
LABEL_53:
      v41 = _Block_copy(v40);
      goto LABEL_56;
    }
  }

  else
  {
    v39 = xpc_null_create();
    v40 = a1[7];
    if (v40)
    {
      goto LABEL_53;
    }
  }

  v41 = 0;
LABEL_56:
  v42 = a1[8];
  *&v85 = MEMORY[0x29EDCA5F8];
  *(&v85 + 1) = 1174405120;
  *&v86 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  *(&v86 + 1) = &__block_descriptor_tmp_325;
  if (v41)
  {
    v87 = _Block_copy(v41);
    v88 = v38;
    if (v38)
    {
      goto LABEL_58;
    }

LABEL_61:
    v88 = xpc_null_create();
    v89 = v39;
    if (v39)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

  v87 = 0;
  v88 = v38;
  if (!v38)
  {
    goto LABEL_61;
  }

LABEL_58:
  xpc_retain(v38);
  v89 = v39;
  if (v39)
  {
LABEL_59:
    xpc_retain(v39);
    goto LABEL_63;
  }

LABEL_62:
  v89 = xpc_null_create();
LABEL_63:
  dispatch_async(v42, &v85);
  xpc_release(v89);
  v89 = 0;
  xpc_release(v88);
  v88 = 0;
  if (v87)
  {
    _Block_release(v87);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  xpc_release(v39);
  xpc_release(v38);
  xpc_release(v30);
  _Block_object_dispose(&block, 8);
  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  v7 = v84;
  if (v84)
  {
    goto LABEL_70;
  }

LABEL_72:
  v43 = *MEMORY[0x29EDCA608];
}

void sub_296F4B5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v49 = *(v47 - 216);
  if (v49)
  {
    *(v47 - 208) = v49;
    operator delete(v49);
  }

  _Block_object_dispose((v47 - 160), 8);
  v50 = *(v47 - 120);
  if (v50)
  {
    *(v47 - 112) = v50;
    operator delete(v50);
  }

  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v47 - 240);
  _Unwind_Resume(a1);
}

uint64_t ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2(uint64_t result, _WORD *a2)
{
  if (*a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t ___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3(uint64_t result, _WORD *a2)
{
  if (*a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

char *___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_4(char *result, char **a2)
{
  v2 = result;
  if (*(*(*(result + 4) + 8) + 24) != 2)
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((*(*(result + 5) + 8) + 40), *a2, a2[1], a2[1] - *a2);
  }

  *(*(*(v2 + 6) + 8) + 24) = 1;
  return result;
}

char *___ZZN5radio20QMICommandDriverBase17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_5(char *result, uint64_t a2)
{
  if (*a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(result + 4) + 8) + 24) = v3;
  if (*(a2 + 2) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*(a2 + 2))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(result + 5) + 8) + 24) = v5;
  if (*(*(*(result + 4) + 8) + 24) != 2)
  {
    return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((*(*(result + 6) + 8) + 40), *(a2 + 8), (*(a2 + 8) + 20), 0x14uLL);
  }

  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17GetManifestStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4B9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v16 = v3 + 264;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_356;
  v12[4] = v3;
  v5 = v2[4];
  v12[5] = v2[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v2[2];
  v14 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm11GetManifest8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EF68;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v21);
  v8 = v2[4];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
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

void sub_296F4BC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v25 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  std::unique_ptr<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F4BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v96 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_83;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v85 = v6;
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_81;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = *(v5 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block) = 67109378;
      HIDWORD(block) = v8;
      LOWORD(v90) = 2080;
      *(&v90 + 2) = qmi::asString();
      _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Error = 0x%x (%s)", &block, 0x12u);
      v52 = *(a2 + 1);
    }

    v10 = qmi::asString();
    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v12 = xpc_null_create();
    v13 = a1[7];
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = a1[8];
    block = MEMORY[0x29EDCA5F8];
    *&v90 = 1174405120;
    *(&v90 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
    v91 = &__block_descriptor_tmp_307;
    if (v14)
    {
      v92 = _Block_copy(v14);
      v93 = v11;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v92 = 0;
      v93 = v11;
      if (v11)
      {
LABEL_17:
        xpc_retain(v11);
        v94 = v12;
        if (v12)
        {
LABEL_18:
          xpc_retain(v12);
LABEL_22:
          dispatch_async(v19, &block);
          xpc_release(v94);
          v94 = 0;
          xpc_release(v93);
          v93 = 0;
          if (v92)
          {
            _Block_release(v92);
          }

          if (v14)
          {
            _Block_release(v14);
          }

          xpc_release(v12);
          xpc_release(v11);
LABEL_81:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          goto LABEL_83;
        }

LABEL_21:
        v94 = xpc_null_create();
        goto LABEL_22;
      }
    }

    v93 = xpc_null_create();
    v94 = v12;
    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2000000000;
  v75 = 0;
  v65[0] = MEMORY[0x29EDCA5F8];
  v65[1] = 0x40000000;
  v66 = ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
  v67 = &unk_29EE5EEC8;
  v68 = &v80;
  v69 = &v76;
  v70 = &v72;
  v71 = v5;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v17 = TlvValue;
  if (TlvValue)
  {
    v18 = v16;
    block = TlvValue;
    v86 = tlv::parseV<bsp::tlv::abm::ManifestStatus>(&block, v16);
    if (block)
    {
      v66(v65, &v86);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 1, v17, v18);
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  if (v20 || (v20 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C2693B0](v20) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v20);
      v21 = v20;
    }

    else
    {
      v21 = xpc_null_create();
    }
  }

  else
  {
    v21 = xpc_null_create();
    v20 = 0;
  }

  xpc_release(v20);
  v22 = xpc_int64_create(*(v81 + 6));
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8C30], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_int64_create(*(v77 + 6));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8C58], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_int64_create(*(v73 + 6));
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8C50], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  if (!*(v81 + 6))
  {
    block = 0;
    *&v90 = &block;
    *(&v90 + 1) = 0x4002000000;
    v91 = __Block_byref_object_copy__308;
    v92 = __Block_byref_object_dispose__309;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 0x40000000;
    v62 = ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3;
    v63 = &unk_29EE5EEF0;
    p_block = &block;
    v28 = qmi::MessageBase::findTlvValue(a2);
    v30 = v28;
    if (v28)
    {
      v86 = 0;
      v87 = 0;
      v31 = v29;
      v88 = 0;
      tlv::throwIfNotEnoughBytes(v28, v28 + v29, 2);
      v32 = *v30;
      tlv::throwIfNotEnoughBytes((v30 + 2), &v30[v31], v32);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v86, v30 + 2, &v30[v32 + 2], v32);
      v62(v61, &v86);
      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }
    }

    v33 = xpc_data_create(*(v90 + 40), *(v90 + 48) - *(v90 + 40));
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8BE8], v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
    _Block_object_dispose(&block, 8);
    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }

  if (!*(v77 + 6))
  {
    block = 0;
    *&v90 = &block;
    *(&v90 + 1) = 0x4002000000;
    v91 = __Block_byref_object_copy__348;
    v92 = __Block_byref_object_dispose__349;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v57[0] = MEMORY[0x29EDCA5F8];
    v57[1] = 0x40000000;
    v58 = ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_350;
    v59 = &unk_29EE5EF18;
    v60 = &block;
    v35 = qmi::MessageBase::findTlvValue(a2);
    v37 = v35;
    if (v35)
    {
      v86 = 0;
      v87 = 0;
      v38 = v36;
      v88 = 0;
      tlv::throwIfNotEnoughBytes(v35, v35 + v36, 2);
      v39 = *v37;
      tlv::throwIfNotEnoughBytes((v37 + 2), &v37[v38], v39);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v86, v37 + 2, &v37[v39 + 2], v39);
      v58(v57, &v86);
      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }
    }

    v40 = xpc_data_create(*(v90 + 40), *(v90 + 48) - *(v90 + 40));
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8C40], v40);
    v41 = xpc_null_create();
    xpc_release(v40);
    xpc_release(v41);
    _Block_object_dispose(&block, 8);
    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }

  if (!*(v73 + 6))
  {
    block = 0;
    *&v90 = &block;
    *(&v90 + 1) = 0x4002000000;
    v91 = __Block_byref_object_copy__348;
    v92 = __Block_byref_object_dispose__349;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 0x40000000;
    v54 = ___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2_352;
    v55 = &unk_29EE5EF40;
    v56 = &block;
    v43 = qmi::MessageBase::findTlvValue(a2);
    if (v43)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v86, v43, &v43[v42], v42);
      v54(v53, &v86);
      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }
    }

    v44 = xpc_data_create(*(v90 + 40), *(v90 + 48) - *(v90 + 40));
    if (!v44)
    {
      v44 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, *MEMORY[0x29EDC8C28], v44);
    v45 = xpc_null_create();
    xpc_release(v44);
    xpc_release(v45);
    _Block_object_dispose(&block, 8);
    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }

  v46 = xpc_null_create();
  if (v21)
  {
    xpc_retain(v21);
    v47 = v21;
    v48 = a1[7];
    if (v48)
    {
LABEL_66:
      v49 = _Block_copy(v48);
      goto LABEL_69;
    }
  }

  else
  {
    v47 = xpc_null_create();
    v48 = a1[7];
    if (v48)
    {
      goto LABEL_66;
    }
  }

  v49 = 0;
LABEL_69:
  v50 = a1[8];
  block = MEMORY[0x29EDCA5F8];
  *&v90 = 1174405120;
  *(&v90 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  v91 = &__block_descriptor_tmp_325;
  if (v49)
  {
    v92 = _Block_copy(v49);
    v93 = v46;
    if (v46)
    {
      goto LABEL_71;
    }

LABEL_74:
    v93 = xpc_null_create();
    v94 = v47;
    if (v47)
    {
      goto LABEL_72;
    }

    goto LABEL_75;
  }

  v92 = 0;
  v93 = v46;
  if (!v46)
  {
    goto LABEL_74;
  }

LABEL_71:
  xpc_retain(v46);
  v94 = v47;
  if (v47)
  {
LABEL_72:
    xpc_retain(v47);
    goto LABEL_76;
  }

LABEL_75:
  v94 = xpc_null_create();
LABEL_76:
  dispatch_async(v50, &block);
  xpc_release(v94);
  v94 = 0;
  xpc_release(v93);
  v93 = 0;
  if (v92)
  {
    _Block_release(v92);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  xpc_release(v47);
  xpc_release(v46);
  xpc_release(v21);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  v7 = v85;
  if (v85)
  {
    goto LABEL_81;
  }

LABEL_83:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_296F4C7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *___ZZN5radio20QMICommandDriverBase11getManifestEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2(void *result, _WORD *a2)
{
  if (*a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(*(result[4] + 8) + 24) = v3;
  if (a2[1] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a2[1])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(*(result[5] + 8) + 24) = v5;
  if (a2[3] == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (a2[3])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(*(result[6] + 8) + 24) = v7;
  return result;
}

__n128 __Block_byref_object_copy__348(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__349(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm11GetManifest8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::screenState(BOOL)::$_0>(radio::QMICommandDriverBase::screenState(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v4;
  v37 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v5 = ___ZZN5radio20QMICommandDriverBase11screenStateEbENK3__0clEv_block_invoke;
  v33 = ___ZZN5radio20QMICommandDriverBase11screenStateEbENK3__0clEv_block_invoke;
  v34 = &__block_descriptor_tmp_359;
  v35 = *(v2 + 8);
  v6 = *(&v36 + 1);
  v7 = v37;
  v8 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    v8 = *(&v36 + 1);
    while (*(*v8 + 8) != 16)
    {
      if (++v8 == v37)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v37)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v13 = v12;
    v12[4] = 16;
    *v12 = &unk_2A1E1A308;
    if (v7 >= *(&v37 + 1))
    {
      v15 = v7 - v6;
      v16 = (v7 - v6) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v37 + 1) - v6;
      if ((*(&v37 + 1) - v6) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = operator new(8 * v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v16];
      *v21 = v13;
      v14 = v21 + 8;
      memcpy(v20, v6, v15);
      *(&v36 + 1) = v20;
      *&v37 = v14;
      *(&v37 + 1) = &v20[8 * v19];
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v7 = v12;
      v14 = v7 + 8;
    }

    v11 = v13 + 9;
    *&v37 = v14;
    v5 = v33;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  v5(v32, v11);
  v27 = v3 + 264;
  v28 = QMIServiceMsg::create();
  v29 = 25000;
  v30 = 0;
  v31 = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZZN5radio20QMICommandDriverBase11screenStateEbENK3__0clEv_block_invoke_2;
  v25[3] = &__block_descriptor_tmp_362;
  v25[4] = v3;
  v22 = v2[3];
  v25[5] = v2[2];
  v26 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm12SendAPStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EFB0;
  aBlock[4] = v25;
  v31 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v31)
  {
    _Block_release(v31);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v36);
  v23 = v2[3];
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete(v2);
  v24 = a1[2];
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  operator delete(a1);
}

void sub_296F4CFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,std::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,std::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase11screenStateEbENK3__0clEv_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        if (!*(a2 + 4))
        {
          v8 = *(v5 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Update AP Screen Status successful", v9, 2u);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ScreenStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ScreenStatus>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A308;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm12SendAPStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4D2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0>(radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v4;
  v38 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v37);
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 0x40000000;
  v5 = ___ZZN5radio20QMICommandDriverBase12setBreadModeEbENK3__0clEv_block_invoke;
  v34 = ___ZZN5radio20QMICommandDriverBase12setBreadModeEbENK3__0clEv_block_invoke;
  v35 = &__block_descriptor_tmp_365;
  v36 = *(v2 + 8);
  v6 = *(&v37 + 1);
  v7 = v38;
  v8 = *(&v37 + 1);
  if (*(&v37 + 1) != v38)
  {
    v8 = *(&v37 + 1);
    while (*(*v8 + 8) != 16)
    {
      if (++v8 == v38)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v38)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v13 = v12;
    v12[4] = 16;
    *v12 = &unk_2A1E1A388;
    if (v7 >= *(&v38 + 1))
    {
      v15 = v7 - v6;
      v16 = (v7 - v6) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v38 + 1) - v6;
      if ((*(&v38 + 1) - v6) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = operator new(8 * v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v16];
      *v21 = v13;
      v14 = v21 + 8;
      memcpy(v20, v6, v15);
      *(&v37 + 1) = v20;
      *&v38 = v14;
      *(&v38 + 1) = &v20[8 * v19];
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v7 = v12;
      v14 = v7 + 8;
    }

    v11 = v13 + 9;
    *&v38 = v14;
    v5 = v34;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  v5(v33, v11);
  v28 = v3 + 264;
  v29 = QMIServiceMsg::create();
  v30 = 25000;
  v31 = 0;
  v32 = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZZN5radio20QMICommandDriverBase12setBreadModeEbENK3__0clEv_block_invoke_2;
  v25[3] = &__block_descriptor_tmp_372;
  v25[4] = v3;
  v22 = v2[3];
  v25[5] = v2[2];
  v26 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *(v2 + 8);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SendBreadMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EFF8;
  aBlock[4] = v25;
  v32 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v32)
  {
    _Block_release(v32);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v37);
  v23 = v2[3];
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete(v2);
  v24 = a1[2];
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  operator delete(a1);
}

void sub_296F4D69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,std::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN5radio20QMICommandDriverBase12setBreadModeEbENK3__0clEv_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *(a2 + 4);
        v9 = *(v5 + 40);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            if (*(a1 + 56))
            {
              v10 = "enable";
            }

            else
            {
              v10 = "disable";
            }

            v13 = 136315138;
            v14 = v10;
            _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Failed to %s Bread mode", &v13, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 56))
          {
            v11 = "enabled";
          }

          else
          {
            v11 = "disabled";
          }

          v13 = 136315138;
          v14 = v11;
          _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Bread mode", &v13, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BreadModeType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::BreadModeType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A388;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SendBreadMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4D9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0>(radio::QMICommandDriverBase::setButterMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v4;
  v38 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v37);
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 0x40000000;
  v5 = ___ZZN5radio20QMICommandDriverBase13setButterModeEbENK3__0clEv_block_invoke;
  v34 = ___ZZN5radio20QMICommandDriverBase13setButterModeEbENK3__0clEv_block_invoke;
  v35 = &__block_descriptor_tmp_375;
  v36 = *(v2 + 8);
  v6 = *(&v37 + 1);
  v7 = v38;
  v8 = *(&v37 + 1);
  if (*(&v37 + 1) != v38)
  {
    v8 = *(&v37 + 1);
    while (*(*v8 + 8) != 17)
    {
      if (++v8 == v38)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v38)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v13 = v12;
    v12[4] = 17;
    *v12 = &unk_2A1E1A408;
    if (v7 >= *(&v38 + 1))
    {
      v15 = v7 - v6;
      v16 = (v7 - v6) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v38 + 1) - v6;
      if ((*(&v38 + 1) - v6) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = operator new(8 * v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v16];
      *v21 = v13;
      v14 = v21 + 8;
      memcpy(v20, v6, v15);
      *(&v37 + 1) = v20;
      *&v38 = v14;
      *(&v38 + 1) = &v20[8 * v19];
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v7 = v12;
      v14 = v7 + 8;
    }

    v11 = v13 + 9;
    *&v38 = v14;
    v5 = v34;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  v5(v33, v11);
  v28 = v3 + 264;
  v29 = QMIServiceMsg::create();
  v30 = 25000;
  v31 = 0;
  v32 = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZZN5radio20QMICommandDriverBase13setButterModeEbENK3__0clEv_block_invoke_2;
  v25[3] = &__block_descriptor_tmp_378;
  v25[4] = v3;
  v22 = v2[3];
  v25[5] = v2[2];
  v26 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *(v2 + 8);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SendBreadMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EFF8;
  aBlock[4] = v25;
  v32 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v32)
  {
    _Block_release(v32);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v37);
  v23 = v2[3];
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete(v2);
  v24 = a1[2];
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  operator delete(a1);
}

void sub_296F4DDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,std::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN5radio20QMICommandDriverBase13setButterModeEbENK3__0clEv_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *(a2 + 4);
        v9 = *(v5 + 40);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            if (*(a1 + 56))
            {
              v10 = "enable";
            }

            else
            {
              v10 = "disable";
            }

            v13 = 136315138;
            v14 = v10;
            _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Failed to %s Butter mode", &v13, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 56))
          {
            v11 = "enabled";
          }

          else
          {
            v11 = "disabled";
          }

          v13 = 136315138;
          v14 = v11;
          _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Butter mode", &v13, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ButterModeType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ButterModeType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A408;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>(radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v4;
  v62 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v61);
  v57[0] = MEMORY[0x29EDCA5F8];
  v57[1] = 0x40000000;
  v5 = ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke;
  v58 = ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke;
  v59 = &__block_descriptor_tmp_380;
  v60 = *(v2 + 6);
  v6 = *(&v61 + 1);
  v7 = v62;
  v8 = *(&v61 + 1);
  if (*(&v61 + 1) != v62)
  {
    v8 = *(&v61 + 1);
    while (*(*v8 + 8) != 19)
    {
      if (++v8 == v62)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v62)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 19;
    *v12 = &unk_2A1E1A488;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v7 >= *(&v62 + 1))
    {
      v14 = v7 - v6;
      v15 = (v7 - v6) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_62;
      }

      v17 = *(&v62 + 1) - v6;
      if ((*(&v62 + 1) - v6) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      v44 = v3;
      if (v18)
      {
        if (v18 >> 61)
        {
          goto LABEL_63;
        }

        v19 = v12;
        v20 = v12 + 12;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 12;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v6, v14);
      *(&v61 + 1) = v21;
      *&v62 = v13;
      *(&v62 + 1) = &v21[8 * v18];
      if (v6)
      {
        operator delete(v6);
      }

      v11 = v20;
      v3 = v44;
    }

    else
    {
      *v7 = v12;
      v13 = v7 + 8;
    }

    *&v62 = v13;
    v5 = v58;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      goto LABEL_61;
    }

    v11 = v10 + 12;
  }

  v5(v57, v11);
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 0x40000000;
  v23 = ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke_2;
  v54 = ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke_2;
  v55 = &__block_descriptor_tmp_382;
  v56 = *(v2 + 7);
  v24 = *(&v61 + 1);
  v25 = v62;
  v26 = *(&v61 + 1);
  if (*(&v61 + 1) != v62)
  {
    v26 = *(&v61 + 1);
    while (*(*v26 + 8) != 20)
    {
      if (++v26 == v62)
      {
        goto LABEL_33;
      }
    }
  }

  if (v26 != v62)
  {
    v27 = ***v26;
    if (v28)
    {
      v29 = v28 + 12;
      goto LABEL_49;
    }

LABEL_61:
    __cxa_bad_cast();
  }

LABEL_33:
  v30 = operator new(0x10uLL);
  v30[8] = 20;
  *v30 = &unk_2A1E1A4D8;
  *(v30 + 3) = 0;
  v29 = v30 + 12;
  if (v25 >= *(&v62 + 1))
  {
    v32 = v25 - v24;
    v33 = (v25 - v24) >> 3;
    v34 = v33 + 1;
    if (!((v33 + 1) >> 61))
    {
      v35 = *(&v62 + 1) - v24;
      if ((*(&v62 + 1) - v24) >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      v45 = v3;
      if (!v36)
      {
        v38 = v30 + 12;
        v39 = 0;
        goto LABEL_45;
      }

      if (!(v36 >> 61))
      {
        v37 = v30;
        v38 = v30 + 12;
        v39 = operator new(8 * v36);
        v30 = v37;
LABEL_45:
        v40 = &v39[8 * v33];
        *v40 = v30;
        v31 = v40 + 8;
        memcpy(v39, v24, v32);
        *(&v61 + 1) = v39;
        *&v62 = v31;
        *(&v62 + 1) = &v39[8 * v36];
        if (v24)
        {
          operator delete(v24);
        }

        v29 = v38;
        v3 = v45;
        goto LABEL_48;
      }

LABEL_63:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_62:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *v25 = v30;
  v31 = v25 + 8;
LABEL_48:
  *&v62 = v31;
  v23 = v54;
LABEL_49:
  v23(v53, v29);
  v48 = v3 + 264;
  v49 = QMIServiceMsg::create();
  v50 = 25000;
  v51 = 0;
  v52 = 0;
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 1174405120;
  v46[2] = ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke_3;
  v46[3] = &__block_descriptor_tmp_385;
  v46[4] = v3;
  v41 = v2[2];
  v46[5] = v2[1];
  v47 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SendVisitInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5F080;
  aBlock[4] = v46;
  v52 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v52)
  {
    _Block_release(v52);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v61);
  v42 = v2[2];
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  operator delete(v2);
  v43 = a1[2];
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  operator delete(a1);
}

void sub_296F4E5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase((v20 - 176));
  std::unique_ptr<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0,std::default_delete<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0,std::default_delete<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase13sendVisitInfoEjjENK3__0clEv_block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(a2 + 4);
        v9 = *(v5 + 40);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Failed to send visit info", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully sent visit info", v10, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ArrivalTime>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ArrivalTime>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1A488;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DepartureTime>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DepartureTime>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1A4D8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SendVisitInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F4E9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t radio::QMIDebugCommandDriverM20::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xB8uLL);
  v5 = *a1;
  v6 = a1[1];
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v14 = 0;
  }

  radio::DebugCommandDriver::DebugCommandDriver();
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  *v4 = &unk_2A1E1A510;
  *(v4 + 14) = 0;
  *(v4 + 13) = 0;
  *(v4 + 12) = v4 + 104;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0x20uLL);
  v7[1] = 0;
  v8 = v7 + 1;
  *v7 = &unk_2A1E1A7F8;
  v7[2] = 0;
  v7[3] = v4;
  a2[1] = v7;
  v9 = *(v4 + 2);
  if (v9)
  {
    if (v9->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
      *(v4 + 1) = v4;
      *(v4 + 2) = v7;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v9);
      v7 = v10;
      if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v7;
    if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v11 = v7;
      (*(*v7 + 16))(v7);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return (*(**a2 + 48))(*a2);
}

void sub_296F4EC68(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::QMIDebugCommandDriverM20> ctu::SharedSynchronizable<radio::DebugCommandDriver>::make_shared_ptr<radio::QMIDebugCommandDriverM20>(radio::QMIDebugCommandDriverM20*)::{lambda(radio::QMIDebugCommandDriverM20*)#1}::operator() const(radio::QMIDebugCommandDriverM20*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_296F4EC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F4ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t radio::QMIDebugCommandDriverM20::QMIDebugCommandDriverM20(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::DebugCommandDriver::DebugCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E1A510;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::DebugCommandDriver::DebugCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E1A510;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void radio::QMIDebugCommandDriverM20::~QMIDebugCommandDriverM20(radio::QMIDebugCommandDriverM20 *this)
{
  *this = &unk_2A1E1A510;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v8, 2u);
  }

  qmi::Client::~Client((this + 152));
  qmi::Client::~Client((this + 120));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 13));
  *this = &unk_2A1E1A7B0;
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v4 = *(this + 7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x29C268320](v2);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  radio::QMIDebugCommandDriverM20::~QMIDebugCommandDriverM20(this);

  operator delete(v1);
}

void radio::QMIDebugCommandDriverM20::init(radio::QMIDebugCommandDriverM20 *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_11_0;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::DebugCommandDriver>::execute_wrapped(this + 1, v1);
}

void ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (v1 + 104);
  v2 = *(v1 + 104);
  v4 = (v1 + 104);
  v5 = (v1 + 104);
  if (v2)
  {
    v6 = *(v1 + 104);
    while (1)
    {
      while (1)
      {
        v5 = v6;
        v7 = *(v6 + 32);
        if (v7 <= "mhi.log")
        {
          break;
        }

        v6 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= "mhi.log")
      {
        break;
      }

      v6 = v5[1];
      if (!v6)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5;
    v5 = operator new(0x30uLL);
    v5[4] = "mhi.log";
    *(v5 + 10) = 0;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = v8;
    *v4 = v5;
    v9 = **(v1 + 96);
    if (v9)
    {
      *(v1 + 96) = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v5);
    v2 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v5 + 10) = 0;
  v10 = (v1 + 104);
  v11 = (v1 + 104);
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v2;
        v12 = *(v2 + 32);
        if (v12 <= "pcie.log")
        {
          break;
        }

        v2 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 >= "pcie.log")
      {
        break;
      }

      v2 = v11[1];
      if (!v2)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = v11;
    v11 = operator new(0x30uLL);
    v11[4] = "pcie.log";
    *(v11 + 10) = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(v1 + 96);
    if (v14)
    {
      *(v1 + 96) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v11);
    ++*(v1 + 112);
  }

  *(v11 + 10) = 0;
  v15 = *v3;
  v16 = (v1 + 104);
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 32);
        if (v17 <= "ipa.log")
        {
          break;
        }

        v15 = *v16;
        v3 = v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      if (v17 >= "ipa.log")
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        v3 = v16 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v18 = v16;
    v16 = operator new(0x30uLL);
    v16[4] = "ipa.log";
    *(v16 + 10) = 0;
    *v16 = 0;
    v16[1] = 0;
    v16[2] = v18;
    *v3 = v16;
    v19 = **(v1 + 96);
    if (v19)
    {
      *(v1 + 96) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v16);
    ++*(v1 + 112);
  }

  *(v16 + 10) = 0;
  *(v1 + 88) = 0;
  v92 = 0xAAAAAAAAAAAA0063;
  v93 = 0x9AAAAAAAAAAAAAALL;
  v91 = *"debug_ipc";
  memset(v90, 170, sizeof(v90));
  Name = radio::DebugCommandDriver::getName(v1);
  v21 = 0x7FFFFFFFFFFFFFF7;
  v22 = strlen(Name);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v22 | 7) + 1;
    }

    p_dst = operator new(v29);
    *(&__dst + 1) = v23;
    v89 = v29 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v89) = v22;
    p_dst = &__dst;
    if (!v22)
    {
      LOBYTE(__dst) = 0;
      v25 = SHIBYTE(v89);
      if ((SHIBYTE(v89) & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }
  }

  memmove(p_dst, Name, v23);
  *(p_dst + v23) = 0;
  v25 = SHIBYTE(v89);
  if ((SHIBYTE(v89) & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v25 - 21 < 2)
    {
      v26 = v25 + 2;
      v27 = &__dst;
      v28 = 22;
LABEL_45:
      v30 = 2 * v28;
      if (v26 > 2 * v28)
      {
        v30 = v26;
      }

      if ((v30 | 7) == 0x17)
      {
        v31 = 25;
      }

      else
      {
        v31 = (v30 | 7) + 1;
      }

      if (v30 >= 0x17)
      {
        v21 = v31;
      }

      else
      {
        v21 = 23;
      }

      v32 = v28 == 22;
      goto LABEL_54;
    }

    v36 = &__dst;
    *(&__dst + v25) = 14906;
    v37 = v25 + 2;
    if ((SHIBYTE(v89) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

LABEL_42:
  v25 = *(&__dst + 1);
  v28 = (v89 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v28 - *(&__dst + 1) >= 2)
  {
    v36 = __dst;
    *(__dst + *(&__dst + 1)) = 14906;
    v37 = v25 + 2;
    if ((SHIBYTE(v89) & 0x80000000) == 0)
    {
LABEL_60:
      HIBYTE(v89) = v37 & 0x7F;
LABEL_63:
      v35 = v36 + v37;
      goto LABEL_64;
    }

LABEL_62:
    *(&__dst + 1) = v37;
    goto LABEL_63;
  }

  v26 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (v89 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 2 - v28)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = __dst;
  if (v28 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_45;
  }

  v32 = 0;
LABEL_54:
  v33 = operator new(v21);
  v34 = v33;
  if (v25)
  {
    memmove(v33, v27, v25);
  }

  *&v34[v25] = 14906;
  if (!v32)
  {
    operator delete(v27);
  }

  *(&__dst + 1) = v26;
  v89 = v21 | 0x8000000000000000;
  *&__dst = v34;
  v35 = &v34[v26];
LABEL_64:
  *v35 = 0;
  *v87 = __dst;
  *&v87[16] = v89;
  v89 = 0;
  __dst = 0uLL;
  if (v93 >= 0)
  {
    v38 = &v91;
  }

  else
  {
    v38 = v91;
  }

  if (v93 >= 0)
  {
    v39 = HIBYTE(v93);
  }

  else
  {
    v39 = v92;
  }

  v40 = std::string::append(v87, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  *&v90[16] = *(&v40->__r_.__value_.__l + 2);
  *v90 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if ((v87[23] & 0x80000000) != 0)
  {
    operator delete(*v87);
    if ((SHIBYTE(v89) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v89) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(__dst);
LABEL_72:
  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&__dst, *(v1 + 48));
  if (!__dst)
  {
    v61 = *(v1 + 24);
    v83 = v61;
    if (v61)
    {
      dispatch_retain(v61);
    }

    v62 = *(v1 + 16);
    if (!v62 || (v63 = *(v1 + 8), (v64 = std::__shared_weak_count::lock(v62)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v65 = v64;
    atomic_fetch_add_explicit(&v64->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v66 = std::__shared_weak_count::lock(v64);
      if (v66)
      {
LABEL_131:
        atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v82 = v66;
LABEL_132:
        std::__shared_weak_count::__release_weak(v65);
        if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v66->__on_zero_shared)(v66);
          std::__shared_weak_count::__release_weak(v66);
        }

        qmi::Client::createWithQueue();
        v67 = *&v87[16];
        *&v87[16] = 0uLL;
        v68 = *(v1 + 144);
        *(v1 + 136) = v67;
        if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
        }

        qmi::Client::~Client(v87);
        if (v82)
        {
          std::__shared_weak_count::__release_weak(v82);
        }

        v50 = v83;
        if (v83)
        {
          goto LABEL_94;
        }

        goto LABEL_95;
      }
    }

    else
    {
      (v64->__on_zero_shared)(v64);
      std::__shared_weak_count::__release_weak(v65);
      v66 = std::__shared_weak_count::lock(v65);
      if (v66)
      {
        goto LABEL_131;
      }
    }

    v82 = v66;
    goto LABEL_132;
  }

  v42 = *(v1 + 24);
  v86 = v42;
  if (v42)
  {
    dispatch_retain(v42);
  }

  v43 = *(v1 + 16);
  if (!v43 || (v44 = *(v1 + 8), (v45 = std::__shared_weak_count::lock(v43)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = v45;
  atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v46);
    v47 = std::__shared_weak_count::lock(v46);
    if (v47)
    {
      goto LABEL_79;
    }

LABEL_160:
    v85 = v47;
    goto LABEL_80;
  }

  v47 = std::__shared_weak_count::lock(v45);
  if (!v47)
  {
    goto LABEL_160;
  }

LABEL_79:
  atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v85 = v47;
LABEL_80:
  std::__shared_weak_count::__release_weak(v46);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v84 = *(&__dst + 1);
  if (*(&__dst + 1))
  {
    atomic_fetch_add_explicit((*(&__dst + 1) + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v48 = *&v87[16];
  *&v87[16] = 0uLL;
  v49 = *(v1 + 144);
  *(v1 + 136) = v48;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  qmi::Client::~Client(v87);
  if (v84 && !atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v84->__on_zero_shared)(v84);
    std::__shared_weak_count::__release_weak(v84);
  }

  if (v85)
  {
    std::__shared_weak_count::__release_weak(v85);
  }

  v50 = v86;
  if (v86)
  {
LABEL_94:
    dispatch_release(v50);
  }

LABEL_95:
  qmi::Client::setHandler();
  qmi::Client::setHandler();
  qmi::Client::start((v1 + 120));
  if (!__dst)
  {
    v69 = *(v1 + 24);
    v78 = v69;
    if (v69)
    {
      dispatch_retain(v69);
    }

    v70 = *(v1 + 16);
    if (!v70 || (v71 = *(v1 + 8), (v72 = std::__shared_weak_count::lock(v70)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v73 = v72;
    atomic_fetch_add_explicit(&v72->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v74 = std::__shared_weak_count::lock(v72);
      if (v74)
      {
LABEL_148:
        atomic_fetch_add_explicit(&v74->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v77 = v74;
LABEL_149:
        std::__shared_weak_count::__release_weak(v73);
        if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        qmi::Client::createWithQueue();
        v75 = *&v87[16];
        *&v87[16] = 0uLL;
        v76 = *(v1 + 176);
        *(v1 + 168) = v75;
        if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v76->__on_zero_shared)(v76);
          std::__shared_weak_count::__release_weak(v76);
        }

        qmi::Client::~Client(v87);
        if (v77)
        {
          std::__shared_weak_count::__release_weak(v77);
        }

        v59 = v78;
        if (v78)
        {
          goto LABEL_117;
        }

        goto LABEL_118;
      }
    }

    else
    {
      (v72->__on_zero_shared)(v72);
      std::__shared_weak_count::__release_weak(v73);
      v74 = std::__shared_weak_count::lock(v73);
      if (v74)
      {
        goto LABEL_148;
      }
    }

    v77 = v74;
    goto LABEL_149;
  }

  v51 = *(v1 + 24);
  object = v51;
  if (v51)
  {
    dispatch_retain(v51);
  }

  v52 = *(v1 + 16);
  if (!v52 || (v53 = *(v1 + 8), (v54 = std::__shared_weak_count::lock(v52)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v55 = v54;
  atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v55);
    v56 = std::__shared_weak_count::lock(v55);
    if (v56)
    {
      goto LABEL_102;
    }

LABEL_162:
    v80 = v56;
    goto LABEL_103;
  }

  v56 = std::__shared_weak_count::lock(v54);
  if (!v56)
  {
    goto LABEL_162;
  }

LABEL_102:
  atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v80 = v56;
LABEL_103:
  std::__shared_weak_count::__release_weak(v55);
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v79 = *(&__dst + 1);
  if (*(&__dst + 1))
  {
    atomic_fetch_add_explicit((*(&__dst + 1) + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v57 = *&v87[16];
  *&v87[16] = 0uLL;
  v58 = *(v1 + 176);
  *(v1 + 168) = v57;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  qmi::Client::~Client(v87);
  if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v79);
  }

  if (v80)
  {
    std::__shared_weak_count::__release_weak(v80);
  }

  v59 = object;
  if (object)
  {
LABEL_117:
    dispatch_release(v59);
  }

LABEL_118:
  qmi::Client::setHandler();
  qmi::Client::setHandler();
  qmi::Client::start((v1 + 152));
  v60 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
    if ((v90[23] & 0x80000000) == 0)
    {
LABEL_121:
      if ((SHIBYTE(v93) & 0x80000000) == 0)
      {
        return;
      }

LABEL_165:
      operator delete(v91);
      return;
    }
  }

  else if ((v90[23] & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

  operator delete(*v90);
  if (SHIBYTE(v93) < 0)
  {
    goto LABEL_165;
  }
}

void sub_296F4FE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, dispatch_object_t object, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39)
{
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v39 - 152);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D APPS started", v3, 2u);
    radio::QMIDebugCommandDriverM20::getIPCInfo_sync(v1);
  }

  else
  {
    radio::QMIDebugCommandDriverM20::getIPCInfo_sync(v1);
  }
}

void radio::QMIDebugCommandDriverM20::getIPCInfo_sync(radio::QMIDebugCommandDriverM20 *this)
{
  if (*(this + 17))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[0] = v2;
    v8[1] = v2;
    qmi::MutableMessageBase::MutableMessageBase(v8);
    v4[5] = this + 120;
    v4[6] = QMIServiceMsg::create();
    v5 = 25000;
    v6 = 0;
    v7 = 0;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___ZN5radio24QMIDebugCommandDriverM2015getIPCInfo_syncEv_block_invoke;
    v4[3] = &__block_descriptor_tmp_24_1;
    v4[4] = this;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm10GetIPCInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    aBlock[3] = &unk_29EE5F2C8;
    aBlock[4] = v4;
    v7 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v7)
    {
      _Block_release(v7);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v8);
  }

  else
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(aBlock[0]) = 0;
      _os_log_error_impl(&dword_296ECF000, v3, OS_LOG_TYPE_ERROR, "No APPS client, bail", aBlock, 2u);
    }
  }
}

void sub_296F50184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F501A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke_4(uint64_t a1, xpc_object_t object)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v9 = object;
  if (object)
  {
    v3 = object;
    xpc_retain(object);
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  xpc::object::to_string(__p, &v9);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *buf = 136315138;
  v11 = v6;
  _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "APPS server error %s", buf, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v9;
LABEL_5:
  xpc_release(v3);
  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D BSP started", v2, 2u);
  }
}

void ___ZN5radio24QMIDebugCommandDriverM204initEv_block_invoke_9(uint64_t a1, xpc_object_t object)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v9 = object;
  if (object)
  {
    v3 = object;
    xpc_retain(object);
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  xpc::object::to_string(__p, &v9);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *buf = 136315138;
  v11 = v6;
  _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "BSP server error %s", buf, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v9;
LABEL_5:
  xpc_release(v3);
  v5 = *MEMORY[0x29EDCA608];
}

void radio::QMIDebugCommandDriverM20::updateProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN5radio24QMIDebugCommandDriverM2014updatePropertyENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7__block_invoke;
  v5[3] = &__block_descriptor_tmp_12_0;
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *a2;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *a3;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
LABEL_6:
  ctu::SharedSynchronizable<radio::DebugCommandDriver>::execute_wrapped((a1 + 8), v5);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v6.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_296F505D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio24QMIDebugCommandDriverM2014updatePropertyENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = -1;
  *v7 = -1;
  v5 = 8;
  strcpy(v4, "LogLevel");
  if (*(a1 + 63) >= 0)
  {
    v3 = (a1 + 40);
  }

  else
  {
    v3 = *(a1 + 40);
  }

  if (!strcasecmp(v3, v4))
  {
    if ((util::convert<int>((a1 + 64), v7, 0) & 1) == 0)
    {
      return;
    }

    if (*v7 <= 0xFFu)
    {
      radio::QMIDebugCommandDriverM20::setMHILogLevel_sync(v2, v7[0]);
      radio::QMIDebugCommandDriverM20::setPCIeLogLevel_sync(v2, v7[0]);
      return;
    }

    goto LABEL_11;
  }

  v5 = 11;
  strcpy(v4, "PayloadSize");
  if (!strcasecmp(v3, v4) && (util::convert<int>((a1 + 64), &v6, 0) & 1) != 0)
  {
LABEL_11:
    if ((v6 & 0x80000000) == 0)
    {
      radio::QMIDebugCommandDriverM20::configMHILogPayload_sync(v2, v6);
    }
  }
}

void radio::QMIDebugCommandDriverM20::setMHILogLevel_sync(radio::QMIDebugCommandDriverM20 *this, char a2)
{
  if (*(this + 17))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v4;
    v23 = v4;
    qmi::MutableMessageBase::MutableMessageBase(&v22);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v5 = ___ZN5radio24QMIDebugCommandDriverM2019setMHILogLevel_syncEh_block_invoke;
    v19 = ___ZN5radio24QMIDebugCommandDriverM2019setMHILogLevel_syncEh_block_invoke;
    v20 = &__block_descriptor_tmp_20;
    v21 = a2;
    v6 = *(&v22 + 1);
    if (*(&v22 + 1) != v23)
    {
      while (*(*v6 + 8) != 1)
      {
        if (++v6 == v23)
        {
          goto LABEL_11;
        }
      }
    }

    if (v6 == v23)
    {
LABEL_11:
      v9 = qmi::MutableMessageBase::createTLV<apps::tlv::abm::Level>(&v22);
      v5 = v19;
    }

    else
    {
      v7 = ***v6;
      if (!v8)
      {
        __cxa_bad_cast();
      }

      v9 = v8 + 9;
    }

    v5(v18, v9);
    v13 = this + 120;
    v14 = QMIServiceMsg::create();
    v15 = 25000;
    v16 = 0;
    aBlock = 0;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZN5radio24QMIDebugCommandDriverM2019setMHILogLevel_syncEh_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_21;
    v11[4] = this;
    v12 = a2;
    *buf = MEMORY[0x29EDCA5F8];
    v25 = 0x40000000;
    v26 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm14SetMHILogLevel8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v27 = &unk_29EE5F278;
    v28 = v11;
    aBlock = _Block_copy(buf);
    qmi::Client::send();
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v22);
  }

  else
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "No APPS client, bail", buf, 2u);
    }
  }
}

void sub_296F50988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F509A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F509BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void radio::QMIDebugCommandDriverM20::setPCIeLogLevel_sync(radio::QMIDebugCommandDriverM20 *this, char a2)
{
  if (*(this + 17))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v4;
    v23 = v4;
    qmi::MutableMessageBase::MutableMessageBase(&v22);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v5 = ___ZN5radio24QMIDebugCommandDriverM2020setPCIeLogLevel_syncEh_block_invoke;
    v19 = ___ZN5radio24QMIDebugCommandDriverM2020setPCIeLogLevel_syncEh_block_invoke;
    v20 = &__block_descriptor_tmp_22_1;
    v21 = a2;
    v6 = *(&v22 + 1);
    if (*(&v22 + 1) != v23)
    {
      while (*(*v6 + 8) != 1)
      {
        if (++v6 == v23)
        {
          goto LABEL_11;
        }
      }
    }

    if (v6 == v23)
    {
LABEL_11:
      v9 = qmi::MutableMessageBase::createTLV<apps::tlv::abm::Level>(&v22);
      v5 = v19;
    }

    else
    {
      v7 = ***v6;
      if (!v8)
      {
        __cxa_bad_cast();
      }

      v9 = v8 + 9;
    }

    v5(v18, v9);
    v13 = this + 120;
    v14 = QMIServiceMsg::create();
    v15 = 25000;
    v16 = 0;
    aBlock = 0;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZN5radio24QMIDebugCommandDriverM2020setPCIeLogLevel_syncEh_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_23_1;
    v11[4] = this;
    v12 = a2;
    *buf = MEMORY[0x29EDCA5F8];
    v25 = 0x40000000;
    v26 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm15SetPCIeLogLevel8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v27 = &unk_29EE5F2A0;
    v28 = v11;
    aBlock = _Block_copy(buf);
    qmi::Client::send();
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v22);
  }

  else
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "No APPS client, bail", buf, 2u);
    }
  }
}

void sub_296F50C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F50C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F50C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void radio::QMIDebugCommandDriverM20::configMHILogPayload_sync(radio::QMIDebugCommandDriverM20 *this, int a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v4;
  v35 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v34);
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 0x40000000;
  v5 = ___ZN5radio24QMIDebugCommandDriverM2024configMHILogPayload_syncEj_block_invoke;
  v31 = ___ZN5radio24QMIDebugCommandDriverM2024configMHILogPayload_syncEj_block_invoke;
  v32 = &__block_descriptor_tmp_14_2;
  v33 = a2;
  v6 = *(&v34 + 1);
  v7 = v35;
  v8 = *(&v34 + 1);
  if (*(&v34 + 1) != v35)
  {
    v8 = *(&v34 + 1);
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v35)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v35)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E1A898;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v7 >= *(&v35 + 1))
    {
      v14 = v7 - v6;
      v15 = (v7 - v6) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v35 + 1) - v6;
      if ((*(&v35 + 1) - v6) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v12;
        v20 = v12 + 12;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 12;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v6, v14);
      *(&v34 + 1) = v21;
      *&v35 = v13;
      *(&v35 + 1) = &v21[8 * v18];
      if (v6)
      {
        operator delete(v6);
      }

      v11 = v20;
    }

    else
    {
      *v7 = v12;
      v13 = v7 + 8;
    }

    *&v35 = v13;
    v5 = v31;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 12;
  }

  v5(v30, v11);
  v25 = this + 120;
  v26 = QMIServiceMsg::create();
  v27 = 25000;
  v28 = 0;
  v29 = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 0x40000000;
  v23[2] = ___ZN5radio24QMIDebugCommandDriverM2024configMHILogPayload_syncEj_block_invoke_2;
  v23[3] = &__block_descriptor_tmp_18;
  v23[4] = this;
  v24 = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm19ConfigMHILogPayload8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5F250;
  aBlock[4] = v23;
  v29 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v29)
  {
    _Block_release(v29);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v34);
}

void sub_296F50F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F50FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F50FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
}

void sub_296F51058(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 40);

  operator delete(v2);
}

void ___ZN5radio24QMIDebugCommandDriverM2024configMHILogPayload_syncEj_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = "Failed";
    if (!*(a2 + 4))
    {
      v6 = "Success";
    }

    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Config MHI Log payload to %d: %s", v8, 0x12u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio24QMIDebugCommandDriverM2019setMHILogLevel_syncEh_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = "Failed";
    if (!*(a2 + 4))
    {
      v6 = "Success";
    }

    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Set MHI Log Level to %d: %s", v8, 0x12u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio24QMIDebugCommandDriverM2020setPCIeLogLevel_syncEh_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = "Failed";
    if (!*(a2 + 4))
    {
      v6 = "Success";
    }

    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Set PCIe Log Level to %d: %s", v8, 0x12u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio24QMIDebugCommandDriverM2015getIPCInfo_syncEv_block_invoke(uint64_t a1, qmi::MessageBase *this)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(this + 1))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v62[0]) = 0;
      _os_log_error_impl(&dword_296ECF000, v3, OS_LOG_TYPE_ERROR, "Failed to get IPC log Info", v62, 2u);
    }
  }

  else
  {
    TlvValue = qmi::MessageBase::findTlvValue(this);
    if (TlvValue)
    {
      v7 = TlvValue;
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 4);
      *(v2 + 88) = *v7;
    }

    v8 = qmi::MessageBase::findTlvValue(this);
    if (v8)
    {
      v10 = v8;
      tlv::throwIfNotEnoughBytes(v8, v8 + v9, 4);
      v11 = *v10;
      v13 = (v2 + 104);
      v12 = *(v2 + 104);
      if (v12)
      {
        while (1)
        {
          while (1)
          {
            v14 = v12;
            v15 = *(v12 + 32);
            if (v15 <= "mhi.log")
            {
              break;
            }

            v12 = *v14;
            v13 = v14;
            if (!*v14)
            {
              goto LABEL_14;
            }
          }

          if (v15 >= "mhi.log")
          {
            break;
          }

          v12 = v14[1];
          if (!v12)
          {
            v13 = v14 + 1;
            goto LABEL_14;
          }
        }
      }

      else
      {
        v14 = (v2 + 104);
LABEL_14:
        v16 = v14;
        v14 = operator new(0x30uLL);
        v14[4] = "mhi.log";
        *(v14 + 10) = 0;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v13 = v14;
        v17 = **(v2 + 96);
        if (v17)
        {
          *(v2 + 96) = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v14);
        ++*(v2 + 112);
      }

      *(v14 + 10) = v11;
    }

    v18 = qmi::MessageBase::findTlvValue(this);
    if (v18)
    {
      v20 = v18;
      tlv::throwIfNotEnoughBytes(v18, v18 + v19, 4);
      v21 = *v20;
      v23 = (v2 + 104);
      v22 = *(v2 + 104);
      if (v22)
      {
        while (1)
        {
          while (1)
          {
            v24 = v22;
            v25 = *(v22 + 32);
            if (v25 <= "pcie.log")
            {
              break;
            }

            v22 = *v24;
            v23 = v24;
            if (!*v24)
            {
              goto LABEL_26;
            }
          }

          if (v25 >= "pcie.log")
          {
            break;
          }

          v22 = v24[1];
          if (!v22)
          {
            v23 = v24 + 1;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v24 = (v2 + 104);
LABEL_26:
        v26 = v24;
        v24 = operator new(0x30uLL);
        v24[4] = "pcie.log";
        *(v24 + 10) = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[2] = v26;
        *v23 = v24;
        v27 = **(v2 + 96);
        if (v27)
        {
          *(v2 + 96) = v27;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v24);
        ++*(v2 + 112);
      }

      *(v24 + 10) = v21;
    }

    v28 = qmi::MessageBase::findTlvValue(this);
    if (v28)
    {
      v30 = v28;
      tlv::throwIfNotEnoughBytes(v28, v28 + v29, 4);
      v31 = *v30;
      v33 = (v2 + 104);
      v32 = *(v2 + 104);
      if (v32)
      {
        while (1)
        {
          while (1)
          {
            v34 = v32;
            v35 = *(v32 + 32);
            if (v35 <= "ipa.log")
            {
              break;
            }

            v32 = *v34;
            v33 = v34;
            if (!*v34)
            {
              goto LABEL_38;
            }
          }

          if (v35 >= "ipa.log")
          {
            break;
          }

          v32 = v34[1];
          if (!v32)
          {
            v33 = v34 + 1;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v34 = (v2 + 104);
LABEL_38:
        v36 = v34;
        v34 = operator new(0x30uLL);
        v34[4] = "ipa.log";
        *(v34 + 10) = 0;
        *v34 = 0;
        v34[1] = 0;
        v34[2] = v36;
        *v33 = v34;
        v37 = **(v2 + 96);
        if (v37)
        {
          *(v2 + 96) = v37;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v34);
        ++*(v2 + 112);
      }

      *(v34 + 10) = v31;
    }

    v38 = *(v2 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = (v2 + 104);
      v39 = *(v2 + 104);
      v41 = *(v2 + 88);
      v42 = (v2 + 104);
      v43 = (v2 + 104);
      if (v39)
      {
        v44 = *(v2 + 104);
        while (1)
        {
          while (1)
          {
            v43 = v44;
            v45 = *(v44 + 32);
            if (v45 <= "mhi.log")
            {
              break;
            }

            v44 = *v43;
            v42 = v43;
            if (!*v43)
            {
              goto LABEL_50;
            }
          }

          if (v45 >= "mhi.log")
          {
            break;
          }

          v44 = v43[1];
          if (!v44)
          {
            v42 = v43 + 1;
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        v46 = v43;
        v43 = operator new(0x30uLL);
        v43[4] = "mhi.log";
        *(v43 + 10) = 0;
        *v43 = 0;
        v43[1] = 0;
        v43[2] = v46;
        *v42 = v43;
        v47 = **(v2 + 96);
        if (v47)
        {
          *(v2 + 96) = v47;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v43);
        v39 = *(v2 + 104);
        ++*(v2 + 112);
      }

      v48 = *(v43 + 10);
      v49 = (v2 + 104);
      v50 = (v2 + 104);
      if (v39)
      {
        v51 = v39;
        while (1)
        {
          while (1)
          {
            v50 = v51;
            v52 = *(v51 + 32);
            if (v52 <= "pcie.log")
            {
              break;
            }

            v51 = *v50;
            v49 = v50;
            if (!*v50)
            {
              goto LABEL_60;
            }
          }

          if (v52 >= "pcie.log")
          {
            break;
          }

          v51 = v50[1];
          if (!v51)
          {
            v49 = v50 + 1;
            goto LABEL_60;
          }
        }
      }

      else
      {
LABEL_60:
        v53 = v50;
        v50 = operator new(0x30uLL);
        v50[4] = "pcie.log";
        *(v50 + 10) = 0;
        *v50 = 0;
        v50[1] = 0;
        v50[2] = v53;
        *v49 = v50;
        v54 = **(v2 + 96);
        if (v54)
        {
          *(v2 + 96) = v54;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v50);
        v39 = *(v2 + 104);
        ++*(v2 + 112);
      }

      v55 = *(v50 + 10);
      v56 = (v2 + 104);
      if (v39)
      {
        while (1)
        {
          while (1)
          {
            v56 = v39;
            v57 = *(v39 + 32);
            if (v57 <= "ipa.log")
            {
              break;
            }

            v39 = *v56;
            v40 = v56;
            if (!*v56)
            {
              goto LABEL_70;
            }
          }

          if (v57 >= "ipa.log")
          {
            break;
          }

          v39 = v56[1];
          if (!v39)
          {
            v40 = v56 + 1;
            goto LABEL_70;
          }
        }
      }

      else
      {
LABEL_70:
        v58 = v56;
        v56 = operator new(0x30uLL);
        v56[4] = "ipa.log";
        *(v56 + 10) = 0;
        *v56 = 0;
        v56[1] = 0;
        v56[2] = v58;
        *v40 = v56;
        v59 = **(v2 + 96);
        if (v59)
        {
          *(v2 + 96) = v59;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 104), v56);
        ++*(v2 + 112);
      }

      v60 = *(v56 + 10);
      v62[0] = 67109888;
      v62[1] = v41;
      v63 = 1024;
      v64 = v48;
      v65 = 1024;
      v66 = v55;
      v67 = 1024;
      v68 = v60;
      _os_log_impl(&dword_296ECF000, v38, OS_LOG_TYPE_DEFAULT, "#I IPC Info: blockSize= %d, MHI buffer=%d, PCIe buffer=%d, IPA buffer=%d", v62, 0x1Au);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F518C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v2, 6, v3, v4);
    JUMPOUT(0x296F51670);
  }

  _Unwind_Resume(a1);
}

void radio::QMIDebugCommandDriverM20::queryIPCLogs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a3;
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE20execute_wrapped_syncIZNS1_24QMIDebugCommandDriverM2012queryIPCLogsEyN8dispatch8callbackIU13block_pointerFvNS_2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_94;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void radio::QMIDebugCommandDriverM20::queryIPCLogs_sync(uint64_t a1, dispatch_time_t a2, uint64_t a3)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3802000000;
  v25[3] = __Block_byref_object_copy__5;
  v25[4] = __Block_byref_object_dispose__5;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  v26 = v6;
  v27 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3002000000;
  v22 = __Block_byref_object_copy__25;
  v23 = __Block_byref_object_dispose__26;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  v16 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v16 = Mutable;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  aBlock[3] = &unk_2A1E1A5F0;
  aBlock[7] = a1;
  cf = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  aBlock[4] = v17;
  aBlock[5] = v25;
  aBlock[6] = &v19;
  v10 = _Block_copy(aBlock);
  v15 = v10;
  radio::QMIDebugCommandDriverM20::getMHILog_sync(a1, &v15);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = v20[5];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_38;
  v12[3] = &unk_29EE5F228;
  v12[4] = v25;
  v12[5] = &v19;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_source_set_timer(v20[5], a2, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
  dispatch_activate(v20[5]);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(v25, 8);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v26)
  {
    _Block_release(v26);
  }
}

void sub_296F51D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, dispatch_object_t object)
{
  if (v37)
  {
    _Block_release(v37);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v39 + 64));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a25);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose((v40 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v38 + 40);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__26(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void radio::QMIDebugCommandDriverM20::getMHILog_sync(uint64_t a1, const void **a2)
{
  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 32);
        if (v7 <= "mhi.log")
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      if (v7 >= "mhi.log")
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = (a1 + 104);
LABEL_9:
    v8 = v6;
    v6 = operator new(0x30uLL);
    v6[4] = "mhi.log";
    *(v6 + 10) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **(a1 + 96);
    if (v9)
    {
      *(a1 + 96) = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v6);
    ++*(a1 + 112);
  }

  if (*(v6 + 10))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v22 = Mutable;
    if (Mutable)
    {
      v11 = Mutable;
      v15 = Mutable;
      CFRetain(Mutable);
      if (*a2)
      {
        v12 = _Block_copy(*a2);
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      radio::QMIDebugCommandDriverM20::getMHILogBlock_sync(a1, &v15, &v14);
      if (v12)
      {
        _Block_release(v12);
      }

      CFRelease(v11);
      CFRelease(v11);
      return;
    }

    if (*a2)
    {
      v17 = operator new(0x28uLL);
      v18 = xmmword_296FBF4C0;
      strcpy(v17, "Error on Memory allocation for MHI logs");
      CreateError();
      v16 = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &cf, &v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v18) < 0)
      {
        v13 = v17;
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_21:
    if (*a2)
    {
      __p = operator new(0x20uLL);
      v21 = xmmword_296FBE410;
      strcpy(__p, "Invalid Regioninfo for MHI");
      CreateError();
      cf = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &v22, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (SHIBYTE(v21) < 0)
      {
        v13 = __p;
LABEL_23:
        operator delete(v13);
      }
    }
  }
}

void sub_296F52040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v20 - 56));
  _Unwind_Resume(a1);
}

void sub_296F520C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v22 - 56));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1, uint64_t *a2, const void **a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 56);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "Failed to get MHI log: %@", buf, 0xCu);
    }
  }

  else if (*a3 && CFDataGetLength(*a3) >= 1)
  {
    ctu::cf::insert<char const*,__CFData const*>(*(a1 + 64), "mhi.log", *a3, *MEMORY[0x29EDB8ED8], v11);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_27;
  v12[3] = &unk_2A1E1A5B8;
  v7 = *(a1 + 64);
  v15 = v4;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = _Block_copy(v12);
  v17 = v8;
  radio::QMIDebugCommandDriverM20::getPCIeLog_sync(v4, &v17);
  if (v8)
  {
    _Block_release(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F52290(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void radio::QMIDebugCommandDriverM20::getPCIeLog_sync(uint64_t a1, const void **a2)
{
  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 32);
        if (v7 <= "pcie.log")
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      if (v7 >= "pcie.log")
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = (a1 + 104);
LABEL_9:
    v8 = v6;
    v6 = operator new(0x30uLL);
    v6[4] = "pcie.log";
    *(v6 + 10) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **(a1 + 96);
    if (v9)
    {
      *(a1 + 96) = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v6);
    ++*(a1 + 112);
  }

  if (*(v6 + 10))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v22 = Mutable;
    if (Mutable)
    {
      v11 = Mutable;
      v15 = Mutable;
      CFRetain(Mutable);
      if (*a2)
      {
        v12 = _Block_copy(*a2);
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      radio::QMIDebugCommandDriverM20::getPCIeLogBlock_sync(a1, &v15, &v14);
      if (v12)
      {
        _Block_release(v12);
      }

      CFRelease(v11);
      CFRelease(v11);
      return;
    }

    if (*a2)
    {
      v17 = operator new(0x30uLL);
      v18 = xmmword_296FBF4D0;
      strcpy(v17, "Error on Memory allocation for PCIe log block");
      CreateError();
      v16 = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &cf, &v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v18) < 0)
      {
        v13 = v17;
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_21:
    if (*a2)
    {
      __p = operator new(0x20uLL);
      v21 = xmmword_296FBF4E0;
      strcpy(__p, "Invalid Regioninfo for PCIe");
      CreateError();
      cf = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &v22, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (SHIBYTE(v21) < 0)
      {
        v13 = __p;
LABEL_23:
        operator delete(v13);
      }
    }
  }
}

void sub_296F52558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v20 - 56));
  _Unwind_Resume(a1);
}

void sub_296F525DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v22 - 56));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_27(uint64_t a1, uint64_t *a2, const void **a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 56);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "Failed to get PCIe log: %@", buf, 0xCu);
    }
  }

  else if (*a3 && CFDataGetLength(*a3) >= 1)
  {
    ctu::cf::insert<char const*,__CFData const*>(*(a1 + 64), "pcie.log", *a3, *MEMORY[0x29EDB8ED8], v11);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_28;
  v12[3] = &unk_2A1E1A580;
  v7 = *(a1 + 64);
  v15 = v4;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = _Block_copy(v12);
  v17 = v8;
  radio::QMIDebugCommandDriverM20::getIPALog_sync(v4, &v17);
  if (v8)
  {
    _Block_release(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F527A8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void radio::QMIDebugCommandDriverM20::getIPALog_sync(uint64_t a1, const void **a2)
{
  if (!*(a1 + 88))
  {
    goto LABEL_21;
  }

  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 32);
        if (v7 <= "ipa.log")
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      if (v7 >= "ipa.log")
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = (a1 + 104);
LABEL_9:
    v8 = v6;
    v6 = operator new(0x30uLL);
    v6[4] = "ipa.log";
    *(v6 + 10) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **(a1 + 96);
    if (v9)
    {
      *(a1 + 96) = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v6);
    ++*(a1 + 112);
  }

  if (*(v6 + 10))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v22 = Mutable;
    if (Mutable)
    {
      v11 = Mutable;
      v15 = Mutable;
      CFRetain(Mutable);
      if (*a2)
      {
        v12 = _Block_copy(*a2);
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      radio::QMIDebugCommandDriverM20::getIPALogBlock_sync(a1, &v15, &v14);
      if (v12)
      {
        _Block_release(v12);
      }

      CFRelease(v11);
      CFRelease(v11);
      return;
    }

    if (*a2)
    {
      v17 = operator new(0x30uLL);
      v18 = xmmword_296FBF4F0;
      strcpy(v17, "Error on Memory allocation for IPA log block");
      CreateError();
      v16 = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &cf, &v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v18) < 0)
      {
        v13 = v17;
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_21:
    if (*a2)
    {
      __p = operator new(0x20uLL);
      v21 = xmmword_296FBE410;
      strcpy(__p, "Invalid Regioninfo for IPA");
      CreateError();
      cf = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*a2, &v22, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (SHIBYTE(v21) < 0)
      {
        v13 = __p;
LABEL_23:
        operator delete(v13);
      }
    }
  }
}

void sub_296F52A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v20 - 56));
  _Unwind_Resume(a1);
}

void sub_296F52AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v22 - 56));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_28(uint64_t a1, uint64_t *a2, const void **a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*a2)
  {
    v5 = *(*(a1 + 56) + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block) = 138412290;
      *(&block + 4) = v4;
      _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, "Failed to get IPA log: %@", &block, 0xCu);
    }
  }

  else if (*a3 && CFDataGetLength(*a3) >= 1)
  {
    ctu::cf::insert<char const*,__CFData const*>(*(a1 + 64), "ipa.log", *a3, *MEMORY[0x29EDB8ED8], v11);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v6 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 40);
  v7 = v6 + 40;
  if (v8 && *(*(*(a1 + 40) + 8) + 48))
  {
    cf = 0xAAAAAAAAAAAAAAAALL;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v9 = 0;
      cf = 0;
    }

    else
    {
      __p = operator new(0x20uLL);
      strcpy(__p, "Failed to capture BBIPC logs");
      CreateError();
      operator delete(__p);
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v7 = *(*(a1 + 40) + 8) + 40;
      CFRetain(0xAAAAAAAAAAAAAAAALL);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      CFRetain(*(a1 + 64));
    }

    if (*v7)
    {
      v13 = _Block_copy(*v7);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v7 + 8);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    v23 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_2;
    v24 = &__block_descriptor_tmp_95_0;
    if (v13)
    {
      aBlock = _Block_copy(v13);
      v26 = v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      aBlock = 0;
      v26 = v9;
      if (!v9)
      {
LABEL_22:
        v27 = v12;
        if (v12)
        {
          CFRetain(v12);
        }

        dispatch_async(v14, &block);
        if (v27)
        {
          CFRelease(v27);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = 0;
        if (v16)
        {
          _Block_release(v16);
        }

        v17 = *(v15 + 48);
        *(v15 + 48) = 0;
        if (v17)
        {
          dispatch_release(v17);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_42;
      }
    }

    CFRetain(v9);
    goto LABEL_22;
  }

LABEL_42:
  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    dispatch_source_cancel(v18);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_296F52E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFTypeRef __copy_helper_block_e8_64c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_64c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN5radio24QMIDebugCommandDriverM2017queryIPCLogs_syncEyN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_38(uint64_t a1)
{
  __p = operator new(0x20uLL);
  strcpy(__p, "timeout on query IPC logs");
  CreateError();
  operator delete(__p);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 40) && *(v2 + 48))
  {
    CFRetain(0xAAAAAAAAAAAAAAAALL);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = _Block_copy(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_1;
    block[3] = &__block_descriptor_tmp_96;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      v13 = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      aBlock = 0;
      v13 = 0xAAAAAAAAAAAAAAAALL;
    }

    CFRetain(0xAAAAAAAAAAAAAAAALL);
    v14 = 0;
    dispatch_async(v5, block);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
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
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
    if (v7)
    {
      _Block_release(v7);
    }

    v8 = *(v6 + 48);
    *(v6 + 48) = 0;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
}

void sub_296F53114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(uint64_t a1, const void **a2, CFTypeRef *a3)
{
  v3 = *a2;
  *a2 = 0;
  cf = *a3;
  v5 = v3;
  *a3 = 0;
  (*(a1 + 16))(a1, &v5, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F5319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void radio::QMIDebugCommandDriverM20::getIPALogBlock_sync(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 168))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v6;
    v18[1] = v6;
    qmi::MutableMessageBase::MutableMessageBase(v18);
    v13 = a1 + 152;
    v14 = QMIServiceMsg::create();
    v15 = 25000;
    v16 = 0;
    v17 = 0;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN5radio24QMIDebugCommandDriverM2019getIPALogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_44_3;
    v10[4] = a1;
    if (*a3)
    {
      v7 = _Block_copy(*a3);
      v8 = *a2;
      v11 = v7;
      cf = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *a2;
      v11 = 0;
      cf = v8;
      if (!v8)
      {
LABEL_9:
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm10GetIPALogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
        aBlock[3] = &unk_29EE5F310;
        aBlock[4] = v10;
        v17 = _Block_copy(aBlock);
        qmi::Client::send();
        if (v17)
        {
          _Block_release(v17);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v18);
        return;
      }
    }

    CFRetain(v8);
    goto LABEL_9;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "No BSP client, bail", aBlock, 2u);
  }
}

void sub_296F533BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v21 + 48));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  _Unwind_Resume(a1);
}

void sub_296F533F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZN5radio24QMIDebugCommandDriverM2019getIPALogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = _Block_copy(v4);
  }

  else
  {
    v6 = 0;
  }

  v36 = 1;
  v35.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v35.__r_.__value_.__r.__words[1] = xmmword_296FBC2F0;
  strcpy(v35.__r_.__value_.__l.__data_, "Error on GetIPALogs response");
  if (*(a2 + 1))
  {
    goto LABEL_54;
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 2);
    v10 = *v9;
    cf = v5;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = *(a1 + 48);
    aBlock = 0;
    v30 = 0;
    v31 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  cf = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = _Block_copy(v6);
  v12 = *(a1 + 48);
  aBlock = v11;
  v30 = v11;
  v31 = v12;
  if (v12)
  {
LABEL_11:
    CFRetain(v12);
  }

LABEL_12:
  v32 = v10;
  v33 = &v36;
  v34 = &v35;
  v14 = qmi::MessageBase::findTlvValue(a2);
  if (!v14)
  {
    goto LABEL_50;
  }

  bytes = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&bytes, v14, &v14[v13], v13);
  v15 = *(v5 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(v12);
    *buf = 67109376;
    *&buf[4] = v10;
    v42 = 2048;
    v43 = Length;
    _os_log_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEFAULT, "#I Reading IPA log block(size %u), data:%ld", buf, 0x12u);
  }

  if (*(v5 + 88) < v10)
  {
    std::string::__assign_external(&v35, "Block size error on getting IPA Logs", 0x24uLL);
    goto LABEL_48;
  }

  if (!v10)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      *v35.__r_.__value_.__l.__data_ = 0;
      v35.__r_.__value_.__l.__size_ = 0;
      v17 = bytes;
      if (!bytes)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v35.__r_.__value_.__s.__data_[0] = 0;
      *(&v35.__r_.__value_.__s + 23) = 0;
      v17 = bytes;
      if (!bytes)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    *v35.__r_.__value_.__l.__data_ = 0;
    v35.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v35.__r_.__value_.__s.__data_[0] = 0;
    *(&v35.__r_.__value_.__s + 23) = 0;
  }

  CFDataAppendBytes(v12, bytes, v10);
  v26 = CFDataGetLength(v12);
  v19 = (v5 + 104);
  v18 = *(v5 + 104);
  if (!v18)
  {
    v20 = (v5 + 104);
LABEL_31:
    v22 = operator new(0x30uLL);
    v22[4] = "ipa.log";
    *(v22 + 10) = 0;
    *v22 = 0;
    v22[1] = 0;
    v22[2] = v20;
    *v19 = v22;
    v23 = **(v5 + 96);
    if (v23)
    {
      *(v5 + 96) = v23;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v22);
    ++*(v5 + 112);
    if (v26 >= *(v22 + 10))
    {
      goto LABEL_48;
    }

LABEL_38:
    *buf = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (aBlock)
    {
      v24 = _Block_copy(aBlock);
    }

    else
    {
      v24 = 0;
    }

    v40 = v24;
    radio::QMIDebugCommandDriverM20::getIPALogBlock_sync(v5, buf, &v40);
    if (v24)
    {
      _Block_release(v24);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v36 = 0;
    goto LABEL_48;
  }

  while (1)
  {
    while (1)
    {
      v20 = v18;
      v21 = v18[4];
      if (v21 <= "ipa.log")
      {
        break;
      }

      v18 = *v20;
      v19 = v20;
      if (!*v20)
      {
        goto LABEL_31;
      }
    }

    if (v21 >= "ipa.log")
    {
      break;
    }

    v18 = v20[1];
    if (!v18)
    {
      v19 = v20 + 1;
      goto LABEL_31;
    }
  }

  if (v26 < *(v20 + 10))
  {
    goto LABEL_38;
  }

LABEL_48:
  v17 = bytes;
  if (bytes)
  {
LABEL_49:
    v38 = v17;
    operator delete(v17);
  }

LABEL_50:
  if (v12)
  {
    CFRelease(v12);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

LABEL_54:
  if (!v6)
  {
    goto LABEL_70;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v35.__r_.__value_.__l.__size_)
    {
      std::string::__init_copy_ctor_external(&v28, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
      goto LABEL_60;
    }

LABEL_66:
    if (v36 == 1)
    {
      cf = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData> const&>(v6, &cf, *(a1 + 48));
      if (cf)
      {
        CFRelease(cf);
      }
    }

    goto LABEL_69;
  }

  if (!*(&v35.__r_.__value_.__s + 23))
  {
    goto LABEL_66;
  }

  v28 = v35;
LABEL_60:
  CreateError();
  bytes = 0;
  dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(v6, &cf, &bytes);
  if (bytes)
  {
    CFRelease(bytes);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

LABEL_69:
  _Block_release(v6);
LABEL_70:
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_296F53934(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (v35)
  {
    _Block_release(v35);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v36 - 128));
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _ZZZN5radio24QMIDebugCommandDriverM2019getIPALogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEEEUb0_EN3__6D1Ev(&a20);
  if (a31 < 0)
  {
    operator delete(a26);
    if (!v34)
    {
      goto LABEL_11;
    }
  }

  else if (!v34)
  {
LABEL_11:
    JUMPOUT(0x296F53A6CLL);
  }

  _Block_release(v34);
  goto LABEL_11;
}

void sub_296F53A64(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZZZN5radio24QMIDebugCommandDriverM2019getIPALogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEEEUb0_EN3__6D1Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData> const&>(uint64_t a1, CFTypeRef *a2, CFTypeRef cf)
{
  v7 = *a2;
  *a2 = 0;
  if (cf && (v5 = CFGetTypeID(cf), v5 == CFDataGetTypeID()))
  {
    cfa = cf;
    CFRetain(cf);
  }

  else
  {
    cfa = 0;
  }

  (*(a1 + 16))(a1, &v7, &cfa);
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296F53B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296F53B88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c93_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK8__CFDataEEEEE48c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    result = *(a2 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c93_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK8__CFDataEEEEE48c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::QMIDebugCommandDriverM20::getPCIeLogBlock_sync(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 136))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v6;
    v18[1] = v6;
    qmi::MutableMessageBase::MutableMessageBase(v18);
    v13 = a1 + 120;
    v14 = QMIServiceMsg::create();
    v15 = 25000;
    v16 = 0;
    v17 = 0;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN5radio24QMIDebugCommandDriverM2020getPCIeLogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_50_1;
    v10[4] = a1;
    if (*a3)
    {
      v7 = _Block_copy(*a3);
      v8 = *a2;
      v11 = v7;
      cf = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *a2;
      v11 = 0;
      cf = v8;
      if (!v8)
      {
LABEL_9:
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm11GetPCIeLogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
        aBlock[3] = &unk_29EE5F338;
        aBlock[4] = v10;
        v17 = _Block_copy(aBlock);
        qmi::Client::send();
        if (v17)
        {
          _Block_release(v17);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v18);
        return;
      }
    }

    CFRetain(v8);
    goto LABEL_9;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "No APPS client, bail", aBlock, 2u);
  }
}

void sub_296F53E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v21 + 48));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  _Unwind_Resume(a1);
}

void sub_296F53E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio24QMIDebugCommandDriverM2020getPCIeLogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = _Block_copy(v4);
  }

  else
  {
    v6 = 0;
  }

  v36 = 1;
  v35.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v35.__r_.__value_.__r.__words[1] = xmmword_296FBF510;
  strcpy(v35.__r_.__value_.__l.__data_, "Error on GetPCIeLogs response");
  if (*(a2 + 1))
  {
    goto LABEL_54;
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 2);
    v10 = *v9;
    cf = v5;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = *(a1 + 48);
    aBlock = 0;
    v30 = 0;
    v31 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  cf = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = _Block_copy(v6);
  v12 = *(a1 + 48);
  aBlock = v11;
  v30 = v11;
  v31 = v12;
  if (v12)
  {
LABEL_11:
    CFRetain(v12);
  }

LABEL_12:
  v32 = v10;
  v33 = &v36;
  v34 = &v35;
  v14 = qmi::MessageBase::findTlvValue(a2);
  if (!v14)
  {
    goto LABEL_50;
  }

  bytes = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&bytes, v14, &v14[v13], v13);
  v15 = *(v5 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(v12);
    *buf = 67109376;
    *&buf[4] = v10;
    v42 = 2048;
    v43 = Length;
    _os_log_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEFAULT, "#I Reading PCIe log block(size %u), data:%ld", buf, 0x12u);
  }

  if (*(v5 + 88) < v10)
  {
    std::string::__assign_external(&v35, "Block size error on getting PCIe Logs", 0x25uLL);
    goto LABEL_48;
  }

  if (!v10)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      *v35.__r_.__value_.__l.__data_ = 0;
      v35.__r_.__value_.__l.__size_ = 0;
      v17 = bytes;
      if (!bytes)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v35.__r_.__value_.__s.__data_[0] = 0;
      *(&v35.__r_.__value_.__s + 23) = 0;
      v17 = bytes;
      if (!bytes)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    *v35.__r_.__value_.__l.__data_ = 0;
    v35.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v35.__r_.__value_.__s.__data_[0] = 0;
    *(&v35.__r_.__value_.__s + 23) = 0;
  }

  CFDataAppendBytes(v12, bytes, v10);
  v26 = CFDataGetLength(v12);
  v19 = (v5 + 104);
  v18 = *(v5 + 104);
  if (!v18)
  {
    v20 = (v5 + 104);
LABEL_31:
    v22 = operator new(0x30uLL);
    v22[4] = "pcie.log";
    *(v22 + 10) = 0;
    *v22 = 0;
    v22[1] = 0;
    v22[2] = v20;
    *v19 = v22;
    v23 = **(v5 + 96);
    if (v23)
    {
      *(v5 + 96) = v23;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v22);
    ++*(v5 + 112);
    if (v26 >= *(v22 + 10))
    {
      goto LABEL_48;
    }

LABEL_38:
    *buf = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (aBlock)
    {
      v24 = _Block_copy(aBlock);
    }

    else
    {
      v24 = 0;
    }

    v40 = v24;
    radio::QMIDebugCommandDriverM20::getPCIeLogBlock_sync(v5, buf, &v40);
    if (v24)
    {
      _Block_release(v24);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v36 = 0;
    goto LABEL_48;
  }

  while (1)
  {
    while (1)
    {
      v20 = v18;
      v21 = v18[4];
      if (v21 <= "pcie.log")
      {
        break;
      }

      v18 = *v20;
      v19 = v20;
      if (!*v20)
      {
        goto LABEL_31;
      }
    }

    if (v21 >= "pcie.log")
    {
      break;
    }

    v18 = v20[1];
    if (!v18)
    {
      v19 = v20 + 1;
      goto LABEL_31;
    }
  }

  if (v26 < *(v20 + 10))
  {
    goto LABEL_38;
  }

LABEL_48:
  v17 = bytes;
  if (bytes)
  {
LABEL_49:
    v38 = v17;
    operator delete(v17);
  }

LABEL_50:
  if (v12)
  {
    CFRelease(v12);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

LABEL_54:
  if (!v6)
  {
    goto LABEL_70;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v35.__r_.__value_.__l.__size_)
    {
      std::string::__init_copy_ctor_external(&v28, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
      goto LABEL_60;
    }

LABEL_66:
    if (v36 == 1)
    {
      cf = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData> const&>(v6, &cf, *(a1 + 48));
      if (cf)
      {
        CFRelease(cf);
      }
    }

    goto LABEL_69;
  }

  if (!*(&v35.__r_.__value_.__s + 23))
  {
    goto LABEL_66;
  }

  v28 = v35;
LABEL_60:
  CreateError();
  bytes = 0;
  dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(v6, &cf, &bytes);
  if (bytes)
  {
    CFRelease(bytes);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

LABEL_69:
  _Block_release(v6);
LABEL_70:
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_296F54384(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (v35)
  {
    _Block_release(v35);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v36 - 128));
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _ZZZN5radio24QMIDebugCommandDriverM2020getPCIeLogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEEEUb1_EN3__8D1Ev(&a20);
  if (a31 < 0)
  {
    operator delete(a26);
    if (!v34)
    {
      goto LABEL_11;
    }
  }

  else if (!v34)
  {
LABEL_11:
    JUMPOUT(0x296F544BCLL);
  }

  _Block_release(v34);
  goto LABEL_11;
}

void sub_296F544B4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZZZN5radio24QMIDebugCommandDriverM2020getPCIeLogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEEEUb1_EN3__8D1Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void radio::QMIDebugCommandDriverM20::getMHILogBlock_sync(uint64_t a1, const void **a2, void **a3)
{
  if (*(a1 + 136))
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3002000000;
    v22 = __Block_byref_object_copy__53;
    v23 = __Block_byref_object_dispose__54;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v5 = *a3;
    if (*a3)
    {
      v5 = _Block_copy(v5);
    }

    v24 = v5;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2000000000;
    v18 = 1;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[0] = v6;
    v16[1] = v6;
    qmi::MutableMessageBase::MutableMessageBase(v16);
    v11 = a1 + 120;
    v12 = QMIServiceMsg::create();
    v13 = 25000;
    v14 = 0;
    v15 = 0;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZN5radio24QMIDebugCommandDriverM2019getMHILogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke;
    v9[3] = &unk_2A1E1A6C0;
    v7 = *a2;
    v9[6] = a1;
    cf = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v9[4] = buf;
    v9[5] = v17;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm10GetMHILogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    aBlock[3] = &unk_29EE5F360;
    aBlock[4] = v9;
    v15 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v15)
    {
      _Block_release(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v16);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(buf, 8);
    if (v24)
    {
      _Block_release(v24);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "No APPS client, bail", buf, 2u);
    }
  }
}

void sub_296F5475C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v27 + 56));
  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 144), 8);
  v30 = *(v28 - 104);
  if (v30)
  {
    _Block_release(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN5radio24QMIDebugCommandDriverM2019getMHILogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v4 = *(a1 + 48);
  v27 = 0;
  v28 = &v27;
  v29 = 0x4002000000;
  v30 = __Block_byref_object_copy__55;
  v31 = __Block_byref_object_dispose__56;
  __p = operator new(0x20uLL);
  v33 = xmmword_296FBC2F0;
  strcpy(__p, "Error on GetMHILogs response");
  if (!*(a2 + 1))
  {
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v7 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 2);
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 1174405120;
    v20 = ___ZN5radio24QMIDebugCommandDriverM2019getMHILogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke_58;
    v21 = &unk_2A1E1A688;
    v26 = v8;
    v9 = *(a1 + 56);
    v24 = v4;
    cf = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = &v27;
    v23 = *(a1 + 32);
    v11 = qmi::MessageBase::findTlvValue(a2);
    if (v11)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v11, &v11[v10], v10);
      v20(v19, &v34);
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  if (v13)
  {
    if (*(v28 + 63) < 0)
    {
      v14 = v28[6];
      if (v14)
      {
        std::string::__init_copy_ctor_external(&v18, v28[5], v14);
        goto LABEL_18;
      }
    }

    else if (*(v28 + 63))
    {
      v18 = *(v28 + 5);
LABEL_18:
      CreateError();
      v17 = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>>(*(v12 + 40), &v34, &v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

LABEL_27:
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
      if (v16)
      {
        _Block_release(v16);
      }

      goto LABEL_29;
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v34 = 0;
      dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData const>)>::operator()<ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFData> const&>(v13, &v34, *(a1 + 56));
      if (v34)
      {
        CFRelease(v34);
      }
    }

    goto LABEL_27;
  }

LABEL_29:
  _Block_object_dispose(&v27, 8);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }
}

void sub_296F54AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v37 - 88));
  _Block_object_dispose(&a27, 8);
  if ((a37 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__55(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__56(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN5radio24QMIDebugCommandDriverM2019getMHILogBlock_syncEN3ctu2cf11CFSharedRefI8__CFDataEEN8dispatch5blockIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke_58(uint64_t a1, const UInt8 **a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 56);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 72);
    Length = CFDataGetLength(*(a1 + 64));
    *buf = 67109376;
    v25 = v6;
    v26 = 2048;
    v27 = Length;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Reading MHI log block(size: %u), data: %ld", buf, 0x12u);
  }

  if (*(v4 + 88) < *(a1 + 72))
  {
    std::string::__assign_external((*(*(a1 + 32) + 8) + 40), "Block size error on getting MHI Logs", 0x24uLL);
    goto LABEL_34;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 63);
  if (!*(a1 + 72))
  {
    if (v9 < 0)
    {
      **(v8 + 40) = 0;
      *(v8 + 48) = 0;
    }

    else
    {
      *(v8 + 40) = 0;
      *(v8 + 63) = 0;
    }

    goto LABEL_34;
  }

  if (v9 < 0)
  {
    **(v8 + 40) = 0;
    *(v8 + 48) = 0;
  }

  else
  {
    *(v8 + 40) = 0;
    *(v8 + 63) = 0;
  }

  CFDataAppendBytes(*(a1 + 64), *a2, *(a1 + 72));
  v10 = CFDataGetLength(*(a1 + 64));
  v11 = v10;
  v13 = (v4 + 104);
  v12 = *(v4 + 104);
  if (!v12)
  {
    v14 = (v4 + 104);
LABEL_18:
    v16 = operator new(0x30uLL);
    v16[4] = "mhi.log";
    *(v16 + 10) = 0;
    *v16 = 0;
    v16[1] = 0;
    v16[2] = v14;
    *v13 = v16;
    v17 = **(v4 + 96);
    if (v17)
    {
      *(v4 + 96) = v17;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v4 + 104), v16);
    ++*(v4 + 112);
    if (v11 >= *(v16 + 10))
    {
      goto LABEL_34;
    }

LABEL_24:
    v18 = *(a1 + 64);
    v23 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = *(*(*(a1 + 40) + 8) + 40);
    if (v19)
    {
      v20 = _Block_copy(v19);
    }

    else
    {
      v20 = 0;
    }

    v22 = v20;
    radio::QMIDebugCommandDriverM20::getMHILogBlock_sync(v4, &v23, &v22);
    if (v20)
    {
      _Block_release(v20);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    while (1)
    {
      v14 = v12;
      v15 = v12[4];
      if (v15 <= "mhi.log")
      {
        break;
      }

      v12 = *v14;
      v13 = v14;
      if (!*v14)
      {
        goto LABEL_18;
      }
    }

    if (v15 >= "mhi.log")
    {
      break;
    }

    v12 = v14[1];
    if (!v12)
    {
      v13 = v14 + 1;
      goto LABEL_18;
    }
  }

  if (v10 < *(v14 + 10))
  {
    goto LABEL_24;
  }

LABEL_34:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_296F54EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef __copy_helper_block_e8_64c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_64c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

CFTypeRef __copy_helper_block_e8_56c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_56c37_ZTSN3ctu2cf11CFSharedRefI8__CFDataEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__shared_ptr_pointer<radio::QMIDebugCommandDriverM20 *,std::shared_ptr<radio::QMIDebugCommandDriverM20> ctu::SharedSynchronizable<radio::DebugCommandDriver>::make_shared_ptr<radio::QMIDebugCommandDriverM20>(radio::QMIDebugCommandDriverM20*)::{lambda(radio::QMIDebugCommandDriverM20 *)#1},std::allocator<radio::QMIDebugCommandDriverM20>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::QMIDebugCommandDriverM20 *,std::shared_ptr<radio::QMIDebugCommandDriverM20> ctu::SharedSynchronizable<radio::DebugCommandDriver>::make_shared_ptr<radio::QMIDebugCommandDriverM20>(radio::QMIDebugCommandDriverM20*)::{lambda(radio::QMIDebugCommandDriverM20 *)#1},std::allocator<radio::QMIDebugCommandDriverM20>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE15make_shared_ptrINS1_24QMIDebugCommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE15make_shared_ptrINS1_24QMIDebugCommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE15make_shared_ptrINS1_24QMIDebugCommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE15make_shared_ptrINS1_24QMIDebugCommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::QMIDebugCommandDriverM20> ctu::SharedSynchronizable<radio::DebugCommandDriver>::make_shared_ptr<radio::QMIDebugCommandDriverM20>(radio::QMIDebugCommandDriverM20*)::{lambda(radio::QMIDebugCommandDriverM20*)#1}::operator() const(radio::QMIDebugCommandDriverM20*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<radio::DebugCommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1A840;
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

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIKN5radio18DebugCommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIKN5radio18DebugCommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<apps::tlv::abm::length>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<apps::tlv::abm::length>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1A898;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm19ConfigMHILogPayload8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F55400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::createTLV<apps::tlv::abm::Level>(void *a1)
{
  v2 = operator new(0x10uLL);
  v3 = v2;
  v2[4] = 1;
  *v2 = &unk_2A1E1A8E8;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
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
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(8 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    *v14 = v3;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<apps::tlv::abm::Level>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<apps::tlv::abm::Level>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A8E8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm14SetMHILogLevel8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F556B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm15SetPCIeLogLevel8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F557D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm10GetIPCInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F558EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableIN5radio18DebugCommandDriverEE20execute_wrapped_syncIZNS1_24QMIDebugCommandDriverM2012queryIPCLogsEyN8dispatch8callbackIU13block_pointerFvNS_2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = **(v1 + 8);
  v4 = *(v1 + 16);
  if (*v4)
  {
    v5 = _Block_copy(*v4);
    v6 = *(v4 + 8);
    v7 = v5;
    v8 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  v6 = *(v4 + 8);
  v7 = 0;
  v8 = v6;
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  radio::QMIDebugCommandDriverM20::queryIPCLogs_sync(v2, v3, &v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm10GetIPALogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F55AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm11GetPCIeLogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F55BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm10GetMHILogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F55D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t coredump::QMICommandDriverM20::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v17 = 0;
  }

  v16 = v6;
  coredump::CommandDriver::CommandDriver(v4, &v16);
  v8 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *v5 = &unk_2A1E1A980;
  *(v5 + 17) = 0u;
  *(v5 + 19) = 0u;
  *a2 = v5;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = operator new(0x20uLL);
  v9[1] = 0;
  v10 = v9 + 1;
  *v9 = &unk_2A1E1B030;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  v11 = v5[2];
  if (v11)
  {
    if (v11->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
      v5[1] = v5;
      v5[2] = v9;
      v12 = v9;
      std::__shared_weak_count::__release_weak(v11);
      v9 = v12;
      if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    v5[1] = v5;
    v5[2] = v9;
    if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v13 = v9;
      (*(*v9 + 16))(v9);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return (***a2)(*a2);
}

void sub_296F55FB0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<coredump::QMICommandDriverM20> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::QMICommandDriverM20>(coredump::QMICommandDriverM20*)::{lambda(coredump::QMICommandDriverM20*)#1}::operator() const(coredump::QMICommandDriverM20*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_296F55FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F55FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t coredump::QMICommandDriverM20::QMICommandDriverM20(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coredump::CommandDriver::CommandDriver(a1, v5);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_2A1E1A980;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coredump::CommandDriver::CommandDriver(a1, v5);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_2A1E1A980;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void *coredump::CommandDriver::CommandDriver(void *a1, void *a2)
{
  v51 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E1AB38;
  v4 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v45, "com.apple.telephony.abm", "coredump.drv");
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create("coredump.drv", v5);
  *v4 = 0;
  v4[1] = 0;
  a1[3] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[4] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C268310](a1 + 5, v44);
  MEMORY[0x29C268320](v44);
  ctu::OsLogContext::~OsLogContext(&v45);
  *a1 = &unk_2A1E1AB38;
  a1[6] = &unk_2A1E1AB80;
  v8 = operator new(0x28uLL);
  v9 = operator new(0x20uLL);
  v45 = &v45;
  v46 = &v45;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = &v49;
  v10 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::grouped_list(v10, &v45);
  *v9 = v10;
  *(v9 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(v10, v9 + 1);
  v11 = operator new(1uLL);
  *(v9 + 3) = 0;
  *(v9 + 2) = v11;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v11, v9 + 3);
  *v8 = v9;
  v8[1] = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(v9, v8 + 1);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v49);
  if (v47)
  {
    v12 = v46;
    v13 = *(v45 + 8);
    v14 = *v46;
    *(v14 + 8) = v13;
    *v13 = v14;
    v47 = 0;
    if (v12 != &v45)
    {
      do
      {
        v15 = v12[1];
        v16 = v12[3];
        if (v16)
        {
          if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v16 + 16))(v16);
            if (atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v16 + 24))(v16);
            }
          }
        }

        operator delete(v12);
        v12 = v15;
      }

      while (v15 != &v45);
    }
  }

  v8[2] = **v8;
  v17 = operator new(0x40uLL);
  pthread_mutex_init(v17, 0);
  v8[4] = 0;
  v8[3] = v17;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v17, v8 + 4);
  a1[8] = 0;
  a1[7] = v8;
  v18 = operator new(0x18uLL);
  v18[1] = 0x100000001;
  *v18 = &unk_2A1E1AD70;
  v18[2] = v8;
  a1[8] = v18;
  a1[9] = &unk_2A1E1ADD0;
  v19 = operator new(0x28uLL);
  v20 = operator new(0x20uLL);
  v45 = &v45;
  v46 = &v45;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = &v49;
  v21 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::grouped_list(v21, &v45);
  *v20 = v21;
  *(v20 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(v21, v20 + 1);
  v22 = operator new(1uLL);
  *(v20 + 3) = 0;
  *(v20 + 2) = v22;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v22, v20 + 3);
  *v19 = v20;
  v19[1] = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(v20, v19 + 1);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v49);
  if (v47)
  {
    v23 = v46;
    v24 = *(v45 + 8);
    v25 = *v46;
    *(v25 + 8) = v24;
    *v24 = v25;
    v47 = 0;
    if (v23 != &v45)
    {
      do
      {
        v26 = v23[1];
        v27 = v23[3];
        if (v27)
        {
          if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v27 + 16))(v27);
            if (atomic_fetch_add(v27 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v27 + 24))(v27);
            }
          }
        }

        operator delete(v23);
        v23 = v26;
      }

      while (v26 != &v45);
    }
  }

  v19[2] = **v19;
  v28 = operator new(0x40uLL);
  pthread_mutex_init(v28, 0);
  v19[4] = 0;
  v19[3] = v28;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v28, v19 + 4);
  a1[11] = 0;
  a1[10] = v19;
  v29 = operator new(0x18uLL);
  v29[1] = 0x100000001;
  *v29 = &unk_2A1E1AF00;
  v29[2] = v19;
  a1[11] = v29;
  a1[12] = &unk_2A1E1AF60;
  v30 = operator new(0x28uLL);
  v31 = operator new(0x20uLL);
  v45 = &v45;
  v46 = &v45;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = &v49;
  v32 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v32, &v45);
  *v31 = v32;
  *(v31 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v31, v32, v31 + 1);
  v33 = operator new(1uLL);
  *(v31 + 3) = 0;
  *(v31 + 2) = v33;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v33, v31 + 3);
  *v30 = v31;
  v30[1] = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v30, v31, v30 + 1);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v48, v49);
  if (v47)
  {
    v34 = v46;
    v35 = *(v45 + 8);
    v36 = *v46;
    *(v36 + 8) = v35;
    *v35 = v36;
    v47 = 0;
    if (v34 != &v45)
    {
      do
      {
        v37 = v34[1];
        v38 = v34[3];
        if (v38)
        {
          if (atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v38 + 16))(v38);
            if (atomic_fetch_add(v38 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v38 + 24))(v38);
            }
          }
        }

        operator delete(v34);
        v34 = v37;
      }

      while (v37 != &v45);
    }
  }

  v30[2] = **v30;
  v39 = operator new(0x40uLL);
  pthread_mutex_init(v39, 0);
  v30[4] = 0;
  v30[3] = v39;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v39, v30 + 4);
  a1[14] = 0;
  a1[13] = v30;
  v40 = operator new(0x18uLL);
  v40[1] = 0x100000001;
  *v40 = &unk_2A1E1AFD0;
  v40[2] = v30;
  a1[14] = v40;
  a1[15] = *a2;
  v41 = a2[1];
  a1[16] = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *MEMORY[0x29EDCA608];
  return a1;
}