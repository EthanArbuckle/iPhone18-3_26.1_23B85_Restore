const char *BasebandRFDiagnostics::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE60CA8[a1];
  }
}

void BasebandRFDiagnostics::BasebandRFDiagnostics(BasebandRFDiagnostics *this)
{
  BasebandDiagnostics::BasebandDiagnostics(this);
  *v1 = &unk_2A1E20678;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
}

{
  BasebandDiagnostics::BasebandDiagnostics(this);
  *v1 = &unk_2A1E20678;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
}

void BasebandRFDiagnostics::~BasebandRFDiagnostics(BasebandRFDiagnostics *this)
{
  *this = &unk_2A1E20678;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_296FE4000, v2, OS_LOG_TYPE_DEFAULT, "#I BasebandRFDiagHelper dealloc", v6, 2u);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  BasebandDiagnostics::~BasebandDiagnostics(this);
}

{
  BasebandRFDiagnostics::~BasebandRFDiagnostics(this);

  operator delete(v1);
}

void BasebandRFDiagnostics::resetAll(BasebandRFDiagnostics *this)
{
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  if (*(this + 7))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_296FE4000, v2, OS_LOG_TYPE_DEFAULT, "#I ABM client reset", v5, 2u);
    }

    v3 = *(this + 8);
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void BasebandRFDiagnostics::create(std::__shared_weak_count ***a1@<X8>)
{
  v3 = operator new(0xE0uLL);
  BasebandDiagnostics::BasebandDiagnostics(v3);
  *v3 = &unk_2A1E20678;
  v3[17] = 0;
  v3[18] = 0;
  v3[16] = 0;
  v3[21] = 0;
  v3[22] = 0;
  v3[20] = 0;
  v3[24] = 0;
  *(v3 + 50) = 0;
  v3[26] = 0;
  *(v3 + 54) = 0;
  *a1 = v3;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E206C0;
  v4[2] = 0;
  v4[3] = v3;
  a1[1] = v4;
  v6 = v3[2];
  if (v6)
  {
    if (v6->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    v3[1] = v3;
    v3[2] = v4;
    v7 = v4;
    std::__shared_weak_count::__release_weak(v6);
    v4 = v7;
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    v3[1] = v3;
    v3[2] = v4;
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  v8 = v4;
  (*(*v4 + 16))();

  std::__shared_weak_count::__release_weak(v8);
}

void sub_296FE511C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandRFDiagnostics> ctu::SharedSynchronizable<BasebandDiagnostics>::make_shared_ptr<BasebandRFDiagnostics>(BasebandRFDiagnostics*)::{lambda(BasebandRFDiagnostics*)#1}::operator() const(BasebandRFDiagnostics*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

uint64_t BasebandRFDiagnostics::getBasebandPersonalizationInfoINT(BasebandRFDiagnostics *this)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = MEMORY[0x29EDCAA00];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v2) == v3)
    {
      xpc_retain(v2);
      v4 = v2;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v5 = xpc_int64_create(5000);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE4E0], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v33 = xpc_null_create();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v7;
  v32 = v7;
  v8 = *(this + 8);
  v29 = *(this + 7);
  v30 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *MEMORY[0x29EDBEF30];
  v10 = strlen(*MEMORY[0x29EDBEF30]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v11;
    v28 = v13 | 0x8000000000000000;
    __dst[0] = v12;
    goto LABEL_19;
  }

  HIBYTE(v28) = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_19:
    memmove(v12, v9, v11);
  }

  *(v11 + v12) = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  v14 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    object = 0xAAAAAAAAAAAAAAAALL;
    v15 = v33;
    if (v33)
    {
      goto LABEL_25;
    }
  }

  else
  {
    object = 0xAAAAAAAAAAAAAAAALL;
    v15 = v33;
    if (v33)
    {
LABEL_25:
      object = v15;
      goto LABEL_28;
    }
  }

  v15 = xpc_null_create();
  object = v15;
  if (!v15)
  {
    v16 = xpc_null_create();
    v15 = 0;
    goto LABEL_32;
  }

LABEL_28:
  if (MEMORY[0x29C269CA0](v15) == v3)
  {
    xpc_retain(v15);
    goto LABEL_33;
  }

  v16 = xpc_null_create();
LABEL_32:
  object = v16;
LABEL_33:
  xpc_release(v15);
  if (LODWORD(__p[0]))
  {
LABEL_34:
    v17 = *(this + 5);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    TelephonyXPC::Result::describe(__p, __dst);
    if (v28 >= 0)
    {
      v24 = __dst;
    }

    else
    {
      v24 = __dst[0];
    }

    *buf = 136315138;
    *&buf[4] = v24;
    v23 = "Get pers parameters cmd failed: %s";
LABEL_62:
    _os_log_error_impl(&dword_296FE4000, v17, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_35;
  }

  if (MEMORY[0x29C269CA0](object) != v3)
  {
    if (!LODWORD(__p[0]))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (xpc_dictionary_get_value(object, *MEMORY[0x29EDBEEF0]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBE840]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBE8E0]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBF178]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBF168]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBEEE8]) && xpc_dictionary_get_value(object, *MEMORY[0x29EDBE8E8]))
  {
    v25 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v25 = xpc_null_create();
    }

    xpc::bridge();
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(__dst, *buf);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(this + 24, __dst);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(__dst);
    ctu::cf::CFSharedRef<void const>::~CFSharedRef(buf);
    xpc_release(v25);
    v19 = 1;
    goto LABEL_38;
  }

  v17 = *(this + 5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    xpc::object::to_string(__dst, &object);
    if (v28 >= 0)
    {
      v22 = __dst;
    }

    else
    {
      v22 = __dst[0];
    }

    *buf = 136315138;
    *&buf[4] = v22;
    v23 = "Missing parameters in GetPersInfo: %s";
    goto LABEL_62;
  }

LABEL_35:
  v18 = *(this + 5);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_error_impl(&dword_296FE4000, v18, OS_LOG_TYPE_ERROR, "Failed to get personalization parameters", __dst, 2u);
  }

  v19 = 0;
LABEL_38:
  xpc_release(object);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v4);
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_296FE568C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t TelephonyXPC::Result::describe@<X0>(TelephonyXPC::Result *this@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v4;
  v33[8] = v4;
  v33[5] = v4;
  v33[6] = v4;
  v33[3] = v4;
  v33[4] = v4;
  v33[1] = v4;
  v33[2] = v4;
  v32 = v4;
  v33[0] = v4;
  *v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Result:'", 8);
  v6 = *this;
  if (*this <= -534716413)
  {
    if (v6 <= -534716415)
    {
      if (v6 == -534716416)
      {
        v7 = 14;
        v25 = 14;
        qmemcpy(__p, "kInternalError", 14);
        goto LABEL_25;
      }

      if (v6 == -534716415)
      {
        v7 = 12;
        v25 = 12;
        LODWORD(__p[1]) = 1919906418;
        __p[0] = *"kServerError";
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v6 != -534716414)
    {
      if (v6 == -534716413)
      {
        v7 = 8;
        v25 = 8;
        __p[0] = 0x74756F656D69546BLL;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v7 = 13;
    v25 = 13;
    v8 = "kCommandError";
LABEL_22:
    __p[0] = *v8;
    *(__p + 5) = *(v8 + 5);
    goto LABEL_25;
  }

  if (v6 <= -534716411)
  {
    if (v6 != -534716412)
    {
      if (v6 == -534716411)
      {
        v7 = 6;
        v25 = 6;
        qmemcpy(__p, "kRetry", 6);
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v7 = 13;
    v25 = 13;
    v8 = "kNotSupported";
    goto LABEL_22;
  }

  if (v6 != -534716410)
  {
    if (v6 != -534716409)
    {
      if (!v6)
      {
        v7 = 8;
        v25 = 8;
        __p[0] = 0x737365636375536BLL;
        goto LABEL_25;
      }

LABEL_23:
      v7 = 17;
      v25 = 17;
      v24 = 101;
      v9 = "kInvalidErrorCode";
      goto LABEL_24;
    }

    v7 = 13;
    v25 = 13;
    v8 = "kNotAvailable";
    goto LABEL_22;
  }

  v7 = 17;
  v25 = 17;
  v24 = 100;
  v9 = "kPermissionDenied";
LABEL_24:
  *__p = *v9;
LABEL_25:
  *(__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
  if (v25 < 0)
  {
    operator delete(__p[0]);
    v11 = *(this + 31);
    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_27:
      if (!v11)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v11 = *(this + 31);
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!*(this + 2))
  {
    goto LABEL_38;
  }

LABEL_31:
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " Info:'", 7);
  v13 = *(this + 31);
  if (v13 >= 0)
  {
    v14 = this + 8;
  }

  else
  {
    v14 = *(this + 1);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 31);
  }

  else
  {
    v15 = *(this + 2);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "'", 1);
LABEL_38:
  if ((BYTE8(v32) & 0x10) != 0)
  {
    v18 = v32;
    if (v32 < *(&v29 + 1))
    {
      *&v32 = *(&v29 + 1);
      v18 = *(&v29 + 1);
    }

    v19 = v29;
    v17 = v18 - v29;
    if ((v18 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_52;
    }

    v19 = *(&v27 + 1);
    v17 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_56:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v17 | 7) + 1;
    }

    v21 = operator new(v20);
    *(a2 + 1) = v17;
    *(a2 + 2) = v20 | 0x8000000000000000;
    *a2 = v21;
    a2 = v21;
    goto LABEL_51;
  }

  a2[23] = v17;
  if (v17)
  {
LABEL_51:
    memmove(a2, v19, v17);
  }

LABEL_52:
  a2[v17] = 0;
  *&v26 = *MEMORY[0x29EDC9538];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v26 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  *(&v26 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return MEMORY[0x29C269940](v33);
}

void sub_296FE5CF4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C269940](va);
  _Unwind_Resume(a1);
}

uint64_t BasebandRFDiagnostics::getBasebandPersonalizationInfo(BasebandRFDiagnostics *this)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = MEMORY[0x29EDCAA00];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v2) == v3)
    {
      xpc_retain(v2);
      v4 = v2;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v5 = xpc_int64_create(5000);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE4E0], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v55 = xpc_null_create();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v7;
  v54 = v7;
  v8 = *(this + 8);
  v51 = *(this + 7);
  v52 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *MEMORY[0x29EDBF1E0];
  v10 = strlen(*MEMORY[0x29EDBF1E0]);
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
    *&__dst[8] = v11;
    *&__dst[16] = v13 | 0x8000000000000000;
    *__dst = v12;
    goto LABEL_19;
  }

  __dst[23] = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_19:
    memmove(v12, v9, v11);
  }

  v12[v11] = 0;
  abm::client::PerformCommand();
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v14 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v55;
    if (v55)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = v55;
    if (v55)
    {
      goto LABEL_28;
    }
  }

  v15 = xpc_null_create();
  if (!v15)
  {
    v16 = xpc_null_create();
    v15 = 0;
    goto LABEL_31;
  }

LABEL_28:
  if (MEMORY[0x29C269CA0](v15) == v3)
  {
    xpc_retain(v15);
    v16 = v15;
  }

  else
  {
    v16 = xpc_null_create();
  }

LABEL_31:
  xpc_release(v15);
  v17 = buf;
  if (LODWORD(__p[0]) || MEMORY[0x29C269CA0](v16) != v3 || (v23 = *MEMORY[0x29EDBEEF0], !xpc_dictionary_get_value(v16, *MEMORY[0x29EDBEEF0])) || (v24 = *MEMORY[0x29EDBE840], !xpc_dictionary_get_value(v16, *MEMORY[0x29EDBE840])))
  {
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *__dst = 0;
      _os_log_error_impl(&dword_296FE4000, v18, OS_LOG_TYPE_ERROR, "Failed to get Firmware Info", __dst, 2u);
      if (LODWORD(__p[0]))
      {
        goto LABEL_35;
      }
    }

    else if (LODWORD(__p[0]))
    {
LABEL_35:
      v19 = *(this + 5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        TelephonyXPC::Result::describe(__p, __dst);
        v26 = __dst[23] >= 0 ? __dst : *__dst;
        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_error_impl(&dword_296FE4000, v19, OS_LOG_TYPE_ERROR, "Get firmware info cmd failed: %s", buf, 0xCu);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }
      }
    }

    v20 = 0;
    goto LABEL_37;
  }

  value = xpc_dictionary_get_value(v16, v23);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(__dst, 0, 24);
  xpc::dyn_cast_or_default();
  if (*__dst)
  {
    *&__dst[8] = *__dst;
    operator delete(*__dst);
  }

  v27 = *(this + 16);
  if (v27)
  {
    *(this + 17) = v27;
    operator delete(v27);
    *(this + 16) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
  }

  *(this + 8) = *buf;
  *(this + 18) = *&buf[16];
  memset(buf, 0, sizeof(buf));
  xpc_release(object);
  v28 = xpc_dictionary_get_value(v16, v24);
  *__dst = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    *__dst = xpc_null_create();
  }

  *(this + 38) = xpc::dyn_cast_or_default();
  xpc_release(*__dst);
  memset(__dst, 170, 24);
  ctu::hex(*(this + 16), (*(this + 17) - *(this + 16)));
  v29 = *(this + 5);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v41 = __dst;
    if (__dst[23] < 0)
    {
      v41 = *__dst;
    }

    v42 = *(this + 38);
    *buf = 136315394;
    *&buf[4] = v41;
    *&buf[12] = 1024;
    *&buf[14] = v42;
    _os_log_debug_impl(&dword_296FE4000, v29, OS_LOG_TYPE_DEBUG, "#D Serial Number: %s, ChipId: %d", buf, 0x12u);
    if ((__dst[23] & 0x80000000) == 0)
    {
LABEL_61:
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__dst = v30;
      *&__dst[16] = v30;
      v31 = *(this + 8);
      v46 = *(this + 7);
      v48 = v31;
      if (!v31)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if ((__dst[23] & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(*__dst);
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__dst = v43;
  *&__dst[16] = v43;
  v31 = *(this + 8);
  v47 = *(this + 7);
  v48 = v31;
  if (v31)
  {
LABEL_62:
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_63:
  v32 = *MEMORY[0x29EDBEA00];
  v33 = strlen(*MEMORY[0x29EDBEA00]);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
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

    v17 = operator new(v35);
    *&buf[8] = v34;
    *&buf[16] = v35 | 0x8000000000000000;
    *buf = v17;
  }

  else
  {
    buf[23] = v33;
    if (!v33)
    {
      goto LABEL_72;
    }
  }

  memmove(v17, v32, v34);
LABEL_72:
  *(v17 + v34) = 0;
  abm::client::PerformCommand();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  v36 = v55;
  if (v55 || (v36 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v36) == v3)
    {
      xpc_retain(v36);
      v37 = v36;
    }

    else
    {
      v37 = xpc_null_create();
    }
  }

  else
  {
    v37 = xpc_null_create();
    v36 = 0;
  }

  xpc_release(v36);
  if (!*__dst && MEMORY[0x29C269CA0](v37) == v3 && (v39 = *MEMORY[0x29EDBE838], xpc_dictionary_get_value(v37, *MEMORY[0x29EDBE838])))
  {
    v40 = xpc_dictionary_get_value(v37, v39);
    *buf = v40;
    if (v40)
    {
      xpc_retain(v40);
    }

    else
    {
      *buf = xpc_null_create();
    }

    *(this + 46) = xpc::dyn_cast_or_default();
    xpc_release(*buf);
    v44 = *(this + 5);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(this + 46);
      *buf = 67109120;
      *&buf[4] = v45;
      _os_log_debug_impl(&dword_296FE4000, v44, OS_LOG_TYPE_DEBUG, "#D GoldCertID: 0x%x", buf, 8u);
    }

    v20 = 1;
  }

  else
  {
    v38 = *(this + 5);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FE4000, v38, OS_LOG_TYPE_ERROR, "Failed to get GoldCertId", buf, 2u);
    }

    v20 = 0;
  }

  xpc_release(v37);
  if ((__dst[31] & 0x80000000) != 0)
  {
    operator delete(*&__dst[8]);
  }

LABEL_37:
  xpc_release(v16);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v4);
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_296FE6514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandRFDiagnostics::getPersonalizationInfo(ctu **this)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = capabilities::radio::vendor(this);
  if ((v2 - 1) >= 2)
  {
    if (v2 != 3 || (BasebandRFDiagnostics::getBasebandPersonalizationInfoINT(this) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!BasebandRFDiagnostics::getBasebandPersonalizationInfo(this))
  {
LABEL_10:
    v6 = 1;
    goto LABEL_58;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = MEMORY[0x29EDCAA00];
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v3) == v4)
    {
      xpc_retain(v3);
      v5 = v3;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = xpc_int64_create(5000);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBE4E0], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v34 = xpc_null_create();
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v33 = v9;
  v10 = this[8];
  v30 = this[7];
  v31 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = *MEMORY[0x29EDBF700];
  v12 = strlen(*MEMORY[0x29EDBF700]);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    __dst[1] = v13;
    __dst[2] = (v15 | 0x8000000000000000);
    __dst[0] = v14;
    goto LABEL_25;
  }

  HIBYTE(__dst[2]) = v12;
  v14 = __dst;
  if (v12)
  {
LABEL_25:
    memmove(v14, v11, v13);
  }

  *(v13 + v14) = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    v16 = v31;
    if (!v31)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = v31;
    if (!v31)
    {
      goto LABEL_31;
    }
  }

  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v34;
    if (v34)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = v34;
  if (v34)
  {
    goto LABEL_35;
  }

LABEL_32:
  v17 = xpc_null_create();
  if (!v17)
  {
    v18 = xpc_null_create();
    v17 = 0;
    goto LABEL_38;
  }

LABEL_35:
  if (MEMORY[0x29C269CA0](v17) == v4)
  {
    xpc_retain(v17);
    v18 = v17;
  }

  else
  {
    v18 = xpc_null_create();
  }

LABEL_38:
  xpc_release(v17);
  if (LODWORD(__p[0]))
  {
    v19 = this[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      TelephonyXPC::Result::describe(__p, __dst);
      v27 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_296FE4000, v19, OS_LOG_TYPE_ERROR, "Get rf self test nonce cmd failed: %s", buf, 0xCu);
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    goto LABEL_40;
  }

  v21 = *MEMORY[0x29EDBF8C8];
  if (!xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF8C8]))
  {
LABEL_40:
    v20 = this[5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_error_impl(&dword_296FE4000, v20, OS_LOG_TYPE_ERROR, "Failed to get RFSelfTestNonce", __dst, 2u);
    }

    v6 = 1;
    goto LABEL_55;
  }

  value = xpc_dictionary_get_value(v18, v21);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(__dst, 0, 24);
  xpc::dyn_cast_or_default();
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  v23 = this[20];
  if (v23)
  {
    this[21] = v23;
    operator delete(v23);
    this[20] = 0;
    this[21] = 0;
    this[22] = 0;
  }

  *(this + 10) = *buf;
  this[22] = v37;
  v37 = 0;
  memset(buf, 0, sizeof(buf));
  xpc_release(object);
  memset(__dst, 170, 24);
  ctu::hex(this[20], (this[21] - this[20]));
  v24 = this[5];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v28 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v28 = __dst[0];
    }

    *buf = 136315138;
    *&buf[4] = v28;
    _os_log_debug_impl(&dword_296FE4000, v24, OS_LOG_TYPE_DEBUG, "#D RF Self Test Nonce: %s", buf, 0xCu);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_53:
    operator delete(__dst[0]);
  }

LABEL_54:
  v6 = 0;
LABEL_55:
  xpc_release(v18);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v5);
LABEL_58:
  v25 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_296FE6BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  xpc_release(v28);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v27);
  _Unwind_Resume(a1);
}

uint64_t BasebandRFDiagnostics::isRFTestSupported(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return MEMORY[0x2A1C6EB90]();
  }

  if (a2 == 1)
  {
    return MEMORY[0x2A1C6EAC8]();
  }

  return 0;
}

BOOL BasebandRFDiagnostics::getAPAuthParameters(BasebandRFDiagnostics *this)
{
  v2 = MGGetSInt64Answer();
  v3 = v2 & 0xFFFFFF;
  if (HIDWORD(v2))
  {
    v3 = 0;
  }

  *(this + 50) = v3;
  v4 = MGGetSInt64Answer();
  *(this + 26) = v4;
  if (*(this + 50))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t BasebandRFDiagnostics::getSignedTicketAndStore(BasebandRFDiagnostics *this, int a2)
{
  v3 = this;
  v24 = *MEMORY[0x29EDCA608];
  cf = 0;
  if (a2)
  {
    v4 = MGGetSInt64Answer();
    v5 = v4 & 0xFFFFFF;
    if (HIDWORD(v4))
    {
      v5 = 0;
    }

    *(v3 + 50) = v5;
    this = MGGetSInt64Answer();
    *(v3 + 26) = this;
    if (!*(v3 + 50) || this == 0)
    {
      v7 = *(v3 + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = 2;
        _os_log_impl(&dword_296FE4000, v7, OS_LOG_TYPE_DEFAULT, "#I Failed to get AP tag info", buf, 2u);
        v9 = cf;
        if (!cf)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v8 = 2;
        v9 = cf;
        if (!cf)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_44;
    }
  }

  v10 = capabilities::radio::vendor(this);
  if ((v10 - 1) < 2)
  {
    RFSelfTestTicket = BasebandRFDiagnostics::getRFSelfTestTicket(v3, a2, 1u, &cf);
    goto LABEL_16;
  }

  if (v10 == 3)
  {
    RFSelfTestTicket = BasebandRFDiagnostics::getRFSelfTestTicketINT(v3, a2, 1, &cf);
LABEL_16:
    v12 = RFSelfTestTicket;
    if (RFSelfTestTicket)
    {
      v13 = *(v3 + 5);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    *buf = operator new(0x19uLL);
    *&buf[8] = xmmword_296FF2BA0;
    strcpy(*buf, "RFSelfTestTicketBlocked");
    IntegerFromUserDefaults = BasebandDiagnostics::readIntegerFromUserDefaults(v3, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      v16 = IntegerFromUserDefaults;
      operator delete(*buf);
      if (v16)
      {
LABEL_26:
        v15 = *(v3 + 5);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FE4000, v15, OS_LOG_TYPE_DEFAULT, "#I Access to RFSelfTestTicket is blocked", buf, 2u);
          v8 = 5;
          v9 = cf;
          if (!cf)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v8 = 5;
          v9 = cf;
          if (!cf)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_44;
      }
    }

    else if (IntegerFromUserDefaults)
    {
      goto LABEL_26;
    }

    buf[23] = 16;
    strcpy(buf, "RFSelfTestTicket");
    v17 = BasebandDiagnostics::saveToUserDefaults(v3, buf, cf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v18 = *(v3 + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "Failed";
      if (v17)
      {
        v19 = "Success";
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&dword_296FE4000, v18, OS_LOG_TYPE_DEFAULT, "#I Get signed ticket and save: %s", buf, 0xCu);
    }

    if (v17)
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    goto LABEL_43;
  }

  v12 = 14;
  v13 = *(v3 + 5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
LABEL_18:
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_296FE4000, v13, OS_LOG_TYPE_DEFAULT, "#I Failed to get signed ticket from Server w/ error: %d", buf, 8u);
  }

LABEL_19:
  v8 = 4;
  if ((v12 > 0x13 || ((1 << v12) & 0xE0002) == 0) && v12 != 3194)
  {
    v8 = 3;
    v9 = cf;
    if (!cf)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_43:
  v9 = cf;
  if (cf)
  {
LABEL_44:
    CFRelease(v9);
  }

LABEL_45:
  v20 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_296FE7088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRFDiagnostics::getRFSelfTestTicketINT(BasebandRFDiagnostics *this, int a2, int a3, const __CFData **a4)
{
  v59 = a3;
  v57 = 0;
  theDict = 0;
  cf = 0;
  v56 = 0;
  value = 0;
  valuePtr = 0;
  v51 = 0;
  v52 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = AMAuthInstallCreate();
  if (v8)
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v51 = Mutable;
    if (!Mutable)
    {
      v42 = *(this + 5);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v34 = 2;
        _os_log_error_impl(&dword_296FE4000, v42, OS_LOG_TYPE_ERROR, "Failed to create request dictionary", v50, 2u);
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v34 = 2;
      }

      goto LABEL_39;
    }

    v10 = *(this + 24);
    if (!v10)
    {
      v43 = *(this + 5);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        _os_log_error_impl(&dword_296FE4000, v43, OS_LOG_TYPE_ERROR, "Null fPersParams", v50, 2u);
      }

      v29 = 0;
      v34 = 1;
      goto LABEL_39;
    }

    v11 = CFDictionaryGetValue(v10, @"kKeyBasebandBoardId");
    CFDictionarySetValue(Mutable, @"Cellular1,BoardID", v11);
    v12 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandChipID");
    CFDictionarySetValue(Mutable, @"Cellular1,ChipID", v12);
    v13 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandSerialNumber");
    if (BasebandRFDiagnostics::createNum64Num32FromData(this, v13, &value))
    {
      CFDictionarySetValue(Mutable, @"Cellular1,ECID", value);
      v14 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandSecurityDomain");
      CFDictionarySetValue(Mutable, @"Cellular1,SecurityDomain", v14);
      v15 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandProductionMode");
      v16 = v15;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
          v18 = *MEMORY[0x29EDB8F00];
          v19 = *MEMORY[0x29EDB8EF8];
          if (valuePtr)
          {
            v20 = *MEMORY[0x29EDB8F00];
          }

          else
          {
            v20 = *MEMORY[0x29EDB8EF8];
          }

          CFDictionarySetValue(Mutable, @"Cellular1,ProductionMode", v20);
          v21 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandSecurityMode");
          v22 = v21;
          if (v21)
          {
            v23 = CFGetTypeID(v21);
            if (v23 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr)
              {
                v24 = v18;
              }

              else
              {
                v24 = v19;
              }

              CFDictionarySetValue(Mutable, @"Cellular1,SecurityMode", v24);
              v25 = CFDictionaryGetValue(*(this + 24), @"kKeyBasebandUidMode");
              v26 = v25;
              if (v25)
              {
                v27 = CFGetTypeID(v25);
                if (v27 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
                  if (valuePtr)
                  {
                    v28 = v18;
                  }

                  else
                  {
                    v28 = v19;
                  }

                  CFDictionarySetValue(Mutable, @"Cellular1,UID_MODE", v28);
                  v29 = CFDataCreate(v7, *(this + 20), *(this + 21) - *(this + 20));
                  v52 = v29;
                  if (v29)
                  {
                    CFDictionarySetValue(Mutable, @"Cellular1,Nonce", v29);
                    v30 = CFNumberCreate(v7, kCFNumberSInt32Type, &v59);
                    v57 = v30;
                    if (!v30)
                    {
                      v39 = *(this + 5);
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        *v50 = 0;
                        v46 = "AP chipid cfnum conversion failure";
LABEL_105:
                        v34 = 2;
                        goto LABEL_106;
                      }

                      goto LABEL_99;
                    }

                    CFDictionarySetValue(Mutable, @"Cellular1,BbFieldDiagsEnable", v30);
                    CFDictionarySetValue(Mutable, @"@Cellular1,Ticket", v18);
                    if (!a2)
                    {
                      goto LABEL_28;
                    }

                    if (*(this + 26))
                    {
                      if (*(this + 50))
                      {
                        v31 = CFNumberCreate(v7, kCFNumberSInt64Type, this + 208);
                        v56 = v31;
                        if (v31)
                        {
                          CFDictionarySetValue(Mutable, *MEMORY[0x29EDC9290], v31);
                          v32 = CFNumberCreate(v7, kCFNumberSInt32Type, this + 200);
                          cf = v32;
                          if (v32)
                          {
                            CFDictionarySetValue(Mutable, *MEMORY[0x29EDC9288], v32);
LABEL_28:
                            v33 = *(this + 5);
                            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                            {
                              *v50 = 0;
                              _os_log_impl(&dword_296FE4000, v33, OS_LOG_TYPE_DEFAULT, "#I Send the signing request", v50, 2u);
                            }

                            v34 = AMAuthInstallRequestSendSync();
                            if (!v34)
                            {
                              if (!theDict)
                              {
                                v47 = *(this + 5);
                                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                                {
                                  *v50 = 0;
                                  _os_log_error_impl(&dword_296FE4000, v47, OS_LOG_TYPE_ERROR, "RF self test ticket request failed with null return dictionary", v50, 2u);
                                }

                                v34 = 14;
                                goto LABEL_39;
                              }

                              v35 = CFDictionaryContainsKey(theDict, @"Cellular1,Ticket");
                              v36 = *(this + 5);
                              if (!v35)
                              {
                                if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
                                {
                                  *v50 = 0;
                                  _os_log_error_impl(&dword_296FE4000, v36, OS_LOG_TYPE_ERROR, "RF self test ticket request failed with missing ticket in the response", v50, 2u);
                                }

                                v34 = 8;
                                goto LABEL_39;
                              }

                              if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
                              {
                                *v50 = 0;
                                _os_log_impl(&dword_296FE4000, v36, OS_LOG_TYPE_DEFAULT, "#I Signed the RF self test ticket: Success", v50, 2u);
                              }

                              v37 = CFDictionaryGetValue(theDict, @"Cellular1,Ticket");
                              Copy = CFDataCreateCopy(v7, v37);
                              *a4 = Copy;
                              v39 = *(this + 5);
                              if (Copy)
                              {
                                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v50 = 0;
                                  _os_log_impl(&dword_296FE4000, v39, OS_LOG_TYPE_DEFAULT, "#I Returned the RF self test ticket: Success", v50, 2u);
                                }

                                v34 = 0;
                                goto LABEL_39;
                              }

                              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                              {
                                *v50 = 0;
                                v46 = "Output ticket cp failed";
                                goto LABEL_105;
                              }

                              goto LABEL_99;
                            }

                            v39 = *(this + 5);
                            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                            {
                              *v50 = 0;
                              v46 = "RF self test ticket request failed with non-zero return value";
LABEL_106:
                              _os_log_error_impl(&dword_296FE4000, v39, OS_LOG_TYPE_ERROR, v46, v50, 2u);
                            }

LABEL_39:
                            CFRelease(v8);
                            goto LABEL_40;
                          }

                          v39 = *(this + 5);
                          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                          {
                            *v50 = 0;
                            v46 = "AP chipid cfnum conversion failure";
                            goto LABEL_105;
                          }
                        }

                        else
                        {
                          v39 = *(this + 5);
                          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                          {
                            *v50 = 0;
                            v46 = "AP ecid cfnum conversion failure";
                            goto LABEL_105;
                          }
                        }

LABEL_99:
                        v34 = 2;
                        goto LABEL_39;
                      }

                      v48 = *(this + 5);
                      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                      {
LABEL_95:
                        v34 = 1;
                        goto LABEL_39;
                      }

                      *v50 = 0;
                      v49 = "AP ChipID is zero";
                    }

                    else
                    {
                      v48 = *(this + 5);
                      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_95;
                      }

                      *v50 = 0;
                      v49 = "AP ECID is zero";
                    }

                    _os_log_error_impl(&dword_296FE4000, v48, OS_LOG_TYPE_ERROR, v49, v50, 2u);
                    v34 = 1;
                    goto LABEL_39;
                  }

                  v44 = *(this + 5);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    *v50 = 0;
                    v45 = "Null data for Nonce";
                    goto LABEL_78;
                  }

LABEL_79:
                  v29 = 0;
                  v34 = 14;
                  goto LABEL_39;
                }

                v44 = *(this + 5);
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_79;
                }

                *v50 = 0;
                v45 = "Wrong type for Uid Mode";
              }

              else
              {
                v44 = *(this + 5);
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_79;
                }

                *v50 = 0;
                v45 = "Null data for Uid Mode";
              }
            }

            else
            {
              v44 = *(this + 5);
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_79;
              }

              *v50 = 0;
              v45 = "Wrong type for Sec Mode";
            }
          }

          else
          {
            v44 = *(this + 5);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_79;
            }

            *v50 = 0;
            v45 = "Null data for Sec Mode";
          }
        }

        else
        {
          v44 = *(this + 5);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }

          *v50 = 0;
          v45 = "Wrong type for Prod Mode";
        }
      }

      else
      {
        v44 = *(this + 5);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        *v50 = 0;
        v45 = "Null data for Prod Mode";
      }
    }

    else
    {
      v44 = *(this + 5);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v50 = 0;
      v45 = "Baseband ECID data conversion failed";
    }

LABEL_78:
    _os_log_error_impl(&dword_296FE4000, v44, OS_LOG_TYPE_ERROR, v45, v50, 2u);
    goto LABEL_79;
  }

  v41 = *(this + 5);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *v50 = 0;
    v34 = 2;
    _os_log_error_impl(&dword_296FE4000, v41, OS_LOG_TYPE_ERROR, "AMAI alloc failed", v50, 2u);
    v29 = 0;
    Mutable = 0;
  }

  else
  {
    v29 = 0;
    Mutable = 0;
    v34 = 2;
  }

LABEL_40:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return v34;
}

void sub_296FE7A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va5, a2);
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  v7 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v12 = va_arg(va5, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va4);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va5);
  _Unwind_Resume(a1);
}

uint64_t BasebandRFDiagnostics::getRFSelfTestTicket(const UInt8 **this, BOOL a2, unsigned int a3, const __CFData **a4)
{
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], this[16], this[17] - this[16]);
  v7 = CFDataCreate(v5, this[20], this[21] - this[20]);
  v8 = *(this + 38);
  v9 = *(this + 46);
  v10 = *(this + 50);
  v11 = this[26];
  RFSelfTestTicket = AMAuthInstallBasebandGetRFSelfTestTicket();
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return RFSelfTestTicket;
}

void sub_296FE7B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296FE7B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BasebandRFDiagnostics::clearRFSelfTestTicket(BasebandRFDiagnostics *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&dword_296FE4000, v2, OS_LOG_TYPE_DEFAULT, "#I Clear ticket", __p, 2u);
  }

  v4 = 16;
  strcpy(__p, "RFSelfTestTicket");
  BasebandDiagnostics::removeFromUserDefaults(this, __p);
  if (v4 < 0)
  {
    operator delete(*__p);
  }
}

void sub_296FE7C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRFDiagnostics::startBasebandRFSelfTestAST2Mode(BasebandRFDiagnostics *this)
{
  v30 = *MEMORY[0x29EDCA608];
  *buf = operator new(0x19uLL);
  *&buf[8] = xmmword_296FF2BA0;
  strcpy(*buf, "RFSelfTestTicketBlocked");
  if (BasebandDiagnostics::readIntegerFromUserDefaults(this, buf))
  {
    v2 = 0;
    v28 = 0;
    if (buf[23] < 0)
    {
LABEL_11:
      operator delete(*buf);
      if (!v2)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    HIBYTE(__p[2]) = 16;
    strcpy(__p, "RFSelfTestTicket");
    ObjectFromUserDefaults = BasebandDiagnostics::readObjectFromUserDefaults(this, __p);
    v2 = ObjectFromUserDefaults;
    v28 = ObjectFromUserDefaults;
    if (ObjectFromUserDefaults)
    {
      CFRetain(ObjectFromUserDefaults);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (buf[23] < 0)
      {
        goto LABEL_11;
      }
    }

    else if (buf[23] < 0)
    {
      goto LABEL_11;
    }
  }

  if (!v2)
  {
LABEL_17:
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FE4000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to restore ticket", buf, 2u);
    }

    v7 = 6;
    if (v2)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

LABEL_12:
  if (!CFDataGetLength(v2))
  {
    goto LABEL_17;
  }

  memset(__p, 0, sizeof(__p));
  ctu::cf::assign();
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v8) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v10 = __p[0];
  for (i = __p[1]; v10 != i; ++v10)
  {
    v12 = xpc_int64_create(*v10);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_array_append_value(v9, v12);
    xpc_release(v12);
  }

  v13 = xpc_null_create();
  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBF170], v13);
  v14 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v13);
  if (v9)
  {
    xpc_retain(v9);
    v15 = v9;
  }

  else
  {
    v15 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v25 = *buf;
  v26 = *&buf[16];
  if ((buf[23] & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = *buf;
  }

  xpc_dictionary_set_value(v5, v16, v15);
  v17 = xpc_null_create();
  xpc_release(v15);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  xpc_release(v17);
  v24 = v5;
  if (v5)
  {
    xpc_retain(v5);
    v18 = v5;
  }

  else
  {
    v18 = xpc_null_create();
    v24 = v18;
  }

  v19 = BasebandRFDiagnostics::sendCommandBasebandRequestRFSelfTest(this, &v24);
  xpc_release(v18);
  v24 = 0;
  if (v19)
  {
    v7 = 0;
  }

  else
  {
    v7 = 7;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "Failed";
    if (v19)
    {
      v21 = "Success";
    }

    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&dword_296FE4000, v20, OS_LOG_TYPE_DEFAULT, "#I Start Baseband RF Self Test: %s", buf, 0xCu);
  }

  buf[23] = 16;
  strcpy(buf, "RFSelfTestTicket");
  BasebandDiagnostics::removeFromUserDefaults(this, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v9);
  xpc_release(v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v2 = v28;
  if (v28)
  {
LABEL_56:
    CFRelease(v2);
  }

LABEL_57:
  v22 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_296FE80BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL BasebandRFDiagnostics::sendCommandBasebandRequestRFSelfTest(uint64_t a1, uint64_t *a2)
{
  v25 = xpc_null_create();
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v4;
  v24 = v4;
  v5 = *(a1 + 64);
  v21 = *(a1 + 56);
  v22 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *MEMORY[0x29EDBF690];
  v7 = strlen(*MEMORY[0x29EDBF690]);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v8;
    v27 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v27) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_11:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  v11 = *a2;
  abm::client::PerformCommand();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v12 = v25;
    if (v25)
    {
LABEL_20:
      if (MEMORY[0x29C269CA0](v12) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v12);
        v13 = v12;
      }

      else
      {
        v13 = xpc_null_create();
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = v25;
    if (v25)
    {
      goto LABEL_20;
    }
  }

  v12 = xpc_null_create();
  if (v12)
  {
    goto LABEL_20;
  }

  v13 = xpc_null_create();
  v12 = 0;
LABEL_23:
  xpc_release(v12);
  __dst = 0uLL;
  v27 = 0;
  ctu::cf::assign();
  *__p = __dst;
  v19 = v27;
  if (v27 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  value = xpc_dictionary_get_value(v13, v14);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *(a1 + 216) = xpc::dyn_cast_or_default();
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v23[0];
  xpc_release(v13);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  return v16 == 0;
}

void sub_296FE8490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  xpc_release(v24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_296FE84FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 49) < 0)
  {
    operator delete(*(v5 - 72));
    std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BasebandRFDiagnostics::startBasebandRFSelfTestFTMMode(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = xpc_int64_create(1);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF170], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (a2)
  {
    v10 = xpc_int64_create(a2);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = 0u;
    v24 = 0;
    xpc_dictionary_set_value(v7, __p, v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v11);
    v12 = xpc_int64_create(a3);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v24 = *&buf[16];
    if ((buf[23] & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *buf;
    }

    xpc_dictionary_set_value(v7, v13, v12);
    v14 = xpc_null_create();
    xpc_release(v12);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v14);
    object = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    v17 = BasebandRFDiagnostics::sendCommandBasebandRequestRFSelfTest(a1, &object);
    xpc_release(object);
    object = 0;
    if (v17)
    {
      v16 = 0;
    }

    else
    {
      v16 = 8;
    }

    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "Failed";
      if (v17)
      {
        v19 = "Success";
      }

      *buf = 67109378;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = v19;
      _os_log_impl(&dword_296FE4000, v18, OS_LOG_TYPE_DEFAULT, "#I Start Baseband RF Self Test (Type=%d) in FTM: %s", buf, 0x12u);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FE4000, v15, OS_LOG_TYPE_ERROR, "Invalid measType in RF Self Test", buf, 2u);
    }

    v16 = 8;
  }

  xpc_release(v7);
  v20 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_296FE88B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandRFDiagnostics::setBasebandRFSelfTestTicket(BasebandRFDiagnostics *this)
{
  __p[5] = *MEMORY[0x29EDCA608];
  __p[0] = operator new(0x19uLL);
  *&__p[1] = xmmword_296FF2BA0;
  strcpy(__p[0], "RFSelfTestTicketBlocked");
  if (BasebandDiagnostics::readIntegerFromUserDefaults(this, __p))
  {
    v2 = 0;
    v34 = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (!v2)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (!CFDataGetLength(v2))
    {
      goto LABEL_15;
    }

    memset(v33, 0, sizeof(v33));
    ctu::cf::assign();
    v4 = xpc_array_create(0, 0);
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C269CA0](v4) == MEMORY[0x29EDCA9E0])
      {
        xpc_retain(v4);
        v5 = v4;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v4 = 0;
    }

    xpc_release(v4);
    v8 = v33[0];
    for (i = v33[1]; v8 != i; ++v8)
    {
      v10 = xpc_int64_create(*v8);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      xpc_array_append_value(v5, v10);
      xpc_release(v10);
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    if (v11 || (v11 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C269CA0](v11) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v11);
        v12 = v11;
      }

      else
      {
        v12 = xpc_null_create();
      }
    }

    else
    {
      v12 = xpc_null_create();
      v11 = 0;
    }

    xpc_release(v11);
    if (v5)
    {
      xpc_retain(v5);
      v13 = v5;
    }

    else
    {
      v13 = xpc_null_create();
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    *__dst = *__p;
    v32 = __p[2];
    if (SHIBYTE(__p[2]) >= 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __p[0];
    }

    xpc_dictionary_set_value(v12, v14, v13);
    v15 = xpc_null_create();
    xpc_release(v13);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst[0]);
    }

    xpc_release(v15);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v16;
    *&__p[2] = v16;
    v17 = *(this + 8);
    v29 = *(this + 7);
    v30 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *MEMORY[0x29EDBF760];
    v19 = strlen(*MEMORY[0x29EDBF760]);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      if ((v19 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v19 | 7) + 1;
      }

      v21 = operator new(v22);
      __dst[1] = v20;
      v32 = (v22 | 0x8000000000000000);
      __dst[0] = v21;
    }

    else
    {
      HIBYTE(v32) = v19;
      v21 = __dst;
      if (!v19)
      {
LABEL_52:
        *(v20 + v21) = 0;
        abm::client::PerformCommand();
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__dst[0]);
          v23 = v30;
          if (!v30)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v23 = v30;
          if (!v30)
          {
            goto LABEL_57;
          }
        }

        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
          v24 = __p[0];
          if (LODWORD(__p[0]))
          {
            v7 = 7;
          }

          else
          {
            v7 = 0;
          }

          if (SHIBYTE(__p[3]) < 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

LABEL_57:
        v24 = __p[0];
        if (LODWORD(__p[0]))
        {
          v7 = 7;
        }

        else
        {
          v7 = 0;
        }

        if (SHIBYTE(__p[3]) < 0)
        {
LABEL_61:
          operator delete(__p[1]);
        }

LABEL_62:
        xpc_release(v12);
        xpc_release(v5);
        if (v33[0])
        {
          v33[1] = v33[0];
          operator delete(v33[0]);
        }

        v25 = *(this + 5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = "Failed";
          if (!v24)
          {
            v26 = "Success";
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v26;
          _os_log_impl(&dword_296FE4000, v25, OS_LOG_TYPE_DEFAULT, "#I Set RF Self Test Ticket to baseband: %s", __p, 0xCu);
        }

        HIBYTE(__p[2]) = 16;
        strcpy(__p, "RFSelfTestTicket");
        BasebandDiagnostics::removeFromUserDefaults(this, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
          v2 = v34;
          if (!v34)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v2 = v34;
          if (!v34)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        CFRelease(v2);
        goto LABEL_73;
      }
    }

    memmove(v21, v18, v20);
    goto LABEL_52;
  }

  HIBYTE(v33[2]) = 16;
  strcpy(v33, "RFSelfTestTicket");
  ObjectFromUserDefaults = BasebandDiagnostics::readObjectFromUserDefaults(this, v33);
  v2 = ObjectFromUserDefaults;
  v34 = ObjectFromUserDefaults;
  if (ObjectFromUserDefaults)
  {
    CFRetain(ObjectFromUserDefaults);
  }

  if (SHIBYTE(v33[2]) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  operator delete(__p[0]);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_15:
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_296FE4000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to restore ticket", __p, 2u);
  }

  v7 = 6;
  if (v2)
  {
    goto LABEL_72;
  }

LABEL_73:
  v27 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_296FE8F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL BasebandRFDiagnostics::prepareRFSelfTest(NSObject **this)
{
  v21 = *MEMORY[0x29EDCA608];
  if (capabilities::radio::vendor(this) != 3)
  {
    v4 = 1;
    goto LABEL_30;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  v6 = this[8];
  v16 = this[7];
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *MEMORY[0x29EDBF688];
  v8 = strlen(*MEMORY[0x29EDBF688]);
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

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v20 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v20) = v8;
    p_dst = &__dst;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  memmove(p_dst, v7, v9);
LABEL_20:
  *(p_dst + v9) = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v4 = LODWORD(__p[0]) == 0;
  v12 = this[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "Failed";
    if (!LODWORD(__p[0]))
    {
      v13 = "Success";
    }

    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = v13;
    _os_log_impl(&dword_296FE4000, v12, OS_LOG_TYPE_DEFAULT, "#I Prepare Baseband for RF Self Test: %s", &__dst, 0xCu);
  }

  operator delete(__p[1]);
  xpc_release(v3);
LABEL_30:
  v14 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_296FE92E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL BasebandRFDiagnostics::createNum64Num32FromData(uint64_t a1, CFDataRef theData, const void **a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!theData || !a3)
  {
    v12 = *(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *__dst = 0;
      v14 = "Null param";
LABEL_16:
      v15 = v12;
      v16 = 2;
      goto LABEL_17;
    }

LABEL_19:
    v19 = *MEMORY[0x29EDCA608];
    return result;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v12 = *(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *__dst = 0;
      v14 = "Get byte pointer failed";
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v7 = BytePtr;
  Length = CFDataGetLength(theData);
  if (Length < 0 || Length >= 9uLL)
  {
    v17 = Length;
    v18 = *(a1 + 40);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    *__dst = 134217984;
    *&__dst[4] = v17;
    v14 = "Data size wrong %lu";
    v15 = v18;
    v16 = 12;
LABEL_17:
    _os_log_error_impl(&dword_296FE4000, v15, OS_LOG_TYPE_ERROR, v14, __dst, v16);
    goto LABEL_26;
  }

  if (Length >= 5uLL)
  {
    *__dst = 0;
    memcpy(__dst, v7, Length);
    v9 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, __dst);
    v10 = *a3;
    *a3 = v9;
    if (v10)
    {
      CFRelease(v10);
      v9 = *a3;
    }

    if (!v9)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_23:
    result = 1;
    v22 = *MEMORY[0x29EDCA608];
    return result;
  }

  *__dst = 0;
  memcpy(__dst, v7, Length);
  v20 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, __dst);
  v21 = *a3;
  *a3 = v20;
  if (v21)
  {
    CFRelease(v21);
    v20 = *a3;
  }

  if (v20)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
LABEL_25:
    *v24 = 0;
    _os_log_error_impl(&dword_296FE4000, v11, OS_LOG_TYPE_ERROR, "Data allocation error during conversion", v24, 2u);
  }

LABEL_26:
  result = 0;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296FE95DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE60CA0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(const void **a1, const void **a2)
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

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2698F0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_296FE98F4(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C269940](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C269850](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C269860](v14);
  return a1;
}

void sub_296FE9BD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C269860](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296FE9BB8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_296FE9E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
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

void std::__shared_ptr_pointer<BasebandRFDiagnostics *,std::shared_ptr<BasebandRFDiagnostics> ctu::SharedSynchronizable<BasebandDiagnostics>::make_shared_ptr<BasebandRFDiagnostics>(BasebandRFDiagnostics*)::{lambda(BasebandRFDiagnostics *)#1},std::allocator<BasebandRFDiagnostics>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandRFDiagnostics *,std::shared_ptr<BasebandRFDiagnostics> ctu::SharedSynchronizable<BasebandDiagnostics>::make_shared_ptr<BasebandRFDiagnostics>(BasebandRFDiagnostics*)::{lambda(BasebandRFDiagnostics *)#1},std::allocator<BasebandRFDiagnostics>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI19BasebandDiagnosticsE15make_shared_ptrI21BasebandRFDiagnosticsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI19BasebandDiagnosticsE15make_shared_ptrI21BasebandRFDiagnosticsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI19BasebandDiagnosticsE15make_shared_ptrI21BasebandRFDiagnosticsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI19BasebandDiagnosticsE15make_shared_ptrI21BasebandRFDiagnosticsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandRFDiagnostics> ctu::SharedSynchronizable<BasebandDiagnostics>::make_shared_ptr<BasebandRFDiagnostics>(BasebandRFDiagnostics*)::{lambda(BasebandRFDiagnostics*)#1}::operator() const(BasebandRFDiagnostics*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = cf;
    CFRetain(cf);
    return a1;
  }

  else
  {
    *a1 = 0;
    return a1;
  }
}

uint64_t config::hw::iPhone(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 136))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::watch(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 152))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::iPad(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 144))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

void config::hw::product(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 48))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::deviceMaterial(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 104))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::getBootArgs(std::string *a1@<X8>)
{
  memset(v48, 170, 24);
  v3 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v4 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(__p, v3);
    v5 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v6 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_2A13988B8;
  }

  v8 = *(&off_2A13988B8 + 1);
  v48[3] = v4;
  v48[4] = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v4 + 112))(v48, v4);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  HIBYTE(v47) = 9;
  strcpy(__p, "boot-args");
  v9 = v48[1];
  if (v48[1])
  {
    while (1)
    {
      v11 = v9;
      v14 = v9[4];
      v12 = v9 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(__p, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_16;
        }

LABEL_30:
        v20 = memcmp(v16, __p, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }
        }

        else if (v17 >= 9)
        {
LABEL_58:
          v21 = v11;
          if (*(v11 + 79) < 0)
          {
            goto LABEL_59;
          }

LABEL_56:
          v39 = *(v21 + 56);
          a1->__r_.__value_.__r.__words[2] = *(v21 + 9);
          *&a1->__r_.__value_.__l.__data_ = v39;
          if (SHIBYTE(v47) < 0)
          {
            goto LABEL_57;
          }

          goto LABEL_60;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = (v11 + 1);
          goto LABEL_37;
        }
      }

      else
      {
        if (v17 <= 9)
        {
          goto LABEL_30;
        }

LABEL_16:
        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v10 = &v48[1];
  v11 = &v48[1];
LABEL_37:
  v21 = operator new(0x50uLL);
  *(v21 + 2) = *__p;
  v22 = v47;
  __p[1] = 0;
  v47 = 0;
  __p[0] = 0;
  *(v21 + 6) = v22;
  *(v21 + 7) = 0;
  *(v21 + 8) = 0;
  *(v21 + 9) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = v11;
  *v10 = v21;
  if (*v48[0])
  {
    v48[0] = *v48[0];
  }

  v23 = v48[1];
  v24 = v21 == v48[1];
  v21[24] = v21 == v48[1];
  if (v24)
  {
LABEL_55:
    ++v48[2];
    if (v21[79] < 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v25 = v21;
  while (1)
  {
    v26 = *(v25 + 2);
    if (*(v26 + 24))
    {
      goto LABEL_55;
    }

    v27 = *(v26 + 16);
    v28 = *v27;
    if (*v27 != v26)
    {
      break;
    }

    v32 = *(v27 + 1);
    if (!v32 || (v33 = *(v32 + 24), v31 = (v32 + 24), v33 == 1))
    {
      if (*v26 == v25)
      {
        v45 = *(v25 + 2);
        *(v26 + 24) = 1;
        v27[24] = 0;
        v37 = *(v28 + 8);
        *v27 = v37;
        if (v37)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v34 = *(v26 + 8);
        v35 = *v34;
        *(v26 + 8) = *v34;
        v36 = v26;
        if (v35)
        {
          *(v35 + 16) = v26;
          v27 = *(v26 + 16);
          v36 = *v27;
        }

        v34[2] = v27;
        *&v27[8 * (v36 != v26)] = v34;
        *v34 = v26;
        *(v26 + 16) = v34;
        v27 = v34[2];
        v28 = *v27;
        *(v34 + 24) = 1;
        v27[24] = 0;
        v37 = *(v28 + 8);
        *v27 = v37;
        if (v37)
        {
LABEL_53:
          *(v37 + 16) = v27;
        }
      }

      v38 = *(v27 + 2);
      *(v28 + 16) = v38;
      v38[*v38 != v27] = v28;
      *(v28 + 8) = v27;
      *(v27 + 2) = v28;
      goto LABEL_55;
    }

LABEL_41:
    *(v26 + 24) = 1;
    v25 = v27;
    v27[24] = v27 == v23;
    *v31 = 1;
    if (v27 == v23)
    {
      goto LABEL_55;
    }
  }

  if (v28)
  {
    v30 = *(v28 + 24);
    v29 = (v28 + 24);
    if (v30 != 1)
    {
      v31 = v29;
      goto LABEL_41;
    }
  }

  v40 = *v26;
  if (*v26 == v25)
  {
    v41 = *(v40 + 1);
    *v26 = v41;
    if (v41)
    {
      *(v41 + 16) = v26;
      v27 = *(v26 + 16);
    }

    *(v40 + 2) = v27;
    *&v27[8 * (*v27 != v26)] = v40;
    *(v40 + 1) = v26;
    *(v26 + 16) = v40;
    v27 = *(v40 + 2);
  }

  else
  {
    v40 = *(v25 + 2);
  }

  v40[24] = 1;
  v27[24] = 0;
  v42 = *(v27 + 1);
  v43 = *v42;
  *(v27 + 1) = *v42;
  if (v43)
  {
    *(v43 + 2) = v27;
  }

  v44 = *(v27 + 2);
  v42[2] = v44;
  v44[*v44 != v27] = v42;
  *v42 = v27;
  *(v27 + 2) = v42;
  ++v48[2];
  if ((v21[79] & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_59:
  std::string::__init_copy_ctor_external(a1, *(v21 + 7), *(v21 + 8));
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_57:
  operator delete(__p[0]);
LABEL_60:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v48[1]);
}

void sub_296FEAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296FEAEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a16);
  _Unwind_Resume(a1);
}

void config::hw::regionCode(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 72))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::regionInfo(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 64))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t config::build::carrier(config::build *this)
{
  result = TelephonyUtilIsCarrierBuild();
  if (result)
  {
    return TelephonyUtilIsInternalBuild() ^ 1;
  }

  return result;
}

uint64_t config::build::internal_or_carrier(config::build *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

void config::build::version(config::build *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A13988B8;
  if (!off_2A13988B8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A13988B8 + 1);
    off_2A13988B8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A13988B8;
  }

  v6 = *(&off_2A13988B8 + 1);
  if (*(&off_2A13988B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13988B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v2)(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_296FE4000);
  }

  return result;
}

uint64_t *sGetDiagnosticsLogHandler(void)
{
  if (qword_2A13988D0 != -1)
  {
    dispatch_once(&qword_2A13988D0, &__block_literal_global);
  }

  return &_MergedGlobals;
}

os_log_t ___Z25sGetDiagnosticsLogHandlerv_block_invoke()
{
  result = os_log_create("com.apple.telephony.abm", "abm.diagnostics");
  _MergedGlobals = result;
  return result;
}

const char *radio::asString(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE61148[v1];
  }
}

{
  v1 = *a1;
  if (v1 > 2)
  {
    return "FactoryCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE61240[v1];
  }
}

{
  v1 = *a1;
  if (v1 > 2)
  {
    return "RFCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE61270[v1];
  }
}

void radio::OpMode::~OpMode(radio::OpMode *this)
{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void radio::OpMode::create(void *a1@<X8>)
{
  v3 = operator new(0x50uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2A1E20730;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 9) = 0;
  a1[1] = v3;
  *(v3 + 24) = 0u;
  v3 += 24;
  *a1 = v3;
  radio::OpMode::init(v3);
}

void radio::OpMode::init(radio::OpMode *this)
{
  *this = 8;
  *(this + 1) = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v8 = operator new(7uLL);
    *v8 = 262657;
    v8[2] = 1536;
    *(v8 + 6) = 7;
    v5 = *(this + 1);
    *(this + 1) = v8;
    *(this + 2) = v8 + 7;
    *(this + 3) = v8 + 7;
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (RadioVendor == 4)
  {
    v9 = operator new(2uLL);
    v5 = *(this + 1);
    *(this + 1) = v9;
    *v9++ = 1;
    *(this + 2) = v9;
    *(this + 3) = v9;
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (RadioVendor == 1)
  {
    v3 = operator new(8uLL);
    *v3 = 0xB09050403020100;
    v4 = operator new(8uLL);
    *v4 = 0x3000200010000;
    v5 = *(this + 1);
    *(this + 1) = v3;
    *(this + 2) = v3 + 1;
    v6 = *(this + 4);
    *(this + 3) = v3 + 1;
    *(this + 4) = v4;
    *(this + 5) = v4 + 1;
    *(this + 6) = v4 + 1;
    if (v6)
    {
      v7 = v5;
      operator delete(v6);
      v5 = v7;
    }

    if (v5)
    {
LABEL_9:

      operator delete(v5);
    }
  }
}

uint64_t radio::OpMode::setMode(uint64_t this, int a2)
{
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (v2 == v3)
  {
LABEL_5:
    v4 = 8;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  *this = v4;
  return this;
}

uint64_t radio::OpMode::convertMode(radio::OpMode *this, int a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    return 8;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        return 8;
      }
    }
  }

  return v4;
}

uint64_t radio::OpMode::getModeValue(radio::OpMode *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*(this + 2) - v2 <= v1)
  {
    return 255;
  }

  else
  {
    return *(v2 + v1);
  }
}

uint64_t radio::OpMode::convertMode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 16) - v2 <= a2)
  {
    return 255;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t radio::OpMode::setConfig(uint64_t this, int a2)
{
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (v2 == v3)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  *(this + 2) = v4;
  return this;
}

uint64_t radio::OpMode::convertConfig(radio::OpMode *this, int a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v2;
      ++v4;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t radio::OpMode::getConfigValue(radio::OpMode *this)
{
  v1 = *(this + 2);
  v2 = *(this + 4);
  if (v1 >= (*(this + 5) - v2) >> 1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(v2 + 2 * v1);
  }
}

uint64_t radio::OpMode::convertConfig(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 32);
  if (a2 >= ((*(a1 + 40) - v2) >> 1))
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(v2 + 2 * a2);
  }
}

BOOL radio::OpMode::allowModeChange(radio::OpMode *this)
{
  v1 = *(this + 1);
  if (v1 < 2)
  {
    return 1;
  }

  if (v1 == 3)
  {
    v3 = *this;
    if ((v3 & 0xFE) == 4)
    {
      return 0;
    }
  }

  else
  {
    v3 = *this;
  }

  return v3 != 2;
}

uint64_t radio::OpMode::modeToString@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[7] = v6;
  v37[8] = v6;
  v37[5] = v6;
  v37[6] = v6;
  v37[3] = v6;
  v37[4] = v6;
  v37[1] = v6;
  v37[2] = v6;
  v36 = v6;
  v37[0] = v6;
  *__p = v6;
  v35 = v6;
  v32 = v6;
  *__src = v6;
  v30 = v6;
  v31 = v6;
  v29 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v29);
  if (a2 > 7)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_29EE61148[a2];
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v7, v8);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v16 = *(a1 + 8);
    if (*(a1 + 16) - v16 <= a2 || (v17 = *(v16 + a2), v17 > 7))
    {
      v13 = "Unknown";
    }

    else
    {
      v13 = off_29EE611E8[v17];
    }
  }

  else if (RadioVendor == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v18 = *(a1 + 8);
    if (*(a1 + 16) - v18 <= a2 || (v19 = *(v18 + a2), v19 > 0xB))
    {
      v13 = "Unknown";
    }

    else
    {
      v13 = off_29EE61188[v19];
    }
  }

  else
  {
    if (RadioVendor != 4)
    {
      goto LABEL_23;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " [ ", 3);
    v11 = *(a1 + 8);
    v12 = a2;
    v13 = "Unknown";
    if (*(a1 + 16) - v11 > v12)
    {
      v14 = *(v11 + v12);
      v15 = "Online";
      if (v14 != 1)
      {
        v15 = "Unknown";
      }

      if (v14)
      {
        v13 = v15;
      }

      else
      {
        v13 = "Airplane";
      }
    }
  }

  v20 = strlen(v13);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ]", 2);
LABEL_23:
  if ((BYTE8(v36) & 0x10) != 0)
  {
    v23 = v36;
    if (v36 < __src[1])
    {
      *&v36 = __src[1];
      v23 = __src[1];
    }

    v24 = __src[0];
    v22 = v23 - __src[0];
    if ((v23 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if ((BYTE8(v36) & 8) == 0)
    {
      v22 = 0;
      a3[23] = 0;
      goto LABEL_37;
    }

    v24 = *(&v31 + 1);
    v22 = *(&v32 + 1) - *(&v31 + 1);
    if (*(&v32 + 1) - *(&v31 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_41:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a3 + 1) = v22;
    *(a3 + 2) = v25 | 0x8000000000000000;
    *a3 = v26;
    a3 = v26;
    goto LABEL_36;
  }

  a3[23] = v22;
  if (v22)
  {
LABEL_36:
    memmove(a3, v24, v22);
  }

LABEL_37:
  a3[v22] = 0;
  *&v29 = *MEMORY[0x29EDC9528];
  v27 = *(MEMORY[0x29EDC9528] + 72);
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v30 = v27;
  *(&v30 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v30 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C269940](v37);
}

uint64_t radio::OpMode::modeToString@<X0>(radio::OpMode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 == v4)
  {
LABEL_5:
    v5 = 8;
  }

  else
  {
    v5 = 0;
    while (*v3 != a2)
    {
      ++v3;
      ++v5;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  return radio::OpMode::modeToString(this, v5, a3);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C2698F0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_296FEC380(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C269940](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C269940](a1 + 128);
  return a1;
}

uint64_t radio::OpMode::configToString@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v6;
  v33[8] = v6;
  v33[5] = v6;
  v33[6] = v6;
  v33[3] = v6;
  v33[4] = v6;
  v33[1] = v6;
  v33[2] = v6;
  v32 = v6;
  v33[0] = v6;
  *__p = v6;
  v31 = v6;
  v28 = v6;
  *__src = v6;
  v26 = v6;
  v27 = v6;
  v25 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v25);
  if ((a2 - 1) > 2)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_29EE61228[(a2 - 1)];
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v7, v8);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) >= 2)
  {
    if (RadioVendor == 1)
    {
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " [ ", 3);
      v13 = *(a1 + 32);
      if (a2 >= ((*(a1 + 40) - v13) >> 1) || (v14 = *(v13 + 2 * a2) - 1, v14 > 2))
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_29EE61228[v14];
      }

      v16 = strlen(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ]", 2);
    }
  }

  else
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " [ ", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid for ICE", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ]", 2);
  }

  if ((BYTE8(v32) & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < __src[1])
    {
      *&v32 = __src[1];
      v19 = __src[1];
    }

    v20 = __src[0];
    v18 = v19 - __src[0];
    if ((v19 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v18 = 0;
      a3[23] = 0;
      goto LABEL_26;
    }

    v20 = *(&v27 + 1);
    v18 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_30:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v22 = operator new(v21);
    *(a3 + 1) = v18;
    *(a3 + 2) = v21 | 0x8000000000000000;
    *a3 = v22;
    a3 = v22;
    goto LABEL_25;
  }

  a3[23] = v18;
  if (v18)
  {
LABEL_25:
    memmove(a3, v20, v18);
  }

LABEL_26:
  a3[v18] = 0;
  *&v25 = *MEMORY[0x29EDC9528];
  v23 = *(MEMORY[0x29EDC9528] + 72);
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v26 = v23;
  *(&v26 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C269940](v33);
}

uint64_t radio::OpMode::configToString@<X0>(radio::OpMode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 == v4)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (*v3 != a2)
    {
      ++v3;
      ++v5;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  return radio::OpMode::configToString(this, v5, a3);
}

const char *radio::asStringV2(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return "FactoryCalibrationStatus::kUnknown";
  }

  else
  {
    return off_29EE61258[v1];
  }
}

uint64_t radio::RFCalibration_t::toString@<X0>(radio::RFCalibration_t *this@<X0>, _BYTE *a2@<X8>)
{
  v74 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73[7] = v4;
  v73[8] = v4;
  v73[5] = v4;
  v73[6] = v4;
  v73[3] = v4;
  v73[4] = v4;
  v73[1] = v4;
  v73[2] = v4;
  v72 = v4;
  v73[0] = v4;
  *__p = v4;
  v71 = v4;
  v68 = v4;
  *__src = v4;
  v66 = v4;
  v67 = v4;
  v65 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v65);
  v5 = *this;
  if (v5 > 2)
  {
    v6 = "RFCalibrationStatus::kUnknown";
  }

  else
  {
    v6 = off_29EE61270[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v6, v7);
  if (*this == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nGSM: ", 6);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "0x", 2);
    v10 = MEMORY[0x29C269890](v9, *(this + 1));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", mask: ", 8);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "0x", 2);
    v13 = MEMORY[0x29C269890](v12, *(this + 2));
    v14 = *(this + 1);
    v15 = *(this + 2);
    if (v14 == v15)
    {
      v16 = " - CORRECT";
    }

    else
    {
      v16 = " - INCORRECT";
    }

    if (v14 == v15)
    {
      v17 = 10;
    }

    else
    {
      v17 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nCDMA: ", 7);
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 8;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "0x", 2);
    v20 = MEMORY[0x29C269880](v19, *(this + 2));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", mask: ", 8);
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "0x", 2);
    v23 = MEMORY[0x29C269880](v22, *(this + 3));
    v24 = *(this + 2);
    v25 = *(this + 3);
    if (v24 == v25)
    {
      v26 = " - CORRECT";
    }

    else
    {
      v26 = " - INCORRECT";
    }

    if (v24 == v25)
    {
      v27 = 10;
    }

    else
    {
      v27 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v26, v27);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nWCDMA: ", 8);
    *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 8;
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "0x", 2);
    v30 = MEMORY[0x29C269880](v29, *(this + 4));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", mask: ", 8);
    *(v31 + *(*v31 - 24) + 8) = *(v31 + *(*v31 - 24) + 8) & 0xFFFFFFB5 | 8;
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "0x", 2);
    v33 = MEMORY[0x29C269880](v32, *(this + 5));
    v34 = *(this + 4);
    v35 = *(this + 5);
    if (v34 == v35)
    {
      v36 = " - CORRECT";
    }

    else
    {
      v36 = " - INCORRECT";
    }

    if (v34 == v35)
    {
      v37 = 10;
    }

    else
    {
      v37 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v36, v37);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nTDSCDMA: ", 10);
    *(v38 + *(*v38 - 24) + 8) = *(v38 + *(*v38 - 24) + 8) & 0xFFFFFFB5 | 8;
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "0x", 2);
    v40 = MEMORY[0x29C269880](v39, *(this + 6));
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", mask: ", 8);
    *(v41 + *(*v41 - 24) + 8) = *(v41 + *(*v41 - 24) + 8) & 0xFFFFFFB5 | 8;
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "0x", 2);
    v43 = MEMORY[0x29C269880](v42, *(this + 7));
    v44 = *(this + 6);
    v45 = *(this + 7);
    if (v44 == v45)
    {
      v46 = " - CORRECT";
    }

    else
    {
      v46 = " - INCORRECT";
    }

    if (v44 == v45)
    {
      v47 = 10;
    }

    else
    {
      v47 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v46, v47);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\nLTE: ", 6);
    *(v48 + *(*v48 - 24) + 8) = *(v48 + *(*v48 - 24) + 8) & 0xFFFFFFB5 | 8;
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "0x", 2);
    v50 = MEMORY[0x29C2698A0](v49, *(this + 4));
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ", mask: ", 8);
    *(v51 + *(*v51 - 24) + 8) = *(v51 + *(*v51 - 24) + 8) & 0xFFFFFFB5 | 8;
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "0x", 2);
    v53 = MEMORY[0x29C2698A0](v52, *(this + 5));
    v54 = *(this + 4);
    v55 = *(this + 5);
    if (v54 == v55)
    {
      v56 = " - CORRECT";
    }

    else
    {
      v56 = " - INCORRECT";
    }

    if (v54 == v55)
    {
      v57 = 10;
    }

    else
    {
      v57 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v56, v57);
  }

  if ((BYTE8(v72) & 0x10) != 0)
  {
    v59 = v72;
    if (v72 < __src[1])
    {
      *&v72 = __src[1];
      v59 = __src[1];
    }

    v60 = __src[0];
    v58 = v59 - __src[0];
    if ((v59 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if ((BYTE8(v72) & 8) == 0)
    {
      v58 = 0;
      a2[23] = 0;
      goto LABEL_50;
    }

    v60 = *(&v67 + 1);
    v58 = *(&v68 + 1) - *(&v67 + 1);
    if (*(&v68 + 1) - *(&v67 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_54:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v58 >= 0x17)
  {
    if ((v58 | 7) == 0x17)
    {
      v61 = 25;
    }

    else
    {
      v61 = (v58 | 7) + 1;
    }

    v62 = operator new(v61);
    *(a2 + 1) = v58;
    *(a2 + 2) = v61 | 0x8000000000000000;
    *a2 = v62;
    a2 = v62;
    goto LABEL_49;
  }

  a2[23] = v58;
  if (v58)
  {
LABEL_49:
    memmove(a2, v60, v58);
  }

LABEL_50:
  a2[v58] = 0;
  *&v65 = *MEMORY[0x29EDC9528];
  v63 = *(MEMORY[0x29EDC9528] + 72);
  *(&v65 + *(v65 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v66 = v63;
  *(&v66 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v66 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v67);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C269940](v73);
}

_BYTE *radio::RFCalibration_t::RFCalibration_t(_BYTE *this)
{
  *this = 2;
  return this;
}

{
  *this = 2;
  return this;
}

BOOL radio::RFCalibration_t::fill(uint64_t a1, const __CFDictionary **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v13, v2);
  Bool = ctu::cf::map_adapter::getBool(v13, @"BasebandRFCalibrationPresentStatus");
  *a1 = Bool;
  if (Bool)
  {
    *(a1 + 2) = ctu::cf::map_adapter::getInt(v13, @"BasebandGSMCalibrationStatus");
    *(a1 + 4) = ctu::cf::map_adapter::getInt(v13, @"BasebandGSMCalibrationMask");
    *(a1 + 8) = ctu::cf::map_adapter::getInt(v13, @"BasebandCDMACalibrationStatus");
    *(a1 + 12) = ctu::cf::map_adapter::getInt(v13, @"BasebandCDMACalibrationMask");
    *(a1 + 16) = ctu::cf::map_adapter::getInt(v13, @"BasebandWCDMACalibrationStatus");
    *(a1 + 20) = ctu::cf::map_adapter::getInt(v13, @"BasebandWCDMACalibrationMask");
    *(a1 + 24) = ctu::cf::map_adapter::getInt(v13, @"BasebandTDSCDMACalibrationStatus");
    *(a1 + 28) = ctu::cf::map_adapter::getInt(v13, @"BasebandTDSCDMACalibrationMask");
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    v5 = ctu::cf::map_adapter::copyCFNumberRef(v13, @"BasebandLTECalibrationStatus");
    v6 = v5;
    if (v5)
    {
      Value = CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
      v8 = Value != 0;
      if (Value)
      {
        *(a1 + 32) = valuePtr;
      }

      CFRelease(v6);
      valuePtr = 0;
    }

    else
    {
      v8 = 1;
    }

    v10 = ctu::cf::map_adapter::copyCFNumberRef(v13, @"BasebandLTECalibrationMask");
    v11 = v10;
    if (v10)
    {
      if (CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr))
      {
        *(a1 + 40) = valuePtr;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x29C2696A0](v13);
  return v8;
}

const char *radio::asString(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 4)
  {
    return "Other";
  }

  else
  {
    return off_29EE61288[v1];
  }
}

const char *radio::asString(_BYTE *a1)
{
  v1 = "Invalid";
  if (!*a1)
  {
    v1 = "Disabled";
  }

  if (*a1 == 1)
  {
    return "Enabled";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "Invalid";
  if (!*a1)
  {
    v1 = "Disabled";
  }

  if (*a1 == 1)
  {
    return "Enabled";
  }

  else
  {
    return v1;
  }
}

uint64_t radio::BasebandProperties::create(const __CFDictionary **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xAAAAAAAAAAAAAA00;
  }

  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v7, v1);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyCoredumpSupported");
  Bool = ctu::cf::map_adapter::getBool(v7, v8);
  MEMORY[0x29C269670](&v8);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyPowerSequenceIndex");
  Int = ctu::cf::map_adapter::getInt(v7, v8);
  MEMORY[0x29C269670](&v8);
  ctu::cf::MakeCFString::MakeCFString(&v8, "kBasebandPropertyBasebandVersion");
  v4 = ctu::cf::map_adapter::getInt(v7, v8);
  MEMORY[0x29C269670](&v8);
  MEMORY[0x29C2696A0](v7);
  v5 = 256;
  if (!Bool)
  {
    v5 = 0;
  }

  return (Int << 16) | (v4 << 32) | v5 | 1;
}

void sub_296FED404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  MEMORY[0x29C269670](va1);
  MEMORY[0x29C2696A0](va);
  _Unwind_Resume(a1);
}

void radio::BasebandProperties::toDict(radio::BasebandProperties *this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = *(this + 1);
  key = 0;
  ctu::cf::convert_copy(&key, "kBasebandPropertyCoredumpSupported", 0x8000100, v4, v7);
  v9 = key;
  v10 = MEMORY[0x29EDB8F00];
  if (!v6)
  {
    v10 = MEMORY[0x29EDB8EF8];
  }

  v11 = *v10;
  key = *v10;
  if (v9 && v11)
  {
    CFDictionaryAddValue(Mutable, v9, v11);
  }

  else if (!v11)
  {
    goto LABEL_8;
  }

  CFRelease(v11);
LABEL_8:
  if (v9)
  {
    CFRelease(v9);
  }

  v12 = *(this + 1);
  key = 0;
  ctu::cf::convert_copy(&key, "kBasebandPropertyPowerSequenceIndex", 0x8000100, v4, v8);
  v13 = key;
  key = v12;
  v14 = CFNumberCreate(v4, kCFNumberLongLongType, &key);
  v16 = v14;
  if (v13 && v14)
  {
    CFDictionaryAddValue(Mutable, v13, v14);
  }

  else if (!v14)
  {
    goto LABEL_15;
  }

  CFRelease(v16);
LABEL_15:
  if (v13)
  {
    CFRelease(v13);
  }

  v17 = *(this + 1);
  key = 0;
  ctu::cf::convert_copy(&key, "kBasebandPropertyBasebandVersion", 0x8000100, v4, v15);
  v18 = key;
  key = v17;
  v19 = CFNumberCreate(v4, kCFNumberLongLongType, &key);
  v20 = v19;
  if (v18 && v19)
  {
    CFDictionaryAddValue(Mutable, v18, v19);
  }

  else if (!v19)
  {
    goto LABEL_22;
  }

  CFRelease(v20);
LABEL_22:
  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    v21 = CFGetTypeID(Mutable);
    if (v21 == CFDictionaryGetTypeID())
    {
      *a2 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_296FED678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void sub_296FED6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<radio::OpMode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E20730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::OpMode>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  a1[5] = v2;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
    v2 = a1[4];
  }

  if (v2)
  {
    a1[5] = v2;

    operator delete(v2);
  }
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const char *BasebandDiagnostics::asString(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return "Invalid";
  }

  else
  {
    return off_29EE612F0[a2];
  }
}

void BasebandDiagnostics::BasebandDiagnostics(BasebandDiagnostics *this)
{
  ctu::OsLogContext::OsLogContext(&v10, "com.apple.telephony.abm", "BBDiag");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create_with_target_V2("BasebandDiagnostics", initially_inactive, 0);
  dispatch_set_qos_class_floor(v3, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v3);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C269620](this + 40, v11);
  MEMORY[0x29C269630](v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  *(this + 3) = 0u;
  *(this + 13) = 0;
  *this = &unk_2A1E20780;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  v4 = *(this + 3);
  abm::client::CreateManager();
  v5 = v10;
  v10 = 0uLL;
  v6 = *(this + 8);
  *(this + 56) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v10 + 1);
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  *(this + 96) = 0;
  v8 = dispatch_group_create();
  v9 = *(this + 9);
  *(this + 9) = v8;
  if (v9)
  {
    dispatch_release(v9);
  }
}

void sub_296FEDA08(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    v1[14] = v7;
    operator delete(v7);
  }

  v8 = v1[10];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v1[10];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  v10 = v1[9];
  if (v10)
  {
    dispatch_release(v10);
    std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100]((v1 + 7));
    v11 = *v4;
    if (!*v4)
    {
LABEL_8:
      MEMORY[0x29C269630](v1 + 5);
      ctu::SharedSynchronizable<BasebandDiagnostics>::~SharedSynchronizable(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100]((v1 + 7));
    v11 = *v4;
    if (!*v4)
    {
      goto LABEL_8;
    }
  }

  dispatch_release(v11);
  MEMORY[0x29C269630](v1 + 5);
  ctu::SharedSynchronizable<BasebandDiagnostics>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandDiagnostics::~BasebandDiagnostics(BasebandDiagnostics *this)
{
  *this = &unk_2A1E20780;
  v2 = *(this + 8);
  v13 = *(this + 7);
  v14 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = *(this + 10);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  v7 = *(this + 9);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 8);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    dispatch_release(v9);
  }

  MEMORY[0x29C269630](this + 40);
  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

{
  BasebandDiagnostics::~BasebandDiagnostics(this);

  operator delete(v1);
}

BOOL BasebandDiagnostics::resetBaseband(void *a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v33 = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v35 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = xpc_int64_create(20000);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE4E0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (a3)
  {
    v10 = xpc_string_create(*MEMORY[0x29EDBEB60]);
    if (!v10)
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_string_create(*MEMORY[0x29EDBEB68]);
    if (!v10)
    {
      v10 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEB00], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_string_create(*MEMORY[0x29EDBF5C8]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEEE0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (*(a2 + 23) >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBED88], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = a1[8];
  v31 = a1[7];
  v32 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *MEMORY[0x29EDBEAA8];
  v19 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v21 = operator new(v22);
    *&__dst[8] = v20;
    *&__dst[16] = v22 | 0x8000000000000000;
    *__dst = v21;
    goto LABEL_32;
  }

  __dst[23] = v19;
  v21 = __dst;
  if (v19)
  {
LABEL_32:
    memmove(v21, v18, v20);
  }

  v21[v20] = 0;
  abm::client::PerformCommand();
  LODWORD(v33) = *buf;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  __p = *&buf[8];
  v35 = v38;
  HIBYTE(v38) = 0;
  buf[8] = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v23 = v33;
    v24 = a1[5];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
LABEL_40:
      if (v25)
      {
        TelephonyXPC::Result::describe(&v33, buf);
        v26 = "soft";
        if (a3)
        {
          v26 = "hard";
        }

        if (buf[23] >= 0)
        {
          v27 = buf;
        }

        else
        {
          v27 = *buf;
        }

        *__dst = 136315394;
        *&__dst[4] = v26;
        *&__dst[12] = 2080;
        *&__dst[14] = v27;
        _os_log_impl(&dword_296FE4000, v24, OS_LOG_TYPE_DEFAULT, "#I Baseband %s reset failed: %s", __dst, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_53;
    }
  }

  else
  {
    v23 = v33;
    v24 = a1[5];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      goto LABEL_40;
    }
  }

  if (v25)
  {
    v28 = "soft";
    if (a3)
    {
      v28 = "hard";
    }

    *buf = 136315138;
    *&buf[4] = v28;
    _os_log_impl(&dword_296FE4000, v24, OS_LOG_TYPE_DEFAULT, "#I Baseband %s reset success", buf, 0xCu);
  }

LABEL_53:
  xpc_release(v7);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  result = v23 == 0;
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296FEE180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandDiagnostics::getOperatingMode(BasebandDiagnostics *this)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FE4000, v2, OS_LOG_TYPE_DEFAULT, "#I Getting baseband operating mode", buf, 2u);
  }

  *buf = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v31 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = MEMORY[0x29EDCAA00];
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v3) == v4)
    {
      xpc_retain(v3);
      v5 = v3;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v6 = xpc_int64_create(180000);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBE4E0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_null_create();
  v9 = *(this + 8);
  v26 = *(this + 7);
  v27 = v9;
  v28 = v8;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *MEMORY[0x29EDBF5E8];
  v11 = strlen(*MEMORY[0x29EDBF5E8]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v12;
    v33 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_21;
  }

  HIBYTE(v33) = v11;
  p_dst = &__dst;
  if (v11)
  {
LABEL_21:
    memmove(p_dst, v10, v12);
  }

  *(p_dst + v12) = 0;
  abm::client::PerformCommand();
  *buf = *object;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  __p = *&object[8];
  v31 = v35;
  HIBYTE(v35) = 0;
  object[8] = 0;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst);
  }

  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    v15 = v28;
    if (v28)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v15 = v28;
    if (v28)
    {
      goto LABEL_32;
    }
  }

  v15 = xpc_null_create();
  if (!v15)
  {
    v16 = xpc_null_create();
    v15 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (MEMORY[0x29C269CA0](v15) == v4)
  {
    xpc_retain(v15);
    v16 = v15;
  }

  else
  {
    v16 = xpc_null_create();
  }

LABEL_35:
  xpc_release(v15);
  if (!*buf && MEMORY[0x29C269CA0](v16) == v4)
  {
    value = xpc_dictionary_get_value(v16, *MEMORY[0x29EDBF030]);
    *object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *object = xpc_null_create();
    }

    v23 = xpc::dyn_cast_or_default();
    xpc_release(*object);
    if (v23 >= 7u)
    {
      v19 = 5;
      v24 = *(this + 5);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = dword_296FF2E8C[v23 & 7];
      v24 = *(this + 5);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    if (v19 > 3)
    {
      v25 = "Invalid";
    }

    else
    {
      v25 = off_29EE612F0[v19];
    }

    *object = 136315138;
    *&object[4] = v25;
    _os_log_impl(&dword_296FE4000, v24, OS_LOG_TYPE_DEFAULT, "#I Baseband operating mode: %s", object, 0xCu);
    goto LABEL_44;
  }

  v17 = *(this + 5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    TelephonyXPC::Result::describe(buf, object);
    v18 = object[23] >= 0 ? object : *object;
    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = v18;
    _os_log_impl(&dword_296FE4000, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to get operating mode: %s", &__dst, 0xCu);
    if ((object[23] & 0x80000000) != 0)
    {
      operator delete(*object);
    }
  }

  v19 = 5;
LABEL_44:
  xpc_release(v16);
  xpc_release(v5);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_296FEE724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL BasebandDiagnostics::setOperatingMode(void *a1, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a2 >= 5)
  {
    v3 = a1[5];
    v4 = 0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FE4000, v3, OS_LOG_TYPE_DEFAULT, "#I Invalid Baseband op mode", buf, 2u);
      v4 = 0;
    }

    goto LABEL_61;
  }

  *buf = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v28 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v8 = xpc_int64_create(5000);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE4E0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = xpc_int64_create(2);
      if (!v10)
      {
        v10 = xpc_null_create();
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_29;
      }

      v10 = xpc_int64_create(3);
      if (!v10)
      {
        v10 = xpc_null_create();
      }
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_29;
    }

    v10 = xpc_int64_create(1);
    if (!v10)
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_int64_create(0);
    if (!v10)
    {
      v10 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF030], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
LABEL_29:
  v12 = a1[8];
  v24 = a1[7];
  v25 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *MEMORY[0x29EDBF5F8];
  v14 = strlen(*MEMORY[0x29EDBF5F8]);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
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

    p_dst = operator new(v17);
    *(&__dst + 1) = v15;
    v30 = v17 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v30) = v14;
    p_dst = &__dst;
    if (!v14)
    {
      goto LABEL_40;
    }
  }

  memmove(p_dst, v13, v15);
LABEL_40:
  *(p_dst + v15) = 0;
  abm::client::PerformCommand();
  *buf = *v31;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  __p = *&v31[8];
  v28 = v32;
  HIBYTE(v32) = 0;
  v31[8] = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst);
  }

  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v4 = *buf == 0;
  v18 = a1[5];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (*buf)
  {
    if (v19)
    {
      TelephonyXPC::Result::describe(buf, v31);
      v20 = v31[23] >= 0 ? v31 : *v31;
      LODWORD(__dst) = 136315138;
      *(&__dst + 4) = v20;
      _os_log_impl(&dword_296FE4000, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to set operating mode: %s", &__dst, 0xCu);
      if ((v31[23] & 0x80000000) != 0)
      {
        operator delete(*v31);
      }
    }
  }

  else if (v19)
  {
    if (a2 > 3)
    {
      v21 = "Invalid";
    }

    else
    {
      v21 = off_29EE612F0[a2];
    }

    *v31 = 136315138;
    *&v31[4] = v21;
    _os_log_impl(&dword_296FE4000, v18, OS_LOG_TYPE_DEFAULT, "#I Set operating mode to %s success", v31, 0xCu);
  }

  xpc_release(v7);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

LABEL_61:
  v22 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_296FEED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void BasebandDiagnostics::waitForBasebandOperatingMode(uint64_t a1, int a2)
{
  if (a2 == 5 || !*(a1 + 56))
  {
    return;
  }

  *(a1 + 88) = a2;
  *(a1 + 96) = 1;
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 8), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *MEMORY[0x29EDBF6A0];
  v9 = strlen(*MEMORY[0x29EDBF6A0]);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

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
    __dst[1] = v10;
    v21 = v12 | 0x8000000000000000;
    __dst[0] = v11;
  }

  else
  {
    HIBYTE(v21) = v9;
    v11 = __dst;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  memmove(v11, v8, v10);
LABEL_18:
  *(v10 + v11) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  abm::client::RegisterEventHandler();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  v13 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
  std::__shared_weak_count::__release_weak(v6);
}

void sub_296FEF100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](&a9);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    std::__shared_weak_count::__release_weak(v25);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void ___ZN19BasebandDiagnostics28waitForBasebandOperatingModeE14BasebandOpMode_block_invoke(void *a1, xpc_object_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_34;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v20 = v6;
  if (!v6)
  {
    goto LABEL_34;
  }

  if (!a1[5])
  {
    goto LABEL_32;
  }

  if (a2)
  {
    xpc_retain(a2);
    goto LABEL_7;
  }

  a2 = xpc_null_create();
  if (a2)
  {
LABEL_7:
    if (MEMORY[0x29C269CA0](a2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(a2);
      v7 = a2;
    }

    else
    {
      v7 = xpc_null_create();
    }

    goto LABEL_11;
  }

  v7 = xpc_null_create();
  a2 = 0;
LABEL_11:
  xpc_release(a2);
  value = xpc_dictionary_get_value(v7, *MEMORY[0x29EDBF030]);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default();
  xpc_release(*object);
  v10 = *(v5 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 7u)
    {
      v11 = "Unknown";
      if (*(v5 + 80))
      {
LABEL_17:
        v12 = *(v5 + 88);
        if (v12 > 3)
        {
          v13 = "Invalid";
        }

        else
        {
          v13 = off_29EE612F0[v12];
        }

        goto LABEL_22;
      }
    }

    else
    {
      v11 = off_29EE612B0[v9 & 7];
      if (*(v5 + 80))
      {
        goto LABEL_17;
      }
    }

    v13 = "None";
LABEL_22:
    *object = 136315394;
    *&object[4] = v11;
    v22 = 2080;
    v23 = v13;
    _os_log_impl(&dword_296FE4000, v10, OS_LOG_TYPE_DEFAULT, "#I BB mode event [%s] - target mode [%s]", object, 0x16u);
  }

  v14 = v9;
  if (v9 >= 4u)
  {
    v14 = 5;
  }

  *(v5 + 92) = v14;
  v15 = *(v5 + 88);
  if (v15 != 5 && v15 == v14)
  {
    *(v5 + 96) = 0;
    v16 = *(v5 + 80);
    if (v16)
    {
      *(v5 + 80) = 0;
      dispatch_group_leave(v16);
      dispatch_release(v16);
    }

    else
    {
      v17 = *(v5 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *object = 0;
        _os_log_impl(&dword_296FE4000, v17, OS_LOG_TYPE_DEFAULT, "#I BB mode reached to target but no group waiting", object, 2u);
      }
    }
  }

  xpc_release(v7);
  v6 = v20;
  if (v20)
  {
LABEL_32:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_34:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296FEF438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19BasebandDiagnosticsEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19BasebandDiagnosticsEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL BasebandDiagnostics::updateBasebandOperatingMode(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a2 == 5)
  {
    v4 = 0;
    goto LABEL_64;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v10 = std::__shared_weak_count::lock(v6)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a2)
  {
    if (a4)
    {
      v12 = *(a1 + 40);
      a4 = 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (a2 > 3)
        {
          v13 = "Invalid";
        }

        else
        {
          v13 = off_29EE612F0[a2];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_296FE4000, v12, OS_LOG_TYPE_DEFAULT, "#I %s mode cannot be set by resetting", &buf, 0xCu);
        a4 = 0;
      }
    }
  }

  OperatingMode = BasebandDiagnostics::getOperatingMode(a1);
  *(a1 + 92) = OperatingMode;
  if (OperatingMode == a2)
  {
    v4 = 1;
    goto LABEL_63;
  }

  BasebandDiagnostics::waitForBasebandOperatingMode(a1, a2);
  v38 = v11;
  while (*(a1 + 96) == 1)
  {
    v15 = *(a1 + 72);
    if (v15)
    {
      dispatch_retain(*(a1 + 72));
      dispatch_group_enter(v15);
    }

    v16 = *(a1 + 80);
    *(a1 + 80) = v15;
    if (v16)
    {
      dispatch_group_leave(v16);
      dispatch_release(v16);
    }

    if (!a4)
    {
      goto LABEL_41;
    }

    v17 = (**a1)(a1);
    v18 = v17;
    v19 = *(v17 + 23);
    if (v19 >= 0)
    {
      v20 = *(v17 + 23);
    }

    else
    {
      v20 = *(v17 + 8);
    }

    v21 = v20 + 41;
    if (v20 + 41 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v21 <= 0x16)
    {
      v42 = 0;
      buf = 0uLL;
      p_buf = &buf;
      HIBYTE(v42) = v20 + 41;
LABEL_35:
      v24 = *v18;
      if (v19 >= 0)
      {
        v25 = v18;
      }

      else
      {
        v25 = *v18;
      }

      memmove(p_buf, v25, v20);
      goto LABEL_39;
    }

    if ((v21 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v21 | 7) + 1;
    }

    p_buf = operator new(v22);
    *(&buf + 1) = v20 + 41;
    v42 = v22 | 0x8000000000000000;
    *&buf = p_buf;
    if (v20)
    {
      goto LABEL_35;
    }

LABEL_39:
    strcpy(p_buf + v20, ": resetting baseband to recover to online");
    if (BasebandDiagnostics::resetBaseband(a1, &buf, 0))
    {
      LOBYTE(v26) = 1;
      goto LABEL_42;
    }

LABEL_41:
    v26 = BasebandDiagnostics::setOperatingMode(a1, a2);
    if (!a4)
    {
      if (!v26)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

LABEL_42:
    if (SHIBYTE(v42) < 0)
    {
      v27 = v26;
      operator delete(buf);
      if (!v27)
      {
        goto LABEL_56;
      }
    }

    else if (!v26)
    {
      goto LABEL_56;
    }

LABEL_48:
    if ((*(a1 + 96) & 1) == 0)
    {
      v35 = *(a1 + 80);
      *(a1 + 80) = 0;
      if (v35)
      {
        dispatch_group_leave(v35);
        dispatch_release(v35);
      }

      break;
    }

    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = "Invalid";
      if (a2 <= 3)
      {
        v29 = off_29EE612F0[a2];
      }

      *v39 = 136315138;
      v40 = v29;
      _os_log_impl(&dword_296FE4000, v28, OS_LOG_TYPE_DEFAULT, "#I Waiting for Baseband %s mode", v39, 0xCu);
    }

    v30 = *(a1 + 72);
    v31 = dispatch_time(0, 10000000000);
    if (!dispatch_group_wait(v30, v31))
    {
      v33 = 0;
      v34 = *(a1 + 80);
      *(a1 + 80) = 0;
      if (!v34)
      {
        goto LABEL_17;
      }

LABEL_57:
      dispatch_group_leave(v34);
      dispatch_release(v34);
      goto LABEL_17;
    }

    v32 = *(a1 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 67109120;
      LODWORD(v40) = a3;
      _os_log_impl(&dword_296FE4000, v32, OS_LOG_TYPE_DEFAULT, "#I Baseband mode not updated in time. retry=%d", v39, 8u);
    }

LABEL_56:
    v33 = a3;
    v34 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v34)
    {
      goto LABEL_57;
    }

LABEL_17:
    a3 = v33 - 1;
    if (!v33)
    {
      break;
    }
  }

  *(a1 + 88) = 5;
  v4 = *(a1 + 92) == a2;
  v11 = v38;
LABEL_63:
  std::__shared_weak_count::__release_weak(v11);
LABEL_64:
  v36 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_296FEF96C()
{
  if (v0)
  {
    JUMPOUT(0x296FEF974);
  }

  JUMPOUT(0x296FEF984);
}

uint64_t BasebandDiagnostics::getRadioType(BasebandDiagnostics *this)
{
  v1 = capabilities::radio::vendor(this);
  v2 = 0x20001FFu >> (8 * v1);
  if (v1 >= 4)
  {
    LOBYTE(v2) = -1;
  }

  return v2;
}

BOOL BasebandDiagnostics::addAWDConfig(BasebandDiagnostics *a1, uint64_t *a2)
{
  v2 = a2;
  v19[72] = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  memset(&v19[1], 170, 0x238uLL);
  v19[59] = 0;
  v5 = MEMORY[0x29EDC9558] + 64;
  v19[53] = MEMORY[0x29EDC9558] + 64;
  v6 = MEMORY[0x29EDC9518];
  v7 = *(MEMORY[0x29EDC9518] + 16);
  v19[0] = *(MEMORY[0x29EDC9518] + 8);
  *(v19 + *(v19[0] - 24)) = v7;
  v19[1] = 0;
  v8 = (v19 + *(v19[0] - 24));
  std::ios_base::init(v8, &v19[2]);
  v9 = MEMORY[0x29EDC9558] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v19[0] = v9;
  v19[53] = v5;
  MEMORY[0x29C2697F0](&v19[2]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
  }

  if (v19[17])
  {
    __sz = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[6] = v10;
    v17[7] = v10;
    v17[4] = v10;
    v17[5] = v10;
    v17[2] = v10;
    v17[3] = v10;
    v17[0] = v10;
    v17[1] = v10;
    std::istream::tellg();
    v11 = operator new[](0xAAAAAAAAAAAAAAAALL);
    std::istream::seekg();
    std::istream::read();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }

    v12 = xpc_data_create(v11, 0xAAAAAAAAAAAAAAAALL);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    operator delete[](v11);
    v13 = BasebandDiagnostics::addAWDConfigPayload(a1, v11, 0xAAAAAAAAAAAAAAAALL);
    xpc_release(v12);
  }

  else
  {
    v14 = *(a1 + 5);
    v13 = 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      LODWORD(v17[0]) = 136315138;
      *(v17 + 4) = v2;
      _os_log_impl(&dword_296FE4000, v14, OS_LOG_TYPE_DEFAULT, "#I Failed to open AWD Config file (%s)", v17, 0xCu);
      v13 = 0;
    }
  }

  v19[0] = *v6;
  *(v19 + *(v19[0] - 24)) = v6[3];
  MEMORY[0x29C269800](&v19[2]);
  std::istream::~istream();
  MEMORY[0x29C269940](&v19[53]);
  v15 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_296FEFD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL BasebandDiagnostics::addAWDConfigPayload(BasebandDiagnostics *this, char *bytes, size_t length)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = xpc_data_create(bytes, length);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v5 = v4;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  if (MEMORY[0x29C269CA0](v5) == MEMORY[0x29EDCAA40])
  {
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(this + 5);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v8 = xpc_int64_create(5);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF8B0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  if (v5)
  {
    xpc_retain(v5);
    v10 = v5;
  }

  else
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE4D8], v10);
  v15 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v15);
  v16 = xpc_int64_create(0);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE650], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(5000);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE4E0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_null_create();
  v21 = *(this + 8);
  v35 = *(this + 7);
  v36 = v21;
  v37 = v20;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *MEMORY[0x29EDBEE68];
  v23 = strlen(*MEMORY[0x29EDBEE68]);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
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

    v25 = operator new(v26);
    __p[1] = v24;
    v34 = v26 | 0x8000000000000000;
    __p[0] = v25;
    goto LABEL_31;
  }

  HIBYTE(v34) = v23;
  v25 = __p;
  if (v23)
  {
LABEL_31:
    memmove(v25, v22, v24);
  }

  *(v24 + v25) = 0;
  abm::client::PerformCommand();
  v27 = *buf;
  v12 = *&v39[4];
  v28 = v40;
  HIBYTE(v40) = 0;
  v39[4] = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v13 = v27 == 0;
  v11 = v28 >> 63;
  v14 = *(this + 5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
LABEL_38:
    v30 = "Failed";
    if (v13)
    {
      v30 = "Success";
    }

    *buf = 136315138;
    *v39 = v30;
    _os_log_impl(&dword_296FE4000, v14, OS_LOG_TYPE_DEFAULT, "#I AWD Configuration add %s", buf, 0xCu);
  }

LABEL_41:
  xpc_release(v7);
  if (v11)
  {
    operator delete(v12);
  }

  xpc_release(v5);
  v31 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_296FF0204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL BasebandDiagnostics::removeAWDConfig(BasebandDiagnostics *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v29 = xpc_null_create();
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C269CA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_int64_create(5);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDBF8B0], v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  v6 = xpc_int64_create(5000);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDBE4E0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = *(this + 8);
  v27 = *(this + 7);
  v28 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *MEMORY[0x29EDBF110];
  v10 = strlen(*MEMORY[0x29EDBF110]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v11;
    v26 = v13 | 0x8000000000000000;
    __dst[0] = v12;
    goto LABEL_21;
  }

  HIBYTE(v26) = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_21:
    memmove(v12, v9, v11);
  }

  *(v11 + v12) = 0;
  abm::client::PerformCommand();
  v14 = *buf;
  v15 = *&v31[4];
  v16 = v32;
  HIBYTE(v32) = 0;
  v31[4] = 0;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(this + 5);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v18 = *(this + 5);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }
  }

  v19 = "Failed";
  if (!v14)
  {
    v19 = "Success";
  }

  *buf = 136315138;
  *v31 = v19;
  _os_log_impl(&dword_296FE4000, v18, OS_LOG_TYPE_DEFAULT, "#I AWD Configuration remove %s", buf, 0xCu);
LABEL_30:
  v20 = *(this + 8);
  v23 = *(this + 7);
  v24 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  xpc_release(v3);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  result = v14 == 0;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296FF065C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void BasebandDiagnostics::resetAll(BasebandDiagnostics *this)
{
  v1 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(this + 10);
    *(this + 10) = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(this + 10);
    *(this + 10) = 0;
    if (!v2)
    {
      return;
    }
  }

  dispatch_group_leave(v2);

  dispatch_release(v2);
}

void BasebandDiagnostics::registerAWDMetricHandler(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    a1[14] = a1[13];
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v4;
    v35 = v4;
    if (v3 == a2)
    {
      *(&v35 + 1) = buf;
      (*(*v3 + 24))(v3, buf);
    }

    else
    {
      *(&v35 + 1) = (*(*v3 + 16))(v3);
    }

    v6 = a1[8];
    v25 = a1[7];
    v26 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *MEMORY[0x29EDBE518];
    v8 = strlen(*MEMORY[0x29EDBE518]);
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
      __dst[1] = v9;
      v24 = v11 | 0x8000000000000000;
      __dst[0] = v10;
    }

    else
    {
      HIBYTE(v24) = v8;
      v10 = __dst;
      if (!v8)
      {
LABEL_18:
        *(v9 + v10) = 0;
        v27 = MEMORY[0x29EDCA5F8];
        v28 = 3321888768;
        v29 = ___ZN19BasebandDiagnostics24registerAWDMetricHandlerENSt3__18functionIFvNS0_6vectorIhNS0_9allocatorIhEEEEEEE_block_invoke;
        v30 = &__block_descriptor_72_ea8_40c57_ZTSNSt3__18functionIFvNS_6vectorIhNS_9allocatorIhEEEEEEE_e31_v24__0_v8__dispatch_group_s__16l;
        v31 = a1;
        v12 = *(&v35 + 1);
        if (*(&v35 + 1))
        {
          if (*(&v35 + 1) == buf)
          {
            v33 = v32;
            (*(**(&v35 + 1) + 24))(*(&v35 + 1), v32);
LABEL_23:
            abm::client::RegisterEventHandler();
            if (SHIBYTE(v24) < 0)
            {
              operator delete(__dst[0]);
            }

            v13 = v26;
            if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }

            v14 = a1[8];
            v21 = a1[7];
            v22 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            abm::client::EventsOff();
            if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            v15 = a1[8];
            v19 = a1[7];
            v20 = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            abm::client::EventsOn();
            if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
              v16 = v33;
              if (v33 != v32)
              {
LABEL_38:
                if (v16)
                {
                  (*(*v16 + 40))(v16);
                }

                v17 = *(&v35 + 1);
                if (*(&v35 + 1) != buf)
                {
                  goto LABEL_41;
                }

                goto LABEL_45;
              }
            }

            else
            {
              v16 = v33;
              if (v33 != v32)
              {
                goto LABEL_38;
              }
            }

            (*(*v16 + 32))(v16);
            v17 = *(&v35 + 1);
            if (*(&v35 + 1) != buf)
            {
LABEL_41:
              if (v17)
              {
                (*(*v17 + 40))(v17);
              }

              goto LABEL_46;
            }

LABEL_45:
            (*(*v17 + 32))(v17);
            goto LABEL_46;
          }

          v12 = (*(**(&v35 + 1) + 16))(*(&v35 + 1));
        }

        v33 = v12;
        goto LABEL_23;
      }
    }

    memmove(v10, v7, v9);
    goto LABEL_18;
  }

  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FE4000, v5, OS_LOG_TYPE_ERROR, "No AWD Metric handler", buf, 2u);
  }

LABEL_46:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296FF0C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](&a19);
    std::function<void ()(std::vector<unsigned char>)>::~function(v19 - 96);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<abm::client::Manager>::~shared_ptr[abi:ne200100](&a19);
  std::function<void ()(std::vector<unsigned char>)>::~function(v19 - 96);
  _Unwind_Resume(a1);
}

void ___ZN19BasebandDiagnostics24registerAWDMetricHandlerENSt3__18functionIFvNS0_6vectorIhNS0_9allocatorIhEEEEEEE_block_invoke(uint64_t a1, xpc_object_t object)
{
  objecta[3] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (object)
  {
    v4 = object;
    xpc_retain(object);
    goto LABEL_4;
  }

  v4 = xpc_null_create();
  if (v4)
  {
LABEL_4:
    if (MEMORY[0x29C269CA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }

    goto LABEL_8;
  }

  v5 = xpc_null_create();
  v4 = 0;
LABEL_8:
  xpc_release(v4);
  v6 = *MEMORY[0x29EDBF8B0];
  if (xpc_dictionary_get_value(v5, *MEMORY[0x29EDBF8B0]))
  {
    value = xpc_dictionary_get_value(v5, v6);
    objecta[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      objecta[0] = xpc_null_create();
    }

    v8 = xpc::dyn_cast_or_default();
    xpc_release(objecta[0]);
    if (v8 == 5)
    {
      v9 = *MEMORY[0x29EDBE4D8];
      if (xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE4D8]))
      {
        v10 = xpc_dictionary_get_value(v5, v9);
        v30 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v30 = xpc_null_create();
        }

        memset(objecta, 0, 24);
        xpc::dyn_cast_or_default();
        v12 = v31;
        v13 = v32;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        xpc_release(v30);
        v14 = *(v3 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(objecta[0]) = 134217984;
          *(objecta + 4) = (v13 - v12);
          _os_log_impl(&dword_296FE4000, v14, OS_LOG_TYPE_DEFAULT, "#I Received AWD metric w/ payload size = %ld", objecta, 0xCu);
        }

        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v3 + 104, *(v3 + 112), v12, v13, v13 - v12);
        v15 = *MEMORY[0x29EDBE6C0];
        if (xpc_dictionary_get_value(v5, *MEMORY[0x29EDBE6C0]))
        {
          v16 = xpc_dictionary_get_value(v5, v15);
          objecta[0] = v16;
          if (v16)
          {
            xpc_retain(v16);
          }

          else
          {
            objecta[0] = xpc_null_create();
          }

          v17 = xpc::dyn_cast_or_default();
          xpc_release(objecta[0]);
          if (!v17)
          {
            v26 = *(v3 + 40);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(objecta[0]) = 0;
              _os_log_impl(&dword_296FE4000, v26, OS_LOG_TYPE_DEFAULT, "#I Continue to wait for more data..", objecta, 2u);
            }

            goto LABEL_36;
          }
        }

        memset(objecta, 170, 24);
        v18 = *(v3 + 112) - *(v3 + 104);
        wis::createTagForProtobuf(0xF);
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v3 + 104, *(v3 + 104), objecta[0], objecta[1], objecta[1] - objecta[0]);
        if (objecta[0])
        {
          objecta[1] = objecta[0];
          operator delete(objecta[0]);
        }
      }

      else
      {
        v11 = *(v3 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(objecta[0]) = 0;
          _os_log_error_impl(&dword_296FE4000, v11, OS_LOG_TYPE_ERROR, "Received AWD metric w/ no Payload!", objecta, 2u);
        }

        v12 = 0;
        *(v3 + 112) = *(v3 + 104);
      }

      v19 = *(a1 + 64);
      if (v19)
      {
        __p = 0;
        v28 = 0;
        v29 = 0;
        v21 = *(v3 + 104);
        v20 = *(v3 + 112);
        v22 = v20 - v21;
        if (v20 != v21)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v23 = operator new(v20 - v21);
          v24 = &v23[v22];
          __p = v23;
          v29 = &v23[v22];
          memcpy(v23, v21, v22);
          v28 = v24;
        }

        (*(*v19 + 48))(v19, &__p);
        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }
      }

      *(v3 + 112) = *(v3 + 104);
LABEL_36:
      if (v12)
      {
        operator delete(v12);
      }
    }
  }

  xpc_release(v5);
  v25 = *MEMORY[0x29EDCA608];
}

void sub_296FF10BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_ea8_40c57_ZTSNSt3__18functionIFvNS_6vectorIhNS_9allocatorIhEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = a1 + 40;
      v4 = *(**(a2 + 64) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 64) = result;
    }
  }

  else
  {
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_40c57_ZTSNSt3__18functionIFvNS_6vectorIhNS_9allocatorIhEEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::function<void ()(std::vector<unsigned char>)>::~function(uint64_t a1)
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

BOOL BasebandDiagnostics::saveToUserDefaults(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.BasebandDiagnostics"];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
    [v6 removeObjectForKey:v8];

    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v9];
    [v6 setObject:a3 forKey:v10];

    [v6 synchronize];
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a2;
    v13 = "Failed";
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    if (v6)
    {
      v13 = "Success";
    }

    v16 = 136315394;
    v17 = v12;
    v18 = 2080;
    v19 = v13;
    _os_log_impl(&dword_296FE4000, v11, OS_LOG_TYPE_DEFAULT, "#I User Defaults - Save Data for key=%s: %s", &v16, 0x16u);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6 != 0;
}

BOOL BasebandDiagnostics::removeFromUserDefaults(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.BasebandDiagnostics"];
  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v5];
    [v4 removeObjectForKey:v6];

    [v4 synchronize];
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    v9 = "Failed";
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    if (v4)
    {
      v9 = "Success";
    }

    v12 = 136315394;
    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_296FE4000, v7, OS_LOG_TYPE_DEFAULT, "#I User Defaults - Remove key=%s: %s", &v12, 0x16u);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v4 != 0;
}

uint64_t BasebandDiagnostics::readObjectFromUserDefaults(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.BasebandDiagnostics"];
  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v4];
    v6 = [v3 objectForKey:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t BasebandDiagnostics::readIntegerFromUserDefaults(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.BasebandDiagnostics"];
  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v4];
    v6 = [v3 integerForKey:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

void BasebandDiagnostics::readStringFromUserDefaults(uint64_t *a1@<X1>, const void **a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"com.apple.BasebandDiagnostics"];
  if (v6)
  {
    v13 = v6;
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
    v9 = [v13 stringForKey:v8];

    if (v9 && [v9 length])
    {
      std::string::__assign_external(a3, [v9 UTF8String]);
    }

    else if (a3 != a2)
    {
      v10 = *(a2 + 23);
      if (*(a3 + 23) < 0)
      {
        if (v10 >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        if (v10 >= 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = a2[1];
        }

        std::string::__assign_no_alias<false>(a3, v11, v12);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(a3, *a2, a2[1]);
      }

      else
      {
        *a3 = *a2;
        *(a3 + 16) = a2[2];
      }
    }

    v6 = v13;
  }
}

void sub_296FF1958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void *ctu::SharedSynchronizable<BasebandDiagnostics>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C269800](a1 + 2);

  return std::istream::~istream();
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, _BYTE *__dst, _BYTE *__src, void *a4, unint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) < a5)
  {
    v10 = *a1;
    v11 = v9 - *a1 + a5;
    if (v11 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = (__dst - v10);
    v13 = v8 - v10;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      v15 = a5;
      v16 = operator new(v14);
      a5 = v15;
      v17 = &v12[v16];
      v18 = &v12[v16 + v15];
      if (a5 < 8)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v16 = 0;
      v17 = (__dst - v10);
      v18 = &v12[a5];
      if (a5 < 8)
      {
LABEL_35:
        v46 = v17;
        v47 = __src;
        goto LABEL_36;
      }
    }

    if ((&__dst[v16] - &__src[v10]) < 0x20)
    {
      goto LABEL_35;
    }

    if (a5 >= 0x20)
    {
      v54 = a5 & 0x7FFFFFFFFFFFFFE0;
      v55 = (__src + 16);
      v56 = v16 + v12 + 16;
      v57 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v58 = *v55;
        *(v56 - 1) = *(v55 - 1);
        *v56 = v58;
        v55 += 2;
        v56 += 2;
        v57 -= 32;
      }

      while (v57);
      if (v54 == a5)
      {
        goto LABEL_37;
      }

      if ((a5 & 0x18) == 0)
      {
        v47 = &__src[v54];
        v46 = &v17[v54];
        do
        {
LABEL_36:
          v48 = *v47++;
          *v46++ = v48;
        }

        while (v46 != v18);
        goto LABEL_37;
      }
    }

    else
    {
      v54 = 0;
    }

    v46 = &v17[a5 & 0x7FFFFFFFFFFFFFF8];
    v47 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v59 = &__src[v54];
    v60 = v16 + &__dst[v54] - v10;
    v61 = v54 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v62 = *v59++;
      *v60++ = v62;
      v61 += 8;
    }

    while (v61);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) != a5)
    {
      goto LABEL_36;
    }

LABEL_37:
    v49 = v16 + v14;
    v50 = v9 - __dst;
    memcpy(v18, __dst, v50);
    v51 = &v18[v50];
    *(a1 + 8) = __dst;
    v52 = *a1;
    v53 = &v17[*a1 - __dst];
    memcpy(v53, *a1, &__dst[-*a1]);
    *a1 = v53;
    *(a1 + 8) = v51;
    *(a1 + 16) = v49;
    if (v52)
    {

      operator delete(v52);
    }

    return;
  }

  v19 = v9 - __dst;
  if ((v9 - __dst) >= a5)
  {
    v34 = &__dst[a5];
    v35 = (v9 - a5);
    v36 = *(a1 + 8);
    if (v9 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_63;
      }

      v35 += a5 & 0x7FFFFFFFFFFFFFE0;
      v36 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v37 = (v9 + 16);
      v38 = (v9 + 16 - a5);
      v39 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v40 = *v38;
        *(v37 - 1) = *(v38 - 1);
        *v37 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 32;
      }

      while (v39);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_63:
        do
        {
          v41 = *v35++;
          *v36++ = v41;
        }

        while (v35 != v9);
      }
    }

    *(a1 + 8) = v36;
    if (v9 != v34)
    {
      v42 = a5;
      memmove(&__dst[a5], __dst, v9 - v34);
      a5 = v42;
    }

    v43 = __dst;
    v44 = __src;
    v45 = a5;
    goto LABEL_48;
  }

  v20 = a4 - &__src[v19];
  if (a4 != &__src[v19])
  {
    v21 = a5;
    v22 = a4;
    memmove(*(a1 + 8), &__src[v19], a4 - &__src[v19]);
    a4 = v22;
    a5 = v21;
  }

  v23 = (v9 + v20);
  *(a1 + 8) = v9 + v20;
  if (v19 >= 1)
  {
    v24 = &__dst[a5];
    v25 = &v23[-a5];
    if (&v23[-a5] >= v9)
    {
      v27 = (v9 + v20);
    }

    else
    {
      v26 = &__src[a5 + v9] - &__dst[a4];
      v27 = (v9 + v20);
      if (v26 < 0x20)
      {
        goto LABEL_64;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_64;
      }

      v25 += v26 & 0xFFFFFFFFFFFFFFE0;
      v27 = &v23[v26 & 0xFFFFFFFFFFFFFFE0];
      v28 = &__dst[a4 + 16];
      v29 = (v28 - __src);
      v30 = (v28 - &__src[a5]);
      v31 = v26 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 32;
      }

      while (v31);
      if (v26 != (v26 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_64:
        do
        {
          v33 = *v25++;
          *v27++ = v33;
        }

        while (v25 < v9);
      }
    }

    *(a1 + 8) = v27;
    if (v23 != v24)
    {
      memmove(&__dst[a5], __dst, v23 - v24);
    }

    v43 = __dst;
    v44 = __src;
    v45 = v9 - __dst;
LABEL_48:

    memmove(v43, v44, v45);
  }
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2A1C6F268]();
}

{
  return MEMORY[0x2A1C6F278]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F448]();
}

{
  return MEMORY[0x2A1C6F460]();
}

{
  return MEMORY[0x2A1C6F468]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

{
  return MEMORY[0x2A1C6FE50]();
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