void sub_296E8B014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver15getFirmwareInfoEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[4] = v4;
  *__p = v4;
  v11[2] = v4;
  v11[3] = v4;
  v11[0] = v4;
  v11[1] = v4;
  mipc::dale_cps::Bread_Butter_Mode_Req::Bread_Butter_Mode_Req();
  v5 = *(v2 + 8);
  v6 = operator new(1uLL);
  *v6 = v5;
  v7 = __p[1];
  __p[1] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  abb::router::Client::send<mipc::dale_cps::Bread_Butter_Mode_Req>(v14, (v3 + 232), v11);
  v8 = *(v2 + 8);
  v16[0] = &unk_2A1E135C8;
  v16[1] = v3;
  v16[2] = v8;
  v17 = v16;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v16, v15);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  MEMORY[0x29C266750](v14);
  mipc::dale_cps::Bread_Butter_Mode_Req::~Bread_Butter_Mode_Req(v11);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E8B3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  mipc::dale_cps::Bread_Butter_Mode_Req::~Bread_Butter_Mode_Req(va1);
  operator delete(v2);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E8B3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::send<mipc::dale_cps::Bread_Butter_Mode_Req>(abb::router::SendProxy *a1, const abb::router::Client *a2, mipc::dale_cps::Bread_Butter_Mode_Req *this)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v5;
  v11[2] = v5;
  v11[0] = v5;
  mipc::dale_cps::Bread_Butter_Mode_Req::serialize(v11, this);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[6] = v6;
  v9[7] = v6;
  v9[4] = v6;
  v9[5] = v6;
  v9[2] = v6;
  v9[3] = v6;
  v9[0] = v6;
  v9[1] = v6;
  MEMORY[0x29C266720](v9, v11);
  abb::router::SendProxy::SendProxy(a1, a2, v9);
  result = MEMORY[0x29C266730](v9);
  if (v12 != -1)
  {
    *&v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v9[0] + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    return (*(v9 + v12))(&v13, v11);
  }

  return result;
}

void sub_296E8B530(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](v2 - 96);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1E135C8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E135C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v19[16] = v4;
  v20 = v4;
  v18[1] = v4;
  *v19 = v4;
  v18[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(v23, this);
    if ((v23[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *v23;
    v6 = mipc::toErrorCode(*v23, v5);
    std::error_code::message(&buf.__r_.__value_.__r.__words[1], &v22);
    v26 = 0;
    v27 = 0;
    buf.__r_.__value_.__r.__words[0] = v6;
    MEMORY[0x29C2671B0](v18, &buf, 1);
    v7 = v27;
    if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v25 < 0)
    {
LABEL_6:
      operator delete(buf.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&buf, this);
    v8 = *buf.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(v23, this);
    MEMORY[0x29C2671C0](v18, v8, *(*v23 + 8) - **v23);
    v9 = *&v23[8];
    if (*&v23[8] && !atomic_fetch_add((*&v23[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }

LABEL_14:
  v11 = *(a1 + 8);
  v12 = mipc::operator==();
  v13 = *(v11 + 40);
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 16))
      {
        v14 = "enabled";
      }

      else
      {
        v14 = "disabled";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&dword_296E3E000, v13, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Bread mode", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 16))
    {
      v16 = "enable";
    }

    else
    {
      v16 = "disable";
    }

    if ((v19[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&buf, *&v19[8], *&v19[16]);
    }

    else
    {
      buf = *&v19[8];
    }

    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    *v23 = 136315394;
    *&v23[4] = v16;
    *&v23[12] = 2080;
    *&v23[14] = p_buf;
    _os_log_error_impl(&dword_296E3E000, v13, OS_LOG_TYPE_ERROR, "Failed to %s Bread mode: %s", v23, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_cps::Bread_Butter_Mode_Cnf::~Bread_Butter_Mode_Cnf(v18);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296E8B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v15 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setBreadMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver12setBreadModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver12setBreadModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver12setBreadModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver12setBreadModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::setButterMode(BOOL)::$_0>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::setButterMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::setButterMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[4] = v4;
  v11[5] = v4;
  v11[2] = v4;
  v11[3] = v4;
  v11[0] = v4;
  v11[1] = v4;
  mipc::dale_cps::Bread_Butter_Mode_Req::Bread_Butter_Mode_Req();
  v5 = *(v2 + 8);
  v6 = operator new(1uLL);
  *v6 = v5;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  abb::router::Client::send<mipc::dale_cps::Bread_Butter_Mode_Req>(v13, (v3 + 232), v11);
  v8 = *(v2 + 8);
  v15[0] = &unk_2A1E13648;
  v15[1] = v3;
  v15[2] = v8;
  v16 = v15;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v15, v14);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  MEMORY[0x29C266750](v13);
  mipc::dale_cps::Bread_Butter_Mode_Req::~Bread_Butter_Mode_Req(v11);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296E8BBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  mipc::dale_cps::Bread_Butter_Mode_Req::~Bread_Butter_Mode_Req(va1);
  operator delete(v2);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E8BC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1E13648;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E13648;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v19[16] = v4;
  v20 = v4;
  v18[1] = v4;
  *v19 = v4;
  v18[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(v23, this);
    if ((v23[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *v23;
    v6 = mipc::toErrorCode(*v23, v5);
    std::error_code::message(&buf.__r_.__value_.__r.__words[1], &v22);
    v26 = 0;
    v27 = 0;
    buf.__r_.__value_.__r.__words[0] = v6;
    MEMORY[0x29C2671B0](v18, &buf, 1);
    v7 = v27;
    if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v25 < 0)
    {
LABEL_6:
      operator delete(buf.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&buf, this);
    v8 = *buf.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(v23, this);
    MEMORY[0x29C2671C0](v18, v8, *(*v23 + 8) - **v23);
    v9 = *&v23[8];
    if (*&v23[8] && !atomic_fetch_add((*&v23[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }

LABEL_14:
  v11 = *(a1 + 8);
  v12 = mipc::operator==();
  v13 = *(v11 + 40);
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 16))
      {
        v14 = "enabled";
      }

      else
      {
        v14 = "disabled";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&dword_296E3E000, v13, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Butter mode", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 16))
    {
      v16 = "enable";
    }

    else
    {
      v16 = "disable";
    }

    if ((v19[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&buf, *&v19[8], *&v19[16]);
    }

    else
    {
      buf = *&v19[8];
    }

    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    *v23 = 136315394;
    *&v23[4] = v16;
    *&v23[12] = 2080;
    *&v23[14] = p_buf;
    _os_log_error_impl(&dword_296E3E000, v13, OS_LOG_TYPE_ERROR, "Failed to %s Butter mode: %s", v23, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_cps::Bread_Butter_Mode_Cnf::~Bread_Butter_Mode_Cnf(v18);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296E8C024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v15 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1}>(radio::MipcCommandDriver::setButterMode(BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Bread_Butter_Mode_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13setButterModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13setButterModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13setButterModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13setButterModeEbENK3$_0clEvEUlRKN4mipc8dale_cps21Bread_Butter_Mode_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
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

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(char *a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 4);
  if (!v4)
  {
    if (*(a1 + 10) != *a3)
    {
      goto LABEL_149;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_130;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = v4;
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 8);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 10) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = v9[1];
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
      v10 = *(v9 + 8);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = v10 < v6;
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

      v9 = v9[v12];
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_149;
  }

  if (v6 == 1)
  {
    v16 = v5;
    v17 = v4;
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

  v16 = v5;
  v21 = v4;
  do
  {
    v22 = *(v21 + 8);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = v6 >= v22;
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
      v24 = 1;
    }

    else
    {
      v16 = v25;
    }

    v21 = v21[v24];
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
      v32 = v8[1];
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v36 = v8;
      do
      {
        v33 = v36[2];
        v11 = *v33 == v36;
        v36 = v33;
      }

      while (!v11);
    }

    if (*(a1 + 3) == v8)
    {
      *(a1 + 3) = v33;
      --*(a1 + 5);
      v37 = *v8;
      if (*v8)
      {
        goto LABEL_67;
      }
    }

    else
    {
      --*(a1 + 5);
      v37 = *v8;
      if (*v8)
      {
LABEL_67:
        if (!v31)
        {
          v31 = v37;
          v38 = v8;
          v39 = 0;
          v40 = v8[2];
          v37[2] = v40;
          v41 = *v40;
          if (*v40 == v8)
          {
            goto LABEL_76;
          }

LABEL_71:
          v40[1] = v31;
          v42 = *(v38 + 24);
          if (v38 == v8)
          {
            goto LABEL_87;
          }

          goto LABEL_83;
        }

        do
        {
          v38 = v31;
          v31 = *v31;
        }

        while (v31);
        v31 = v38[1];
        if (v31)
        {
LABEL_70:
          v39 = 0;
          v40 = v38[2];
          *(v31 + 2) = v40;
          v41 = *v40;
          if (*v40 != v38)
          {
            goto LABEL_71;
          }

LABEL_76:
          *v40 = v31;
          if (v38 == v4)
          {
            v41 = 0;
            v4 = v31;
            v42 = *(v38 + 24);
            if (v38 == v8)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v41 = v40[1];
            v42 = *(v38 + 24);
            if (v38 == v8)
            {
              goto LABEL_87;
            }
          }

LABEL_83:
          v43 = v8[2];
          v43[*v43 != v8] = v38;
          v38[2] = v43;
          v45 = *v8;
          v44 = v8[1];
          v45[2] = v38;
          *v38 = v45;
          v38[1] = v44;
          if (v44)
          {
            v44[2] = v38;
          }

          *(v38 + 24) = *(v8 + 24);
          if (v4 == v8)
          {
            v4 = v38;
          }

LABEL_87:
          v46 = a3;
          if (!v4 || !v42)
          {
            goto LABEL_148;
          }

          if (v39)
          {
            while (1)
            {
              v49 = *(v41 + 2);
              v50 = *v49;
              v51 = v41[24];
              if (*v49 == v41)
              {
                if ((v41[24] & 1) == 0)
                {
                  v41[24] = 1;
                  *(v49 + 24) = 0;
                  v57 = *(v50 + 1);
                  *v49 = v57;
                  if (v57)
                  {
                    *(v57 + 16) = v49;
                  }

                  v58 = *(v49 + 16);
                  v58[*v58 != v49] = v50;
                  *(v50 + 1) = v49;
                  *(v50 + 2) = v58;
                  *(v49 + 16) = v50;
                  v59 = *(v41 + 1);
                  if (v4 == v59)
                  {
                    v4 = v41;
                  }

                  v41 = *v59;
                }

                v60 = *v41;
                if (*v41 && v60[24] != 1)
                {
                  goto LABEL_143;
                }

                v61 = *(v41 + 1);
                if (v61 && v61[24] != 1)
                {
                  if (v60 && (v60[24] & 1) == 0)
                  {
LABEL_143:
                    v61 = v41;
                  }

                  else
                  {
                    v61[24] = 1;
                    v41[24] = 0;
                    v62 = *v61;
                    *(v41 + 1) = *v61;
                    if (v62)
                    {
                      *(v62 + 16) = v41;
                    }

                    v63 = *(v41 + 2);
                    *(v61 + 2) = v63;
                    v63[*v63 != v41] = v61;
                    *v61 = v41;
                    *(v41 + 2) = v61;
                    v60 = v41;
                  }

                  v69 = *(v61 + 2);
                  v61[24] = *(v69 + 24);
                  *(v69 + 24) = 1;
                  v60[24] = 1;
                  v70 = *v69;
                  v73 = *(*v69 + 8);
                  *v69 = v73;
                  if (v73)
                  {
                    *(v73 + 16) = v69;
                  }

                  v74 = *(v69 + 16);
                  v74[*v74 != v69] = v70;
                  v70[1] = v69;
                  v70[2] = v74;
LABEL_147:
                  *(v69 + 16) = v70;
LABEL_148:
                  operator delete(v8);
                  a3 = v46;
                  goto LABEL_149;
                }

                v41[24] = 0;
                v47 = *(v41 + 2);
                if (*(v47 + 24) != 1 || v47 == v4)
                {
LABEL_126:
                  *(v47 + 24) = 1;
                  goto LABEL_148;
                }
              }

              else
              {
                if ((v41[24] & 1) == 0)
                {
                  v41[24] = 1;
                  *(v49 + 24) = 0;
                  v52 = *(v49 + 8);
                  v53 = *v52;
                  *(v49 + 8) = *v52;
                  if (v53)
                  {
                    *(v53 + 16) = v49;
                  }

                  v54 = *(v49 + 16);
                  v52[2] = v54;
                  v54[*v54 != v49] = v52;
                  *v52 = v49;
                  *(v49 + 16) = v52;
                  if (v4 == *v41)
                  {
                    v4 = v41;
                  }

                  v41 = *(*v41 + 8);
                }

                v55 = *v41;
                if (*v41 && v55[24] != 1)
                {
                  v56 = *(v41 + 1);
                  if (v56 && (v56[24] & 1) == 0)
                  {
LABEL_139:
                    v55 = v41;
                  }

                  else
                  {
                    v55[24] = 1;
                    v41[24] = 0;
                    v67 = *(v55 + 1);
                    *v41 = v67;
                    if (v67)
                    {
                      *(v67 + 16) = v41;
                    }

                    v68 = *(v41 + 2);
                    v68[*v68 != v41] = v55;
                    *(v55 + 1) = v41;
                    *(v55 + 2) = v68;
                    *(v41 + 2) = v55;
                    v56 = v41;
                  }

                  v69 = *(v55 + 2);
                  v55[24] = *(v69 + 24);
                  *(v69 + 24) = 1;
                  v56[24] = 1;
                  v70 = *(v69 + 8);
                  v71 = *v70;
                  *(v69 + 8) = *v70;
                  if (v71)
                  {
                    *(v71 + 16) = v69;
                  }

                  v72 = *(v69 + 16);
                  v70[2] = v72;
                  v72[*v72 != v69] = v70;
                  *v70 = v69;
                  goto LABEL_147;
                }

                v56 = *(v41 + 1);
                if (v56 && v56[24] != 1)
                {
                  goto LABEL_139;
                }

                v41[24] = 0;
                v47 = *(v41 + 2);
                if (v47 == v4 || (v47[3] & 1) == 0)
                {
                  goto LABEL_126;
                }
              }

              v41 = *(v47[2] + (*v47[2] == v47));
            }
          }

          v31[24] = 1;
          goto LABEL_148;
        }

LABEL_75:
        v40 = v38[2];
        v39 = 1;
        v41 = *v40;
        if (*v40 == v38)
        {
          goto LABEL_76;
        }

        goto LABEL_71;
      }
    }

    v38 = v8;
    if (v31)
    {
      goto LABEL_70;
    }

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
            v4[6] = v19;
            goto LABEL_149;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_130;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = v4[1];
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_130;
        }
      }
    }
  }

  v34 = *(v4 + 8);
  if (v27 == v34)
  {
    goto LABEL_133;
  }

  while (v27 >= v34)
  {
    if (v34 >= v27)
    {
      goto LABEL_133;
    }

    v35 = v4[1];
    if (!v35)
    {
      v5 = v4 + 1;
      goto LABEL_129;
    }

LABEL_57:
    v34 = *(v35 + 8);
    v4 = v35;
    if (v27 == v34)
    {
      *(v35 + 6) = v19;
      goto LABEL_149;
    }
  }

  v35 = *v4;
  if (*v4)
  {
    goto LABEL_57;
  }

  v5 = v4;
LABEL_129:
  v20 = v4;
LABEL_130:
  v64 = a3;
  v4 = operator new(0x38uLL);
  v4[4] = *a2;
  *(v4 + 10) = a2[2];
  v4[6] = 0;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = v20;
  *v5 = v4;
  v66 = **(a1 + 3);
  if (v66)
  {
    *(a1 + 3) = v66;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 4), v4);
  ++*(a1 + 5);
  a3 = v64;
LABEL_133:
  v4[6] = v19;
LABEL_149:
  v75 = *a3;
  v76 = **a3;
  v77 = (*a3)[1];
  *(v76 + 8) = v77;
  *v77 = v76;
  --*(a1 + 2);
  v78 = v75[3];
  if (v78)
  {
    if (atomic_fetch_add(v78 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v78 + 16))(v78);
      if (atomic_fetch_add(v78 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v78 + 24))(v78);
      }
    }
  }

  operator delete(v75);
  return v77;
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
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

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_296E8CCC4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E137F0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E13778;
  *(a1 + 8) = &unk_2A1E137A8;
  *(a1 + 24) = &unk_2A1E137D0;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E13848;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E137F0;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E13820;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E13848;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
    v3 = *(a1 + 32);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E13778;
  *(v2 + 1) = &unk_2A1E137A8;
  *(v2 + 3) = &unk_2A1E137D0;
  v8 = 0;
  if (!v3)
  {
    v4 = 0;
    *(v2 + 14) = *(a1 + 56);
    *(v2 + 40) = *(a1 + 40);
    v5 = *(v2 + 4);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (*(*v3 + 40))(&v7);
  v4 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(v2 + 14) = *(a1 + 56);
  *(v2 + 40) = *(a1 + 40);
  v5 = *(v2 + 4);
  if (v5)
  {
LABEL_10:
    (*(*v5 + 32))(v5);
  }

LABEL_11:
  *(v2 + 4) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    (*(*v4 + 32))(v4);
  }

  return v2;
}

void sub_296E8D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E13848;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E13848;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E13848;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E13848;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E13848;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E137F0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E13820;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E13848;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E13778;
  *(a1 + 8) = &unk_2A1E137A8;
  *(a1 + 24) = &unk_2A1E137D0;
  return a1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (v2)
  {
    return;
  }

  (*(*a1 + 40))(&v19);
  v4 = *(a2 + 176);
  if (v4 != *(a2 + 160))
  {
    v11 = *(&v19 + 1);
    *(*(a2 + 168) + 16 * v4) = v19;
    v12 = v11;
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_29:
    *(a2 + 176) = v4 + 1;
    return;
  }

  if (v4 == -1)
  {
    v16 = *(&v19 + 1);
    *(*(a2 + 168) - 16) = v19;
    v12 = v16;
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a2;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a2 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a2 + 168);
  }

  if (v7)
  {
    v14 = *(a2 + 176);
    if (v14 > 0)
    {
      v17 = &v7[2 * v14];
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v18 + 16))(v18);
            if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 24))(v18);
            }
          }
        }

        v17 -= 2;
      }

      while (v17 > v7);
    }

    if (*(a2 + 160) >= 0xBuLL)
    {
      operator delete(*(a2 + 168));
    }
  }

  *(a2 + 160) = v5;
  *(a2 + 168) = v6;
  v4 = *(a2 + 176);
  v15 = *(&v19 + 1);
  *&v6[2 * v4] = v19;
  v12 = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_17:
  atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
  v13 = *(&v19 + 1);
  ++*(a2 + 176);
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
    if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 24))(v13);
    }
  }
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v76[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_112;
  }

  v2 = a1;
  if (v1 == a1[1])
  {
LABEL_103:
    v52 = v2[3];
    if (v52 != v1)
    {
      goto LABEL_106;
    }

    goto LABEL_112;
  }

  do
  {
    v3 = v2[2];
    v4 = *(v3 + 264);
    if (v4)
    {
      v5 = *(v3 + 264);
      if (-24 * v4 < 0)
      {
        v6 = *(v3 + 256) + 24 * v4;
        v7 = *(v3 + 256);
        v8 = v6;
        do
        {
          v9 = *(v8 - 24);
          v8 -= 24;
          if (v9 == v9 >> 31)
          {
            v10 = *(v6 - 8);
            if (v10)
            {
              if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 16))(v10);
                if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v10 + 24))(v10);
                }
              }
            }
          }

          else
          {
            v11 = *(v6 - 16);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          v6 = v8;
        }

        while (v8 > v7);
        v5 = *(v3 + 264);
        v1 = *v2;
      }

      *(v3 + 264) = v5 - v4;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v12;
    v75 = v12;
    v72 = v12;
    v73 = v12;
    v70 = v12;
    v71 = v12;
    v68 = v12;
    v69 = v12;
    v66 = v12;
    v67 = v12;
    v64 = v12;
    v65 = v12;
    v13 = *(v1 + 16);
    __p[0] = 10;
    __p[1] = &v64;
    *&v75 = 0;
    *(&v75 + 1) = v13;
    (*(*v13 + 24))(v13);
    v14 = *v2;
    v15 = *(*v2 + 16);
    v16 = v2[2];
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = *v17;
      if (*v17 != v17[1])
      {
        while (1)
        {
          memset(v76, 170, 24);
          v19 = *v18 ^ (*v18 >> 31);
          if (v19 == 2)
          {
            break;
          }

          if (v19 != 1)
          {
            LODWORD(v76[0]) = 0;
            v76[1] = 0;
            v76[2] = 0;
LABEL_31:
            if ((*v18 ^ (*v18 >> 31)) == 2)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          v20 = *(v18 + 16);
          if (v20)
          {
            v21 = *(v20 + 8);
            do
            {
              if (!v21)
              {
                v20 = 0;
                goto LABEL_55;
              }

              v22 = v21;
              atomic_compare_exchange_strong_explicit((v20 + 8), &v22, v21 + 1, memory_order_relaxed, memory_order_relaxed);
              v23 = v22 == v21;
              v21 = v22;
            }

            while (!v23);
            v76[1] = *(v18 + 8);
            v76[2] = v20;
            LODWORD(v76[0]) = 0;
            if ((*v18 ^ (*v18 >> 31)) != 2)
            {
              goto LABEL_32;
            }

LABEL_56:
            if (!(*(**(v18 + 8) + 24))(*(v18 + 8)))
            {
              goto LABEL_34;
            }

            goto LABEL_57;
          }

LABEL_55:
          v76[1] = 0;
          v76[2] = v20;
          LODWORD(v76[0]) = 0;
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            goto LABEL_56;
          }

LABEL_32:
          v24 = *(v18 + 16);
          if (v24 && atomic_load_explicit((v24 + 8), memory_order_acquire))
          {
LABEL_34:
            v25 = *(v16 + 264);
            if (v25 == *(v16 + 248))
            {
              if (v25 == -1)
              {
                v27 = *(v16 + 256);
                v40 = -1;
              }

              else
              {
                if (4 * v25 <= (v25 + 1))
                {
                  v26 = v25 + 1;
                }

                else
                {
                  v26 = 4 * v25;
                }

                v27 = (v16 + 8);
                if (v26 >= 0xB)
                {
                  if (v26 >= 0xAAAAAAAAAAAAAABLL)
                  {
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v27 = operator new(24 * v26);
                }

                LOBYTE(v63[0]) = 0;
                v63[1] = v16 + 8;
                v63[2] = boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate;
                v63[3] = 0;
                v63[4] = v27;
                v63[5] = v26;
                if (v25)
                {
                  v28 = 0;
                  v29 = *(v16 + 256);
                  v30 = v29 + 24 * v25;
                  v31 = v27;
                  do
                  {
                    v33 = *(v29 + 8);
                    if (*v29 == *v29 >> 31)
                    {
                      v31[1] = v33;
                      v34 = *(v29 + 16);
                      v31[2] = v34;
                      if (v34)
                      {
                        atomic_fetch_add_explicit((v34 + 8), 1u, memory_order_relaxed);
                      }
                    }

                    else
                    {
                      v31[1] = (*(*v33 + 16))(v33);
                    }

                    v32 = *v29;
                    v29 += 24;
                    *v31 = v32 ^ (v32 >> 31);
                    v31 += 3;
                    v28 -= 24;
                  }

                  while (v29 != v30);
                }

                boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((v16 + 8));
                *(v16 + 248) = v26;
                *(v16 + 256) = v27;
                v40 = *(v16 + 264);
              }

              v35 = &v27[3 * v40];
              v36 = v76[0];
              v37 = SLODWORD(v76[0]) >> 31;
              v38 = v76[1];
              if (SLODWORD(v76[0]) >> 31 == LODWORD(v76[0]))
              {
                *(v35 + 8) = v76[1];
                v39 = v76[2];
                *(v35 + 16) = v76[2];
                if (!v39)
                {
LABEL_67:
                  v37 = v36;
                  goto LABEL_69;
                }

LABEL_51:
                atomic_fetch_add_explicit((v39 + 8), 1u, memory_order_relaxed);
                v37 = v36;
                goto LABEL_69;
              }
            }

            else
            {
              v35 = *(v16 + 256) + 24 * v25;
              v36 = v76[0];
              v37 = SLODWORD(v76[0]) >> 31;
              v38 = v76[1];
              if (SLODWORD(v76[0]) >> 31 == LODWORD(v76[0]))
              {
                *(v35 + 8) = v76[1];
                v39 = v76[2];
                *(v35 + 16) = v76[2];
                if (!v39)
                {
                  goto LABEL_67;
                }

                goto LABEL_51;
              }
            }

            *(v35 + 8) = (*(*v76[1] + 16))(v38);
LABEL_69:
            v41 = 0;
            *v35 = v36 ^ v37;
            ++*(v16 + 264);
            if (LODWORD(v76[0]) != SLODWORD(v76[0]) >> 31)
            {
              goto LABEL_70;
            }

            goto LABEL_60;
          }

LABEL_57:
          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v64);
          }

          v41 = 1;
          if (LODWORD(v76[0]) != SLODWORD(v76[0]) >> 31)
          {
LABEL_70:
            if (v76[1])
            {
              (*(*v76[1] + 8))(v76[1]);
            }

            goto LABEL_72;
          }

LABEL_60:
          v42 = v76[2];
          if (v76[2])
          {
            if (atomic_fetch_add((v76[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v42 + 16))(v42);
              if (atomic_fetch_add(v42 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v42 + 24))(v42);
              }
            }
          }

LABEL_72:
          if ((v41 & 1) == 0)
          {
            v18 += 24;
            if (v18 != *(*(v15 + 32) + 8))
            {
              continue;
            }
          }

          v2 = a1;
          v14 = *a1;
          v15 = *(*a1 + 16);
          v16 = a1[2];
          goto LABEL_75;
        }

        (*(**(v18 + 8) + 16))(v63);
        v76[1] = (*(*v63[0] + 16))(v63[0]);
        LODWORD(v76[0]) = 1;
        if (v63[0])
        {
          (*(*v63[0] + 8))(v63[0]);
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            goto LABEL_56;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

LABEL_75:
    if ((*(v15 + 24) & 1) == 0)
    {
      ++*(v16 + 284);
LABEL_85:
      v46 = 1;
      goto LABEL_86;
    }

    ++*(v16 + 280);
    v43 = *(v15 + 16);
    if (v43)
    {
      if (atomic_load_explicit((v43 + 8), memory_order_acquire))
      {
        goto LABEL_85;
      }

      v16 = v2[2];
      v14 = *v2;
    }

    v2[3] = v14;
    if (v2[1] == v14)
    {
      v51 = *(v16 + 288);
      if (v51)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v51, &v64);
      }

      v46 = 0;
      *(v16 + 288) = 0;
    }

    else
    {
      v44 = *(v14 + 16);
      v45 = *(v16 + 288);
      if (v45)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v45, &v64);
      }

      *(v16 + 288) = v44;
      v46 = 0;
      if (v44)
      {
        ++*(v44 + 28);
      }
    }

LABEL_86:
    (*(**(&v75 + 1) + 32))(*(&v75 + 1));
    v47 = __p[1];
    if (__p[1])
    {
      if (v75 > 0)
      {
        v49 = __p[1] + 16 * v75;
        do
        {
          v50 = *(v49 - 1);
          if (v50)
          {
            if (atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v50 + 16))(v50);
              if (atomic_fetch_add(v50 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v50 + 24))(v50);
              }
            }
          }

          v49 -= 16;
        }

        while (v49 > v47);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    v1 = *v2;
    v48 = v2[1];
    if (!v46)
    {
      if (v1 != v48)
      {
        goto LABEL_112;
      }

      goto LABEL_103;
    }

    v1 = *(v1 + 8);
    *v2 = v1;
  }

  while (v1 != v48);
  v53 = v48;
  v52 = v2[3];
  if (v52 == v53)
  {
    goto LABEL_112;
  }

LABEL_106:
  *&v54 = 0xAAAAAAAAAAAAAAAALL;
  *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v54;
  v73 = v54;
  v70 = v54;
  v71 = v54;
  v68 = v54;
  v69 = v54;
  v66 = v54;
  v67 = v54;
  v64 = v54;
  v65 = v54;
  v55 = *(v52 + 16);
  __p[0] = 10;
  __p[1] = &v64;
  *&v75 = 0;
  *(&v75 + 1) = v55;
  (*(*v55 + 24))(v55);
  v56 = v2[2];
  v2[3] = v2[1];
  v57 = *(v56 + 288);
  if (v57)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v57, &v64);
  }

  *(v56 + 288) = 0;
  (*(**(&v75 + 1) + 32))(*(&v75 + 1));
  v58 = __p[1];
  if (__p[1])
  {
    if (v75 > 0)
    {
      v60 = __p[1] + 16 * v75;
      do
      {
        v61 = *(v60 - 1);
        if (v61)
        {
          if (atomic_fetch_add(v61 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v61 + 16))(v61);
            if (atomic_fetch_add(v61 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v61 + 24))(v61);
            }
          }
        }

        v60 -= 16;
      }

      while (v60 > v58);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

LABEL_112:
  v59 = *MEMORY[0x29EDCA608];
}

void sub_296E8E44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296E8E4FC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 4) == *(v5 - 4) >> 31)
        {
          v6 = *v5;
          if (*v5 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        else
        {
          v7 = *(v5 - 1);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x296E8E620);
}

void sub_296E8E5F0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(va);
  JUMPOUT(0x296E8E600);
}

void sub_296E8E618(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
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
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_296E8E8F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296E8E8E8);
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
      *v52 = &unk_2A1E138D8;
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
      *v54 = &unk_2A1E13868;
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

void sub_296E8F008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
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

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
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
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void sub_296E8FA74(_Unwind_Exception *exception_object, int a2)
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

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 322);
  if (!*(v3 + 322))
  {
    v8 = *(v2 + 16);
    if (v8 <= 5)
    {
      if (*(v2 + 16))
      {
        if (v8 == 1)
        {
          v9 = v2[1];
          v10 = v2[3];
          if (v10)
          {
            v10 = _Block_copy(v10);
          }

          v11 = v2[4];
          *object = v10;
          *&object[8] = v11;
          if (v11)
          {
            dispatch_retain(v11);
          }

          radio::MipcCommandDriver::handleOpModeTransitionToLowPower_sync(v3, v9, 1, object);
          if (*&object[8])
          {
            dispatch_release(*&object[8]);
          }

          v12 = *object;
          if (!*object)
          {
            goto LABEL_63;
          }

          goto LABEL_47;
        }

LABEL_30:
        v20 = *(v3 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *object = 0;
          _os_log_impl(&dword_296E3E000, v20, OS_LOG_TYPE_DEFAULT, "#I Not implemented", object, 2u);
        }

        goto LABEL_63;
      }

      v21 = v2[1];
      v22 = v2[3];
      if (v22)
      {
        v22 = _Block_copy(v22);
      }

      v23 = v2[4];
      *object = v22;
      *&object[8] = v23;
      if (v23)
      {
        dispatch_retain(v23);
      }

      radio::MipcCommandDriver::handleOpModeTransitionToOnline_sync(v3, v21, 0, object);
      if (*&object[8])
      {
        dispatch_release(*&object[8]);
      }

      v12 = *object;
      if (!*object)
      {
        goto LABEL_63;
      }

LABEL_47:
      _Block_release(v12);
      goto LABEL_63;
    }

    if (v8 == 6)
    {
      v24 = v2[1];
      v25 = v2[3];
      if (v25)
      {
        v25 = _Block_copy(v25);
      }

      v26 = v2[4];
      *object = v25;
      *&object[8] = v26;
      if (v26)
      {
        dispatch_retain(v26);
      }

      radio::MipcCommandDriver::handleOpModeTransitionToCampOnly_sync(v3, v24, object);
      if (*&object[8])
      {
        dispatch_release(*&object[8]);
      }

      v12 = *object;
      if (!*object)
      {
        goto LABEL_63;
      }

      goto LABEL_47;
    }

    if (v8 != 7)
    {
      goto LABEL_30;
    }

    v14 = v2[1];
    v15 = v2[3];
    if (v15)
    {
      v16 = _Block_copy(v15);
      v17 = v2[4];
      *object = v16;
      *&object[8] = v17;
      if (!v17)
      {
LABEL_29:
        dispatch_assert_queue_V2(*(v3 + 24));
        *(v3 + 326) = 0;
        *(v3 + 320) |= 1u;
        radio::MipcCommandDriver::sendRadioStateChangeRequest(v3, v14, 1, 0);
        *(v3 + 320) |= 4u;
        radio::MipcCommandDriver::sendSkipperModeSwitchRequest(v3, v14, 1);
        v18 = operator new(0x20uLL);
        v18[2] = v16;
        v18[3] = v17;
        *object = 0;
        *&object[8] = 0;
        v18[1] = v3 + 272;
        v19 = *(v3 + 272);
        *v18 = v19;
        *(v19 + 8) = v18;
        *(v3 + 272) = v18;
        ++*(v3 + 288);
        radio::MipcCommandDriver::setTransitionState_sync(v3, 7);
        radio::MipcCommandDriver::startModeTransitionTimer(v3);
        goto LABEL_63;
      }
    }

    else
    {
      v16 = 0;
      v17 = v2[4];
      *object = 0;
      *&object[8] = v17;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    dispatch_retain(v17);
    goto LABEL_29;
  }

  v5 = *(v3 + 40);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_3;
  }

  v32 = &object[15];
  if (v4 > 5)
  {
    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v33 = "kCampOnlyEnteringError";
        goto LABEL_91;
      }

      object[23] = 15;
      v35 = "kStewieEntering";
LABEL_95:
      *object = *v35;
      *&object[7] = *(v35 + 7);
      goto LABEL_96;
    }

    if (v4 != 8)
    {
      if (v4 != 9)
      {
        v33 = "kPowerOffEnteringError";
        goto LABEL_91;
      }

      object[23] = 17;
      object[16] = 103;
      v34 = "kPowerOffEntering";
      goto LABEL_89;
    }

    object[23] = 20;
    *&object[16] = 1919906418;
    v36 = "kStewieEnteringError";
LABEL_93:
    *object = *v36;
    v32 = &object[20];
    goto LABEL_96;
  }

  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      object[23] = 15;
      v35 = "kOnlineEntering";
      goto LABEL_95;
    }

    object[23] = 20;
    *&object[16] = 1919906418;
    v36 = "kOnlineEnteringError";
    goto LABEL_93;
  }

  if (v4 == 3)
  {
    object[23] = 17;
    object[16] = 103;
    v34 = "kLowpowerEntering";
  }

  else
  {
    if (v4 == 4)
    {
      v33 = "kLowpowerEnteringError";
LABEL_91:
      object[23] = 22;
      *object = *v33;
      *&object[14] = *(v33 + 14);
      v32 = &object[22];
      goto LABEL_96;
    }

    object[23] = 17;
    object[16] = 103;
    v34 = "kCampOnlyEntering";
  }

LABEL_89:
  *object = *v34;
  v32 = &object[17];
LABEL_96:
  *v32 = 0;
  v37 = *(v3 + 256);
  v38 = *(v2 + 16);
  radio::OpMode::modeToString();
  if (v41 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  *buf = 136315394;
  *&buf[4] = object;
  v47 = 2080;
  v48 = p_p;
  _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Current mode handler state: %s, unable to serve mode change request to: %s", buf, 0x16u);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
  }

  if ((object[23] & 0x80000000) != 0)
  {
    operator delete(*object);
  }

LABEL_3:
  *buf = 0;
  __p = operator new(0x20uLL);
  v41 = xmmword_296EB9D20;
  strcpy(__p, "Unable to change operating mode");
  CreateError();
  v6 = *object;
  *buf = *object;
  *object = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
    v7 = v2[3];
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = v2[3];
    if (!v7)
    {
LABEL_22:
      if (!v6)
      {
        goto LABEL_63;
      }

LABEL_62:
      CFRelease(v6);
      goto LABEL_63;
    }
  }

  if (!v2[4])
  {
    goto LABEL_22;
  }

  if (v6 && (CFRetain(v6), (v7 = v2[3]) == 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = _Block_copy(v7);
  }

  v27 = v2[4];
  *object = MEMORY[0x29EDCA5F8];
  *&object[8] = 1174405120;
  *&object[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v43 = &__block_descriptor_tmp_120;
  if (!v13)
  {
    aBlock = 0;
    cf = v6;
    if (!v6)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  aBlock = _Block_copy(v13);
  cf = v6;
  if (v6)
  {
LABEL_53:
    CFRetain(v6);
  }

LABEL_54:
  dispatch_async(v27, object);
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  if (v6)
  {
    CFRelease(v6);
    goto LABEL_62;
  }

LABEL_63:
  v28 = v2[4];
  if (v28)
  {
    dispatch_release(v28);
  }

  v29 = v2[3];
  if (v29)
  {
    _Block_release(v29);
  }

  operator delete(v2);
  v30 = *(a1 + 2);
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  operator delete(a1);
  v31 = *MEMORY[0x29EDCA608];
}

void sub_296E90204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v27 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting SIM summary", buf, 2u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v4;
  v31[3] = v4;
  v31[4] = v4;
  v31[1] = v4;
  v31[2] = v4;
  v31[0] = v4;
  mipc::sim::Status_Req::Status_Req();
  v5 = operator new(1uLL);
  *v5 = 1;
  v6 = *(&v32 + 1);
  *(&v32 + 1) = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v7;
  v43 = v7;
  v41 = v7;
  mipc::sim::Status_Req::serialize(&v41, v31);
  if (v44)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v8;
  v39 = v8;
  v36 = v8;
  v37 = v8;
  v34 = v8;
  v35 = v8;
  *v33 = v8;
  *&v33[16] = v8;
  MEMORY[0x29C266720](v33, &v41);
  abb::router::SendProxy::SendProxy(buf, &v2[5].__on_zero_shared_weak, v33);
  MEMORY[0x29C266730](v33);
  if (v44 != -1)
  {
    *v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *&v33[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*&v33[8 * v44])(&v28, &v41);
  }

  v9 = abb::router::SendProxy::timeout();
  v28 = v2;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v11 = v2->~__shared_weak_count_0, (v12 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v29 = v11;
  *(&v29 + 1) = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = v12;
    (v12->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
LABEL_12:
      v14 = _Block_copy(shared_owners);
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v14 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
LABEL_13:
    dispatch_retain(shared_weak_owners);
  }

LABEL_14:
  v16 = v28;
  v17 = v29;
  v30 = 0u;
  v29 = 0u;
  *v33 = v28;
  *&v33[8] = v17;
  v41 = v28;
  *&v33[24] = v14;
  *&v34 = shared_weak_owners;
  *&v43 = 0;
  v42 = 0uLL;
  v18 = operator new(0x30uLL);
  *v18 = &unk_2A1E13938;
  v18[1] = v16;
  *(v18 + 1) = v17;
  v18[4] = v14;
  v18[5] = shared_weak_owners;
  v47 = v18;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v46, (v9 + 152));
  if (v47 == v46)
  {
    (*(*v47 + 32))(v47);
  }

  else if (v47)
  {
    (*(*v47 + 40))(v47);
  }

  MEMORY[0x29C266750](buf);
  mipc::sim::Status_Req::~Status_Req(v31);
  if (v27)
  {
    v20 = v27->__shared_weak_owners_;
    if (v20)
    {
      dispatch_release(v20);
    }

    v21 = v27->__shared_owners_;
    if (v21)
    {
      _Block_release(v21);
    }

    operator delete(v27);
  }

  v22 = a1;
  if (a1)
  {
    v23 = a1[2];
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v22 = a1;
    }

    operator delete(v22);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_296E90734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void *radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}::~Status_Cnf(void *a1)
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

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
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

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13938;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13938;
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

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E13938;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E13938;
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
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

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
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
    MEMORY[0x29C266A60](v12, &v16, 1);
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
    MEMORY[0x29C266A70](v12, v8, *(*&v14.__val_ + 8) - **&v14.__val_);
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
  radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}::operator()(a1 + 8, v12);
  return MEMORY[0x29C266A80](v12);
}

void sub_296E90D9C(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 128);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}>(radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getSIMSummaryEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim10Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getSIMSummaryEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim10Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getSIMSummaryEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim10Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getSIMSummaryEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sim10Status_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void radio::MipcCommandDriver::getSIMSummary(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sim::Status_Cnf const&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v592 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_1050;
  }

  v560 = *v2;
  v5 = std::__shared_weak_count::lock(v3);
  v579 = v5;
  if (!v5)
  {
    goto LABEL_1050;
  }

  if (!v2[1])
  {
LABEL_1048:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v543 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v543);
    }

    goto LABEL_1050;
  }

  cf = 0;
  memset(&v576, 0, sizeof(v576));
  v575 = 0;
  v574 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v573[7] = v6;
  v573[8] = v6;
  v573[5] = v6;
  v573[6] = v6;
  v573[3] = v6;
  v573[4] = v6;
  v573[1] = v6;
  v573[2] = v6;
  v572 = v6;
  v573[0] = v6;
  *v570 = v6;
  v571 = v6;
  v568 = v6;
  v569 = v6;
  v566 = v6;
  v567 = v6;
  v565 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v565);
  v7 = mipc::operator==();
  v8 = MEMORY[0x29EDC9528];
  if ((v7 & 1) == 0)
  {
    std::string::__assign_external(&v576, "Get SIM status confirmation error: %s, %s\n", 0x2AuLL);
    __p.__r_.__value_.__r.__words[0] = *(a2 + 32);
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *(a2 + 40), *(a2 + 48));
    }

    else
    {
      *&__p.__r_.__value_.__r.__words[1] = *(a2 + 40);
      v581 = *(a2 + 56);
    }

    v9 = *(a2 + 72);
    aBlock = *(a2 + 64);
    v583 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
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
      v589 = *(a2 + 56);
    }

    v10 = *(a2 + 72);
    v590 = *(a2 + 64);
    v591 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v591;
      if (v591)
      {
        if (!atomic_fetch_add(&v591->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    if (SHIBYTE(v589) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__size_);
    }

    v12 = v583;
    if (v583 && !atomic_fetch_add(v583 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    if (SHIBYTE(v581) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v576.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v564, v576.__r_.__value_.__l.__data_, v576.__r_.__value_.__l.__size_);
    }

    else
    {
      v564 = v576;
    }

    CreateError();
    v13 = cf;
    v14 = __p.__r_.__value_.__r.__words[0];
    cf = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v13)
    {
      CFRelease(v13);
      if (__p.__r_.__value_.__r.__words[0])
      {
        CFRelease(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v564.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v564.__r_.__value_.__l.__data_);
    }

    if (v14)
    {
      goto LABEL_1010;
    }
  }

  allocator = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v17 = v575;
    v575 = Mutable;
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (!*(&xmmword_2A18B7D80 + 1))
  {
    goto LABEL_1051;
  }

  v18 = **(a2 + 88);
  v19 = vcnt_s8(*(&xmmword_2A18B7D80 + 8));
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = **(a2 + 88);
    if (*(&xmmword_2A18B7D80 + 1) <= v18)
    {
      v20 = v18 % BYTE8(xmmword_2A18B7D80);
    }
  }

  else
  {
    v20 = (DWORD2(xmmword_2A18B7D80) - 1) & v18;
  }

  v21 = *(xmmword_2A18B7D80 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_1051:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v19.u32[0] < 2uLL)
  {
    while (1)
    {
      v24 = v22[1];
      if (v24 == v18)
      {
        if (*(v22 + 16) == v18)
        {
          goto LABEL_56;
        }
      }

      else if ((v24 & (*(&xmmword_2A18B7D80 + 1) - 1)) != v20)
      {
        goto LABEL_1051;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_1051;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v18)
    {
      break;
    }

    if (v23 >= *(&xmmword_2A18B7D80 + 1))
    {
      v23 %= *(&xmmword_2A18B7D80 + 1);
    }

    if (v23 != v20)
    {
      goto LABEL_1051;
    }

LABEL_46:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_1051;
    }
  }

  if (*(v22 + 16) != v18)
  {
    goto LABEL_46;
  }

LABEL_56:
  v25 = (v22 + 3);
  if (*(v22 + 47) < 0)
  {
    v25 = *v25;
  }

  ctu::cf::insert<__CFString const*,char const*>(v575, *MEMORY[0x29EDC8DA8], v25, allocator, v16);
  v26 = *(v560 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (!*(&xmmword_2A18B7D80 + 1))
    {
      goto LABEL_1052;
    }

    v27 = **(a2 + 88);
    v28 = vcnt_s8(*(&xmmword_2A18B7D80 + 8));
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = **(a2 + 88);
      if (*(&xmmword_2A18B7D80 + 1) <= v27)
      {
        v29 = v27 % BYTE8(xmmword_2A18B7D80);
      }
    }

    else
    {
      v29 = (DWORD2(xmmword_2A18B7D80) - 1) & v27;
    }

    v30 = *(xmmword_2A18B7D80 + 8 * v29);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_1052:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v28.u32[0] < 2uLL)
    {
      while (1)
      {
        v33 = v31[1];
        if (v33 == v27)
        {
          if (*(v31 + 16) == v27)
          {
            goto LABEL_79;
          }
        }

        else if ((v33 & (*(&xmmword_2A18B7D80 + 1) - 1)) != v29)
        {
          goto LABEL_1052;
        }

        v31 = *v31;
        if (!v31)
        {
          goto LABEL_1052;
        }
      }
    }

    while (1)
    {
      v32 = v31[1];
      if (v32 == v27)
      {
        if (*(v31 + 16) == v27)
        {
LABEL_79:
          v34 = v31 + 3;
          if (*(v31 + 47) < 0)
          {
            v34 = *v34;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
          HIDWORD(__p.__r_.__value_.__r.__words[0]) = v27;
          LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 2) = v34;
          _os_log_impl(&dword_296E3E000, v26, OS_LOG_TYPE_DEFAULT, "#I SIM Status: %u (%s)", &__p, 0x12u);
          break;
        }
      }

      else
      {
        if (v32 >= *(&xmmword_2A18B7D80 + 1))
        {
          v32 %= *(&xmmword_2A18B7D80 + 1);
        }

        if (v32 != v29)
        {
          goto LABEL_1052;
        }
      }

      v31 = *v31;
      if (!v31)
      {
        goto LABEL_1052;
      }
    }
  }

  if (!*(a2 + 96))
  {
    goto LABEL_132;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  size = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = size;
  v36 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v37 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v36, v37);
  v38 = v36[1].__vftable;
  v36[1].__vftable = v37[1].__vftable;
  v37[1].__vftable = v38;
  LODWORD(v38) = v36[1].__fmtflags_;
  v36[1].__fmtflags_ = v37[1].__fmtflags_;
  v37[1].__fmtflags_ = v38;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v39 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v39;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v41 = *v40;
  v42 = *v40;
  *(v40 + *(*v40 - 24) + 24) = 2;
  v43 = (v40 + *(v42 - 24));
  if (v43[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v43);
    v44 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v45 = (v44->__vftable[2].~facet_0)(v44, 32);
    std::locale::~locale(&__p);
    v43[1].__fmtflags_ = v45;
    v41 = *v40;
  }

  v43[1].__fmtflags_ = 48;
  *(v40 + *(v41 - 24) + 8) = *(v40 + *(v41 - 24) + 8) & 0xFFFFFFB5 | 8;
  v46 = MEMORY[0x29C267790](v40, **(a2 + 96));
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " ", 1);
  *(v47 + *(*v47 - 24) + 8) = *(v47 + *(*v47 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v50 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v50 = *(&v569 + 1);
    }

    v51 = v569;
    v48 = v50 - v569;
    if ((v50 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v48 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_101;
    }

    v51 = *(&v567 + 1);
    v48 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_114:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v48 >= 0x17)
  {
    if ((v48 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v48 | 7) + 1;
    }

    p_dst = operator new(v52);
    __dst.__r_.__value_.__l.__size_ = v48;
    __dst.__r_.__value_.__r.__words[2] = v52 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_100;
  }

  *(&__dst.__r_.__value_.__s + 23) = v48;
  p_dst = &__dst;
  if (v48)
  {
LABEL_100:
    memmove(p_dst, v51, v48);
  }

LABEL_101:
  p_dst->__r_.__value_.__s.__data_[v48] = 0;
  v53 = v575;
  v54 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v53, *MEMORY[0x29EDC8D50]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v54 < 0)
    {
      goto LABEL_109;
    }

LABEL_106:
    v55 = *(v560 + 40);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_132;
    }

LABEL_110:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v58 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v58 = *(&v569 + 1);
      }

      v59 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v56 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        p_p = &__p;
        goto LABEL_128;
      }

      v59 = &v567 + 1;
      v58 = *(&v568 + 1);
    }

    v60 = *v59;
    v56 = v58 - *v59;
    if (v56 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v56 >= 0x17)
    {
      if ((v56 | 7) == 0x17)
      {
        v61 = 25;
      }

      else
      {
        v61 = (v56 | 7) + 1;
      }

      p_p = operator new(v61);
      __p.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = p_p;
      __p.__r_.__value_.__l.__size_ = v56;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v58 - *v59;
      p_p = &__p;
      if (!v56)
      {
        goto LABEL_128;
      }
    }

    memmove(p_p, v60, v56);
LABEL_128:
    p_p->__r_.__value_.__s.__data_[v56] = 0;
    v62 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v62;
    _os_log_impl(&dword_296E3E000, v55, OS_LOG_TYPE_DEFAULT, "#I Test SIM: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_132;
  }

  if ((v54 & 0x80000000) == 0)
  {
    goto LABEL_106;
  }

LABEL_109:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v55 = *(v560 + 40);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_110;
  }

LABEL_132:
  if (!*(a2 + 104))
  {
    goto LABEL_182;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v63 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v63;
  v64 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v65 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v64, v65);
  v66 = v64[1].__vftable;
  v64[1].__vftable = v65[1].__vftable;
  v65[1].__vftable = v66;
  LODWORD(v66) = v64[1].__fmtflags_;
  v64[1].__fmtflags_ = v65[1].__fmtflags_;
  v65[1].__fmtflags_ = v66;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v67 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v67;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v69 = *v68;
  v70 = *v68;
  *(v68 + *(*v68 - 24) + 24) = 2;
  v71 = (v68 + *(v70 - 24));
  if (v71[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v71);
    v72 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v73 = (v72->__vftable[2].~facet_0)(v72, 32);
    std::locale::~locale(&__p);
    v71[1].__fmtflags_ = v73;
    v69 = *v68;
  }

  v71[1].__fmtflags_ = 48;
  *(v68 + *(v69 - 24) + 8) = *(v68 + *(v69 - 24) + 8) & 0xFFFFFFB5 | 8;
  v74 = MEMORY[0x29C267790](v68, **(a2 + 104));
  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " ", 1);
  *(v75 + *(*v75 - 24) + 8) = *(v75 + *(*v75 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v78 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v78 = *(&v569 + 1);
    }

    v79 = v569;
    v76 = v78 - v569;
    if ((v78 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_164;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v76 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v77 = &__dst;
      goto LABEL_151;
    }

    v79 = *(&v567 + 1);
    v76 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_164:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v76 >= 0x17)
  {
    if ((v76 | 7) == 0x17)
    {
      v80 = 25;
    }

    else
    {
      v80 = (v76 | 7) + 1;
    }

    v77 = operator new(v80);
    __dst.__r_.__value_.__l.__size_ = v76;
    __dst.__r_.__value_.__r.__words[2] = v80 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v77;
    goto LABEL_150;
  }

  *(&__dst.__r_.__value_.__s + 23) = v76;
  v77 = &__dst;
  if (v76)
  {
LABEL_150:
    memmove(v77, v79, v76);
  }

LABEL_151:
  v77->__r_.__value_.__s.__data_[v76] = 0;
  v81 = v575;
  v82 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v81, *MEMORY[0x29EDC8DA0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v82 < 0)
    {
      goto LABEL_159;
    }

LABEL_156:
    v83 = *(v560 + 40);
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_182;
    }

LABEL_160:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v86 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v86 = *(&v569 + 1);
      }

      v87 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v84 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v85 = &__p;
        goto LABEL_178;
      }

      v87 = &v567 + 1;
      v86 = *(&v568 + 1);
    }

    v88 = *v87;
    v84 = v86 - *v87;
    if (v84 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v84 >= 0x17)
    {
      if ((v84 | 7) == 0x17)
      {
        v89 = 25;
      }

      else
      {
        v89 = (v84 | 7) + 1;
      }

      v85 = operator new(v89);
      __p.__r_.__value_.__r.__words[2] = v89 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v85;
      __p.__r_.__value_.__l.__size_ = v84;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v86 - *v87;
      v85 = &__p;
      if (!v84)
      {
        goto LABEL_178;
      }
    }

    memmove(v85, v88, v84);
LABEL_178:
    v85->__r_.__value_.__s.__data_[v84] = 0;
    v90 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v90 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v90;
    _os_log_impl(&dword_296E3E000, v83, OS_LOG_TYPE_DEFAULT, "#I GSM App IDX: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_182;
  }

  if ((v82 & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_159:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v83 = *(v560 + 40);
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_160;
  }

LABEL_182:
  if (!*(a2 + 112))
  {
    goto LABEL_232;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v91 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v91;
  v92 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v93 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v92, v93);
  v94 = v92[1].__vftable;
  v92[1].__vftable = v93[1].__vftable;
  v93[1].__vftable = v94;
  LODWORD(v94) = v92[1].__fmtflags_;
  v92[1].__fmtflags_ = v93[1].__fmtflags_;
  v93[1].__fmtflags_ = v94;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v95 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v95;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v97 = *v96;
  v98 = *v96;
  *(v96 + *(*v96 - 24) + 24) = 2;
  v99 = (v96 + *(v98 - 24));
  if (v99[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v99);
    v100 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v101 = (v100->__vftable[2].~facet_0)(v100, 32);
    std::locale::~locale(&__p);
    v99[1].__fmtflags_ = v101;
    v97 = *v96;
  }

  v99[1].__fmtflags_ = 48;
  *(v96 + *(v97 - 24) + 8) = *(v96 + *(v97 - 24) + 8) & 0xFFFFFFB5 | 8;
  v102 = MEMORY[0x29C267790](v96, **(a2 + 112));
  v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, " ", 1);
  *(v103 + *(*v103 - 24) + 8) = *(v103 + *(*v103 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v106 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v106 = *(&v569 + 1);
    }

    v107 = v569;
    v104 = v106 - v569;
    if ((v106 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_214;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v104 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v105 = &__dst;
      goto LABEL_201;
    }

    v107 = *(&v567 + 1);
    v104 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_214:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v104 >= 0x17)
  {
    if ((v104 | 7) == 0x17)
    {
      v108 = 25;
    }

    else
    {
      v108 = (v104 | 7) + 1;
    }

    v105 = operator new(v108);
    __dst.__r_.__value_.__l.__size_ = v104;
    __dst.__r_.__value_.__r.__words[2] = v108 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v105;
    goto LABEL_200;
  }

  *(&__dst.__r_.__value_.__s + 23) = v104;
  v105 = &__dst;
  if (v104)
  {
LABEL_200:
    memmove(v105, v107, v104);
  }

LABEL_201:
  v105->__r_.__value_.__s.__data_[v104] = 0;
  v109 = v575;
  v110 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v109, *MEMORY[0x29EDC8DB8]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v110 < 0)
    {
      goto LABEL_209;
    }

LABEL_206:
    v111 = *(v560 + 40);
    if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_232;
    }

LABEL_210:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v114 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v114 = *(&v569 + 1);
      }

      v115 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v112 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v113 = &__p;
        goto LABEL_228;
      }

      v115 = &v567 + 1;
      v114 = *(&v568 + 1);
    }

    v116 = *v115;
    v112 = v114 - *v115;
    if (v112 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v112 >= 0x17)
    {
      if ((v112 | 7) == 0x17)
      {
        v117 = 25;
      }

      else
      {
        v117 = (v112 | 7) + 1;
      }

      v113 = operator new(v117);
      __p.__r_.__value_.__r.__words[2] = v117 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v113;
      __p.__r_.__value_.__l.__size_ = v112;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v114 - *v115;
      v113 = &__p;
      if (!v112)
      {
        goto LABEL_228;
      }
    }

    memmove(v113, v116, v112);
LABEL_228:
    v113->__r_.__value_.__s.__data_[v112] = 0;
    v118 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v118 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v118;
    _os_log_impl(&dword_296E3E000, v111, OS_LOG_TYPE_DEFAULT, "#I ISIM App IDX: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_232;
  }

  if ((v110 & 0x80000000) == 0)
  {
    goto LABEL_206;
  }

LABEL_209:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v111 = *(v560 + 40);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_210;
  }

LABEL_232:
  v119 = *(a2 + 120);
  if (!v119)
  {
    goto LABEL_256;
  }

  v120 = *(v119 + 23);
  if ((v120 & 0x8000000000000000) == 0)
  {
    if (v120 < 0x17)
    {
      goto LABEL_235;
    }

LABEL_239:
    if ((v120 | 7) == 0x17)
    {
      v122 = 25;
    }

    else
    {
      v122 = (v120 | 7) + 1;
    }

    v121 = operator new(v122);
    __dst.__r_.__value_.__l.__size_ = v120;
    __dst.__r_.__value_.__r.__words[2] = v122 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v121;
    goto LABEL_243;
  }

  v120 = v119[1];
  if (v120 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v119 = *v119;
  if (v120 >= 0x17)
  {
    goto LABEL_239;
  }

LABEL_235:
  *(&__dst.__r_.__value_.__s + 23) = v120;
  v121 = &__dst;
  if (v120)
  {
LABEL_243:
    memmove(v121, v119, v120);
  }

  v121->__r_.__value_.__s.__data_[v120] = 0;
  v123 = v575;
  v124 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v123, *MEMORY[0x29EDC8CC0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v124 < 0)
    {
      goto LABEL_255;
    }

LABEL_249:
    v125 = *(v560 + 40);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_250;
    }

LABEL_256:
    v127 = *(a2 + 128);
    if (v127)
    {
      goto LABEL_257;
    }

LABEL_280:
    v135 = *(a2 + 136);
    if (!v135)
    {
      goto LABEL_304;
    }

LABEL_281:
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
LABEL_283:
        *(&__dst.__r_.__value_.__s + 23) = v136;
        v137 = &__dst;
        if (!v136)
        {
LABEL_292:
          v137->__r_.__value_.__s.__data_[v136] = 0;
          v139 = v575;
          v140 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = __dst;
          }

          ctu::cf::insert<__CFString const*,std::string>(v139, *MEMORY[0x29EDC8CB8]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((v140 & 0x80000000) == 0)
            {
LABEL_297:
              v141 = *(v560 + 40);
              if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_304;
              }

              goto LABEL_298;
            }
          }

          else if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_297;
          }

          operator delete(__dst.__r_.__value_.__l.__data_);
          v141 = *(v560 + 40);
          if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_304;
          }

LABEL_298:
          v142 = *(a2 + 136);
          if (*(v142 + 23) < 0)
          {
            v142 = *v142;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = v142;
          _os_log_impl(&dword_296E3E000, v141, OS_LOG_TYPE_DEFAULT, "#I ATR: %s", &__p, 0xCu);
          if (!*(a2 + 144))
          {
            goto LABEL_354;
          }

LABEL_305:
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
          v143 = __p.__r_.__value_.__l.__size_;
          __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
          *(&v565 + 1) = v143;
          v144 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
          v145 = (&v565 + *(v565 - 24));
          std::ios_base::swap(v144, v145);
          v146 = v144[1].__vftable;
          v144[1].__vftable = v145[1].__vftable;
          v145[1].__vftable = v146;
          LODWORD(v146) = v144[1].__fmtflags_;
          v144[1].__fmtflags_ = v145[1].__fmtflags_;
          v145[1].__fmtflags_ = v146;
          std::stringbuf::swap();
          __p.__r_.__value_.__r.__words[0] = *v8;
          v147 = v8[9];
          *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
          __p.__r_.__value_.__r.__words[2] = v147;
          v581 = (MEMORY[0x29EDC9570] + 16);
          if (v586 < 0)
          {
            operator delete(v585);
          }

          v581 = (MEMORY[0x29EDC9568] + 16);
          std::locale::~locale(&aBlock);
          std::iostream::~basic_iostream();
          MEMORY[0x29C267970](v587);
          v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
          v149 = *v148;
          v150 = *v148;
          *(v148 + *(*v148 - 24) + 24) = 2;
          v151 = (v148 + *(v150 - 24));
          if (v151[1].__fmtflags_ == -1)
          {
            std::ios_base::getloc(v151);
            v152 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
            v153 = (v152->__vftable[2].~facet_0)(v152, 32);
            std::locale::~locale(&__p);
            v151[1].__fmtflags_ = v153;
            v149 = *v148;
          }

          v151[1].__fmtflags_ = 48;
          *(v148 + *(v149 - 24) + 8) = *(v148 + *(v149 - 24) + 8) & 0xFFFFFFB5 | 8;
          v154 = MEMORY[0x29C267790](v148, **(a2 + 144));
          v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, " ", 1);
          *(v155 + *(*v155 - 24) + 8) = *(v155 + *(*v155 - 24) + 8) & 0xFFFFFFB5 | 2;
          if ((BYTE8(v572) & 0x10) != 0)
          {
            v158 = v572;
            if (v572 < *(&v569 + 1))
            {
              *&v572 = *(&v569 + 1);
              v158 = *(&v569 + 1);
            }

            v159 = v569;
            v156 = v158 - v569;
            if ((v158 - v569) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_336;
            }
          }

          else
          {
            if ((BYTE8(v572) & 8) == 0)
            {
              v156 = 0;
              *(&__dst.__r_.__value_.__s + 23) = 0;
              v157 = &__dst;
              goto LABEL_323;
            }

            v159 = *(&v567 + 1);
            v156 = *(&v568 + 1) - *(&v567 + 1);
            if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
            {
LABEL_336:
              std::string::__throw_length_error[abi:ne200100]();
            }
          }

          if (v156 >= 0x17)
          {
            if ((v156 | 7) == 0x17)
            {
              v160 = 25;
            }

            else
            {
              v160 = (v156 | 7) + 1;
            }

            v157 = operator new(v160);
            __dst.__r_.__value_.__l.__size_ = v156;
            __dst.__r_.__value_.__r.__words[2] = v160 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v157;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v156;
            v157 = &__dst;
            if (!v156)
            {
LABEL_323:
              v157->__r_.__value_.__s.__data_[v156] = 0;
              v161 = v575;
              v162 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = __dst;
              }

              ctu::cf::insert<__CFString const*,std::string>(v161, *MEMORY[0x29EDC8DD8]);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if ((v162 & 0x80000000) == 0)
                {
LABEL_328:
                  v163 = *(v560 + 40);
                  if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_354;
                  }

LABEL_332:
                  if ((BYTE8(v572) & 0x10) != 0)
                  {
                    v166 = v572;
                    if (v572 < *(&v569 + 1))
                    {
                      *&v572 = *(&v569 + 1);
                      v166 = *(&v569 + 1);
                    }

                    v167 = &v569;
                  }

                  else
                  {
                    if ((BYTE8(v572) & 8) == 0)
                    {
                      v164 = 0;
                      *(&__p.__r_.__value_.__s + 23) = 0;
                      v165 = &__p;
                      goto LABEL_350;
                    }

                    v167 = &v567 + 1;
                    v166 = *(&v568 + 1);
                  }

                  v168 = *v167;
                  v164 = v166 - *v167;
                  if (v164 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  if (v164 >= 0x17)
                  {
                    if ((v164 | 7) == 0x17)
                    {
                      v169 = 25;
                    }

                    else
                    {
                      v169 = (v164 | 7) + 1;
                    }

                    v165 = operator new(v169);
                    __p.__r_.__value_.__r.__words[2] = v169 | 0x8000000000000000;
                    __p.__r_.__value_.__r.__words[0] = v165;
                    __p.__r_.__value_.__l.__size_ = v164;
                  }

                  else
                  {
                    *(&__p.__r_.__value_.__s + 23) = v166 - *v167;
                    v165 = &__p;
                    if (!v164)
                    {
                      goto LABEL_350;
                    }
                  }

                  memmove(v165, v168, v164);
LABEL_350:
                  v165->__r_.__value_.__s.__data_[v164] = 0;
                  v170 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v170 = __p.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                  *(__dst.__r_.__value_.__r.__words + 4) = v170;
                  _os_log_impl(&dword_296E3E000, v163, OS_LOG_TYPE_DEFAULT, "#I MSISDN Ready: %s", &__dst, 0xCu);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_354;
                }
              }

              else if ((v162 & 0x80000000) == 0)
              {
                goto LABEL_328;
              }

              operator delete(__dst.__r_.__value_.__l.__data_);
              v163 = *(v560 + 40);
              if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_354;
              }

              goto LABEL_332;
            }
          }

          memmove(v157, v159, v156);
          goto LABEL_323;
        }

LABEL_291:
        memmove(v137, v135, v136);
        goto LABEL_292;
      }
    }

    else if (v136 < 0x17)
    {
      goto LABEL_283;
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
    __dst.__r_.__value_.__l.__size_ = v136;
    __dst.__r_.__value_.__r.__words[2] = v138 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v137;
    goto LABEL_291;
  }

  if ((v124 & 0x80000000) == 0)
  {
    goto LABEL_249;
  }

LABEL_255:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v125 = *(v560 + 40);
  if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_256;
  }

LABEL_250:
  v126 = *(a2 + 120);
  if (*(v126 + 23) < 0)
  {
    v126 = *v126;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
  *(__p.__r_.__value_.__r.__words + 4) = v126;
  _os_log_impl(&dword_296E3E000, v125, OS_LOG_TYPE_DEFAULT, "#I EID: %s", &__p, 0xCu);
  v127 = *(a2 + 128);
  if (!v127)
  {
    goto LABEL_280;
  }

LABEL_257:
  v128 = *(v127 + 23);
  if ((v128 & 0x8000000000000000) == 0)
  {
    if (v128 < 0x17)
    {
      goto LABEL_259;
    }

LABEL_263:
    if ((v128 | 7) == 0x17)
    {
      v130 = 25;
    }

    else
    {
      v130 = (v128 | 7) + 1;
    }

    v129 = operator new(v130);
    __dst.__r_.__value_.__l.__size_ = v128;
    __dst.__r_.__value_.__r.__words[2] = v130 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v129;
    goto LABEL_267;
  }

  v128 = v127[1];
  if (v128 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v127 = *v127;
  if (v128 >= 0x17)
  {
    goto LABEL_263;
  }

LABEL_259:
  *(&__dst.__r_.__value_.__s + 23) = v128;
  v129 = &__dst;
  if (v128)
  {
LABEL_267:
    memmove(v129, v127, v128);
  }

  v129->__r_.__value_.__s.__data_[v128] = 0;
  v131 = v575;
  v132 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v131, *MEMORY[0x29EDC8D10]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v132 & 0x80000000) == 0)
    {
      goto LABEL_273;
    }
  }

  else if ((v132 & 0x80000000) == 0)
  {
LABEL_273:
    v133 = *(v560 + 40);
    if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_280;
    }

    goto LABEL_274;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v133 = *(v560 + 40);
  if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_280;
  }

LABEL_274:
  v134 = *(a2 + 128);
  if (*(v134 + 23) < 0)
  {
    v134 = *v134;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
  *(__p.__r_.__value_.__r.__words + 4) = v134;
  _os_log_impl(&dword_296E3E000, v133, OS_LOG_TYPE_DEFAULT, "#I ICCID: %s", &__p, 0xCu);
  v135 = *(a2 + 136);
  if (v135)
  {
    goto LABEL_281;
  }

LABEL_304:
  if (*(a2 + 144))
  {
    goto LABEL_305;
  }

LABEL_354:
  if (!*(a2 + 152))
  {
    goto LABEL_404;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v171 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v171;
  v172 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v173 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v172, v173);
  v174 = v172[1].__vftable;
  v172[1].__vftable = v173[1].__vftable;
  v173[1].__vftable = v174;
  LODWORD(v174) = v172[1].__fmtflags_;
  v172[1].__fmtflags_ = v173[1].__fmtflags_;
  v173[1].__fmtflags_ = v174;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v175 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v175;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v177 = *v176;
  v178 = *v176;
  *(v176 + *(*v176 - 24) + 24) = 2;
  v179 = (v176 + *(v178 - 24));
  if (v179[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v179);
    v180 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v181 = (v180->__vftable[2].~facet_0)(v180, 32);
    std::locale::~locale(&__p);
    v179[1].__fmtflags_ = v181;
    v177 = *v176;
  }

  v179[1].__fmtflags_ = 48;
  *(v176 + *(v177 - 24) + 8) = *(v176 + *(v177 - 24) + 8) & 0xFFFFFFB5 | 8;
  v182 = MEMORY[0x29C267790](v176, **(a2 + 152));
  v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, " ", 1);
  *(v183 + *(*v183 - 24) + 8) = *(v183 + *(*v183 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v186 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v186 = *(&v569 + 1);
    }

    v187 = v569;
    v184 = v186 - v569;
    if ((v186 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_386;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v184 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v185 = &__dst;
      goto LABEL_373;
    }

    v187 = *(&v567 + 1);
    v184 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_386:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v184 >= 0x17)
  {
    if ((v184 | 7) == 0x17)
    {
      v188 = 25;
    }

    else
    {
      v188 = (v184 | 7) + 1;
    }

    v185 = operator new(v188);
    __dst.__r_.__value_.__l.__size_ = v184;
    __dst.__r_.__value_.__r.__words[2] = v188 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v185;
    goto LABEL_372;
  }

  *(&__dst.__r_.__value_.__s + 23) = v184;
  v185 = &__dst;
  if (v184)
  {
LABEL_372:
    memmove(v185, v187, v184);
  }

LABEL_373:
  v185->__r_.__value_.__s.__data_[v184] = 0;
  v189 = v575;
  v190 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v189, *MEMORY[0x29EDC8CE8]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v190 < 0)
    {
      goto LABEL_381;
    }

LABEL_378:
    v191 = *(v560 + 40);
    if (!os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_404;
    }

LABEL_382:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v194 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v194 = *(&v569 + 1);
      }

      v195 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v192 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v193 = &__p;
        goto LABEL_400;
      }

      v195 = &v567 + 1;
      v194 = *(&v568 + 1);
    }

    v196 = *v195;
    v192 = v194 - *v195;
    if (v192 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v192 >= 0x17)
    {
      if ((v192 | 7) == 0x17)
      {
        v197 = 25;
      }

      else
      {
        v197 = (v192 | 7) + 1;
      }

      v193 = operator new(v197);
      __p.__r_.__value_.__r.__words[2] = v197 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v193;
      __p.__r_.__value_.__l.__size_ = v192;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v194 - *v195;
      v193 = &__p;
      if (!v192)
      {
        goto LABEL_400;
      }
    }

    memmove(v193, v196, v192);
LABEL_400:
    v193->__r_.__value_.__s.__data_[v192] = 0;
    v198 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v198 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v198;
    _os_log_impl(&dword_296E3E000, v191, OS_LOG_TYPE_DEFAULT, "#I PIN1: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_404;
  }

  if ((v190 & 0x80000000) == 0)
  {
    goto LABEL_378;
  }

LABEL_381:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v191 = *(v560 + 40);
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_382;
  }

LABEL_404:
  if (!*(a2 + 160))
  {
    goto LABEL_454;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v199 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v199;
  v200 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v201 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v200, v201);
  v202 = v200[1].__vftable;
  v200[1].__vftable = v201[1].__vftable;
  v201[1].__vftable = v202;
  LODWORD(v202) = v200[1].__fmtflags_;
  v200[1].__fmtflags_ = v201[1].__fmtflags_;
  v201[1].__fmtflags_ = v202;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v203 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v203;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v204 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v205 = *v204;
  v206 = *v204;
  *(v204 + *(*v204 - 24) + 24) = 2;
  v207 = (v204 + *(v206 - 24));
  if (v207[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v207);
    v208 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v209 = (v208->__vftable[2].~facet_0)(v208, 32);
    std::locale::~locale(&__p);
    v207[1].__fmtflags_ = v209;
    v205 = *v204;
  }

  v207[1].__fmtflags_ = 48;
  *(v204 + *(v205 - 24) + 8) = *(v204 + *(v205 - 24) + 8) & 0xFFFFFFB5 | 8;
  v210 = MEMORY[0x29C267790](v204, **(a2 + 160));
  v211 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v210, " ", 1);
  *(v211 + *(*v211 - 24) + 8) = *(v211 + *(*v211 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v214 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v214 = *(&v569 + 1);
    }

    v215 = v569;
    v212 = v214 - v569;
    if ((v214 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_436;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v212 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v213 = &__dst;
      goto LABEL_423;
    }

    v215 = *(&v567 + 1);
    v212 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_436:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v212 >= 0x17)
  {
    if ((v212 | 7) == 0x17)
    {
      v216 = 25;
    }

    else
    {
      v216 = (v212 | 7) + 1;
    }

    v213 = operator new(v216);
    __dst.__r_.__value_.__l.__size_ = v212;
    __dst.__r_.__value_.__r.__words[2] = v216 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v213;
    goto LABEL_422;
  }

  *(&__dst.__r_.__value_.__s + 23) = v212;
  v213 = &__dst;
  if (v212)
  {
LABEL_422:
    memmove(v213, v215, v212);
  }

LABEL_423:
  v213->__r_.__value_.__s.__data_[v212] = 0;
  v217 = v575;
  v218 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v217, *MEMORY[0x29EDC8CF0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v218 < 0)
    {
      goto LABEL_431;
    }

LABEL_428:
    v219 = *(v560 + 40);
    if (!os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_454;
    }

LABEL_432:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v222 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v222 = *(&v569 + 1);
      }

      v223 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v220 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v221 = &__p;
        goto LABEL_450;
      }

      v223 = &v567 + 1;
      v222 = *(&v568 + 1);
    }

    v224 = *v223;
    v220 = v222 - *v223;
    if (v220 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v220 >= 0x17)
    {
      if ((v220 | 7) == 0x17)
      {
        v225 = 25;
      }

      else
      {
        v225 = (v220 | 7) + 1;
      }

      v221 = operator new(v225);
      __p.__r_.__value_.__r.__words[2] = v225 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v221;
      __p.__r_.__value_.__l.__size_ = v220;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v222 - *v223;
      v221 = &__p;
      if (!v220)
      {
        goto LABEL_450;
      }
    }

    memmove(v221, v224, v220);
LABEL_450:
    v221->__r_.__value_.__s.__data_[v220] = 0;
    v226 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v226 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v226;
    _os_log_impl(&dword_296E3E000, v219, OS_LOG_TYPE_DEFAULT, "#I PIN2: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_454;
  }

  if ((v218 & 0x80000000) == 0)
  {
    goto LABEL_428;
  }

LABEL_431:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v219 = *(v560 + 40);
  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_432;
  }

LABEL_454:
  if (!*(a2 + 168))
  {
    goto LABEL_504;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v227 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v227;
  v228 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v229 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v228, v229);
  v230 = v228[1].__vftable;
  v228[1].__vftable = v229[1].__vftable;
  v229[1].__vftable = v230;
  LODWORD(v230) = v228[1].__fmtflags_;
  v228[1].__fmtflags_ = v229[1].__fmtflags_;
  v229[1].__fmtflags_ = v230;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v231 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v231;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v232 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v233 = *v232;
  v234 = *v232;
  *(v232 + *(*v232 - 24) + 24) = 2;
  v235 = (v232 + *(v234 - 24));
  if (v235[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v235);
    v236 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v237 = (v236->__vftable[2].~facet_0)(v236, 32);
    std::locale::~locale(&__p);
    v235[1].__fmtflags_ = v237;
    v233 = *v232;
  }

  v235[1].__fmtflags_ = 48;
  *(v232 + *(v233 - 24) + 8) = *(v232 + *(v233 - 24) + 8) & 0xFFFFFFB5 | 8;
  v238 = MEMORY[0x29C267790](v232, **(a2 + 168));
  v239 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v238, " ", 1);
  *(v239 + *(*v239 - 24) + 8) = *(v239 + *(*v239 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v242 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v242 = *(&v569 + 1);
    }

    v243 = v569;
    v240 = v242 - v569;
    if ((v242 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_486;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v240 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v241 = &__dst;
      goto LABEL_473;
    }

    v243 = *(&v567 + 1);
    v240 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_486:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v240 >= 0x17)
  {
    if ((v240 | 7) == 0x17)
    {
      v244 = 25;
    }

    else
    {
      v244 = (v240 | 7) + 1;
    }

    v241 = operator new(v244);
    __dst.__r_.__value_.__l.__size_ = v240;
    __dst.__r_.__value_.__r.__words[2] = v244 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v241;
    goto LABEL_472;
  }

  *(&__dst.__r_.__value_.__s + 23) = v240;
  v241 = &__dst;
  if (v240)
  {
LABEL_472:
    memmove(v241, v243, v240);
  }

LABEL_473:
  v241->__r_.__value_.__s.__data_[v240] = 0;
  v245 = v575;
  v246 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v245, *MEMORY[0x29EDC8CF8]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v246 < 0)
    {
      goto LABEL_481;
    }

LABEL_478:
    v247 = *(v560 + 40);
    if (!os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_504;
    }

LABEL_482:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v250 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v250 = *(&v569 + 1);
      }

      v251 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v248 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v249 = &__p;
        goto LABEL_500;
      }

      v251 = &v567 + 1;
      v250 = *(&v568 + 1);
    }

    v252 = *v251;
    v248 = v250 - *v251;
    if (v248 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v248 >= 0x17)
    {
      if ((v248 | 7) == 0x17)
      {
        v253 = 25;
      }

      else
      {
        v253 = (v248 | 7) + 1;
      }

      v249 = operator new(v253);
      __p.__r_.__value_.__r.__words[2] = v253 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v249;
      __p.__r_.__value_.__l.__size_ = v248;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v250 - *v251;
      v249 = &__p;
      if (!v248)
      {
        goto LABEL_500;
      }
    }

    memmove(v249, v252, v248);
LABEL_500:
    v249->__r_.__value_.__s.__data_[v248] = 0;
    v254 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v254 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v254;
    _os_log_impl(&dword_296E3E000, v247, OS_LOG_TYPE_DEFAULT, "#I PUK1: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_504;
  }

  if ((v246 & 0x80000000) == 0)
  {
    goto LABEL_478;
  }

LABEL_481:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v247 = *(v560 + 40);
  if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_482;
  }

LABEL_504:
  if (!*(a2 + 176))
  {
    goto LABEL_554;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v255 = __p.__r_.__value_.__l.__size_;
  __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
  *(&v565 + 1) = v255;
  v256 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
  v257 = (&v565 + *(v565 - 24));
  std::ios_base::swap(v256, v257);
  v258 = v256[1].__vftable;
  v256[1].__vftable = v257[1].__vftable;
  v257[1].__vftable = v258;
  LODWORD(v258) = v256[1].__fmtflags_;
  v256[1].__fmtflags_ = v257[1].__fmtflags_;
  v257[1].__fmtflags_ = v258;
  std::stringbuf::swap();
  __p.__r_.__value_.__r.__words[0] = *v8;
  v259 = v8[9];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v8[8];
  __p.__r_.__value_.__r.__words[2] = v259;
  v581 = (MEMORY[0x29EDC9570] + 16);
  if (v586 < 0)
  {
    operator delete(v585);
  }

  v581 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&aBlock);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v587);
  v260 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
  v261 = *v260;
  v262 = *v260;
  *(v260 + *(*v260 - 24) + 24) = 2;
  v263 = (v260 + *(v262 - 24));
  if (v263[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v263);
    v264 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
    v265 = (v264->__vftable[2].~facet_0)(v264, 32);
    std::locale::~locale(&__p);
    v263[1].__fmtflags_ = v265;
    v261 = *v260;
  }

  v263[1].__fmtflags_ = 48;
  *(v260 + *(v261 - 24) + 8) = *(v260 + *(v261 - 24) + 8) & 0xFFFFFFB5 | 8;
  v266 = MEMORY[0x29C267790](v260, **(a2 + 176));
  v267 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v266, " ", 1);
  *(v267 + *(*v267 - 24) + 8) = *(v267 + *(*v267 - 24) + 8) & 0xFFFFFFB5 | 2;
  if ((BYTE8(v572) & 0x10) != 0)
  {
    v270 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v270 = *(&v569 + 1);
    }

    v271 = v569;
    v268 = v270 - v569;
    if ((v270 - v569) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_536;
    }
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v268 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v269 = &__dst;
      goto LABEL_523;
    }

    v271 = *(&v567 + 1);
    v268 = *(&v568 + 1) - *(&v567 + 1);
    if (*(&v568 + 1) - *(&v567 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_536:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v268 >= 0x17)
  {
    if ((v268 | 7) == 0x17)
    {
      v272 = 25;
    }

    else
    {
      v272 = (v268 | 7) + 1;
    }

    v269 = operator new(v272);
    __dst.__r_.__value_.__l.__size_ = v268;
    __dst.__r_.__value_.__r.__words[2] = v272 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v269;
    goto LABEL_522;
  }

  *(&__dst.__r_.__value_.__s + 23) = v268;
  v269 = &__dst;
  if (v268)
  {
LABEL_522:
    memmove(v269, v271, v268);
  }

LABEL_523:
  v269->__r_.__value_.__s.__data_[v268] = 0;
  v273 = v575;
  v274 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v273, *MEMORY[0x29EDC8D00]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v274 < 0)
    {
      goto LABEL_531;
    }

LABEL_528:
    v275 = *(v560 + 40);
    if (!os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_554;
    }

LABEL_532:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v278 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v278 = *(&v569 + 1);
      }

      v279 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v276 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v277 = &__p;
        goto LABEL_550;
      }

      v279 = &v567 + 1;
      v278 = *(&v568 + 1);
    }

    v280 = *v279;
    v276 = v278 - *v279;
    if (v276 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v276 >= 0x17)
    {
      if ((v276 | 7) == 0x17)
      {
        v281 = 25;
      }

      else
      {
        v281 = (v276 | 7) + 1;
      }

      v277 = operator new(v281);
      __p.__r_.__value_.__r.__words[2] = v281 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v277;
      __p.__r_.__value_.__l.__size_ = v276;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v278 - *v279;
      v277 = &__p;
      if (!v276)
      {
        goto LABEL_550;
      }
    }

    memmove(v277, v280, v276);
LABEL_550:
    v277->__r_.__value_.__s.__data_[v276] = 0;
    v282 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v282 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v282;
    _os_log_impl(&dword_296E3E000, v275, OS_LOG_TYPE_DEFAULT, "#I PUK2: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_554;
  }

  if ((v274 & 0x80000000) == 0)
  {
    goto LABEL_528;
  }

LABEL_531:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v275 = *(v560 + 40);
  if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_532;
  }

LABEL_554:
  v545 = v2;
  if (*(a2 + 184) != *(a2 + 192))
  {
    v563 = 0;
    v283 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    v284 = v283;
    if (v283)
    {
      v563 = v283;
    }

    v285 = *(v560 + 40);
    if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296E3E000, v285, OS_LOG_TYPE_DEFAULT, "#I App TLV Array:", &__p, 2u);
    }

    v286 = *(a2 + 184);
    v558 = *(a2 + 192);
    if (v286 != v558)
    {
      v559 = 0;
      v557 = *MEMORY[0x29EDC9528];
      v554 = *MEMORY[0x29EDC8EB8];
      v553 = *MEMORY[0x29EDC8EE0];
      v552 = *MEMORY[0x29EDC8F20];
      v550 = *MEMORY[0x29EDC8F68];
      v551 = *MEMORY[0x29EDC8F28];
      v548 = *MEMORY[0x29EDC8F18];
      v549 = *MEMORY[0x29EDC8F10];
      v546 = *MEMORY[0x29EDC8ED8];
      v547 = *MEMORY[0x29EDC8E40];
      v555 = *(MEMORY[0x29EDC9528] + 72);
      v556 = *(MEMORY[0x29EDC9528] + 64);
      do
      {
        *v562 = 0;
        v287 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v287)
        {
          *v562 = v287;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v288 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v288;
        v289 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v290 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v289, v290);
        v291 = v289[1].__vftable;
        v289[1].__vftable = v290[1].__vftable;
        v290[1].__vftable = v291;
        LODWORD(v291) = v289[1].__fmtflags_;
        v289[1].__fmtflags_ = v290[1].__fmtflags_;
        v290[1].__fmtflags_ = v291;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v292 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v293 = *v292;
        v294 = *v292;
        *(v292 + *(*v292 - 24) + 24) = 2;
        v295 = (v292 + *(v294 - 24));
        if (v295[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v295);
          v296 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v297 = (v296->__vftable[2].~facet_0)(v296, 32);
          std::locale::~locale(&__p);
          v295[1].__fmtflags_ = v297;
          v293 = *v292;
        }

        v295[1].__fmtflags_ = 48;
        *(v292 + *(v293 - 24) + 8) = *(v292 + *(v293 - 24) + 8) & 0xFFFFFFB5 | 8;
        v298 = MEMORY[0x29C267790](v292, *v286);
        v299 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v298, " ", 1);
        *(v299 + *(*v299 - 24) + 8) = *(v299 + *(*v299 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v302 = v572;
          v303 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v302 = *(&v569 + 1);
            v303 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v300 = v562[0];
            v301 = 0;
LABEL_578:
            __p = __dst;
            goto LABEL_585;
          }

          v302 = *(&v568 + 1);
          v303 = &v567 + 1;
        }

        v304 = *v303;
        v305 = v302 - *v303;
        if (v305 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v305 >= 0x17)
        {
          if ((v305 | 7) == 0x17)
          {
            v307 = 25;
          }

          else
          {
            v307 = (v305 | 7) + 1;
          }

          v306 = operator new(v307);
          __dst.__r_.__value_.__l.__size_ = v305;
          __dst.__r_.__value_.__r.__words[2] = v307 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v306;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v302 - *v303;
          v306 = &__dst;
          if (!v305)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v300 = v562[0];
            v301 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_578;
            }

            goto LABEL_584;
          }
        }

        memmove(v306, v304, v305);
        v306->__r_.__value_.__s.__data_[v305] = 0;
        v300 = v562[0];
        v301 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_578;
        }

LABEL_584:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_585:
        ctu::cf::insert<__CFString const*,std::string>(v300, v554);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v301 < 0)
          {
LABEL_590:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v308 = *(v560 + 40);
            if (!os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_611;
            }

            goto LABEL_591;
          }
        }

        else if (v301 < 0)
        {
          goto LABEL_590;
        }

        v308 = *(v560 + 40);
        if (!os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_611;
        }

LABEL_591:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v311 = v572;
          v312 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v311 = *(&v569 + 1);
            v312 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v309 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v310 = &__p;
            goto LABEL_606;
          }

          v311 = *(&v568 + 1);
          v312 = &v567 + 1;
        }

        v313 = *v312;
        v309 = v311 - *v312;
        if (v309 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v309 >= 0x17)
        {
          if ((v309 | 7) == 0x17)
          {
            v314 = 25;
          }

          else
          {
            v314 = (v309 | 7) + 1;
          }

          v310 = operator new(v314);
          __p.__r_.__value_.__r.__words[2] = v314 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v310;
          __p.__r_.__value_.__l.__size_ = v309;
LABEL_605:
          memmove(v310, v313, v309);
          goto LABEL_606;
        }

        *(&__p.__r_.__value_.__s + 23) = v311 - *v312;
        v310 = &__p;
        if (v309)
        {
          goto LABEL_605;
        }

LABEL_606:
        v310->__r_.__value_.__s.__data_[v309] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v315 = &__p;
        }

        else
        {
          v315 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v315;
        _os_log_impl(&dword_296E3E000, v308, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: App Type: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_611:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v316 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v316;
        v317 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v318 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v317, v318);
        v319 = v317[1].__vftable;
        v317[1].__vftable = v318[1].__vftable;
        v318[1].__vftable = v319;
        LODWORD(v319) = v317[1].__fmtflags_;
        v317[1].__fmtflags_ = v318[1].__fmtflags_;
        v318[1].__fmtflags_ = v319;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v320 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v321 = *v320;
        v322 = *v320;
        *(v320 + *(*v320 - 24) + 24) = 2;
        v323 = (v320 + *(v322 - 24));
        if (v323[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v323);
          v324 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v325 = (v324->__vftable[2].~facet_0)(v324, 32);
          std::locale::~locale(&__p);
          v323[1].__fmtflags_ = v325;
          v321 = *v320;
        }

        v323[1].__fmtflags_ = 48;
        *(v320 + *(v321 - 24) + 8) = *(v320 + *(v321 - 24) + 8) & 0xFFFFFFB5 | 8;
        v326 = MEMORY[0x29C267790](v320, *(v286 + 1));
        v327 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v326, " ", 1);
        *(v327 + *(*v327 - 24) + 8) = *(v327 + *(*v327 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v330 = v572;
          v331 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v330 = *(&v569 + 1);
            v331 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v328 = v562[0];
            v329 = 0;
LABEL_625:
            __p = __dst;
            goto LABEL_632;
          }

          v330 = *(&v568 + 1);
          v331 = &v567 + 1;
        }

        v332 = *v331;
        v333 = v330 - *v331;
        if (v333 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v333 >= 0x17)
        {
          if ((v333 | 7) == 0x17)
          {
            v335 = 25;
          }

          else
          {
            v335 = (v333 | 7) + 1;
          }

          v334 = operator new(v335);
          __dst.__r_.__value_.__l.__size_ = v333;
          __dst.__r_.__value_.__r.__words[2] = v335 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v334;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v330 - *v331;
          v334 = &__dst;
          if (!v333)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v328 = v562[0];
            v329 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_625;
            }

            goto LABEL_631;
          }
        }

        memmove(v334, v332, v333);
        v334->__r_.__value_.__s.__data_[v333] = 0;
        v328 = v562[0];
        v329 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_625;
        }

LABEL_631:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_632:
        ctu::cf::insert<__CFString const*,std::string>(v328, v553);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v329 < 0)
          {
LABEL_637:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v336 = *(v560 + 40);
            if (!os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_658;
            }

            goto LABEL_638;
          }
        }

        else if (v329 < 0)
        {
          goto LABEL_637;
        }

        v336 = *(v560 + 40);
        if (!os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_658;
        }

LABEL_638:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v339 = v572;
          v340 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v339 = *(&v569 + 1);
            v340 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v337 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v338 = &__p;
            goto LABEL_653;
          }

          v339 = *(&v568 + 1);
          v340 = &v567 + 1;
        }

        v341 = *v340;
        v337 = v339 - *v340;
        if (v337 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v337 >= 0x17)
        {
          if ((v337 | 7) == 0x17)
          {
            v342 = 25;
          }

          else
          {
            v342 = (v337 | 7) + 1;
          }

          v338 = operator new(v342);
          __p.__r_.__value_.__r.__words[2] = v342 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v338;
          __p.__r_.__value_.__l.__size_ = v337;
LABEL_652:
          memmove(v338, v341, v337);
          goto LABEL_653;
        }

        *(&__p.__r_.__value_.__s + 23) = v339 - *v340;
        v338 = &__p;
        if (v337)
        {
          goto LABEL_652;
        }

LABEL_653:
        v338->__r_.__value_.__s.__data_[v337] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v343 = &__p;
        }

        else
        {
          v343 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v343;
        _os_log_impl(&dword_296E3E000, v336, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: App State: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_658:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v344 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v344;
        v345 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v346 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v345, v346);
        v347 = v345[1].__vftable;
        v345[1].__vftable = v346[1].__vftable;
        v346[1].__vftable = v347;
        LODWORD(v347) = v345[1].__fmtflags_;
        v345[1].__fmtflags_ = v346[1].__fmtflags_;
        v346[1].__fmtflags_ = v347;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v348 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v349 = *v348;
        v350 = *v348;
        *(v348 + *(*v348 - 24) + 24) = 2;
        v351 = (v348 + *(v350 - 24));
        if (v351[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v351);
          v352 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v353 = (v352->__vftable[2].~facet_0)(v352, 32);
          std::locale::~locale(&__p);
          v351[1].__fmtflags_ = v353;
          v349 = *v348;
        }

        v351[1].__fmtflags_ = 48;
        *(v348 + *(v349 - 24) + 8) = *(v348 + *(v349 - 24) + 8) & 0xFFFFFFB5 | 8;
        v354 = MEMORY[0x29C267790](v348, *(v286 + 2));
        v355 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v354, " ", 1);
        *(v355 + *(*v355 - 24) + 8) = *(v355 + *(*v355 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v358 = v572;
          v359 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v358 = *(&v569 + 1);
            v359 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v356 = v562[0];
            v357 = 0;
LABEL_672:
            __p = __dst;
            goto LABEL_679;
          }

          v358 = *(&v568 + 1);
          v359 = &v567 + 1;
        }

        v360 = *v359;
        v361 = v358 - *v359;
        if (v361 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v361 >= 0x17)
        {
          if ((v361 | 7) == 0x17)
          {
            v363 = 25;
          }

          else
          {
            v363 = (v361 | 7) + 1;
          }

          v362 = operator new(v363);
          __dst.__r_.__value_.__l.__size_ = v361;
          __dst.__r_.__value_.__r.__words[2] = v363 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v362;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v358 - *v359;
          v362 = &__dst;
          if (!v361)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v356 = v562[0];
            v357 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_672;
            }

            goto LABEL_678;
          }
        }

        memmove(v362, v360, v361);
        v362->__r_.__value_.__s.__data_[v361] = 0;
        v356 = v562[0];
        v357 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_672;
        }

LABEL_678:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_679:
        ctu::cf::insert<__CFString const*,std::string>(v356, v552);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v357 < 0)
          {
LABEL_684:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v364 = *(v560 + 40);
            if (!os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_705;
            }

            goto LABEL_685;
          }
        }

        else if (v357 < 0)
        {
          goto LABEL_684;
        }

        v364 = *(v560 + 40);
        if (!os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_705;
        }

LABEL_685:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v367 = v572;
          v368 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v367 = *(&v569 + 1);
            v368 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v365 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v366 = &__p;
            goto LABEL_700;
          }

          v367 = *(&v568 + 1);
          v368 = &v567 + 1;
        }

        v369 = *v368;
        v365 = v367 - *v368;
        if (v365 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v365 >= 0x17)
        {
          if ((v365 | 7) == 0x17)
          {
            v370 = 25;
          }

          else
          {
            v370 = (v365 | 7) + 1;
          }

          v366 = operator new(v370);
          __p.__r_.__value_.__r.__words[2] = v370 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v366;
          __p.__r_.__value_.__l.__size_ = v365;
LABEL_699:
          memmove(v366, v369, v365);
          goto LABEL_700;
        }

        *(&__p.__r_.__value_.__s + 23) = v367 - *v368;
        v366 = &__p;
        if (v365)
        {
          goto LABEL_699;
        }

LABEL_700:
        v366->__r_.__value_.__s.__data_[v365] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v371 = &__p;
        }

        else
        {
          v371 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v371;
        _os_log_impl(&dword_296E3E000, v364, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Pin Status: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_705:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v372 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v372;
        v373 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v374 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v373, v374);
        v375 = v373[1].__vftable;
        v373[1].__vftable = v374[1].__vftable;
        v374[1].__vftable = v375;
        LODWORD(v375) = v373[1].__fmtflags_;
        v373[1].__fmtflags_ = v374[1].__fmtflags_;
        v374[1].__fmtflags_ = v375;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v376 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v377 = *v376;
        v378 = *v376;
        *(v376 + *(*v376 - 24) + 24) = 2;
        v379 = (v376 + *(v378 - 24));
        if (v379[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v379);
          v380 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v381 = (v380->__vftable[2].~facet_0)(v380, 32);
          std::locale::~locale(&__p);
          v379[1].__fmtflags_ = v381;
          v377 = *v376;
        }

        v379[1].__fmtflags_ = 48;
        *(v376 + *(v377 - 24) + 8) = *(v376 + *(v377 - 24) + 8) & 0xFFFFFFB5 | 8;
        v382 = MEMORY[0x29C267790](v376, *(v286 + 3));
        v383 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v382, " ", 1);
        *(v383 + *(*v383 - 24) + 8) = *(v383 + *(*v383 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v386 = v572;
          v387 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v386 = *(&v569 + 1);
            v387 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v384 = v562[0];
            v385 = 0;
LABEL_719:
            __p = __dst;
            goto LABEL_726;
          }

          v386 = *(&v568 + 1);
          v387 = &v567 + 1;
        }

        v388 = *v387;
        v389 = v386 - *v387;
        if (v389 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v389 >= 0x17)
        {
          if ((v389 | 7) == 0x17)
          {
            v391 = 25;
          }

          else
          {
            v391 = (v389 | 7) + 1;
          }

          v390 = operator new(v391);
          __dst.__r_.__value_.__l.__size_ = v389;
          __dst.__r_.__value_.__r.__words[2] = v391 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v390;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v386 - *v387;
          v390 = &__dst;
          if (!v389)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v384 = v562[0];
            v385 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_719;
            }

            goto LABEL_725;
          }
        }

        memmove(v390, v388, v389);
        v390->__r_.__value_.__s.__data_[v389] = 0;
        v384 = v562[0];
        v385 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_719;
        }

LABEL_725:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_726:
        ctu::cf::insert<__CFString const*,std::string>(v384, v551);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v385 < 0)
          {
LABEL_731:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v392 = *(v560 + 40);
            if (!os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_752;
            }

            goto LABEL_732;
          }
        }

        else if (v385 < 0)
        {
          goto LABEL_731;
        }

        v392 = *(v560 + 40);
        if (!os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_752;
        }

LABEL_732:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v395 = v572;
          v396 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v395 = *(&v569 + 1);
            v396 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v393 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v394 = &__p;
            goto LABEL_747;
          }

          v395 = *(&v568 + 1);
          v396 = &v567 + 1;
        }

        v397 = *v396;
        v393 = v395 - *v396;
        if (v393 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v393 >= 0x17)
        {
          if ((v393 | 7) == 0x17)
          {
            v398 = 25;
          }

          else
          {
            v398 = (v393 | 7) + 1;
          }

          v394 = operator new(v398);
          __p.__r_.__value_.__r.__words[2] = v398 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v394;
          __p.__r_.__value_.__l.__size_ = v393;
LABEL_746:
          memmove(v394, v397, v393);
          goto LABEL_747;
        }

        *(&__p.__r_.__value_.__s + 23) = v395 - *v396;
        v394 = &__p;
        if (v393)
        {
          goto LABEL_746;
        }

LABEL_747:
        v394->__r_.__value_.__s.__data_[v393] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v399 = &__p;
        }

        else
        {
          v399 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v399;
        _os_log_impl(&dword_296E3E000, v392, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Sub Status: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_752:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v400 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v400;
        v401 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v402 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v401, v402);
        v403 = v401[1].__vftable;
        v401[1].__vftable = v402[1].__vftable;
        v402[1].__vftable = v403;
        LODWORD(v403) = v401[1].__fmtflags_;
        v401[1].__fmtflags_ = v402[1].__fmtflags_;
        v402[1].__fmtflags_ = v403;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v404 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v405 = *v404;
        v406 = *v404;
        *(v404 + *(*v404 - 24) + 24) = 2;
        v407 = (v404 + *(v406 - 24));
        if (v407[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v407);
          v408 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v409 = (v408->__vftable[2].~facet_0)(v408, 32);
          std::locale::~locale(&__p);
          v407[1].__fmtflags_ = v409;
          v405 = *v404;
        }

        v407[1].__fmtflags_ = 48;
        *(v404 + *(v405 - 24) + 8) = *(v404 + *(v405 - 24) + 8) & 0xFFFFFFB5 | 8;
        v410 = MEMORY[0x29C267790](v404, *(v286 + 4));
        v411 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v410, " ", 1);
        *(v411 + *(*v411 - 24) + 8) = *(v411 + *(*v411 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v414 = v572;
          v415 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v414 = *(&v569 + 1);
            v415 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v412 = v562[0];
            v413 = 0;
LABEL_766:
            __p = __dst;
            goto LABEL_773;
          }

          v414 = *(&v568 + 1);
          v415 = &v567 + 1;
        }

        v416 = *v415;
        v417 = v414 - *v415;
        if (v417 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v417 >= 0x17)
        {
          if ((v417 | 7) == 0x17)
          {
            v419 = 25;
          }

          else
          {
            v419 = (v417 | 7) + 1;
          }

          v418 = operator new(v419);
          __dst.__r_.__value_.__l.__size_ = v417;
          __dst.__r_.__value_.__r.__words[2] = v419 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v418;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v414 - *v415;
          v418 = &__dst;
          if (!v417)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v412 = v562[0];
            v413 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_766;
            }

            goto LABEL_772;
          }
        }

        memmove(v418, v416, v417);
        v418->__r_.__value_.__s.__data_[v417] = 0;
        v412 = v562[0];
        v413 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_766;
        }

LABEL_772:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_773:
        ctu::cf::insert<__CFString const*,std::string>(v412, v550);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v413 < 0)
          {
LABEL_778:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v420 = *(v560 + 40);
            if (!os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_799;
            }

            goto LABEL_779;
          }
        }

        else if (v413 < 0)
        {
          goto LABEL_778;
        }

        v420 = *(v560 + 40);
        if (!os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_799;
        }

LABEL_779:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v423 = v572;
          v424 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v423 = *(&v569 + 1);
            v424 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v421 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v422 = &__p;
            goto LABEL_794;
          }

          v423 = *(&v568 + 1);
          v424 = &v567 + 1;
        }

        v425 = *v424;
        v421 = v423 - *v424;
        if (v421 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v421 >= 0x17)
        {
          if ((v421 | 7) == 0x17)
          {
            v426 = 25;
          }

          else
          {
            v426 = (v421 | 7) + 1;
          }

          v422 = operator new(v426);
          __p.__r_.__value_.__r.__words[2] = v426 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v422;
          __p.__r_.__value_.__l.__size_ = v421;
LABEL_793:
          memmove(v422, v425, v421);
          goto LABEL_794;
        }

        *(&__p.__r_.__value_.__s + 23) = v423 - *v424;
        v422 = &__p;
        if (v421)
        {
          goto LABEL_793;
        }

LABEL_794:
        v422->__r_.__value_.__s.__data_[v421] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v427 = &__p;
        }

        else
        {
          v427 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v427;
        _os_log_impl(&dword_296E3E000, v420, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Pin1 Replaced: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_799:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v428 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v428;
        v429 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v430 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v429, v430);
        v431 = v429[1].__vftable;
        v429[1].__vftable = v430[1].__vftable;
        v430[1].__vftable = v431;
        LODWORD(v431) = v429[1].__fmtflags_;
        v429[1].__fmtflags_ = v430[1].__fmtflags_;
        v430[1].__fmtflags_ = v431;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v432 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v433 = *v432;
        v434 = *v432;
        *(v432 + *(*v432 - 24) + 24) = 2;
        v435 = (v432 + *(v434 - 24));
        if (v435[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v435);
          v436 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v437 = (v436->__vftable[2].~facet_0)(v436, 32);
          std::locale::~locale(&__p);
          v435[1].__fmtflags_ = v437;
          v433 = *v432;
        }

        v435[1].__fmtflags_ = 48;
        *(v432 + *(v433 - 24) + 8) = *(v432 + *(v433 - 24) + 8) & 0xFFFFFFB5 | 8;
        v438 = MEMORY[0x29C267790](v432, *(v286 + 5));
        v439 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v438, " ", 1);
        *(v439 + *(*v439 - 24) + 8) = *(v439 + *(*v439 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v442 = v572;
          v443 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v442 = *(&v569 + 1);
            v443 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v440 = v562[0];
            v441 = 0;
LABEL_813:
            __p = __dst;
            goto LABEL_820;
          }

          v442 = *(&v568 + 1);
          v443 = &v567 + 1;
        }

        v444 = *v443;
        v445 = v442 - *v443;
        if (v445 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v445 >= 0x17)
        {
          if ((v445 | 7) == 0x17)
          {
            v447 = 25;
          }

          else
          {
            v447 = (v445 | 7) + 1;
          }

          v446 = operator new(v447);
          __dst.__r_.__value_.__l.__size_ = v445;
          __dst.__r_.__value_.__r.__words[2] = v447 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v446;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v442 - *v443;
          v446 = &__dst;
          if (!v445)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v440 = v562[0];
            v441 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_813;
            }

            goto LABEL_819;
          }
        }

        memmove(v446, v444, v445);
        v446->__r_.__value_.__s.__data_[v445] = 0;
        v440 = v562[0];
        v441 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_813;
        }

LABEL_819:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_820:
        ctu::cf::insert<__CFString const*,std::string>(v440, v549);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v441 < 0)
          {
LABEL_825:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v448 = *(v560 + 40);
            if (!os_log_type_enabled(v448, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_846;
            }

            goto LABEL_826;
          }
        }

        else if (v441 < 0)
        {
          goto LABEL_825;
        }

        v448 = *(v560 + 40);
        if (!os_log_type_enabled(v448, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_846;
        }

LABEL_826:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v451 = v572;
          v452 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v451 = *(&v569 + 1);
            v452 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v449 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v450 = &__p;
            goto LABEL_841;
          }

          v451 = *(&v568 + 1);
          v452 = &v567 + 1;
        }

        v453 = *v452;
        v449 = v451 - *v452;
        if (v449 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v449 >= 0x17)
        {
          if ((v449 | 7) == 0x17)
          {
            v454 = 25;
          }

          else
          {
            v454 = (v449 | 7) + 1;
          }

          v450 = operator new(v454);
          __p.__r_.__value_.__r.__words[2] = v454 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v450;
          __p.__r_.__value_.__l.__size_ = v449;
LABEL_840:
          memmove(v450, v453, v449);
          goto LABEL_841;
        }

        *(&__p.__r_.__value_.__s + 23) = v451 - *v452;
        v450 = &__p;
        if (v449)
        {
          goto LABEL_840;
        }

LABEL_841:
        v450->__r_.__value_.__s.__data_[v449] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v455 = &__p;
        }

        else
        {
          v455 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v455;
        _os_log_impl(&dword_296E3E000, v448, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Pin1 State: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_846:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
        v456 = __p.__r_.__value_.__l.__size_;
        __p.__r_.__value_.__l.__size_ = *(&v565 + 1);
        *(&v565 + 1) = v456;
        v457 = (&__p + *(__p.__r_.__value_.__r.__words[0] - 24));
        v458 = (&v565 + *(v565 - 24));
        std::ios_base::swap(v457, v458);
        v459 = v457[1].__vftable;
        v457[1].__vftable = v458[1].__vftable;
        v458[1].__vftable = v459;
        LODWORD(v459) = v457[1].__fmtflags_;
        v457[1].__fmtflags_ = v458[1].__fmtflags_;
        v458[1].__fmtflags_ = v459;
        std::stringbuf::swap();
        __p.__r_.__value_.__r.__words[0] = v557;
        *(__p.__r_.__value_.__r.__words + *(v557 - 24)) = v556;
        __p.__r_.__value_.__r.__words[2] = v555;
        v581 = (MEMORY[0x29EDC9570] + 16);
        if (v586 < 0)
        {
          operator delete(v585);
        }

        v581 = (MEMORY[0x29EDC9568] + 16);
        std::locale::~locale(&aBlock);
        std::iostream::~basic_iostream();
        MEMORY[0x29C267970](v587);
        v460 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
        v461 = *v460;
        v462 = *v460;
        *(v460 + *(*v460 - 24) + 24) = 2;
        v463 = (v460 + *(v462 - 24));
        if (v463[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v463);
          v464 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
          v465 = (v464->__vftable[2].~facet_0)(v464, 32);
          std::locale::~locale(&__p);
          v463[1].__fmtflags_ = v465;
          v461 = *v460;
        }

        v463[1].__fmtflags_ = 48;
        *(v460 + *(v461 - 24) + 8) = *(v460 + *(v461 - 24) + 8) & 0xFFFFFFB5 | 8;
        v466 = MEMORY[0x29C267790](v460, *(v286 + 6));
        v467 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v466, " ", 1);
        *(v467 + *(*v467 - 24) + 8) = *(v467 + *(*v467 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v470 = v572;
          v471 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v470 = *(&v569 + 1);
            v471 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            *(&__dst.__r_.__value_.__s + 23) = 0;
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v468 = v562[0];
            v469 = 0;
LABEL_860:
            __p = __dst;
            goto LABEL_867;
          }

          v470 = *(&v568 + 1);
          v471 = &v567 + 1;
        }

        v472 = *v471;
        v473 = v470 - *v471;
        if (v473 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v473 >= 0x17)
        {
          if ((v473 | 7) == 0x17)
          {
            v475 = 25;
          }

          else
          {
            v475 = (v473 | 7) + 1;
          }

          v474 = operator new(v475);
          __dst.__r_.__value_.__l.__size_ = v473;
          __dst.__r_.__value_.__r.__words[2] = v475 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v474;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v470 - *v471;
          v474 = &__dst;
          if (!v473)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v468 = v562[0];
            v469 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_860;
            }

            goto LABEL_866;
          }
        }

        memmove(v474, v472, v473);
        v474->__r_.__value_.__s.__data_[v473] = 0;
        v468 = v562[0];
        v469 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_860;
        }

LABEL_866:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_867:
        ctu::cf::insert<__CFString const*,std::string>(v468, v548);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v469 < 0)
          {
LABEL_872:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v476 = *(v560 + 40);
            if (!os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_893;
            }

            goto LABEL_873;
          }
        }

        else if (v469 < 0)
        {
          goto LABEL_872;
        }

        v476 = *(v560 + 40);
        if (!os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_893;
        }

LABEL_873:
        if ((BYTE8(v572) & 0x10) != 0)
        {
          v479 = v572;
          v480 = &v569;
          if (v572 < *(&v569 + 1))
          {
            *&v572 = *(&v569 + 1);
            v479 = *(&v569 + 1);
            v480 = &v569;
          }
        }

        else
        {
          if ((BYTE8(v572) & 8) == 0)
          {
            v477 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v478 = &__p;
            goto LABEL_888;
          }

          v479 = *(&v568 + 1);
          v480 = &v567 + 1;
        }

        v481 = *v480;
        v477 = v479 - *v480;
        if (v477 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v477 >= 0x17)
        {
          if ((v477 | 7) == 0x17)
          {
            v482 = 25;
          }

          else
          {
            v482 = (v477 | 7) + 1;
          }

          v478 = operator new(v482);
          __p.__r_.__value_.__r.__words[2] = v482 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v478;
          __p.__r_.__value_.__l.__size_ = v477;
LABEL_887:
          memmove(v478, v481, v477);
          goto LABEL_888;
        }

        *(&__p.__r_.__value_.__s + 23) = v479 - *v480;
        v478 = &__p;
        if (v477)
        {
          goto LABEL_887;
        }

LABEL_888:
        v478->__r_.__value_.__s.__data_[v477] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v483 = &__p;
        }

        else
        {
          v483 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v483;
        _os_log_impl(&dword_296E3E000, v476, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Pin2 State: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_893:
        v484 = strlen(v286 + 8);
        if (v484 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v485 = v484;
        if (v484 >= 0x17)
        {
          if ((v484 | 7) == 0x17)
          {
            v489 = 25;
          }

          else
          {
            v489 = (v484 | 7) + 1;
          }

          v486 = operator new(v489);
          __dst.__r_.__value_.__l.__size_ = v485;
          __dst.__r_.__value_.__r.__words[2] = v489 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v486;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v484;
          v486 = &__dst;
          if (!v484)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v487 = v562[0];
            v488 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_897;
            }

            goto LABEL_903;
          }
        }

        memmove(v486, v286 + 8, v485);
        v486->__r_.__value_.__s.__data_[v485] = 0;
        v487 = v562[0];
        v488 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_897:
          __p = __dst;
          goto LABEL_904;
        }

LABEL_903:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_904:
        ctu::cf::insert<__CFString const*,std::string>(v487, v547);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v488 < 0)
          {
LABEL_909:
            operator delete(__dst.__r_.__value_.__l.__data_);
            v490 = *(v560 + 40);
            if (!os_log_type_enabled(v490, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_924;
            }

            goto LABEL_910;
          }
        }

        else if (v488 < 0)
        {
          goto LABEL_909;
        }

        v490 = *(v560 + 40);
        if (!os_log_type_enabled(v490, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_924;
        }

LABEL_910:
        v491 = strlen(v286 + 8);
        if (v491 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v492 = v491;
        if (v491 >= 0x17)
        {
          if ((v491 | 7) == 0x17)
          {
            v494 = 25;
          }

          else
          {
            v494 = (v491 | 7) + 1;
          }

          v493 = operator new(v494);
          __p.__r_.__value_.__r.__words[2] = v494 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v493;
          __p.__r_.__value_.__l.__size_ = v492;
LABEL_918:
          memmove(v493, v286 + 8, v492);
          goto LABEL_919;
        }

        *(&__p.__r_.__value_.__s + 23) = v491;
        v493 = &__p;
        if (v491)
        {
          goto LABEL_918;
        }

LABEL_919:
        v493->__r_.__value_.__s.__data_[v492] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v495 = &__p;
        }

        else
        {
          v495 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v495;
        _os_log_impl(&dword_296E3E000, v490, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: AID: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_924:
        v496 = strlen(v286 + 52);
        if (v496 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v497 = v496;
        if (v496 >= 0x17)
        {
          if ((v496 | 7) == 0x17)
          {
            v501 = 25;
          }

          else
          {
            v501 = (v496 | 7) + 1;
          }

          v498 = operator new(v501);
          __dst.__r_.__value_.__l.__size_ = v497;
          __dst.__r_.__value_.__r.__words[2] = v501 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = v498;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v496;
          v498 = &__dst;
          if (!v496)
          {
            __dst.__r_.__value_.__s.__data_[0] = 0;
            v499 = *v562;
            v500 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_928;
            }

            goto LABEL_934;
          }
        }

        memmove(v498, v286 + 52, v497);
        v498->__r_.__value_.__s.__data_[v497] = 0;
        v499 = *v562;
        v500 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_928:
          __p = __dst;
          goto LABEL_935;
        }

LABEL_934:
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_935:
        ctu::cf::insert<__CFString const*,std::string>(v499, v546);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v500 & 0x80000000) == 0)
          {
LABEL_937:
            v502 = *(v560 + 40);
            if (!os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_944;
            }

            goto LABEL_938;
          }
        }

        else if ((v500 & 0x80000000) == 0)
        {
          goto LABEL_937;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        v502 = *(v560 + 40);
        if (!os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
        {
LABEL_944:
          v284 = v563;
          __p.__r_.__value_.__r.__words[0] = v499;
          if (!v499)
          {
            goto LABEL_561;
          }

          goto LABEL_957;
        }

LABEL_938:
        v503 = strlen(v286 + 52);
        if (v503 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v504 = v503;
        if (v503 >= 0x17)
        {
          if ((v503 | 7) == 0x17)
          {
            v506 = 25;
          }

          else
          {
            v506 = (v503 | 7) + 1;
          }

          v505 = operator new(v506);
          __p.__r_.__value_.__r.__words[2] = v506 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v505;
          __p.__r_.__value_.__l.__size_ = v504;
LABEL_950:
          memmove(v505, v286 + 52, v504);
          goto LABEL_951;
        }

        *(&__p.__r_.__value_.__s + 23) = v503;
        v505 = &__p;
        if (v503)
        {
          goto LABEL_950;
        }

LABEL_951:
        v505->__r_.__value_.__s.__data_[v504] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v507 = &__p;
        }

        else
        {
          v507 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
        *(__dst.__r_.__value_.__r.__words + 4) = v559;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v507;
        _os_log_impl(&dword_296E3E000, v502, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: App Label: %s", &__dst, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v499 = *v562;
        v284 = v563;
        __p.__r_.__value_.__r.__words[0] = *v562;
        if (!*v562)
        {
          goto LABEL_561;
        }

LABEL_957:
        CFRetain(v499);
        CFArrayAppendValue(v284, v499);
        CFRelease(v499);
        CFRelease(v499);
LABEL_561:
        ++v559;
        v286 += 88;
      }

      while (v286 != v558);
    }

    ctu::cf::insert<__CFString const*,__CFArray *>(v575, *MEMORY[0x29EDC8DD0], v284);
    v8 = MEMORY[0x29EDC9528];
    v2 = v545;
    if (v284)
    {
      CFRelease(v284);
    }
  }

  v508 = *(a2 + 208);
  if (!v508)
  {
    goto LABEL_1010;
  }

  v509 = *v508;
  v510 = v508[1];
  if (*v508 != v510)
  {
    do
    {
      v511 = *v509;
      v512 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v566, &unk_296EC917B, 0);
      v513 = *v512;
      v514 = *v512;
      *(v512 + *(*v512 - 24) + 24) = 2;
      v515 = (v512 + *(v514 - 24));
      if (v515[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v515);
        v516 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
        v517 = (v516->__vftable[2].~facet_0)(v516, 32);
        std::locale::~locale(&__p);
        v515[1].__fmtflags_ = v517;
        v513 = *v512;
      }

      v515[1].__fmtflags_ = 48;
      *(v512 + *(v513 - 24) + 8) = *(v512 + *(v513 - 24) + 8) & 0xFFFFFFB5 | 8;
      v518 = MEMORY[0x29C267790](v512, v511);
      v519 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v518, " ", 1);
      *(v519 + *(*v519 - 24) + 8) = *(v519 + *(*v519 - 24) + 8) & 0xFFFFFFB5 | 2;
      ++v509;
    }

    while (v509 != v510);
  }

  if ((BYTE8(v572) & 0x10) != 0)
  {
    v522 = v572;
    if (v572 < *(&v569 + 1))
    {
      *&v572 = *(&v569 + 1);
      v522 = *(&v569 + 1);
    }

    v523 = &v569;
  }

  else
  {
    if ((BYTE8(v572) & 8) == 0)
    {
      v520 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      v521 = &__dst;
      v8 = MEMORY[0x29EDC9528];
      v2 = v545;
      goto LABEL_981;
    }

    v523 = &v567 + 1;
    v522 = *(&v568 + 1);
  }

  v8 = MEMORY[0x29EDC9528];
  v2 = v545;
  v524 = *v523;
  v520 = v522 - *v523;
  if (v520 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v520 >= 0x17)
  {
    if ((v520 | 7) == 0x17)
    {
      v525 = 25;
    }

    else
    {
      v525 = (v520 | 7) + 1;
    }

    v521 = operator new(v525);
    __dst.__r_.__value_.__l.__size_ = v520;
    __dst.__r_.__value_.__r.__words[2] = v525 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v521;
    goto LABEL_980;
  }

  *(&__dst.__r_.__value_.__s + 23) = v522 - *v523;
  v521 = &__dst;
  if (v520)
  {
LABEL_980:
    memmove(v521, v524, v520);
  }

LABEL_981:
  v521->__r_.__value_.__s.__data_[v520] = 0;
  v526 = v575;
  v527 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  ctu::cf::insert<__CFString const*,std::string>(v526, *MEMORY[0x29EDC8D38]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v527 < 0)
    {
      goto LABEL_989;
    }

LABEL_986:
    v528 = *(v560 + 40);
    if (!os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1010;
    }

LABEL_990:
    if ((BYTE8(v572) & 0x10) != 0)
    {
      v531 = v572;
      if (v572 < *(&v569 + 1))
      {
        *&v572 = *(&v569 + 1);
        v531 = *(&v569 + 1);
      }

      v532 = &v569;
    }

    else
    {
      if ((BYTE8(v572) & 8) == 0)
      {
        v529 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v530 = &__p;
        goto LABEL_1006;
      }

      v532 = &v567 + 1;
      v531 = *(&v568 + 1);
    }

    v533 = *v532;
    v529 = v531 - *v532;
    if (v529 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v529 >= 0x17)
    {
      if ((v529 | 7) == 0x17)
      {
        v534 = 25;
      }

      else
      {
        v534 = (v529 | 7) + 1;
      }

      v530 = operator new(v534);
      __p.__r_.__value_.__r.__words[2] = v534 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v530;
      __p.__r_.__value_.__l.__size_ = v529;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v531 - *v532;
      v530 = &__p;
      if (!v529)
      {
        goto LABEL_1006;
      }
    }

    memmove(v530, v533, v529);
LABEL_1006:
    v530->__r_.__value_.__s.__data_[v529] = 0;
    v535 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v535 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v535;
    _os_log_impl(&dword_296E3E000, v528, OS_LOG_TYPE_DEFAULT, "#I EID Byte: %s", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_1010;
  }

  if ((v527 & 0x80000000) == 0)
  {
    goto LABEL_986;
  }

LABEL_989:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v528 = *(v560 + 40);
  if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_990;
  }

LABEL_1010:
  if (v2[3] && v2[4])
  {
    v536 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v537 = v575;
    if (v575)
    {
      CFRetain(v575);
    }

    v538 = v2[3];
    if (v538)
    {
      v539 = _Block_copy(v538);
    }

    else
    {
      v539 = 0;
    }

    v540 = v2[4];
    __p.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    __p.__r_.__value_.__l.__size_ = 1174405120;
    __p.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    v581 = &__block_descriptor_tmp_148;
    if (v539)
    {
      aBlock = _Block_copy(v539);
      v583 = v536;
      if (!v536)
      {
LABEL_1024:
        v584 = v537;
        if (v537)
        {
          CFRetain(v537);
        }

        dispatch_async(v540, &__p);
        if (v584)
        {
          CFRelease(v584);
        }

        if (v583)
        {
          CFRelease(v583);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v539)
        {
          _Block_release(v539);
        }

        if (v537)
        {
          CFRelease(v537);
        }

        if (v536)
        {
          CFRelease(v536);
        }

        goto LABEL_1038;
      }
    }

    else
    {
      aBlock = 0;
      v583 = v536;
      if (!v536)
      {
        goto LABEL_1024;
      }
    }

    CFRetain(v536);
    goto LABEL_1024;
  }

LABEL_1038:
  *&v565 = *v8;
  v541 = v8[9];
  *(&v565 + *(v565 - 24)) = v8[8];
  *&v566 = v541;
  *(&v566 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v571) < 0)
  {
    operator delete(v570[1]);
  }

  *(&v566 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v567);
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v573);
  if (v575)
  {
    CFRelease(v575);
  }

  if (SHIBYTE(v576.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v576.__r_.__value_.__l.__data_);
    v542 = cf;
    if (!cf)
    {
      goto LABEL_1047;
    }

    goto LABEL_1046;
  }

  v542 = cf;
  if (cf)
  {
LABEL_1046:
    CFRelease(v542);
  }

LABEL_1047:
  v5 = v579;
  if (v579)
  {
    goto LABEL_1048;
  }

LABEL_1050:
  v544 = *MEMORY[0x29EDCA608];
}

void sub_296E9760C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  operator delete(v41);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a41);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&STACK[0x218]);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&STACK[0x238]);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&STACK[0x240]);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,char const*>(__CFDictionary *a1, CFTypeRef cf, const __CFString **a3, uint64_t a4, const __CFAllocator *a5)
{
  if (cf)
  {
    v8 = a4;
    CFRetain(cf);
    a4 = v8;
  }

  value = 0;
  ctu::cf::convert_copy(&value, a3, 0x8000100, a4, a5);
  v9 = value;
  if (cf && value)
  {
    CFDictionaryAddValue(a1, cf, value);
  }

  else if (!value)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296E97B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296E97BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getSIMPresence(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting SIM Presence", buf, 2u);
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[3] = v4;
  v29[4] = v4;
  v29[1] = v4;
  v29[2] = v4;
  v29[0] = v4;
  mipc::sim::Get_Euicc_Slots_Status_Req::Get_Euicc_Slots_Status_Req();
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v5;
  v41 = v5;
  v39 = v5;
  mipc::sim::Get_Euicc_Slots_Status_Req::serialize(&v39, v29);
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
  *v16 = &unk_2A1E139B8;
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
  mipc::sim::Get_Euicc_Slots_Status_Req::~Get_Euicc_Slots_Status_Req(v29);
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