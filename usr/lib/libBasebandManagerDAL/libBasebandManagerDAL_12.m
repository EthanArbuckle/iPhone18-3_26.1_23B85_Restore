double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString@<X0>(BasebandTransport::Status *this@<X0>, _BYTE *a2@<X8>)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v4;
  v45[8] = v4;
  v45[5] = v4;
  v45[6] = v4;
  v45[3] = v4;
  v45[4] = v4;
  v45[1] = v4;
  v45[2] = v4;
  v44 = v4;
  v45[0] = v4;
  *v42 = v4;
  v43 = v4;
  v40 = v4;
  v41 = v4;
  v38 = v4;
  v39 = v4;
  v37 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "State: ", 7);
  v6 = *this;
  if (*this > 1)
  {
    if (v6 == 2)
    {
      v7 = 5;
      v36 = 5;
      LODWORD(__p[0]) = 1869771333;
      v8 = 114;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = 7;
      v36 = 7;
      LODWORD(__p[0]) = 1818326099;
      v9 = 1684368492;
LABEL_9:
      *(__p + 3) = v9;
      goto LABEL_13;
    }

LABEL_8:
    v7 = 7;
    v36 = 7;
    LODWORD(__p[0]) = 1852534357;
    v9 = 1853321070;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = 8;
    v36 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v7 = 5;
  v36 = 5;
  LODWORD(__p[0]) = 1684104530;
  v8 = 121;
LABEL_12:
  BYTE4(__p[0]) = v8;
LABEL_13:
  *(__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, v7);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Async: ", 7);
  *(v12 + *(*v12 - 24) + 8) |= 1u;
  v13 = *(this + 4);
  v14 = MEMORY[0x29C26EA30]();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Total Rx: ", 10);
  v17 = MEMORY[0x29C26EAA0](v16, *(this + 1) >> 10);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " KB, ", 5);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Total Tx: ", 10);
  v20 = MEMORY[0x29C26EAA0](v19, *(this + 2) >> 10);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " KB, ", 5);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Total RX: ", 10);
  v23 = MEMORY[0x29C26EAA0](v22, *(this + 1));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " B, ", 4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Total TX: ", 10);
  v26 = MEMORY[0x29C26EAA0](v25, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " B", 2);
  if ((v36 & 0x80000000) == 0)
  {
    v27 = BYTE8(v44);
    if ((BYTE8(v44) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = v44;
    if (v44 < *(&v41 + 1))
    {
      *&v44 = *(&v41 + 1);
      v29 = *(&v41 + 1);
    }

    v30 = v41;
    v28 = v29 - v41;
    if ((v29 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  v27 = BYTE8(v44);
  if ((BYTE8(v44) & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_29;
  }

  v30 = *(&v39 + 1);
  v28 = *(&v40 + 1) - *(&v39 + 1);
  if (*(&v40 + 1) - *(&v39 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_21:
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_28;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_28:
    memmove(a2, v30, v28);
  }

LABEL_29:
  a2[v28] = 0;
  *&v37 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v38 = v33;
  *(&v38 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  *(&v38 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v39);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v45);
}

void sub_297312FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_297312FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::Parameters::toString@<X0>(BasebandTransport::Parameters *this@<X0>, _BYTE *a2@<X8>)
{
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[7] = v4;
  v48[8] = v4;
  v48[5] = v4;
  v48[6] = v4;
  v48[3] = v4;
  v48[4] = v4;
  v48[1] = v4;
  v48[2] = v4;
  v47 = v4;
  v48[0] = v4;
  *v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v40 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v40);
  BasebandTransport::asString(*this, v35);
  v5 = v36;
  if ((v36 & 0x80u) == 0)
  {
    v6 = v36;
  }

  else
  {
    v6 = v35[1];
  }

  v7 = v6 + 10;
  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    v38 = 8250;
    v39 = 0;
    HIBYTE(v39) = v6 + 10;
    __p = *"Protocol: ";
    v10 = &v38 + 2;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v38 = v6 + 10;
    v39 = v8 | 0x8000000000000000;
    __p = v9;
    *(v9 + 4) = 8250;
    *v9 = *"Protocol: ";
    v10 = v9 + 10;
  }

  if (v5 >= 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v35[0];
  }

  memmove(v10, v11, v6);
LABEL_15:
  v10[v6] = 0;
  if (v39 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v39 >= 0)
  {
    v13 = HIBYTE(v39);
  }

  else
  {
    v13 = v38;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, p_p, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Powersave: ", 11);
  *(v16 + *(*v16 - 24) + 8) |= 1u;
  v17 = *(this + 4);
  v18 = MEMORY[0x29C26EA30]();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Create Timeout: ", 16);
  v21 = MEMORY[0x29C26EA90](v20, *(this + 1));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " sec, ", 6);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "IO Size: ", 9);
  v24 = MEMORY[0x29C26EA60](v23, *(this + 4) >> 10);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " KB, ", 5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Num Pending Reads: ", 19);
  MEMORY[0x29C26EA60](v26, *(this + 5));
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_23:
      v27 = BYTE8(v47);
      if ((BYTE8(v47) & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v29 = v47;
      if (v47 < *(&v44 + 1))
      {
        *&v47 = *(&v44 + 1);
        v29 = *(&v44 + 1);
      }

      v30 = v44;
      v28 = v29 - v44;
      if ((v29 - v44) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v35[0]);
  v27 = BYTE8(v47);
  if ((BYTE8(v47) & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_39;
  }

  v30 = *(&v42 + 1);
  v28 = *(&v43 + 1) - *(&v42 + 1);
  if (*(&v43 + 1) - *(&v42 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_43:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_31:
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_38;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_38:
    memmove(a2, v30, v28);
  }

LABEL_39:
  a2[v28] = 0;
  *&v40 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  *(&v41 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v48);
}

void sub_297313524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_297313538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if ((v18 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

void BasebandTransport::BasebandTransport(BasebandTransport *this, queue a2, qos_class_t a3)
{
  *this = &unk_2A1E37EA0;
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", "ipc.bb");
  v6 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v7 = dispatch_queue_create("ipc.bb", v6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(this + 4) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 40, v19);
  MEMORY[0x29C26DE80](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_2A1E37EA0;
  *(this + 12) = 25;
  *(this + 52) = 0;
  *(this + 7) = 10;
  v10 = capabilities::radio::dal(v9);
  v11 = v10;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v10);
  if (v11)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v13 = 0x8000;
  }

  *(this + 16) = v13;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(this + 17) = 4;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v15 = *a2.fObj.fObj;
  *(this + 11) = 0;
  *(this + 12) = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  v16 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = Controller;
  *(this + 229) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 33) = dispatch_group_create();
  *(this + 68) = 0;
  *(this + 276) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 309) = 0;
  *(this + 88) = a3;
  *(this + 45) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void sub_297313758(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x29C26DE80](v1 + 5);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_2A1E37EA0;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x29C26DE80](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(BasebandTransport *this@<X0>, queue a2@<0:X1>, BasebandTransport **a3@<X8>)
{
  fObj = a2.fObj.fObj;
  *a3 = 0;
  a3[1] = 0;
  if (capabilities::radio::vendor(this) - 3 >= 2)
  {
    return;
  }

  v7 = operator new(0x170uLL);
  v8 = *this;
  v13 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v13;
  BasebandTransport::BasebandTransport(v7, v9, fObj);
  v10 = operator new(0x20uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__vftable = &unk_2A1E38168;
  v10->__shared_weak_owners_ = 0;
  v10[1].__vftable = v7;
  v12 = *(v7 + 2);
  if (v12)
  {
    if (v12->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v7 + 1) = v7;
      *(v7 + 2) = v10;
      std::__shared_weak_count::__release_weak(v12);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_9:
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  *a3 = v7;
  a3[1] = v10;
  if (v8)
  {
    dispatch_release(v8);
  }

  BasebandTransport::init(v7);
}

void sub_297313B98(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297313BC0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    dispatch_release(v2);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
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
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
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

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_25;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52_2;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_2973140E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_48(void *a1, int a2, void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v28 = 0;
  v7 = a1[6];
  if (v7 && (v28 = std::__shared_weak_count::lock(v7)) != 0 && (v10 = a1[5]) != 0)
  {
    v11 = *(v10 + 264);
    if (v11)
    {
      dispatch_retain(*(v10 + 264));
      dispatch_group_enter(v11);
    }

    if (a2)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = a2;
        _os_log_debug_impl(&dword_297288000, v12, OS_LOG_TYPE_DEBUG, "#D Async read error 0x%08x", &__p, 8u);
      }
    }

    else
    {
      *(v6 + 280) += a4;
      v14 = *(v6 + 88);
      if (v14)
      {
        v15 = _Block_copy(v14);
        v16 = *(v6 + 72);
        if (v16)
        {
          __p = 0;
          v30 = 0;
          v31 = 0;
          (*(*v16 + 8))(v16, a3, a4, &__p);
          v17 = *(v6 + 96);
          if (v15)
          {
            v18 = _Block_copy(v15);
          }

          else
          {
            v18 = 0;
          }

          v22 = __p;
          v23 = v30 - __p;
          if (v30 == __p)
          {
            v25 = 0;
            v24 = 0;
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v24 = operator new(v30 - __p);
            v25 = &v24[v23];
            memcpy(v24, v22, v23);
          }

          v26 = operator new(0x20uLL);
          *v26 = v18;
          v26[1] = v24;
          v26[2] = v25;
          v26[3] = v25;
          dispatch_async_f(v17, v26, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v19 = *(v6 + 80);
          v20 = *(v6 + 96);
          if (v15)
          {
            v21 = _Block_copy(v15);
          }

          else
          {
            v21 = 0;
          }

          v27 = operator new(0x18uLL);
          *v27 = v21;
          v27[1] = a3;
          *(v27 + 4) = a4;
          *(v27 + 20) = v19;
          dispatch_async_f(v20, v27, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          a3 = 0;
        }

        if (v15)
        {
          _Block_release(v15);
        }
      }
    }

    if (a3 && (*(v6 + 80) & 1) == 0)
    {
      free(a3);
    }

    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else if (a3)
  {
    free(a3);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29731443C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &unk_2A1E37F70;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_297314634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &unk_29EE67C50;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v16;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_2;
  v12[3] = &unk_29EE67C78;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_2973148D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_86;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_297431FD0[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_2A1E381F0;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_297288000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297288000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_297288000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_297288000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x29EDCA608];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_2973152E4(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

      v13 = *(this + 28);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_85_0;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_86;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 0x40000000;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &unk_29EE67B20;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x29EDCA5F8];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_98;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &unk_29EE67B48;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_98;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 0x40000000;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2;
          v16[3] = &unk_29EE67B70;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x29EDCA5F8];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_98;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_297315A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 216), 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_297288000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &unk_29EE67B98;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_63;
      v16[3] = &__block_descriptor_tmp_64_0;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_297315ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_65_0;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &unk_29EE67C00;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_297316194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &unk_29EE67C28;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_297431FA0[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    v7 = dispatch_queue_create("ipc.bb", 0);
    v8 = *(this + 32);
    *(this + 32) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_73;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_2973168AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_297431FD0[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_74;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_77;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78;
  v25[3] = &__block_descriptor_tmp_79;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_297316E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_82;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString((v2 + 48), __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString((v2 + 272), __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_87;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *std::__list_imp<BasebandTransport::Protocol>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
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

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297317774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297317858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  (*(*a1 + 2))();
  if ((*(a1 + 20) & 1) == 0)
  {
    free(a1[1]);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297317928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E381B0;
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1E381F0;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

void RadioModule::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x110uLL);
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v21, v6);
    v8 = v21;
    v21 = 0uLL;
    v9 = *(&off_2A1399388 + 1);
    off_2A1399388 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v21 + 1);
    if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A1399388;
  }

  v11 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 24))(&object, v7);
  RadioModule::RadioModule(v4, &v19, &object);
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x20uLL);
  v12[1] = 0;
  v13 = v12 + 1;
  *v12 = &unk_2A1E38D80;
  v12[2] = 0;
  v12[3] = v4;
  a2[1] = v12;
  v14 = *(v4 + 10);
  if (!v14)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 9) = v4;
    *(v4 + 10) = v12;
    if (atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 9) = v4;
    *(v4 + 10) = v12;
    v15 = v12;
    std::__shared_weak_count::__release_weak(v14);
    v12 = v15;
    if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_18:
      v16 = v12;
      (*(*v12 + 16))();
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_19:
  if (object)
  {
    dispatch_release(object);
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v17 = *a2;
  *&v21 = MEMORY[0x29EDCA5F8];
  *(&v21 + 1) = 0x40000000;
  v22 = ___ZN11RadioModule4initEv_block_invoke;
  v23 = &__block_descriptor_tmp_7;
  v24 = v17;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v17 + 72), &v21);
}

void sub_297317F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void RadioModule::init(RadioModule *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN11RadioModule4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_7;
  v1[4] = this;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped(this + 9, v1);
}

uint64_t RadioModule::RadioModule(uint64_t a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E38280;
    *a1 = &unk_2A1E38280;
    v8 = (a1 + 72);
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_2A1E34AE8;
  v7 = &unk_2A1E38280;
  *a1 = &unk_2A1E38280;
  v8 = (a1 + 72);
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(&v28, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("radio.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 88) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 96) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 104, v27);
  MEMORY[0x29C26DE80](v27);
  ctu::OsLogContext::~OsLogContext(&v28);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E38280;
  *(a1 + 135) = 768;
  *(a1 + 112) = 0;
  radio::RFCalibration_t::RFCalibration_t((a1 + 144));
  *(a1 + 192) = xpc_null_create();
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v13 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v28);
    v14 = v28;
    v28 = 0uLL;
    v15 = *(&off_2A1399448 + 1);
    off_2A1399448 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&v28 + 1);
    if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A1399448;
  }

  v17 = *(&off_2A1399448 + 1);
  v27[0] = v13;
  v27[1] = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::iokit::Controller::create(*(*v13 + 144), v18);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  *(a1 + 232) = 0;
  *(a1 + 234) = 0;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v19) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v19);
      v20 = v19;
    }

    else
    {
      v20 = xpc_null_create();
    }
  }

  else
  {
    v20 = xpc_null_create();
    v19 = 0;
  }

  xpc_release(v19);
  v21 = xpc_null_create();
  v22 = *(a1 + 192);
  *(a1 + 192) = v20;
  xpc_release(v22);
  xpc_release(v21);
  v23 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  v25 = *(a1 + 264);
  *(a1 + 264) = Controller;
  if (v25)
  {
    CFRelease(v25);
  }

  return a1;
}

void sub_297318520(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  xpc::dict::~dict((v1 + 192));
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  MEMORY[0x29C26DE80](v1 + 104);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void RadioModule::~RadioModule(RadioModule *this)
{
  *this = &unk_2A1E38280;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v20, 2u);
  }

  v4 = *(this + 33);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 32))
  {
    v5 = *(this + 31);
    v6 = *(*(this + 30) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 32) = 0;
    if (v5 != (this + 240))
    {
      do
      {
        v8 = *(v5 + 1);
        v9 = *(v5 + 3);
        if (v9 && atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
        {
          v10 = v5;
          (*(*v9 + 24))(v9);
          v5 = v10;
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != (this + 240));
    }
  }

  v11 = *(this + 28);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(*(this + 24));
  *(this + 24) = 0;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  MEMORY[0x29C26DE80](v2);
  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 10);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v15 = *(this + 3);
  if (v15)
  {
    v16 = *(this + 4);
    v17 = *(this + 3);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(this + 3);
    }

    *(this + 4) = v15;
    operator delete(v17);
  }

  v19 = *(this + 2);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

{
  RadioModule::~RadioModule(this);

  operator delete(v1);
}

void ___ZN11RadioModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

_WORD *RadioModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *RadioModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void RadioModule::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN11RadioModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_5_5;
  v5 = *a3;
  v6[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<RadioModule>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void ___ZN11RadioModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 30;
  v3 = v1[31];
  if (v3 != v1 + 30)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (v1[32])
  {
    v4 = v1[31];
    v5 = *(v1[30] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    v1[32] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8)
        {
          if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
          {
            v9 = v4;
            (*(*v8 + 24))(v8);
            v4 = v9;
          }
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void RadioModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void RadioModule::registerCommandHandlers_sync(RadioModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_402:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_402;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_402;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBED20];
  v8 = strlen(*MEMORY[0x29EDBED20]);
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

    p_dst = operator new(v11);
    v245 = v9;
    v246 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v246) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_13_2;
  aBlock[4] = this;
  aBlock[5] = v4;
  v242 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v243 = v12;
  Service::registerCommandHandler(this, &__dst, &v243);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF4B0];
  v14 = strlen(*MEMORY[0x29EDBF4B0]);
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
    v245 = v15;
    v246 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v246) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v238[0] = MEMORY[0x29EDCA5F8];
  v238[1] = 1174405120;
  v238[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_14;
  v238[3] = &__block_descriptor_tmp_24_0;
  v238[4] = this;
  v238[5] = v4;
  v239 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v238);
  v240 = v18;
  Service::registerCommandHandler(this, &__dst, &v240);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF5E8];
  v20 = strlen(*MEMORY[0x29EDBF5E8]);
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
    v245 = v21;
    v246 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v246) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v235[0] = MEMORY[0x29EDCA5F8];
  v235[1] = 1174405120;
  v235[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_25;
  v235[3] = &__block_descriptor_tmp_35;
  v235[4] = this;
  v235[5] = v4;
  v236 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v235);
  v237 = v24;
  Service::registerCommandHandler(this, &__dst, &v237);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF5F8];
  v26 = strlen(*MEMORY[0x29EDBF5F8]);
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
    v245 = v27;
    v246 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v246) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v232[0] = MEMORY[0x29EDCA5F8];
  v232[1] = 1174405120;
  v232[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_36;
  v232[3] = &__block_descriptor_tmp_48_0;
  v232[4] = this;
  v232[5] = v4;
  v233 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v232);
  v234 = v30;
  Service::registerCommandHandler(this, &__dst, &v234);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBF5E0];
  v32 = strlen(*MEMORY[0x29EDBF5E0]);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v32 | 7) + 1;
    }

    v34 = operator new(v35);
    v245 = v33;
    v246 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v246) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v229[0] = MEMORY[0x29EDCA5F8];
  v229[1] = 1174405120;
  v229[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_49;
  v229[3] = &__block_descriptor_tmp_60_0;
  v229[4] = this;
  v229[5] = v4;
  v230 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = _Block_copy(v229);
  v231 = v36;
  Service::registerCommandHandler(this, &__dst, &v231);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v37 = *MEMORY[0x29EDBF320];
  v38 = strlen(*MEMORY[0x29EDBF320]);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v39 = v38;
  if (v38 >= 0x17)
  {
    if ((v38 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v38 | 7) + 1;
    }

    v40 = operator new(v41);
    v245 = v39;
    v246 = v41 | 0x8000000000000000;
    __dst = v40;
    goto LABEL_79;
  }

  HIBYTE(v246) = v38;
  v40 = &__dst;
  if (v38)
  {
LABEL_79:
    memmove(v40, v37, v39);
  }

  *(v40 + v39) = 0;
  v226[0] = MEMORY[0x29EDCA5F8];
  v226[1] = 1174405120;
  v226[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_61;
  v226[3] = &__block_descriptor_tmp_68_0;
  v226[4] = this;
  v226[5] = v4;
  v227 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v42 = _Block_copy(v226);
  v228 = v42;
  Service::registerCommandHandler(this, &__dst, &v228);
  if (v42)
  {
    _Block_release(v42);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v43 = *MEMORY[0x29EDBF330];
  v44 = strlen(*MEMORY[0x29EDBF330]);
  if (v44 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v45 = v44;
  if (v44 >= 0x17)
  {
    if ((v44 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v44 | 7) + 1;
    }

    v46 = operator new(v47);
    v245 = v45;
    v246 = v47 | 0x8000000000000000;
    __dst = v46;
    goto LABEL_92;
  }

  HIBYTE(v246) = v44;
  v46 = &__dst;
  if (v44)
  {
LABEL_92:
    memmove(v46, v43, v45);
  }

  *(v46 + v45) = 0;
  v223[0] = MEMORY[0x29EDCA5F8];
  v223[1] = 1174405120;
  v223[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_69;
  v223[3] = &__block_descriptor_tmp_80_0;
  v223[4] = this;
  v223[5] = v4;
  v224 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(v223);
  v225 = v48;
  Service::registerCommandHandler(this, &__dst, &v225);
  if (v48)
  {
    _Block_release(v48);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v49 = *MEMORY[0x29EDBE610];
  v50 = strlen(*MEMORY[0x29EDBE610]);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v50 | 7) + 1;
    }

    v52 = operator new(v53);
    v245 = v51;
    v246 = v53 | 0x8000000000000000;
    __dst = v52;
    goto LABEL_105;
  }

  HIBYTE(v246) = v50;
  v52 = &__dst;
  if (v50)
  {
LABEL_105:
    memmove(v52, v49, v51);
  }

  *(v52 + v51) = 0;
  v220[0] = MEMORY[0x29EDCA5F8];
  v220[1] = 1174405120;
  v220[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_81;
  v220[3] = &__block_descriptor_tmp_92_0;
  v220[4] = this;
  v220[5] = v4;
  v221 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v54 = _Block_copy(v220);
  v222 = v54;
  Service::registerCommandHandler(this, &__dst, &v222);
  if (v54)
  {
    _Block_release(v54);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v55 = *MEMORY[0x29EDBF770];
  v56 = strlen(*MEMORY[0x29EDBF770]);
  if (v56 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v57 = v56;
  if (v56 >= 0x17)
  {
    if ((v56 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v56 | 7) + 1;
    }

    v58 = operator new(v59);
    v245 = v57;
    v246 = v59 | 0x8000000000000000;
    __dst = v58;
    goto LABEL_118;
  }

  HIBYTE(v246) = v56;
  v58 = &__dst;
  if (v56)
  {
LABEL_118:
    memmove(v58, v55, v57);
  }

  *(v58 + v57) = 0;
  v217[0] = MEMORY[0x29EDCA5F8];
  v217[1] = 1174405120;
  v217[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_93;
  v217[3] = &__block_descriptor_tmp_96;
  v217[4] = this;
  v217[5] = v4;
  v218 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v60 = _Block_copy(v217);
  v219 = v60;
  Service::registerCommandHandler(this, &__dst, &v219);
  if (v60)
  {
    _Block_release(v60);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v61 = *MEMORY[0x29EDBEA00];
  v62 = strlen(*MEMORY[0x29EDBEA00]);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v62;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v62 | 7) + 1;
    }

    v64 = operator new(v65);
    v245 = v63;
    v246 = v65 | 0x8000000000000000;
    __dst = v64;
    goto LABEL_131;
  }

  HIBYTE(v246) = v62;
  v64 = &__dst;
  if (v62)
  {
LABEL_131:
    memmove(v64, v61, v63);
  }

  *(v64 + v63) = 0;
  v214[0] = MEMORY[0x29EDCA5F8];
  v214[1] = 1174405120;
  v214[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_97;
  v214[3] = &__block_descriptor_tmp_100;
  v214[4] = this;
  v214[5] = v4;
  v215 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v66 = _Block_copy(v214);
  v216 = v66;
  Service::registerCommandHandler(this, &__dst, &v216);
  if (v66)
  {
    _Block_release(v66);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v67 = *MEMORY[0x29EDBEF30];
  v68 = strlen(*MEMORY[0x29EDBEF30]);
  if (v68 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v69 = v68;
  if (v68 >= 0x17)
  {
    if ((v68 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v68 | 7) + 1;
    }

    v70 = operator new(v71);
    v245 = v69;
    v246 = v71 | 0x8000000000000000;
    __dst = v70;
    goto LABEL_144;
  }

  HIBYTE(v246) = v68;
  v70 = &__dst;
  if (v68)
  {
LABEL_144:
    memmove(v70, v67, v69);
  }

  *(v70 + v69) = 0;
  v211[0] = MEMORY[0x29EDCA5F8];
  v211[1] = 1174405120;
  v211[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_101;
  v211[3] = &__block_descriptor_tmp_104;
  v211[4] = this;
  v211[5] = v4;
  v212 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v72 = _Block_copy(v211);
  v213 = v72;
  Service::registerCommandHandler(this, &__dst, &v213);
  if (v72)
  {
    _Block_release(v72);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v73 = *MEMORY[0x29EDBF1E0];
  v74 = strlen(*MEMORY[0x29EDBF1E0]);
  if (v74 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v75 = v74;
  if (v74 >= 0x17)
  {
    if ((v74 | 7) == 0x17)
    {
      v77 = 25;
    }

    else
    {
      v77 = (v74 | 7) + 1;
    }

    v76 = operator new(v77);
    v245 = v75;
    v246 = v77 | 0x8000000000000000;
    __dst = v76;
    goto LABEL_157;
  }

  HIBYTE(v246) = v74;
  v76 = &__dst;
  if (v74)
  {
LABEL_157:
    memmove(v76, v73, v75);
  }

  *(v76 + v75) = 0;
  v208[0] = MEMORY[0x29EDCA5F8];
  v208[1] = 1174405120;
  v208[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_105;
  v208[3] = &__block_descriptor_tmp_108_0;
  v208[4] = this;
  v208[5] = v4;
  v209 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v78 = _Block_copy(v208);
  v210 = v78;
  Service::registerCommandHandler(this, &__dst, &v210);
  if (v78)
  {
    _Block_release(v78);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v79 = *MEMORY[0x29EDBF3D8];
  v80 = strlen(*MEMORY[0x29EDBF3D8]);
  if (v80 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v81 = v80;
  if (v80 >= 0x17)
  {
    if ((v80 | 7) == 0x17)
    {
      v83 = 25;
    }

    else
    {
      v83 = (v80 | 7) + 1;
    }

    v82 = operator new(v83);
    v245 = v81;
    v246 = v83 | 0x8000000000000000;
    __dst = v82;
    goto LABEL_170;
  }

  HIBYTE(v246) = v80;
  v82 = &__dst;
  if (v80)
  {
LABEL_170:
    memmove(v82, v79, v81);
  }

  *(v82 + v81) = 0;
  v205[0] = MEMORY[0x29EDCA5F8];
  v205[1] = 1174405120;
  v205[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_109;
  v205[3] = &__block_descriptor_tmp_112;
  v205[4] = this;
  v205[5] = v4;
  v206 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v84 = _Block_copy(v205);
  v207 = v84;
  Service::registerCommandHandler(this, &__dst, &v207);
  if (v84)
  {
    _Block_release(v84);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v85 = *MEMORY[0x29EDBEC70];
  v86 = strlen(*MEMORY[0x29EDBEC70]);
  if (v86 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v87 = v86;
  if (v86 >= 0x17)
  {
    if ((v86 | 7) == 0x17)
    {
      v89 = 25;
    }

    else
    {
      v89 = (v86 | 7) + 1;
    }

    v88 = operator new(v89);
    v245 = v87;
    v246 = v89 | 0x8000000000000000;
    __dst = v88;
    goto LABEL_183;
  }

  HIBYTE(v246) = v86;
  v88 = &__dst;
  if (v86)
  {
LABEL_183:
    memmove(v88, v85, v87);
  }

  *(v88 + v87) = 0;
  v202[0] = MEMORY[0x29EDCA5F8];
  v202[1] = 1174405120;
  v202[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_113;
  v202[3] = &__block_descriptor_tmp_116;
  v202[4] = this;
  v202[5] = v4;
  v203 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v90 = _Block_copy(v202);
  v204 = v90;
  Service::registerCommandHandler(this, &__dst, &v204);
  if (v90)
  {
    _Block_release(v90);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v91 = *MEMORY[0x29EDBF700];
  v92 = strlen(*MEMORY[0x29EDBF700]);
  if (v92 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v93 = v92;
  if (v92 >= 0x17)
  {
    if ((v92 | 7) == 0x17)
    {
      v95 = 25;
    }

    else
    {
      v95 = (v92 | 7) + 1;
    }

    v94 = operator new(v95);
    v245 = v93;
    v246 = v95 | 0x8000000000000000;
    __dst = v94;
    goto LABEL_196;
  }

  HIBYTE(v246) = v92;
  v94 = &__dst;
  if (v92)
  {
LABEL_196:
    memmove(v94, v91, v93);
  }

  *(v94 + v93) = 0;
  v199[0] = MEMORY[0x29EDCA5F8];
  v199[1] = 1174405120;
  v199[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_117;
  v199[3] = &__block_descriptor_tmp_120;
  v199[4] = this;
  v199[5] = v4;
  v200 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v96 = _Block_copy(v199);
  v201 = v96;
  Service::registerCommandHandler(this, &__dst, &v201);
  if (v96)
  {
    _Block_release(v96);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (capabilities::abs::supportsRFSelfTest(v97))
  {
    v98 = *MEMORY[0x29EDBF688];
    v99 = strlen(*MEMORY[0x29EDBF688]);
    if (v99 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v100 = v99;
    if (v99 >= 0x17)
    {
      if ((v99 | 7) == 0x17)
      {
        v103 = 25;
      }

      else
      {
        v103 = (v99 | 7) + 1;
      }

      v101 = operator new(v103);
      v245 = v100;
      v246 = v103 | 0x8000000000000000;
      __dst = v101;
    }

    else
    {
      HIBYTE(v246) = v99;
      v101 = &__dst;
      if (!v99)
      {
LABEL_213:
        *(v101 + v100) = 0;
        v196[0] = MEMORY[0x29EDCA5F8];
        v196[1] = 1174405120;
        v196[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_121;
        v196[3] = &__block_descriptor_tmp_124;
        v196[4] = this;
        v196[5] = v4;
        v197 = v6;
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v104 = _Block_copy(v196);
        v198 = v104;
        Service::registerCommandHandler(this, &__dst, &v198);
        if (v104)
        {
          _Block_release(v104);
        }

        if (SHIBYTE(v246) < 0)
        {
          operator delete(__dst);
        }

        v105 = *MEMORY[0x29EDBF690];
        v106 = strlen(*MEMORY[0x29EDBF690]);
        if (v106 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v107 = v106;
        if (v106 >= 0x17)
        {
          if ((v106 | 7) == 0x17)
          {
            v109 = 25;
          }

          else
          {
            v109 = (v106 | 7) + 1;
          }

          v108 = operator new(v109);
          v245 = v107;
          v246 = v109 | 0x8000000000000000;
          __dst = v108;
        }

        else
        {
          HIBYTE(v246) = v106;
          v108 = &__dst;
          if (!v106)
          {
LABEL_226:
            *(v108 + v107) = 0;
            v193[0] = MEMORY[0x29EDCA5F8];
            v193[1] = 1174405120;
            v193[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_125;
            v193[3] = &__block_descriptor_tmp_128;
            v193[4] = this;
            v193[5] = v4;
            v194 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v110 = _Block_copy(v193);
            v195 = v110;
            Service::registerCommandHandler(this, &__dst, &v195);
            if (v110)
            {
              _Block_release(v110);
            }

            if (SHIBYTE(v246) < 0)
            {
              operator delete(__dst);
            }

            v111 = *MEMORY[0x29EDBF760];
            v112 = strlen(*MEMORY[0x29EDBF760]);
            if (v112 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v113 = v112;
            if (v112 >= 0x17)
            {
              if ((v112 | 7) == 0x17)
              {
                v115 = 25;
              }

              else
              {
                v115 = (v112 | 7) + 1;
              }

              v114 = operator new(v115);
              v245 = v113;
              v246 = v115 | 0x8000000000000000;
              __dst = v114;
            }

            else
            {
              HIBYTE(v246) = v112;
              v114 = &__dst;
              if (!v112)
              {
                goto LABEL_239;
              }
            }

            memmove(v114, v111, v113);
LABEL_239:
            *(v114 + v113) = 0;
            v190[0] = MEMORY[0x29EDCA5F8];
            v190[1] = 1174405120;
            v190[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_129;
            v190[3] = &__block_descriptor_tmp_132;
            v190[4] = this;
            v190[5] = v4;
            v191 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v116 = _Block_copy(v190);
            v192 = v116;
            Service::registerCommandHandler(this, &__dst, &v192);
            if (v116)
            {
              _Block_release(v116);
            }

            if (SHIBYTE(v246) < 0)
            {
              operator delete(__dst);
            }

            if (v191)
            {
              std::__shared_weak_count::__release_weak(v191);
            }

            if (v194)
            {
              std::__shared_weak_count::__release_weak(v194);
            }

            if (v197)
            {
              std::__shared_weak_count::__release_weak(v197);
            }

            goto LABEL_249;
          }
        }

        memmove(v108, v105, v107);
        goto LABEL_226;
      }
    }

    memmove(v101, v98, v100);
    goto LABEL_213;
  }

  v102 = *(this + 13);
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(&dword_297288000, v102, OS_LOG_TYPE_DEFAULT, "#I RF Self Test not supported", &__dst, 2u);
  }

LABEL_249:
  v117 = *MEMORY[0x29EDBEEA8];
  v118 = strlen(*MEMORY[0x29EDBEEA8]);
  if (v118 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v119 = v118;
  if (v118 >= 0x17)
  {
    if ((v118 | 7) == 0x17)
    {
      v121 = 25;
    }

    else
    {
      v121 = (v118 | 7) + 1;
    }

    v120 = operator new(v121);
    v245 = v119;
    v246 = v121 | 0x8000000000000000;
    __dst = v120;
    goto LABEL_257;
  }

  HIBYTE(v246) = v118;
  v120 = &__dst;
  if (v118)
  {
LABEL_257:
    memmove(v120, v117, v119);
  }

  *(v120 + v119) = 0;
  v187[0] = MEMORY[0x29EDCA5F8];
  v187[1] = 1174405120;
  v187[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_133;
  v187[3] = &__block_descriptor_tmp_136;
  v187[4] = this;
  v187[5] = v4;
  v188 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v122 = _Block_copy(v187);
  v189 = v122;
  Service::registerCommandHandler(this, &__dst, &v189);
  if (v122)
  {
    _Block_release(v122);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v123 = *MEMORY[0x29EDBEBC0];
  v124 = strlen(*MEMORY[0x29EDBEBC0]);
  if (v124 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v125 = v124;
  if (v124 >= 0x17)
  {
    if ((v124 | 7) == 0x17)
    {
      v127 = 25;
    }

    else
    {
      v127 = (v124 | 7) + 1;
    }

    v126 = operator new(v127);
    v245 = v125;
    v246 = v127 | 0x8000000000000000;
    __dst = v126;
    goto LABEL_270;
  }

  HIBYTE(v246) = v124;
  v126 = &__dst;
  if (v124)
  {
LABEL_270:
    memmove(v126, v123, v125);
  }

  *(v126 + v125) = 0;
  v184[0] = MEMORY[0x29EDCA5F8];
  v184[1] = 1174405120;
  v184[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_137;
  v184[3] = &__block_descriptor_tmp_140;
  v184[4] = this;
  v184[5] = v4;
  v185 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v128 = _Block_copy(v184);
  v186 = v128;
  Service::registerCommandHandler(this, &__dst, &v186);
  if (v128)
  {
    _Block_release(v128);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v129 = *MEMORY[0x29EDBEBD8];
  v130 = strlen(*MEMORY[0x29EDBEBD8]);
  if (v130 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v131 = v130;
  if (v130 >= 0x17)
  {
    if ((v130 | 7) == 0x17)
    {
      v133 = 25;
    }

    else
    {
      v133 = (v130 | 7) + 1;
    }

    v132 = operator new(v133);
    v245 = v131;
    v246 = v133 | 0x8000000000000000;
    __dst = v132;
    goto LABEL_283;
  }

  HIBYTE(v246) = v130;
  v132 = &__dst;
  if (v130)
  {
LABEL_283:
    memmove(v132, v129, v131);
  }

  *(v132 + v131) = 0;
  v181[0] = MEMORY[0x29EDCA5F8];
  v181[1] = 1174405120;
  v181[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_141;
  v181[3] = &__block_descriptor_tmp_144;
  v181[4] = this;
  v181[5] = v4;
  v182 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v134 = _Block_copy(v181);
  v183 = v134;
  Service::registerCommandHandler(this, &__dst, &v183);
  if (v134)
  {
    _Block_release(v134);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v135 = *MEMORY[0x29EDBE5B8];
  v136 = strlen(*MEMORY[0x29EDBE5B8]);
  if (v136 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v137 = v136;
  if (v136 >= 0x17)
  {
    if ((v136 | 7) == 0x17)
    {
      v139 = 25;
    }

    else
    {
      v139 = (v136 | 7) + 1;
    }

    v138 = operator new(v139);
    v245 = v137;
    v246 = v139 | 0x8000000000000000;
    __dst = v138;
    goto LABEL_296;
  }

  HIBYTE(v246) = v136;
  v138 = &__dst;
  if (v136)
  {
LABEL_296:
    memmove(v138, v135, v137);
  }

  *(v138 + v137) = 0;
  v178[0] = MEMORY[0x29EDCA5F8];
  v178[1] = 1174405120;
  v178[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_145;
  v178[3] = &__block_descriptor_tmp_148;
  v178[4] = this;
  v178[5] = v4;
  v179 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v140 = _Block_copy(v178);
  v180 = v140;
  Service::registerCommandHandler(this, &__dst, &v180);
  if (v140)
  {
    _Block_release(v140);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (capabilities::abs::supportsRFFEScanData(v141))
  {
    v142 = *MEMORY[0x29EDBF550];
    v143 = strlen(*MEMORY[0x29EDBF550]);
    if (v143 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v144 = v143;
    if (v143 >= 0x17)
    {
      if ((v143 | 7) == 0x17)
      {
        v146 = 25;
      }

      else
      {
        v146 = (v143 | 7) + 1;
      }

      v145 = operator new(v146);
      v245 = v144;
      v246 = v146 | 0x8000000000000000;
      __dst = v145;
    }

    else
    {
      HIBYTE(v246) = v143;
      v145 = &__dst;
      if (!v143)
      {
        goto LABEL_311;
      }
    }

    memmove(v145, v142, v144);
LABEL_311:
    *(v145 + v144) = 0;
    v175[0] = MEMORY[0x29EDCA5F8];
    v175[1] = 1174405120;
    v175[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_149;
    v175[3] = &__block_descriptor_tmp_152;
    v175[4] = this;
    v175[5] = v4;
    v176 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v147 = _Block_copy(v175);
    v177 = v147;
    Service::registerCommandHandler(this, &__dst, &v177);
    if (v147)
    {
      _Block_release(v147);
    }

    if (SHIBYTE(v246) < 0)
    {
      operator delete(__dst);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_weak(v176);
    }
  }

  v148 = *MEMORY[0x29EDBF450];
  v149 = strlen(*MEMORY[0x29EDBF450]);
  if (v149 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v150 = v149;
  if (v149 >= 0x17)
  {
    if ((v149 | 7) == 0x17)
    {
      v152 = 25;
    }

    else
    {
      v152 = (v149 | 7) + 1;
    }

    v151 = operator new(v152);
    v245 = v150;
    v246 = v152 | 0x8000000000000000;
    __dst = v151;
    goto LABEL_325;
  }

  HIBYTE(v246) = v149;
  v151 = &__dst;
  if (v149)
  {
LABEL_325:
    memmove(v151, v148, v150);
  }

  *(v151 + v150) = 0;
  v172[0] = MEMORY[0x29EDCA5F8];
  v172[1] = 1174405120;
  v172[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_153;
  v172[3] = &__block_descriptor_tmp_154;
  v172[4] = v4;
  v173 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v153 = _Block_copy(v172);
  v174 = v153;
  Service::registerCommandHandler(this, &__dst, &v174);
  if (v153)
  {
    _Block_release(v153);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v154 = *MEMORY[0x29EDBF338];
  v155 = strlen(*MEMORY[0x29EDBF338]);
  if (v155 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v156 = v155;
  if (v155 >= 0x17)
  {
    if ((v155 | 7) == 0x17)
    {
      v158 = 25;
    }

    else
    {
      v158 = (v155 | 7) + 1;
    }

    v157 = operator new(v158);
    v245 = v156;
    v246 = v158 | 0x8000000000000000;
    __dst = v157;
    goto LABEL_338;
  }

  HIBYTE(v246) = v155;
  v157 = &__dst;
  if (v155)
  {
LABEL_338:
    memmove(v157, v154, v156);
  }

  *(v157 + v156) = 0;
  v169[0] = MEMORY[0x29EDCA5F8];
  v169[1] = 1174405120;
  v169[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_155;
  v169[3] = &__block_descriptor_tmp_158;
  v169[4] = v4;
  v170 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v159 = _Block_copy(v169);
  v171 = v159;
  Service::registerCommandHandler(this, &__dst, &v171);
  if (v159)
  {
    _Block_release(v159);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  v160 = *MEMORY[0x29EDBF328];
  v161 = strlen(*MEMORY[0x29EDBF328]);
  if (v161 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v162 = v161;
  if (v161 >= 0x17)
  {
    if ((v161 | 7) == 0x17)
    {
      v164 = 25;
    }

    else
    {
      v164 = (v161 | 7) + 1;
    }

    v163 = operator new(v164);
    v245 = v162;
    v246 = v164 | 0x8000000000000000;
    __dst = v163;
    goto LABEL_351;
  }

  HIBYTE(v246) = v161;
  v163 = &__dst;
  if (v161)
  {
LABEL_351:
    memmove(v163, v160, v162);
  }

  *(v163 + v162) = 0;
  v166[0] = MEMORY[0x29EDCA5F8];
  v166[1] = 1174405120;
  v166[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_159;
  v166[3] = &__block_descriptor_tmp_162;
  v166[4] = v4;
  v167 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v165 = _Block_copy(v166);
  v168 = v165;
  Service::registerCommandHandler(this, &__dst, &v168);
  if (v165)
  {
    _Block_release(v165);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  if (v167)
  {
    std::__shared_weak_count::__release_weak(v167);
  }

  if (v170)
  {
    std::__shared_weak_count::__release_weak(v170);
  }

  if (v173)
  {
    std::__shared_weak_count::__release_weak(v173);
  }

  if (v179)
  {
    std::__shared_weak_count::__release_weak(v179);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_weak(v182);
  }

  if (v185)
  {
    std::__shared_weak_count::__release_weak(v185);
  }

  if (v188)
  {
    std::__shared_weak_count::__release_weak(v188);
  }

  if (v200)
  {
    std::__shared_weak_count::__release_weak(v200);
  }

  if (v203)
  {
    std::__shared_weak_count::__release_weak(v203);
  }

  if (v206)
  {
    std::__shared_weak_count::__release_weak(v206);
  }

  if (v209)
  {
    std::__shared_weak_count::__release_weak(v209);
  }

  if (v212)
  {
    std::__shared_weak_count::__release_weak(v212);
  }

  if (v215)
  {
    std::__shared_weak_count::__release_weak(v215);
  }

  if (v218)
  {
    std::__shared_weak_count::__release_weak(v218);
  }

  if (v221)
  {
    std::__shared_weak_count::__release_weak(v221);
  }

  if (v224)
  {
    std::__shared_weak_count::__release_weak(v224);
  }

  if (v227)
  {
    std::__shared_weak_count::__release_weak(v227);
  }

  if (v230)
  {
    std::__shared_weak_count::__release_weak(v230);
  }

  if (v233)
  {
    std::__shared_weak_count::__release_weak(v233);
  }

  if (v236)
  {
    std::__shared_weak_count::__release_weak(v236);
  }

  if (v239)
  {
    std::__shared_weak_count::__release_weak(v239);
  }

  if (v242)
  {
    std::__shared_weak_count::__release_weak(v242);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29731ABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (v70)
  {
    _Block_release(v70);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  if (*(v71 - 105) < 0)
  {
    operator delete(*(v71 - 128));
  }

  if (a45)
  {
    std::__shared_weak_count::__release_weak(a45);
  }

  if (a53)
  {
    std::__shared_weak_count::__release_weak(a53);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  if (a69)
  {
    std::__shared_weak_count::__release_weak(a69);
  }

  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2E0]);
  }

  if (STACK[0x320])
  {
    std::__shared_weak_count::__release_weak(STACK[0x320]);
  }

  if (STACK[0x360])
  {
    std::__shared_weak_count::__release_weak(STACK[0x360]);
  }

  if (STACK[0x3A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x3A0]);
  }

  if (STACK[0x3E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x3E0]);
  }

  if (STACK[0x420])
  {
    std::__shared_weak_count::__release_weak(STACK[0x420]);
  }

  if (STACK[0x460])
  {
    std::__shared_weak_count::__release_weak(STACK[0x460]);
  }

  if (STACK[0x4A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x4A0]);
  }

  if (STACK[0x4E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x4E0]);
  }

  if (STACK[0x520])
  {
    std::__shared_weak_count::__release_weak(STACK[0x520]);
  }

  if (STACK[0x560])
  {
    std::__shared_weak_count::__release_weak(STACK[0x560]);
  }

  if (STACK[0x5A0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x5A0]);
  }

  if (STACK[0x5E0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x5E0]);
  }

  v73 = *(v71 - 208);
  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  v74 = *(v71 - 144);
  if (v74)
  {
    std::__shared_weak_count::__release_weak(v74);
  }

  std::__shared_weak_count::__release_weak(v69);
  _Unwind_Resume(a1);
}

void sub_29731B390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a69)
  {
    JUMPOUT(0x29731B2CCLL);
  }

  JUMPOUT(0x29731B2C8);
}

void sub_29731B3A8()
{
  if (!STACK[0x320])
  {
    JUMPOUT(0x29731B2E4);
  }

  JUMPOUT(0x29731B2E0);
}

void sub_29731B3C0()
{
  if (!STACK[0x3A0])
  {
    JUMPOUT(0x29731B2FCLL);
  }

  JUMPOUT(0x29731B2F8);
}

void sub_29731B3D8()
{
  if (!STACK[0x420])
  {
    JUMPOUT(0x29731B314);
  }

  JUMPOUT(0x29731B310);
}

void sub_29731B3F0()
{
  if (!STACK[0x4A0])
  {
    JUMPOUT(0x29731B32CLL);
  }

  JUMPOUT(0x29731B328);
}

void sub_29731B408()
{
  if (!STACK[0x520])
  {
    JUMPOUT(0x29731B344);
  }

  JUMPOUT(0x29731B340);
}

void sub_29731B420()
{
  if (!STACK[0x5A0])
  {
    JUMPOUT(0x29731B35CLL);
  }

  JUMPOUT(0x29731B358);
}

void sub_29731B438()
{
  if (!*(v0 - 208))
  {
    JUMPOUT(0x29731B374);
  }

  JUMPOUT(0x29731B370);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2;
        v12[3] = &__block_descriptor_tmp_11_0;
        v12[4] = v6;
        v10 = *a3;
        if (*a3)
        {
          v10 = _Block_copy(v10);
          v9 = a1[5];
        }

        aBlock = v10;
        v14 = v9;
        v11 = a1[6];
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v12);
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBED20];
    v5 = strlen(*MEMORY[0x29EDBED20]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v5 | 7) + 1;
      }

      p_dst = operator new(v22);
      *(&__dst + 1) = v6;
      v68 = v22 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v68) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_54:
        *(p_dst + v6) = 0;
        v23 = operator new(0x28uLL);
        v24 = v23;
        strcpy(v23, " rejected; ABM is shutting down ");
        v25 = SHIBYTE(v68);
        if ((SHIBYTE(v68) & 0x8000000000000000) != 0)
        {
          v25 = *(&__dst + 1);
          v28 = (v68 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v28 - *(&__dst + 1) < 0x20)
          {
            v26 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v68 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v28)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v27 = __dst;
            if (v28 > 0x3FFFFFFFFFFFFFF2)
            {
              v31 = 0;
LABEL_69:
              v32 = operator new(v3);
              v33 = v32;
              if (v25)
              {
                memmove(v32, v27, v25);
              }

              v34 = &v33[v25];
              v35 = v24[1];
              *v34 = *v24;
              *(v34 + 1) = v35;
              if (!v31)
              {
                operator delete(v27);
              }

              *(&__dst + 1) = v26;
              v68 = v3 | 0x8000000000000000;
              *&__dst = v33;
              v36 = &v33[v26];
LABEL_79:
              *v36 = 0;
              *__p = __dst;
              __p[2] = v68;
              v68 = 0;
              __dst = 0uLL;
              operator delete(v24);
              if (SHIBYTE(v68) < 0)
              {
                operator delete(__dst);
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
LABEL_81:
                  v42 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v42 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v42;
                  _os_log_impl(&dword_297288000, v41, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v44 = a1[5];
                  v43 = a1 + 5;
                  if (!v44)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_87;
                }
              }

              else
              {
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }
              }

              v45 = a1[5];
              v43 = a1 + 5;
              if (!v45)
              {
LABEL_104:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_106;
              }

LABEL_87:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v46 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v46 = __p[1];
              }

              if (v46)
              {
                v47 = xpc_dictionary_create(0, 0, 0);
                if (v47 || (v47 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v47) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v47);
                    v48 = v47;
                  }

                  else
                  {
                    v48 = xpc_null_create();
                  }
                }

                else
                {
                  v48 = xpc_null_create();
                  v47 = 0;
                }

                xpc_release(v47);
                v49 = xpc_null_create();
                v50 = __dst;
                *&__dst = v48;
                xpc_release(v50);
                xpc_release(v49);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v51 = __p;
                }

                else
                {
                  v51 = __p[0];
                }

                v52 = xpc_string_create(v51);
                if (!v52)
                {
                  v52 = xpc_null_create();
                }

                xpc_dictionary_set_value(v48, *MEMORY[0x29EDBE648], v52);
                v53 = xpc_null_create();
                xpc_release(v52);
                xpc_release(v53);
              }

              LODWORD(v61) = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v43, &v61, &__dst);
              xpc_release(__dst);
              goto LABEL_104;
            }

LABEL_60:
            v29 = 2 * v28;
            if (v26 > 2 * v28)
            {
              v29 = v26;
            }

            if ((v29 | 7) == 0x17)
            {
              v30 = 25;
            }

            else
            {
              v30 = (v29 | 7) + 1;
            }

            if (v29 >= 0x17)
            {
              v3 = v30;
            }

            else
            {
              v3 = 23;
            }

            v31 = v28 == 22;
            goto LABEL_69;
          }

          v37 = __dst;
          v39 = (__dst + *(&__dst + 1));
          v40 = v23[1];
          *v39 = *v23;
          v39[1] = v40;
          v38 = v25 + 32;
          *(&__dst + 1) = v25 + 32;
        }

        else
        {
          if (SHIBYTE(v68) < 0x17)
          {
            v26 = SHIBYTE(v68) | 0x20;
            v27 = &__dst;
            v28 = 22;
            goto LABEL_60;
          }

          v37 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v68), " rejected; ABM is shutting down ", 32);
          v38 = v25 + 32;
          HIBYTE(v68) = (v25 + 32) & 0x7F;
        }

        v36 = v37 + v38;
        goto LABEL_79;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_54;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_7;
  aBlock[3] = &__block_descriptor_tmp_10_1;
  v9 = a1[6];
  v8 = a1[7];
  aBlock[4] = v2;
  aBlock[5] = v9;
  v64 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[5];
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  v65 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v2[11];
  if (v12)
  {
    dispatch_retain(v12);
  }

  *&__dst = v11;
  *(&__dst + 1) = v12;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v14 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(__p, v13);
    v15 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v16 = *(&off_2A1399388 + 1);
    off_2A1399388 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = off_2A1399388;
  }

  v18 = *(&off_2A1399388 + 1);
  v57 = v14;
  v58 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v14 + 16))(&v59, v14);
  v61 = 0;
  v62 = 0;
  if (v60)
  {
    v62 = std::__shared_weak_count::lock(v60);
    if (v62)
    {
      v61 = v59;
    }

    if (v60)
    {
      std::__shared_weak_count::__release_weak(v60);
    }
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v61;
    if (v61)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = v61;
    if (v61)
    {
LABEL_30:
      v20 = __dst;
      if (__dst)
      {
        v20 = _Block_copy(__dst);
      }

      v55 = v20;
      object = *(&__dst + 1);
      if (*(&__dst + 1))
      {
        dispatch_retain(*(&__dst + 1));
      }

      (*(*v19 + 48))(v19, &v55);
      if (object)
      {
        dispatch_release(object);
      }

      if (v55)
      {
        _Block_release(v55);
      }
    }
  }

  v21 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (*(&__dst + 1))
  {
    dispatch_release(*(&__dst + 1));
  }

  if (__dst)
  {
    _Block_release(__dst);
  }

  if (v65)
  {
    _Block_release(v65);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

LABEL_106:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_29731BD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_7(void *a1, uint64_t *a2, const __CFDictionary **a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_36;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v38 = v8;
  if (!v8)
  {
    goto LABEL_36;
  }

  if (!a1[5])
  {
    goto LABEL_34;
  }

  v36 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    xdict = v9;
  }

  else
  {
    v10 = xpc_null_create();
    xdict = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26F9F0](v10) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v10);
    goto LABEL_12;
  }

  v11 = xpc_null_create();
LABEL_11:
  xdict = v11;
LABEL_12:
  xpc_release(v10);
  v33[1] = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAALL;
  value = 0;
  v33[0] = 0xAAAAAAAAAAAAAA00;
  valuePtr = 0;
  v12 = *a2;
  if (v12)
  {
    v36 = -534716416;
    v13 = *(v7 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v14 = xpc_string_create("Unknown error");
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
  }

  else
  {
    v16 = *a3;
    if (*a3)
    {
      v30[0] = 0xAAAAAAAAAAAAAAAALL;
      v30[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v30, v16);
      v17 = ctu::cf::map_adapter::copyCFNumberRef(v30, *MEMORY[0x29EDC8BE0]);
      v18 = v17;
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberLongType, &valuePtr);
        CFRelease(v18);
        LODWORD(value) = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8C20]);
      }

      v19 = *MEMORY[0x29EDC8BD0];
      ctu::cf::map_adapter::getString();
      *v33 = *buf;
      v34 = v40;
      HIBYTE(v40) = 0;
      buf[0] = 0;
      v20 = xpc_int64_create(valuePtr);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      v21 = xdict;
      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEDA0], v20);
      v22 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v22);
      v23 = xpc_int64_create(value);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(v21, *MEMORY[0x29EDBF388], v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      if (v34 >= 0)
      {
        v25 = v33;
      }

      else
      {
        v25 = v33[0];
      }

      v26 = xpc_string_create(v25);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      xpc_dictionary_set_value(v21, *MEMORY[0x29EDBEEF8], v26);
      v27 = xpc_null_create();
      xpc_release(v26);
      xpc_release(v27);
      MEMORY[0x29C26DFC0](v30);
    }
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(a1 + 7, &v36, &xdict);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  xpc_release(xdict);
  v8 = v38;
  if (v38)
  {
LABEL_34:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v28 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v28);
    }
  }

LABEL_36:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29731C23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(void *a1, void *a2)
{
  result = a2[5];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[6];
  v5 = a2[7];
  a1[5] = result;
  a1[6] = v6;
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE48c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, uint64_t a2, void **a3)
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
        v10[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_15;
        v10[3] = &__block_descriptor_tmp_21_2;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v10);
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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_15(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF4B0];
    v5 = strlen(*MEMORY[0x29EDBF4B0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v5 | 7) + 1;
      }

      p_dst = operator new(v10);
      *(&__dst + 1) = v6;
      v49 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v49) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_17:
        *(p_dst + v6) = 0;
        v11 = operator new(0x28uLL);
        v12 = v11;
        strcpy(v11, " rejected; ABM is shutting down ");
        v13 = SHIBYTE(v49);
        if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
        {
          v13 = *(&__dst + 1);
          v16 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v16 - *(&__dst + 1) < 0x20)
          {
            v14 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v49 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v16)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v15 = __dst;
            if (v16 > 0x3FFFFFFFFFFFFFF2)
            {
              v19 = 0;
LABEL_32:
              v20 = operator new(v3);
              v21 = v20;
              if (v13)
              {
                memmove(v20, v15, v13);
              }

              v22 = &v21[v13];
              v23 = v12[1];
              *v22 = *v12;
              *(v22 + 1) = v23;
              if (!v19)
              {
                operator delete(v15);
              }

              *(&__dst + 1) = v14;
              v49 = v3 | 0x8000000000000000;
              *&__dst = v21;
              v24 = &v21[v14];
LABEL_40:
              *v24 = 0;
              *__p = __dst;
              __p[2] = v49;
              v49 = 0;
              __dst = 0uLL;
              operator delete(v12);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst);
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
LABEL_42:
                  v30 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v30 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v30;
                  _os_log_impl(&dword_297288000, v29, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v32 = *(a1 + 40);
                  v31 = (a1 + 40);
                  if (!v32)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_42;
                }
              }

              v33 = *(a1 + 40);
              v31 = (a1 + 40);
              if (!v33)
              {
LABEL_65:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_67;
              }

LABEL_48:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v34 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v34 = __p[1];
              }

              if (v34)
              {
                v35 = xpc_dictionary_create(0, 0, 0);
                if (v35 || (v35 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v35) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v35);
                    v36 = v35;
                  }

                  else
                  {
                    v36 = xpc_null_create();
                  }
                }

                else
                {
                  v36 = xpc_null_create();
                  v35 = 0;
                }

                xpc_release(v35);
                v37 = xpc_null_create();
                v38 = __dst;
                *&__dst = v36;
                xpc_release(v38);
                xpc_release(v37);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                v40 = xpc_string_create(v39);
                if (!v40)
                {
                  v40 = xpc_null_create();
                }

                xpc_dictionary_set_value(v36, *MEMORY[0x29EDBE648], v40);
                v41 = xpc_null_create();
                xpc_release(v40);
                xpc_release(v41);
              }

              v46 = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v31, &v46, &__dst);
              xpc_release(__dst);
              goto LABEL_65;
            }

LABEL_23:
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
              v3 = v18;
            }

            else
            {
              v3 = 23;
            }

            v19 = v16 == 22;
            goto LABEL_32;
          }

          v25 = __dst;
          v27 = (__dst + *(&__dst + 1));
          v28 = v11[1];
          *v27 = *v11;
          v27[1] = v28;
          v26 = v13 + 32;
          *(&__dst + 1) = v13 + 32;
        }

        else
        {
          if (SHIBYTE(v49) < 0x17)
          {
            v14 = SHIBYTE(v49) | 0x20;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_23;
          }

          v25 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v49), " rejected; ABM is shutting down ", 32);
          v26 = v13 + 32;
          HIBYTE(v49) = (v13 + 32) & 0x7F;
        }

        v24 = v25 + v26;
        goto LABEL_40;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_17;
  }

  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 1174405120;
  v43[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_16;
  v43[3] = &__block_descriptor_tmp_18;
  v43[4] = v2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  v9 = _Block_copy(v43);
  v45 = v9;
  RadioModule::getVersion_sync(v2, &v45);
  if (v9)
  {
    _Block_release(v9);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

LABEL_67:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_29731CB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::getVersion_sync(uint64_t a1, void (***a2)(void *, std::string *))
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *(a1 + 135);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 135);
    if ((v8 & 0x80000000) == 0)
    {
LABEL_5:
      if (v8)
      {
        v9 = *a2;
        v37 = *(a1 + 112);
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    v11 = *a2;
    std::string::__init_copy_ctor_external(&v37, *(a1 + 112), v10);
    v9 = v11;
LABEL_10:
    v9[2](v9, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    goto LABEL_53;
  }

LABEL_12:
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule15getVersion_syncEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_166;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v33 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = *a2;
  if (*a2)
  {
    v12 = _Block_copy(v12);
  }

  v34 = v12;
  v13 = _Block_copy(aBlock);
  v14 = *(a1 + 88);
  if (v14)
  {
    dispatch_retain(v14);
  }

  v35 = v13;
  v36 = v14;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v15 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v16 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v37, v15);
    v17 = *&v37.__r_.__value_.__l.__data_;
    *&v37.__r_.__value_.__l.__data_ = 0uLL;
    v18 = *(&off_2A1399388 + 1);
    off_2A1399388 = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    size = v37.__r_.__value_.__l.__size_;
    if (v37.__r_.__value_.__l.__size_ && !atomic_fetch_add((v37.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v16 = off_2A1399388;
  }

  v20 = *(&off_2A1399388 + 1);
  v26 = v16;
  v27 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v16 + 16))(&v28, v16);
  v30 = 0;
  v31 = 0;
  if (v29)
  {
    v31 = std::__shared_weak_count::lock(v29);
    if (v31)
    {
      v30 = v28;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = v30;
    if (v30)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = v30;
    if (v30)
    {
LABEL_34:
      v22 = v35;
      if (v35)
      {
        v22 = _Block_copy(v35);
      }

      v24 = v22;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      (*(*v21 + 64))(v21, &v24);
      if (object)
      {
        dispatch_release(object);
      }

      if (v24)
      {
        _Block_release(v24);
      }
    }
  }

  v23 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_53:
  std::__shared_weak_count::__release_weak(v7);
}

void sub_29731D050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 80);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
    std::__shared_weak_count::__release_weak(v24);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_16(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v80 = 0;
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
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_11;
    }

LABEL_32:
    v80 = -534716416;
    v21 = xpc_string_create("Unknown error");
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    goto LABEL_149;
  }

  if (!a2[1])
  {
    goto LABEL_32;
  }

LABEL_11:
  v8 = operator new(0x28uLL);
  strcpy(v8, "AppleBasebandServices_Manager-1397");
  v9 = xpc_string_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF160], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  operator delete(v8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v11 = xpc_string_create(a2);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE8F0], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v13 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&__dst);
    v14 = __dst;
    __dst = 0uLL;
    v15 = *(&off_2A1399498 + 1);
    off_2A1399498 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A1399498;
  }

  __p = v13;
  v72 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v17 = *MEMORY[0x29EDBEA50];
  v18 = strlen(*MEMORY[0x29EDBEA50]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v18 | 7) + 1;
    }

    p_dst = operator new(v23);
    *(&__dst + 1) = v19;
    v77 = v23 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_39;
  }

  HIBYTE(v77) = v18;
  p_dst = &__dst;
  if (v18)
  {
LABEL_39:
    memmove(p_dst, v17, v19);
  }

  *(p_dst + v19) = 0;
  os_unfair_lock_lock(v13 + 10);
  Preferences::getPreference<__CFDictionary const*>(v13, &__dst, &cf);
  os_unfair_lock_unlock(v13 + 10);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    v24 = v72;
    if (!v72)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = v72;
    if (!v72)
    {
LABEL_45:
      v25 = cf;
      if (!cf)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  v25 = cf;
  if (!cf)
  {
LABEL_54:
    v32 = *(v4 + 104);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst) = 0;
      _os_log_error_impl(&dword_297288000, v32, OS_LOG_TYPE_ERROR, "Failed to get ABM Shared Data", &__dst, 2u);
    }

    goto LABEL_149;
  }

LABEL_46:
  v26 = CFGetTypeID(v25);
  if (v26 != CFDictionaryGetTypeID())
  {
    goto LABEL_54;
  }

  v27 = cf;
  v75 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v74[0] = 0xAAAAAAAAAAAAAAAALL;
  v74[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v74, v27);
  v28 = *MEMORY[0x29EDBF8A8];
  v29 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v30 = v29;
  if (v29 >= 0x17)
  {
    if ((v29 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v29 | 7) + 1;
    }

    p_p = operator new(v33);
    v72 = v30;
    v73 = v33 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_60;
  }

  HIBYTE(v73) = v29;
  p_p = &__p;
  if (v29)
  {
LABEL_60:
    memmove(p_p, v28, v30);
  }

  v34 = *MEMORY[0x29EDBEAB8];
  *(p_p + v30) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v34);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v81);
  if (v77 >= 0)
  {
    v35 = &__dst;
  }

  else
  {
    v35 = __dst;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v34, v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_68:
      v38 = strlen(v28);
      if (v38 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_69;
      }

LABEL_136:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(__p);
  v38 = strlen(v28);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_136;
  }

LABEL_69:
  v39 = v38;
  if (v38 >= 0x17)
  {
    if ((v38 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v38 | 7) + 1;
    }

    v40 = operator new(v41);
    v72 = v39;
    v73 = v41 | 0x8000000000000000;
    __p = v40;
    goto LABEL_76;
  }

  HIBYTE(v73) = v38;
  v40 = &__p;
  if (v38)
  {
LABEL_76:
    memmove(v40, v28, v39);
  }

  v42 = *MEMORY[0x29EDBE988];
  *(v40 + v39) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v42);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v81);
  if (v77 >= 0)
  {
    v43 = &__dst;
  }

  else
  {
    v43 = __dst;
  }

  v44 = xpc_string_create(v43);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v42, v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_84:
      v46 = strlen(v28);
      if (v46 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_85;
      }

LABEL_139:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

  operator delete(__p);
  v46 = strlen(v28);
  if (v46 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_139;
  }

LABEL_85:
  v47 = v46;
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v49 = 25;
    }

    else
    {
      v49 = (v46 | 7) + 1;
    }

    v48 = operator new(v49);
    v72 = v47;
    v73 = v49 | 0x8000000000000000;
    __p = v48;
    goto LABEL_92;
  }

  HIBYTE(v73) = v46;
  v48 = &__p;
  if (v46)
  {
LABEL_92:
    memmove(v48, v28, v47);
  }

  v50 = *MEMORY[0x29EDBEC08];
  *(v48 + v47) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v50);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v81);
  if (v77 >= 0)
  {
    v51 = &__dst;
  }

  else
  {
    v51 = __dst;
  }

  v52 = xpc_string_create(v51);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v50, v52);
  v53 = xpc_null_create();
  xpc_release(v52);
  xpc_release(v53);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_100:
      v54 = strlen(v28);
      if (v54 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_101;
      }

LABEL_142:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(__p);
  v54 = strlen(v28);
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_142;
  }

LABEL_101:
  v55 = v54;
  if (v54 >= 0x17)
  {
    if ((v54 | 7) == 0x17)
    {
      v57 = 25;
    }

    else
    {
      v57 = (v54 | 7) + 1;
    }

    v56 = operator new(v57);
    v72 = v55;
    v73 = v57 | 0x8000000000000000;
    __p = v56;
    goto LABEL_108;
  }

  HIBYTE(v73) = v54;
  v56 = &__p;
  if (v54)
  {
LABEL_108:
    memmove(v56, v28, v55);
  }

  v58 = *MEMORY[0x29EDBE6A8];
  *(v56 + v55) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v58);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v81);
  if (v77 >= 0)
  {
    v59 = &__dst;
  }

  else
  {
    v59 = __dst;
  }

  v60 = xpc_string_create(v59);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v58, v60);
  v61 = xpc_null_create();
  xpc_release(v60);
  xpc_release(v61);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_116:
      v62 = strlen(v28);
      if (v62 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_117;
      }

LABEL_145:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_116;
  }

  operator delete(__p);
  v62 = strlen(v28);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_145;
  }

LABEL_117:
  v63 = v62;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v62 | 7) + 1;
    }

    v64 = operator new(v65);
    v72 = v63;
    v73 = v65 | 0x8000000000000000;
    __p = v64;
  }

  else
  {
    HIBYTE(v73) = v62;
    v64 = &__p;
    if (!v62)
    {
      goto LABEL_125;
    }
  }

  memmove(v64, v28, v63);
LABEL_125:
  v66 = *MEMORY[0x29EDBEC10];
  *(v64 + v63) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v81, v66);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26DF80](&v81);
  if (v77 >= 0)
  {
    v67 = &__dst;
  }

  else
  {
    v67 = __dst;
  }

  v68 = xpc_string_create(v67);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v66, v68);
  v69 = xpc_null_create();
  xpc_release(v68);
  xpc_release(v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
LABEL_132:
      MEMORY[0x29C26DFC0](v74);
      v70 = v75;
      if (!v75)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }
  }

  else if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

  operator delete(__p);
  MEMORY[0x29C26DFC0](v74);
  v70 = v75;
  if (v75)
  {
LABEL_148:
    CFRelease(v70);
  }

LABEL_149:
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 40), &v80, &xdict);
  xpc_release(xdict);
}

void sub_29731DBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  MEMORY[0x29C26DF80](v23 - 72);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26DFC0](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_25(void *a1, uint64_t a2, void **a3)
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
        v10[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_26;
        v10[3] = &__block_descriptor_tmp_32_0;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v10);
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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_26(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF5E8];
    v5 = strlen(*MEMORY[0x29EDBF5E8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v5 | 7) + 1;
      }

      p_dst = operator new(v10);
      *(&__dst + 1) = v6;
      v49 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v49) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_17:
        *(p_dst + v6) = 0;
        v11 = operator new(0x28uLL);
        v12 = v11;
        strcpy(v11, " rejected; ABM is shutting down ");
        v13 = SHIBYTE(v49);
        if ((SHIBYTE(v49) & 0x8000000000000000) != 0)
        {
          v13 = *(&__dst + 1);
          v16 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v16 - *(&__dst + 1) < 0x20)
          {
            v14 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v49 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v16)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v15 = __dst;
            if (v16 > 0x3FFFFFFFFFFFFFF2)
            {
              v19 = 0;
LABEL_32:
              v20 = operator new(v3);
              v21 = v20;
              if (v13)
              {
                memmove(v20, v15, v13);
              }

              v22 = &v21[v13];
              v23 = v12[1];
              *v22 = *v12;
              *(v22 + 1) = v23;
              if (!v19)
              {
                operator delete(v15);
              }

              *(&__dst + 1) = v14;
              v49 = v3 | 0x8000000000000000;
              *&__dst = v21;
              v24 = &v21[v14];
LABEL_40:
              *v24 = 0;
              *__p = __dst;
              __p[2] = v49;
              v49 = 0;
              __dst = 0uLL;
              operator delete(v12);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst);
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
LABEL_42:
                  v30 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v30 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v30;
                  _os_log_impl(&dword_297288000, v29, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v32 = *(a1 + 40);
                  v31 = (a1 + 40);
                  if (!v32)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v29 = v2[13];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_42;
                }
              }

              v33 = *(a1 + 40);
              v31 = (a1 + 40);
              if (!v33)
              {
LABEL_65:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_67;
              }

LABEL_48:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v34 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v34 = __p[1];
              }

              if (v34)
              {
                v35 = xpc_dictionary_create(0, 0, 0);
                if (v35 || (v35 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v35) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v35);
                    v36 = v35;
                  }

                  else
                  {
                    v36 = xpc_null_create();
                  }
                }

                else
                {
                  v36 = xpc_null_create();
                  v35 = 0;
                }

                xpc_release(v35);
                v37 = xpc_null_create();
                v38 = __dst;
                *&__dst = v36;
                xpc_release(v38);
                xpc_release(v37);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                v40 = xpc_string_create(v39);
                if (!v40)
                {
                  v40 = xpc_null_create();
                }

                xpc_dictionary_set_value(v36, *MEMORY[0x29EDBE648], v40);
                v41 = xpc_null_create();
                xpc_release(v40);
                xpc_release(v41);
              }

              v46 = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v31, &v46, &__dst);
              xpc_release(__dst);
              goto LABEL_65;
            }

LABEL_23:
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
              v3 = v18;
            }

            else
            {
              v3 = 23;
            }

            v19 = v16 == 22;
            goto LABEL_32;
          }

          v25 = __dst;
          v27 = (__dst + *(&__dst + 1));
          v28 = v11[1];
          *v27 = *v11;
          v27[1] = v28;
          v26 = v13 + 32;
          *(&__dst + 1) = v13 + 32;
        }

        else
        {
          if (SHIBYTE(v49) < 0x17)
          {
            v14 = SHIBYTE(v49) | 0x20;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_23;
          }

          v25 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v49), " rejected; ABM is shutting down ", 32);
          v26 = v13 + 32;
          HIBYTE(v49) = (v13 + 32) & 0x7F;
        }

        v24 = v25 + v26;
        goto LABEL_40;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_17;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_27;
  aBlock[3] = &__block_descriptor_tmp_29_0;
  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v44 = v8;
  v9 = _Block_copy(aBlock);
  v45 = v9;
  RadioModule::getOperatingMode_sync(v2, &v45);
  if (v9)
  {
    _Block_release(v9);
  }

  if (v44)
  {
    _Block_release(v44);
  }

LABEL_67:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_29731E368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::getOperatingMode_sync(uint64_t a1, void **a2)
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule21getOperatingMode_syncEN8dispatch5blockIU13block_pointerFviEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_167;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v31 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v32 = v9;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 88);
  if (v11)
  {
    dispatch_retain(*(a1 + 88));
  }

  v33 = v10;
  v34 = v11;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v12 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v13 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v12);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    v15 = *(&off_2A1399388 + 1);
    off_2A1399388 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A1399388;
  }

  v17 = *(&off_2A1399388 + 1);
  v24 = v13;
  v25 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v13 + 16))(&v26, v13);
  v28 = 0;
  v29 = 0;
  if (v27)
  {
    v29 = std::__shared_weak_count::lock(v27);
    if (v29)
    {
      v28 = v26;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v28;
    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v18 = v28;
    if (!v28)
    {
      goto LABEL_37;
    }
  }

  v19 = *(a1 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v19, OS_LOG_TYPE_DEFAULT, "#I Request to get operating mode", buf, 2u);
  }

  v20 = v33;
  if (v33)
  {
    v20 = _Block_copy(v33);
  }

  v22 = v20;
  object = v34;
  if (v34)
  {
    dispatch_retain(v34);
  }

  (*(*v18 + 112))(v18, &v22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    _Block_release(v22);
  }

LABEL_37:
  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  if (v33)
  {
    _Block_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29731E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 80);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_27(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    xdict = v4;
  }

  else
  {
    v5 = xpc_null_create();
    xdict = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  xdict = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(a2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF030], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = (a2 >> 31) & 0xE020E002;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 32), &v9, &xdict);
  xpc_release(xdict);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_36(void *a1, xpc_object_t *a2, void (***a3)(void *, uint64_t, xpc_object_t *))
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v26 = v8;
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE4E0]);
        v27 = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          v27 = xpc_null_create();
        }

        v11 = xpc::dyn_cast_or_default(&v27, 0x2710);
        xpc_release(v27);
        v12 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF030]);
        v27 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v27 = xpc_null_create();
        }

        v13 = xpc::dyn_cast_or_default(&v27, 0xFFFFFFFFLL);
        xpc_release(v27);
        v14 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF4D8]);
        v27 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v27 = xpc_null_create();
        }

        v15 = xpc::dyn_cast_or_default(&v27, 0);
        xpc_release(v27);
        if (v13 < 0)
        {
          v17 = xpc_null_create();
          v18 = *a3;
          v27 = v17;
          v19 = xpc_null_create();
          v18[2](v18, 3760250882, &v27);
          xpc_release(v27);
          xpc_release(v19);
        }

        else
        {
          v20[0] = MEMORY[0x29EDCA5F8];
          v20[1] = 1174405120;
          v20[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_37;
          v20[3] = &__block_descriptor_tmp_45_0;
          v20[4] = v7;
          v16 = *a3;
          if (*a3)
          {
            v16 = _Block_copy(v16);
          }

          aBlock = v16;
          v22 = v11;
          v23 = v13;
          v24 = v15;
          ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v7 + 72), v20);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_29731EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(*(v11 - 56));
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_37(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF5F8];
    v5 = strlen(*MEMORY[0x29EDBF5F8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v5 | 7) + 1;
      }

      p_dst = operator new(v13);
      *(&__dst + 1) = v6;
      v52 = v13 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v52) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_17:
        *(p_dst + v6) = 0;
        v14 = operator new(0x28uLL);
        v15 = v14;
        strcpy(v14, " rejected; ABM is shutting down ");
        v16 = SHIBYTE(v52);
        if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
        {
          v16 = *(&__dst + 1);
          v19 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v19 - *(&__dst + 1) < 0x20)
          {
            v17 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v52 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v19)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v18 = __dst;
            if (v19 > 0x3FFFFFFFFFFFFFF2)
            {
              v22 = 0;
LABEL_32:
              v23 = operator new(v3);
              v24 = v23;
              if (v16)
              {
                memmove(v23, v18, v16);
              }

              v25 = &v24[v16];
              v26 = v15[1];
              *v25 = *v15;
              *(v25 + 1) = v26;
              if (!v22)
              {
                operator delete(v18);
              }

              *(&__dst + 1) = v17;
              v52 = v3 | 0x8000000000000000;
              *&__dst = v24;
              v27 = &v24[v17];
LABEL_40:
              *v27 = 0;
              *__p = __dst;
              __p[2] = v52;
              v52 = 0;
              __dst = 0uLL;
              operator delete(v15);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__dst);
                v32 = v2[13];
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
LABEL_42:
                  v33 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v33 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v33;
                  _os_log_impl(&dword_297288000, v32, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v35 = *(a1 + 40);
                  v34 = (a1 + 40);
                  if (!v35)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v32 = v2[13];
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_42;
                }
              }

              v36 = *(a1 + 40);
              v34 = (a1 + 40);
              if (!v36)
              {
LABEL_65:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_67;
              }

LABEL_48:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v37 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v37 = __p[1];
              }

              if (v37)
              {
                v38 = xpc_dictionary_create(0, 0, 0);
                if (v38 || (v38 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v38) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v38);
                    v39 = v38;
                  }

                  else
                  {
                    v39 = xpc_null_create();
                  }
                }

                else
                {
                  v39 = xpc_null_create();
                  v38 = 0;
                }

                xpc_release(v38);
                v40 = xpc_null_create();
                v41 = __dst;
                *&__dst = v39;
                xpc_release(v41);
                xpc_release(v40);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v42 = __p;
                }

                else
                {
                  v42 = __p[0];
                }

                v43 = xpc_string_create(v42);
                if (!v43)
                {
                  v43 = xpc_null_create();
                }

                xpc_dictionary_set_value(v39, *MEMORY[0x29EDBE648], v43);
                v44 = xpc_null_create();
                xpc_release(v43);
                xpc_release(v44);
              }

              v49 = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v34, &v49, &__dst);
              xpc_release(__dst);
              goto LABEL_65;
            }

LABEL_23:
            v20 = 2 * v19;
            if (v17 > 2 * v19)
            {
              v20 = v17;
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
              v3 = v21;
            }

            else
            {
              v3 = 23;
            }

            v22 = v19 == 22;
            goto LABEL_32;
          }

          v28 = __dst;
          v30 = (__dst + *(&__dst + 1));
          v31 = v14[1];
          *v30 = *v14;
          v30[1] = v31;
          v29 = v16 + 32;
          *(&__dst + 1) = v16 + 32;
        }

        else
        {
          if (SHIBYTE(v52) < 0x17)
          {
            v17 = SHIBYTE(v52) | 0x20;
            v18 = &__dst;
            v19 = 22;
            goto LABEL_23;
          }

          v28 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v52), " rejected; ABM is shutting down ", 32);
          v29 = v16 + 32;
          HIBYTE(v52) = (v16 + 32) & 0x7F;
        }

        v27 = v28 + v29;
        goto LABEL_40;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_17;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 52);
  v10 = *(a1 + 56);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_38;
  aBlock[3] = &__block_descriptor_tmp_42;
  v11 = *(a1 + 40);
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  v47 = v11;
  v12 = _Block_copy(aBlock);
  v48 = v12;
  RadioModule::setOperatingMode_sync(v2, v8, v9, v10, &v48);
  if (v12)
  {
    _Block_release(v12);
  }

  if (v47)
  {
    _Block_release(v47);
  }

LABEL_67:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_29731F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::setOperatingMode_sync(void *a1, unsigned int a2, uint64_t a3, int a4, void **a5)
{
  v6 = a1[10];
  if (!v6 || (v11 = a1[9], (v12 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  p_shared_weak_owners = &v12->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule21setOperatingMode_syncEjN5radio13OperatingModeEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_188;
  aBlock[4] = a1;
  aBlock[5] = v11;
  v39 = v13;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v15 = *a5;
  if (*a5)
  {
    v15 = _Block_copy(v15);
  }

  v40 = v15;
  v16 = _Block_copy(aBlock);
  v17 = a1[11];
  if (v17)
  {
    dispatch_retain(v17);
  }

  v41 = v16;
  v42 = v17;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v18 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v19 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v43, v18);
    v20 = v43;
    v43 = 0uLL;
    v21 = *(&off_2A1399388 + 1);
    off_2A1399388 = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = *(&v43 + 1);
    if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v19 = off_2A1399388;
  }

  v23 = *(&off_2A1399388 + 1);
  v32 = v19;
  v33 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v19 + 16))(&v34, v19);
  v36 = 0;
  v37 = 0;
  if (v35)
  {
    v37 = std::__shared_weak_count::lock(v35);
    if (v37)
    {
      v36 = v34;
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v24 = v36;
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = v36;
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  v25 = 1000000 * a2;
  v26 = v41;
  if (a4)
  {
    if (v41)
    {
      v26 = _Block_copy(v41);
    }

    v30 = v26;
    object = v42;
    if (v42)
    {
      dispatch_retain(v42);
    }

    (*(*v24 + 104))(v24, v25, a3, &v30);
    if (object)
    {
      dispatch_release(object);
    }

    if (v30)
    {
      _Block_release(v30);
    }
  }

  else
  {
    if (v41)
    {
      v26 = _Block_copy(v41);
    }

    v28 = v26;
    v29 = v42;
    if (v42)
    {
      dispatch_retain(v42);
    }

    (*(*v24 + 96))(v24, v25, a3, &v28);
    if (v29)
    {
      dispatch_release(v29);
    }

    if (v28)
    {
      _Block_release(v28);
    }
  }

LABEL_45:
  v27 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  std::__shared_weak_count::__release_weak(v13);
}

void sub_29731F774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *aBlock)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a17);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v27 - 112);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  std::__shared_weak_count::__release_weak(v26);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_38(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3760250880;
  }

  v4 = xpc_null_create();
  v5 = *(a1 + 32);
  object = v4;
  v6 = xpc_null_create();
  (*(v5 + 16))(v5, v3, &object);
  xpc_release(object);
  xpc_release(v6);
}

void sub_29731F890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_49(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 1174405120;
        v12[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_50;
        v12[3] = &__block_descriptor_tmp_57_0;
        v12[4] = v6;
        v10 = *a3;
        if (*a3)
        {
          v10 = _Block_copy(v10);
          v9 = a1[5];
        }

        aBlock = v10;
        v14 = v9;
        v11 = a1[6];
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        ctu::SharedSynchronizable<RadioModule>::execute_wrapped((v6 + 72), v12);
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_2_50(void *a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if ((*(*v2 + 96))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(__p, 170, 24);
    v4 = *MEMORY[0x29EDBF5E0];
    v5 = strlen(*MEMORY[0x29EDBF5E0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v5 | 7) + 1;
      }

      p_dst = operator new(v22);
      *(&__dst + 1) = v6;
      v68 = v22 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v68) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_54:
        *(p_dst + v6) = 0;
        v23 = operator new(0x28uLL);
        v24 = v23;
        strcpy(v23, " rejected; ABM is shutting down ");
        v25 = SHIBYTE(v68);
        if ((SHIBYTE(v68) & 0x8000000000000000) != 0)
        {
          v25 = *(&__dst + 1);
          v28 = (v68 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v28 - *(&__dst + 1) < 0x20)
          {
            v26 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v68 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v28)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v27 = __dst;
            if (v28 > 0x3FFFFFFFFFFFFFF2)
            {
              v31 = 0;
LABEL_69:
              v32 = operator new(v3);
              v33 = v32;
              if (v25)
              {
                memmove(v32, v27, v25);
              }

              v34 = &v33[v25];
              v35 = v24[1];
              *v34 = *v24;
              *(v34 + 1) = v35;
              if (!v31)
              {
                operator delete(v27);
              }

              *(&__dst + 1) = v26;
              v68 = v3 | 0x8000000000000000;
              *&__dst = v33;
              v36 = &v33[v26];
LABEL_79:
              *v36 = 0;
              *__p = __dst;
              __p[2] = v68;
              v68 = 0;
              __dst = 0uLL;
              operator delete(v24);
              if (SHIBYTE(v68) < 0)
              {
                operator delete(__dst);
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
LABEL_81:
                  v42 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v42 = __p[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v42;
                  _os_log_impl(&dword_297288000, v41, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  v44 = a1[5];
                  v43 = a1 + 5;
                  if (!v44)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_87;
                }
              }

              else
              {
                v41 = v2[13];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }
              }

              v45 = a1[5];
              v43 = a1 + 5;
              if (!v45)
              {
LABEL_104:
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_106;
              }

LABEL_87:
              *&__dst = 0xAAAAAAAAAAAAAAAALL;
              *&__dst = xpc_null_create();
              v46 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) < 0)
              {
                v46 = __p[1];
              }

              if (v46)
              {
                v47 = xpc_dictionary_create(0, 0, 0);
                if (v47 || (v47 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C26F9F0](v47) == MEMORY[0x29EDCAA00])
                  {
                    xpc_retain(v47);
                    v48 = v47;
                  }

                  else
                  {
                    v48 = xpc_null_create();
                  }
                }

                else
                {
                  v48 = xpc_null_create();
                  v47 = 0;
                }

                xpc_release(v47);
                v49 = xpc_null_create();
                v50 = __dst;
                *&__dst = v48;
                xpc_release(v50);
                xpc_release(v49);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v51 = __p;
                }

                else
                {
                  v51 = __p[0];
                }

                v52 = xpc_string_create(v51);
                if (!v52)
                {
                  v52 = xpc_null_create();
                }

                xpc_dictionary_set_value(v48, *MEMORY[0x29EDBE648], v52);
                v53 = xpc_null_create();
                xpc_release(v52);
                xpc_release(v53);
              }

              LODWORD(v61) = -534716415;
              dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v43, &v61, &__dst);
              xpc_release(__dst);
              goto LABEL_104;
            }

LABEL_60:
            v29 = 2 * v28;
            if (v26 > 2 * v28)
            {
              v29 = v26;
            }

            if ((v29 | 7) == 0x17)
            {
              v30 = 25;
            }

            else
            {
              v30 = (v29 | 7) + 1;
            }

            if (v29 >= 0x17)
            {
              v3 = v30;
            }

            else
            {
              v3 = 23;
            }

            v31 = v28 == 22;
            goto LABEL_69;
          }

          v37 = __dst;
          v39 = (__dst + *(&__dst + 1));
          v40 = v23[1];
          *v39 = *v23;
          v39[1] = v40;
          v38 = v25 + 32;
          *(&__dst + 1) = v25 + 32;
        }

        else
        {
          if (SHIBYTE(v68) < 0x17)
          {
            v26 = SHIBYTE(v68) | 0x20;
            v27 = &__dst;
            v28 = 22;
            goto LABEL_60;
          }

          v37 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v68), " rejected; ABM is shutting down ", 32);
          v38 = v25 + 32;
          HIBYTE(v68) = (v25 + 32) & 0x7F;
        }

        v36 = v37 + v38;
        goto LABEL_79;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_54;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_51;
  aBlock[3] = &__block_descriptor_tmp_54_0;
  v9 = a1[6];
  v8 = a1[7];
  aBlock[4] = v2;
  aBlock[5] = v9;
  v64 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[5];
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  v65 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v2[11];
  if (v12)
  {
    dispatch_retain(v12);
  }

  *&__dst = v11;
  *(&__dst + 1) = v12;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v14 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(__p, v13);
    v15 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v16 = *(&off_2A1399388 + 1);
    off_2A1399388 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = off_2A1399388;
  }

  v18 = *(&off_2A1399388 + 1);
  v57 = v14;
  v58 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v14 + 16))(&v59, v14);
  v61 = 0;
  v62 = 0;
  if (v60)
  {
    v62 = std::__shared_weak_count::lock(v60);
    if (v62)
    {
      v61 = v59;
    }

    if (v60)
    {
      std::__shared_weak_count::__release_weak(v60);
    }
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v61;
    if (v61)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = v61;
    if (v61)
    {
LABEL_30:
      v20 = __dst;
      if (__dst)
      {
        v20 = _Block_copy(__dst);
      }

      v55 = v20;
      object = *(&__dst + 1);
      if (*(&__dst + 1))
      {
        dispatch_retain(*(&__dst + 1));
      }

      (*(*v19 + 56))(v19, &v55);
      if (object)
      {
        dispatch_release(object);
      }

      if (v55)
      {
        _Block_release(v55);
      }
    }
  }

  v21 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (*(&__dst + 1))
  {
    dispatch_release(*(&__dst + 1));
  }

  if (__dst)
  {
    _Block_release(__dst);
  }

  if (v65)
  {
    _Block_release(v65);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

LABEL_106:
  v54 = *MEMORY[0x29EDCA608];
}