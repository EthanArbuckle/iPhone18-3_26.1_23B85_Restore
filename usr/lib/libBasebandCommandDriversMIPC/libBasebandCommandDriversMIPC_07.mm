void sub_296E97FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void *radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}::~Get_Euicc_Slots_Status_Cnf(void *a1)
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

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
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

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E139B8;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E139B8;
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

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E139B8;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E139B8;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
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

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[15] = v4;
  v12[16] = v4;
  v12[13] = v4;
  v12[14] = v4;
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
    abb::router::Message::getError(&v14.__val_, this);
    if ((v15 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v20 = v14;
    v6 = mipc::toErrorCode(v14.__val_, v5);
    std::error_code::message(&v17, &v20);
    v18 = 0;
    v19 = 0;
    v16 = v6;
    MEMORY[0x29C266AB0](v12, &v16, 1);
    v7 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v16, this);
    v8 = *v16;
    abb::router::Message::getRawMsg(&v14.__val_, this);
    MEMORY[0x29C266AC0](v12, v8, *(*&v14.__val_ + 8) - **&v14.__val_);
    cat = v14.__cat_;
    if (v14.__cat_ && !atomic_fetch_add(&v14.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v17.__r_.__value_.__r.__words[0];
    if (v17.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v17.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}::operator()(a1 + 8, v12);
  return MEMORY[0x29C266AD0](v12);
}

void sub_296E9862C(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 128);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver14getSIMPresenceEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim26Get_Euicc_Slots_Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver14getSIMPresenceEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim26Get_Euicc_Slots_Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver14getSIMPresenceEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim26Get_Euicc_Slots_Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver14getSIMPresenceEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim26Get_Euicc_Slots_Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Get_Euicc_Slots_Status_Cnf const&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v226 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_398;
  }

  v194 = *v2;
  v5 = std::__shared_weak_count::lock(v3);
  v214 = v5;
  if (!v5)
  {
    goto LABEL_398;
  }

  if (v2[1])
  {
    v212 = 0;
    memset(&v211, 0, sizeof(v211));
    v209 = 0xAAAAAAAAAAAAAAAALL;
    cf = 0;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v208[7] = v6;
    v208[8] = v6;
    v208[5] = v6;
    v208[6] = v6;
    v208[3] = v6;
    v208[4] = v6;
    v208[1] = v6;
    v208[2] = v6;
    v207 = v6;
    v208[0] = v6;
    v206 = v6;
    v204 = v6;
    *__p = v6;
    v202 = v6;
    v203 = v6;
    v200 = v6;
    v201 = v6;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v200);
    if (mipc::operator==())
    {
      goto LABEL_287;
    }

    std::string::__assign_external(&v211, "Get EUICC slots status confirmation error: %s, %s\n", 0x32uLL);
    buf.__r_.__value_.__r.__words[0] = *(a2 + 32);
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&buf.__r_.__value_.__r.__words[1], *(a2 + 40), *(a2 + 48));
    }

    else
    {
      *&buf.__r_.__value_.__r.__words[1] = *(a2 + 40);
      v222 = *(a2 + 56);
    }

    v7 = *(a2 + 72);
    v223 = *(a2 + 64);
    v224 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    mipc::asString();
    __dst.__r_.__value_.__r.__words[0] = *(a2 + 32);
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst.__r_.__value_.__r.__words[1], *(a2 + 40), *(a2 + 48));
    }

    else
    {
      *&__dst.__r_.__value_.__r.__words[1] = *(a2 + 40);
      v218 = *(a2 + 56);
    }

    v8 = *(a2 + 72);
    v219 = *(a2 + 64);
    v220 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = v220;
      if (v220)
      {
        if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }

    if (SHIBYTE(v218) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__size_);
    }

    v10 = v224;
    if (v224 && !atomic_fetch_add(v224 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v199, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
    }

    else
    {
      v199 = v211;
    }

    CreateError();
    v11 = v212;
    v12 = buf.__r_.__value_.__r.__words[0];
    v212 = buf.__r_.__value_.__r.__words[0];
    buf.__r_.__value_.__r.__words[0] = 0;
    if (v11)
    {
      CFRelease(v11);
      if (buf.__r_.__value_.__r.__words[0])
      {
        CFRelease(buf.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v199.__r_.__value_.__l.__data_);
    }

    if (!v12)
    {
LABEL_287:
      allocator = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v14 = cf;
        cf = Mutable;
        if (v14)
        {
          CFRelease(v14);
        }
      }

      v15 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v183 = v2;
      v16 = *(v194 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v16, OS_LOG_TYPE_DEFAULT, "#I Card State TLV Array:", &buf, 2u);
      }

      v17 = *(a2 + 88);
      v18 = *(a2 + 96);
      v184 = a2;
      if (v17 != v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(v194 + 40);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          v22 = *(&xmmword_2A18B7DA8 + 8);
          if (!v21)
          {
            goto LABEL_66;
          }

          if (!*(&xmmword_2A18B7DA8 + 1))
          {
            goto LABEL_400;
          }

          v23 = *v17;
          v24 = vcnt_s8(*(&xmmword_2A18B7DA8 + 8));
          v24.i16[0] = vaddlv_u8(v24);
          if (v24.u32[0] > 1uLL)
          {
            v25 = *v17;
            if (*(&xmmword_2A18B7DA8 + 1) <= v23)
            {
              v25 = v23 % BYTE8(xmmword_2A18B7DA8);
            }
          }

          else
          {
            v25 = (DWORD2(xmmword_2A18B7DA8) - 1) & v23;
          }

          v26 = *(xmmword_2A18B7DA8 + 8 * v25);
          if (!v26 || (v27 = *v26) == 0)
          {
LABEL_400:
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          if (v24.u32[0] < 2uLL)
          {
            while (1)
            {
              v29 = v27[1];
              if (v29 == v23)
              {
                if (*(v27 + 16) == v23)
                {
                  goto LABEL_63;
                }
              }

              else if ((v29 & (*(&xmmword_2A18B7DA8 + 1) - 1)) != v25)
              {
                goto LABEL_400;
              }

              v27 = *v27;
              if (!v27)
              {
                goto LABEL_400;
              }
            }
          }

          while (1)
          {
            v28 = v27[1];
            if (v28 == v23)
            {
              break;
            }

            if (v28 >= *(&xmmword_2A18B7DA8 + 1))
            {
              v28 %= *(&xmmword_2A18B7DA8 + 1);
            }

            if (v28 != v25)
            {
              goto LABEL_400;
            }

LABEL_53:
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_400;
            }
          }

          if (*(v27 + 16) != v23)
          {
            goto LABEL_53;
          }

LABEL_63:
          v30 = v27 + 3;
          if (*(v27 + 47) < 0)
          {
            v30 = *v30;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
          *(buf.__r_.__value_.__r.__words + 4) = v19;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v30;
          _os_log_impl(&dword_296E3E000, v20, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Card State: %s", &buf, 0x16u);
          v22 = *(&xmmword_2A18B7DA8 + 8);
LABEL_66:
          if (!*&v22)
          {
            goto LABEL_399;
          }

          v31 = *v17;
          v32 = vcnt_s8(v22);
          v32.i16[0] = vaddlv_u8(v32);
          if (v32.u32[0] > 1uLL)
          {
            v33 = *v17;
            if (*&v22 <= v31)
            {
              v33 = v31 % v22.u8[0];
            }
          }

          else
          {
            v33 = (v22.i32[0] - 1) & v31;
          }

          v34 = *(xmmword_2A18B7DA8 + 8 * v33);
          if (!v34 || (v35 = *v34) == 0)
          {
LABEL_399:
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          if (v32.u32[0] < 2uLL)
          {
            v36 = *&v22 - 1;
            while (1)
            {
              v37 = v35[1];
              if (v37 == v31)
              {
                if (*(v35 + 16) == v31)
                {
                  goto LABEL_79;
                }
              }

              else if ((v37 & v36) != v33)
              {
                goto LABEL_399;
              }

              v35 = *v35;
              if (!v35)
              {
                goto LABEL_399;
              }
            }
          }

          while (2)
          {
            v38 = v35[1];
            if (v38 != v31)
            {
              if (v38 >= *&v22)
              {
                v38 %= *&v22;
              }

              if (v38 != v33)
              {
                goto LABEL_399;
              }

LABEL_82:
              v35 = *v35;
              if (!v35)
              {
                goto LABEL_399;
              }

              continue;
            }

            break;
          }

          if (*(v35 + 16) != v31)
          {
            goto LABEL_82;
          }

LABEL_79:
          if (*(v35 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v35[3], v35[4]);
          }

          else
          {
            __dst = *(v35 + 1);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = __dst;
          }

          v216 = 0;
          ctu::cf::convert_copy();
          v39 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v15, v216);
            CFRelease(v39);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_96;
            }

            goto LABEL_41;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_96:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v19;
            if (++v17 == v18)
            {
              break;
            }
          }

          else
          {
LABEL_41:
            ++v19;
            if (++v17 == v18)
            {
              break;
            }
          }
        }
      }

      v40 = cf;
      ctu::cf::insert<__CFString const*,__CFArray *>(cf, *MEMORY[0x29EDC8E98], v15);
      if (v15)
      {
        CFRelease(v15);
      }

      v41 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v191 = v40;
      v42 = *(v194 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v42, OS_LOG_TYPE_DEFAULT, "#I Slots State TLV Array:", &buf, 2u);
      }

      v43 = v184[14];
      v44 = v184[15];
      if (v43 != v44)
      {
        v45 = 0;
        while (1)
        {
          v46 = *(v194 + 40);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(v43 + v45);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
            *(buf.__r_.__value_.__r.__words + 4) = v45;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v47;
            _os_log_impl(&dword_296E3E000, v46, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Slots State: %u", &buf, 0x12u);
          }

          if (*(v43 + v45))
          {
            v48 = "active";
          }

          else
          {
            v48 = "inactive";
          }

          if (*(v43 + v45))
          {
            v49 = 6;
          }

          else
          {
            v49 = 8;
          }

          *(&__dst.__r_.__value_.__s + 23) = v49;
          memcpy(&__dst, v48, v49);
          __dst.__r_.__value_.__s.__data_[v49] = 0;
          v50 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = __dst;
          }

          v216 = 0;
          ctu::cf::convert_copy();
          v51 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v41, v216);
            CFRelease(v51);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((v50 & 0x80000000) == 0)
            {
              goto LABEL_104;
            }

LABEL_120:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v45;
            if (v43 + v45 == v44)
            {
              break;
            }
          }

          else
          {
            if (v50 < 0)
            {
              goto LABEL_120;
            }

LABEL_104:
            ++v45;
            if (v43 + v45 == v44)
            {
              break;
            }
          }
        }
      }

      ctu::cf::insert<__CFString const*,__CFArray *>(v191, *MEMORY[0x29EDC8E78], v41);
      if (v41)
      {
        CFRelease(v41);
      }

      v52 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v53 = *(v194 + 40);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v53, OS_LOG_TYPE_DEFAULT, "#I Logical IDX TLV Array:", &buf, 2u);
      }

      v54 = v184[17];
      v55 = v184[18];
      if (v54 != v55)
      {
        v56 = 0;
        while (1)
        {
          v57 = *(v194 + 40);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = *(v54 + v56);
            LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
            *(buf.__r_.__value_.__r.__words + 4) = v56;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v58;
            _os_log_impl(&dword_296E3E000, v57, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Logical IDX: %u", &buf, 0x12u);
          }

          v59 = *(v54 + v56);
          if (*(v54 + v56) < 0)
          {
            v60 = *(v54 + v56);
            v61 = *(v194 + 40);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v60;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = 127;
              _os_log_error_impl(&dword_296E3E000, v61, OS_LOG_TYPE_ERROR, "Overflow: Logical IDX value of %u exceeds INT8_MAX (%u)", &buf, 0xEu);
              v59 = *(v54 + v56);
            }

            else
            {
              v59 = v60;
            }
          }

          std::to_string(&__dst, v59);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = __dst;
          }

          v216 = 0;
          ctu::cf::convert_copy();
          v62 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v52, v216);
            CFRelease(v62);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_128;
            }

LABEL_141:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v56;
            if (v54 + v56 == v55)
            {
              break;
            }
          }

          else
          {
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_141;
            }

LABEL_128:
            ++v56;
            if (v54 + v56 == v55)
            {
              break;
            }
          }
        }
      }

      v63 = v191;
      ctu::cf::insert<__CFString const*,__CFArray *>(v191, *MEMORY[0x29EDC8E70], v52);
      if (v52)
      {
        CFRelease(v52);
      }

      v196 = 0;
      v64 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v65 = v64;
      v66 = v184;
      if (v64)
      {
        v196 = v64;
      }

      v67 = *(v194 + 40);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v67, OS_LOG_TYPE_DEFAULT, "#I ATR TLV Array:", &buf, 2u);
      }

      v68 = v184[20];
      v69 = v184[21];
      if (v68 != v69)
      {
        v70 = 0;
        while (1)
        {
          v71 = *(v194 + 40);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v68;
            if (*(v68 + 23) < 0)
            {
              v72 = *v68;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
            *(buf.__r_.__value_.__r.__words + 4) = v70;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v72;
            _os_log_impl(&dword_296E3E000, v71, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: ATR: %s", &buf, 0x16u);
          }

          v73 = *(v68 + 23);
          v74 = v68;
          if ((v73 & 0x8000000000000000) != 0)
          {
            v73 = *(v68 + 8);
            if (v73 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v74 = *v68;
            if (v73 >= 0x17)
            {
LABEL_165:
              if ((v73 | 7) == 0x17)
              {
                v77 = 25;
              }

              else
              {
                v77 = (v73 | 7) + 1;
              }

              p_dst = operator new(v77);
              __dst.__r_.__value_.__l.__size_ = v73;
              __dst.__r_.__value_.__r.__words[2] = v77 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
              goto LABEL_169;
            }
          }

          else if (v73 >= 0x17)
          {
            goto LABEL_165;
          }

          *(&__dst.__r_.__value_.__s + 23) = v73;
          p_dst = &__dst;
          if (!v73)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v65 = v196;
            v76 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_170;
            }

            goto LABEL_162;
          }

LABEL_169:
          memmove(p_dst, v74, v73);
          *(p_dst + v73) = 0;
          v65 = v196;
          v76 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_170:
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            goto LABEL_171;
          }

LABEL_162:
          buf = __dst;
LABEL_171:
          v216 = 0;
          ctu::cf::convert_copy();
          v78 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v65, v216);
            CFRelease(v78);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((v76 & 0x80000000) == 0)
            {
              goto LABEL_153;
            }

LABEL_175:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v70;
            v68 += 24;
            if (v68 == v69)
            {
LABEL_176:
              v63 = cf;
              v66 = v184;
              break;
            }
          }

          else
          {
            if (v76 < 0)
            {
              goto LABEL_175;
            }

LABEL_153:
            ++v70;
            v68 += 24;
            if (v68 == v69)
            {
              goto LABEL_176;
            }
          }
        }
      }

      ctu::cf::insert<__CFString const*,__CFArray *>(v63, *MEMORY[0x29EDC8DC0], v65);
      if (v65)
      {
        CFRelease(v65);
      }

      v197 = 0;
      v79 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v80 = v79;
      if (v79)
      {
        v197 = v79;
      }

      v81 = *(v194 + 40);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v81, OS_LOG_TYPE_DEFAULT, "#I EID TLV Array:", &buf, 2u);
      }

      v82 = v66[23];
      v83 = v66[24];
      if (v82 != v83)
      {
        v84 = 0;
        while (1)
        {
          v85 = *(v194 + 40);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v86 = v82;
            if (*(v82 + 23) < 0)
            {
              v86 = *v82;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
            *(buf.__r_.__value_.__r.__words + 4) = v84;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v86;
            _os_log_impl(&dword_296E3E000, v85, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: EID: %s", &buf, 0x16u);
          }

          v87 = *(v82 + 23);
          v88 = v82;
          if ((v87 & 0x8000000000000000) != 0)
          {
            v87 = *(v82 + 8);
            if (v87 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v88 = *v82;
            if (v87 >= 0x17)
            {
LABEL_198:
              if ((v87 | 7) == 0x17)
              {
                v91 = 25;
              }

              else
              {
                v91 = (v87 | 7) + 1;
              }

              v89 = operator new(v91);
              __dst.__r_.__value_.__l.__size_ = v87;
              __dst.__r_.__value_.__r.__words[2] = v91 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = v89;
              goto LABEL_202;
            }
          }

          else if (v87 >= 0x17)
          {
            goto LABEL_198;
          }

          *(&__dst.__r_.__value_.__s + 23) = v87;
          v89 = &__dst;
          if (!v87)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v80 = v197;
            v90 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_203;
            }

            goto LABEL_195;
          }

LABEL_202:
          memmove(v89, v88, v87);
          *(v89 + v87) = 0;
          v80 = v197;
          v90 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_203:
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            goto LABEL_204;
          }

LABEL_195:
          buf = __dst;
LABEL_204:
          v216 = 0;
          ctu::cf::convert_copy();
          v92 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v80, v216);
            CFRelease(v92);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((v90 & 0x80000000) == 0)
            {
              goto LABEL_186;
            }

LABEL_208:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v84;
            v82 += 24;
            if (v82 == v83)
            {
LABEL_209:
              v63 = cf;
              v66 = v184;
              break;
            }
          }

          else
          {
            if (v90 < 0)
            {
              goto LABEL_208;
            }

LABEL_186:
            ++v84;
            v82 += 24;
            if (v82 == v83)
            {
              goto LABEL_209;
            }
          }
        }
      }

      ctu::cf::insert<__CFString const*,__CFArray *>(v63, *MEMORY[0x29EDC8DC8], v80);
      if (v80)
      {
        CFRelease(v80);
      }

      v198 = 0;
      v93 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
      v94 = v93;
      if (v93)
      {
        v198 = v93;
      }

      v95 = *(v194 + 40);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296E3E000, v95, OS_LOG_TYPE_DEFAULT, "#I ICCID TLV Array:", &buf, 2u);
      }

      v96 = v66[26];
      v97 = v66[27];
      if (v96 != v97)
      {
        v98 = 0;
        while (1)
        {
          v99 = *(v194 + 40);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v100 = v96;
            if (*(v96 + 23) < 0)
            {
              v100 = *v96;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
            *(buf.__r_.__value_.__r.__words + 4) = v98;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v100;
            _os_log_impl(&dword_296E3E000, v99, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: ICCID: %s", &buf, 0x16u);
          }

          v101 = *(v96 + 23);
          v102 = v96;
          if ((v101 & 0x8000000000000000) != 0)
          {
            v101 = *(v96 + 8);
            if (v101 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v102 = *v96;
            if (v101 >= 0x17)
            {
LABEL_231:
              if ((v101 | 7) == 0x17)
              {
                v105 = 25;
              }

              else
              {
                v105 = (v101 | 7) + 1;
              }

              v103 = operator new(v105);
              __dst.__r_.__value_.__l.__size_ = v101;
              __dst.__r_.__value_.__r.__words[2] = v105 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = v103;
              goto LABEL_235;
            }
          }

          else if (v101 >= 0x17)
          {
            goto LABEL_231;
          }

          *(&__dst.__r_.__value_.__s + 23) = v101;
          v103 = &__dst;
          if (!v101)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v94 = v198;
            v104 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_236;
            }

            goto LABEL_228;
          }

LABEL_235:
          memmove(v103, v102, v101);
          *(v103 + v101) = 0;
          v94 = v198;
          v104 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_236:
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            goto LABEL_237;
          }

LABEL_228:
          buf = __dst;
LABEL_237:
          v216 = 0;
          ctu::cf::convert_copy();
          v106 = v216;
          v215 = v216;
          if (v216)
          {
            CFArrayAppendValue(v94, v216);
            CFRelease(v106);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
            if ((v104 & 0x80000000) == 0)
            {
              goto LABEL_219;
            }

LABEL_241:
            operator delete(__dst.__r_.__value_.__l.__data_);
            ++v98;
            v96 += 24;
            if (v96 == v97)
            {
              break;
            }
          }

          else
          {
            if (v104 < 0)
            {
              goto LABEL_241;
            }

LABEL_219:
            ++v98;
            v96 += 24;
            if (v96 == v97)
            {
              break;
            }
          }
        }
      }

      v107 = cf;
      ctu::cf::insert<__CFString const*,__CFArray *>(cf, *MEMORY[0x29EDC8DF8], v94);
      v2 = v183;
      v108 = v184;
      if (v94)
      {
        CFRelease(v94);
      }

      if (v184[29] != v184[30])
      {
        v216 = 0;
        v109 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
        v110 = v109;
        if (v109)
        {
          v216 = v109;
        }

        v111 = *(v194 + 40);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_296E3E000, v111, OS_LOG_TYPE_DEFAULT, "#I Slots Info TLV Array:", &buf, 2u);
        }

        v112 = v184[29];
        v113 = v184[30];
        if (v112 != v113)
        {
          v114 = 0;
          v192 = *MEMORY[0x29EDC8F70];
          v188 = *MEMORY[0x29EDC8F88];
          v186 = *MEMORY[0x29EDC8F80];
          v185 = *MEMORY[0x29EDC8EA0];
          v115 = *MEMORY[0x29EDC8EA8];
          v116 = *MEMORY[0x29EDC8F00];
          v117 = v184[29];
          while (1)
          {
            v215 = 0;
            v118 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v119 = v118;
            if (v118)
            {
              v215 = v118;
            }

            v120 = *(v194 + 40);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = v114;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v112;
              _os_log_impl(&dword_296E3E000, v120, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Card State: %s", &buf, 0x16u);
            }

            ctu::cf::insert<__CFString const*,char const*>(v119, v192, v117, allocator, v121);
            v122 = *(v194 + 40);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v123 = *(v117 + 30);
              LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
              *(buf.__r_.__value_.__r.__words + 4) = v114;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v123;
              _os_log_impl(&dword_296E3E000, v122, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Slots State: %u", &buf, 0x12u);
            }

            std::to_string(&__dst, *(v117 + 30));
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              buf = __dst;
            }

            ctu::cf::insert<__CFString const*,std::string>(v119, v188);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_263:
                v124 = *(v194 + 40);
                if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_265;
                }

LABEL_264:
                v125 = *(v117 + 31);
                LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
                *(buf.__r_.__value_.__r.__words + 4) = v114;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v125;
                _os_log_impl(&dword_296E3E000, v124, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Logical IDX: %u", &buf, 0x12u);
                goto LABEL_265;
              }
            }

            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_263;
            }

            operator delete(__dst.__r_.__value_.__l.__data_);
            v124 = *(v194 + 40);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_264;
            }

LABEL_265:
            std::to_string(&__dst, *(v117 + 31));
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              buf = __dst;
            }

            ctu::cf::insert<__CFString const*,std::string>(v119, v186);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
LABEL_282:
                operator delete(__dst.__r_.__value_.__l.__data_);
                v126 = *(v194 + 40);
                if (!os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_275;
                }

LABEL_274:
                LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
                *(buf.__r_.__value_.__r.__words + 4) = v114;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v112 + 34;
                _os_log_impl(&dword_296E3E000, v126, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: ATR: %s", &buf, 0x16u);
                goto LABEL_275;
              }
            }

            else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_282;
            }

            v126 = *(v194 + 40);
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_274;
            }

LABEL_275:
            v128 = (v117 + 34);
            ctu::cf::insert<__CFString const*,char const*>(v119, v185, v128, allocator, v127);
            v129 = *(v194 + 40);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = v114;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v112 + 115;
              _os_log_impl(&dword_296E3E000, v129, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: EID: %s", &buf, 0x16u);
            }

            v131 = (v128 + 81);
            ctu::cf::insert<__CFString const*,char const*>(v215, v115, v131, allocator, v130);
            v132 = *(v194 + 40);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = v114;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v112 + 148;
              _os_log_impl(&dword_296E3E000, v132, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: ICCID: %s", &buf, 0x16u);
            }

            v134 = (v131 + 33);
            ctu::cf::insert<__CFString const*,char const*>(v215, v116, v134, allocator, v133);
            v135 = v215;
            v110 = v216;
            buf.__r_.__value_.__r.__words[0] = v215;
            if (v215)
            {
              CFRetain(v215);
              CFArrayAppendValue(v110, v135);
              CFRelease(v135);
              CFRelease(v135);
            }

            ++v114;
            v112 += 169;
            v117 = (v134 + 21);
            if (v117 == v113)
            {
              v107 = cf;
              v2 = v183;
              v108 = v184;
              break;
            }
          }
        }

        ctu::cf::insert<__CFString const*,__CFArray *>(v107, *MEMORY[0x29EDC8E50], v110);
        if (v110)
        {
          CFRelease(v110);
        }
      }

      if (v108[32] != v108[33])
      {
        v216 = 0;
        v136 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
        v137 = v136;
        if (v136)
        {
          v216 = v136;
        }

        v138 = *(v194 + 40);
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_296E3E000, v138, OS_LOG_TYPE_DEFAULT, "#I EID Byte TLV Array:", &buf, 2u);
        }

        v139 = v108[32];
        v190 = v108[33];
        if (v139 != v190)
        {
          v140 = 0;
          v187 = *MEMORY[0x29EDC8E68];
          v189 = *MEMORY[0x29EDC8EF8];
          while (1)
          {
            v215 = 0;
            v141 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v142 = v141;
            if (v141)
            {
              v215 = v141;
            }

            v143 = *(v194 + 40);
            v144 = os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT);
            v145 = *v139;
            if (v144)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
              *(buf.__r_.__value_.__r.__words + 4) = v140;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v145;
              _os_log_impl(&dword_296E3E000, v143, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Is Valid: %u", &buf, 0x12u);
              v145 = *v139;
            }

            std::to_string(&__dst, v145);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              buf = __dst;
            }

            ctu::cf::insert<__CFString const*,std::string>(v142, v189);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              v193 = v140;
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
LABEL_313:
                operator delete(__dst.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v193 = v140;
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_313;
              }
            }

            for (i = 1; i != 17; ++i)
            {
              v147 = v139[i];
              v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v201, &unk_296EC917B, 0);
              v149 = *v148;
              v150 = *v148;
              *(v148 + *(*v148 - 24) + 24) = 2;
              v151 = (v148 + *(v150 - 24));
              if (v151[1].__fmtflags_ == -1)
              {
                std::ios_base::getloc(v151);
                v152 = std::locale::use_facet(&buf, MEMORY[0x29EDC93D0]);
                v153 = (v152->__vftable[2].~facet_0)(v152, 32);
                std::locale::~locale(&buf);
                v151[1].__fmtflags_ = v153;
                v149 = *v148;
              }

              v151[1].__fmtflags_ = 48;
              *(v148 + *(v149 - 24) + 8) = *(v148 + *(v149 - 24) + 8) & 0xFFFFFFB5 | 8;
              v154 = MEMORY[0x29C267790](v148, v147);
              v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, " ", 1);
              *(v155 + *(*v155 - 24) + 8) = *(v155 + *(*v155 - 24) + 8) & 0xFFFFFFB5 | 2;
            }

            v156 = *(v194 + 40);
            v157 = v193;
            if (!os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
            {
LABEL_330:
              v165 = BYTE8(v207);
              if ((BYTE8(v207) & 0x10) != 0)
              {
                goto LABEL_335;
              }

              goto LABEL_331;
            }

            if ((BYTE8(v207) & 0x10) != 0)
            {
              v160 = v207;
              v161 = &v204;
              if (v207 < *(&v204 + 1))
              {
                *&v207 = *(&v204 + 1);
                v160 = *(&v204 + 1);
                v161 = &v204;
              }
            }

            else
            {
              if ((BYTE8(v207) & 8) == 0)
              {
                v158 = 0;
                *(&buf.__r_.__value_.__s + 23) = 0;
                p_buf = &buf;
                goto LABEL_327;
              }

              v160 = *(&v203 + 1);
              v161 = &v202 + 1;
            }

            v162 = *v161;
            v158 = v160 - *v161;
            if (v158 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v158 >= 0x17)
            {
              if ((v158 | 7) == 0x17)
              {
                v163 = 25;
              }

              else
              {
                v163 = (v158 | 7) + 1;
              }

              p_buf = operator new(v163);
              buf.__r_.__value_.__l.__size_ = v158;
              buf.__r_.__value_.__r.__words[2] = v163 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = p_buf;
            }

            else
            {
              *(&buf.__r_.__value_.__s + 23) = v160 - *v161;
              p_buf = &buf;
              if (!v158)
              {
                goto LABEL_326;
              }
            }

            memmove(p_buf, v162, v158);
LABEL_326:
            v157 = v193;
LABEL_327:
            p_buf->__r_.__value_.__s.__data_[v158] = 0;
            v164 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v164 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
            *(__dst.__r_.__value_.__r.__words + 4) = v157;
            WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
            *(&__dst.__r_.__value_.__r.__words[1] + 6) = v164;
            _os_log_impl(&dword_296E3E000, v156, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: EID: %s", &__dst, 0x16u);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_330;
            }

            operator delete(buf.__r_.__value_.__l.__data_);
            v165 = BYTE8(v207);
            if ((BYTE8(v207) & 0x10) != 0)
            {
LABEL_335:
              v168 = v207;
              v169 = &v204;
              if (v207 < *(&v204 + 1))
              {
                *&v207 = *(&v204 + 1);
                v168 = *(&v204 + 1);
                v169 = &v204;
              }

              goto LABEL_337;
            }

LABEL_331:
            if ((v165 & 8) == 0)
            {
              *(&__dst.__r_.__value_.__s + 23) = 0;
              __dst.__r_.__value_.__s.__data_[0] = 0;
              v166 = v215;
              v167 = 0;
LABEL_341:
              buf = __dst;
              goto LABEL_348;
            }

            v168 = *(&v203 + 1);
            v169 = &v202 + 1;
LABEL_337:
            v170 = *v169;
            v171 = v168 - *v169;
            if (v171 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v171 >= 0x17)
            {
              if ((v171 | 7) == 0x17)
              {
                v173 = 25;
              }

              else
              {
                v173 = (v171 | 7) + 1;
              }

              v172 = operator new(v173);
              __dst.__r_.__value_.__l.__size_ = v171;
              __dst.__r_.__value_.__r.__words[2] = v173 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = v172;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v168 - *v169;
              v172 = &__dst;
              if (!v171)
              {
                __dst.__r_.__value_.__s.__data_[0] = 0;
                v166 = v215;
                v167 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_341;
                }

                goto LABEL_347;
              }
            }

            memmove(v172, v170, v171);
            *(v172 + v171) = 0;
            v166 = v215;
            v167 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_341;
            }

LABEL_347:
            std::string::__init_copy_ctor_external(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_348:
            ctu::cf::insert<__CFString const*,std::string>(v166, v187);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              if ((v167 & 0x80000000) == 0)
              {
LABEL_350:
                v137 = v216;
                buf.__r_.__value_.__r.__words[0] = v166;
                if (!v166)
                {
                  goto LABEL_294;
                }

LABEL_354:
                CFRetain(v166);
                CFArrayAppendValue(v137, v166);
                CFRelease(v166);
                CFRelease(v166);
                goto LABEL_294;
              }
            }

            else if ((v167 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            operator delete(__dst.__r_.__value_.__l.__data_);
            v137 = v216;
            buf.__r_.__value_.__r.__words[0] = v166;
            if (v166)
            {
              goto LABEL_354;
            }

LABEL_294:
            v140 = v157 + 1;
            v139 += 17;
            if (v139 == v190)
            {
              v107 = cf;
              v2 = v183;
              break;
            }
          }
        }

        ctu::cf::insert<__CFString const*,__CFArray *>(v107, *MEMORY[0x29EDC8E28], v137);
        if (v137)
        {
          CFRelease(v137);
        }
      }
    }

    if (!v2[3] || !v2[4])
    {
LABEL_386:
      *&v200 = *MEMORY[0x29EDC9528];
      v179 = *(MEMORY[0x29EDC9528] + 72);
      *(&v200 + *(v200 - 24)) = *(MEMORY[0x29EDC9528] + 64);
      *&v201 = v179;
      *(&v201 + 1) = MEMORY[0x29EDC9570] + 16;
      if (SHIBYTE(v206) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v201 + 1) = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v202);
      std::iostream::~basic_iostream();
      MEMORY[0x29C267970](v208);
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
        v180 = v212;
        if (!v212)
        {
          goto LABEL_395;
        }
      }

      else
      {
        v180 = v212;
        if (!v212)
        {
LABEL_395:
          v5 = v214;
          if (!v214)
          {
            goto LABEL_398;
          }

          goto LABEL_396;
        }
      }

      CFRelease(v180);
      goto LABEL_395;
    }

    v174 = v212;
    if (v212)
    {
      CFRetain(v212);
    }

    v175 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v176 = v2[3];
    if (v176)
    {
      v177 = _Block_copy(v176);
    }

    else
    {
      v177 = 0;
    }

    v178 = v2[4];
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    v222 = &__block_descriptor_tmp_148;
    if (v177)
    {
      v223 = _Block_copy(v177);
      v224 = v174;
      if (!v174)
      {
        goto LABEL_372;
      }
    }

    else
    {
      v223 = 0;
      v224 = v174;
      if (!v174)
      {
LABEL_372:
        v225 = v175;
        if (v175)
        {
          CFRetain(v175);
        }

        dispatch_async(v178, &buf);
        if (v225)
        {
          CFRelease(v225);
        }

        if (v224)
        {
          CFRelease(v224);
        }

        if (v223)
        {
          _Block_release(v223);
        }

        if (v177)
        {
          _Block_release(v177);
        }

        if (v175)
        {
          CFRelease(v175);
        }

        if (v174)
        {
          CFRelease(v174);
        }

        goto LABEL_386;
      }
    }

    CFRetain(v174);
    goto LABEL_372;
  }

LABEL_396:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v181 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v181);
  }

LABEL_398:
  v182 = *MEMORY[0x29EDCA608];
}

void sub_296E9A7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a66);
  if (a72 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v72 - 248));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v72 - 240);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_70()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296E3E000);
  }

  return result;
}

void _GLOBAL__sub_I_MipcRadioCommandDriver_cpp()
{
  v51 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  *(&v6[2] + 7) = 277;
  strcpy(v6, "SIM_STATUS_NOT_INSERT");
  *&v7[23] = 783;
  strcpy(v7, "SIM_STATUS_BUSY");
  HIBYTE(v8[2]) = 18;
  strcpy(v8, "SIM_STATUS_SIM_PIN");
  v9[0] = 4;
  *(&v10[2] + 7) = 1298;
  strcpy(v10, "SIM_STATUS_SIM_PUK");
  v12 = 1557;
  strcpy(v11, "SIM_STATUS_PH_SIM_PIN");
  v14 = 22;
  strcpy(v13, "SIM_STATUS_PH_FSIM_PIN");
  v15 = 7;
  v17 = 2070;
  strcpy(v16, "SIM_STATUS_PH_FSIM_PUK");
  v19 = 2323;
  strcpy(v18, "SIM_STATUS_SIM_PIN2");
  v21 = 2579;
  strcpy(v20, "SIM_STATUS_SIM_PUK2");
  v23 = 21;
  strcpy(v22, "SIM_STATUS_PH_NET_PIN");
  v24 = 11;
  v26 = 21;
  strcpy(v25, "SIM_STATUS_PH_NET_PUK");
  v27 = 12;
  v28 = operator new(0x20uLL);
  v29 = xmmword_296EB9D30;
  strcpy(v28, "SIM_STATUS_PH_NETSUB_PIN");
  v30[0] = 13;
  v31 = operator new(0x20uLL);
  v32 = xmmword_296EB9D30;
  strcpy(v31, "SIM_STATUS_PH_NETSUB_PUK");
  v33[0] = 14;
  v35 = 3860;
  strcpy(v34, "SIM_STATUS_PH_SP_PIN");
  v37 = 4116;
  strcpy(v36, "SIM_STATUS_PH_SP_PUK");
  HIBYTE(v38[2]) = 22;
  strcpy(v38, "SIM_STATUS_PH_CORP_PIN");
  v39[0] = 17;
  strcpy(v40, "SIM_STATUS_PH_CORP_PUK");
  HIBYTE(v40[2]) = 22;
  v41[0] = 18;
  v43 = 4886;
  strcpy(v42, "SIM_STATUS_CARD_REBOOT");
  v44 = operator new(0x20uLL);
  v45 = xmmword_296EB9D40;
  strcpy(v44, "SIM_STATUS_CARD_RESTRICTED");
  v46[0] = 20;
  v48 = 5397;
  strcpy(v47, "SIM_STATUS_EMPT_EUICC");
  __p = operator new(0x20uLL);
  v50 = xmmword_296EB9D00;
  strcpy(__p, "SIM_STATUS_COMPLETE_READY");
  xmmword_2A18B7D80 = 0u;
  *algn_2A18B7D90 = 0u;
  dword_2A18B7DA0 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, 0, v5);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v6[3], &v6[3]);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v7[24], &v7[24]);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v9[0], v9);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v10[3], &v10[3]);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v12), &v12 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v15, &v15);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v17), &v17 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v19), &v19 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v21), &v21 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v24, &v24);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v27, &v27);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v30[0], v30);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v33[0], v33);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v35), &v35 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v37), &v37 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v39[0], v39);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v41[0], v41);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v43), &v43 + 1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, v46[0], v46);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7D80, HIBYTE(v48), &v48 + 1);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p);
    if ((v48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v47);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_5:
    if ((SHIBYTE(v40[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*v42);
  if ((SHIBYTE(v40[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v38[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v40[0]);
  if ((SHIBYTE(v38[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v38[0]);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(*v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(*v34);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v31);
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v28);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(*v25);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(*v22);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(*v20);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(*v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(*v16);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v10[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*v11);
  if ((SHIBYTE(v10[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v10[0]);
  if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((v7[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    operator delete(*v7);
    if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_43:
    operator delete(v6[0]);
    goto LABEL_22;
  }

LABEL_41:
  operator delete(v8[0]);
  if ((v7[23] & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if (SHIBYTE(v6[2]) < 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  v5[0] = 0;
  v0 = operator new(0x20uLL);
  v6[0] = v0;
  *&v6[1] = xmmword_296EB9D50;
  strcpy(v0, "SIM_CARD_PRESENT_STATE_ABSENT");
  LOBYTE(v6[3]) = 1;
  v1 = operator new(0x20uLL);
  *v7 = v1;
  *&v7[8] = xmmword_296EB9C80;
  strcpy(v1, "SIM_CARD_PRESENT_STATE_PRESENT");
  v7[24] = 2;
  v2 = operator new(0x20uLL);
  v8[0] = v2;
  *&v8[1] = xmmword_296EB9D60;
  strcpy(v2, "SIM_CARD_PRESENT_STATE_ERROR");
  v9[0] = 3;
  v3 = operator new(0x28uLL);
  v10[0] = v3;
  *&v10[1] = xmmword_296EB9D70;
  strcpy(v3, "SIM_CARD_PRESENT_STATE_RESTRICTED");
  xmmword_2A18B7DA8 = 0u;
  unk_2A18B7DB8 = 0u;
  dword_2A18B7DC8 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7DA8, 0, v5);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7DA8, 1u, &v6[3]);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7DA8, 2u, &v7[24]);
  std::__hash_table<std::__hash_value_type<unsigned char,std::string>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::string>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::string> const&>(&xmmword_2A18B7DA8, 3u, v9);
  operator delete(v3);
  operator delete(v2);
  operator delete(v1);
  operator delete(v0);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_296E9B510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = v12;
  while (1)
  {
    if (*(v14 - 1) < 0)
    {
      operator delete(*(v14 - 3));
    }

    v14 -= 32;
    if (v14 == &a12)
    {
      _Unwind_Resume(a1);
    }
  }
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_296E9BD50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, v11 + v13, v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_296E9C08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v19 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v19, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v17 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v15 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
    {
      qword_2A18B7DE0 = 0;
      qword_2A18B7DE8 = 0;
      __cxa_guard_release(&qword_2A18B7DD8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v8 = qword_2A18B7DE8;
      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v8 = qword_2A18B7DE8;
      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v11 = cf;
    Code = CFErrorGetCode(error);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v21 = v13;
    _os_log_error_impl(&dword_296E3E000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v17;
      if (!v17)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    CFRelease(v19);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E9C544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
  {
    qword_2A18B7DE0 = 0;
    qword_2A18B7DE8 = 0;
    __cxa_guard_release(&qword_2A18B7DD8);
  }

  if (_MergedGlobals_3 != -1)
  {

    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
  }
}

void util::moveDirContent(std::string::size_type a1, const std::string::value_type **a2, unsigned int a3, int a4, uint64_t a5)
{
  v158 = *MEMORY[0x29EDCA608];
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  std::locale::locale(&v143, a5);
  v144 = *(a5 + 8);
  v145 = *(a5 + 24);
  v11 = *(a5 + 48);
  v146 = *(a5 + 40);
  v147 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v13 = v147;
  if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    std::locale::~locale(&v143);
    if (filtered_files)
    {
LABEL_11:
      v14 = v149;
      v131 = v150;
      if (v149 != v150)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v157, 170, sizeof(v157));
            if (*(v14 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
            }

            else
            {
              v15 = *v14;
              v157.__r_.__value_.__r.__words[2] = v14[2];
              *&v157.__r_.__value_.__l.__data_ = v15;
            }

            v16 = *(a1 + 23);
            if (v16 >= 0)
            {
              v17 = *(a1 + 23);
            }

            else
            {
              v17 = *(a1 + 8);
            }

            v18 = v17 + 1;
            if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v20 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v17 + 1;
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if ((v18 | 7) == 0x17)
              {
                v19 = 25;
              }

              else
              {
                v19 = (v18 | 7) + 1;
              }

              v20 = operator new(v19);
              v141.__r_.__value_.__l.__size_ = v17 + 1;
              v141.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v20;
            }

            v21 = *a1;
            if (v16 >= 0)
            {
              v22 = a1;
            }

            else
            {
              v22 = *a1;
            }

            memmove(v20, v22, v17);
LABEL_32:
            *&v20[v17] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v157;
            }

            else
            {
              v23 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v157.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v141, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            __p[2] = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_40:
                if (is_directory)
                {
                  goto LABEL_41;
                }

                goto LABEL_52;
              }
            }

            else if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v141.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_41:
              v28 = *(a1 + 23);
              if (v28 >= 0)
              {
                v29 = *(a1 + 23);
              }

              else
              {
                v29 = *(a1 + 8);
              }

              v30 = v29 + 1;
              if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v30 < 0x17)
              {
                memset(&v141, 0, sizeof(v141));
                v32 = &v141;
                *(&v141.__r_.__value_.__s + 23) = v29 + 1;
                if (v29)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((v30 | 7) == 0x17)
                {
                  v31 = 25;
                }

                else
                {
                  v31 = (v30 | 7) + 1;
                }

                v32 = operator new(v31);
                v141.__r_.__value_.__l.__size_ = v29 + 1;
                v141.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
                v141.__r_.__value_.__r.__words[0] = v32;
LABEL_65:
                v39 = *a1;
                if (v28 >= 0)
                {
                  v40 = a1;
                }

                else
                {
                  v40 = *a1;
                }

                memmove(v32, v40, v29);
              }

              *&v32[v29] = 47;
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = &v157;
              }

              else
              {
                v41 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v42 = v157.__r_.__value_.__l.__size_;
              }

              v43 = std::string::append(&v141, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p[2] = v43->__r_.__value_.__r.__words[2];
              *__p = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v45 = __p[1];
                v47 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v48 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v48 != __p[1])
                {
                  v46 = __p[0];
                  goto LABEL_96;
                }

                if (v47 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v46 = __p[0];
                if (v48 > 0x3FFFFFFFFFFFFFF2)
                {
                  v52 = 0;
                  v51 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_81:
                  v49 = 2 * v48;
                  if (v47 > 2 * v48)
                  {
                    v49 = v47;
                  }

                  if ((v49 | 7) == 0x17)
                  {
                    v50 = 25;
                  }

                  else
                  {
                    v50 = (v49 | 7) + 1;
                  }

                  if (v49 >= 0x17)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 23;
                  }

                  v52 = v48 == 22;
                }

                v53 = operator new(v51);
                v54 = v53;
                if (v48)
                {
                  memmove(v53, v46, v48);
                }

                v54[v48] = 47;
                if (!v52)
                {
                  operator delete(v46);
                }

                __p[1] = v47;
                __p[2] = (v51 | 0x8000000000000000);
                __p[0] = v54;
                v55 = &v54[v47];
              }

              else
              {
                v46 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v47 = 23;
                  v48 = 22;
                  goto LABEL_81;
                }

LABEL_96:
                *(v45 + v46) = 47;
                v56 = v45 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v56;
                }

                else
                {
                  HIBYTE(__p[2]) = v56 & 0x7F;
                }

                v55 = &v56[v46];
              }

              *v55 = 0;
              *v139 = *__p;
              v140 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, *a2, a2[1]);
              }

              else
              {
                v138 = *a2;
              }

              std::locale::locale(&v132, a5);
              v133 = *(a5 + 8);
              v134 = *(a5 + 24);
              v57 = *(a5 + 48);
              v135 = *(a5 + 40);
              v136 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v137 = *(a5 + 56);
              util::moveDirContent(v139, &v138, a3, (a4 - 1), &v132);
              v58 = v136;
              if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  if ((SHIBYTE(v140) & 0x80000000) == 0)
                  {
                    goto LABEL_109;
                  }

LABEL_114:
                  operator delete(v139[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_115;
                }
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140) & 0x80000000) == 0)
              {
LABEL_109:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_110;
                }

                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_52:
            if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
            {
              qword_2A18B7DE0 = 0;
              qword_2A18B7DE8 = 0;
              __cxa_guard_release(&qword_2A18B7DD8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v33 = qword_2A18B7DE8;
              if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
              v33 = qword_2A18B7DE8;
              if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            v34 = *(a1 + 23);
            if (v34 >= 0)
            {
              v35 = *(a1 + 23);
            }

            else
            {
              v35 = *(a1 + 8);
            }

            v36 = v35 + 1;
            if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v36 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v38 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v35 + 1;
              if (!v35)
              {
                goto LABEL_125;
              }
            }

            else
            {
              if ((v36 | 7) == 0x17)
              {
                v37 = 25;
              }

              else
              {
                v37 = (v36 | 7) + 1;
              }

              v38 = operator new(v37);
              v141.__r_.__value_.__l.__size_ = v35 + 1;
              v141.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v38;
            }

            v59 = *a1;
            if (v34 >= 0)
            {
              v60 = a1;
            }

            else
            {
              v60 = *a1;
            }

            memmove(v38, v60, v35);
LABEL_125:
            *&v38[v35] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v157;
            }

            else
            {
              v61 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v157.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&v141, v61, v62);
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p[2] = v63->__r_.__value_.__r.__words[2];
            *__p = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v65 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_296E3E000, v33, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_110:
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            }

LABEL_115:
            operator delete(__p[0]);
            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_116:
              operator delete(v141.__r_.__value_.__l.__data_);
            }

LABEL_117:
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }

            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }

        while (1)
        {
          memset(&v157, 170, sizeof(v157));
          if (*(v14 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
          }

          else
          {
            v75 = *v14;
            v157.__r_.__value_.__r.__words[2] = v14[2];
            *&v157.__r_.__value_.__l.__data_ = v75;
          }

          memset(__p, 170, sizeof(__p));
          v76 = *(a2 + 23);
          if (v76 >= 0)
          {
            v77 = *(a2 + 23);
          }

          else
          {
            v77 = a2[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            p_buf = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          v81 = *a2;
          if (v76 >= 0)
          {
            v82 = a2;
          }

          else
          {
            v82 = *a2;
          }

          memmove(p_buf, v82, v77);
LABEL_179:
          *(&p_buf->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v157;
          }

          else
          {
            v83 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v157.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&buf, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_187;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_187:
          v87 = *(a1 + 23);
          if (v87 >= 0)
          {
            v88 = *(a1 + 23);
          }

          else
          {
            v88 = *(a1 + 8);
          }

          v89 = v88 + 1;
          if (v88 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v89 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v91 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v88 + 1;
            if (!v88)
            {
              goto LABEL_201;
            }
          }

          else
          {
            if ((v89 | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v89 | 7) + 1;
            }

            v91 = operator new(v90);
            buf.__r_.__value_.__l.__size_ = v88 + 1;
            buf.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v91;
          }

          v92 = *a1;
          if (v87 >= 0)
          {
            v93 = a1;
          }

          else
          {
            v93 = *a1;
          }

          memmove(v91, v93, v88);
LABEL_201:
          *(&v91->__r_.__value_.__l.__data_ + v88) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = &v157;
          }

          else
          {
            v94 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v95 = v157.__r_.__value_.__l.__size_;
          }

          v96 = std::string::append(&buf, v94, v95);
          v97 = *&v96->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v97;
          v96->__r_.__value_.__l.__size_ = 0;
          v96->__r_.__value_.__r.__words[2] = 0;
          v96->__r_.__value_.__r.__words[0] = 0;
          v98 = ctu::fs::rename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              explicit = atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire);
              if (v98)
              {
                goto LABEL_210;
              }

              goto LABEL_226;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire);
          if (v98)
          {
LABEL_210:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
            {
              qword_2A18B7DE0 = 0;
              qword_2A18B7DE8 = 0;
              __cxa_guard_release(&qword_2A18B7DD8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v100 = qword_2A18B7DE8;
              if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
              v100 = qword_2A18B7DE8;
              if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            v101 = *(a1 + 23);
            if (v101 >= 0)
            {
              v102 = *(a1 + 23);
            }

            else
            {
              v102 = *(a1 + 8);
            }

            v103 = v102 + 1;
            if (v102 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v103 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v105 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v102 + 1;
              if (v102)
              {
                goto LABEL_239;
              }
            }

            else
            {
              if ((v103 | 7) == 0x17)
              {
                v104 = 25;
              }

              else
              {
                v104 = (v103 | 7) + 1;
              }

              v105 = operator new(v104);
              buf.__r_.__value_.__l.__size_ = v102 + 1;
              buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v105;
LABEL_239:
              v112 = *a1;
              if (v101 >= 0)
              {
                v113 = a1;
              }

              else
              {
                v113 = *a1;
              }

              memmove(v105, v113, v102);
            }

            *(&v105->__r_.__value_.__l.__data_ + v102) = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v157;
            }

            else
            {
              v114 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v157.__r_.__value_.__l.__size_;
            }

            v116 = std::string::append(&buf, v114, v115);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            v118 = &v141;
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v118 = v141.__r_.__value_.__r.__words[0];
            }

            v119 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v119 = __p[0];
            }

            *v152 = 136315394;
            v153 = v118;
            v154 = 2080;
            v155 = v119;
            _os_log_impl(&dword_296E3E000, v100, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v152, 0x16u);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_254;
            }

            goto LABEL_272;
          }

LABEL_226:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
          {
            qword_2A18B7DE0 = 0;
            qword_2A18B7DE8 = 0;
            __cxa_guard_release(&qword_2A18B7DD8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v106 = qword_2A18B7DE8;
            if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
            v106 = qword_2A18B7DE8;
            if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          v107 = *(a1 + 23);
          if (v107 >= 0)
          {
            v108 = *(a1 + 23);
          }

          else
          {
            v108 = *(a1 + 8);
          }

          v109 = v108 + 1;
          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v109 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v111 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v108 + 1;
            if (!v108)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if ((v109 | 7) == 0x17)
            {
              v110 = 25;
            }

            else
            {
              v110 = (v109 | 7) + 1;
            }

            v111 = operator new(v110);
            buf.__r_.__value_.__l.__size_ = v108 + 1;
            buf.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v111;
          }

          v120 = *a1;
          if (v107 >= 0)
          {
            v121 = a1;
          }

          else
          {
            v121 = *a1;
          }

          memmove(v111, v121, v108);
LABEL_261:
          *(&v111->__r_.__value_.__l.__data_ + v108) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &v157;
          }

          else
          {
            v122 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v123 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v123 = v157.__r_.__value_.__l.__size_;
          }

          v124 = std::string::append(&buf, v122, v123);
          v125 = *&v124->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v125;
          v124->__r_.__value_.__l.__size_ = 0;
          v124->__r_.__value_.__r.__words[2] = 0;
          v124->__r_.__value_.__r.__words[0] = 0;
          v126 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v126 = v141.__r_.__value_.__r.__words[0];
          }

          v127 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v127 = __p[0];
          }

          *v152 = 136315394;
          v153 = v126;
          v154 = 2080;
          v155 = v127;
          _os_log_error_impl(&dword_296E3E000, v106, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v152, 0x16u);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_254:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_273;
            }

            goto LABEL_274;
          }

LABEL_272:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_273:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_274:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

LABEL_276:
            operator delete(v157.__r_.__value_.__l.__data_);
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_276;
            }

LABEL_161:
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
    std::locale::~locale(&v143);
    if (filtered_files)
    {
      goto LABEL_11;
    }
  }

  if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
  {
    qword_2A18B7DE0 = 0;
    qword_2A18B7DE8 = 0;
    __cxa_guard_release(&qword_2A18B7DD8);
  }

  if (_MergedGlobals_3 == -1)
  {
    v66 = qword_2A18B7DE8;
    if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
    v66 = qword_2A18B7DE8;
    if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  v128 = a1;
  if (*(a1 + 23) < 0)
  {
    v128 = *a1;
  }

  LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
  *(v157.__r_.__value_.__r.__words + 4) = v128;
  _os_log_error_impl(&dword_296E3E000, v66, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v157, 0xCu);
LABEL_143:
  if (a3)
  {
    v67 = *(a1 + 23);
    if (v67 < 0)
    {
      v68 = *a1;
    }

    if (v67 >= 0)
    {
      v69 = *(a1 + 23);
    }

    else
    {
      v69 = *(a1 + 8);
    }

    ctu::fs::remove_dir();
  }

  v70 = v149;
  if (v149)
  {
    v71 = v150;
    v72 = v149;
    if (v150 != v149)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v149;
    }

    v150 = v70;
    operator delete(v72);
  }

  v74 = *MEMORY[0x29EDCA608];
}

void sub_296E9D67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
    {
      qword_2A18B7DE0 = 0;
      qword_2A18B7DE8 = 0;
      __cxa_guard_release(&qword_2A18B7DD8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v17 = qword_2A18B7DE8;
      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v17 = qword_2A18B7DE8;
      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    LOWORD(c.count[0]) = 0;
    v18 = "dataIn buffer is NULL";
    p_c = &c;
    v20 = v17;
    v21 = 2;
LABEL_25:
    _os_log_error_impl(&dword_296E3E000, v20, OS_LOG_TYPE_ERROR, v18, p_c, v21);
    goto LABEL_30;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  v10 = a1[23];
  if (v10 < 0)
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (ctu::fs::get_file_size())
  {
    CC_SHA256_Init(&c);
    v13 = a1;
    if (a1[23] < 0)
    {
      v13 = *a1;
    }

    v14 = open(v13, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        v16 = read(v14, a2, a3);
        if (v16 == -1)
        {
          break;
        }

        CC_SHA256_Update(&c, a2, v16);
        v15 += v16;
        if (v15 >= 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }
      }

      if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
      {
        qword_2A18B7DE0 = 0;
        qword_2A18B7DE8 = 0;
        __cxa_guard_release(&qword_2A18B7DD8);
      }

      if (_MergedGlobals_3 == -1)
      {
        v27 = qword_2A18B7DE8;
        if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          CC_SHA256_Final(*a4, &c);
          close(v14);
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
        v27 = qword_2A18B7DE8;
        if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v30;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_error_impl(&dword_296E3E000, v27, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
      goto LABEL_29;
    }

    if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
    {
      qword_2A18B7DE0 = 0;
      qword_2A18B7DE8 = 0;
      __cxa_guard_release(&qword_2A18B7DD8);
    }

    if (_MergedGlobals_3 != -1)
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v22 = qword_2A18B7DE8;
      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v22 = qword_2A18B7DE8;
    if (os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      v26 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v18 = "Failed to open %s : %s (%d, 0x%x)";
      p_c = buf;
      v20 = v22;
      v21 = 34;
      goto LABEL_25;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_296E9DC94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(uint64_t *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  v16 = 65541;
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
    {
      qword_2A18B7DE0 = 0;
      qword_2A18B7DE8 = 0;
      __cxa_guard_release(&qword_2A18B7DD8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v12 = qword_2A18B7DE8;
      result = os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
      v12 = qword_2A18B7DE8;
      result = os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v18 = v1;
    v19 = 2080;
    v20 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v16, 0);
  close(v3);
  if (!v4)
  {
    result = 1;
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
  {
    qword_2A18B7DE0 = 0;
    qword_2A18B7DE8 = 0;
    __cxa_guard_release(&qword_2A18B7DD8);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
    v5 = qword_2A18B7DE8;
    result = os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = qword_2A18B7DE8;
  result = os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_7:
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136316162;
    v18 = v1;
    v19 = 2080;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v4;
    v25 = 2048;
    v26 = v16;
    v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
    v10 = v5;
    v11 = 44;
LABEL_17:
    _os_log_error_impl(&dword_296E3E000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_296E9E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 10);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && result >= 0xFFFFFFFF80000000 && result <= 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  return result;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v50 = a2[1];
  if (v3 == v50)
  {
    return;
  }

  v49 = &v50 + 3;
  while (1)
  {
    memset(&v52, 170, sizeof(v52));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v52.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v52.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      v13 = *a1;
      if (v6 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v12, v14, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v15 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v16 = &v52;
      }

      else
      {
        v16 = v52.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, size);
    }

    v15[size] = 0;
    v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v17;
    *v53.st_qspare = v17;
    v53.st_birthtimespec = v17;
    *&v53.st_size = v17;
    v53.st_mtimespec = v17;
    v53.st_ctimespec = v17;
    *&v53.st_uid = v17;
    v53.st_atimespec = v17;
    *&v53.st_dev = v17;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (stat(v18, &v53) || (SHIBYTE(__p[2]) >= 0 ? (v20 = __p) : (v20 = __p[0]), v21 = opendir(v20), (v22 = v21) == 0))
    {
      v19 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v23 = readdir(v21);
    closedir(v22);
    v19 = HIBYTE(__p[2]);
    if (v23)
    {
      break;
    }

LABEL_35:
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 = (v3 + 24);
    if (v3 == v50)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v24 = &v49[HIBYTE(__p[2])];
    if (*v24 == 1885626669 && v49[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v24 == 1935962413 && v24[4] == 115)
    {
      goto LABEL_80;
    }

    v27 = *v24;
    v28 = v24[4];
    if (v27 == 1634296877 && v28 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v30 = __p;
    v31 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v31 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v30 = __p[0];
  v32 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v32 - 5) != 1935962413 || *(v32 - 1) != 115))
  {
    v35 = *(v32 - 5);
    v36 = *(v32 - 1);
    if (v35 != 1634296877 || v36 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v38 = v30 + v31;
      v39 = *(v38 - 9);
      v40 = *(v38 - 1);
      if (v39 == 0x636172742D62622DLL && v40 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v42 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v52.__r_.__value_.__l.__size_;
  }

  v44 = v43 + 9;
  if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    memset(&v53, 0, 24);
    v46 = &v53;
    HIBYTE(v53.st_gid) = v43 + 9;
    if (v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    v53.st_ino = v43 + 9;
    *&v53.st_uid = v45 | 0x8000000000000000;
    *&v53.st_dev = v46;
LABEL_90:
    if (v42 >= 0)
    {
      v47 = &v52;
    }

    else
    {
      v47 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v46, v47, v43);
  }

  strcpy(v46 + v43, "/info.txt");
  *a3 = *&v53.st_dev;
  a3[2] = *&v53.st_uid;
  if ((v19 & 0x80) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v52.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_296E9ECA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t *a1, char *a2)
{
  __p[73] = *MEMORY[0x29EDCA608];
  v84 = 0;
  v85 = 0;
  v86 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v82[32] = v2;
  v83 = v2;
  *v82 = v2;
  *&v82[16] = v2;
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v81[1] = 0;
    v81[2] = 0;
    HIBYTE(v81[2]) = v4 + 2;
    v10 = v81 + 2;
    v81[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v81[1] = (v4 + 2);
    v81[2] = (v8 | 0x8000000000000000);
    v81[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  v11 = *v6;
  if (v3 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  memmove(v10, v12, v4);
LABEL_15:
  v10[v4] = 0;
  v13 = SHIBYTE(v81[2]);
  if ((SHIBYTE(v81[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v81[2]) - 21) < 2)
    {
      v14 = (SHIBYTE(v81[2]) + 2);
      v15 = v81;
      v16 = 22;
LABEL_21:
      v17 = 2 * v16;
      if (v14 > 2 * v16)
      {
        v17 = v14;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 23;
      }

      v20 = v16 == 22;
      goto LABEL_30;
    }

    v24 = v81;
    *(v81 + SHIBYTE(v81[2])) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = v81[1];
  v16 = (v81[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v81[1] >= 2)
  {
    v24 = v81[0];
    *(v81[0] + v81[1]) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v81[2]) = v25 & 0x7F;
LABEL_39:
      v23 = &v25[v24];
      goto LABEL_40;
    }

LABEL_38:
    v81[1] = v25;
    goto LABEL_39;
  }

  v14 = v81[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v81[2] & 0x7FFFFFFFFFFFFFFFLL)) < v81[1] - v16 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v81[0];
  if (v16 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v21 = operator new(v19);
  v22 = v21;
  if (v13)
  {
    memmove(v21, v15, v13);
  }

  *(v22 + v13) = 10798;
  if (!v20)
  {
    operator delete(v15);
  }

  v81[1] = v14;
  v81[2] = (v19 | 0x8000000000000000);
  v81[0] = v22;
  v23 = &v14[v22];
LABEL_40:
  *v23 = 0;
  *__p = *v81;
  __p[2] = v81[2];
  memset(v81, 0, sizeof(v81));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v82, __p, 0);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v81[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v81[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v80 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v80, *a1, a1[1]);
LABEL_47:
  std::locale::locale(&v74, v82);
  v75 = *&v82[8];
  v76 = *&v82[24];
  v77 = *&v82[40];
  v78 = v83;
  if (v83)
  {
    atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
  }

  v79 = *(&v83 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v80, &v74, &v84, 0);
  v27 = v78;
  if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v28 = 0;
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else
  {
    std::locale::~locale(&v74);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v81, 170, sizeof(v81));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *a1, a1[1]);
  }

  else
  {
    v73 = *a1;
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v30 = v84;
  v31 = v85;
  *buf = &v70;
  *&buf[8] = 0xAAAAAAAAAAAAAA00;
  v32 = v85 - v84;
  if (v85 != v84)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v32 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v33 = operator new(v85 - v84);
    v70 = v33;
    v71 = v33;
    v72 = v33 + v32;
    v87 = v33;
    v88 = v33;
    __p[0] = &v70;
    __p[1] = &v87;
    __p[2] = &v88;
    __p[3] = 0xAAAAAAAAAAAAAA00;
    do
    {
      while ((*(v30 + 23) & 0x80000000) == 0)
      {
        v34 = *v30;
        v33->__r_.__value_.__r.__words[2] = v30[2];
        *&v33->__r_.__value_.__l.__data_ = v34;
        ++v33;
        v30 += 3;
        v88 = v33;
        if (v30 == v31)
        {
          goto LABEL_66;
        }
      }

      std::string::__init_copy_ctor_external(v33, *v30, v30[1]);
      v30 += 3;
      v33 = ++v88;
    }

    while (v30 != v31);
LABEL_66:
    v71 = v33;
  }

  util::findBasebandLogInfoFile(&v73.__r_.__value_.__l.__data_, &v70, v81);
  v35 = v70;
  if (v70)
  {
    p_data = &v71->__r_.__value_.__l.__data_;
    v37 = v70;
    if (v71 != v70)
    {
      do
      {
        v38 = *(p_data - 1);
        p_data -= 3;
        if (v38 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v35);
      v37 = v70;
    }

    v71 = v35;
    operator delete(v37);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
LABEL_80:
      memset(__p, 170, 0x240uLL);
      v41 = *(a1 + 23);
      if (v41 >= 0)
      {
        v42 = *(a1 + 23);
      }

      else
      {
        v42 = a1[1];
      }

      v43 = v42 + v40;
      if (v42 + v40 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v43 <= 0x16)
      {
        memset(buf, 0, 24);
        v45 = buf;
        buf[23] = v42 + v40;
        if (!v42)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((v43 | 7) == 0x17)
        {
          v44 = 25;
        }

        else
        {
          v44 = (v43 | 7) + 1;
        }

        v45 = operator new(v44);
        *&buf[8] = v42 + v40;
        *&buf[16] = v44 | 0x8000000000000000;
        *buf = v45;
        if (!v42)
        {
LABEL_111:
          v49 = &v45[v42];
          if (v39 >= 0)
          {
            v50 = v81;
          }

          else
          {
            v50 = v81[0];
          }

          memmove(v49, v50, v40);
          v49[v40] = 0;
          std::ifstream::basic_ifstream(__p, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[17])
            {
              goto LABEL_116;
            }
          }

          else if (__p[17])
          {
LABEL_116:
            std::istream::seekg();
            memset(buf, 170, 24);
            v51 = buf;
            support::fs::readCurrentLine(__p, buf);
            v52 = buf[23];
            v54 = *buf;
            v53 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v51 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v53 = buf[23];
            }

            if (v53 >= 35)
            {
              v55 = &v51[v53];
              v56 = v51;
              do
              {
                v57 = memchr(v56, 98, v53 - 34);
                if (!v57)
                {
                  break;
                }

                if (*v57 == 0x6320676F6C206262 && *(v57 + 1) == 0x6F697463656C6C6FLL && *(v57 + 2) == 0x20726F66202D206ELL && *(v57 + 3) == 0x6E67616964737973 && *(v57 + 27) == 0x65736F6E67616964)
                {
                  if (v57 != v55 && v57 - v51 != -1)
                  {
                    v28 = 1;
                    goto LABEL_148;
                  }

                  break;
                }

                v56 = v57 + 1;
                v53 = v55 - v56;
              }

              while (v55 - v56 >= 35);
            }

            v28 = 0;
LABEL_148:
            if (v52 < 0)
            {
              operator delete(v54);
            }

LABEL_150:
            __p[0] = *MEMORY[0x29EDC9518];
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C2676F0](&__p[2]);
            std::istream::~istream();
            MEMORY[0x29C267970](&__p[53]);
            if (SHIBYTE(v81[2]) < 0)
            {
              goto LABEL_151;
            }

            goto LABEL_103;
          }

          if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
          {
            qword_2A18B7DE0 = 0;
            qword_2A18B7DE8 = 0;
            __cxa_guard_release(&qword_2A18B7DD8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v62 = qword_2A18B7DE8;
            if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              v28 = 0;
              goto LABEL_150;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
            v62 = qword_2A18B7DE8;
            if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }
          }

          v69 = v81;
          if (SHIBYTE(v81[2]) < 0)
          {
            v69 = v81[0];
          }

          *buf = 136315138;
          *&buf[4] = v69;
          _os_log_error_impl(&dword_296E3E000, v62, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_142;
        }
      }

      v47 = *a1;
      if (v41 >= 0)
      {
        v48 = a1;
      }

      else
      {
        v48 = *a1;
      }

      memmove(v45, v48, v42);
      goto LABEL_111;
    }
  }

  else
  {
    v39 = SHIBYTE(v81[2]);
    if (SHIBYTE(v81[2]) >= 0)
    {
      v40 = HIBYTE(v81[2]);
    }

    else
    {
      v40 = v81[1];
    }

    if (v40)
    {
      goto LABEL_80;
    }
  }

  if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
  {
    qword_2A18B7DE0 = 0;
    qword_2A18B7DE8 = 0;
    __cxa_guard_release(&qword_2A18B7DD8);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
  }

  v46 = qword_2A18B7DE8;
  v28 = 0;
  if (os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v6;
    _os_log_impl(&dword_296E3E000, v46, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v28 = 0;
    if (SHIBYTE(v81[2]) < 0)
    {
LABEL_151:
      operator delete(v81[0]);
      v29 = v83;
      if (!v83)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else if (SHIBYTE(v81[2]) < 0)
  {
    goto LABEL_151;
  }

LABEL_103:
  v29 = v83;
  if (!v83)
  {
    goto LABEL_152;
  }

LABEL_104:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_152:
  std::locale::~locale(v82);
  v63 = v84;
  if (v84)
  {
    v64 = v85;
    v65 = v84;
    if (v85 != v84)
    {
      do
      {
        v66 = *(v64 - 1);
        v64 -= 3;
        if (v66 < 0)
        {
          operator delete(*v64);
        }
      }

      while (v64 != v63);
      v65 = v84;
    }

    v85 = v63;
    operator delete(v65);
  }

  v67 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_296E9F790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_296E9F7FC(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va1, a26);
  va_start(va, a26);
  v27.__locale_ = va_arg(va1, std::locale::__imp *);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](&a3);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296E9F814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E9F830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x296E9F848);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E9F864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x296E9F820);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v8 = a3;
  v10 = a6;
  v154 = *MEMORY[0x29EDCA608];
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  memset(v141, 170, sizeof(v141));
  v11 = strlen(__s);
  v106 = v10;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v12;
    *v146 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    v146[7] = v11;
    p_dst = &__dst;
    if (!v11)
    {
      LOBYTE(__dst) = 0;
      v14 = v146[7];
      if ((v146[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v12);
  *(p_dst + v12) = 0;
  v14 = v146[7];
  if ((v146[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v14 - 21 < 2)
    {
      v15 = v8;
      v16 = v14 + 2;
      v17 = &__dst;
      v18 = 22;
LABEL_15:
      v20 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v20 = v16;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_24;
    }

    v27 = &__dst;
    *&v146[v14 - 16] = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  v14 = *(&__dst + 1);
  v18 = (*v146 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - *(&__dst + 1) >= 2)
  {
    v27 = __dst;
    *(__dst + *(&__dst + 1)) = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
LABEL_30:
      v146[7] = v28 & 0x7F;
LABEL_33:
      v26 = v27 + v28;
      goto LABEL_34;
    }

LABEL_32:
    *(&__dst + 1) = v28;
    goto LABEL_33;
  }

  v16 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*v146 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 2 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = __dst;
  v15 = v8;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v14)
  {
    memmove(v24, v17, v14);
  }

  *&v25[v14] = 10798;
  if (!v23)
  {
    operator delete(v17);
  }

  *(&__dst + 1) = v16;
  *v146 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v16];
  v8 = v15;
LABEL_34:
  *v26 = 0;
  v141[2] = *v146;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v29;
  *v141 = __dst;
  *&v139[16] = v29;
  *&v139[32] = v29;
  *v139 = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v139, v141, 0);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v137[32] = v30;
  v138 = v30;
  *v137 = v30;
  *&v137[16] = v30;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v137, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v31 = strlen(this);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v108 = a5 == 0;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    __p[1] = v32;
    v136 = v34 | 0x8000000000000000;
    __p[0] = v33;
    goto LABEL_42;
  }

  HIBYTE(v136) = v31;
  v33 = __p;
  if (v31)
  {
LABEL_42:
    memcpy(v33, this, v32);
  }

  *(v32 + v33) = 0;
  std::locale::locale(&v129, v139);
  v130 = *&v139[8];
  v131 = *&v139[24];
  v132 = *&v139[40];
  v133 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
  }

  v134 = *(&v140 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v129, &v142, 0);
  v36 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v143 - v142));
  if (v143 == v142)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(v142, v143, v39, 1, v37);
  memset(&v128, 0, sizeof(v128));
  v40 = v142;
  v105 = v143;
  if (v142 == v143)
  {
LABEL_192:
    if (!v8)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = *v10;
    }

    std::locale::locale(&v109, v137);
    v110 = *&v137[8];
    v111 = *&v137[24];
    v112 = *&v137[40];
    v113 = v138;
    if (v138)
    {
      atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = *(&v138 + 1);
    v92 = util::checkLogFileAge(&v115, v8, &v109);
    v93 = v113;
    if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v93->__on_zero_shared)(v93);
      std::__shared_weak_count::__release_weak(v93);
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v92)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
        {
          *v10->__r_.__value_.__l.__data_ = 0;
          v10->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v10->__r_.__value_.__s.__data_[0] = 0;
          *(&v10->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if (!v92)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v101 = v8;
  v103 = a5;
  while (1)
  {
    memset(&v127, 170, sizeof(v127));
    v107 = v40;
    v41 = &v127;
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v127, *v40, v40[1]);
    }

    else
    {
      v42 = *v40;
      v127.__r_.__value_.__r.__words[2] = v40[2];
      *&v127.__r_.__value_.__l.__data_ = v42;
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v128.__r_.__value_.__l.__size_;
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    v45 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    v46 = *&v127.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v127.__r_.__value_.__l.__size_;
        v41 = v127.__r_.__value_.__r.__words[0];
      }

      v48 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (v47 >= size)
      {
        v69 = v41 + v47;
        v70 = v48->__r_.__value_.__s.__data_[0];
        v71 = v41;
        do
        {
          v72 = v47 - size;
          if (v72 == -1)
          {
            break;
          }

          v73 = memchr(v71, v70, v72 + 1);
          if (!v73)
          {
            break;
          }

          v74 = v73;
          if (!memcmp(v73, v48, size))
          {
            if (v74 == v69 || v74 - v41 == -1)
            {
              break;
            }

            v67 = 3;
            v10 = v106;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v71 = (v74 + 1);
          v47 = v69 - (v74 + 1);
        }

        while (v47 >= size);
      }
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v49;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v119, 0, 41);
    if (v108)
    {
      v152 = v49;
      v149 = 0xAAAAAAAAAAAAAA00;
      *&v146[24] = v49;
      v147 = 0;
      v148 = 0;
      v150 = 0;
      v151 = 0;
      LOBYTE(v152) = 0;
      BYTE8(v152) = 0;
      v153 = 0;
      __dst = 0uLL;
      *v146 = 0uLL;
      if (v45 >= 0)
      {
        v50 = &v127;
      }

      else
      {
        v50 = v46;
      }

      if (v45 >= 0)
      {
        v51 = v44;
      }

      else
      {
        v51 = *(&v46 + 1);
      }

      *&v146[9] = 0uLL;
      v52 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v137, v50, (v50 + v51), &__dst, 0);
      v53 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v127;
      }

      else
      {
        v54 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v127.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v119, v54, (v54 + v53), &__dst, 0);
      v10 = v106;
      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      if (v52)
      {
        p_matched = &v119[0].__begin_->matched;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_matched = &v119[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          __dst = 0uLL;
          *v146 = 0;
          if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v106->__r_.__value_.__l.__data_);
            *&v106->__r_.__value_.__l.__data_ = __dst;
            v106->__r_.__value_.__r.__words[2] = *v146;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v106->__r_.__value_.__l.__data_ = __dst;
          v106->__r_.__value_.__r.__words[2] = *v146;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v80 = strlen(this);
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v81 = v80;
          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v82 = operator new(v84);
            v117[1] = v81;
            v118 = v84 | 0x8000000000000000;
            v117[0] = v82;
          }

          else
          {
            HIBYTE(v118) = v80;
            v82 = v117;
            if (!v80)
            {
              LOBYTE(v117[0]) = 0;
              if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v116 = *v106;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v116, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v117, &v116);
              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v118) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18B7DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7DD8))
                    {
                      qword_2A18B7DE0 = 0;
                      qword_2A18B7DE8 = 0;
                      __cxa_guard_release(&qword_2A18B7DD8);
                    }

                    if (_MergedGlobals_3 == -1)
                    {
                      v86 = qword_2A18B7DE8;
                      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_3, &__block_literal_global_0);
                      v86 = qword_2A18B7DE8;
                      if (!os_log_type_enabled(qword_2A18B7DE8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v106->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v87 = v106;
                    }

                    else
                    {
                      v87 = v106->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__dst) = 136315138;
                    *(&__dst + 4) = v87;
                    _os_log_impl(&dword_296E3E000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &__dst, 0xCu);
LABEL_156:
                    if (&v128 != v106)
                    {
                      v88 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v88 >= 0)
                        {
                          v90 = v106;
                        }

                        else
                        {
                          v90 = v106->__r_.__value_.__r.__words[0];
                        }

                        if (v88 >= 0)
                        {
                          v91 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v106->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v128.__r_.__value_.__l.__data_, v90, v91);
                      }

                      else
                      {
                        if ((*(&v106->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v128 = *v106;
LABEL_185:
                          v67 = 0;
                          v106->__r_.__value_.__s.__data_[0] = 0;
                          *(&v106->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v128, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v67 = 0;
                      *v106->__r_.__value_.__l.__data_ = 0;
                      v106->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v67 = 2;
LABEL_167:
                  v89 = 1;
LABEL_168:
                  v108 = v89;
                  begin = v119[0].__begin_;
                  if (v119[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v118) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v117[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v82, this, v81);
          *(v81 + v82) = 0;
          if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v56 = &v119[1];
        if (v119[0].__end_ != v119[0].__begin_)
        {
          v56 = v119[0].__begin_;
        }

        i = v56->first.__i_;
        p_i = &v119[0].__begin_->second.__i_;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_i = &v119[1].__end_;
        }

        v59 = *p_i;
        v60 = *p_i - i;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v60 > 0x16)
        {
          if ((v60 | 7) == 0x17)
          {
            v83 = 25;
          }

          else
          {
            v83 = (v60 | 7) + 1;
          }

          v61 = operator new(v83);
          *(&__dst + 1) = v60;
          *v146 = v83 | 0x8000000000000000;
          *&__dst = v61;
          if (v59 == i)
          {
LABEL_98:
            *(v61 + v60) = 0;
            if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v146[7] = *p_i - i;
          v61 = &__dst;
          if (v59 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v61, i, v60);
        goto LABEL_98;
      }

LABEL_166:
      v67 = 0;
      goto LABEL_167;
    }

    v62 = v45 < 0;
    if (v45 >= 0)
    {
      v63 = &v127;
    }

    else
    {
      v63 = v46;
    }

    if (v62)
    {
      v64 = *(&v46 + 1);
    }

    else
    {
      v64 = v44;
    }

    v65 = strlen(v103);
    v10 = v106;
    if (!v65)
    {
LABEL_165:
      std::string::__assign_external(&v128, v103);
      goto LABEL_166;
    }

    v66 = v65;
    if (v64 >= v65)
    {
      v75 = v63 + v64;
      v76 = *v103;
      v77 = v63;
      do
      {
        if (v64 - v66 == -1)
        {
          break;
        }

        v78 = memchr(v77, v76, v64 - v66 + 1);
        if (!v78)
        {
          break;
        }

        v79 = v78;
        if (!memcmp(v78, v103, v66))
        {
          v89 = 0;
          if (v79 != v75)
          {
            v67 = 0;
            if (v79 - v63 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v67 = 0;
          v108 = 0;
          begin = v119[0].__begin_;
          if (v119[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v77 = (v79 + 1);
        v64 = v75 - (v79 + 1);
      }

      while (v64 >= v66);
    }

    v67 = 0;
    v108 = 0;
    begin = v119[0].__begin_;
    if (v119[0].__begin_)
    {
LABEL_169:
      v119[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v40 = v107;
    if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v67 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v40 += 3;
    if (v40 == v105)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (v67 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v67)
  {
    goto LABEL_57;
  }

LABEL_191:
  v8 = v101;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (v101)
  {
    goto LABEL_193;
  }

LABEL_209:
  v94 = v138;
  if (v138 && !atomic_fetch_add((v138 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    v95 = v140;
    if (!v140)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
LABEL_214:
      operator delete(v141[0]);
    }
  }

  else
  {
    std::locale::~locale(v137);
    v95 = v140;
    if (v140)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
      goto LABEL_214;
    }
  }

  v96 = v142;
  if (v142)
  {
    v97 = v143;
    v98 = v142;
    if (v143 != v142)
    {
      do
      {
        v99 = *(v97 - 1);
        v97 -= 3;
        if (v99 < 0)
        {
          operator delete(*v97);
        }
      }

      while (v97 != v96);
      v98 = v142;
    }

    v143 = v96;
    operator delete(v98);
  }

  v100 = *MEMORY[0x29EDCA608];
}

void sub_296EA0658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, uint64_t a2)
{
  v202 = a1;
  v248 = *MEMORY[0x29EDCA608];
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v224 = 0u;
  v225 = 0u;
  v226 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v222[32] = v5;
  v223 = v5;
  *v222 = v5;
  *&v222[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + 64;
  v201 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    v11 = *a2;
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v10, v12, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = v10 + v7;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  *(v13 + 2) = *(v4 + 2);
  *(v13 + 3) = v14;
  *v13 = v16;
  *(v13 + 1) = v15;
  v13[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v18 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v19 = buf;
      v20 = 22;
LABEL_22:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v23 = v22;
      }

      else
      {
        v23 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v20 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v29 & 0x7F;
LABEL_40:
      v27 = v29 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v29;
    goto LABEL_40;
  }

  v18 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v20 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = buf[0].__begin_;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v25 = operator new(v23);
  v26 = v25;
  if (value_high)
  {
    memmove(v25, v19, value_high);
  }

  *(&v26->first.__i_ + value_high) = 10798;
  if (!v24)
  {
    operator delete(v19);
  }

  buf[0].__end_ = v18;
  buf[0].__end_cap_.__value_ = (v23 | 0x8000000000000000);
  buf[0].__begin_ = v26;
  v27 = v18 + v26;
LABEL_41:
  *v27 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v222, __p, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v30;
  v221 = v30;
  v219 = v30;
  *&v218[0].__locale_ = v30;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = v32 + 64;
  if (v32 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    memset(buf, 0, 24);
    v35 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v32 + 64;
LABEL_54:
    v36 = *a2;
    if (v31 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v32);
    goto LABEL_58;
  }

  if ((v33 | 7) == 0x17)
  {
    v34 = 25;
  }

  else
  {
    v34 = (v33 | 7) + 1;
  }

  v35 = operator new(v34);
  buf[0].__end_ = (v32 + 64);
  buf[0].__end_cap_.__value_ = (v34 | 0x8000000000000000);
  buf[0].__begin_ = v35;
  if (v32)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v35 + v32;
  v39 = *(v4 + 3);
  v41 = *v4;
  v40 = *(v4 + 1);
  *(v38 + 2) = *(v4 + 2);
  *(v38 + 3) = v39;
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v43 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v44 = buf;
      v45 = 22;
LABEL_66:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v48 = v47;
      }

      else
      {
        v48 = 23;
      }

      v49 = v45 == 22;
      goto LABEL_75;
    }

    v53 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v52 = v53 + v54;
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v45 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - buf[0].__end_ >= 0x1D)
  {
    v53 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v43 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v45 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = buf[0].__begin_;
  if (v45 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v49 = 0;
  v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v50 = operator new(v48);
  v51 = v50;
  if (end)
  {
    memmove(v50, v44, end);
  }

  qmemcpy(v51 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v49)
  {
    operator delete(v44);
  }

  buf[0].__end_ = v43;
  buf[0].__end_cap_.__value_ = (v48 | 0x8000000000000000);
  buf[0].__begin_ = v51;
  v52 = v43 + v51;
LABEL_83:
  *v52 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v218, __p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v55 = v202;
    if ((*(v202 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(*__p);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v55 = v202;
  if ((*(v202 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v217 = *v55;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v217, v55->__r_.__value_.__l.__data_, v55->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v211, v222);
  v212 = *&v222[8];
  v213 = *&v222[24];
  v214 = *&v222[40];
  v215 = v223;
  if (v223)
  {
    atomic_fetch_add_explicit((v223 + 8), 1uLL, memory_order_relaxed);
  }

  v216 = *(&v223 + 1);
  support::fs::getFilteredFiles(&v217, &v211, &v227, 0);
  v56 = v215;
  if (v215 && !atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v58 = v227;
      v57 = v228;
      if (v227 == v228)
      {
        goto LABEL_268;
      }

      goto LABEL_99;
    }
  }

  else
  {
    std::locale::~locale(&v211);
    if ((SHIBYTE(v217.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }
  }

  operator delete(v217.__r_.__value_.__l.__data_);
  v58 = v227;
  v57 = v228;
  if (v227 == v228)
  {
    goto LABEL_268;
  }

LABEL_99:
  p_end_cap = &buf[1].__end_cap_;
  v205 = &buf[1];
  v206 = &v225;
  p_end = &buf[1].__end_;
  v207 = &buf[1].__end_cap_;
  v208 = v57;
  while (2)
  {
    *&v60 = 0xAAAAAAAAAAAAAAAALL;
    *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&p_end_cap[4].__value_ = v60;
    *&p_end_cap[6].__value_ = v60;
    *&p_end_cap->__value_ = v60;
    *&p_end_cap[2].__value_ = v60;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    memset(buf, 0, 41);
    v237 = v60;
    v234 = 0xAAAAAAAAAAAAAA00;
    v231 = 0xAAAAAAAAAAAAAAAALL;
    v232 = 0;
    v233 = 0;
    v235 = 0;
    v236 = 0;
    LOBYTE(v237) = 0;
    BYTE8(v237) = 0;
    v238 = 0;
    memset(__p, 0, sizeof(__p));
    second = *(&v58->matched + 7);
    if (second >= 0)
    {
      first = v58;
    }

    else
    {
      first = v58->first;
    }

    if (second < 0)
    {
      second = v58->second;
    }

    v63 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v218, first, &second[first], __p, 0);
    v64 = *(&v58->matched + 7);
    if (v64 >= 0)
    {
      v65 = v58;
    }

    else
    {
      v65 = v58->first;
    }

    if (v64 < 0)
    {
      v64 = v58->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v65, &v64[v65], __p, 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    v66 = buf[0].__begin_;
    if (!v63)
    {
      goto LABEL_258;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = p_end_cap;
    }

    if (*p_matched)
    {
      v68 = v205;
      if (buf[0].__end_ != buf[0].__begin_)
      {
        v68 = buf[0].__begin_;
      }

      i = v68->first.__i_;
      p_second = &buf[0].__begin_->second;
      if (buf[0].__end_ == buf[0].__begin_)
      {
        p_second = p_end;
      }

      v71 = p_second->__i_;
      v72 = p_second->__i_ - i;
      if (v72 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v72 > 0x16)
      {
        if ((v72 | 7) == 0x17)
        {
          v160 = 25;
        }

        else
        {
          v160 = (v72 | 7) + 1;
        }

        p_dst = operator new(v160);
        *(&__dst + 1) = v72;
        v210 = v160 | 0x8000000000000000;
        *&__dst = p_dst;
        if (v71 == i)
        {
          goto LABEL_125;
        }
      }

      else
      {
        HIBYTE(v210) = LOBYTE(p_second->__i_) - i;
        p_dst = &__dst;
        if (v71 == i)
        {
LABEL_125:
          *(p_dst + v72) = 0;
          v74 = HIBYTE(v210);
          v76 = *(&__dst + 1);
          v75 = __dst;
          goto LABEL_127;
        }
      }

      memmove(p_dst, i, v72);
      goto LABEL_125;
    }

    v76 = 0;
    v75 = 0;
    v74 = 0;
    __dst = 0uLL;
    v210 = 0;
LABEL_127:
    if ((v74 & 0x80u) == 0)
    {
      v77 = &__dst;
    }

    else
    {
      v77 = v75;
    }

    if ((v74 & 0x80u) == 0)
    {
      v78 = v74;
    }

    else
    {
      v78 = v76;
    }

    if (v78 > 0x20)
    {
      if (v78 <= 0x40)
      {
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v82 = *(v75 + 3);
        v83 = *(v77 + v78 - 16);
        v84 = *v77 - 0x3C5A37A36834CED9 * (v83 + v78);
        v85 = __ROR8__(v84 + v82, 52);
        v87 = *(v75 + 1);
        v86 = *(v75 + 2);
        v88 = v84 + v87;
        v89 = __ROR8__(v88, 7);
        v90 = v88 + v86;
        v91 = v89 + __ROR8__(*v77 - 0x3C5A37A36834CED9 * (v83 + v78), 37) + v85 + __ROR8__(v90, 31);
        v92 = *(v77 + v78 - 32) + v86;
        v93 = *(v77 + v78 - 8) + v82;
        v94 = __ROR8__(v93 + v92, 52);
        v95 = __ROR8__(v92, 37);
        v96 = *(v77 + v78 - 24) + v92;
        v97 = __ROR8__(v96, 7);
        v98 = v96 + v83;
        v99 = v98 + v93;
        v100 = v90 + v82 + v95 + v97 + v94 + __ROR8__(v98, 31);
        v101 = 0x9AE16A3B2F90404FLL;
        v102 = v91 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) ^ ((0xC3A5C85C97CB3127 * (v99 + v91) - 0x651E95C4D06FBFB1 * v100) >> 47));
        goto LABEL_145;
      }

      v109 = *(v77 + v78 - 48);
      v110 = *(v77 + v78 - 40);
      v111 = *(v77 + v78 - 24);
      v112 = *(v77 + v78 - 56);
      v114 = *(v77 + v78 - 16);
      v113 = *(v77 + v78 - 8);
      v115 = v112 + v114;
      v116 = 0x9DDFEA08EB382D69 * (v111 ^ ((0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))) >> 47) ^ (0x9DDFEA08EB382D69 * (v111 ^ (v109 + v78))));
      v117 = 0x9DDFEA08EB382D69 * (v116 ^ (v116 >> 47));
      v118 = *(v77 + v78 - 64) + v78;
      v119 = v109 + v112 + v118;
      v120 = __ROR8__(v119, 44) + v118;
      v121 = __ROR8__(v118 + v110 + v117, 21);
      v122 = v119 + v110;
      v123 = v120 + v121;
      v124 = v115 + *(v77 + v78 - 32) - 0x4B6D499041670D8DLL;
      v125 = v111 + v114 + v124;
      v126 = v125 + v113;
      v127 = __ROR8__(v125, 44) + v124 + __ROR8__(v124 + v110 + v113, 21);
      v128 = v77 + 2;
      v129 = *v77 - 0x4B6D499041670D8DLL * v110;
      v130 = -((v78 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v131 = *(v128 - 3);
        v132 = v129 + v122 + v115 + v131;
        v133 = v128[2];
        v134 = v128[3];
        v135 = v128[1];
        v115 = v135 + v122 - 0x4B6D499041670D8DLL * __ROR8__(v115 + v123 + v133, 42);
        v136 = v117 + v126;
        v137 = *(v128 - 2);
        v138 = *(v128 - 1);
        v139 = *(v128 - 4) - 0x4B6D499041670D8DLL * v123;
        v140 = v139 + v126 + v138;
        v141 = v139 + v131 + v137;
        v122 = v141 + v138;
        v142 = __ROR8__(v141, 44) + v139;
        v143 = (0xB492B66FBE98F273 * __ROR8__(v132, 37)) ^ v127;
        v129 = 0xB492B66FBE98F273 * __ROR8__(v136, 33);
        v123 = v142 + __ROR8__(v140 + v143, 21);
        v144 = v129 + v127 + *v128;
        v126 = v135 + v133 + v144 + v134;
        v127 = __ROR8__(v135 + v133 + v144, 44) + v144 + __ROR8__(v115 + v137 + v144 + v134, 21);
        v128 += 8;
        v117 = v143;
        v130 += 64;
      }

      while (v130);
      v145 = v129 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) ^ ((0x9DDFEA08EB382D69 * (v127 ^ ((0x9DDFEA08EB382D69 * (v127 ^ v123)) >> 47) ^ (0x9DDFEA08EB382D69 * (v127 ^ v123)))) >> 47));
      v146 = 0x9DDFEA08EB382D69 * (v145 ^ (v143 - 0x4B6D499041670D8DLL * (v115 ^ (v115 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) ^ ((0x9DDFEA08EB382D69 * (v126 ^ ((0x9DDFEA08EB382D69 * (v126 ^ v122)) >> 47) ^ (0x9DDFEA08EB382D69 * (v126 ^ v122)))) >> 47))));
      v81 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) ^ ((0x9DDFEA08EB382D69 * (v145 ^ (v146 >> 47) ^ v146)) >> 47));
    }

    else
    {
      if (v78 > 0x10)
      {
        v103 = 0xB492B66FBE98F273 * *v77;
        if ((v74 & 0x80u) == 0)
        {
          v75 = &__dst;
        }

        v104 = *(v75 + 1);
        v105 = __ROR8__(0x9AE16A3B2F90404FLL * *(v77 + v78 - 8), 30) + __ROR8__(v103 - v104, 43) - 0x3C5A37A36834CED9 * *(v77 + v78 - 16);
        v106 = v103 + v78 + __ROR8__(v104 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v77 + v78 - 8);
        v107 = v105 ^ v106;
        v101 = 0x9DDFEA08EB382D69;
        v108 = v106 ^ ((0x9DDFEA08EB382D69 * v107) >> 47) ^ (0x9DDFEA08EB382D69 * v107);
        goto LABEL_144;
      }

      if (v78 >= 9)
      {
        v79 = *(v77 + v78 - 8);
        v80 = __ROR8__(v79 + v78, v78);
        v81 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) ^ ((0x9DDFEA08EB382D69 * (v80 ^ ((0x9DDFEA08EB382D69 * (v80 ^ *v77)) >> 47) ^ (0x9DDFEA08EB382D69 * (v80 ^ *v77)))) >> 47))) ^ v79;
        goto LABEL_149;
      }

      if (v78 >= 4)
      {
        v161 = *(v77 + v78 - 4);
        v101 = 0x9DDFEA08EB382D69;
        v162 = 0x9DDFEA08EB382D69 * ((v78 + (8 * *v77)) ^ v161);
        v108 = v161 ^ (v162 >> 47) ^ v162;
LABEL_144:
        v102 = 0x9DDFEA08EB382D69 * v108;
LABEL_145:
        v81 = (v102 ^ (v102 >> 47)) * v101;
        goto LABEL_149;
      }

      v81 = 0x9AE16A3B2F90404FLL;
      if (v78)
      {
        v181 = (0xC949D7C7509E6557 * (v78 | (4 * *(v77 + v78 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v77 | (*(v77 + (v78 >> 1)) << 8)));
        v81 = 0x9AE16A3B2F90404FLL * (v181 ^ (v181 >> 47));
      }
    }

LABEL_149:
    v147 = *(&v224 + 1);
    if (!*(&v224 + 1))
    {
      v149 = 0xAAAAAAAAAAAAAAAALL;
LABEL_191:
      v163 = operator new(0x28uLL);
      *__p = v163;
      *&__p[8] = &v224;
      *&__p[16] = 1;
      *v163 = 0;
      v163[1] = v81;
      *(v163 + 1) = __dst;
      v163[4] = v210;
      __dst = 0uLL;
      v210 = 0;
      v164 = (*(&v225 + 1) + 1);
      if (v147 && (*&v226 * v147) >= v164)
      {
        v81 = v149;
        goto LABEL_252;
      }

      v165 = (v147 & (v147 - 1)) != 0;
      if (v147 < 3)
      {
        v165 = 1;
      }

      v166 = v165 | (2 * v147);
      v167 = vcvtps_u32_f32(v164 / *&v226);
      if (v166 <= v167)
      {
        prime = v167;
      }

      else
      {
        prime = v166;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v147 = *(&v224 + 1);
      }

      if (prime <= v147)
      {
        if (prime >= v147)
        {
          goto LABEL_240;
        }

        v177 = vcvtps_u32_f32(*(&v225 + 1) / *&v226);
        if (v147 < 3 || (v178 = vcnt_s8(v147), v178.i16[0] = vaddlv_u8(v178), v178.u32[0] > 1uLL))
        {
          v177 = std::__next_prime(v177);
        }

        else
        {
          v179 = 1 << -__clz(v177 - 1);
          if (v177 >= 2)
          {
            v177 = v179;
          }
        }

        if (prime <= v177)
        {
          prime = v177;
        }

        if (prime >= v147)
        {
          v147 = *(&v224 + 1);
          v183 = *(&v224 + 1) - 1;
          if ((*(&v224 + 1) & (*(&v224 + 1) - 1)) != 0)
          {
LABEL_250:
            if (v81 >= v147)
            {
              v81 %= v147;
            }

LABEL_252:
            v185 = v224;
            v186 = *(v224 + 8 * v81);
            if (v186)
            {
              *v163 = *v186;
            }

            else
            {
              *v163 = v225;
              *&v225 = v163;
              *(v185 + 8 * v81) = v206;
              if (!*v163)
              {
LABEL_255:
                ++*(&v225 + 1);
                if ((v210 & 0x8000000000000000) != 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              v187 = *(*v163 + 8);
              if ((v147 & (v147 - 1)) != 0)
              {
                if (v187 >= v147)
                {
                  v187 %= v147;
                }

                v186 = (v185 + 8 * v187);
              }

              else
              {
                v186 = (v185 + 8 * (v187 & (v147 - 1)));
              }
            }

            *v186 = v163;
            goto LABEL_255;
          }

LABEL_241:
          v81 &= v183;
          goto LABEL_252;
        }

        if (!prime)
        {
          v182 = v224;
          *&v224 = 0;
          if (v182)
          {
            operator delete(v182);
          }

          v147 = 0;
          *(&v224 + 1) = 0;
          v183 = -1;
          goto LABEL_241;
        }
      }

      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v169 = operator new(8 * prime);
      v170 = v224;
      *&v224 = v169;
      if (v170)
      {
        operator delete(v170);
        v169 = v224;
      }

      *(&v224 + 1) = prime;
      bzero(v169, 8 * prime);
      v171 = v225;
      if (!v225)
      {
LABEL_249:
        v147 = prime;
        v183 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      v172 = *(v225 + 8);
      v173 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v174 = v172 & v173;
        *(v169 + v174) = v206;
        for (j = *v171; *v171; j = *v171)
        {
          v176 = j[1] & v173;
          if (v176 == v174)
          {
            v171 = j;
          }

          else if (*(v169 + v176))
          {
            *v171 = *j;
            *j = **(v169 + v176);
            **(v169 + v176) = j;
          }

          else
          {
            *(v169 + v176) = v171;
            v171 = j;
            v174 = v176;
          }
        }

        goto LABEL_249;
      }

      if (v172 < prime)
      {
        *(v169 + v172) = v206;
        v180 = *v171;
        if (*v171)
        {
          goto LABEL_244;
        }

        goto LABEL_239;
      }

      v172 %= prime;
      *(v169 + v172) = v206;
      v180 = *v171;
      if (!*v171)
      {
LABEL_239:
        v147 = prime;
LABEL_240:
        v183 = v147 - 1;
        if ((v147 & (v147 - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      while (1)
      {
LABEL_244:
        v184 = v180[1];
        if (v184 >= prime)
        {
          v184 %= prime;
        }

        if (v184 == v172)
        {
          goto LABEL_243;
        }

        if (*(v169 + v184))
        {
          *v171 = *v180;
          *v180 = **(v169 + v184);
          **(v169 + v184) = v180;
          v180 = v171;
LABEL_243:
          v171 = v180;
          v180 = *v180;
          if (!v180)
          {
            goto LABEL_249;
          }
        }

        else
        {
          *(v169 + v184) = v171;
          v171 = v180;
          v180 = *v180;
          v172 = v184;
          if (!v180)
          {
            goto LABEL_249;
          }
        }
      }
    }

    v148 = vcnt_s8(*(&v224 + 8));
    v148.i16[0] = vaddlv_u8(v148);
    if (v148.u32[0] > 1uLL)
    {
      v149 = v81;
      if (v81 >= *(&v224 + 1))
      {
        v149 = v81 % *(&v224 + 1);
      }
    }

    else
    {
      v149 = (*(&v224 + 1) - 1) & v81;
    }

    v150 = *(v224 + 8 * v149);
    if (!v150)
    {
      goto LABEL_191;
    }

    v151 = *v150;
    if (!*v150)
    {
      goto LABEL_191;
    }

    if (v148.u32[0] < 2uLL)
    {
      v203 = v74;
      while (1)
      {
        v156 = v151[1];
        if (v156 == v81)
        {
          v157 = *(v151 + 39);
          v158 = v157;
          if (v157 < 0)
          {
            v157 = v151[3];
          }

          if (v157 == v78)
          {
            v159 = v158 >= 0 ? (v151 + 2) : v151[2];
            if (!memcmp(v159, v77, v78))
            {
              if ((v203 & 0x80) != 0)
              {
                goto LABEL_256;
              }

              goto LABEL_257;
            }
          }
        }

        else if ((v156 & (v147 - 1)) != v149)
        {
          goto LABEL_191;
        }

        v151 = *v151;
        if (!v151)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v152 = v151[1];
      if (v152 == v81)
      {
        break;
      }

      if (v152 >= v147)
      {
        v152 %= v147;
      }

      if (v152 != v149)
      {
        goto LABEL_191;
      }

LABEL_160:
      v151 = *v151;
      if (!v151)
      {
        goto LABEL_191;
      }
    }

    v153 = *(v151 + 39);
    v154 = v153;
    if (v153 < 0)
    {
      v153 = v151[3];
    }

    if (v153 != v78)
    {
      goto LABEL_160;
    }

    v155 = v154 >= 0 ? (v151 + 2) : v151[2];
    if (memcmp(v155, v77, v78))
    {
      goto LABEL_160;
    }

    if ((v74 & 0x80) != 0)
    {
LABEL_256:
      operator delete(__dst);
    }

LABEL_257:
    v66 = buf[0].__begin_;
    p_end_cap = v207;
    v57 = v208;
LABEL_258:
    if (v66)
    {
      buf[0].__end_ = v66;
      operator delete(v66);
    }

    if (++v58 != v57)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v188 = *(&v225 + 1);
  v189 = v221;
  if (v221 && !atomic_fetch_add((v221 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v189->__on_zero_shared)(v189);
    std::__shared_weak_count::__release_weak(v189);
  }

  std::locale::~locale(v218);
  v190 = v223;
  v191 = v201;
  if (v223 && !atomic_fetch_add((v223 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v190->__on_zero_shared)(v190);
    std::__shared_weak_count::__release_weak(v190);
  }

  std::locale::~locale(v222);
  operator delete(v191);
  v192 = v225;
  if (v225)
  {
    do
    {
      v200 = *v192;
      if (*(v192 + 39) < 0)
      {
        operator delete(v192[2]);
      }

      operator delete(v192);
      v192 = v200;
    }

    while (v200);
  }

  v193 = v224;
  *&v224 = 0;
  if (v193)
  {
    operator delete(v193);
  }

  v194 = v227;
  if (v227)
  {
    v195 = v228;
    v196 = v227;
    if (v228 != v227)
    {
      do
      {
        v197 = *(v195 - 1);
        v195 -= 3;
        if (v197 < 0)
        {
          operator delete(*v195);
        }
      }

      while (v195 != v194);
      v196 = v227;
    }

    v228 = v194;
    operator delete(v196);
  }

  v198 = *MEMORY[0x29EDCA608];
  return v188;
}

void sub_296EA1D68(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_296EA1D98(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t util::compareTwoStringsWithPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = 0xAAAAAAAAAAAAAA00;
  v90[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v96 = v5;
  v91 = 0;
  v92 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  BYTE8(v96) = 0;
  v97 = 0;
  memset(v90, 0, 41);
  v88 = v5;
  v89 = v5;
  *&v86[0].__locale_ = v5;
  v87 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v86, a3, 0);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  v81 = 0;
  v82 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v6;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  *(v99 + 9) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v8, (v8 + v7), &__dst, 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v11, (v11 + v10), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v9)
  {
LABEL_124:
    v38 = 0;
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  v79 = a2;
  end = v90[0].__end_;
  begin = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!begin->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v20 = v84;
      v19 = v85;
      if (v84 >= v85)
      {
LABEL_26:
        v21 = v83;
        v22 = v20 - v83;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 - v83);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v83) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(24 * v26);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[24 * v23];
        v30 = &v27[24 * v26];
        *v29 = __dst;
        *(v29 + 2) = *&v99[0];
        v14 = (v29 + 24);
        v31 = &v29[-v22];
        memcpy(&v29[-v22], v83, v22);
        v83 = v31;
        v85 = v30;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_17;
      }

LABEL_16:
      *v20 = __dst;
      v20[2] = *&v99[0];
      v14 = v20 + 3;
LABEL_17:
      v84 = v14;
      if (++begin == end)
      {
        goto LABEL_44;
      }
    }

    i = begin->first.__i_;
    v16 = begin->second.__i_;
    v17 = v16 - begin->first.__i_;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v17 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v17;
      *&v99[0] = v28 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v16 == i)
      {
LABEL_23:
        *(p_dst + v17) = 0;
        v20 = v84;
        v19 = v85;
        if (v84 >= v85)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    else
    {
      BYTE7(v99[0]) = v16 - LOBYTE(begin->first.__i_);
      p_dst = &__dst;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, i, v17);
    goto LABEL_23;
  }

  v14 = 0;
LABEL_44:
  v32 = v83;
  if (v14 - v83 != 24)
  {
    v33 = v83 + 3;
    while (v33 != v14)
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = *(v32 + 3);
      v32[2] = v32[5];
      *(v32 + 47) = 0;
      v33 = v32 + 6;
      *(v32 + 24) = 0;
      v32 += 3;
    }

    while (v14 != v32)
    {
      v34 = *(v14 - 1);
      v14 -= 3;
      if (v34 < 0)
      {
        operator delete(*v14);
      }
    }

    v84 = v32;
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v35;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v36 = *(v79 + 23);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v79;
  }

  else
  {
    v37 = *v79;
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v79 + 8);
  }

  *(v99 + 9) = 0uLL;
  v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v37, (v37 + v36), &__dst, 0);
  v39 = *(v79 + 23);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v79;
  }

  else
  {
    v40 = *v79;
  }

  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v79 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v40, (v40 + v39), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v38)
  {
LABEL_129:
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

LABEL_130:
    v73 = v81;
    while (v73 != v61)
    {
      v74 = *(v73 - 1);
      v73 -= 3;
      if (v74 < 0)
      {
        operator delete(*v73);
      }
    }

    operator delete(v61);
    goto LABEL_135;
  }

  v42 = v90[0].__end_;
  v41 = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!v41->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v49 = v81;
      v48 = v82;
      if (v81 >= v82)
      {
LABEL_79:
        v50 = __p;
        v51 = v49 - __p;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v49 - __p);
        v53 = v52 + 1;
        if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          if (v55 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = operator new(24 * v55);
        }

        else
        {
          v56 = 0;
        }

        v58 = &v56[24 * v52];
        v59 = &v56[24 * v55];
        *v58 = __dst;
        *(v58 + 2) = *&v99[0];
        v43 = (v58 + 24);
        v60 = &v58[-v51];
        memcpy(&v58[-v51], __p, v51);
        __p = v60;
        v82 = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_70;
      }

LABEL_69:
      *v49 = __dst;
      v49[2] = *&v99[0];
      v43 = v49 + 3;
LABEL_70:
      v81 = v43;
      if (++v41 == v42)
      {
        goto LABEL_97;
      }
    }

    v44 = v41->first.__i_;
    v45 = v41->second.__i_;
    v46 = v45 - v41->first.__i_;
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v46 > 0x16)
    {
      if ((v46 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v46 | 7) + 1;
      }

      v47 = operator new(v57);
      *(&__dst + 1) = v46;
      *&v99[0] = v57 | 0x8000000000000000;
      *&__dst = v47;
      if (v45 == v44)
      {
LABEL_76:
        *(v47 + v46) = 0;
        v49 = v81;
        v48 = v82;
        if (v81 >= v82)
        {
          goto LABEL_79;
        }

        goto LABEL_69;
      }
    }

    else
    {
      BYTE7(v99[0]) = v45 - LOBYTE(v41->first.__i_);
      v47 = &__dst;
      if (v45 == v44)
      {
        goto LABEL_76;
      }
    }

    memmove(v47, v44, v46);
    goto LABEL_76;
  }

  v43 = 0;
LABEL_97:
  v61 = __p;
  if (v43 - __p != 24)
  {
    v62 = __p;
    if (__p + 3 != v43)
    {
      v62 = __p;
      do
      {
        if (*(v62 + 23) < 0)
        {
          operator delete(*v62);
        }

        *v62 = *(v62 + 3);
        v62[2] = v62[5];
        *(v62 + 47) = 0;
        v63 = v62 + 6;
        *(v62 + 24) = 0;
        v62 += 3;
      }

      while (v63 != v43);
    }

    while (v43 != v62)
    {
      v64 = *(v43 - 1);
      v43 -= 3;
      if (v64 < 0)
      {
        operator delete(*v43);
      }
    }

    v81 = v62;
  }

  v65 = v83;
  if (v83 == v84)
  {
    v38 = 1;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  do
  {
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = *(v65 + 23);
    }

    else
    {
      v67 = v65[1];
    }

    v68 = *(v61 + 23);
    v69 = v68;
    if (v68 < 0)
    {
      v68 = v61[1];
    }

    if (v67 != v68)
    {
      v38 = 0;
      goto LABEL_129;
    }

    if (v66 >= 0)
    {
      v70 = v65;
    }

    else
    {
      v70 = *v65;
    }

    v71 = *v61;
    if (v69 >= 0)
    {
      v72 = v61;
    }

    else
    {
      v72 = *v61;
    }

    if (memcmp(v70, v72, v67))
    {
      goto LABEL_124;
    }

    v65 += 3;
    v61 += 3;
  }

  while (v65 != v84);
  v38 = 1;
  v61 = __p;
  if (__p)
  {
    goto LABEL_130;
  }

LABEL_135:
  if (v83)
  {
    v75 = v84;
    while (v75 != v83)
    {
      v76 = *(v75 - 1);
      v75 -= 3;
      if (v76 < 0)
      {
        operator delete(*v75);
      }
    }

    operator delete(v83);
  }

  v77 = v89;
  if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  std::locale::~locale(v86);
  if (v90[0].__begin_)
  {
    v90[0].__end_ = v90[0].__begin_;
    operator delete(v90[0].__begin_);
  }

  return v38;
}