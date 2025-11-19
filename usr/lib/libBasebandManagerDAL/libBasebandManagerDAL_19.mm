void sub_29736C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x250], MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&STACK[0x2D0]);
  if (a39)
  {
    (*(*a39 + 8))(a39);
  }

  BasebandBooterParams::~BasebandBooterParams(&a40);
  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void BasebandBooterParams::~BasebandBooterParams(BasebandBooterParams *this)
{
  *this = MEMORY[0x29EDC85F0] + 16;
  if (*(this + 168) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  if (*(this + 144) == 1)
  {
    v3 = *(this + 15);
    if (!v3)
    {
LABEL_7:
      v4 = *(this + 13);
      *(this + 13) = 0;
      if (v4)
      {
        operator delete(v4);
      }

      goto LABEL_9;
    }

    while (1)
    {
      v5 = *v3;
      if (*(v3 + 63) < 0)
      {
        operator delete(v3[5]);
        if (*(v3 + 39) < 0)
        {
LABEL_19:
          operator delete(v3[2]);
        }
      }

      else if (*(v3 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v3);
      v3 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if (*(this + 64) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

LABEL_21:
  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t __cxx_global_var_init_15()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_11_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t HealthEvent::HealthEvent(uint64_t result, char a2, char a3, uint64_t a4)
{
  *result = &unk_2A1E3AC60;
  *(result + 8) = a2;
  *(result + 9) = a3;
  *(result + 16) = a4;
  return result;
}

{
  *result = &unk_2A1E3AC60;
  *(result + 8) = a2;
  *(result + 9) = a3;
  *(result + 16) = a4;
  return result;
}

uint64_t HealthEvent::HealthEvent(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *a1 = &unk_2A1E3AC60;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  *(a1 + 16) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

{
  *a1 = &unk_2A1E3AC60;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  *(a1 + 16) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29736C5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29736C668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HealthEvent::getTime(HealthEvent *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 2);
  v4 = operator new(0x38uLL);
  v4[8] = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v6;
  v5 = v4;
  v6[0] = v4;
  *(v4 + 24) = 1;
  v6[1] = 1;
  *(v4 + 5) = v3;
  *(v4 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v5, 0, 9, a2);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v5, v6[0]);
}

void HealthEvent::setTime(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(a1 + 16) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29736C7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HealthEvent::asString@<X0>(HealthEvent *this@<X0>, _BYTE *a2@<X8>)
{
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v4;
  v44[8] = v4;
  v44[5] = v4;
  v44[6] = v4;
  v44[3] = v4;
  v44[4] = v4;
  v44[1] = v4;
  v44[2] = v4;
  v43 = v4;
  v44[0] = v4;
  v41 = v4;
  v42 = v4;
  v40 = v4;
  v38 = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v36);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "HealthEvent { Type='", 20);
  v6 = &v35[7];
  v7 = *(this + 8);
  if (v7 <= 2)
  {
    if (*(this + 8))
    {
      if (v7 == 1)
      {
        v8 = 12;
        v35[23] = 12;
        *&v35[8] = 1701999980;
        v9 = "boot failure";
        goto LABEL_18;
      }

      if (v7 == 2)
      {
        v10 = operator new(0x19uLL);
        *v35 = v10;
        *&v35[8] = xmmword_29742FB40;
        qmemcpy(v10, "boot attempts exhausted", 23);
        v6 = v10 + 23;
        v8 = 23;
        goto LABEL_19;
      }
    }

    goto LABEL_13;
  }

  if (*(this + 8) > 4u)
  {
    if (v7 == 5)
    {
      v6 = &v35[11];
      v8 = 11;
      v35[23] = 11;
      qmemcpy(v35, "erasing efs", 11);
      goto LABEL_16;
    }

    if (v7 == 6)
    {
      v6 = &v35[14];
      v8 = 14;
      v35[23] = 14;
      qmemcpy(v35, "baseband crash", 14);
LABEL_16:
      v10 = v35;
      goto LABEL_19;
    }

LABEL_13:
    v8 = 7;
    v35[23] = 7;
    qmemcpy(v35, "unknown", 7);
    goto LABEL_16;
  }

  if (v7 == 3)
  {
    v8 = 12;
    v35[23] = 12;
    *&v35[8] = 1936942435;
    v9 = "ping success";
    goto LABEL_18;
  }

  if (v7 != 4)
  {
    goto LABEL_13;
  }

  v8 = 12;
  v35[23] = 12;
  *&v35[8] = 1701999980;
  v9 = "ping failure";
LABEL_18:
  *v35 = *v9;
  v10 = v35;
  v6 = &v35[12];
LABEL_19:
  *v6 = 0;
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v8);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' CauseCode='", 13);
  v13 = *(this + 9);
  if (v13 == 2)
  {
    v14 = 2;
    v34 = 2;
    LOWORD(v32) = 22355;
  }

  else if (v13 == 1)
  {
    v14 = 2;
    v34 = 2;
    LOWORD(v32) = 22344;
  }

  else if (*(this + 9))
  {
    v14 = 7;
    v34 = 7;
    qmemcpy(&v32, "unknown", 7);
  }

  else
  {
    v14 = 12;
    v34 = 12;
    v33 = 1701601889;
    v32 = *"NotAvailable";
  }

  *(&v32 + v14) = 0;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v32, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "' Time='", 8);
  v17 = *(this + 2);
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v18 = operator new(0x38uLL);
  v18[8] = 0;
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = &v47;
  v46 = v18;
  v47 = v18;
  *(v18 + 24) = 1;
  v48 = 1;
  *(v18 + 5) = v17;
  *(v18 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v46, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v46, v47);
  if ((v31 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v20 = v31;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "' }", 3);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_34:
      if ((v35[23] & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v32);
  if ((v35[23] & 0x80000000) == 0)
  {
LABEL_35:
    v22 = BYTE8(v43);
    if ((BYTE8(v43) & 0x10) == 0)
    {
      goto LABEL_36;
    }

LABEL_41:
    v24 = v43;
    if (v43 < *(&v40 + 1))
    {
      *&v43 = *(&v40 + 1);
      v24 = *(&v40 + 1);
    }

    v25 = v40;
    v23 = v24 - v40;
    if ((v24 - v40) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

LABEL_40:
  operator delete(*v35);
  v22 = BYTE8(v43);
  if ((BYTE8(v43) & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_36:
  if ((v22 & 8) == 0)
  {
    v23 = 0;
    a2[23] = 0;
    goto LABEL_52;
  }

  v25 = *(&v38 + 1);
  v23 = *(&v39 + 1) - *(&v38 + 1);
  if (*(&v39 + 1) - *(&v38 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_56:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_44:
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v23 | 7) + 1;
    }

    v27 = operator new(v26);
    *(a2 + 1) = v23;
    *(a2 + 2) = v26 | 0x8000000000000000;
    *a2 = v27;
    a2 = v27;
    goto LABEL_51;
  }

  a2[23] = v23;
  if (v23)
  {
LABEL_51:
    memmove(a2, v25, v23);
  }

LABEL_52:
  a2[v23] = 0;
  *&v36 = *MEMORY[0x29EDC9528];
  v28 = *(MEMORY[0x29EDC9528] + 72);
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v37 = v28;
  *(&v37 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(*(&v41 + 1));
  }

  *(&v37 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v44);
}

void sub_29736CD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a28, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&a44);
  _Unwind_Resume(a1);
}

char *HealthEvent::toString@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        *(a2 + 23) = 12;
        strcpy(a2, "boot failure");
        return result;
      }

      if (result == 2)
      {
        result = operator new(0x19uLL);
        *a2 = result;
        *(a2 + 8) = xmmword_29742FB40;
        strcpy(result, "boot attempts exhausted");
        return result;
      }
    }

LABEL_12:
    *(a2 + 23) = 7;
    strcpy(a2, "unknown");
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      *(a2 + 23) = 11;
      strcpy(a2, "erasing efs");
      return result;
    }

    if (result == 6)
    {
      *(a2 + 23) = 14;
      strcpy(a2, "baseband crash");
      return result;
    }

    goto LABEL_12;
  }

  *(a2 + 23) = 12;
  if (result == 3)
  {
    strcpy(a2, "ping success");
  }

  else
  {
    strcpy(a2, "ping failure");
  }

  return result;
}

uint64_t HealthEvent::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    a2[23] = 2;
    strcpy(a2, "SW");
  }

  else if (result == 1)
  {
    a2[23] = 2;
    strcpy(a2, "HW");
  }

  else if (result)
  {
    a2[23] = 7;
    strcpy(a2, "unknown");
  }

  else
  {
    a2[23] = 12;
    strcpy(a2, "NotAvailable");
  }

  return result;
}

void BootModule::create(capabilities::radio *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = capabilities::radio::vendor(a1);
  if (v6 != 1)
  {
    if (v6 == 4)
    {
      v7 = *a1;
      v8 = *(a1 + 1);
      v25 = v7;
      v26 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = a2[1];
      v24[0] = *a2;
      v24[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BootModuleDAL::create(&v25, v24, &v27);
      v10 = v27;
      v27 = 0uLL;
      *a3 = v10;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    return;
  }

  v11 = operator new(0x270uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v22 = v13;
  v23 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  v16 = a2[1];
  v21[0] = v15;
  v21[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20[0] = 0;
  v20[1] = 0;
  BootModule::BootModule(v11, &v22, v21, v20);
  v17 = operator new(0x20uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__vftable = &unk_2A1E3B540;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v12;
  v19 = *(v12 + 10);
  if (v19)
  {
    if (v19->__shared_owners_ != -1)
    {
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v12 + 9) = v12;
    *(v12 + 10) = v17;
    std::__shared_weak_count::__release_weak(v19);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v12 + 9) = v12;
    *(v12 + 10) = v17;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
LABEL_22:
  *a3 = v12;
  *(a3 + 8) = v17;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  BootModule::init(*a3);
}

void sub_29736D348(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29736D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_end_catch();
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void BootModule::init(BootModule *this)
{
  v5 = *(this + 9);
  v3 = *(this + 10);
  v4 = this + 72;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
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

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN10BootModule4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_22_3;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_236;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 11);
  if (!*(this + 12))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

uint64_t BootModule::BootModule(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v8);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E3AC90;
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "boot.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2("boot.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v10, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v10);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v10;
  if (v10)
  {
    dispatch_retain(v10);
    *(a1 + 96) = 0;
    dispatch_release(v10);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 104, &__dst);
  MEMORY[0x29C26DE80](&__dst);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &unk_2A1E3AC90;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 156) = 15;
  v11 = dispatch_semaphore_create(0);
  *(a1 + 232) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = v11;
  *(a1 + 194) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = -1;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  config::hw::regionInfo(v11);
  *(a1 + 488) = dispatch_group_create();
  *(a1 + 496) = 0;
  v12 = (*(*a1 + 16))(a1);
  v13 = 0x7FFFFFFFFFFFFFF7;
  v14 = strlen(v12);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v14 | 7) + 1;
    }

    p_dst = operator new(v21);
    *(&__dst + 1) = v15;
    v83 = v21 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_19:
    memmove(p_dst, v12, v15);
    *(p_dst + v15) = 0;
    v17 = SHIBYTE(v83);
    if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  HIBYTE(v83) = v14;
  p_dst = &__dst;
  if (v14)
  {
    goto LABEL_19;
  }

  LOBYTE(__dst) = 0;
  v17 = SHIBYTE(v83);
  if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
  {
LABEL_13:
    if (v17 - 12 < 0xB)
    {
      v18 = v17 + 11;
      v19 = &__dst;
      v20 = 22;
LABEL_23:
      v22 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v22 = v18;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v24 = v23;
      }

      else
      {
        v24 = 23;
      }

      v25 = v20 == 22;
      goto LABEL_32;
    }

    v30 = &__dst;
LABEL_39:
    v31 = v30 + v17;
    *v31 = *".resetqueue";
    *(v31 + 7) = 1702192501;
    v32 = v17 + 11;
    if (SHIBYTE(v83) < 0)
    {
      *(&__dst + 1) = v17 + 11;
    }

    else
    {
      HIBYTE(v83) = v32 & 0x7F;
    }

    v29 = v30 + v32;
    goto LABEL_43;
  }

LABEL_20:
  v17 = *(&__dst + 1);
  v20 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - *(&__dst + 1) >= 0xB)
  {
    v30 = __dst;
    goto LABEL_39;
  }

  v18 = *(&__dst + 1) + 11;
  if (0x7FFFFFFFFFFFFFF7 - (v83 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = __dst;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_23;
  }

  v25 = 0;
  v24 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
  v26 = operator new(v24);
  v27 = v26;
  if (v17)
  {
    memmove(v26, v19, v17);
  }

  v28 = &v27[v17];
  *v28 = *".resetqueue";
  *(v28 + 7) = 1702192501;
  if (!v25)
  {
    operator delete(v19);
  }

  *(&__dst + 1) = v18;
  v83 = v24 | 0x8000000000000000;
  *&__dst = v27;
  v29 = &v27[v18];
  v13 = 0x7FFFFFFFFFFFFFF7;
LABEL_43:
  *v29 = 0;
  v85 = v83;
  *buf = __dst;
  v83 = 0;
  __dst = 0uLL;
  if (v85 >= 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = *buf;
  }

  v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v35 = dispatch_queue_create(v33, v34);
  *(a1 + 504) = v35;
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*buf);
    if ((SHIBYTE(v83) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(v83) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst);
LABEL_48:
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 584) = *a4;
  v36 = a4[1];
  *(a1 + 592) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 600) = -1;
  *(a1 + 608) = *a3;
  v37 = a3[1];
  *(a1 + 616) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 188) = 0;
  *(a1 + 576) = 0;
  *(a1 + 184) = 0;
  *(a1 + 304) = 0;
  *(a1 + 152) = 0;
  *(a1 + 328) = 8;
  if (capabilities::abs::supportsLCDM(v35))
  {
    v38 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v38);
    *buf = v38;
    v39 = operator new(0x20uLL);
    *v39 = &unk_2A1E34B70;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *(v39 + 3) = v38;
    *(a1 + 560) = v38;
    v40 = *(a1 + 568);
    *(a1 + 568) = v39;
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v39 = 0;
    *(a1 + 560) = 0;
    v40 = *(a1 + 568);
    *(a1 + 568) = 0;
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_58:
  if (sys::isBootSessionChanged(v39))
  {
    v41 = *(a1 + 104);
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v41, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband boot stats", buf, 2u);
    }

    *(a1 + 528) = 0;
    goto LABEL_99;
  }

  xdict = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!qword_2A13999E0)
  {
    v44 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v44);
    *&__dst = v44;
    v43 = operator new(0x20uLL);
    *v43 = &unk_2A1E3B590;
    v43[1] = 0;
    v43[2] = 0;
    v43[3] = v44;
    v45 = off_2A13999E8;
    qword_2A13999E0 = v44;
    off_2A13999E8 = v43;
    if (!v45)
    {
      *buf = v44;
      *&buf[8] = v43;
      goto LABEL_72;
    }

    if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }
  }

  v43 = off_2A13999E8;
  *buf = qword_2A13999E0;
  *&buf[8] = off_2A13999E8;
  if (off_2A13999E8)
  {
LABEL_72:
    atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::getHealthInfo(*buf, &xdict);
  v46 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  value = xpc_dictionary_get_value(xdict, "KeyBasebandStats");
  v48 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v48 = xpc_null_create();
  }

  v49 = xpc_null_create();
  v50 = MEMORY[0x29EDCAA00];
  if (v48 && MEMORY[0x29C26F9F0](v48) == v50)
  {
    xpc_retain(v48);
    v51 = v48;
  }

  else
  {
    v51 = xpc_null_create();
  }

  if (MEMORY[0x29C26F9F0](v51) != v50)
  {
    if (v49)
    {
      xpc_retain(v49);
      v52 = v49;
    }

    else
    {
      v52 = xpc_null_create();
    }

    xpc_release(v51);
    v51 = v52;
  }

  xpc_release(v49);
  xpc_release(v48);
  if (MEMORY[0x29C26F9F0](v51) != v50)
  {
    v53 = *(a1 + 104);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v53, OS_LOG_TYPE_ERROR, "Baseband boot stats not found", buf, 2u);
    }

    *(a1 + 528) = 0;
  }

  v54 = xpc_dictionary_get_value(v51, *MEMORY[0x29EDBF2C0]);
  *buf = v54;
  if (v54)
  {
    xpc_retain(v54);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 528) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  v55 = xpc_dictionary_get_value(v51, *MEMORY[0x29EDBF2C8]);
  *buf = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 532) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  xpc_release(v51);
  xpc_release(xdict);
LABEL_99:
  capabilities::abs::supportedMobileAssetTypes(v42);
  v56 = capabilities::abs::operator&();
  if (v56 || (capabilities::abs::supportedMobileAssetTypes(v56), capabilities::abs::operator&()))
  {
    v57 = (*(*a1 + 16))(a1);
    v58 = strlen(v57);
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v59 = v58;
    if (v58 >= 0x17)
    {
      if ((v58 | 7) == 0x17)
      {
        v65 = 25;
      }

      else
      {
        v65 = (v58 | 7) + 1;
      }

      v60 = operator new(v65);
      *(&__dst + 1) = v59;
      v83 = v65 | 0x8000000000000000;
      *&__dst = v60;
    }

    else
    {
      HIBYTE(v83) = v58;
      v60 = &__dst;
      if (!v58)
      {
        LOBYTE(__dst) = 0;
        v61 = SHIBYTE(v83);
        if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
        {
LABEL_105:
          if (v61 - 12 < 0xB)
          {
            v62 = v61 + 11;
            v63 = &__dst;
            v64 = 22;
            goto LABEL_115;
          }

          v73 = &__dst;
          goto LABEL_131;
        }

LABEL_112:
        v61 = *(&__dst + 1);
        v64 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v64 - *(&__dst + 1) < 0xB)
        {
          v62 = *(&__dst + 1) + 11;
          if (0x7FFFFFFFFFFFFFF7 - (v83 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v64)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v63 = __dst;
          if (v64 >= 0x3FFFFFFFFFFFFFF3)
          {
            v68 = 0;
LABEL_124:
            v69 = operator new(v13);
            v70 = v69;
            if (v61)
            {
              memmove(v69, v63, v61);
            }

            v71 = &v70[v61];
            *v71 = *".assetqueue";
            *(v71 + 7) = 1702192501;
            if (!v68)
            {
              operator delete(v63);
            }

            *(&__dst + 1) = v62;
            v83 = v13 | 0x8000000000000000;
            *&__dst = v70;
            v72 = &v70[v62];
LABEL_135:
            *v72 = 0;
            v85 = v83;
            *buf = __dst;
            v83 = 0;
            __dst = 0uLL;
            if (v85 >= 0)
            {
              v76 = buf;
            }

            else
            {
              v76 = *buf;
            }

            v77 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
            v78 = dispatch_queue_create(v76, v77);
            v79 = *(a1 + 520);
            *(a1 + 520) = v78;
            if (v79)
            {
              dispatch_release(v79);
            }

            if (SHIBYTE(v85) < 0)
            {
              operator delete(*buf);
              if ((SHIBYTE(v83) & 0x80000000) == 0)
              {
                return a1;
              }
            }

            else if ((SHIBYTE(v83) & 0x80000000) == 0)
            {
              return a1;
            }

            operator delete(__dst);
            return a1;
          }

LABEL_115:
          v66 = 2 * v64;
          if (v62 > 2 * v64)
          {
            v66 = v62;
          }

          if ((v66 | 7) == 0x17)
          {
            v67 = 25;
          }

          else
          {
            v67 = (v66 | 7) + 1;
          }

          if (v66 >= 0x17)
          {
            v13 = v67;
          }

          else
          {
            v13 = 23;
          }

          v68 = v64 == 22;
          goto LABEL_124;
        }

        v73 = __dst;
LABEL_131:
        v74 = v73 + v61;
        *v74 = *".assetqueue";
        *(v74 + 7) = 1702192501;
        v75 = v61 + 11;
        if (SHIBYTE(v83) < 0)
        {
          *(&__dst + 1) = v61 + 11;
        }

        else
        {
          HIBYTE(v83) = v75 & 0x7F;
        }

        v72 = v73 + v75;
        goto LABEL_135;
      }
    }

    memmove(v60, v57, v59);
    *(v60 + v59) = 0;
    v61 = SHIBYTE(v83);
    if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_112;
  }

  return a1;
}

void sub_29736E164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void *a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v24 = (v20 + 512);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v20 + 608);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v20 + 584);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v20 + 560);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v22);
  v25 = *(v20 + 520);
  if (v25)
  {
    dispatch_release(v25);
  }

  if (*v24)
  {
    dispatch_resume(*v24);
    if (*v24)
    {
      dispatch_release(*v24);
    }
  }

  v26 = *(v20 + 504);
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(v20 + 496);
  if (v27)
  {
    dispatch_group_leave(v27);
    v28 = *(v20 + 496);
    if (v28)
    {
      dispatch_release(v28);
    }
  }

  v29 = *(v20 + 488);
  if (v29)
  {
    dispatch_release(v29);
    if (*(v20 + 487) < 0)
    {
LABEL_13:
      operator delete(*(v21 + 296));
      if ((*(v20 + 447) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if (*(v20 + 487) < 0)
  {
    goto LABEL_13;
  }

  if ((*(v20 + 447) & 0x80000000) == 0)
  {
LABEL_14:
    if (*(v20 + 399) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v21 + 256));
  if (*(v20 + 399) < 0)
  {
LABEL_15:
    operator delete(*(v21 + 208));
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v21 + 176);
    v30 = *(v21 + 168);
    if (!v30)
    {
      goto LABEL_22;
    }

LABEL_21:
    _Block_release(v30);
LABEL_22:
    if (*(v20 + 303) < 0)
    {
      operator delete(*(v20 + 280));
      if ((*(v20 + 279) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((*(v20 + 279) & 0x80000000) == 0)
    {
LABEL_24:
      BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
      v31 = *(v20 + 176);
      if (!v31)
      {
        goto LABEL_30;
      }

LABEL_28:
      dispatch_group_leave(v31);
      v32 = *(v20 + 176);
      if (v32)
      {
        dispatch_release(v32);
      }

LABEL_30:
      if (*v21)
      {
        dispatch_group_leave(*v21);
        if (*v21)
        {
          dispatch_release(*v21);
        }
      }

      v33 = *(v20 + 160);
      if (v33)
      {
        dispatch_release(v33);
      }

      std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v21 - 32);
      if (*(v20 + 135) < 0)
      {
        operator delete(*a10);
      }

      MEMORY[0x29C26DE80](v20 + 104);
      ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(a12);
      Service::~Service(v20);
      _Unwind_Resume(a1);
    }

    operator delete(*(v20 + 256));
    BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
    v31 = *(v20 + 176);
    if (!v31)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_20:
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v21 + 176);
  v30 = *(v21 + 168);
  if (!v30)
  {
    goto LABEL_22;
  }

  goto LABEL_21;
}

BOOL BootModule::isPTMobileAssetSupported(BootModule *this)
{
  capabilities::abs::supportedMobileAssetTypes(this);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    return 1;
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  return capabilities::abs::operator&() != 0;
}

void BootModule::~BootModule(BootModule *this)
{
  *this = &unk_2A1E3AC90;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v31, 2u);
  }

  v4 = *(this + 77);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 74);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 71);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 68);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 65);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    dispatch_resume(v9);
    v10 = *(this + 64);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 63);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 62);
  if (v12)
  {
    dispatch_group_leave(v12);
    v13 = *(this + 62);
    if (v13)
    {
      dispatch_release(v13);
    }
  }

  v14 = *(this + 61);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
    if ((*(this + 447) & 0x80000000) == 0)
    {
LABEL_29:
      if ((*(this + 399) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      operator delete(*(this + 47));
      v15 = *(this + 44);
      if (!v15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((*(this + 447) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*(this + 53));
  if (*(this + 399) < 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v15 = *(this + 44);
  if (!v15)
  {
LABEL_36:
    v16 = *(this + 42);
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  v16 = *(this + 42);
  if (v16)
  {
LABEL_37:
    _Block_release(v16);
  }

LABEL_38:
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
    if ((*(this + 279) & 0x80000000) == 0)
    {
LABEL_40:
      if ((*(this + 255) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_46;
    }
  }

  else if ((*(this + 279) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(*(this + 32));
  if ((*(this + 255) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(this + 223) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    operator delete(*(this + 25));
    v17 = *(this + 22);
    if (!v17)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

LABEL_46:
  operator delete(*(this + 29));
  if (*(this + 223) < 0)
  {
    goto LABEL_47;
  }

LABEL_42:
  v17 = *(this + 22);
  if (!v17)
  {
    goto LABEL_50;
  }

LABEL_48:
  dispatch_group_leave(v17);
  v18 = *(this + 22);
  if (v18)
  {
    dispatch_release(v18);
  }

LABEL_50:
  v19 = *(this + 21);
  if (v19)
  {
    dispatch_group_leave(v19);
    v20 = *(this + 21);
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    dispatch_release(v21);
  }

  v22 = *(this + 18);
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 135) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(this + 135) < 0)
  {
LABEL_58:
    operator delete(*(this + 14));
  }

LABEL_59:
  MEMORY[0x29C26DE80](v2);
  v23 = *(this + 12);
  if (v23)
  {
    dispatch_release(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(this + 10);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v26 = *(this + 3);
  if (v26)
  {
    v27 = *(this + 4);
    v28 = *(this + 3);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *(this + 3);
    }

    *(this + 4) = v26;
    operator delete(v28);
  }

  v30 = *(this + 2);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }
}

{
  BootModule::~BootModule(this);

  operator delete(v1);
}

void BootModule::changeState_sync(uint64_t a1, unsigned int a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(a1 + 576);
    if (v6 > 8)
    {
      v7 = "Unknown";
      if (a2 > 8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = off_29EE683A8[v6];
      if (a2 > 8)
      {
LABEL_4:
        v8 = "Unknown";
LABEL_7:
        *buf = 136446466;
        *&buf[4] = v7;
        *&buf[12] = 2082;
        *&buf[14] = v8;
        _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I boot state changing %{public}s -> %{public}s", buf, 0x16u);
        goto LABEL_8;
      }
    }

    v8 = off_29EE683A8[a2];
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 576) = a2;
  if (!capabilities::ipc::supportsPCI(v5))
  {
    goto LABEL_43;
  }

  v9 = (a1 + 344);
  if (*(a1 + 576) - 3 > 1)
  {
    v19 = *(a1 + 352);
    *v9 = 0;
    *(a1 + 352) = 0;
    if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_43;
    }

    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v9)
    {
      goto LABEL_43;
    }

    v10 = *(a1 + 336);
    if (v10)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v11 = off_2A1399448;
    if (!off_2A1399448)
    {
      ABMServer::create_default_global(buf);
      v12 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v13 = *(&off_2A1399448 + 1);
      off_2A1399448 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A1399448;
    }

    v38 = v11;
    v39 = *(&off_2A1399448 + 1);
    if (*(&off_2A1399448 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v15 = *(*v11 + 144);
    pci::event::Listener::create();
    v16 = v41;
    v41 = 0uLL;
    v17 = *(a1 + 352);
    *v9 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v41 + 1) + 16))(*(&v41 + 1));
      std::__shared_weak_count::__release_weak(*(&v41 + 1));
    }

    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v18 = *(a1 + 104);
    if (*(a1 + 344))
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Listening for PCI events", buf, 2u);
        if (!*(a1 + 176))
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }

LABEL_43:
      if (!*(a1 + 176))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "Could not create PCI event listener!", buf, 2u);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

LABEL_44:
  v20 = *(a1 + 576);
  if (v20 != 4)
  {
    goto LABEL_50;
  }

  v21 = *(a1 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v21, OS_LOG_TYPE_DEFAULT, "#I Releasing shutdown request session", buf, 2u);
  }

  (*(*a1 + 104))(a1, 7);
  v22 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

LABEL_49:
  v20 = *(a1 + 576);
LABEL_50:
  if (v20 != 7)
  {
    goto LABEL_75;
  }

  *buf = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *buf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF4A0], v23, v25);
  v26 = *MEMORY[0x29EDBF460];
  v27 = strlen(*MEMORY[0x29EDBF460]);
  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v29 = operator new(v31);
    __dst[1] = v28;
    v37 = v31 | 0x8000000000000000;
    __dst[0] = v29;
  }

  else
  {
    HIBYTE(v37) = v27;
    v29 = __dst;
    if (!v27)
    {
      LOBYTE(__dst[0]) = 0;
      v30 = *buf;
      if (!*buf)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }
  }

  memmove(v29, v26, v28);
  *(v28 + v29) = 0;
  v30 = *buf;
  if (!*buf)
  {
LABEL_65:
    cf = 0;
    goto LABEL_66;
  }

LABEL_63:
  v32 = CFGetTypeID(v30);
  if (v32 != CFDictionaryGetTypeID())
  {
    goto LABEL_65;
  }

  cf = v30;
  CFRetain(v30);
LABEL_66:
  v34 = 0;
  Service::broadcastEvent(a1, __dst, &cf, &v34);
  if (v34)
  {
    _Block_release(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (!v30)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  operator delete(__dst[0]);
  if (v30)
  {
LABEL_74:
    CFRelease(v30);
  }

LABEL_75:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_29736EFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *aBlock, uint64_t a20, uint64_t a21, char a22)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void BootModule::requestReset(void *a1, const ResetInfo *a2, uint64_t *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  if (!capabilities::abs::shouldIgnoreResets(v8))
  {
    v12 = a1[63];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_9_4;
    block[4] = a1;
    block[5] = v7;
    v17 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    ResetInfo::ResetInfo(&v18, a2);
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    aBlock = v13;
    dispatch_async(v12, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v24 < 0)
    {
      operator delete(__p);
      if ((v22 & 0x80000000) == 0)
      {
LABEL_19:
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v21);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    operator delete(v19);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      v14 = v17;
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    operator delete(v18.__r_.__value_.__l.__data_);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_weak(v14);
    goto LABEL_28;
  }

  v10 = a1[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ResetInfo::asString(a2, v26);
    v11 = v27 >= 0 ? v26 : v26[0];
    *buf = 136446210;
    v29 = v11;
    _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring modem reset request: %{public}s", buf, 0xCu);
    if (v27 < 0)
    {
      operator delete(v26[0]);
      if (!*a3)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    }
  }

  if (*a3)
  {
LABEL_12:
    LODWORD(v26[0]) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a3, v26, "");
  }

LABEL_28:
  std::__shared_weak_count::__release_weak(v9);
  v15 = *MEMORY[0x29EDCA608];
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v21 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!a1[5])
  {
    goto LABEL_16;
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_31;
  v9[4] = v3;
  ResetInfo::ResetInfo(&v10, (a1 + 7));
  v6 = a1[21];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v8 = a1[5];
  v7 = a1[6];
  aBlock = v6;
  v18 = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v9);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      operator delete(v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_22:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v13);
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  if (v3 > 8 || ((1 << v3) & 0x1C7) == 0)
  {
    v12 = *(v2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      ResetInfo::asString((a1 + 40), &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Reset requested: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(*v2 + 104))(v2, 1);
    *v65 = 0xAAAAAAAAAAAAAAAALL;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      *v65 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      *v65 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_37;
      }
    }

    if (MEMORY[0x29C26F9F0](v15) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v15);
      goto LABEL_38;
    }

    v16 = xpc_null_create();
LABEL_37:
    *v65 = v16;
LABEL_38:
    xpc_release(v15);
    ResetInfo::addToDict((a1 + 40), v65);
    v21 = *v65;
    v64 = *v65;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v21 = xpc_null_create();
      v64 = v21;
    }

    BootModule::submitBBResetMetric_sync(v2, &v64);
    xpc_release(v21);
    v22 = *v65;
    v63 = *v65;
    v64 = 0;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v22 = xpc_null_create();
      v63 = v22;
    }

    BootModule::updateResetInfoAnalyticsEvent_sync(v2, &v63);
    xpc_release(v22);
    v63 = 0;
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    v23 = *MEMORY[0x29EDBEB60];
    v24 = strlen(*MEMORY[0x29EDBEB60]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v24 != __p.__r_.__value_.__l.__size_)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      v26 = memcmp(__p.__r_.__value_.__l.__data_, v23, v24);
      operator delete(v25);
      if (v26)
      {
LABEL_50:
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
LABEL_51:
          __p = *(a1 + 40);
          goto LABEL_58;
        }

LABEL_57:
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
LABEL_58:
        v27 = *MEMORY[0x29EDBEB68];
        v28 = strlen(*MEMORY[0x29EDBEB68]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v28 == __p.__r_.__value_.__l.__size_)
          {
            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v29 = __p.__r_.__value_.__r.__words[0];
            v30 = memcmp(__p.__r_.__value_.__l.__data_, v27, v28);
            operator delete(v29);
            if (!v30)
            {
              goto LABEL_65;
            }
          }

          else
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else if (v28 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, v27, v28))
        {
LABEL_65:
          BootModule::reportStatisticsSoftReset_sync(v2);
        }

LABEL_67:
        *(v2 + 194) = 0;
        memset(&buf, 170, 16);
        (*(*v2 + 88))(&buf, v2);
        if (!buf.__r_.__value_.__r.__words[0])
        {
LABEL_102:
          size = buf.__r_.__value_.__l.__size_;
          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          xpc_release(*v65);
          goto LABEL_106;
        }

        Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
        v31 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v31 + 1) + 16))(*(&v31 + 1));
          std::__shared_weak_count::__release_weak(*(&v31 + 1));
        }

        if (v31)
        {
          Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
          ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
          v33 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = ScaledTime;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            ScaledTime = v34;
          }

          v35 = ScaledTime / 1000;
        }

        else
        {
          v35 = 360000;
        }

        object = 0xAAAAAAAAAAAAAAAALL;
        v36 = buf.__r_.__value_.__r.__words[0];
        v37 = operator new(0x38uLL);
        strcpy(v37, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v38 = *(v36 + 48);
        std::string::__init_copy_ctor_external(&__p, v37, 0x33uLL);
        (*(*v38 + 24))(&object, v38, &__p, v35);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        operator delete(v37);
        v40 = *(a1 + 160);
        v39 = *(a1 + 168);
        __p.__r_.__value_.__r.__words[0] = v2;
        __p.__r_.__value_.__l.__size_ = v40;
        __p.__r_.__value_.__r.__words[2] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(&v53, (a1 + 40));
        v41 = *(a1 + 152);
        if (v41)
        {
          v41 = _Block_copy(v41);
        }

        aBlock = v41;
        v61 = object;
        if (object)
        {
          dispatch_retain(object);
          v42 = object;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(v2 + 88);
        v44 = operator new(0x98uLL);
        v45 = v44;
        *&v44->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v46 = __p.__r_.__value_.__r.__words[2];
        v44->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(v44 + 1, &v53);
        v47 = aBlock;
        if (aBlock)
        {
          v47 = _Block_copy(aBlock);
        }

        v48 = v61;
        v45[5].__words[2] = v47;
        v45[6].__words[0] = v48;
        v61 = 0;
        dispatch_group_notify_f(v42, v43, v45, _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_);
        if (v61)
        {
          dispatch_release(v61);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v59 < 0)
        {
          operator delete(v58);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_96:
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_109;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        operator delete(v56);
        if ((v55 & 0x80000000) == 0)
        {
LABEL_97:
          if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_110;
        }

LABEL_109:
        operator delete(v54);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_98:
          v49 = __p.__r_.__value_.__r.__words[2];
          if (!__p.__r_.__value_.__r.__words[2])
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

LABEL_110:
        operator delete(v53.__r_.__value_.__l.__data_);
        v49 = __p.__r_.__value_.__r.__words[2];
        if (!__p.__r_.__value_.__r.__words[2])
        {
LABEL_100:
          if (object)
          {
            dispatch_release(object);
          }

          goto LABEL_102;
        }

LABEL_99:
        std::__shared_weak_count::__release_weak(v49);
        goto LABEL_100;
      }
    }

    else if (v24 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, v23, v24))
    {
      goto LABEL_50;
    }

    BootModule::reportStatisticsHardResetTime_sync(v2);
    goto LABEL_67;
  }

  v5 = v3;
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_297433A20;
  strcpy(__p.__r_.__value_.__l.__data_, "Reset rejected; Boot state is: ");
  v6 = off_29EE683A8[v5];
  v7 = strlen(v6);
  v8 = std::string::append(&__p, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v2 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v18 = buf.__r_.__value_.__r.__words[0];
    ResetInfo::asString((a1 + 40), &__p);
    p_buf = &buf;
    if (v17 < 0)
    {
      p_buf = v18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v65 = 136315394;
    *&v65[4] = p_buf;
    v66 = 2080;
    v67 = p_p;
    _os_log_debug_impl(&dword_297288000, v10, OS_LOG_TYPE_DEBUG, "#D %s; %s", v65, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = buf;
    }

    (*(v11 + 16))(v11, 3760250880, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_14;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_106:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_29736FDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::submitBBResetMetric_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "No input is given", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of baseband reset", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_BOOL_create(*(a1 + 360));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE5A8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(a1 + 368));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF890], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 416));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF898], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v15 = *v15;
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v18 = *v18;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v21 = *v21;
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF888], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_int64_create(*(a1 + 328));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE548], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE588], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(524310);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE660], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = *a2;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE580], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = *MEMORY[0x29EDBEBD0];
  v33 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v33 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v33 | 7) + 1;
    }

    v35 = operator new(v36);
    v40 = v34;
    v41 = v36 | 0x8000000000000000;
    *buf = v35;
LABEL_48:
    memmove(v35, v32, v34);
    *(v35 + v34) = 0;
    object = v8;
    if (v8)
    {
      goto LABEL_43;
    }

LABEL_49:
    object = xpc_null_create();
    goto LABEL_50;
  }

  HIBYTE(v41) = v33;
  v35 = buf;
  if (v33)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  object = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

LABEL_43:
  xpc_retain(v8);
LABEL_50:
  v37 = 0;
  Service::runCommand(a1, buf, &object, &v37);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v8);
}

void sub_2973704C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::updateResetInfoAnalyticsEvent_sync(uint64_t a1, xpc_object_t *a2)
{
  v191[2] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
    }

    goto LABEL_282;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of baseband reset", &buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v5)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v11 = xpc_BOOL_create(*(a1 + 360));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "inVoiceCall", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 368));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(a1 + 416));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat2", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v17 = *v17;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v20 = *v20;
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN2", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = *(a1 + 400);
  if (v23)
  {
    v24 = xpc_uint64_create(v23);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
  }

  v26 = *(a1 + 448);
  if (v26)
  {
    v27 = xpc_uint64_create(v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId2", v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
  }

  v29 = *(a1 + 408);
  if (v29)
  {
    v30 = xpc_uint64_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac", v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
  }

  v32 = *(a1 + 456);
  if (v32)
  {
    v33 = xpc_uint64_create(v32);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac2", v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
  }

  v35 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v35 = *v35;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "sku", v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  v38 = xpc_int64_create(*(a1 + 328));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "operatingMode", v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED80]);
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v41 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  is_transcription_pending = util::apfs::is_transcription_pending(v42);
  v44 = xpc_BOOL_create((is_transcription_pending ^ 1u) & v41);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "isMTBF", v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  memset(__s1, 170, sizeof(__s1));
  v46 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  *&buf = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &buf, *MEMORY[0x29EDBF5C8], v47);
  xpc_release(buf);
  if (is_transcription_pending)
  {
    v48 = *(a1 + 104);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_297288000, v48, OS_LOG_TYPE_DEFAULT, "#I APFS transcription is pending", &buf, 2u);
    }

    if (v41)
    {
      v49 = *(a1 + 104);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_297288000, v49, OS_LOG_TYPE_DEFAULT, "#I Downgrading Baseband Reset MTBF metric because APFS transcription is pending", &buf, 2u);
      }
    }
  }

  if (__s1[2] >= 0)
  {
    v50 = __s1;
  }

  else
  {
    v50 = __s1[0];
  }

  v51 = xpc_string_create(v50);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetType", v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = strlen(*MEMORY[0x29EDBF6D8]);
  v54 = v53;
  v55 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v53 != -1)
    {
      v56 = __s1;
      goto LABEL_78;
    }

LABEL_283:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v53 == -1)
  {
    goto LABEL_283;
  }

  v56 = __s1[0];
  v55 = __s1[1];
LABEL_78:
  if (v55 >= v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = v55;
  }

  if (!memcmp(v56, *MEMORY[0x29EDBF6D8], v57) && v55 == v54)
  {
    v58 = xpc_string_create(*MEMORY[0x29EDBE918]);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v58);
    v59 = xpc_null_create();
    xpc_release(v58);
    xpc_release(v59);
    goto LABEL_246;
  }

  memset(&v180, 170, sizeof(v180));
  v60 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  *&buf = v60;
  if (v60)
  {
    xpc_retain(v60);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v180, &buf, "no-reset-reason", v61);
  xpc_release(buf);
  memset(&__str, 170, sizeof(__str));
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v180;
  }

  v62 = *MEMORY[0x29EDBF750];
  v63 = strlen(*MEMORY[0x29EDBF750]);
  v64 = v63;
  v65 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v63 != -1)
    {
      v65 = __s1[1];
      if (__s1[1] >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = __s1[1];
      }

      v67 = memcmp(__s1[0], v62, v68);
      if (v67)
      {
        goto LABEL_232;
      }

      goto LABEL_104;
    }

LABEL_285:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v63 == -1)
  {
    goto LABEL_285;
  }

  if (SHIBYTE(__s1[2]) >= v63)
  {
    v66 = v63;
  }

  else
  {
    v66 = SHIBYTE(__s1[2]);
  }

  v67 = memcmp(__s1, v62, v66);
  if (v67)
  {
    goto LABEL_232;
  }

LABEL_104:
  if (v65 == v64)
  {
    v69 = capabilities::radio::maverick(v67);
    if (v69)
    {
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v70;
      v178 = v70;
      v175 = v70;
      v176 = v70;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(ATCS_TIMEOUT on message for svc=[0-9]*)(client=[0-9]*).*(txid=[0-9]*)(msgid=0x[a-zA-Z0-9]*)\\)(.*)", 0);
      *&v71 = 0xAAAAAAAAAAAAAAAALL;
      *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v71;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v71;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      size = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v180;
      }

      else
      {
        v73 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v74 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v73, (v73 + size), &buf, 0);
      v75 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v180;
      }

      else
      {
        v76 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v76, (v76 + v75), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (!v74)
      {
        goto LABEL_226;
      }

      begin = v167[0].__begin_;
      v78 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      if (v78 <= 1)
      {
        v79 = v167;
      }

      else
      {
        v79 = v167[0].__begin_;
      }

      if (v79[1].matched)
      {
        if (v78 <= 1)
        {
          v80 = v167;
        }

        else
        {
          v80 = v167[0].__begin_;
        }

        i = v80[1].first.__i_;
        v82 = v80[1].second.__i_;
        v83 = v82 - i;
        if ((v82 - i) > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v83 > 0x16)
        {
          if ((v83 | 7) == 0x17)
          {
            v93 = 25;
          }

          else
          {
            v93 = (v83 | 7) + 1;
          }

          v157 = v93;
          p_dst = operator new(v93);
          __dst.__r_.__value_.__l.__size_ = v82 - i;
          __dst.__r_.__value_.__r.__words[2] = v157 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v82 - i;
          p_dst = &__dst;
        }

        if (v82 != i)
        {
          memmove(p_dst, i, v82 - i);
        }

        p_dst->__r_.__value_.__s.__data_[v83] = 0;
        v5 = MEMORY[0x29EDCAA00];
      }

      else
      {
        memset(&__dst, 0, sizeof(__dst));
      }

      p_matched = &begin[4].matched;
      if (v78 <= 4)
      {
        p_matched = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_matched->__value_) == 1)
      {
        v95 = &begin[4];
        if (v78 <= 4)
        {
          v95 = &v167[1];
        }

        v96 = v95->__begin_;
        p_second = &begin[4].second;
        if (v78 <= 4)
        {
          p_second = &v167[1].__end_;
        }

        v98 = *p_second;
        v99 = *p_second - v96;
        if (v99 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v99 > 0x16)
        {
          if ((v99 | 7) == 0x17)
          {
            v104 = 25;
          }

          else
          {
            v104 = (v99 | 7) + 1;
          }

          v100 = operator new(v104);
          v164 = v99;
          v165 = v104 | 0x8000000000000000;
          v163 = v100;
        }

        else
        {
          HIBYTE(v165) = *p_second - v96;
          v100 = &v163;
        }

        if (v98 != v96)
        {
          memmove(v100, v96, v99);
        }

        *(v100 + v99) = 0;
        v103 = HIBYTE(v165);
        v102 = v163;
        v101 = v164;
      }

      else
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 0;
      }

      if ((v103 & 0x80u) == 0)
      {
        v105 = &v163;
      }

      else
      {
        v105 = v102;
      }

      if ((v103 & 0x80u) == 0)
      {
        v106 = v103;
      }

      else
      {
        v106 = v101;
      }

      v107 = std::string::append(&__dst, v105, v106);
      v108 = *&v107->__r_.__value_.__l.__data_;
      *&v183[0] = *(&v107->__r_.__value_.__l + 2);
      buf = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      p_end_cap = &v167[0].__begin_[5].matched;
      if (v109 <= 5)
      {
        p_end_cap = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_end_cap->__value_) == 1)
      {
        v111 = v109 > 5;
        if (v109 <= 5)
        {
          v112 = &v167[1];
        }

        else
        {
          v112 = v167[0].__begin_ + 5;
        }

        v113 = v112->first.__i_;
        p_end = &v167[0].__begin_[5].second;
        if (!v111)
        {
          p_end = &v167[1].__end_;
        }

        v115 = *p_end;
        v116 = *p_end - v113;
        if (v116 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v116 > 0x16)
        {
          if ((v116 | 7) == 0x17)
          {
            v121 = 25;
          }

          else
          {
            v121 = (v116 | 7) + 1;
          }

          p_p = operator new(v121);
          v161 = v116;
          v162 = v121 | 0x8000000000000000;
          __p = p_p;
        }

        else
        {
          HIBYTE(v162) = *p_end - v113;
          p_p = &__p;
        }

        if (v115 != v113)
        {
          memmove(p_p, v113, v116);
        }

        *(p_p + v116) = 0;
        v120 = HIBYTE(v162);
        v119 = __p;
        v118 = v161;
      }

      else
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        __p = 0;
        v161 = 0;
        v162 = 0;
      }

      if ((v120 & 0x80u) == 0)
      {
        v122 = &__p;
      }

      else
      {
        v122 = v119;
      }

      if ((v120 & 0x80u) == 0)
      {
        v123 = v120;
      }

      else
      {
        v123 = v118;
      }

      v124 = std::string::append(&buf, v122, v123);
      v125 = v124->__r_.__value_.__r.__words[0];
      v191[0] = v124->__r_.__value_.__l.__size_;
      *(v191 + 7) = *(&v124->__r_.__value_.__r.__words[1] + 7);
      v126 = HIBYTE(v124->__r_.__value_.__r.__words[2]);
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v125;
      __str.__r_.__value_.__l.__size_ = v191[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v191 + 7);
      *(&__str.__r_.__value_.__s + 23) = v126;
      if (SHIBYTE(v162) < 0)
      {
        operator delete(__p);
        if ((SBYTE7(v183[0]) & 0x80000000) == 0)
        {
LABEL_209:
          if ((SHIBYTE(v165) & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_216;
        }
      }

      else if ((SBYTE7(v183[0]) & 0x80000000) == 0)
      {
        goto LABEL_209;
      }

      operator delete(buf);
      if ((SHIBYTE(v165) & 0x80000000) == 0)
      {
LABEL_210:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_217;
      }

LABEL_216:
      operator delete(v163);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_211:
        v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_212;
        }

        goto LABEL_218;
      }

LABEL_217:
      operator delete(__dst.__r_.__value_.__l.__data_);
      v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_212:
        if ((v127 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v180, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v180 = __str;
        }

LABEL_226:
        if (v167[0].__begin_)
        {
          v167[0].__end_ = v167[0].__begin_;
          operator delete(v167[0].__begin_);
        }

        v130 = v178;
        if (v178 && !atomic_fetch_add((v178 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        std::locale::~locale(&v175);
        goto LABEL_232;
      }

LABEL_218:
      if ((v127 & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((v127 & 0x80u) == 0)
      {
        v129 = v127;
      }

      else
      {
        v129 = __str.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v180.__r_.__value_.__l.__data_, p_str, v129);
      goto LABEL_226;
    }

    if (capabilities::radio::ice(v69))
    {
      *&v85 = 0xAAAAAAAAAAAAAAAALL;
      *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v85;
      v178 = v85;
      v175 = v85;
      v176 = v85;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(.*ARI_TIMEOUT -.*)( SZ\\([0-9]*\\).*)", 0);
      *&v86 = 0xAAAAAAAAAAAAAAAALL;
      *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v86;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v86;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      v87 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v180;
      }

      else
      {
        v88 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v89 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v88, (v88 + v87), &buf, 0);
      v90 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v180;
      }

      else
      {
        v91 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v90 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v91, (v91 + v90), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (v89)
      {
        v92 = v167;
        if (0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3) > 1)
        {
          v92 = v167[0].__begin_;
        }

        std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](&buf, &v92[1]);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__str.__r_.__value_.__l.__data_ = buf;
        __str.__r_.__value_.__r.__words[2] = *&v183[0];
        std::string::operator=(&v180, &__str);
      }

      goto LABEL_226;
    }
  }

LABEL_232:
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v180;
  }

  else
  {
    v131 = v180.__r_.__value_.__r.__words[0];
  }

  v132 = xpc_string_create(v131);
  if (!v132)
  {
    v132 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetReason", v132);
  v133 = xpc_null_create();
  xpc_release(v132);
  xpc_release(v133);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &__str;
  }

  else
  {
    v134 = __str.__r_.__value_.__r.__words[0];
  }

  v135 = xpc_string_create(v134);
  if (!v135)
  {
    v135 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "shortResetReason", v135);
  v136 = xpc_null_create();
  xpc_release(v135);
  xpc_release(v136);
  v137 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v137)
  {
    v137 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v137);
  v138 = xpc_null_create();
  xpc_release(v137);
  xpc_release(v138);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_246;
    }
  }

  else if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_246;
  }

  operator delete(v180.__r_.__value_.__l.__data_);
LABEL_246:
  v139 = xpc_string_create("metricsCCBasebandResetInfo");
  if (!v139)
  {
    v139 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE7F8], v139);
  v140 = xpc_null_create();
  xpc_release(v139);
  xpc_release(v140);
  v141 = xpc_string_create("Reset");
  if (!v141)
  {
    v141 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B8], v141);
  v142 = xpc_null_create();
  xpc_release(v141);
  xpc_release(v142);
  if (v10)
  {
    xpc_retain(v10);
    v143 = v10;
  }

  else
  {
    v143 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF020], v143);
  v144 = xpc_null_create();
  xpc_release(v143);
  xpc_release(v144);
  v145 = xpc_dictionary_create(0, 0, 0);
  if (v145 || (v145 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v145) == v5)
    {
      xpc_retain(v145);
      v146 = v145;
    }

    else
    {
      v146 = xpc_null_create();
    }
  }

  else
  {
    v146 = xpc_null_create();
    v145 = 0;
  }

  xpc_release(v145);
  v147 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v147)
  {
    v147 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE588], v147);
  v148 = xpc_null_create();
  xpc_release(v147);
  xpc_release(v148);
  if (v8)
  {
    xpc_retain(v8);
    v149 = v8;
  }

  else
  {
    v149 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE580], v149);
  v150 = xpc_null_create();
  xpc_release(v149);
  xpc_release(v150);
  v151 = *MEMORY[0x29EDBEBD0];
  v152 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v152 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v153 = v152;
  if (v152 >= 0x17)
  {
    if ((v152 | 7) == 0x17)
    {
      v155 = 25;
    }

    else
    {
      v155 = (v152 | 7) + 1;
    }

    p_buf = operator new(v155);
    *(&buf + 1) = v153;
    *&v183[0] = v155 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_275:
    memmove(p_buf, v151, v153);
    *(p_buf + v153) = 0;
    object = v146;
    if (v146)
    {
      goto LABEL_270;
    }

LABEL_276:
    object = xpc_null_create();
    goto LABEL_277;
  }

  BYTE7(v183[0]) = v152;
  p_buf = &buf;
  if (v152)
  {
    goto LABEL_275;
  }

  LOBYTE(buf) = 0;
  object = v146;
  if (!v146)
  {
    goto LABEL_276;
  }

LABEL_270:
  xpc_retain(v146);
LABEL_277:
  v158 = 0;
  Service::runCommand(a1, &buf, &object, &v158);
  xpc_release(object);
  object = 0;
  if (SBYTE7(v183[0]) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v146);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v10);
  xpc_release(v8);
LABEL_282:
  v156 = *MEMORY[0x29EDCA608];
}

void sub_297371924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a37);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  xpc_release(v64);
  xpc_release(v63);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsHardResetTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of hard reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF4F0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = (*(this + 132) + 1);
  *(this + 132) = v8;
  v9 = xpc_int64_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  object = v4;
  *buf = operator new(0x20uLL);
  v14 = xmmword_29742C690;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = 0;
  Service::runCommand(this, buf, &object, &v11);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_297371F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsSoftReset_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of soft reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = (*(this + 133) + 1);
  *(this + 133) = v5;
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_29742C690;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2973721BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEEUb_EUb0_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    v4 = *(a1 + 16);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_10;
  }

LABEL_14:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_10:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *__copy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1, void *a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 5));
  result = a2[19];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[20];
  v5 = a2[21];
  *(a1 + 152) = result;
  *(a1 + 160) = v6;
  *(a1 + 168) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v4 = *(a1 + 40);

  operator delete(v4);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1, void *a2)
{
  v4 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 56), (a2 + 7));
  result = a2[21];
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 168) = result;
  return result;
}

void sub_297372434(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_13:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

LABEL_8:

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN10BootModule4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 104);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *__p = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", __p, 2u);
  }

  v5 = capabilities::ipc::supportsPCI(v4);
  if (v5)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule4initEv_block_invoke_10;
    aBlock[3] = &__block_descriptor_tmp_16_1;
    v7 = a1[5];
    v6 = a1[6];
    aBlock[4] = v2;
    aBlock[5] = v7;
    v31 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = _Block_copy(aBlock);
    v9 = *(v2 + 336);
    *(v2 + 336) = v8;
    if (v9)
    {
      _Block_release(v9);
    }

    v5 = v31;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  capabilities::abs::supportedMobileAssetTypes(v5);
  v10 = capabilities::abs::operator&();
  if (v10 || (capabilities::abs::supportedMobileAssetTypes(v10), capabilities::abs::operator&()))
  {
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v11 = off_2A1399498;
    if (!off_2A1399498)
    {
      SharedData::create_default_global(__p);
      v12 = *__p;
      *__p = 0;
      *&__p[8] = 0;
      v13 = *(&off_2A1399498 + 1);
      off_2A1399498 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&__p[8];
      if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A1399498;
    }

    v15 = *(&off_2A1399498 + 1);
    v28 = v11;
    v29 = *(&off_2A1399498 + 1);
    if (*(&off_2A1399498 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_297431610;
    strcpy(*__p, "Baseband Mobile Asset PT image");
    SharedData::setPreference<char const*>(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v17 = off_2A1399498;
        if (!off_2A1399498)
        {
          SharedData::create_default_global(__p);
          v18 = *__p;
          *__p = 0;
          *&__p[8] = 0;
          v19 = *(&off_2A1399498 + 1);
          off_2A1399498 = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v20 = *&__p[8];
          if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          v17 = off_2A1399498;
        }

        v21 = *(&off_2A1399498 + 1);
        v28 = v17;
        v29 = *(&off_2A1399498 + 1);
        if (*(&off_2A1399498 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297431620;
        strcpy(*__p, "BasebandMobileAssetVerificationState");
        SharedData::getPreference<std::string>(v17, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A1399498;
          if (!off_2A1399498)
          {
LABEL_43:
            SharedData::create_default_global(__p);
            v23 = *__p;
            *__p = 0;
            *&__p[8] = 0;
            v24 = *(&off_2A1399498 + 1);
            off_2A1399498 = v23;
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v25 = *&__p[8];
            if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }

            v22 = off_2A1399498;
          }
        }

        else
        {
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A1399498;
          if (!off_2A1399498)
          {
            goto LABEL_43;
          }
        }

        v26 = *(&off_2A1399498 + 1);
        v28 = v22;
        v29 = *(&off_2A1399498 + 1);
        if (*(&off_2A1399498 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297430680;
        strcpy(*__p, "BasebandMobileAssetVerificationVersion");
        SharedData::getPreference<std::string>(v22, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        return;
      }
    }

    else
    {
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }
    }

    *__p = 0;
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Clear MobileAsset PT path", __p, 2u);
    goto LABEL_28;
  }
}

void sub_297372B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297372B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297372B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_10(void *a1, int a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    v18 = v10;
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_12;
      }

      memset(&v16, 170, sizeof(v16));
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
      }

      else
      {
        v16 = *a3;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule4initEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_14_1;
      v12[4] = v9;
      v14 = a2;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }

      v15 = a4;
      ctu::SharedSynchronizable<BootModule>::execute_wrapped((v9 + 72), v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_12:
          if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }

LABEL_16:
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          return;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_16;
      }
    }
  }
}

void sub_297372D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 64);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_2(uint64_t a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!*(a1 + 64))
  {
    v6 = *(a1 + 63);
    v7 = *(a1 + 48);
    if (v6 >= 0)
    {
      v8 = *(a1 + 63);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    v9 = v8 + 11;
    if (v8 + 11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = (a1 + 40);
    if (v9 < 0x17)
    {
      v63[1] = 0;
      v64 = 0;
      HIBYTE(v64) = v8 + 11;
      *(v63 + 7) = 540693582;
      v63[0] = *"PCI-EVENT: ";
      v13 = &v63[1] + 3;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v9 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v9 | 7) + 1;
      }

      v12 = operator new(v11);
      v63[1] = (v8 + 11);
      v64 = v11 | 0x8000000000000000;
      v63[0] = v12;
      *(v12 + 7) = 540693582;
      *v12 = *"PCI-EVENT: ";
      v13 = v12 + 11;
    }

    v14 = *v10;
    if (v6 >= 0)
    {
      v15 = (a1 + 40);
    }

    else
    {
      v15 = *v10;
    }

    memmove(v13, v15, v8);
LABEL_20:
    v13[v8] = 0;
    if ((v6 & 0x80000000) == 0 || v7 != 27 || (**v10 == 0x67676972742D5041 ? (v16 = *(*v10 + 8) == 0x7361622064657265) : (v16 = 0), v16 ? (v17 = *(*v10 + 16) == 0x657220646E616265) : (v17 = 0), v17 ? (v18 = *(*v10 + 19) == 0x746573657220646ELL) : (v18 = 0), !v18))
    {
LABEL_57:
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v71 = v32;
      v72 = v32;
      v69 = v32;
      v70 = v32;
      v67 = v32;
      v68 = v32;
      *buf = v32;
      v33 = *MEMORY[0x29EDBEB60];
      v34 = strlen(*MEMORY[0x29EDBEB60]);
      if (v34 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v35 = v34;
      if (v34 >= 0x17)
      {
        if ((v34 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v34 | 7) + 1;
        }

        v36 = operator new(v37);
        *&__dst[8] = v35;
        *&__dst[16] = v37 | 0x8000000000000000;
        *__dst = v36;
      }

      else
      {
        __dst[23] = v34;
        v36 = __dst;
        if (!v34)
        {
LABEL_66:
          v36[v35] = 0;
          v38 = *MEMORY[0x29EDBF750];
          v39 = strlen(*MEMORY[0x29EDBF750]);
          if (v39 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v40 = v39;
          if (v39 >= 0x17)
          {
            if ((v39 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v39 | 7) + 1;
            }

            v41 = operator new(v42);
            *(&v61 + 1) = v40;
            v62 = v42 | 0x8000000000000000;
            *&v61 = v41;
          }

          else
          {
            HIBYTE(v62) = v39;
            v41 = &v61;
            if (!v39)
            {
LABEL_75:
              v41[v40] = 0;
              Timestamp::Timestamp(v57);
              Timestamp::asString(v57, 0, 9, __p);
              v56 = 0;
              LOBYTE(v55) = 0;
              ResetInfo::ResetInfo(buf, __dst, &v61, v63, __p, 7, &v55);
              if (v60 < 0)
              {
                operator delete(__p[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
LABEL_77:
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_77;
                }
              }

              operator delete(v61);
              if ((__dst[23] & 0x80000000) == 0)
              {
LABEL_78:
                v43 = v2[13];
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_83;
                }

LABEL_104:
                if (*(a1 + 63) < 0)
                {
                  v10 = *v10;
                }

                v46 = *(a1 + 68);
                *__dst = 136315394;
                *&__dst[4] = v10;
                *&__dst[12] = 1024;
                *&__dst[14] = v46;
                _os_log_error_impl(&dword_297288000, v43, OS_LOG_TYPE_ERROR, "PCI event: %s, sleeping for %u ms, then requesting Baseband reset", __dst, 0x12u);
LABEL_83:
                usleep(1000 * *(a1 + 68));
                ResetInfo::ResetInfo(&v48, buf);
                aBlock = 0;
                BootModule::requestReset(v2, &v48, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v54 < 0)
                {
                  operator delete(v53);
                  if ((v52 & 0x80000000) == 0)
                  {
LABEL_87:
                    if ((v50 & 0x80000000) == 0)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_97;
                  }
                }

                else if ((v52 & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                operator delete(v51);
                if ((v50 & 0x80000000) == 0)
                {
LABEL_88:
                  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                operator delete(v49);
                if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_89:
                  if ((SHIBYTE(v72) & 0x80000000) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                operator delete(v48.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v72) & 0x80000000) == 0)
                {
LABEL_90:
                  if ((SBYTE7(v70) & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_100;
                }

LABEL_99:
                operator delete(*(&v71 + 1));
                if ((SBYTE7(v70) & 0x80000000) == 0)
                {
LABEL_91:
                  if ((SHIBYTE(v68) & 0x80000000) == 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_101;
                }

LABEL_100:
                operator delete(v69);
                if ((SHIBYTE(v68) & 0x80000000) == 0)
                {
LABEL_92:
                  if ((SBYTE7(v67) & 0x80000000) == 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_102;
                }

LABEL_101:
                operator delete(*(&v67 + 1));
                if ((SBYTE7(v67) & 0x80000000) == 0)
                {
LABEL_93:
                  if ((SHIBYTE(v64) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

LABEL_103:
                  operator delete(v63[0]);
                  v45 = *MEMORY[0x29EDCA608];
                  return;
                }

LABEL_102:
                operator delete(*buf);
                if ((SHIBYTE(v64) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                goto LABEL_103;
              }

LABEL_82:
              operator delete(*__dst);
              v43 = v2[13];
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_83;
              }

              goto LABEL_104;
            }
          }

          memmove(v41, v38, v40);
          goto LABEL_75;
        }
      }

      memmove(v36, v33, v35);
      goto LABEL_66;
    }

    v19 = SHIBYTE(v64);
    if ((SHIBYTE(v64) & 0x8000000000000000) != 0)
    {
      v19 = v63[1];
      v22 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v22 - v63[1] < 0x1F)
      {
        v20 = v63[1] + 31;
        if ((0x7FFFFFFFFFFFFFF7 - (v64 & 0x7FFFFFFFFFFFFFFFLL)) < v63[1] - v22 + 31)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = v63[0];
        if (v22 > 0x3FFFFFFFFFFFFFF2)
        {
          v26 = 0;
          v25 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
          v27 = operator new(v25);
          v28 = v27;
          if (v19)
          {
            memmove(v27, v21, v19);
          }

          qmemcpy(v28 + v19, " [likely caused by bbctl reset]", 31);
          if (!v26)
          {
            operator delete(v21);
          }

          v63[1] = v20;
          v64 = v25 | 0x8000000000000000;
          v63[0] = v28;
          v29 = &v20[v28];
          goto LABEL_56;
        }

LABEL_39:
        v23 = 2 * v22;
        if (v20 > 2 * v22)
        {
          v23 = v20;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v25 = v24;
        }

        else
        {
          v25 = 23;
        }

        v26 = v22 == 22;
        goto LABEL_48;
      }

      v30 = v63[0];
      qmemcpy(v63[0] + v63[1], " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      v63[1] = (v19 + 31);
    }

    else
    {
      if (SHIBYTE(v64) < 0x17)
      {
        v20 = (SHIBYTE(v64) + 31);
        v21 = v63;
        v22 = 22;
        goto LABEL_39;
      }

      v30 = v63;
      qmemcpy(v63 + SHIBYTE(v64), " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      HIBYTE(v64) = (v19 + 31) & 0x7F;
    }

    v29 = v30 + v31;
LABEL_56:
    *v29 = 0;
    goto LABEL_57;
  }

  v3 = v2[13];
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_94:
    v44 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  *buf = 136315138;
  *&buf[4] = v4;
  _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I PCI event: %s", buf, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_297373460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SharedData::setPreference<char const*>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(v10, v4);
  v5 = v10[0];
  v6 = *MEMORY[0x29EDB8ED8];
  value = 0;
  ctu::cf::convert_copy(&value, "", 0x8000100, v6, v7);
  v8 = value;
  v10[1] = value;
  if (value)
  {
    v9 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v5, value, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
    CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9);
    CFRelease(v8);
  }

  MEMORY[0x29C26DF80](v10);
  os_unfair_lock_unlock((a1 + 40));
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, v4);
  v5 = (**a1)(a1, v6);
  if (v5)
  {
    ctu::cf::assign();
    CFRelease(v5);
  }

  MEMORY[0x29C26DF80](&v6);
  os_unfair_lock_unlock((a1 + 40));
}

_WORD *BootModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

char *BootModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  result = operator new(3uLL);
  a1[1] = result + 3;
  a1[2] = result + 3;
  *result = 256;
  result[2] = 3;
  *a1 = result;
  return result;
}

void BootModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 == 3)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36;
    v8[3] = &__block_descriptor_tmp_43_0;
    v7 = *a3;
    v8[4] = a1;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v8);
    if (object)
    {
      dispatch_group_leave(object);
      v5 = object;
      if (object)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
      v12[3] = &__block_descriptor_tmp_24_2;
      v4 = *a3;
      v12[4] = a1;
      v13 = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v13);
      }

      ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v12);
      if (!v13)
      {
        return;
      }

      dispatch_group_leave(v13);
      v5 = v13;
      if (!v13)
      {
        return;
      }

LABEL_18:
      dispatch_release(v5);
      return;
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25;
    v10[3] = &__block_descriptor_tmp_35_2;
    v6 = *a3;
    v10[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v10);
    if (group)
    {
      dispatch_group_leave(group);
      v5 = group;
      if (group)
      {
        goto LABEL_18;
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown prepare", &buf, 2u);
  }

  v4 = *(v2 + 576);
  if (v4 <= 8)
  {
    v5 = 1 << v4;
    if ((v5 & 0x1E1) != 0)
    {
      (*(*v2 + 104))(v2, 8);
      v6 = *(v2 + 176);
      *(v2 + 176) = 0;
      if (v6)
      {
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }

    else if ((v5 & 0xE) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(v7);
      }

      v8 = *(v2 + 176);
      *(v2 + 176) = v7;
      if (v8)
      {
        dispatch_group_leave(v8);
        dispatch_release(v8);
      }

      v9 = *(v2 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Holding shutdown request session", &buf, 2u);
      }
    }

    else
    {
      (*(*v2 + 104))(v2, 7);
    }
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v20, v2);
  if (v20)
  {
    Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
    v10 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v10 + 1) + 16))(*(&v10 + 1));
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
      if (v10)
      {
LABEL_19:
        Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
        ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
        size = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = ScaledTime;
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
          ScaledTime = v13;
        }

        v14 = ScaledTime / 1000;
        goto LABEL_25;
      }
    }

    else if (v10)
    {
      goto LABEL_19;
    }

    v14 = 240000;
LABEL_25:
    v15 = v20;
    v16 = operator new(0x38uLL);
    strcpy(v16, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v17 = *(v15 + 48);
    std::string::__init_copy_ctor_external(&buf, v16, 0x35uLL);
    (*(*v17 + 24))(&object, v17, &buf, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    operator delete(v16);
  }

  if (notify_is_valid_token(*(v2 + 600)))
  {
    notify_cancel(*(v2 + 600));
  }

  v18 = v21;
  if (v21)
  {
    if (!atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_297373D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v18);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_297373DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3 || (v4 = v2[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v2[13];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v2[13];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Shutdown baseband", buf, 2u);
  }

LABEL_6:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26;
  aBlock[3] = &__block_descriptor_tmp_32_1;
  v8 = *(a1 + 40);
  aBlock[4] = v2;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = v4;
  v12 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  (*(*v2 + 120))(v2, &v13);
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297373FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26(void *a1)
{
  v2 = a1[7];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v37 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[6])
  {
LABEL_52:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }

    return;
  }

  v35 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v35 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF420], v5, v7);
  v8 = *MEMORY[0x29EDBF460];
  v9 = strlen(*MEMORY[0x29EDBF460]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v9 | 7) + 1;
    }

    v11 = operator new(v13);
    __dst[1] = v10;
    v34 = v13 | 0x8000000000000000;
    __dst[0] = v11;
LABEL_15:
    memmove(v11, v8, v10);
    *(v10 + v11) = 0;
    v12 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v34) = v9;
  v11 = __dst;
  if (v9)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v12 = v35;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_16:
  v14 = CFGetTypeID(v12);
  if (v14 == CFDictionaryGetTypeID())
  {
    cf = v12;
    CFRetain(v12);
    goto LABEL_19;
  }

LABEL_18:
  cf = 0;
LABEL_19:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28_4;
  v15 = a1[5];
  aBlock[4] = v3;
  group = v15;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(group);
  }

  v16 = a1[7];
  v29 = a1[6];
  v30 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v31);
  if (v31)
  {
    _Block_release(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = *MEMORY[0x29EDBEBF0];
  v18 = strlen(*MEMORY[0x29EDBEBF0]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v20 = operator new(v21);
    __p[1] = v19;
    v26 = v21 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_37;
  }

  HIBYTE(v26) = v18;
  v20 = __p;
  if (v18)
  {
LABEL_37:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  v23 = 0;
  v24 = 0;
  Service::broadcastEvent(v3, __p, &v24, &v23);
  if (v23)
  {
    _Block_release(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v4 = v37;
  if (v37)
  {
    goto LABEL_52;
  }
}

void sub_2973743A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, std::__shared_weak_count *a25, void *a26, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
    v29 = a25;
    if (!a25)
    {
LABEL_5:
      v30 = group;
      if (!group)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a25;
    if (!a25)
    {
      goto LABEL_5;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  v30 = group;
  if (!group)
  {
    goto LABEL_11;
  }

LABEL_9:
  dispatch_group_leave(v30);
  if (group)
  {
    dispatch_release(group);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 80);
    _Unwind_Resume(a1);
  }

LABEL_11:
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[6];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3;
        v7[3] = &__block_descriptor_tmp_27;
        v7[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v6);
  v2 = v6;
  if (v6)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v8, v3, 0x35uLL);
    (*(*v4 + 32))(v4, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
  }

  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2973746F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_29737472C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v18, v1);
  v2 = v18;
  if (v18)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v20, v3, 0x33uLL);
    (*(*v4 + 32))(v4, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
    v5 = v18;
    v6 = operator new(0x38uLL);
    strcpy(v6, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v7 = *(v5 + 48);
    std::string::__init_copy_ctor_external(&v20, v6, 0x35uLL);
    (*(*v7 + 32))(v7, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v6);
  }

  v8 = v1[73];
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = v1[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      if (v9)
      {
        v11 = "successful";
      }

      LODWORD(v20.__r_.__value_.__l.__data_) = 136315138;
      *(v20.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (forced) %s", &v20, 0xCu);
    }
  }

  v12 = v1[18];
  v1[17] = 0;
  v1[18] = 0;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v1[44];
  v1[43] = 0;
  v1[44] = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v1[74];
  v1[73] = 0;
  v1[74] = 0;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v1[65];
  if (v15)
  {
    dispatch_async(v15, &__block_literal_global_10);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_297374B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_39(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_297374DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void BootModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void BootModule::registerCommandHandlers_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *__dst = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_118:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_118;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_118;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (config::hw::iPhone(v5))
  {
    BootModule::startNetworkCampTimer_sync(this);
  }

  v7 = *MEMORY[0x29EDBF318];
  v8 = strlen(*MEMORY[0x29EDBF318]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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
    *&__dst[8] = v9;
    *&__dst[16] = v11 | 0x8000000000000000;
    *__dst = v10;
    goto LABEL_16;
  }

  __dst[23] = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_16:
    memmove(v10, v7, v9);
  }

  v10[v9] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_48_3;
  aBlock[4] = this;
  aBlock[5] = v4;
  v66 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v67 = v12;
  Service::registerCommandHandler(this, __dst, &v67);
  if (v12)
  {
    _Block_release(v12);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v13 = *MEMORY[0x29EDBEAA8];
  v14 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *&__dst[8] = v15;
    *&__dst[16] = v17 | 0x8000000000000000;
    *__dst = v16;
    goto LABEL_29;
  }

  __dst[23] = v14;
  v16 = __dst;
  if (v14)
  {
LABEL_29:
    memmove(v16, v13, v15);
  }

  v16[v15] = 0;
  v62[0] = MEMORY[0x29EDCA5F8];
  v62[1] = 1174405120;
  v62[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_49;
  v62[3] = &__block_descriptor_tmp_57_1;
  v62[4] = this;
  v62[5] = v4;
  v63 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v62);
  v64 = v18;
  Service::registerCommandHandler(this, __dst, &v64);
  if (v18)
  {
    _Block_release(v18);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v19 = *MEMORY[0x29EDBF340];
  v20 = strlen(*MEMORY[0x29EDBF340]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *&__dst[8] = v21;
    *&__dst[16] = v23 | 0x8000000000000000;
    *__dst = v22;
    goto LABEL_42;
  }

  __dst[23] = v20;
  v22 = __dst;
  if (v20)
  {
LABEL_42:
    memmove(v22, v19, v21);
  }

  v22[v21] = 0;
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 1174405120;
  v59[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_58;
  v59[3] = &__block_descriptor_tmp_59;
  v59[4] = v4;
  v60 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v59);
  v61 = v24;
  Service::registerCommandHandler(this, __dst, &v61);
  if (v24)
  {
    _Block_release(v24);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v25 = *MEMORY[0x29EDBEE80];
  v26 = strlen(*MEMORY[0x29EDBEE80]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *&__dst[8] = v27;
    *&__dst[16] = v29 | 0x8000000000000000;
    *__dst = v28;
    goto LABEL_55;
  }

  __dst[23] = v26;
  v28 = __dst;
  if (v26)
  {
LABEL_55:
    memmove(v28, v25, v27);
  }

  v28[v27] = 0;
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 1174405120;
  v56[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_60;
  v56[3] = &__block_descriptor_tmp_63;
  v56[4] = this;
  v56[5] = v4;
  v57 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v56);
  v58 = v30;
  Service::registerCommandHandler(this, __dst, &v58);
  if (v30)
  {
    _Block_release(v30);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  capabilities::abs::supportedMobileAssetTypes(v31);
  v32 = capabilities::abs::operator&();
  if (v32 || (capabilities::abs::supportedMobileAssetTypes(v32), capabilities::abs::operator&()))
  {
    *__dst = operator new(0x20uLL);
    *&__dst[8] = xmmword_297433A30;
    strcpy(*__dst, "CommandBasebandHealthEvent");
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 1174405120;
    v53[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64;
    v53[3] = &__block_descriptor_tmp_67_3;
    v53[4] = this;
    v53[5] = v4;
    v54 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v33 = _Block_copy(v53);
    v55 = v33;
    Service::registerCommandHandler(this, __dst, &v55);
    if (v33)
    {
      _Block_release(v33);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v34 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v35 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(__dst, v34);
    v36 = *__dst;
    *__dst = 0uLL;
    v37 = *(&off_2A1399388 + 1);
    off_2A1399388 = v36;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&__dst[8];
    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v35 = off_2A1399388;
  }

  v39 = *(&off_2A1399388 + 1);
  v47 = v35;
  v48 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v35 + 16))(&v49, v35);
  v51 = 0;
  v52 = 0;
  if (v50)
  {
    v52 = std::__shared_weak_count::lock(v50);
    if (v52)
    {
      v51 = v49;
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    if (!v51)
    {
      goto LABEL_101;
    }
  }

  else if (!v51)
  {
    goto LABEL_101;
  }

  memset(__dst, 170, 16);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 1174405120;
  v45[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_68;
  v45[3] = &__block_descriptor_tmp_74_1;
  v45[4] = this;
  v45[5] = v4;
  v46 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v45);
  v41 = *(this + 11);
  if (v41)
  {
    dispatch_retain(v41);
  }

  *__dst = v40;
  *&__dst[8] = v41;
  if (!v40)
  {
    v43 = 0;
    object = v41;
    if (!v41)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v43 = _Block_copy(v40);
  object = v41;
  if (v41)
  {
LABEL_90:
    dispatch_retain(v41);
  }

LABEL_91:
  radio::CommandDriver::watchClientState();
  if (object)
  {
    dispatch_release(object);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v41)
  {
    dispatch_release(v41);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_101:
  v42 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297375918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_weak(a45);
  }

  v48 = *(v46 - 208);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  v49 = *(v46 - 144);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  std::__shared_weak_count::__release_weak(v45);
  _Unwind_Resume(a1);
}

void BootModule::startNetworkCampTimer_sync(BootModule *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Start network registration timer for metric submission", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v19 = 17;
  strcpy(__p, "registration-wait");
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v26 = 0;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E3B890;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = this;
  v26 = v8;
  support::misc::safe_timer::create(__p, 1800000, v25, QOS_CLASS_UTILITY, buf);
  v11 = *buf;
  if (*buf)
  {
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E3B920;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v11;
    *buf = 0;
    *(this + 67) = v11;
    v13 = *(this + 68);
    *(this + 68) = v12;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *buf = 0;
    *(this + 67) = 0;
    v13 = *(this + 68);
    *(this + 68) = 0;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_13:
  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v26)
  {
    (*(*v26 + 40))(v26, v9, v10);
  }

  if (v19 < 0)
  {
LABEL_22:
    operator delete(*__p);
  }

LABEL_19:
  v15 = *(this + 67);
  v16 = *(v15 + 23);
  if (v16 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v15);
  }

  else
  {
    *buf = MEMORY[0x29EDCA5F8];
    v21 = 0x40000000;
    v22 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v23 = &__block_descriptor_tmp_8_0;
    v24 = v15;
    dispatch_sync(v16, buf);
  }

  std::__shared_weak_count::__release_weak(v6);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297375E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  (*(*v22 + 8))(v22);
  std::function<void ()(void)>::~function(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v21);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2;
        v10[3] = &__block_descriptor_tmp_44_0;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = v2[576];
  if (v6 > 5)
  {
    switch(v6)
    {
      case 6u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEB58]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 7u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF4A0]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 8u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF420]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      default:
LABEL_28:
        v7 = xpc_string_create(*MEMORY[0x29EDBF0C8]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
    }
  }

  else
  {
    switch(v6)
    {
      case 1u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF210]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 3u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEDF0]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 4u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEFB8]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      default:
        goto LABEL_28;
    }
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEAF8], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  if (v2[188] == 1)
  {
    v9 = v2 + 112;
    if (v2[135] < 0)
    {
      v9 = *v9;
    }

    v10 = xpc_string_create(v9);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
  }

  v12 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &v12, &xdict);
  xpc_release(xdict);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_49(void *a1, xpc_object_t *a2, uint64_t *a3)
{
  v85 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_139;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v83 = v8;
  if (!v8)
  {
    goto LABEL_139;
  }

  v9 = v8;
  if (a1[5])
  {
    v10 = MEMORY[0x29C26F9F0](*a2);
    v11 = MEMORY[0x29EDCAA00];
    if (v10 != MEMORY[0x29EDCAA00])
    {
      v12 = v7[13];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
      }

      goto LABEL_137;
    }

    v78 = 0xAAAAAAAAAAAAAAAALL;
    __p = 0;
    v80 = 0;
    v81 = 0;
    buf = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
    v77 = 0xAAAAAAAAAAAAAAAALL;
    ResetInfo::fetchFromDict(&buf, a2);
    if (SBYTE7(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__s1, buf, *(&buf + 1));
    }

    else
    {
      *&__s1.__r_.__value_.__l.__data_ = buf;
      __s1.__r_.__value_.__r.__words[2] = v73;
    }

    v13 = *MEMORY[0x29EDBEB60];
    v14 = strlen(*MEMORY[0x29EDBEB60]);
    v15 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v14 == __s1.__r_.__value_.__l.__size_)
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1.__r_.__value_.__l.__data_, v13, v14))
        {
          goto LABEL_27;
        }
      }
    }

    else if (v14 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, v13, v14))
    {
LABEL_27:
      v18 = 1;
      goto LABEL_31;
    }

    if (SBYTE7(v73) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, buf, *(&buf + 1));
    }

    else
    {
      *&__dst.__r_.__value_.__l.__data_ = buf;
      __dst.__r_.__value_.__r.__words[2] = v73;
    }

    v16 = *MEMORY[0x29EDBEB68];
    v17 = strlen(*MEMORY[0x29EDBEB68]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v17 == __dst.__r_.__value_.__l.__size_)
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v19 = __dst.__r_.__value_.__r.__words[0];
        v18 = memcmp(__dst.__r_.__value_.__l.__data_, v16, v17) == 0;
      }

      else
      {
        v18 = 0;
        v19 = __dst.__r_.__value_.__r.__words[0];
      }

      operator delete(v19);
    }

    else
    {
      v18 = v17 == SHIBYTE(__dst.__r_.__value_.__r.__words[2]) && memcmp(&__dst, v16, v17) == 0;
    }

    v15 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
LABEL_31:
    if (v15 < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      if (v18)
      {
LABEL_33:
        if ((*(*v7 + 96))(v7))
        {
          v20 = 0x7FFFFFFFFFFFFFF7;
          memset(&__s1, 170, sizeof(__s1));
          v21 = *MEMORY[0x29EDBEAA8];
          v22 = strlen(*MEMORY[0x29EDBEAA8]);
          if (v22 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v23 = v22;
          if (v22 >= 0x17)
          {
            if ((v22 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v22 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.__r_.__value_.__l.__size_ = v23;
            __dst.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22;
            p_dst = &__dst;
            if (!v22)
            {
LABEL_56:
              p_dst[v23] = 0;
              v28 = operator new(0x28uLL);
              v29 = v28;
              strcpy(v28, " rejected; ABM is shutting down ");
              size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                size = __dst.__r_.__value_.__l.__size_;
                v32 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v32 - __dst.__r_.__value_.__l.__size_ < 0x20)
                {
                  v31 = __dst.__r_.__value_.__l.__size_ + 32;
                  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 32 - v32)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  __src = __dst.__r_.__value_.__r.__words[0];
                  if (v32 > 0x3FFFFFFFFFFFFFF2)
                  {
                    v39 = 0;
LABEL_90:
                    v40 = operator new(v20);
                    v41 = v40;
                    if (size)
                    {
                      memmove(v40, __src, size);
                    }

                    v42 = (v41 + size);
                    v43 = v29[1];
                    *v42 = *v29;
                    v42[1] = v43;
                    if (!v39)
                    {
                      operator delete(__src);
                    }

                    __dst.__r_.__value_.__l.__size_ = v31;
                    __dst.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
                    __dst.__r_.__value_.__r.__words[0] = v41;
                    v44 = (v41 + v31);
LABEL_98:
                    *v44 = 0;
                    __s1 = __dst;
                    memset(&__dst, 0, sizeof(__dst));
                    operator delete(v29);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                      v49 = v7[13];
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_100:
                        p_s1 = &__s1;
                        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          p_s1 = __s1.__r_.__value_.__r.__words[0];
                        }

                        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                        *(__dst.__r_.__value_.__r.__words + 4) = p_s1;
                        _os_log_impl(&dword_297288000, v49, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                        if (!*a3)
                        {
LABEL_125:
                          if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__s1.__r_.__value_.__l.__data_);
                            v9 = v83;
                            if ((SHIBYTE(v81) & 0x80000000) == 0)
                            {
LABEL_127:
                              if ((SHIBYTE(v76) & 0x80000000) == 0)
                              {
                                goto LABEL_128;
                              }

                              goto LABEL_134;
                            }
                          }

                          else
                          {
                            v9 = v83;
                            if ((SHIBYTE(v81) & 0x80000000) == 0)
                            {
                              goto LABEL_127;
                            }
                          }

                          operator delete(__p);
                          if ((SHIBYTE(v76) & 0x80000000) == 0)
                          {
LABEL_128:
                            if ((SHIBYTE(v74) & 0x80000000) == 0)
                            {
                              goto LABEL_129;
                            }

                            goto LABEL_135;
                          }

LABEL_134:
                          operator delete(v75);
                          if ((SHIBYTE(v74) & 0x80000000) == 0)
                          {
LABEL_129:
                            if ((SBYTE7(v73) & 0x80000000) == 0)
                            {
                              goto LABEL_130;
                            }

                            goto LABEL_136;
                          }

LABEL_135:
                          operator delete(*(&v73 + 1));
                          if ((SBYTE7(v73) & 0x80000000) == 0)
                          {
LABEL_130:
                            if (!v9)
                            {
                              goto LABEL_139;
                            }

                            goto LABEL_137;
                          }

LABEL_136:
                          operator delete(buf);
                          if (!v9)
                          {
                            goto LABEL_139;
                          }

                          goto LABEL_137;
                        }

LABEL_106:
                        v70 = xpc_null_create();
                        v51 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
                        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v51 = __s1.__r_.__value_.__l.__size_;
                        }

                        if (!v51)
                        {
                          goto LABEL_124;
                        }

                        v52 = xpc_dictionary_create(0, 0, 0);
                        v53 = v52;
                        if (v52)
                        {
                          __dst.__r_.__value_.__r.__words[0] = v52;
                        }

                        else
                        {
                          v53 = xpc_null_create();
                          __dst.__r_.__value_.__r.__words[0] = v53;
                          if (!v53)
                          {
                            v54 = xpc_null_create();
                            v53 = 0;
                            goto LABEL_117;
                          }
                        }

                        if (MEMORY[0x29C26F9F0](v53) == v11)
                        {
                          xpc_retain(v53);
LABEL_118:
                          xpc_release(v53);
                          xpc::dict::operator=(&v70, &__dst.__r_.__value_.__l.__data_);
                          xpc_release(__dst.__r_.__value_.__l.__data_);
                          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v55 = &__s1;
                          }

                          else
                          {
                            v55 = __s1.__r_.__value_.__r.__words[0];
                          }

                          v68 = xpc_string_create(v55);
                          if (!v68)
                          {
                            v68 = xpc_null_create();
                          }

                          v56 = *MEMORY[0x29EDBE648];
                          __dst.__r_.__value_.__r.__words[0] = &v70;
                          __dst.__r_.__value_.__l.__size_ = v56;
                          xpc::dict::object_proxy::operator=(&__dst, &v68, &object);
                          xpc_release(object);
                          object = 0;
                          xpc_release(v68);
                          v68 = 0;
LABEL_124:
                          LODWORD(__dst.__r_.__value_.__l.__data_) = -534716415;
                          dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &__dst, &v70);
                          xpc_release(v70);
                          goto LABEL_125;
                        }

                        v54 = xpc_null_create();
LABEL_117:
                        __dst.__r_.__value_.__r.__words[0] = v54;
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      v49 = v7[13];
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_100;
                      }
                    }

                    if (!*a3)
                    {
                      goto LABEL_125;
                    }

                    goto LABEL_106;
                  }

LABEL_81:
                  v37 = 2 * v32;
                  if (v31 > 2 * v32)
                  {
                    v37 = v31;
                  }

                  if ((v37 | 7) == 0x17)
                  {
                    v38 = 25;
                  }

                  else
                  {
                    v38 = (v37 | 7) + 1;
                  }

                  if (v37 >= 0x17)
                  {
                    v20 = v38;
                  }

                  else
                  {
                    v20 = 23;
                  }

                  v39 = v32 == 22;
                  goto LABEL_90;
                }

                v45 = __dst.__r_.__value_.__r.__words[0];
                v47 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
                v48 = v28[1];
                *v47 = *v28;
                v47[1] = v48;
                v46 = size + 32;
                __dst.__r_.__value_.__l.__size_ = size + 32;
              }

              else
              {
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0x17)
                {
                  v31 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) | 0x20;
                  __src = &__dst;
                  v32 = 22;
                  goto LABEL_81;
                }

                v45 = &__dst;
                qmemcpy(&__dst + SHIBYTE(__dst.__r_.__value_.__r.__words[2]), " rejected; ABM is shutting down ", 32);
                v46 = size + 32;
                *(&__dst.__r_.__value_.__s + 23) = (size + 32) & 0x7F;
              }

              v44 = v45 + v46;
              goto LABEL_98;
            }
          }

          memmove(p_dst, v21, v23);
          goto LABEL_56;
        }

        v59[0] = MEMORY[0x29EDCA5F8];
        v59[1] = 1174405120;
        v59[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_51;
        v59[3] = &__block_descriptor_tmp_54_1;
        v59[4] = v7;
        ResetInfo::ResetInfo(&v60, &buf);
        v26 = *a3;
        if (*a3)
        {
          v26 = _Block_copy(v26);
        }

        aBlock = v26;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped(v7 + 9, v59);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v66 < 0)
        {
          operator delete(v65);
          if ((v64 & 0x80000000) == 0)
          {
LABEL_48:
            if ((v62 & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_76;
          }
        }

        else if ((v64 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        operator delete(v63);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_49:
          if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

LABEL_77:
          operator delete(v60.__r_.__value_.__l.__data_);
          goto LABEL_65;
        }

LABEL_76:
        operator delete(v61);
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_77;
      }
    }

    else if (v18)
    {
      goto LABEL_33;
    }

    v25 = v7[13];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (SBYTE7(v73) < 0)
      {
        std::string::__init_copy_ctor_external(&__s1, buf, *(&buf + 1));
      }

      else
      {
        *&__s1.__r_.__value_.__l.__data_ = buf;
        __s1.__r_.__value_.__r.__words[2] = v73;
      }

      v33 = &__s1;
      if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __s1.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v33;
      _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, "#I Invalid reset request [%s] ignoring it", &__dst, 0xCu);
      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s1.__r_.__value_.__l.__data_);
      }
    }

    v34 = xpc_null_create();
    v35 = *a3;
    __s1.__r_.__value_.__r.__words[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250882, &__s1);
    xpc_release(__s1.__r_.__value_.__l.__data_);
    xpc_release(v36);
LABEL_65:
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v76) & 0x80000000) == 0)
      {
LABEL_67:
        if ((SHIBYTE(v74) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }
    }

    else if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(v75);
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
LABEL_68:
      if ((SBYTE7(v73) & 0x80000000) == 0)
      {
        goto LABEL_137;
      }

LABEL_73:
      operator delete(buf);
      goto LABEL_137;
    }

LABEL_72:
    operator delete(*(&v73 + 1));
    if ((SBYTE7(v73) & 0x80000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_73;
  }

LABEL_137:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_139:
  v57 = *MEMORY[0x29EDCA608];
}

void sub_297376E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **xpc::dict::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_51(void *a1)
{
  v2 = a1[4];
  ResetInfo::ResetInfo(&v15, (a1 + 5));
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2_52;
  v5[3] = &__block_descriptor_tmp_53_1;
  ResetInfo::ResetInfo(&v6, (a1 + 5));
  v3 = a1[19];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v13 = v3;
  aBlock = _Block_copy(v5);
  BootModule::requestReset(v2, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator delete(v15.__r_.__value_.__l.__data_);
    v4 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(v16);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v4 = v13;
  if (v13)
  {
LABEL_15:
    _Block_release(v4);
  }

LABEL_16:
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v6.__r_.__value_.__l.__data_);
    return;
  }

LABEL_23:
  operator delete(v7);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297377188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a27)
  {
    _Block_release(a27);
  }

  ResetInfo::~ResetInfo((v28 + 32));
  ResetInfo::~ResetInfo((v29 - 144));
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2_52(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v18 = a2;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  xdict = v7;
LABEL_9:
  xpc_release(v6);
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_17;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_17;
  }

  v8 = xpc_string_create(a3);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
LABEL_17:
  v10 = *(a1 + 104);
  v11 = operator new(0x38uLL);
  v11[8] = 0;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = v20;
  v19 = v11;
  v20[0] = v11;
  *(v11 + 24) = 1;
  v20[1] = 1;
  *(v11 + 5) = v10;
  *(v11 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v19, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v19, v20[0]);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE930], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 144), &v18, &xdict);
  xpc_release(xdict);
}

void *__copy_helper_block_e8_32c14_ZTS9ResetInfo144c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  ResetInfo::ResetInfo((a1 + 32), (a2 + 32));
  result = *(a2 + 144);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 144) = result;
  return result;
}

void __destroy_helper_block_e8_32c14_ZTS9ResetInfo144c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 32);

  operator delete(v3);
}

void *__copy_helper_block_e8_40c14_ZTS9ResetInfo152c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 40));
  result = *(a2 + 152);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 152) = result;
  return result;
}

void __destroy_helper_block_e8_40c14_ZTS9ResetInfo152c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 40);

  operator delete(v3);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v14 = v6;
    if (v6)
    {
      if (!*(a1 + 32))
      {
LABEL_13:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }

      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        object = v7;
      }

      else
      {
        v8 = xpc_null_create();
        object = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_11;
        }
      }

      if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v8);
        goto LABEL_12;
      }

      v9 = xpc_null_create();
LABEL_11:
      object = v9;
LABEL_12:
      xpc_release(v8);
      v11 = 0;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v11, &object);
      xpc_release(object);
      v6 = v14;
      if (!v14)
      {
        return;
      }

      goto LABEL_13;
    }
  }
}

void sub_297377738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_60(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v27 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  if (!a1[5])
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v10 = v7[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x29EDBEE80];
      *object = 136315138;
      *&object[4] = v26;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_20;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v11 = xpc_null_create();
    v12 = *a3;
    *object = v11;
    v13 = xpc_null_create();
    v12[2](v12, 3760250880, object);
    xpc_release(*object);
    xpc_release(v13);
    goto LABEL_18;
  }

  v14 = *a2;
  if (v14)
  {
    xpc_retain(v14);
    v15 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v16 = 0;
    v17 = v7[10];
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v14 = xpc_null_create();
  v15 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v16 = _Block_copy(v15);
  v17 = v7[10];
  if (!v17)
  {
LABEL_23:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_14:
  v18 = v7[9];
  v19 = std::__shared_weak_count::lock(v17);
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = operator new(0x18uLL);
  *v21 = v7;
  v21[1] = v14;
  v22 = xpc_null_create();
  v21[2] = v16;
  v23 = v7[11];
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  *v24 = v21;
  v24[1] = v18;
  v24[2] = v20;
  dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  xpc_release(v22);
  v9 = v27;
  if (v27)
  {
    goto LABEL_18;
  }

LABEL_20:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_297377A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64(void *a1, void *a2, void (***a3)(const void *, uint64_t, xpc_object_t *))
{
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = std::__shared_weak_count::lock(v6);
  v23 = v8;
  if (!v8 || !a1[5])
  {
LABEL_9:
    v11 = *a3;
    if (v11)
    {
      object[0] = xpc_null_create();
      v11[2](v11, 3760250880, object);
      xpc_release(object[0]);
    }

    if (v8)
    {
      goto LABEL_12;
    }

    return;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v9 = v5[13];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "No input is given", object, 2u);
      v10 = *a3;
      if (!v10)
      {
LABEL_12:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        return;
      }
    }

    else
    {
      v10 = *a3;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    object[0] = xpc_null_create();
    v10[2](v10, 3760250882, object);
    xpc_release(object[0]);
    goto LABEL_12;
  }

  v12 = *a2;
  if (v12)
  {
    xpc_retain(v12);
    v13 = *a3;
    if (*a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = xpc_null_create();
    v13 = *a3;
    if (*a3)
    {
LABEL_17:
      v14 = _Block_copy(v13);
      v15 = v5[10];
      if (!v15)
      {
LABEL_28:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_21;
    }
  }

  v14 = 0;
  v15 = v5[10];
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_21:
  v16 = v5[9];
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v5;
  v19[1] = v12;
  v20 = xpc_null_create();
  v19[2] = v14;
  v21 = v5[11];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v8 = v23;
  if (v23)
  {
    goto LABEL_12;
  }
}

void sub_297377D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_68(void *a1, uint64_t a2, ctu **a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      if (a1[5])
      {
        ctu::cf_to_xpc(object, *a3, v8);
        v10 = *object;
        v11 = MEMORY[0x29EDCAA00];
        if (*object && MEMORY[0x29C26F9F0](*object) == v11)
        {
          xpc_retain(v10);
        }

        else
        {
          v10 = xpc_null_create();
        }

        xpc_release(*object);
        if (MEMORY[0x29C26F9F0](v10) == v11)
        {
          value = xpc_dictionary_get_value(v10, *MEMORY[0x29EDC8C10]);
          *object = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            *object = xpc_null_create();
          }

          *(v6 + 152) = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          v13 = *(v6 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v6 + 152))
            {
              v14 = "started";
            }

            else
            {
              v14 = "stopped";
            }

            *object = 136315138;
            *&object[4] = v14;
            _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I Transport client %s", object, 0xCu);
          }
        }

        xpc_release(v10);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_297377F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void BootModule::sendUserNotificationForBBConfigUpdated_sync(BootModule *this)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((config::hw::watch(this) & 1) != 0 || *(this + 224) != 1)
  {
    v8 = *(this + 13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 200);
      if (*(this + 223) < 0)
      {
        v9 = *v9;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Skip user notification for MobileAsset PT version %s", &buf, 0xCu);
    }

    goto LABEL_48;
  }

  v27 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  capabilities::abs::supportedMobileAssetTypes(Mutable);
  v5 = capabilities::abs::operator&();
  if (v5)
  {
    v7 = "PT";
  }

  else
  {
    capabilities::abs::supportedMobileAssetTypes(v5);
    if (capabilities::abs::operator&())
    {
      v7 = "RP";
    }

    else
    {
      v7 = "";
    }
  }

  ctu::cf::insert<char const*,char const*>(v4, *MEMORY[0x29EDBF380], v7, v2, v6);
  v10 = time(0);
  std::to_string(&v26, v10);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v26;
  }

  ctu::cf::insert<char const*,std::string>(v4, *MEMORY[0x29EDBF6B0], &buf, v2, v11);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((*(this + 255) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((*(this + 255) & 0x80000000) == 0)
  {
LABEL_20:
    buf = *(this + 232);
    goto LABEL_24;
  }

LABEL_23:
  std::string::__init_copy_ctor_external(&buf, *(this + 29), *(this + 30));
LABEL_24:
  ctu::cf::insert<char const*,std::string>(v4, *MEMORY[0x29EDBF578], &buf, v2, v12);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x29EDBF270];
  v14 = strlen(*MEMORY[0x29EDBF270]);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v16 = operator new(v18);
    __dst[1] = v15;
    v25 = v18 | 0x8000000000000000;
    __dst[0] = v16;
  }

  else
  {
    HIBYTE(v25) = v14;
    v16 = __dst;
    if (!v14)
    {
      LOBYTE(__dst[0]) = 0;
      v17 = v27;
      if (!v27)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  memmove(v16, v13, v15);
  *(v15 + v16) = 0;
  v17 = v27;
  if (!v27)
  {
LABEL_38:
    cf = 0;
    goto LABEL_39;
  }

LABEL_36:
  v19 = CFGetTypeID(v17);
  if (v19 != CFDictionaryGetTypeID())
  {
    goto LABEL_38;
  }

  cf = v17;
  CFRetain(v17);
LABEL_39:
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 0x40000000;
  v21[2] = ___ZN10BootModule43sendUserNotificationForBBConfigUpdated_syncEv_block_invoke;
  v21[3] = &__block_descriptor_tmp_80;
  v21[4] = this;
  aBlock = _Block_copy(v21);
  Service::broadcastEvent(this, __dst, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  operator delete(__dst[0]);
  if (v17)
  {
LABEL_47:
    CFRelease(v17);
  }

LABEL_48:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29737837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule43sendUserNotificationForBBConfigUpdated_syncEv_block_invoke_2()
{
  memset(v3, 0, sizeof(v3));
  std::string::__assign_external(&v3[1], "Baseband_Config_Updated", 0x17uLL);
  *(&v3[0].__r_.__value_.__s + 23) = 21;
  strcpy(v3, "BasebandConfigUpdated");
  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v0, v3[0].__r_.__value_.__l.__data_, v3[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v0 = v3[0];
  }

  if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v1, v3[1].__r_.__value_.__l.__data_, v3[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v1 = v3[1];
  }

  if (SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3[2].__r_.__value_.__l.__data_, v3[2].__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3[2];
  }

  support::ui::showNotification(3u, &v0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v0.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v1.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v0.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v0.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v3[2].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v3[0].__r_.__value_.__l.__data_);
    return;
  }

LABEL_21:
  operator delete(v3[1].__r_.__value_.__l.__data_);
  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }
}

void sub_297378604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      support::ui::NotificationInfo::~NotificationInfo(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  support::ui::NotificationInfo::~NotificationInfo(&a25);
  _Unwind_Resume(a1);
}

void sub_297378660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  support::ui::NotificationInfo::~NotificationInfo(&a9);
  support::ui::NotificationInfo::~NotificationInfo(&a19);
  _Unwind_Resume(a1);
}

void sub_29737867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  support::ui::NotificationInfo::~NotificationInfo(va);
  _Unwind_Resume(a1);
}

void BootModule::start(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v9);
  }

  v10 = a1[10];
  if (!v10 || (v11 = a1[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = operator new(0x20uLL);
  *v14 = v5;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = a1;
  v15 = a1[11];
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::start(dispatch::group_session)::$_0>(BootModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void BootModule::getPowerTableFromMobileAsset(void *a1, char a2)
{
  if (a1[65])
  {
    v3 = a1[10];
    if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = a1[65];
    v9 = operator new(0x20uLL);
    *v9 = a1;
    v9[8] = a2;
    *(v9 + 2) = v5;
    *(v9 + 3) = v7;

    dispatch_async_f(v8, v9, dispatch::async<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>)::{lambda(void *)#1}::__invoke);
  }
}

void BootModule::triggerResetWithUpdatedPT_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I PT file updated, triggering soft reset", &buf, 2u);
  }

  *(this + 46) = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v3;
  v40 = v3;
  v37 = v3;
  v38 = v3;
  v35 = v3;
  v36 = v3;
  buf = v3;
  v4 = *MEMORY[0x29EDBEB68];
  v5 = strlen(*MEMORY[0x29EDBEB68]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v6;
    v33 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v33) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  v9 = *MEMORY[0x29EDBF858];
  v10 = strlen(*MEMORY[0x29EDBF858]);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(&v30 + 1) = v11;
    v31 = v13 | 0x8000000000000000;
    *&v30 = v12;
    goto LABEL_20;
  }

  HIBYTE(v31) = v10;
  v12 = &v30;
  if (v10)
  {
LABEL_20:
    memmove(v12, v9, v11);
  }

  *(v12 + v11) = 0;
  v29 = 10;
  strcpy(&v28, "PT updated");
  Timestamp::Timestamp(v24);
  Timestamp::asString(v24, 0, 9, __p);
  v23 = 0;
  LOBYTE(v22) = 0;
  ResetInfo::ResetInfo(&buf, &__dst, &v30, &v28, __p, 7, &v22);
  if ((v27 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_36:
    operator delete(v30);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  operator delete(__p[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_36;
  }

LABEL_23:
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_37:
  operator delete(__dst);
LABEL_24:
  ResetInfo::ResetInfo(&v15, &buf);
  aBlock = 0;
  BootModule::requestReset(this, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_40;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v16);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    *(this + 194) = 0;
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v15.__r_.__value_.__l.__data_);
  *(this + 194) = 0;
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SBYTE7(v38) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(*(&v39 + 1));
  if ((SBYTE7(v38) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v37);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SBYTE7(v35) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(buf);
    return;
  }

LABEL_44:
  operator delete(*(&v35 + 1));
  if (SBYTE7(v35) < 0)
  {
    goto LABEL_45;
  }
}