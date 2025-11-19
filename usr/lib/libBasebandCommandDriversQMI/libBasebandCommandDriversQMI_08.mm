void sub_296F2F130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v33 = *(v31 - 112);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v34 = *(v31 - 136);
      if (!v34)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  v34 = *(v31 - 136);
  if (!v34)
  {
LABEL_8:
    if (a30 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v31 - 96);
    operator delete(v30);
    std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v34);
  goto LABEL_8;
}

void ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I Stopped", v2, 2u);
  }
}

void ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_18(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I Started", v2, 2u);
  }
}

void ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_20(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I Enter Low Power", v2, 2u);
  }
}

void ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_23(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I Enter Low Power", v2, 2u);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v4;
  v54 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v53);
  v52 = 0;
  v5 = *(&v53 + 1);
  v6 = v54;
  v7 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v7 = *(&v53 + 1);
    while (*(*v7 + 8) != 16)
    {
      if (++v7 == v54)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v54)
  {
LABEL_9:
    v12 = operator new(0x28uLL);
    v12[8] = 16;
    *v12 = &unk_2A1E189B0;
    *(v12 + 2) = 0;
    v11 = v12 + 16;
    *(v12 + 3) = 0;
    *(v12 + 4) = 0;
    if (v6 >= *(&v54 + 1))
    {
      v14 = v6 - v5;
      v15 = (v6 - v5) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v54 + 1) - v5;
      if ((*(&v54 + 1) - v5) >> 2 > v16)
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
        v20 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v15];
      *v21 = v12;
      v13 = v21 + 8;
      memcpy(v20, v5, v14);
      *(&v53 + 1) = v20;
      *&v54 = v13;
      *(&v54 + 1) = &v20[8 * v18];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v12;
      v13 = v6 + 8;
    }

    *&v54 = v13;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v11 = v9 + 16;
  }

  v22 = &unk_2A1E189E8;
  v56 = &unk_2A1E189E8;
  v57 = v11;
  v58 = &v52;
  v59 = &v56;
  v23 = v2[1];
  v24 = &v56;
  if (v23 == v2 + 2)
  {
LABEL_40:
    v22[4](v24, v10);
    v28 = v52;
    v29 = *(&v53 + 1);
    v30 = v54;
    v31 = *(&v53 + 1);
    if (*(&v53 + 1) == v54)
    {
      goto LABEL_45;
    }

LABEL_41:
    v31 = v29;
    while (*(*v31 + 8) != 1)
    {
      if (++v31 == v30)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_45;
  }

  while ((*(*v24 + 6))(v24, v23 + 28, v23 + 4))
  {
    v25 = v23[1];
    v26 = v23;
    if (v25)
    {
      do
      {
        v23 = v25;
        v25 = *v25;
      }

      while (v25);
    }

    else
    {
      do
      {
        v23 = v26[2];
        v27 = *v23 == v26;
        v26 = v23;
      }

      while (!v27);
    }

    if (v23 == v2 + 2)
    {
      break;
    }

    v24 = v59;
    if (!v59)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  v24 = v59;
  if (v59 == &v56)
  {
    v22 = *v59;
    goto LABEL_40;
  }

  if (v59)
  {
    (*(*v59 + 5))(v59, v10);
  }

  v28 = v52;
  v29 = *(&v53 + 1);
  v30 = v54;
  v31 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    goto LABEL_41;
  }

LABEL_45:
  if (v31 == v30)
  {
LABEL_48:
    v35 = operator new(0x10uLL);
    v36 = v35;
    v35[4] = 1;
    *v35 = &unk_2A1E18A90;
    if (v30 >= *(&v54 + 1))
    {
      v38 = v30 - v29;
      v39 = v30 - v29;
      v40 = v39 + 1;
      if ((v39 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v41 = *(&v54 + 1) - v29;
      if ((*(&v54 + 1) - v29) >> 2 > v40)
      {
        v40 = v41 >> 2;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        if (v42 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v43 = operator new(8 * v42);
      }

      else
      {
        v43 = 0;
      }

      v44 = &v43[8 * v39];
      *v44 = v36;
      v37 = v44 + 8;
      memcpy(v43, v29, v38);
      *(&v53 + 1) = v43;
      *&v54 = v37;
      *(&v54 + 1) = &v43[8 * v42];
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v30 = v35;
      v37 = v30 + 1;
    }

    v34 = v36 + 9;
    *&v54 = v37;
  }

  else
  {
    v32 = ***v31;
    if (!v33)
    {
      __cxa_bad_cast();
    }

    v34 = v33 + 9;
  }

  *v34 = v28;
  QMIServiceMsg::create();
  v56 = MEMORY[0x29EDCA5F8];
  v57 = 1174405120;
  v58 = ___ZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v59 = &__block_descriptor_tmp_27;
  v60 = v3;
  v45 = v2[4];
  if (v45)
  {
    v45 = _Block_copy(v45);
  }

  v61 = v45;
  v46 = v2[5];
  object = v46;
  if (v46)
  {
    dispatch_retain(v46);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm14SetPowerBudget8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E6D0;
  aBlock[4] = &v56;
  v51 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v51)
  {
    _Block_release(v51);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v61)
  {
    _Block_release(v61);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v53);
  v47 = v2[5];
  if (v47)
  {
    dispatch_release(v47);
  }

  v48 = v2[4];
  if (v48)
  {
    _Block_release(v48);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy((v2 + 1), v2[2]);
  operator delete(v2);
  v49 = a1[2];
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  operator delete(a1);
  v50 = *MEMORY[0x29EDCA608];
}

void sub_296F2FA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      _Block_release(v4);
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v1 + 8, *(v1 + 16));
    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  if (*(a2 + 4))
  {
    v5 = operator new(0x20uLL);
    __p = v5;
    v13 = xmmword_296FBE410;
    strcpy(v5, "Failed to set power budget");
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315138;
      *&cf[4] = v5;
      _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "%s", cf, 0xCu);
    }

    cpms::QMICommandDriver::checkError(v3, a2, &__p, cf);
    v7 = *cf;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    v8 = a1[5];
    if (!v8)
    {
LABEL_13:
      if (!v7)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v7 = 0;
    v8 = a1[5];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (!a1[6])
  {
    goto LABEL_13;
  }

  if (v7 && (CFRetain(v7), (v8 = a1[5]) == 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = _Block_copy(v8);
  }

  v10 = a1[6];
  __p = MEMORY[0x29EDCA5F8];
  *&v13 = 1174405120;
  *(&v13 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
  v14 = &__block_descriptor_tmp_40_2;
  if (!v9)
  {
    aBlock = 0;
    v16 = v7;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  aBlock = _Block_copy(v9);
  v16 = v7;
  if (v7)
  {
LABEL_20:
    CFRetain(v7);
  }

LABEL_21:
  dispatch_async(v10, &__p);
  if (v16)
  {
    CFRelease(v16);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v7)
  {
    CFRelease(v7);
LABEL_29:
    CFRelease(v7);
  }

LABEL_30:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_296F2FD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerBudgets>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E189B0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerBudgets>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E189B0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

unint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerBudgets>::getSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 4;
  }

  else
  {
    return 5 * ((v2 - v1 - 8) >> 3) + 9;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerBudgets>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  v5 = *a2;
  *(v5 + 3) = (*(result + 24) - *(result + 16)) >> 3;
  v6 = v5 + 3;
  v7 = *(result + 16);
  for (i = *(result + 24); v7 != i; v7 += 8)
  {
    *v4 = *v7;
    *(v4 + 1) = *(v7 + 4);
    v4 += 5;
  }

  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = v4 - v6;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::PowerBudgets>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E189B0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F2FF80(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1E189E8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E189E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::operator()(uint64_t a1, unsigned __int8 *a2, unsigned int *a3)
{
  if (*(a3 + 4) == 1)
  {
    v3 = *a2;
    v4 = *a3;
    v5 = *(a1 + 8);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = (v10 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v12 = v6 - v9;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v14 = a1;
        v15 = operator new(8 * v13);
      }

      else
      {
        v14 = a1;
        v15 = 0;
      }

      v16 = &v15[8 * (v10 >> 3)];
      *v16 = v3 | (v4 << 32) | 0xAAAAAA00;
      v8 = v16 + 1;
      memcpy(v15, v9, v10);
      *v5 = v15;
      *(v5 + 8) = v8;
      *(v5 + 16) = &v15[8 * v13];
      if (v9)
      {
        operator delete(v9);
      }

      a1 = v14;
    }

    else
    {
      *v7 = v3 | (v4 << 32) | 0xAAAAAA00;
      v8 = v7 + 1;
    }

    *(v5 + 8) = v8;
    ++**(a1 + 16);
  }

  return 1;
}

uint64_t std::__function::__func<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::PowerBudgets &)#1}::operator() const(bsp::tlv::abm::PowerBudgets &)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvENKUlRN3bsp3tlv3abm12PowerBudgetsEE_clESH_EUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvENKUlRN3bsp3tlv3abm12PowerBudgetsEE_clESH_EUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvENKUlRN3bsp3tlv3abm12PowerBudgetsEE_clESH_EUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZZN4cpms16QMICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvENKUlRN3bsp3tlv3abm12PowerBudgetsEE_clESH_EUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::~function(uint64_t a1)
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

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NumberOfBudgets>::write(uint64_t result, uint64_t *a2)
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

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::NumberOfBudgets>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E18A90;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm14SetPowerBudget8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F303B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0(uint64_t a1)
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

void sub_296F30464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v13 = v3 + 64;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZZN4cpms16QMICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_41_0;
  v10[4] = v3;
  v5 = v2[1];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = v2[2];
  v11 = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm21GetCurrentPowerBudget8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E6F8;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v18);
  v7 = v2[2];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = v2[1];
  if (v8)
  {
    _Block_release(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_296F3066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  dispatch::callback<void({block_pointer})(BudgetData)>::~callback(v23 + 40);
  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  std::unique_ptr<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F306A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void ___ZZN4cpms16QMICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *this)
{
  v55 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  if (!*(this + 1))
  {
    TlvValue = qmi::MessageBase::findTlvValue(this);
    if (!TlvValue)
    {
      goto LABEL_56;
    }

    v12 = TlvValue;
    v13 = v11;
    v40 = TlvValue;
    memset(__p, 170, sizeof(__p));
    tlv::parseV<bsp::tlv::abm::CurrentPowerBudgets>(&v40, v11, __p);
    v14 = v40;
    if (v40)
    {
      v33 = v40;
      v34 = v13;
      v35 = v12;
      v45 = 0;
      v46 = 0;
      v44 = &v45;
      v15 = __p[1];
      v16 = __p[0];
      if (__p[0] != __p[1])
      {
        while (1)
        {
          v17 = *(v3 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v23 = *v16;
            *buf = 67109120;
            *&buf[4] = v23;
            _os_log_debug_impl(&dword_296ECF000, v17, OS_LOG_TYPE_DEBUG, "#D Current Power from BB: Budget ID: %u", buf, 8u);
            v17 = *(v3 + 40);
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
LABEL_14:
              v18 = *v16;
              v19 = *(v16 + 1);
              v20 = &v45;
              v21 = &v45;
              v22 = v45;
              if (v45)
              {
                goto LABEL_20;
              }

              goto LABEL_24;
            }
          }

          else if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          v24 = *(v16 + 1);
          *buf = 67109120;
          *&buf[4] = v24;
          _os_log_debug_impl(&dword_296ECF000, v17, OS_LOG_TYPE_DEBUG, "#D Current Power from BB: Budget: %u", buf, 8u);
          v18 = *v16;
          v19 = *(v16 + 1);
          v20 = &v45;
          v21 = &v45;
          v22 = v45;
          if (v45)
          {
            while (1)
            {
LABEL_20:
              while (1)
              {
                v21 = v22;
                v25 = *(v22 + 28);
                if (v25 <= v18)
                {
                  break;
                }

                v22 = *v21;
                v20 = v21;
                if (!*v21)
                {
                  goto LABEL_24;
                }
              }

              if (v25 >= v18)
              {
                break;
              }

              v22 = v21[1];
              if (!v22)
              {
                v20 = v21 + 1;
                goto LABEL_24;
              }
            }

            *(v21 + 8) = v19;
            *(v21 + 36) = 1;
            v16 += 8;
            if (v16 == v15)
            {
              goto LABEL_36;
            }
          }

          else
          {
LABEL_24:
            v26 = operator new(0x28uLL);
            v26[28] = v18;
            v26[32] = 0;
            v26[36] = 0;
            *v26 = 0;
            *(v26 + 1) = 0;
            *(v26 + 2) = v21;
            *v20 = v26;
            if (*v44)
            {
              v44 = *v44;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v45, v26);
            ++v46;
            *(v26 + 8) = v19;
            v26[36] = 1;
            v16 += 8;
            if (v16 == v15)
            {
              goto LABEL_36;
            }
          }
        }
      }

      v27 = *(v3 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296ECF000, v27, OS_LOG_TYPE_DEFAULT, "#I Got zero current power budget!", buf, 2u);
      }

LABEL_36:
      if (a1[5] && a1[6])
      {
        v42 = 0;
        v43 = 0;
        v41 = &v42;
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v41, v44, &v45);
        v28 = a1[5];
        if (v28)
        {
          v29 = _Block_copy(v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = a1[6];
        *buf = MEMORY[0x29EDCA5F8];
        v48 = 1174405120;
        v49 = ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke;
        v50 = &__block_descriptor_tmp_43_2;
        if (v29)
        {
          v31 = _Block_copy(v29);
        }

        else
        {
          v31 = 0;
        }

        v53 = 0;
        v54 = 0;
        aBlock = v31;
        v52 = &v53;
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v52, v41, &v42);
        dispatch_async(v30, buf);
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v52, v53);
        v53 = 0;
        v54 = 0;
        v52 = &v53;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v29)
        {
          _Block_release(v29);
        }

        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v41, v42);
        v42 = 0;
        v43 = 0;
        v41 = &v42;
      }

      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v44, v45);
      v13 = v34;
      v12 = v35;
      v14 = v33;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v14)
    {
      (*MEMORY[0x29EDC91A8])(*this, 16, v12, v13);
    }

    goto LABEL_56;
  }

  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "Failed to get thermal sensor IDs from the baseband", buf, 2u);
    v5 = a1[5];
    if (!v5)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v5 = a1[5];
    if (!v5)
    {
      goto LABEL_56;
    }
  }

  if (a1[6])
  {
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v6 = _Block_copy(v5);
    v7 = v6;
    v8 = a1[6];
    *buf = MEMORY[0x29EDCA5F8];
    v48 = 1174405120;
    v49 = ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke;
    v50 = &__block_descriptor_tmp_43_2;
    if (v6)
    {
      v9 = _Block_copy(v6);
    }

    else
    {
      v9 = 0;
    }

    v53 = 0;
    v54 = 0;
    aBlock = v9;
    v52 = &v53;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v52, v37, v38);
    dispatch_async(v8, buf);
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v52, v53);
    v53 = 0;
    v54 = 0;
    v52 = &v53;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v37, v38[0]);
  }

LABEL_56:
  v32 = *MEMORY[0x29EDCA608];
}

void sub_296F30C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *aBlock, uint64_t a34, uint64_t a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFv10BudgetDataEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c57_ZTSN8dispatch8callbackIU13block_pointerFv10BudgetDataEEE(uint64_t a1)
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm21GetCurrentPowerBudget8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F30EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  if (&v2 != (a1 + 40))
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v2, *(a1 + 40), (a1 + 48));
  }

  (*(v1 + 16))(v1, &v2);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v2, v3[0]);
}

void __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10BudgetDataEEE40c16_ZTS10BudgetData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 48) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  if (a1 != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>((a1 + 40), *(a2 + 40), (a2 + 48));
  }
}

void sub_296F31028(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v2, *(v1 + 48));
  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10BudgetDataEEE40c16_ZTS10BudgetData(uint64_t a1)
{
  v1 = (a1 + 48);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1 + 40, *(a1 + 48));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v2 = *(v1 - 2);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>(cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0,std::default_delete<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v13 = v3 + 64;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZZN4cpms16QMICommandDriver14queryThermalIDEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_48_2;
  v10[4] = v3;
  v5 = v2[1];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = v2[2];
  v11 = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17ThermalGetSensors8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E720;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v18);
  v7 = v2[2];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = v2[1];
  if (v8)
  {
    _Block_release(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_296F3128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(v23 + 40);
  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  std::unique_ptr<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0,std::default_delete<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F312C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0,std::default_delete<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0,std::default_delete<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void ___ZZN4cpms16QMICommandDriver14queryThermalIDEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *this)
{
  v3 = a1[4];
  if (*(this + 1))
  {
    v4 = *(v3 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "Failed to get thermal sensor IDs from the baseband", &__p, 2u);
      v5 = a1[5];
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = a1[5];
      if (!v5)
      {
        return;
      }
    }

    if (a1[6])
    {
      v6 = _Block_copy(v5);
      v7 = v6;
      v8 = a1[6];
      __p = MEMORY[0x29EDCA5F8];
      v22 = 1174405120;
      v23 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke;
      v24 = &__block_descriptor_tmp_50;
      if (v6)
      {
        v9 = _Block_copy(v6);
      }

      else
      {
        v9 = 0;
      }

      v25 = v9;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      dispatch_async(v8, &__p);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v25)
      {
        _Block_release(v25);
      }

      if (v7)
      {
        _Block_release(v7);
      }
    }
  }

  else
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1174405120;
    v16 = ___ZZN4cpms16QMICommandDriver14queryThermalIDEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke_44;
    v17 = &__block_descriptor_tmp_45_1;
    v18 = v3;
    v11 = a1[5];
    if (v11)
    {
      v11 = _Block_copy(v11);
    }

    v12 = a1[6];
    aBlock = v11;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    TlvValue = qmi::MessageBase::findTlvValue(this);
    if (TlvValue)
    {
      __p = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, TlvValue, &TlvValue[v13], v13);
      v16(v15, &__p);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_296F31588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(v18 + 40);
    _Unwind_Resume(a1);
  }

  dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(v18 + 40);
  _Unwind_Resume(a1);
}

void ___ZZN4cpms16QMICommandDriver14queryThermalIDEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke_44(uint64_t a1, unsigned __int8 **a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v6 = 0;
    v4 = 0;
    v15 = a1;
    v16 = *(a1 + 40);
    if (!v16)
    {
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 32);
  do
  {
    while (1)
    {
      v8 = *(v7 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        v30 = 0xAAAAAAAAAAAAAAAALL;
        v31 = 0x7AAAAAAAAAAAAAALL;
        strcpy(&__p, "Invalid");
        if (v9 <= 2)
        {
          HIBYTE(v31) = 4;
          LODWORD(__p) = (v9 << 16) | 0x52304254;
          BYTE4(__p) = 0;
        }

        *buf = 136315138;
        p_p = &__p;
        _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Available Sensor ID: %s", buf, 0xCu);
        if (SHIBYTE(v31) < 0)
        {
          break;
        }
      }

      v10 = *v2;
      if (v6 >= v5)
      {
        goto LABEL_9;
      }

LABEL_3:
      *v6++ = v10;
      if (++v2 == v3)
      {
        goto LABEL_23;
      }
    }

    operator delete(__p);
    v10 = *v2;
    if (v6 < v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = v6 - v4;
    v12 = v6 - v4 + 1;
    if (v12 < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (2 * (v5 - v4) > v12)
    {
      v12 = 2 * (v5 - v4);
    }

    if ((v5 - v4) >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    v5 = &v14[v13];
    v14[v11] = v10;
    v6 = &v14[v11 + 1];
    memcpy(v14, v4, v11);
    if (v4)
    {
      operator delete(v4);
    }

    v4 = v14;
    ++v2;
  }

  while (v2 != v3);
LABEL_23:
  v15 = a1;
  v16 = *(a1 + 40);
  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_26:
  if (!*(v15 + 48))
  {
    goto LABEL_41;
  }

  v17 = v6 - v4;
  if (v6 == v4)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v18 = operator new(v6 - v4);
    v19 = &v18[v17];
    memcpy(v18, v4, v17);
  }

  v20 = _Block_copy(v16);
  v21 = v20;
  v22 = *(v15 + 48);
  __p = MEMORY[0x29EDCA5F8];
  v30 = 1174405120;
  v31 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke;
  v32 = &__block_descriptor_tmp_50;
  if (v20)
  {
    aBlock = _Block_copy(v20);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v23 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_33;
    }

LABEL_45:
    if ((v23 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v26 = operator new(v23);
    v27 = &v26[v23];
    v34 = v26;
    v36 = &v26[v23];
    memcpy(v26, v18, v23);
    v35 = v27;
    dispatch_async(v22, &__p);
    v24 = v34;
    if (!v34)
    {
      goto LABEL_35;
    }

LABEL_34:
    v35 = v24;
    operator delete(v24);
    goto LABEL_35;
  }

  aBlock = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v23 = v19 - v18;
  if (v19 != v18)
  {
    goto LABEL_45;
  }

LABEL_33:
  dispatch_async(v22, &__p);
  v24 = v34;
  if (v34)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v18)
  {
    operator delete(v18);
  }

LABEL_41:
  if (v4)
  {
    operator delete(v4);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_296F31970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, void *__p, uint64_t a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c107_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c107_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEE(uint64_t a1)
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17ThermalGetSensors8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F31B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke(void *a1)
{
  v8 = 0;
  v9 = 0;
  __p = 0;
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = v3 - v2;
  if (v3 != v2)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v5 = operator new(v3 - v2);
    v6 = &v5[v4];
    __p = v5;
    v9 = &v5[v4];
    memcpy(v5, v2, v4);
    v8 = v6;
  }

  (*(v1 + 16))(v1, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_296F31C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEE40c65_ZTSNSt3__16vectorIN3abm17BasebandThermalIDENS_9allocatorIS2_EEEE(void *a1, void *a2)
{
  result = a2[4];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[5] = 0;
  a1[4] = result;
  a1[6] = 0;
  a1[7] = 0;
  v6 = a2[5];
  v5 = a2[6];
  v7 = v5 - v6;
  if (v5 != v6)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - v6);
    a1[5] = v8;
    a1[6] = v8;
    v9 = &v8[v7];
    a1[7] = &v8[v7];
    result = memcpy(v8, v6, v7);
    a1[6] = v9;
  }

  return result;
}

void sub_296F31CE0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    _Block_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17BasebandThermalIDENS1_9allocatorIS4_EEEEEEE40c65_ZTSNSt3__16vectorIN3abm17BasebandThermalIDENS_9allocatorIS2_EEEE(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v4;
  v45 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v5 = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v41 = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v42 = &__block_descriptor_tmp_52_0;
  v43 = *(v2 + 3);
  v6 = *(&v44 + 1);
  v7 = v45;
  v8 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    v8 = *(&v44 + 1);
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v45)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v45)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E18C60;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v7 >= *(&v45 + 1))
    {
      v14 = v7 - v6;
      v15 = (v7 - v6) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v45 + 1) - v6;
      if ((*(&v45 + 1) - v6) >> 2 > v16)
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

      v29 = v12 + 12;
      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v12;
        v20 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = &v20[8 * v15];
      *v21 = v12;
      v13 = v21 + 8;
      memcpy(v20, v6, v14);
      *(&v44 + 1) = v20;
      *&v45 = v13;
      *(&v45 + 1) = &v20[8 * v18];
      if (v6)
      {
        operator delete(v6);
      }

      v11 = v29;
    }

    else
    {
      *v7 = v12;
      v13 = v7 + 8;
    }

    *&v45 = v13;
    v5 = v41;
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

  v5(v40, v11);
  v35 = v3 + 64;
  v36 = QMIServiceMsg::create();
  v37 = 25000;
  v38 = 0;
  v39 = 0;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 1174405120;
  v30[2] = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_2;
  v30[3] = &__block_descriptor_tmp_60_1;
  v30[4] = v3;
  v34 = *(v2 + 2);
  v22 = v2[2];
  if (v22)
  {
    v22 = _Block_copy(v22);
  }

  v31 = v22;
  v23 = v2[3];
  if (v23)
  {
    v23 = _Block_copy(v23);
  }

  v24 = v2[4];
  v32 = v23;
  object = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22ThermalConfigFrequency8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E7B8;
  aBlock[4] = v30;
  v39 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v39)
  {
    _Block_release(v39);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v44);
  v25 = v2[4];
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = v2[3];
  if (v26)
  {
    _Block_release(v26);
  }

  v27 = v2[2];
  if (v27)
  {
    _Block_release(v27);
  }

  operator delete(v2);
  v28 = a1[2];
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  operator delete(a1);
}

void sub_296F32170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v31 + 48);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::Client::SendProxy::~SendProxy(&a21);
  qmi::MutableMessageBase::~MutableMessageBase(&a31);
  std::unique_ptr<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v16 = 0;
  if (*(a2 + 4))
  {
    v5 = operator new(0x38uLL);
    __p = v5;
    v18 = xmmword_296FBE420;
    strcpy(v5, "Failed to make configuration of the reporting frequency");
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    cpms::QMICommandDriver::checkError(v3, a2, &__p, buf);
    v7 = *buf;
    v16 = *buf;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 1174405120;
    v13[2] = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_54;
    v13[3] = &__block_descriptor_tmp_59_3;
    v13[4] = v3;
    v15 = *(a1 + 64);
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    __p = MEMORY[0x29EDCA5F8];
    *&v18 = 0x40000000;
    *(&v18 + 1) = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm16ThermalSensorInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
    v19 = &unk_29EE5E7E0;
    v20 = v13;
    qmi::Client::setIndHandler();
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = 0;
    v8 = *(a1 + 48);
    if (!v8)
    {
LABEL_17:
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  if (!*(a1 + 56))
  {
    goto LABEL_17;
  }

  if (v7 && (CFRetain(v7), (v8 = *(a1 + 48)) == 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = _Block_copy(v8);
  }

  v11 = *(a1 + 56);
  __p = MEMORY[0x29EDCA5F8];
  *&v18 = 1174405120;
  *(&v18 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
  v19 = &__block_descriptor_tmp_40_2;
  if (!v10)
  {
    v20 = 0;
    cf = v7;
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v20 = _Block_copy(v10);
  cf = v7;
  if (v7)
  {
LABEL_24:
    CFRetain(v7);
  }

LABEL_25:
  dispatch_async(v11, &__p);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v7)
  {
    CFRelease(v7);
LABEL_33:
    CFRelease(v7);
  }

LABEL_34:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_296F32548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_54(uint64_t a1, qmi::MessageBase *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v33 = 0;
  v34 = &v33;
  v35 = 0x4002000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v5 = *(a1 + 48);
  if (v5 == 2)
  {
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v24 = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_57;
    v25 = &unk_29EE5E790;
    v26 = &v33;
    v27 = v4;
    TlvValue = qmi::MessageBase::findTlvValue(this);
    v8 = TlvValue;
    if (TlvValue)
    {
      v9 = v13;
      v41 = TlvValue;
      memset(buf, 170, sizeof(buf));
      tlv::parseV<bsp::tlv::abm::ThermalSensorsFloatType>(&v41, v13, buf);
      v14 = v41;
      if (v41)
      {
        v24(v23, buf);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (!v14)
      {
        v11 = 16;
        goto LABEL_17;
      }
    }
  }

  else if (v5 == 1)
  {
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 0x40000000;
    v29 = ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_55;
    v30 = &unk_29EE5E768;
    v31 = &v33;
    v32 = v4;
    v6 = qmi::MessageBase::findTlvValue(this);
    v8 = v6;
    if (v6)
    {
      v9 = v7;
      v41 = v6;
      memset(buf, 170, sizeof(buf));
      tlv::parseV<bsp::tlv::abm::ThermalSensors>(&v41, v7, buf);
      v10 = v41;
      if (v41)
      {
        v29(v28, buf);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (!v10)
      {
        v11 = 1;
LABEL_17:
        (*MEMORY[0x29EDC91A8])(*this, v11, v8, v9);
      }
    }
  }

  else
  {
    v15 = *(v4 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_296ECF000, v15, OS_LOG_TYPE_ERROR, "Cannot handle %u version", buf, 8u);
      v16 = *(a1 + 40);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  v16 = *(a1 + 40);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_20:
  memset(buf, 0, sizeof(buf));
  v18 = v34[5];
  v17 = v34[6];
  v19 = v17 - v18;
  if (v17 != v18)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = operator new(v17 - v18);
    v21 = &v20[v19];
    *buf = v20;
    *&buf[16] = &v20[v19];
    memcpy(v20, v18, v19);
    *&buf[8] = v21;
  }

  (*(v16 + 16))(v16, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_25:
  _Block_object_dispose(&v33, 8);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_296F328E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  v30 = *(v28 - 96);
  if (v30)
  {
    *(v28 - 88) = v30;
    operator delete(v30);
    _Block_object_dispose(&a22, 8);
    v31 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a22, 8);
    v31 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  a28 = v31;
  operator delete(v31);
  _Unwind_Resume(a1);
}

void ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_55(uint64_t a1, unsigned __int8 **a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v2 = a2[1];
  if (*a2 != v2)
  {
    v4 = a1;
    v5 = *(a1 + 40);
    v24 = a2[1];
    while (1)
    {
      v6 = *(v5 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v21 = *v3;
        *buf = 67109120;
        v27 = v21;
        _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Thermal Sensor ID: %d", buf, 8u);
        v6 = *(v5 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
LABEL_22:
          v22 = *(v3 + 1);
          *buf = 67109120;
          v27 = v22;
          _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Temperature (int32): %d", buf, 8u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v7 = *(*(v4 + 32) + 8);
      v8 = *v3;
      v9 = *(v3 + 1);
      v11 = v7[6];
      v10 = v7[7];
      if (v11 < v10)
      {
        *v11 = v8 | (v9 << 32);
        v7[6] = v11 + 8;
        v3 += 8;
        if (v3 == v2)
        {
          break;
        }
      }

      else
      {
        v12 = v7[5];
        v13 = v11 - v12;
        v14 = (v11 - v12) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v16 = v10 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (v17 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = operator new(8 * v17);
        }

        else
        {
          v18 = 0;
        }

        v19 = &v18[8 * v14];
        *v19 = v8 | (v9 << 32);
        v20 = v19 + 8;
        memcpy(v18, v12, v13);
        v7[5] = v18;
        v7[6] = v20;
        v7[7] = &v18[8 * v17];
        if (v12)
        {
          operator delete(v12);
        }

        v2 = v24;
        v4 = a1;
        v7[6] = v20;
        v3 += 8;
        if (v3 == v24)
        {
          break;
        }
      }
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void ___ZZN4cpms16QMICommandDriver25setThermalReportFrequencyENS_20ThermalReportVersionEjN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS4_9allocatorIS7_EEEEEEENS2_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3__0clEv_block_invoke_57(uint64_t a1, unsigned __int8 **a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v2 = a2[1];
  if (*a2 != v2)
  {
    v4 = a1;
    v5 = *(a1 + 40);
    v24 = a2[1];
    while (1)
    {
      v6 = *(v5 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v21 = *v3;
        *buf = 67109120;
        LODWORD(v27) = v21;
        _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Thermal Sensor ID: %d", buf, 8u);
        v6 = *(v5 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
LABEL_22:
          v22 = *(v3 + 1);
          *buf = 134217984;
          v27 = v22;
          _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Temperature (float): %f", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v7 = *(*(v4 + 32) + 8);
      v8 = *v3;
      v9 = *(v3 + 1);
      v11 = v7[6];
      v10 = v7[7];
      if (v11 < v10)
      {
        *v11 = v8 | (v9 << 32);
        v7[6] = v11 + 8;
        v3 += 8;
        if (v3 == v2)
        {
          break;
        }
      }

      else
      {
        v12 = v7[5];
        v13 = v11 - v12;
        v14 = (v11 - v12) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v16 = v10 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (v17 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = operator new(8 * v17);
        }

        else
        {
          v18 = 0;
        }

        v19 = &v18[8 * v14];
        *v19 = v8 | (v9 << 32);
        v20 = v19 + 8;
        memcpy(v18, v12, v13);
        v7[5] = v18;
        v7[6] = v20;
        v7[7] = &v18[8 * v17];
        if (v12)
        {
          operator delete(v12);
        }

        v2 = v24;
        v4 = a1;
        v7[6] = v20;
        v3 += 8;
        if (v3 == v24)
        {
          break;
        }
      }
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS1_9allocatorIS4_EEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS1_9allocatorIS4_EEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void __copy_helper_block_e8_40c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS1_9allocatorIS4_EEEEEEE48c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[5] = v4;
  v5 = a2[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[7];
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c104_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm17ThermalSensorDataENS1_9allocatorIS4_EEEEEEE48c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
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

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ReportFrequency>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ReportFrequency>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E18C60;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22ThermalConfigFrequency8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F3302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm16ThermalSensorInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
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

void sub_296F33148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>(cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0,std::default_delete<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v13 = v3 + 64;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZZN4cpms16QMICommandDriver18getPowerMitigationEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_67_2;
  v10[4] = v3;
  v5 = v2[1];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = v2[2];
  v11 = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20GetCurrentMitigation8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5E808;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v18);
  v7 = v2[2];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = v2[1];
  if (v8)
  {
    _Block_release(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_296F33390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(v23 + 40);
  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  std::unique_ptr<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0,std::default_delete<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F333CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0,std::default_delete<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0,std::default_delete<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void ___ZZN4cpms16QMICommandDriver18getPowerMitigationEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *this)
{
  v3 = a1[4];
  if (*(this + 1))
  {
    v4 = *(v3 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "Failed to get power mitigation data from the baseband", __p, 2u);
      v5 = a1[5];
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = a1[5];
      if (!v5)
      {
        return;
      }
    }

    if (a1[6])
    {
      v6 = _Block_copy(v5);
      v7 = v6;
      v8 = a1[6];
      __p[0] = MEMORY[0x29EDCA5F8];
      __p[1] = 1174405120;
      __p[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke;
      __p[3] = &__block_descriptor_tmp_69_4;
      if (v6)
      {
        v9 = _Block_copy(v6);
      }

      else
      {
        v9 = 0;
      }

      v25 = v9;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      dispatch_async(v8, __p);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v25)
      {
        _Block_release(v25);
      }

      if (v7)
      {
        _Block_release(v7);
      }
    }
  }

  else
  {
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 1174405120;
    v19 = ___ZZN4cpms16QMICommandDriver18getPowerMitigationEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke_63;
    v20 = &__block_descriptor_tmp_64_2;
    v21 = v3;
    v11 = a1[5];
    if (v11)
    {
      v11 = _Block_copy(v11);
    }

    v12 = a1[6];
    aBlock = v11;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    TlvValue = qmi::MessageBase::findTlvValue(this);
    v15 = TlvValue;
    if (TlvValue)
    {
      v16 = v14;
      v29 = TlvValue;
      memset(__p, 170, 24);
      tlv::parseV<bsp::tlv::abm::MitigationData>(&v29, v14, __p);
      v17 = v29;
      if (v29)
      {
        v19(v18, __p);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v17)
      {
        (*MEMORY[0x29EDC91A8])(*this, 16, v15, v16);
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_296F33684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(v18 + 40);
    _Unwind_Resume(a1);
  }

  dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(v18 + 40);
  _Unwind_Resume(a1);
}

void ___ZZN4cpms16QMICommandDriver18getPowerMitigationEN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS3_9allocatorIS6_EEEEEEEENK3__0clEv_block_invoke_63(void *a1, unsigned __int8 **a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1[4];
    while (1)
    {
      v8 = *(v7 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v17 = *v2;
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Power Mitigation Device: %d", buf, 8u);
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }

LABEL_6:
        v9 = *v2;
        v10 = v2[1];
        if (v5 < v6)
        {
          goto LABEL_3;
        }

LABEL_7:
        v11 = v5 - v4;
        v12 = (v5 - v4) >> 1;
        if (v12 <= -2)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v6 - v4 <= (v12 + 1))
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v6 - v4;
        }

        if ((v6 - v4) >= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 < 0)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v15 = operator new(2 * v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = &v15[2 * v12];
        v6 = &v15[2 * v14];
        *v16 = v9 | (v10 << 8);
        v5 = v16 + 2;
        memcpy(v15, v4, v11);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = v15;
        v2 += 2;
        if (v2 == v3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_6;
        }

LABEL_23:
        v18 = v2[1];
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Power Mitigation Level: %d", buf, 8u);
        v9 = *v2;
        v10 = v2[1];
        if (v5 >= v6)
        {
          goto LABEL_7;
        }

LABEL_3:
        *v5 = v9 | (v10 << 8);
        v5 += 2;
        v2 += 2;
        if (v2 == v3)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_26:
  v19 = a1[5];
  if (v19 && a1[6])
  {
    v20 = v5 - v4;
    if (v5 == v4)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = operator new(v5 - v4);
      v22 = &v21[v20];
      memcpy(v21, v4, v20);
    }

    v23 = _Block_copy(v19);
    v24 = v23;
    v25 = a1[6];
    *buf = MEMORY[0x29EDCA5F8];
    v33 = 1174405120;
    v34 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke;
    v35 = &__block_descriptor_tmp_69_4;
    if (v23)
    {
      aBlock = _Block_copy(v23);
      __p = 0;
      v38 = 0;
      v39 = 0;
      v26 = v22 - v21;
      if (v22 == v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      aBlock = 0;
      __p = 0;
      v38 = 0;
      v39 = 0;
      v26 = v22 - v21;
      if (v22 == v21)
      {
LABEL_34:
        dispatch_async(v25, buf);
        v27 = __p;
        if (!__p)
        {
LABEL_36:
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v24)
          {
            _Block_release(v24);
          }

          if (v21)
          {
            operator delete(v21);
          }

          goto LABEL_42;
        }

LABEL_35:
        v38 = v27;
        operator delete(v27);
        goto LABEL_36;
      }
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v29 = operator new(v26);
    v30 = &v29[v26];
    __p = v29;
    v39 = &v29[v26];
    memcpy(v29, v21, v26);
    v38 = v30;
    dispatch_async(v25, buf);
    v27 = __p;
    if (!__p)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_42:
  if (v4)
  {
    operator delete(v4);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_296F33A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, void *__p, uint64_t a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c109_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c109_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEE(uint64_t a1)
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20GetCurrentMitigation8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F33C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEclIJS7_EEEvDpT__block_invoke(void *a1)
{
  v8 = 0;
  v9 = 0;
  __p = 0;
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = v3 - v2;
  if (v3 != v2)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v5 = operator new(v3 - v2);
    v6 = &v5[v4];
    __p = v5;
    v9 = &v5[v4];
    memcpy(v5, v2, v4);
    v8 = v6;
  }

  (*(v1 + 16))(v1, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_296F33D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEE40c67_ZTSNSt3__16vectorIN3abm19PowerMitigationDataENS_9allocatorIS2_EEEE(void *a1, void *a2)
{
  result = a2[4];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[5] = 0;
  a1[4] = result;
  a1[6] = 0;
  a1[7] = 0;
  v6 = a2[5];
  v5 = a2[6];
  v7 = v5 - v6;
  if (v5 != v6)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - v6);
    a1[5] = v8;
    a1[6] = v8;
    v9 = &v8[v7];
    a1[7] = &v8[v7];
    result = memcpy(v8, v6, v7);
    a1[6] = v9;
  }

  return result;
}

void sub_296F33DC8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    _Block_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__16vectorIN3abm19PowerMitigationDataENS1_9allocatorIS4_EEEEEEE40c67_ZTSNSt3__16vectorIN3abm19PowerMitigationDataENS_9allocatorIS2_EEEE(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t QMIWakeCommandParser::getWakeReasonForWMS(unsigned __int16 *a1, int a2)
{
  v57 = 0;
  v55 = &v56;
  v56 = 0;
  v58 = 0xAAAAAAAA00000000;
  v2 = a2 - 4;
  if (a2 < 4)
  {
    goto LABEL_77;
  }

  v3 = *a1;
  LOWORD(v58) = *a1;
  v4 = a1[1];
  WORD1(v58) = a1[1];
  if (a2 >= 8)
  {
    v5 = 0;
    v6 = (a1 + 2);
    v51 = a2 - 7;
    while (1)
    {
      v11 = *v6;
      v12 = *(v6 + 1);
      if (v51 - v5 >= v12)
      {
        v13 = *(v6 + 1);
      }

      else
      {
        v13 = v51 - v5;
      }

      if (v13)
      {
        v14 = operator new(v13);
        v15 = &v14[v13];
        bzero(v14, v13);
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      memcpy(v14, v6 + 3, v13);
      v16 = v56;
      v17 = &v56;
LABEL_15:
      v18 = v17;
      if (v16)
      {
        while (1)
        {
          v17 = v16;
          v19 = *(v16 + 32);
          if (v11 < v19)
          {
            v16 = *v17;
            goto LABEL_15;
          }

          if (v19 >= v11)
          {
            break;
          }

          v16 = v17[1];
          if (!v16)
          {
            v18 = v17 + 1;
            goto LABEL_20;
          }
        }

        v7 = v17;
        v10 = v17[5];
        v9 = v17 + 5;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {
LABEL_20:
        v7 = operator new(0x40uLL);
        v7[32] = v11;
        *(v7 + 6) = 0;
        *(v7 + 7) = 0;
        *(v7 + 5) = 0;
        *v7 = 0;
        *(v7 + 1) = 0;
        *(v7 + 2) = v17;
        *v18 = v7;
        if (*v55)
        {
          v55 = *v55;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v56, v7);
        ++v57;
        v9 = v7 + 40;
        v8 = *(v7 + 5);
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      *(v7 + 6) = v8;
      operator delete(v8);
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
LABEL_6:
      v6 += (v12 + 3);
      v5 += v12 + 3;
      *(v7 + 5) = v14;
      *(v7 + 6) = v15;
      *(v7 + 7) = v15;
      if (v5 + 3 >= v2)
      {
        v4 = WORD1(v58);
        v3 = v58;
        break;
      }
    }
  }

  v20 = 1;
  if (v4 && v3 == 1)
  {
    v53 = 0;
    v54 = 0;
    v52 = &v53;
    v21 = v55;
    if (v55 == &v56)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = &v53;
      v24 = &v53;
LABEL_42:
      if (v22)
      {
        v30 = v24;
      }

      else
      {
        v30 = &v53;
      }

      if (v22)
      {
        v29 = (v24 + 1);
      }

      else
      {
        v24 = &v52;
        v29 = &v53;
      }

      if (v24[1])
      {
        goto LABEL_49;
      }

      while (1)
      {
LABEL_51:
        memset(v59, 170, sizeof(v59));
        v33 = operator new(0x40uLL);
        v59[0] = v33;
        v59[1] = &v52;
        v59[2] = 0;
        v34 = *(v21 + 32);
        v33[5] = 0;
        *(v33 + 32) = v34;
        v33[6] = 0;
        v33[7] = 0;
        v36 = v21[5];
        v35 = v21[6];
        v37 = v35 - v36;
        if (v35 != v36)
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v38 = operator new(v35 - v36);
          v33[5] = v38;
          v33[6] = v38;
          v39 = &v38[v37];
          v33[7] = &v38[v37];
          memcpy(v38, v36, v37);
          v33[6] = v39;
        }

        *v33 = 0;
        v33[1] = 0;
        v33[2] = v30;
        *v29 = v33;
        if (*v23)
        {
          v52 = *v23;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v53, v33);
        ++v54;
        v32 = v21[1];
        if (!v32)
        {
          goto LABEL_59;
        }

        do
        {
LABEL_57:
          v40 = v32;
          v32 = *v32;
        }

        while (v32);
LABEL_61:
        v22 = v53;
        if (v40 == &v56)
        {
          break;
        }

        v23 = v52;
        v21 = v40;
        v24 = &v53;
        if (v52 == &v53)
        {
          goto LABEL_42;
        }

        v25 = v53;
        v26 = &v53;
        if (v53)
        {
          do
          {
            v24 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v24 = v26[2];
            v27 = *v24 == v26;
            v26 = v24;
          }

          while (v27);
        }

        v28 = *(v21 + 32);
        if (*(v24 + 32) < v28)
        {
          goto LABEL_42;
        }

        v29 = &v53;
        v30 = &v53;
        if (v53)
        {
          while (1)
          {
            while (1)
            {
              v30 = v22;
              v31 = *(v22 + 32);
              if (v31 <= v28)
              {
                break;
              }

              v22 = *v22;
              v29 = v30;
              if (!*v30)
              {
                goto LABEL_51;
              }
            }

            if (v31 >= v28)
            {
              break;
            }

            v22 = v22[1];
            if (!v22)
            {
              v29 = v30 + 1;
              goto LABEL_51;
            }
          }

LABEL_49:
          v32 = v21[1];
          if (v32)
          {
            goto LABEL_57;
          }

          do
          {
LABEL_59:
            v40 = v21[2];
            v27 = *v40 == v21;
            v21 = v40;
          }

          while (!v27);
          goto LABEL_61;
        }
      }

      if (v53)
      {
        v41 = &v53;
        v42 = v53;
        do
        {
          v43 = *(v42 + 32);
          v44 = v43 >= 0x11;
          v45 = v43 < 0x11;
          if (v44)
          {
            v41 = v42;
          }

          v42 = v42[v45];
        }

        while (v42);
        if (v41 != &v53 && *(v41 + 32) <= 0x11u)
        {
          v47 = v41[5];
          v46 = v41[6];
          v48 = v46 - v47;
          if (v46 != v47)
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v49 = operator new(v46 - v47);
            memcpy(v49, v47, v48);
            if (v48 >= 6 && v49[5] == 7)
            {
              operator delete(v49);
              std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v53);
              v20 = 0;
              goto LABEL_78;
            }

            operator delete(v49);
            v22 = v53;
          }
        }
      }
    }

    std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v22);
LABEL_77:
    v20 = 1;
  }

LABEL_78:
  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v56);
  return v20;
}

void sub_296F3429C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a12);
  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a15);
  _Unwind_Resume(a1);
}

void sub_296F3430C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a15);
  _Unwind_Resume(a1);
}

uint64_t QMIWakeCommandParser::getWakeReason(CFDataRef *a1, CFTypeRef *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  CFDataGetBytePtr(*a1);
  CFDataGetLength(*a1);
  cf = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  qmi::parse();
  v4 = *(v8 + 6);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_296F34428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296F34448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296F34460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN20QMIWakeCommandParser13getWakeReasonEN3ctu2cf11CFSharedRefIK8__CFDataEENS2_I14__CFDictionaryEE_block_invoke(uint64_t a1, _BYTE *a2, unsigned __int16 *a3, int a4, int a5)
{
  if (*a2 == 1 && a2[4] == 128 && a2[5] == 5)
  {
    if (a5 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a5;
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      CFRetain(v9);
    }

    *(*(*(a1 + 32) + 8) + 24) = QMIWakeCommandParser::getWakeReasonForWMS(a3, v8);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_296F34514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void **std::unique_ptr<std::__tree_node<std::__value_type<unsigned char,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned char,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

std::string *abm::trace::getBasebandTraceDirSuffix@<X0>(abm::trace *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  result = capabilities::radio::vendor(this);
  if ((result - 2) < 3)
  {
    v5 = &abm::trace::kICETraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  if (result == 1)
  {
    if (v2)
    {
      *(&a2->__r_.__value_.__s + 23) = 5;
      strcpy(a2, "-qdss");
      return result;
    }

    v5 = &abm::trace::kEURTraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  return result;
}

void sub_296F346D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::getCoreDumpDirSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&_MergedGlobals_1);
    if (v4)
    {
      v5 = capabilities::radio::maverick(v4);
      v6 = &abm::trace::kEURCoreDumpSnapshotDirectorySuffix;
      if (!v5)
      {
        v6 = &abm::trace::kCoreDumpSnapshotDirectorySuffix;
      }

      std::string::basic_string[abi:ne200100]<0>(&xmmword_2A18A5938, *v6);
      __cxa_guard_release(&_MergedGlobals_1);
    }
  }

  if (byte_2A18A594F < 0)
  {
    v3 = xmmword_2A18A5938;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_2A18A5938;
    a1->__r_.__value_.__r.__words[2] = unk_2A18A5948;
  }
}

uint64_t abm::trace::isSupported(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = strcasecmp(*a1, abm::trace::kDIAG);
    if (v3)
    {
LABEL_3:
      v4 = v1;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = strcasecmp(a1, abm::trace::kDIAG);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (capabilities::radio::maverick(v3))
  {
    return 1;
  }

  LOBYTE(v2) = v1[23];
  v4 = v1;
  if ((v2 & 0x80) == 0)
  {
LABEL_4:
    v5 = strcasecmp(v4, abm::trace::kICETrace);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (capabilities::radio::ice(v5))
    {
      return 1;
    }

    LOBYTE(v2) = v1[23];
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_11:
  v5 = strcasecmp(*v1, abm::trace::kICETrace);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x80) == 0)
  {
LABEL_6:
    v6 = v1;
    if (!strcasecmp(v1, abm::trace::kBasebandTrace))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *v1;
  if (!strcasecmp(*v1, abm::trace::kBasebandTrace))
  {
    return 1;
  }

LABEL_15:
  v7 = strcasecmp(v6, abm::trace::kEURCoreDump);
  if (v7)
  {
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (capabilities::radio::maverick(v7))
    {
      return 1;
    }

    if ((v1[23] & 0x80) == 0)
    {
LABEL_17:
      if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
      {
        return 1;
      }

      if (!strcasecmp(v1, abm::trace::kCompression))
      {
        goto LABEL_40;
      }

      if (strcasecmp(v1, abm::trace::kBasebandIPC))
      {
        if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
        {
          goto LABEL_40;
        }

LABEL_34:
        if (strcasecmp(v1, abm::trace::kProfile))
        {
          if (strcasecmp(v1, abm::trace::kTraceTailspin) && strcasecmp(v1, "Settings") && strcasecmp(v1, "LogFilter"))
          {
            return 0;
          }

          goto LABEL_40;
        }

        return 1;
      }

      goto LABEL_43;
    }
  }

  v1 = *v1;
  if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
  {
    return 1;
  }

  if (!strcasecmp(v1, abm::trace::kCompression))
  {
    goto LABEL_40;
  }

  if (strcasecmp(v1, abm::trace::kBasebandIPC))
  {
    if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
    {
LABEL_40:

      return MEMORY[0x2A1C6EE08]();
    }

    goto LABEL_34;
  }

LABEL_43:

  return MEMORY[0x2A1C6EDC8]();
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C2693B0](*a1) != MEMORY[0x29EDCAA00])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v3 < 5)
  {
    return off_29EE5E838[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C2693B0](*a1) != MEMORY[0x29EDCAA00])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_29EE5E860[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18D60;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x29C2693B0](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18D60;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18DA8;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C2693B0](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18DA8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18DF0;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C2693B0](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18DF0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18E38;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C2693B0](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18E38;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C2693B0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18E80;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C2693B0](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E18E80;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

double QMICommandDriverFactory::create_default_global@<D0>(void *a1@<X8>)
{
  v3 = operator new(0xA8uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A1E18FB8;
  CommandDriverFactory::CommandDriverFactory((v3 + 3));
  v3[3] = &unk_2A1E18EC8;
  result = 0.0;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  v3[20] = 0;
  *a1 = v5;
  a1[1] = v3;
  return result;
}

void sub_296F361A0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::QMICommandDriverFactory(QMICommandDriverFactory *this)
{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E18EC8;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E18EC8;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

void QMICommandDriverFactory::createRadioCommandDriver(QMICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 13);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = dispatch_workloop_create("radio.wl");
  v7 = *(this + 13);
  *(this + 13) = v4;
  if (v7)
  {
    dispatch_release(v7);
    v4 = *(this + 13);
  }

  if (!v4)
  {
    *(this + 13) = 0;
    goto LABEL_17;
  }

  dispatch_retain(v4);
  v8 = *(this + 13);
  *(this + 13) = v4;
  if (v8)
  {
    dispatch_release(v8);
    v4 = *(this + 13);
    if (!v4)
    {
LABEL_17:
      if ((atomic_load_explicit(&qword_2A18A5958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5958))
      {
        qword_2A18A5960 = 0;
        qword_2A18A5968 = 0;
        __cxa_guard_release(&qword_2A18A5958);
      }

      if (_MergedGlobals_2 == -1)
      {
        v9 = qword_2A18A5968;
        if (!os_log_type_enabled(qword_2A18A5968, OS_LOG_TYPE_DEFAULT))
        {
LABEL_21:
          *a2 = 0;
          a2[1] = 0;
          return;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_2, &__block_literal_global_1);
        v9 = qword_2A18A5968;
        if (!os_log_type_enabled(qword_2A18A5968, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create radio workloop!", buf, 2u);
      goto LABEL_21;
    }
  }

LABEL_2:
  object = v4;
  dispatch_retain(v4);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v10[0] = v5;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::QMICommandDriverM20::create(&object, v10, buf);
  *a2 = *buf;
  memset(buf, 0, sizeof(buf));
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296F36440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  dispatch_release(v2);
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::getRadioWorkloop(QMICommandDriverFactory *this@<X0>, NSObject **a2@<X8>)
{
  v4 = *(this + 13);
  if (v4)
  {
    *a2 = v4;

LABEL_4:
    dispatch_retain(v4);
    return;
  }

  v4 = dispatch_workloop_create("radio.wl");
  v5 = *(this + 13);
  *(this + 13) = v4;
  if (v5)
  {
    dispatch_release(v5);
    v4 = *(this + 13);
  }

  *a2 = v4;
  if (v4)
  {

    goto LABEL_4;
  }
}

void QMICommandDriverFactory::weakRadioCommandDriver(QMICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 11);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 11))
    {
      QMICommandDriverFactory::createRadioCommandDriver(this, &v9);
      v6 = v9;
      v9 = 0uLL;
      v7 = *(this + 12);
      *(this + 88) = v6;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *(&v9 + 1);
      if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 11);
    a2 = v4;
  }

  v5 = *(this + 12);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void QMICommandDriverFactory::createRFSCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::QMIRFSCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void QMICommandDriverFactory::weakRFSCommandDriver(QMICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 14))
    {
      v6 = *(this + 2);
      v10[0] = *(this + 1);
      v10[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      radio::QMIRFSCommandDriver::create(v10, &v11);
      v7 = v11;
      v11 = 0uLL;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = v7;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = v9;
      }

      v8 = *(this + 15);
      *(this + 7) = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 14);
    a2 = v4;
  }

  v5 = *(this + 15);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296F36820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::createCoexCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coex::QMICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void QMICommandDriverFactory::createAntennaCommandDriver(uint64_t a1@<X0>, NSObject **a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::QMICommandDriver::create(&object, v8, &v10);
  *a3 = v10;
  v10 = 0uLL;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296F369C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::createAwdCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::QMIAwdCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void QMICommandDriverFactory::createLogCommandDriver(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = *a2;
  if (*a2)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a2 + 8);
  v26 = v12;
  v27 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a3;
  if (*a3)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a3 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = *a4;
  cf = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a5, *(a5 + 8));
  }

  else
  {
    v22 = *a5;
  }

  v17 = *(a1 + 16);
  v20 = *(a1 + 8);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  logs::QMICommandDriver::create(&v26, &aBlock, &cf, &v22, &v20, &v28);
  *a6 = v28;
  v28 = 0uLL;
  v18 = v21;
  if (!v21 || atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v22.__r_.__value_.__l.__data_);
    v19 = cf;
    if (!cf)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v19 = cf;
  if (cf)
  {
LABEL_23:
    CFRelease(v19);
  }

LABEL_24:
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v27)
  {
    dispatch_release(v27);
  }

  if (v26)
  {
    _Block_release(v26);
  }
}

void sub_296F36C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<std::vector<unsigned char>>,BOOL)>::~callback(&a18);
  dispatch::callback<void({block_pointer})(logs::CollectionState)>::~callback(&a22);
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::createDataCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v5 = *(this + 1);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  data::QMIDataCommandDriver::create(&v5, &v7);
  *a2 = v7;
  v7 = 0uLL;
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void QMICommandDriverFactory::weakDataCommandDriver(QMICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 16);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 16))
    {
      v6 = *(this + 2);
      v11 = *(this + 1);
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      data::QMIDataCommandDriver::create(&v11, &v13);
      v7 = v13;
      v13 = 0uLL;
      v8 = v12;
      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v7;
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v7 = v10;
      }

      v9 = *(this + 17);
      *(this + 8) = v7;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 16);
    a2 = v4;
  }

  v5 = *(this + 17);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296F36EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::createCPMSCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cpms::QMICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void QMICommandDriverFactory::createCoreDumpCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v5 = *(this + 1);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coredump::QMICommandDriverM20::create(&v5, &v7);
  *a2 = v7;
  v7 = 0uLL;
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void QMICommandDriverFactory::createDebugCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v5 = *(this + 1);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::QMIDebugCommandDriverM20::create(&v5, &v7);
  *a2 = v7;
  v7 = 0uLL;
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void QMICommandDriverFactory::createDiagCommandDriver(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  diag::QMICommandDriver::create(&aBlock, v10, &v13);
  *a3 = v13;
  v13 = 0uLL;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F37208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(&a11);
  _Unwind_Resume(a1);
}

void QMICommandDriverFactory::createDesenseCommandDriver(QMICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  desense::QMICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ___ZL16sGetOsLogContextv_block_invoke_0()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "qmi.driver.factory");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(uint64_t a1)
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

void std::__shared_ptr_emplace<QMICommandDriverFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E18FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<QMICommandDriverFactory>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E18EC8;
  v2 = *(a1 + 160);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 144);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 120);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

const char *wda::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "???";
  }

  else
  {
    return off_29EE5E898[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EE5E8E8[a1];
  }
}

const char *wda::asString(int a1)
{
  v1 = "???";
  if (a1 == 7)
  {
    v1 = "LowLatency";
  }

  if (a1 == 4)
  {
    return "Default";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IP";
  }

  if (a1 == 1)
  {
    return "Ethernet";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 0x7FFFFFFF)
      {
        return "AllMask";
      }

      return "???";
    }

    return "FlowControl";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "DownLinkMarker";
      }

      return "???";
    }

    return "Unsupported";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "Version1";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Unsupported";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "Enable";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Disable";
  }
}

BOOL radio::QMICommandDriverBase::isEmptyBuffer(uint64_t a1, CFDataRef *a2)
{
  if (!*a2)
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  v5 = Length - 1;
  if (Length < 1)
  {
    return 1;
  }

  do
  {
    v7 = *BytePtr++;
    v6 = v7;
    result = v7 == 0;
    v10 = v5-- != 0;
  }

  while (!v6 && v10);
  return result;
}

uint64_t radio::QMICommandDriverBase::QMICommandDriverBase(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  object = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::CommandDriver::CommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E19008;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_296F37910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::~QMICommandDriverBase(radio::QMICommandDriverBase *this)
{
  *this = &unk_2A1E19008;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v24, 2u);
  }

  qmi::Client::~Client((this + 264));
  qmi::Client::~Client((this + 232));
  *this = &unk_2A1E19C00;
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v4 = *(this + 25);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 23);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 21);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 18);
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(this + 17))
  {
    v9 = *(this + 16);
    v10 = *(*(this + 15) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(this + 17) = 0;
    if (v9 != (this + 120))
    {
      do
      {
        v21 = *(v9 + 1);
        v20 = *(v9 + 2);
        if (v20)
        {
          _Block_release(v20);
        }

        operator delete(v9);
        v9 = v21;
      }

      while (v21 != (this + 120));
    }
  }

  if (*(this + 14))
  {
    v12 = *(this + 13);
    v13 = *(*(this + 12) + 8);
    v14 = *v12;
    *(v14 + 8) = v13;
    *v13 = v14;
    *(this + 14) = 0;
    if (v12 != (this + 96))
    {
      do
      {
        v23 = *(v12 + 1);
        v22 = *(v12 + 2);
        if (v22)
        {
          _Block_release(v22);
        }

        operator delete(v12);
        v12 = v23;
      }

      while (v23 != (this + 96));
    }
  }

  *(this + 9) = &unk_2A1E19D80;
  v15 = *(this + 11);
  if (v15)
  {
    if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
      if (atomic_fetch_add(v15 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v15 + 24))(v15);
      }
    }
  }

  *(this + 6) = &unk_2A1E19DF0;
  v16 = *(this + 8);
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

  MEMORY[0x29C268320](v2);
  v17 = *(this + 4);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 3);
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = *(this + 2);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

void radio::QMICommandDriverBase::startDMSClient_sync(radio::QMICommandDriverBase *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  memset(v61, 170, sizeof(v61));
  Name = radio::CommandDriver::getName(this);
  BYTE7(v63) = 4;
  strcpy(&v62, ".DMS");
  v7 = strlen(Name);
  v8 = std::string::insert(&v62, 0, Name, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v61[16] = *(&v8->__r_.__value_.__l + 2);
  *v61 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v63) & 0x80000000) == 0)
  {
    if (*(this + 24))
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(this + 3);
    v53 = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    v59 = 5;
    strcpy(v58, "radio");
    v51 = 0;
    v52 = 0;
    v14 = std::__shared_weak_count::lock(v5);
    if (v14)
    {
      v15 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v51 = v3;
      v52 = v14;
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    qmi::Client::createWithQueue();
    v26 = v63;
    v63 = 0uLL;
    v27 = *(this + 32);
    *(this + 248) = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    qmi::Client::~Client(&v62);
    if (v52)
    {
      std::__shared_weak_count::__release_weak(v52);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
      v19 = v53;
      if (!v53)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = v53;
      if (!v53)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  operator delete(v62);
  if (!*(this + 24))
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *(this + 3);
  v60 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v59 = 5;
  strcpy(v58, "radio");
  v56 = 0;
  v57 = 0;
  v11 = std::__shared_weak_count::lock(v5);
  if (v11)
  {
    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v56 = v3;
    v57 = v11;
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v16 = *(this + 25);
  v54 = *(this + 24);
  v55 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v17 = v63;
  v63 = 0uLL;
  v18 = *(this + 32);
  *(this + 248) = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  qmi::Client::~Client(&v62);
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v19 = v60;
  if (v60)
  {
LABEL_32:
    dispatch_release(v19);
  }

LABEL_33:
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 1174405120;
  v46 = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke;
  v47 = &__block_descriptor_tmp_12;
  v48 = this;
  v49 = v3;
  v50 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_8;
  v40 = &__block_descriptor_tmp_11_3;
  v41 = this;
  v42 = v3;
  v43 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v30 = MEMORY[0x29EDCA5F8];
  v31 = 1174405120;
  v32 = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_12;
  v33 = &__block_descriptor_tmp_16_2;
  v34 = this;
  v35 = v3;
  v36 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_17;
  v28[3] = &__block_descriptor_tmp_26_2;
  v28[4] = this;
  v28[5] = v3;
  v29 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v62 = MEMORY[0x29EDCA5F8];
  *(&v62 + 1) = 0x40000000;
  *&v63 = ___ZNK3qmi6Client13setIndHandlerIRKN3dms3abm11EventReport10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v63 + 1) = &unk_29EE5EA90;
  v64 = v28;
  qmi::Client::setIndHandler();
  qmi::Client::setIndShouldWake((this + 232));
  v20 = *(this + 2);
  if (!v20 || (v21 = *(this + 1), (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v23);
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      goto LABEL_37;
    }

LABEL_40:
    v62 = 0uLL;
    goto LABEL_41;
  }

  v24 = std::__shared_weak_count::lock(v22);
  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_37:
  v25 = v24;
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v62 = v21;
  *(&v62 + 1) = v24;
  std::__shared_weak_count::__release_weak(v23);
  if (atomic_fetch_add(v25 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_42;
  }

  (*(*v25 + 16))(v25);
  v23 = v25;
LABEL_41:
  std::__shared_weak_count::__release_weak(v23);
LABEL_42:
  qmi::Client::setClientHandle();
  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v62 + 1));
  }

  qmi::Client::start((this + 232));
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  if ((v61[23] & 0x80000000) != 0)
  {
    operator delete(*v61);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_296F38478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  v40 = *(v38 - 208);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
    if (*(v38 - 137) < 0)
    {
LABEL_3:
      operator delete(*(v38 - 160));
      v41 = *(v38 - 200);
      if (!v41)
      {
LABEL_8:
        if (*(v38 - 105) < 0)
        {
          operator delete(*(v38 - 128));
        }

        std::__shared_weak_count::__release_weak(v37);
        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_release(v41);
      goto LABEL_8;
    }
  }

  else if (*(v38 - 137) < 0)
  {
    goto LABEL_3;
  }

  v41 = *(v38 - 200);
  if (!v41)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_296F38564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (a23)
    {
      std::__shared_weak_count::__release_weak(a23);
      if (a30)
      {
        std::__shared_weak_count::__release_weak(a30);
        if (!a37)
        {
          JUMPOUT(0x296F38534);
        }

        JUMPOUT(0x296F38530);
      }

      JUMPOUT(0x296F38528);
    }

    JUMPOUT(0x296F38520);
  }

  JUMPOUT(0x296F38518);
}

void sub_296F38574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    JUMPOUT(0x296F385F4);
  }

  JUMPOUT(0x296F38520);
}

void sub_296F38584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a30)
  {
    JUMPOUT(0x296F38600);
  }

  JUMPOUT(0x296F38528);
}

void sub_296F38594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (!a37)
  {
    JUMPOUT(0x296F38534);
  }

  JUMPOUT(0x296F38530);
}

void sub_296F385A4()
{
  if (*(v0 - 81) < 0)
  {
    v1 = *(v0 - 104);
    JUMPOUT(0x296F38540);
  }

  JUMPOUT(0x296F38544);
}

void sub_296F385CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (a23)
    {
      std::__shared_weak_count::__release_weak(a23);
      if (a30)
      {
        std::__shared_weak_count::__release_weak(a30);
        if (!a37)
        {
          JUMPOUT(0x296F38534);
        }

        JUMPOUT(0x296F38530);
      }

      JUMPOUT(0x296F38528);
    }

    JUMPOUT(0x296F38520);
  }

  JUMPOUT(0x296F38518);
}

void sub_296F385DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    JUMPOUT(0x296F385E8);
  }

  JUMPOUT(0x296F38518);
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I DMS:Stopped", v7, 2u);
        }

        radio::CommandDriver::handleClientStateChanged_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F38704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I DMS:Started", v7, 2u);
        }

        radio::QMICommandDriverBase::setupOperatingModeReporting_sync(v3);
        radio::CommandDriver::handleClientStateChanged_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F38814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::setupOperatingModeReporting_sync(radio::QMICommandDriverBase *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v2;
  v22 = v2;
  qmi::MutableMessageBase::MutableMessageBase(&v21);
  v3 = *(&v21 + 1);
  v4 = v22;
  v5 = *(&v21 + 1);
  if (*(&v21 + 1) != v22)
  {
    v5 = *(&v21 + 1);
    while (*(*v5 + 8) != 20)
    {
      if (++v5 == v22)
      {
        goto LABEL_9;
      }
    }
  }

  if (v5 == v22)
  {
LABEL_9:
    v9 = operator new(0x10uLL);
    v10 = v9;
    v9[4] = 20;
    *v9 = &unk_2A1E19F88;
    if (v4 >= *(&v22 + 1))
    {
      v12 = v4 - v3;
      v13 = (v4 - v3) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v15 = *(&v22 + 1) - v3;
      if ((*(&v22 + 1) - v3) >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v17 = operator new(8 * v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = &v17[8 * v13];
      *v18 = v10;
      v11 = v18 + 8;
      memcpy(v17, v3, v12);
      *(&v21 + 1) = v17;
      *&v22 = v11;
      *(&v22 + 1) = &v17[8 * v16];
      if (v3)
      {
        operator delete(v3);
      }
    }

    else
    {
      *v4 = v9;
      v11 = v4 + 8;
    }

    v8 = v10 + 9;
    *&v22 = v11;
  }

  else
  {
    v6 = ***v5;
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 9;
  }

  *v8 = 1;
  v19 = *(this + 5);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v19, OS_LOG_TYPE_DEFAULT, "#I Setup Operating mode reporting", buf, 2u);
  }

  QMIServiceMsg::create();
  qmi::Client::send();
  qmi::MutableMessageBase::~MutableMessageBase(&v21);
}

void sub_296F38A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_12(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v12 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v10 = 0;
          _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Server error", v10, 2u);
        }

        radio::CommandDriver::handleClientStateChanged_sync(v5);
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
        }

        v9 = MEMORY[0x29C269360](a2);
        free(v9);
        xpc_release(a2);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F38BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_17(void *a1, qmi::MessageBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v23 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v18[0] = MEMORY[0x29EDCA5F8];
        v18[1] = 0x40000000;
        v19 = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_2;
        v20 = &__block_descriptor_tmp_19_0;
        v21 = v5;
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 2);
          v24 = *v10;
          v19(v18, &v24);
        }

        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 0x40000000;
        v15 = ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_20;
        v16 = &__block_descriptor_tmp_22_0;
        v17 = v5;
        v11 = qmi::MessageBase::findTlvValue(a2);
        v13 = v11;
        if (v11)
        {
          tlv::throwIfNotEnoughBytes(v11, v11 + v12, 1);
          LOBYTE(v24) = *v13;
          v15(v14, &v24);
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

void sub_296F38D94(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 20, v2, v3);
  JUMPOUT(0x296F38D38);
}

void sub_296F38DC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296F38CB8);
}

void sub_296F38DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_2(uint64_t a1, unsigned __int16 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *a2;
  radio::OpMode::setConfig(*(v2 + 160));
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getConfigString(__p, *(v2 + 160));
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Protocol NV config indication: %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio20QMICommandDriverBase19startDMSClient_syncEv_block_invoke_20(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *a2;
  radio::OpMode::setMode(*(v2 + 160));
  radio::OpMode::getMode(*(v2 + 160));
  radio::CommandDriver::handleOperatingModeChanged_sync();
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getModeString(__p, *(v2 + 160));
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Operating mode indication: %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void radio::QMICommandDriverBase::startBSPClient_sync(radio::QMICommandDriverBase *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  memset(v61, 170, sizeof(v61));
  Name = radio::CommandDriver::getName(this);
  BYTE7(v63) = 4;
  strcpy(&v62, ".BSP");
  v7 = strlen(Name);
  v8 = std::string::insert(&v62, 0, Name, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v61[16] = *(&v8->__r_.__value_.__l + 2);
  *v61 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v63) & 0x80000000) == 0)
  {
    if (*(this + 24))
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(this + 3);
    v53 = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    v59 = 5;
    strcpy(v58, "radio");
    v51 = 0;
    v52 = 0;
    v14 = std::__shared_weak_count::lock(v5);
    if (v14)
    {
      v15 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v51 = v3;
      v52 = v14;
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    qmi::Client::createWithQueue();
    v26 = v63;
    v63 = 0uLL;
    v27 = *(this + 36);
    *(this + 280) = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    qmi::Client::~Client(&v62);
    if (v52)
    {
      std::__shared_weak_count::__release_weak(v52);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
      v19 = v53;
      if (!v53)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = v53;
      if (!v53)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  operator delete(v62);
  if (!*(this + 24))
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *(this + 3);
  v60 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v59 = 5;
  strcpy(v58, "radio");
  v56 = 0;
  v57 = 0;
  v11 = std::__shared_weak_count::lock(v5);
  if (v11)
  {
    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v56 = v3;
    v57 = v11;
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v16 = *(this + 25);
  v54 = *(this + 24);
  v55 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v17 = v63;
  v63 = 0uLL;
  v18 = *(this + 36);
  *(this + 280) = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  qmi::Client::~Client(&v62);
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v19 = v60;
  if (v60)
  {
LABEL_32:
    dispatch_release(v19);
  }

LABEL_33:
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 1174405120;
  v46 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke;
  v47 = &__block_descriptor_tmp_30;
  v48 = this;
  v49 = v3;
  v50 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_31;
  v40 = &__block_descriptor_tmp_34_0;
  v41 = this;
  v42 = v3;
  v43 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v30 = MEMORY[0x29EDCA5F8];
  v31 = 1174405120;
  v32 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_35;
  v33 = &__block_descriptor_tmp_38_4;
  v34 = this;
  v35 = v3;
  v36 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_39;
  v28[3] = &__block_descriptor_tmp_53_2;
  v28[4] = this;
  v28[5] = v3;
  v29 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v62 = MEMORY[0x29EDCA5F8];
  *(&v62 + 1) = 0x40000000;
  *&v63 = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm11DumpLogsInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v63 + 1) = &unk_29EE5EAB8;
  v64 = v28;
  qmi::Client::setIndHandler();
  v20 = *(this + 2);
  if (!v20 || (v21 = *(this + 1), (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v23);
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      goto LABEL_37;
    }

LABEL_40:
    v62 = 0uLL;
    goto LABEL_41;
  }

  v24 = std::__shared_weak_count::lock(v22);
  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_37:
  v25 = v24;
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v62 = v21;
  *(&v62 + 1) = v24;
  std::__shared_weak_count::__release_weak(v23);
  if (atomic_fetch_add(v25 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_42;
  }

  (*(*v25 + 16))(v25);
  v23 = v25;
LABEL_41:
  std::__shared_weak_count::__release_weak(v23);
LABEL_42:
  qmi::Client::setClientHandle();
  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v62 + 1));
  }

  qmi::Client::start((this + 264));
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  if ((v61[23] & 0x80000000) != 0)
  {
    operator delete(*v61);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_296F396F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  v40 = *(v38 - 208);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
    if (*(v38 - 137) < 0)
    {
LABEL_3:
      operator delete(*(v38 - 160));
      v41 = *(v38 - 200);
      if (!v41)
      {
LABEL_8:
        if (*(v38 - 105) < 0)
        {
          operator delete(*(v38 - 128));
        }

        std::__shared_weak_count::__release_weak(v37);
        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_release(v41);
      goto LABEL_8;
    }
  }

  else if (*(v38 - 137) < 0)
  {
    goto LABEL_3;
  }

  v41 = *(v38 - 200);
  if (!v41)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_296F397EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    JUMPOUT(0x296F3985CLL);
  }

  JUMPOUT(0x296F397A4);
}

void sub_296F397FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a30)
  {
    JUMPOUT(0x296F39868);
  }

  JUMPOUT(0x296F397ACLL);
}

void sub_296F3980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (!a37)
  {
    JUMPOUT(0x296F397B8);
  }

  JUMPOUT(0x296F397B4);
}

void sub_296F3981C()
{
  if (*(v0 - 81) < 0)
  {
    v1 = *(v0 - 104);
    JUMPOUT(0x296F397C4);
  }

  JUMPOUT(0x296F397C8);
}

void sub_296F39844(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (a23)
    {
      std::__shared_weak_count::__release_weak(a23);
      if (a30)
      {
        std::__shared_weak_count::__release_weak(a30);
        if (!a37)
        {
          JUMPOUT(0x296F397B8);
        }

        JUMPOUT(0x296F397B4);
      }

      JUMPOUT(0x296F397ACLL);
    }

    JUMPOUT(0x296F397A4);
  }

  JUMPOUT(0x296F3979CLL);
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I BSP:Stopped", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_31(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I BSP:Started", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_35(void *a1, xpc_object_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
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
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
        }

        v8 = MEMORY[0x29C269360](a2);
        v9 = *(v5 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v12 = v8;
          _os_log_debug_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEBUG, "#D Server error %s", buf, 0xCu);
        }

        free(v8);
        xpc_release(a2);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F39B80(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_39(void *a1, qmi::MessageBase *a2)
{
  v102 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_92;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v65 = v6;
  if (!v6)
  {
    goto LABEL_92;
  }

  if (!a1[5])
  {
    goto LABEL_90;
  }

  v63 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (Mutable)
  {
    v63 = Mutable;
  }

  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 1174405120;
  v60 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_2;
  v61 = &__block_descriptor_tmp_40_3;
  v62 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  if (TlvValue)
  {
    __p = 0uLL;
    *&v81 = 0;
    std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, TlvValue, (TlvValue + v9), v9);
    v60(v59, &__p);
    if (SBYTE7(v81) < 0)
    {
      operator delete(__p);
    }
  }

  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 1174405120;
  v56 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_41;
  v57 = &__block_descriptor_tmp_45_2;
  v58 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v11 = qmi::MessageBase::findTlvValue(a2);
  v13 = v11;
  if (v11)
  {
    tlv::throwIfNotEnoughBytes(v11, v11 + v12, 1);
    LOBYTE(__p) = *v13 != 0;
    v56(v55, &__p);
  }

  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 1174405120;
  v52 = ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_46;
  v53 = &__block_descriptor_tmp_50_0;
  v54 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v14 = qmi::MessageBase::findTlvValue(a2);
  v16 = v14;
  if (v14)
  {
    tlv::throwIfNotEnoughBytes(v14, v14 + v15, 1);
    LOBYTE(__p) = *v16;
    v52(v51, &__p);
  }

  v17 = *(v5 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138412290;
    *(&__p + 4) = v8;
    _os_log_impl(&dword_296ECF000, v17, OS_LOG_TYPE_DEFAULT, "#I Baseband requested to dump logs\n%@", &__p, 0xCu);
  }

  if (v8 && (v18 = CFGetTypeID(v8), v18 == CFDictionaryGetTypeID()))
  {
    CFRetain(v8);
    v19 = *(v5 + 56);
    v66 = v8;
    CFRetain(v8);
  }

  else
  {
    v8 = 0;
    v19 = *(v5 + 56);
    v66 = 0;
  }

  v73 = 0;
  v74 = 0;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88 = v20;
  v89 = v20;
  v86 = v20;
  v87 = v20;
  v84 = v20;
  v85 = v20;
  v82 = v20;
  v83 = v20;
  __p = v20;
  v81 = v20;
  v21 = *(v19 + 24);
  *&v90 = 10;
  *(&v90 + 1) = &__p;
  *&v91 = 0;
  *(&v91 + 1) = v21;
  pthread_mutex_lock(v21);
  v22 = *(v19 + 8);
  if (v22)
  {
    explicit = atomic_load_explicit(v22 + 2, memory_order_acquire);
    v24 = *v19;
    if (explicit == 1)
    {
      v25 = *v24;
      v26 = *(v19 + 16);
      if (v26 == *v24)
      {
        v26 = *(v25 + 8);
      }

      *&v75 = v26;
      if (v25 != v26)
      {
        v27 = v26[2];
        if (*(v27 + 24))
        {
          v26 = v26[1];
        }

        else
        {
          v26 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(v25, (v27 + 64), &v75);
          v24 = *v19;
        }
      }

      *(v19 + 16) = v26;
    }

    v22 = *(v19 + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 2, 1u, memory_order_relaxed);
    }
  }

  else
  {
    v24 = *v19;
  }

  v28 = v74;
  v73 = v24;
  v74 = v22;
  if (v28)
  {
    if (atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v28 + 16))(v28);
      if (atomic_fetch_add(v28 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v28 + 24))(v28);
      }
    }
  }

  pthread_mutex_unlock(*(&v91 + 1));
  v29 = *(&v90 + 1);
  if (*(&v90 + 1))
  {
    if (v91 > 0)
    {
      v49 = *(&v90 + 1) + 16 * v91;
      do
      {
        v50 = *(v49 - 8);
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

      while (v49 > v29);
    }

    if (v90 >= 0xB)
    {
      operator delete(*(&v90 + 1));
    }
  }

  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = v30;
  v94 = v30;
  v91 = v30;
  v92 = v30;
  v89 = v30;
  v90 = v30;
  v87 = v30;
  v88 = v30;
  v85 = v30;
  v86 = v30;
  v83 = v30;
  v84 = v30;
  v81 = v30;
  v82 = v30;
  __p = v30;
  LOBYTE(__p) = 0;
  v95 = 0xAAAAAAAAAAAAAAAALL;
  v96 = 10;
  v97 = &__p + 8;
  v98 = 0;
  v101 = 0;
  v99 = &v66;
  v100 = 0;
  v31 = v73;
  v32 = *v73;
  p_p = &__p;
  v71 = v19;
  v72 = v32;
  *&v68 = *(v32 + 8);
  *(&v68 + 1) = v32;
  *&v69 = &__p;
  *(&v69 + 1) = v32;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v68);
  v67[0] = *v31;
  v67[1] = v67[0];
  v67[2] = &__p;
  v67[3] = v67[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(v67);
  v75 = v68;
  v76 = v69;
  v33 = v67[0];
  v34 = v68;
  if (v68 == v67[0])
  {
    if (HIDWORD(v100) <= v100)
    {
      goto LABEL_73;
    }

LABEL_72:
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(v71, v72);
    goto LABEL_73;
  }

  v35 = v76;
  if ((*v76 & 1) == 0)
  {
    v36 = **(v76 + 272);
    v37 = *(*(v75 + 16) + 32);
    v77 = v36;
    if (v36)
    {
      CFRetain(v36);
    }

    v38 = *(v37 + 24);
    if (!v38)
    {
      std::runtime_error::runtime_error(&v79, "call to empty boost::function");
      v79.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v79);
    }

    v39 = *((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v77 = 0;
    cf = v36;
    v39(v37 + 32, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((*v35 & 1) == 0)
    {
      *v35 = 1;
    }
  }

  *&v75 = *(v34 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v75);
  v40 = v76;
  if (*v76 == 1)
  {
    *v76 = 0;
  }

  for (i = v75; v75 != v33; i = v75)
  {
    v42 = **(v40 + 272);
    v43 = *(*(i + 16) + 32);
    v77 = v42;
    if (v42)
    {
      CFRetain(v42);
    }

    v44 = *(v43 + 24);
    if (!v44)
    {
      std::runtime_error::runtime_error(&v79, "call to empty boost::function");
      v79.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v79);
    }

    v45 = *((v44 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v77 = 0;
    cf = v42;
    v45(v43 + 32, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((*v40 & 1) == 0)
    {
      *v40 = 1;
    }

    *&v75 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v75);
    v40 = v76;
    if (*v76 == 1)
    {
      *v76 = 0;
    }
  }

  if (*(p_p + 71) > *(p_p + 70))
  {
    goto LABEL_72;
  }

LABEL_73:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&__p);
  v46 = v74;
  if (v74)
  {
    if (atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v46 + 16))(v46);
      if (atomic_fetch_add(v46 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v46 + 24))(v46);
      }
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  v6 = v65;
  if (v65)
  {
LABEL_90:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v47 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v47);
    }
  }

LABEL_92:
  v48 = *MEMORY[0x29EDCA608];
}

void sub_296F3A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if ((a56 & 0x80000000) == 0)
  {
    JUMPOUT(0x296F3A79CLL);
  }

  JUMPOUT(0x296F39D0CLL);
}

void sub_296F3A5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, const void *a47, __int16 a48, char a49, char a50, std::runtime_error a51)
{
  std::runtime_error::~runtime_error(&a51);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a47);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v60);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&v62);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v61);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v59);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v56);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v53 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v52 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v51 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&v57);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v58);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a43 + 16));
  __cxa_rethrow();
}

void sub_296F3A640(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v11);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&v13);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v12);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v10);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v7);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v4 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v3 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 + 32));
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&v8);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F3A610);
}

void sub_296F3A690(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v2, 20, v3, v4);
    JUMPOUT(0x296F39E84);
  }

  JUMPOUT(0x296F3A7B4);
}

void sub_296F3A6CC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v2, 17, v3, v4);
    JUMPOUT(0x296F39DF8);
  }

  JUMPOUT(0x296F3A7B4);
}

void sub_296F3A750(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F3A7B4);
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_2(uint64_t a1, const void **a2)
{
  memset(&__dst, 170, sizeof(__dst));
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

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

    p_dst = operator new(v9);
    __dst.__r_.__value_.__l.__size_ = v4;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
LABEL_16:
    memmove(p_dst, v3, v4);
    p_dst->__r_.__value_.__s.__data_[v4] = 0;
    v7 = *(a1 + 32);
    v8 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
    goto LABEL_16;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  v7 = *(a1 + 32);
  v8 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    v12 = __dst;
    goto LABEL_18;
  }

LABEL_17:
  std::string::__init_copy_ctor_external(&v12, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_18:
  v10 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,std::string>(v7, *MEMORY[0x29EDC8E18]);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (v8 < 0)
  {
    goto LABEL_22;
  }
}

void sub_296F3A928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

CFTypeRef __copy_helper_block_e8_32c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN5radio20QMICommandDriverBase19startBSPClient_syncEv_block_invoke_46(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *a2;
  v4 = radio::asString();
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x29EDC8EF0];
  if (*MEMORY[0x29EDC8EF0])
  {
    CFRetain(v7);
  }

  value = 0;
  ctu::cf::convert_copy(&value, v4, 0x8000100, v5, v3);
  v8 = value;
  if (v7)
  {
    v9 = value == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!value)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CFDictionaryAddValue(v6, v7, value);
  }

  CFRelease(v8);
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296F3AA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F3AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  (*(*a1 + 104))(a1, a2, 4, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void radio::QMICommandDriverBase::powerOff(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  (*(*a1 + 104))(a1, a2, 5, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void radio::QMICommandDriverBase::setOperatingMode_sync(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    radio::OpMode::getModeString(v55, *(a1 + 160));
    v10 = v56;
    v11 = v55[0];
    v12 = *(a1 + 160);
    radio::OpMode::modeToString();
    v13 = v55;
    if (v10 < 0)
    {
      v13 = v11;
    }

    if (v54 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136446722;
    *&buf[4] = v13;
    *&buf[12] = 2082;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    v58 = a2 / 0xF4240;
    _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Preparing to change operating mode from %{public}s to %{public}s, with timeout %llu ms", buf, 0x20u);
    if (v54 < 0)
    {
      operator delete(__p[0]);
      if ((v56 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v55[0]);
  }

LABEL_9:
  if (capabilities::abs::supportsProtocolNVConfig(v9))
  {
    v15 = *(a1 + 16);
    if (!v15 || (v16 = *(a1 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    p_shared_weak_owners = &v17->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v18);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN5radio20QMICommandDriverBase21setOperatingMode_syncEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_58_3;
    aBlock[4] = a1;
    aBlock[5] = v16;
    v48 = v18;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v52 = a3;
    v20 = *a4;
    if (*a4)
    {
      v20 = _Block_copy(v20);
    }

    v21 = *(a4 + 8);
    v49 = v20;
    object = v21;
    if (v21)
    {
      dispatch_retain(v21);
    }

    v51 = a2;
    v22 = _Block_copy(aBlock);
    v23 = *(a1 + 24);
    if (v23)
    {
      dispatch_retain(*(a1 + 24));
    }

    if (v22)
    {
      v24 = _Block_copy(v22);
      v45 = v24;
      v46 = v23;
      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = 0;
      v45 = 0;
      v46 = v23;
      if (v23)
      {
LABEL_22:
        dispatch_retain(v23);
        radio::QMICommandDriverBase::getOperatingMode(a1, &v45);
        dispatch_release(v23);
        if (!v24)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    radio::QMICommandDriverBase::getOperatingMode(a1, &v45);
    if (!v24)
    {
LABEL_38:
      if (v23)
      {
        dispatch_release(v23);
      }

      if (v22)
      {
        _Block_release(v22);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v49)
      {
        _Block_release(v49);
      }

      if (v48)
      {
        std::__shared_weak_count::__release_weak(v48);
      }

      std::__shared_weak_count::__release_weak(v18);
      goto LABEL_83;
    }

LABEL_37:
    _Block_release(v24);
    goto LABEL_38;
  }

  if (radio::OpMode::allowModeChange(*(a1 + 160)))
  {
    if (*a4)
    {
      v25 = _Block_copy(*a4);
      v26 = *(a4 + 8);
      v38 = v25;
      v39 = v26;
      if (!v26)
      {
LABEL_28:
        radio::QMICommandDriverBase::setOperatingModeUnconditionally(a1, a2, a3, &v38);
        if (v26)
        {
          dispatch_release(v26);
        }

        if (v25)
        {
          _Block_release(v25);
        }

        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      v26 = *(a4 + 8);
      v38 = 0;
      v39 = v26;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    dispatch_retain(v26);
    goto LABEL_28;
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v42 = operator new(0x38uLL);
  v43 = xmmword_296FBEC20;
  strcpy(v42, "setting operating mode while in factory test mode");
  CreateError();
  operator delete(v42);
  v27 = *(a1 + 40);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_63;
  }

  v28 = *(a1 + 160);
  radio::OpMode::modeToString();
  if (v56 >= 0)
  {
    v29 = v55;
  }

  else
  {
    v29 = v55[0];
  }

  radio::OpMode::getModeString(__p, *(a1 + 160));
  v30 = v54;
  v31 = __p[0];
  radio::OpMode::getConfigString(v40, *(a1 + 160));
  v32 = __p;
  if (v30 < 0)
  {
    v32 = v31;
  }

  if (v41 >= 0)
  {
    v33 = v40;
  }

  else
  {
    v33 = v40[0];
  }

  *buf = 136446722;
  *&buf[4] = v29;
  *&buf[12] = 2082;
  *&buf[14] = v32;
  *&buf[22] = 2082;
  v58 = v33;
  _os_log_impl(&dword_296ECF000, v27, OS_LOG_TYPE_DEFAULT, "#I Rejecting operating mode change to %{public}s because current operating mode is %{public}s and protocol NV config is %{public}s", buf, 0x20u);
  if ((v41 & 0x80000000) == 0)
  {
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_85;
  }

  operator delete(v40[0]);
  if (v54 < 0)
  {
LABEL_85:
    operator delete(__p[0]);
    if (v56 < 0)
    {
      goto LABEL_86;
    }

LABEL_63:
    v34 = cf;
    if (!cf)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_62:
  if ((v56 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_86:
  operator delete(v55[0]);
  v34 = cf;
  if (cf)
  {
LABEL_64:
    CFRetain(v34);
  }

LABEL_65:
  if (*a4)
  {
    v35 = _Block_copy(*a4);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(a4 + 8);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v58 = &__block_descriptor_tmp_292;
  if (v35)
  {
    v59 = _Block_copy(v35);
    v60 = v34;
    if (!v34)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v59 = 0;
  v60 = v34;
  if (v34)
  {
LABEL_72:
    CFRetain(v34);
  }

LABEL_73:
  dispatch_async(v36, buf);
  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    _Block_release(v59);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_83:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_296F3B24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((*(v36 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v36 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v36 - 168));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

void sub_296F3B2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F3B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio20QMICommandDriverBase21setOperatingMode_syncEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_76;
  }

  v5 = *(a1 + 32);
  v6 = std::__shared_weak_count::lock(v3);
  v53 = v6;
  if (!v6)
  {
    goto LABEL_76;
  }

  v7 = v6;
  if (*(a1 + 40))
  {
    if (*a2)
    {
      Config = radio::OpMode::getConfig(*(v5 + 160));
      v9 = *(v5 + 40);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (Config == 3)
      {
        if (v10)
        {
          radio::OpMode::getModeString(v50, *(v5 + 160));
          v34 = v51;
          v35 = v50[0];
          v36 = *(v5 + 160);
          v37 = *(a1 + 80);
          radio::OpMode::modeToString();
          v38 = v50;
          if (v34 < 0)
          {
            v38 = v35;
          }

          if (v49 >= 0)
          {
            v39 = v48;
          }

          else
          {
            v39 = v48[0];
          }

          v40 = *a2;
          *cf = 136446722;
          *&cf[4] = v38;
          *&cf[12] = 2082;
          *&cf[14] = v39;
          *&cf[22] = 2112;
          v55 = v40;
          _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Skipping operating mode change from %{public}s to %{public}s because we could not get the current operating mode (error ='%@')", cf, 0x20u);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          if (v51 < 0)
          {
            operator delete(v50[0]);
          }
        }

        v11 = *a2;
        if (v11)
        {
          CFRetain(v11);
        }

        v12 = *(a1 + 56);
        if (v12)
        {
          v13 = _Block_copy(v12);
        }

        else
        {
          v13 = 0;
        }

        v32 = *(a1 + 64);
        *cf = MEMORY[0x29EDCA5F8];
        *&cf[8] = 1174405120;
        *&cf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v55 = &__block_descriptor_tmp_292;
        if (v13)
        {
          aBlock = _Block_copy(v13);
          v57 = v11;
          if (!v11)
          {
            goto LABEL_66;
          }
        }

        else
        {
          aBlock = 0;
          v57 = v11;
          if (!v11)
          {
LABEL_66:
            dispatch_async(v32, cf);
            if (v57)
            {
              CFRelease(v57);
            }

            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            if (v11)
            {
              CFRelease(v11);
            }

            goto LABEL_74;
          }
        }

        CFRetain(v11);
        goto LABEL_66;
      }

      if (v10)
      {
        v41 = *a2;
        *cf = 138412290;
        *&cf[4] = v41;
        _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "%@, attempting to set operating mode anyway", cf, 0xCu);
      }
    }

    if (radio::OpMode::allowModeChange(*(v5 + 160)))
    {
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 56);
      if (v16)
      {
        v17 = _Block_copy(v16);
        v18 = *(a1 + 64);
        v42 = v17;
        v43 = v18;
        if (!v18)
        {
LABEL_17:
          radio::QMICommandDriverBase::setOperatingModeUnconditionally(v5, v14, v15, &v42);
          if (v18)
          {
            dispatch_release(v18);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          goto LABEL_74;
        }
      }

      else
      {
        v17 = 0;
        v18 = *(a1 + 64);
        v42 = 0;
        v43 = v18;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      dispatch_retain(v18);
      goto LABEL_17;
    }

    __p = operator new(0x38uLL);
    v47 = xmmword_296FBEC20;
    strcpy(__p, "setting operating mode while in factory test mode");
    CreateError();
    if (cf != a2)
    {
      v19 = *a2;
      *a2 = *cf;
      *cf = 0;
      if (!v19)
      {
        goto LABEL_26;
      }

      CFRelease(v19);
    }

    if (*cf)
    {
      CFRelease(*cf);
    }

LABEL_26:
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p);
      v20 = *(v5 + 40);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v20 = *(v5 + 40);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        v28 = *a2;
        if (!v28)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    v21 = *(v5 + 160);
    v22 = *(a1 + 80);
    v23 = v50;
    radio::OpMode::modeToString();
    if (v51 < 0)
    {
      v23 = v50[0];
    }

    radio::OpMode::getModeString(v48, *(v5 + 160));
    v24 = v49;
    v25 = v48[0];
    radio::OpMode::getConfigString(v44, *(v5 + 160));
    v26 = v48;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if (v45 >= 0)
    {
      v27 = v44;
    }

    else
    {
      v27 = v44[0];
    }

    *cf = 136446722;
    *&cf[4] = v23;
    *&cf[12] = 2082;
    *&cf[14] = v26;
    *&cf[22] = 2082;
    v55 = v27;
    _os_log_impl(&dword_296ECF000, v20, OS_LOG_TYPE_DEFAULT, "#I Rejecting operating mode change to %{public}s because current operating mode is %{public}s and protocol NV config is %{public}s", cf, 0x20u);
    if (v45 < 0)
    {
      operator delete(v44[0]);
      if ((v49 & 0x80000000) == 0)
      {
LABEL_41:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_79;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v48[0]);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_79:
    operator delete(v50[0]);
    v28 = *a2;
    if (!v28)
    {
LABEL_44:
      v29 = *(a1 + 56);
      if (v29)
      {
        v30 = _Block_copy(v29);
      }

      else
      {
        v30 = 0;
      }

      v31 = *(a1 + 64);
      *cf = MEMORY[0x29EDCA5F8];
      *&cf[8] = 1174405120;
      *&cf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
      v55 = &__block_descriptor_tmp_292;
      if (v30)
      {
        aBlock = _Block_copy(v30);
        v57 = v28;
        if (!v28)
        {
          goto LABEL_52;
        }
      }

      else
      {
        aBlock = 0;
        v57 = v28;
        if (!v28)
        {
LABEL_52:
          dispatch_async(v31, cf);
          if (v57)
          {
            CFRelease(v57);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v30)
          {
            _Block_release(v30);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          goto LABEL_74;
        }
      }

      CFRetain(v28);
      goto LABEL_52;
    }

LABEL_43:
    CFRetain(v28);
    goto LABEL_44;
  }

LABEL_74:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_76:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_296F3B94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::QMICommandDriverBase::setOperatingModeUnconditionally(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v53 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getModeString(v38, *(a1 + 160));
    v9 = v40;
    v10 = v38[0];
    v11 = *(a1 + 160);
    radio::OpMode::modeToString();
    v12 = v38;
    if (v9 < 0)
    {
      v12 = v10;
    }

    if ((SBYTE7(v49) & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446722;
    *&buf[4] = v12;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v51 = a2 / 0xF4240;
    _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Requesting operating mode change from %{public}s to %{public}s, with timeout %llu ms", buf, 0x20u);
    if (SBYTE7(v49) < 0)
    {
      operator delete(__p[0]);
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v38[0]);
  }

LABEL_9:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v14;
  v49 = v14;
  qmi::MutableMessageBase::MutableMessageBase(__p);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v15 = ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v44 = ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v45 = &__block_descriptor_tmp_60;
  v46 = a1;
  v47 = a3;
  v16 = __p[1];
  v17 = v49;
  v18 = __p[1];
  if (__p[1] != v49)
  {
    v18 = __p[1];
    while (*(*v18 + 8) != 1)
    {
      if (++v18 == v49)
      {
        goto LABEL_17;
      }
    }
  }

  if (v18 == v49)
  {
LABEL_17:
    v22 = operator new(0x10uLL);
    v23 = v22;
    v22[4] = 1;
    *v22 = &unk_2A1E1A008;
    if (v17 >= *(&v49 + 1))
    {
      v25 = v17 - v16;
      v26 = (v17 - v16) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v28 = *(&v49 + 1) - v16;
      if ((*(&v49 + 1) - v16) >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v30 = operator new(8 * v29);
      }

      else
      {
        v30 = 0;
      }

      v31 = &v30[8 * v26];
      *v31 = v23;
      v24 = v31 + 8;
      memcpy(v30, v16, v25);
      __p[1] = v30;
      *&v49 = v24;
      *(&v49 + 1) = &v30[8 * v29];
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v17 = v22;
      v24 = v17 + 8;
    }

    v21 = v23 + 9;
    *&v49 = v24;
    v15 = v44;
  }

  else
  {
    v19 = ***v18;
    if (!v20)
    {
      __cxa_bad_cast();
    }

    v21 = v20 + 9;
  }

  v15(v43, v21);
  v38[0] = (a1 + 232);
  v38[1] = QMIServiceMsg::create();
  v41 = 0;
  aBlock = 0;
  v39 = a2 / 0xF4240;
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 1174405120;
  v35[2] = ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v35[3] = &__block_descriptor_tmp_65_1;
  v35[4] = a1;
  v32 = *a4;
  if (*a4)
  {
    v32 = _Block_copy(v32);
  }

  v33 = *(a4 + 8);
  v36 = v32;
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm16SetOperatingMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v51 = &unk_29EE5EAE0;
  v52 = v35;
  aBlock = _Block_copy(buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  qmi::MutableMessageBase::~MutableMessageBase(__p);
  v34 = *MEMORY[0x29EDCA608];
}