void sub_29AB797D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, void *a19)
{
  sub_29A1602D4(&a12, a13);
  sub_29A1602D4(&a15, a16);
  sub_29A1602D4(&a18, a19);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AB7980C(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_29A153CF4(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29AB7988C(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *sub_29AB7988C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  result[4] = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 10) = *(a2 + 2);
  *(a3 + 16) = 1;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6C595CLL & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::GlfContextCaps*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0xCuLL);
      *v8 = 0;
      v8[4] = 0;
      *(v8 + 2) = 256;
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::GlfContextCaps]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::GlfContextCaps]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::GlfContextCaps*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AB79AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::GlfContextCaps]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance, &v1, 0);
    if (v1 == i)
    {

      operator delete(i);
      return;
    }

    sched_yield();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfContextCaps::GlfContextCaps(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 256;
  return this;
}

{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 256;
  return this;
}

void pxrInternal__aapl__pxrReserved__::GlfContextCaps::InitInstance(pxrInternal__aapl__pxrReserved__::GlfContextCaps *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(this);

  pxrInternal__aapl__pxrReserved__::GlfContextCaps::_LoadCaps(v1);
}

void pxrInternal__aapl__pxrReserved__::GlfContextCaps::_LoadCaps(pxrInternal__aapl__pxrReserved__::GlfContextCaps *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 256;
  v2 = this + 8;
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GetCurrentGLContext(&v39);
  if ((*(*v39 + 16))(v39))
  {
    if (v40)
    {
      sub_29A014BEC(v40);
    }

LABEL_4:
    String = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7936);
    v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7937);
    v5 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7938);
    if (v5)
    {
      v6 = v5;
      v7 = strchr(v5, 46);
      v10 = v7;
      if (v7)
      {
        v11 = v7 == v6;
      }

      else
      {
        v11 = 1;
      }

      if (!v11 || (LOBYTE(v38) = 0, v36 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Can't parse GL_VERSION %s", v8, v9, v6, "glf/contextCaps.cpp", "_LoadCaps", 96, "void pxrInternal__aapl__pxrReserved__::GlfContextCaps::_LoadCaps()", v38), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v37, "(dot && dot != glVersionStr)", v36) & 1) != 0))
      {
        v12 = *(v10 - 1);
        if (v12 <= 48)
        {
          v13 = 48;
        }

        else
        {
          v13 = *(v10 - 1);
        }

        v14 = 100 * v13 - 4800;
        v15 = v10[1];
        if (v15 <= 48)
        {
          v16 = 48;
        }

        else
        {
          v16 = v10[1];
        }

        v17 = 10 * v16 - 480;
        if (v12 >= 57)
        {
          v18 = 900;
        }

        else
        {
          v18 = v14;
        }

        if (v15 >= 57)
        {
          v17 = 90;
        }

        v19 = v17 + v18;
        *this = v19;
      }

      else
      {
        v19 = *this;
      }

      if (v19 >= 320)
      {
        LODWORD(v37[0]) = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(37158, v37);
        *(this + 4) = v37[0] & 1;
        v19 = *this;
      }

      if (v19 >= 300)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(35071, v2);
      }

      if (sub_29AB7A08C(0))
      {
        v20 = sub_29A00911C(MEMORY[0x29EDC93C8], "GlfContextCaps: \n", 17);
        v21 = sub_29A00911C(v20, "  GL_VENDOR                          = ", 39);
        v22 = strlen(String);
        v23 = sub_29A00911C(v21, String, v22);
        v24 = sub_29A00911C(v23, "\n", 1);
        v25 = sub_29A00911C(v24, "  GL_RENDERER                        = ", 39);
        v26 = strlen(v4);
        v27 = sub_29A00911C(v25, v4, v26);
        v28 = sub_29A00911C(v27, "\n", 1);
        v29 = sub_29A00911C(v28, "  GL_VERSION                         = ", 39);
        v30 = strlen(v6);
        v31 = sub_29A00911C(v29, v6, v30);
        v32 = sub_29A00911C(v31, "\n", 1);
        v33 = sub_29A00911C(v32, "  GL version                         = ", 39);
        v34 = MEMORY[0x29C2C1ED0](v33, *this);
        sub_29A00911C(v34, "\n", 1);
      }
    }

    return;
  }

  v37[0] = "glf/contextCaps.cpp";
  v37[1] = "_LoadCaps";
  v37[2] = 83;
  v37[3] = "void pxrInternal__aapl__pxrReserved__::GlfContextCaps::_LoadCaps()";
  LOBYTE(v38) = 0;
  v35 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v37, "GlfGLContext::GetCurrentGLContext()->IsValid()", 0);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v35)
  {
    goto LABEL_4;
  }
}

void sub_29AB79FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::GlfContextCaps::GetInstance(pxrInternal__aapl__pxrReserved__::GlfContextCaps *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfContextCaps>::_CreateInstance();
  }

  if (!*v1)
  {
    v3[0] = "glf/contextCaps.cpp";
    v3[1] = "GetInstance";
    v3[2] = 63;
    v3[3] = "static const GlfContextCaps &pxrInternal__aapl__pxrReserved__::GlfContextCaps::GetInstance()";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "GlfContextCaps has not been initialized");
  }

  return v1;
}

BOOL sub_29AB7A08C(int a1)
{
  v2 = sub_29AB77654();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB77654();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296460[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void sub_29AB7A0F0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::GLF_ENABLE_DIAGNOSTIC_TRACE))
  {
    sub_29B2C262C();
  }
}

void pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(uint64_t a1)
{
  v2 = (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError)();
  if (v2)
  {
    Error = v2;
    v4 = *MEMORY[0x29EDC9538];
    v5 = 256;
    v6 = *(MEMORY[0x29EDC9538] + 24);
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::internal::GLApi::gluErrorString(Error);
      sub_29A00B6DC(&v29);
      if (v7)
      {
        v8 = sub_29A00911C(&v29, "GL error: ", 10);
        v9 = strlen(v7);
        sub_29A00911C(v8, v7, v9);
      }

      else
      {
        v10 = sub_29A00911C(&v29, "GL error code: 0x", 17);
        *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
        v11 = MEMORY[0x29C2C1EE0]();
        *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
      }

      v12 = *(a1 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a1 + 8);
      }

      if (v12)
      {
        v13 = sub_29A00911C(&v29, ", reported from ", 16);
        v14 = *(a1 + 23);
        if (v14 >= 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 23);
        }

        else
        {
          v16 = *(a1 + 8);
        }

        sub_29A00911C(v13, v15, v16);
      }

      if (sub_29AB7A08C(1))
      {
        std::stringbuf::str();
        v17 = std::string::append(&v28, "\n");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v25 = v17->__r_.__value_.__r.__words[2];
        *__p = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(__p);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      __p[0] = "glf/diagnostic.cpp";
      __p[1] = "GlfPostPendingGLErrors";
      v25 = 67;
      v26 = "void pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(const std::string &)";
      v27 = 0;
      std::stringbuf::str();
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v29 = v4;
      *(&v29 + *(v4 - 3)) = v6;
      v30 = MEMORY[0x29EDC9570] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v31);
      std::ostream::~ostream();
      v19 = MEMORY[0x29C2C4390](&v33);
      if (!--v5)
      {
        break;
      }

      Error = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(v19);
    }

    while (Error);
    v20 = sub_29AB7A08C(1);
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfGetStackTrace(__p, v20);
      if (v25 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("==== GL Error Stack ====\n%s\n", v21, v22, v23);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v29);
      if (SHIBYTE(v31[0].__locale_) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29AB7A4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfRegisterDefaultDebugOutputMessageCallback(pxrInternal__aapl__pxrReserved__ *this)
{
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallbackARB)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallbackARB(pxrInternal__aapl__pxrReserved__::GlfDefaultDebugOutputMessageCallback, 0);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControlARB(4352, 33385, 4352, 0, 0, 0);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControlARB(4352, 33386, 4352, 0, 0, 0);
    v1 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;

    v1(33346);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfDefaultDebugOutputMessageCallback(pxrInternal__aapl__pxrReserved__ *this, int a2, char *a3, pxrInternal__aapl__pxrReserved__ *a4, uint64_t a5, const char *a6, const char *a7, const void *a8)
{
  if (a2 == 33356)
  {
    v10 = a3;
    __p = "glf/diagnostic.cpp";
    v20 = "GlfDefaultDebugOutputMessageCallback";
    v21 = 106;
    v22 = "void pxrInternal__aapl__pxrReserved__::GlfDefaultDebugOutputMessageCallback(GLenum, GLenum, GLuint, GLenum, GLsizei, const GLchar *, const GLvoid *)";
    v23 = 0;
    v11 = pxrInternal__aapl__pxrReserved__::GlfDebugEnumToString(this);
    v12 = pxrInternal__aapl__pxrReserved__::GlfDebugEnumToString(a4);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "GL debug output: source: %s type: %s id: %d severity: %s message: %s", v11, "GL_DEBUG_TYPE_ERROR", v10, v12, a6);
    v13 = sub_29AB7A08C(1);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfGetStackTrace(v17, v13);
      if (v18 >= 0)
      {
        v16 = v17;
      }

      else
      {
        v16 = v17[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("==== GL Error Stack ====\n%s\n", v14, v15, v16);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&__p);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }
  }

  else
  {
    __p = "glf/diagnostic.cpp";
    v20 = "GlfDefaultDebugOutputMessageCallback";
    v21 = 112;
    v22 = "void pxrInternal__aapl__pxrReserved__::GlfDefaultDebugOutputMessageCallback(GLenum, GLenum, GLuint, GLenum, GLsizei, const GLchar *, const GLvoid *)";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "GL debug output: %s", a3, a4, a5, a6, a7, a8, a6);
  }
}

void sub_29AB7A748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *pxrInternal__aapl__pxrReserved__::GlfDebugEnumToString(pxrInternal__aapl__pxrReserved__ *this)
{
  if (this > 37189)
  {
    switch(this)
    {
      case 0x9146:
        return "GL_DEBUG_SEVERITY_HIGH";
      case 0x9147:
        return "GL_DEBUG_SEVERITY_MEDIUM";
      case 0x9148:
        return "GL_DEBUG_SEVERITY_LOW";
      default:
LABEL_24:
        v7 = v1;
        v8 = v2;
        v5[0] = "glf/diagnostic.cpp";
        v5[1] = "GlfDebugEnumToString";
        v5[2] = 168;
        v5[3] = "const char *pxrInternal__aapl__pxrReserved__::GlfDebugEnumToString(GLenum)";
        v6 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "unknown debug enum");
        return "unknown";
    }
  }

  else
  {
    v3 = this - 33350;
    result = "GL_DEBUG_SOURCE_API";
    switch(v3)
    {
      case 0:
        return result;
      case 1:
        result = "GL_DEBUG_SOURCE_WINDOW_SYSTEM";
        break;
      case 2:
        result = "GL_DEBUG_SOURCE_SHADER_COMPILER";
        break;
      case 3:
        result = "GL_DEBUG_SOURCE_THIRD_PARTY";
        break;
      case 4:
        result = "GL_DEBUG_SOURCE_APPLICATION";
        break;
      case 5:
        result = "GL_DEBUG_SOURCE_OTHER";
        break;
      case 6:
        result = "GL_DEBUG_TYPE_ERROR";
        break;
      case 7:
        result = "GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR";
        break;
      case 8:
        result = "GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR";
        break;
      case 9:
        result = "GL_DEBUG_TYPE_PORTABILITY";
        break;
      case 10:
        result = "GL_DEBUG_TYPE_PERFORMANCE";
        break;
      case 11:
        result = "GL_DEBUG_TYPE_OTHER";
        break;
      case 34:
        result = "GL_DEBUG_TYPE_MARKER";
        break;
      case 35:
        result = "GL_DEBUG_TYPE_PUSH_GROUP";
        break;
      case 36:
        result = "GL_DEBUG_TYPE_POP_GROUP";
        break;
      case 37:
        result = "GL_DEBUG_SEVERITY_NOTIFICATION";
        break;
      default:
        goto LABEL_24;
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GlfDebugGroup *pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(pxrInternal__aapl__pxrReserved__::GlfDebugGroup *this, const char *a2)
{
  if (sub_29AB7AA1C() && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, a2);
  }

  return this;
}

{
  if (sub_29AB7AA1C() && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, a2);
  }

  return this;
}

uint64_t sub_29AB7AA1C()
{
  if ((atomic_load_explicit(&qword_2A17486C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17486C0))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::GLF_ENABLE_DIAGNOSTIC_TRACE);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A17486B8 = *v1 == 1;
    __cxa_guard_release(&qword_2A17486C0);
  }

  return byte_2A17486B8;
}

void pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(pxrInternal__aapl__pxrReserved__::GlfDebugGroup *this)
{
  if (sub_29AB7AA1C())
  {
    if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup();
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDebugLabelBuffer(pxrInternal__aapl__pxrReserved__ *this, uint64_t a2, const char *a3)
{
  result = sub_29AB7AA1C();
  if (result && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabel;

    return v6(33504, this, 0xFFFFFFFFLL, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDebugLabelShader(pxrInternal__aapl__pxrReserved__ *this, uint64_t a2, const char *a3)
{
  result = sub_29AB7AA1C();
  if (result && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabel;

    return v6(33505, this, 0xFFFFFFFFLL, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDebugLabelProgram(pxrInternal__aapl__pxrReserved__ *this, uint64_t a2, const char *a3)
{
  result = sub_29AB7AA1C();
  if (result && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabel;

    return v6(33506, this, 0xFFFFFFFFLL, a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GlfGLQueryObject *pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::GlfGLQueryObject(pxrInternal__aapl__pxrReserved__::GlfGLQueryObject *this)
{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(this);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueries)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueries(1, this);
  }

  return this;
}

{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(this);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueries)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenQueries(1, this);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::~GlfGLQueryObject(pxrInternal__aapl__pxrReserved__::GlfGLQueryObject *this)
{
  sub_29AB7AF98(v2);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteQueries && *this)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteQueries(1, this);
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v2);
}

_DWORD *pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::BeginSamplesPassed(_DWORD *this)
{
  this[1] = 35092;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery)
  {
    if (*this)
    {
      return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery(35092);
    }
  }

  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::Begin(_DWORD *this, uint64_t a2)
{
  this[1] = a2;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery)
  {
    if (*this)
    {
      return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery(a2);
    }
  }

  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::BeginPrimitivesGenerated(_DWORD *this)
{
  this[1] = 35975;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery)
  {
    if (*this)
    {
      return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery(35975);
    }
  }

  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::BeginTimeElapsed(_DWORD *this)
{
  this[1] = 35007;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery)
  {
    if (*this)
    {
      return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBeginQuery(35007);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::End(uint64_t this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndQuery)
  {
    this = *(this + 4);
    if (this)
    {
      this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEndQuery();
    }
  }

  *(v1 + 4) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::GetResult(pxrInternal__aapl__pxrReserved__::GlfGLQueryObject *this)
{
  v3 = 0;
  if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v)
  {
    return 0;
  }

  v1 = *this;
  if (!v1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v(v1, 34918, &v3);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLQueryObject::GetResultNoWait(pxrInternal__aapl__pxrReserved__::GlfGLQueryObject *this)
{
  v4 = 0;
  if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v)
  {
    return 0;
  }

  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v(v2, 34919, &v4);
  result = v4;
  if (v4 == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetQueryObjecti64v(*this, 34918, &v4);
    return v4;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GlfGLContext *sub_29AB7AF98(pxrInternal__aapl__pxrReserved__::GlfGLContext *a1)
{
  sub_29AB7AFFC(a1, &v3);
  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::GlfGLContextScopeHolder(a1, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

void sub_29AB7AFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB7AFFC(pxrInternal__aapl__pxrReserved__::GlfGLContext *a1@<X0>, uint64_t a2@<X8>)
{
  IsInitialized = pxrInternal__aapl__pxrReserved__::GlfGLContext::IsInitialized(a1);
  if (IsInitialized && pxrInternal__aapl__pxrReserved__::ArchIsMainThread(IsInitialized))
  {

    pxrInternal__aapl__pxrReserved__::GlfGLContext::GetSharedGLContext(a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_29AB7B050()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::GLF_DRAW_TARGETS_NUM_SAMPLES))
  {
    sub_29B2C2704();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::New@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  result = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::GlfDrawTarget(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::GlfDrawTarget(uint64_t a1, void *a2, int a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2072600;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = *a2;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  v5 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(a1);
  if (a3)
  {
    if ((atomic_load_explicit(&qword_2A17486D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17486D0))
    {
      v11 = atomic_load(pxrInternal__aapl__pxrReserved__::GLF_DRAW_TARGETS_NUM_SAMPLES);
      if (!v11)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      dword_2A17486C8 = *v11;
      __cxa_guard_release(&qword_2A17486D0);
    }

    if ((dword_2A17486C8 & (dword_2A17486C8 - 1)) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = dword_2A17486C8;
    }

    if (dword_2A17486C8 >= 2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    *(a1 + 52) = v7;
  }

  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GenFrameBuffer(a1);
  v8 = operator new(0x30uLL);
  v8[2] = 1;
  *v8 = &unk_2A20726C0;
  *(v8 + 5) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 8;
  v9 = *v5;
  *v5 = v8;
  v12 = 0;
  sub_29B290B2C(v5, v9);
  sub_29AB7DEA0(&v12);
  return a1;
}

void sub_29AB7B25C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A17486D0);
  v5 = *(v1 + 9);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29AB7DEA0(v3);
  sub_29A0F6078(v2, v6);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GenFrameBuffer(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, this + 32);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, this + 36);
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GetCurrentGLContext(v5);
  v2 = v5[0];
  v5[0] = 0uLL;
  v3 = *(this + 9);
  *(this + 4) = v2;
  if (v3)
  {
    sub_29A014BEC(v3);
    if (*(&v5[0] + 1))
    {
      sub_29A014BEC(*(&v5[0] + 1));
    }
  }

  if (*(this + 13) >= 2u)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFramebuffers(1, this + 28);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, *(this + 7));
    if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(*(this + 7)))
    {
      sub_29B2C2738(v5);
    }
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFramebuffers(1, this + 24);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, *(this + 6));
  if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(*(this + 6)))
  {
    sub_29B2C279C(v5);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 8));
  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(this + 9));
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::GlfDrawTarget(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2072600;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29AB7B5C4(a2);
}

void sub_29AB7B584(_Unwind_Exception *a1)
{
  v5 = *(v1 + 9);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29AB7DEA0(v3);
  sub_29A0F6078(v2, v6);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AB7B5C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C2800();
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Bind(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  v1 = *(this + 10);
  *(this + 10) = v1 + 1;
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v8, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Bind()");
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, this + 32);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, this + 36);
    if (pxrInternal__aapl__pxrReserved__::GlfGLContext::IsCurrent(*(this + 8)) & 1) != 0 || (__p[0] = "glf/drawTarget.cpp", __p[1] = "Bind", v5 = 400, v6 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Bind()", v7 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "_owningContext->IsCurrent()", 0)))
    {
      v3 = 24;
      if (*(this + 13) > 1u)
      {
        v3 = 28;
      }

      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, *(this + v3));
      sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Bind()");
      pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
      if (SHIBYTE(v5) < 0)
      {
        operator delete(__p[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v8);
  }
}

uint64_t sub_29AB7B768(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_BindAttachment(unsigned int *a1, uint64_t *a2)
{
  v4 = sub_29AB7C0D4(a2);
  v5 = (*(*v4 + 24))(v4);
  v6 = *(sub_29AB7C0D4(a2) + 56);
  v7 = *(sub_29AB7C0D4(a2) + 72);
  if (*(sub_29AB7C0D4(a2) + 60) == 6402)
  {
    v8 = 36096;
  }

  else if (*(sub_29AB7C0D4(a2) + 60) == 34041)
  {
    v8 = 33306;
  }

  else
  {
    if (v7 < 0)
    {
      __p[0] = "glf/drawTarget.cpp";
      __p[1] = "_BindAttachment";
      v11 = 335;
      v12 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_BindAttachment(const GlfDrawTarget::AttachmentRefPtr &)";
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Attachment index cannot be negative");
      return;
    }

    LODWORD(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36063, __p);
    if (v7 >= SLODWORD(__p[0]))
    {
      sub_29B2C2874(__p);
    }

    v8 = (v7 + 36064);
  }

  v9 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, &v9);
  if (a1[13] >= 2)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, a1[7]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture2D(36160, v8, 37120, v6, 0);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, a1[6]);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture2D(36160, v8, 3553, v5, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, v9);
  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_BindAttachment(const GlfDrawTarget::AttachmentRefPtr &)");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB7B9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Unbind(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  v1 = *(this + 10) - 1;
  *(this + 10) = v1;
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v5, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Unbind()");
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 8));
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(this + 9));
    pxrInternal__aapl__pxrReserved__::GlfDrawTarget::TouchContents(this);
    sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Unbind()");
    pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v5);
  }
}

void sub_29AB7BAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup((v14 - 17));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::~GlfDrawTarget(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  *this = &unk_2A2072600;
  v2 = this + 64;
  if ((*(**(this + 8) + 16))(*(this + 8)))
  {
    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::GlfGLContextScopeHolder(v18, v2);
    pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_DeleteAttachments(this);
    v3 = *(this + 6);
    if (v3)
    {
      if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(v3))
      {
        v13 = "glf/drawTarget.cpp";
        v14 = "~GlfDrawTarget";
        v15 = 120;
        v16 = "virtual pxrInternal__aapl__pxrReserved__::GlfDrawTarget::~GlfDrawTarget()";
        v17 = 0;
        v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Tried to free invalid framebuffer", v4, v5);
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "glIsFramebuffer(_framebuffer)", v11);
      }

      pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffers(1, this + 24);
      *(this + 6) = 0;
    }

    v6 = *(this + 7);
    if (v6)
    {
      if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(v6))
      {
        v13 = "glf/drawTarget.cpp";
        v14 = "~GlfDrawTarget";
        v15 = 128;
        v16 = "virtual pxrInternal__aapl__pxrReserved__::GlfDrawTarget::~GlfDrawTarget()";
        v17 = 0;
        v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Tried to free invalid multisampled framebuffer", v7, v8);
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "glIsFramebuffer(_framebufferMS)", v12);
      }

      pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffers(1, this + 28);
      *(this + 7) = 0;
    }

    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v18);
  }

  v9 = *(this + 9);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29AB7DEA0(this + 7);
  sub_29A0F6078(this + 2, v10);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::~GlfDrawTarget(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_DeleteAttachments(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  v2 = *(sub_29AB7B768(this + 7) + 8);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  if (v2 == 1)
  {
    Attachments = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(this);
    sub_29AB7DD74(Attachments, *(Attachments + 8));
    *Attachments = Attachments + 8;
    *(Attachments + 16) = 0;
    *(Attachments + 8) = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::AddAttachment(uint64_t a1, __int128 *a2, int a3, int a4, int a5)
{
  if (*(a1 + 40) <= 0)
  {
    *&__dst = "glf/drawTarget.cpp";
    *(&__dst + 1) = "AddAttachment";
    v22 = 141;
    v23 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::AddAttachment(const std::string &, GLenum, GLenum, GLenum)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Cannot change the size of an unbound GlfDrawTarget");
  }

  Attachments = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(a1);
  if (Attachments + 8 == sub_29A01BCCC(Attachments, a2))
  {
    pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::New(*(Attachments + 16), a3, a4, a5, *(a1 + 44), *(a1 + 52), __p);
    sub_29AB7DE20(&__dst, a2, __p);
    sub_29AB7DF00(Attachments, &__dst, &__dst);
    sub_29AB7DED0(&v23);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    v13 = sub_29AB7C0D4(__p);
    if (!(*(*v13 + 24))(v13))
    {
      *&__dst = "glf/drawTarget.cpp";
      *(&__dst + 1) = "AddAttachment";
      v22 = 159;
      v23 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::AddAttachment(const std::string &, GLenum, GLenum, GLenum)";
      v24 = 0;
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Attachment %s was not added and cannot be bound in MatDisplayMaterial", v14, v15, v16);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__dst, "attachment->GetGlTextureName() > 0", v17);
    }

    pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_BindAttachment(a1, __p);
    sub_29AB7DED0(__p);
  }

  else
  {
    *&__dst = "glf/drawTarget.cpp";
    *(&__dst + 1) = "AddAttachment";
    v22 = 165;
    v23 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::AddAttachment(const std::string &, GLenum, GLenum, GLenum)";
    v24 = 0;
    std::operator+<char>();
    v11 = std::string::append(&v18, " already exists for this DrawTarget");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, __p);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  v1 = (this + 56);
  if (!*(this + 7))
  {
    sub_29B2C28D8(v3);
  }

  return sub_29AB7B768(v1) + 24;
}

pxrInternal__aapl__pxrReserved__::GlfTexture *pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::New@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, pxrInternal__aapl__pxrReserved__::GlfTexture **a7@<X8>)
{
  v14 = operator new(0x58uLL);
  result = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::Attachment(v14, a1, a2, a3, a4, a5, a6);
  *a7 = v14;
  return result;
}

uint64_t sub_29AB7C098(uint64_t a1)
{
  sub_29AB7DED0((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AB7C0D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::DeleteAttachment(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *a1, const void **a2)
{
  Attachments = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(a1);
  v4 = sub_29A01BCCC(Attachments, a2);
  if (Attachments + 1 == v4)
  {
    v11[0] = "glf/drawTarget.cpp";
    v11[1] = "DeleteAttachment";
    v11[2] = 179;
    v11[3] = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::DeleteAttachment(const std::string &)";
    v12 = 0;
    std::operator+<char>();
    v6 = std::string::append(&v8, " does not exist for this DrawTarget");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = v4;
    sub_29A03AFE8(Attachments, v4);
    sub_29AB7DDD0((v5 + 4));

    operator delete(v5);
  }
}

void sub_29AB7C274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::GetAttachment@<X0>(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  Attachments = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(a1);
  result = sub_29A01BCCC(Attachments, a2);
  if (Attachments + 8 == result)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = *(result + 56);

    return sub_29B293C98(a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::CloneAttachments(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B2C26A4(a2);
  if (!(v4 & 1 | v3))
  {
    v5[0] = "glf/drawTarget.cpp";
    v5[1] = "CloneAttachments";
    v5[2] = 206;
    v5[3] = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::CloneAttachments(const GlfDrawTargetPtr &)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Cannot clone TfNullPtr attachments.");
  }

  sub_29AB7B5C4(a2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::GlfDrawTarget::SetSize(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **this, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a2)
{
  v3 = this;
  if (*(this + 44) != a2)
  {
    if (*(this + 10) <= 0)
    {
      v10[0] = "glf/drawTarget.cpp";
      v10[1] = "SetSize";
      v10[2] = 241;
      v10[3] = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::SetSize(GfVec2i)";
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Cannot change the size of an unbound DrawTarget");
    }

    *(v3 + 44) = a2;
    this = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(v3);
    v4 = this + 1;
    v5 = *this;
    if (*this != (this + 1))
    {
      do
      {
        v10[0] = *(v5 + 7);
        sub_29B293C98(v10);
        v6 = sub_29AB7C0D4(v10);
        *(v6 + 76) = *(v3 + 44);
        pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture(v6);
        pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture(v6);
        pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_BindAttachment(v3, v10);
        this = sub_29AB7DED0(v10);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v4);
    }
  }

  return this;
}

void sub_29AB7C560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB7DED0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::ResizeTexture(uint64_t a1, void *a2)
{
  *(a1 + 76) = *a2;
  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture(a1);

  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_SaveBindingState(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, this + 32);
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv;

  return v2(36006, this + 36);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_RestoreBindingState(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 8));
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer;
  v3 = *(this + 9);

  return v2(36009, v3);
}

void *pxrInternal__aapl__pxrReserved__::GlfDrawTarget::TouchContents(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  result = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(this);
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      v4 = sub_29AB7C0D4(v3 + 7);
      result = pxrInternal__aapl__pxrReserved__::GlfTexture::_UpdateContentsID(v4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_Resolve(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 7));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(this + 6));
  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlitFramebuffer(0, 0, *(this + 11), *(this + 12), 0, 0, *(this + 11), *(this + 12), 0x260000004500);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Resolve(pxrInternal__aapl__pxrReserved__::GlfDrawTarget *this)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v2, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Resolve()");
  if (*(this + 13) >= 2u)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, this + 32);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, this + 36);
    pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_Resolve(this);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 8));
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(this + 9));
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v2);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Resolve(pxrInternal__aapl__pxrReserved__::GlfDrawTarget ***a1)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v8, "static void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Resolve(const std::vector<GlfDrawTarget *> &)");
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = 0;
    do
    {
      while (1)
      {
        v5 = *v2;
        if (*(*v2 + 13) < 2u)
        {
          break;
        }

        if ((v4 & 1) == 0)
        {
          v6 = **a1;
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, v6 + 32);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, v6 + 36);
        }

        pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_Resolve(v5);
        ++v2;
        v4 = 1;
        if (v2 == v3)
        {
          goto LABEL_11;
        }
      }

      ++v2;
    }

    while (v2 != v3);
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v7 = **a1;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(v7 + 8));
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(v7 + 9));
  }

LABEL_12:
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v8);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::IsValid(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    pxrInternal__aapl__pxrReserved__::GlfCheckGLFrameBufferStatus(36160, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_Validate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    pxrInternal__aapl__pxrReserved__::GlfCheckGLFrameBufferStatus(36160, a2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfDrawTarget::WriteToFile(_DWORD *a1, const void **a2, uint64_t a3, __int128 *a4, double *a5)
{
  Attachments = pxrInternal__aapl__pxrReserved__::GlfDrawTarget::_GetAttachments(a1);
  v11 = sub_29A01BCCC(Attachments, a2);
  if (Attachments + 8 == v11)
  {
    *&v92 = "glf/drawTarget.cpp";
    *(&v92 + 1) = "WriteToFile";
    *&v93 = 525;
    *(&v93 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::GlfDrawTarget::WriteToFile(const std::string &, const std::string &, const GfMatrix4d &, const GfMatrix4d &)";
    LOBYTE(v94) = 0;
    std::operator+<char>();
    v25 = std::string::append(v77, " is not a valid variable name for this DrawTarget");
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&v85 = *(&v25->__r_.__value_.__l + 2);
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v92, 1, __p);
    if (SBYTE7(v85) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    return 0;
  }

  if (!a1[6])
  {
    *&v92 = "glf/drawTarget.cpp";
    *(&v92 + 1) = "WriteToFile";
    *&v93 = 532;
    *(&v93 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::GlfDrawTarget::WriteToFile(const std::string &, const std::string &, const GfMatrix4d &, const GfMatrix4d &)";
    LOBYTE(v94) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v92, 1, "DrawTarget has no framebuffer");
    return 0;
  }

  v12 = v11;
  v65 = a5;
  v13 = sub_29AB7C0D4((v11 + 56));
  NumElements = pxrInternal__aapl__pxrReserved__::GlfGetNumElements(*(v13 + 60));
  v15 = sub_29AB7C0D4((v12 + 56));
  v16 = a1[12] * (pxrInternal__aapl__pxrReserved__::GlfGetElementSize(*(v15 + 64)) * NumElements * a1[11]);
  v66 = operator new[](v16);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushClientAttrib(1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3330, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3333, 1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3332, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3331, 0);
  LODWORD(v92) = 0;
  LODWORD(__p[0]) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32873, &v92);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34016, __p);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
  v17 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture;
  v18 = sub_29AB7C0D4((v12 + 56));
  v19 = (*(*v18 + 24))(v18);
  v17(3553, v19);
  v20 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTexImage;
  v21 = *(sub_29AB7C0D4((v12 + 56)) + 60);
  v22 = sub_29AB7C0D4((v12 + 56));
  (v20)(3553, 0, v21, *(v22 + 64), v66);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(LODWORD(__p[0]));
  v23 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, v92);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopClientAttrib(v23);
  v101[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a3, 46, &v100);
  v24 = *(a2 + 23);
  if (v24 < 0)
  {
    if (a2[1] != 5)
    {
      goto LABEL_18;
    }

    a2 = *a2;
LABEL_14:
    if (*a2 != 1953523044 || *(a2 + 4) != 104)
    {
      goto LABEL_18;
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v100.__r_.__value_.__l.__size_ != 5)
      {
        goto LABEL_18;
      }

      v35 = v100.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_18;
      }

      v35 = &v100;
    }

    data = v35->__r_.__value_.__l.__data_;
    v37 = v35->__r_.__value_.__s.__data_[4];
    if (data == 1818846842 && v37 == 101)
    {
      if (v16 >= 4)
      {
        v39 = v16 >> 2;
        v40 = v65[10];
        if (v16 >> 2 <= 1)
        {
          v39 = 1;
        }

        v41 = v66;
        do
        {
          v42 = (*v41 * -2.0) / v40;
          *v41++ = v42;
          --v39;
        }

        while (v39);
      }

      v43 = a4[5];
      v44 = a4[3];
      v96 = a4[4];
      v97 = v43;
      v45 = a4[5];
      v46 = a4[7];
      v98 = a4[6];
      v99 = v46;
      v47 = a4[1];
      v92 = *a4;
      v93 = v47;
      v48 = a4[3];
      v50 = *a4;
      v49 = a4[1];
      v94 = a4[2];
      v95 = v48;
      v88 = v96;
      v89 = v45;
      v51 = a4[7];
      v90 = v98;
      v91 = v51;
      *__p = v50;
      v85 = v49;
      v86 = v94;
      v87 = v44;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(__p, v65);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      memset(v77, 0, sizeof(v77));
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *v69 = 0u;
      v70 = 0u;
      __asm { FMOV            V0.2D, #1.0 }

      v67 = _Q0;
      v68 = 0xBFF0000000000000;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(v69, &v67);
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[3];
      v78 = v56[2];
      v79 = v59;
      *v77 = v57;
      *&v77[16] = v58;
      v60 = v56[4];
      v61 = v56[5];
      v62 = v56[7];
      v82 = v56[6];
      v83 = v62;
      v80 = v60;
      v81 = v61;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v92, v77);
      sub_29A008E78(v69, "Nl");
      v63 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](v101, v69);
      sub_29A3FC3C4(v63, &v92);
      if (SBYTE7(v70) < 0)
      {
        operator delete(v69[0]);
      }

      sub_29A008E78(v69, "NP");
      v64 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](v101, v69);
      sub_29A3FC3C4(v64, __p);
      if (SBYTE7(v70) < 0)
      {
        operator delete(v69[0]);
      }
    }

    goto LABEL_18;
  }

  if (v24 == 5)
  {
    goto LABEL_14;
  }

LABEL_18:
  v29 = *(sub_29AB7C0D4((v12 + 56)) + 68);
  LOBYTE(v85) = 0;
  *(&v85 + 1) = 0;
  __p[0] = *(a1 + 11);
  __p[1] = 0xFFFFFFFF00000000;
  v30 = *(sub_29AB7C0D4((v12 + 56)) + 60);
  v31 = sub_29AB7C0D4((v12 + 56));
  HIDWORD(__p[1]) = pxrInternal__aapl__pxrReserved__::GlfGetHioFormat(v30, *(v31 + 64), (v29 & 0xFFFFFFFD) == 35905);
  LOBYTE(v85) = 1;
  *(&v85 + 1) = v66;
  pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(a3, v77);
  if (*v77 && ((*(**v77 + 32))(*v77, __p, v101) & 1) != 0)
  {
    if (*&v77[8])
    {
      sub_29A014BEC(*&v77[8]);
    }

    v32 = sub_29A008E78(&v92, "BOOL pxrInternal__aapl__pxrReserved__::GlfDrawTarget::WriteToFile(const std::string &, const std::string &, const GfMatrix4d &, const GfMatrix4d &)");
    pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(v32);
    if (SBYTE7(v93) < 0)
    {
      operator delete(v92);
    }

    v27 = 1;
  }

  else
  {
    *&v92 = "glf/drawTarget.cpp";
    *(&v92 + 1) = "WriteToFile";
    *&v93 = 610;
    *(&v93 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::GlfDrawTarget::WriteToFile(const std::string &, const std::string &, const GfMatrix4d &, const GfMatrix4d &)";
    LOBYTE(v94) = 0;
    if (*(a3 + 23) >= 0)
    {
      v33 = a3;
    }

    else
    {
      v33 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v92, 3, "Failed to write image to %s", v33);
    if (*&v77[8])
    {
      sub_29A014BEC(*&v77[8]);
    }

    v27 = 0;
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  sub_29A184A10(v101, 0);
  operator delete[](v66);
  return v27;
}

void sub_29AB7CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 - 97) < 0)
  {
    operator delete(*(v60 - 120));
  }

  sub_29A184A10((v60 - 96), 0);
  operator delete[](__p);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::GlfTexture *pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::Attachment(pxrInternal__aapl__pxrReserved__::GlfTexture *a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  pxrInternal__aapl__pxrReserved__::GlfTexture::GlfTexture(a1);
  *v14 = &unk_2A2072620;
  *(v14 + 52) = 0;
  *(v14 + 56) = 0;
  *(v14 + 60) = a3;
  *(v14 + 64) = a4;
  *(v14 + 68) = a5;
  *(v14 + 72) = a2;
  *(v14 + 76) = a6;
  *(v14 + 84) = a7;
  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture(v14);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture(pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment *this)
{
  sub_29A0ECEEC(&v15, "glf", "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture()");
  v3 = *(this + 15);
  v2 = *(this + 16);
  if (v3 == 6402)
  {
    v4 = 5126;
    if (v2 == 5126)
    {
      v5 = 36012;
      v6 = 1;
LABEL_10:
      v7 = 1;
      goto LABEL_13;
    }

    __p[0] = "glf/drawTarget.cpp";
    __p[1] = "_GenTexture";
    v12 = 668;
    v13 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture()";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Only GL_FLOAT textures can be used for the depth attachment point");
    v3 = *(this + 15);
    v2 = *(this + 16);
    v5 = 36012;
  }

  else
  {
    v5 = *(this + 17);
    v4 = *(this + 16);
  }

  v6 = v2 == 5126;
  switch(v3)
  {
    case 33319:
      v7 = 2;
      break;
    case 6408:
      v7 = 4;
      break;
    case 6407:
      v7 = 3;
      break;
    default:
      goto LABEL_10;
  }

LABEL_13:
  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v7 << v8) * *(this + 19) * *(this + 20);
  if (*(this + 21) < 2u)
  {
    v10 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTextures(1, this + 56);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(37120, *(this + 14));
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10241, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10240, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10242, 33071);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10243, 33071);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2DMultisample(37120, *(this + 21), *(this + 17), *(this + 19), *(this + 20), 1);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(37120, 0);
    v10 = *(this + 21) * v9;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTextures(1, this + 52);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, *(this + 13));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10241, 9729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10240, 9729);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10242, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexParameteri(3553, 10243, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2D(3553, 0, v5, *(this + 19), *(this + 20), 0, *(this + 15), v4, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, 0);
  pxrInternal__aapl__pxrReserved__::GlfTexture::_SetMemoryUsed(this, v10 + v9);
  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_GenTexture()");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::~Attachment(pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment *this)
{
  *this = &unk_2A2072620;
  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture(this);

  pxrInternal__aapl__pxrReserved__::GlfTexture::~GlfTexture(this, v2);
}

{
  pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::~Attachment(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture(pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment *this)
{
  v2 = (this + 52);
  if (*(this + 13))
  {
    sub_29AB7AF98(v16);
    if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTexture(*v2))
    {
      __p = "glf/drawTarget.cpp";
      v12 = "_DeleteTexture";
      v13 = 747;
      v14 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture()";
      v15 = 0;
      v9 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Tried to delete an invalid texture", v3, v4);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "glIsTexture(_textureName)", v9);
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, v2);
    *v2 = 0;
    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v16);
  }

  v6 = *(this + 14);
  v5 = (this + 56);
  if (v6)
  {
    sub_29AB7AF98(v16);
    if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTexture(*v5))
    {
      __p = "glf/drawTarget.cpp";
      v12 = "_DeleteTexture";
      v13 = 755;
      v14 = "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture()";
      v15 = 0;
      v10 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Tried to delete an invalid texture", v7, v8);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "glIsTexture(_textureNameMS)", v10);
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, v5);
    *v5 = 0;
    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v16);
  }

  sub_29A008E78(&__p, "void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::_DeleteTexture()");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(&__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void *pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::GetBindings@<X0>(pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::GlfTextureTokens);
  if (!v8)
  {
    v8 = sub_29AB7E0A4(&pxrInternal__aapl__pxrReserved__::GlfTextureTokens);
  }

  v9 = *v8;
  if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = (*(*this + 24))(this);
  v12 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFF8;
  }

  v14 = 3553;
  v15 = v10;
  v16 = a3;
  result = sub_29AB7E130(a4, 1uLL, &v12);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AB7D834(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment::GetTextureInfo(pxrInternal__aapl__pxrReserved__::GlfDrawTarget::Attachment *this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 19);
  sub_29A008E78(__p, "width");
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v6 = v5;
  v7 = v5[1];
  if (v7)
  {
    v8 = (v5[1] & 3) == 3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    (*((v7 & 0xFFFFFFFFFFFFFFF8) + 32))(v5);
  }

  v6[1] = &unk_2A204475B;
  *v6 = v4;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(this + 20);
  sub_29A008E78(__p, "height");
  v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v11 = v10;
  v12 = v10[1];
  if (v12 && (v10[1] & 3) != 3)
  {
    (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32))(v10);
  }

  v11[1] = &unk_2A204475B;
  *v11 = v9;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  MemoryUsed = pxrInternal__aapl__pxrReserved__::GlfTexture::GetMemoryUsed(this);
  sub_29A008E78(__p, "memoryUsed");
  v14 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v15 = v14;
  v16 = v14[1];
  if (v16 && (v14[1] & 3) != 3)
  {
    (*((v16 & 0xFFFFFFFFFFFFFFF8) + 32))(v14);
  }

  *v15 = MemoryUsed;
  v15[1] = &unk_2A2044983;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "depth");
  v17 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v18 = v17;
  v19 = v17[1];
  if (v19 && (v17[1] & 3) != 3)
  {
    (*((v19 & 0xFFFFFFFFFFFFFFF8) + 32))(v17);
  }

  v18[1] = &unk_2A204475B;
  *v18 = 1;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *(this + 17);
  sub_29A008E78(__p, "format");
  v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v22 = v21;
  v23 = v21[1];
  if (v23 && (v21[1] & 3) != 3)
  {
    (*((v23 & 0xFFFFFFFFFFFFFFF8) + 32))(v21);
  }

  v22[1] = &unk_2A204475B;
  *v22 = v20;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v34, "DrawTarget");
  sub_29A008E78(__p, "imageFilePath");
  v24 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  sub_29A3FA870(v24, &v34);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 2);
  if (v25 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = -v25;
  }

  sub_29A008E78(__p, "referenceCount");
  v27 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v28 = v27;
  v29 = v27[1];
  if (v29 && (v27[1] & 3) != 3)
  {
    (*((v29 & 0xFFFFFFFFFFFFFFF8) + 32))(v27);
  }

  *v28 = v26;
  v28[1] = &unk_2A2044983;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = *(this + 21);
  sub_29A008E78(__p, "numSamples");
  v31 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, __p);
  v32 = v31;
  v33 = v31[1];
  if (v33 && (v31[1] & 3) != 3)
  {
    (*((v33 & 0xFFFFFFFFFFFFFFF8) + 32))(v31);
  }

  v32[1] = &unk_2A2044813;
  *v32 = v30;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB7DCA8(uint64_t a1)
{
  *a1 = &unk_2A20726C0;
  sub_29AB7DD74(a1 + 24, *(a1 + 32));
  sub_29A0F6078((a1 + 16), v2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

void sub_29AB7DD0C(uint64_t a1)
{
  *a1 = &unk_2A20726C0;
  sub_29AB7DD74(a1 + 24, *(a1 + 32));
  sub_29A0F6078((a1 + 16), v2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

void sub_29AB7DD74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AB7DD74(a1, *a2);
    sub_29AB7DD74(a1, a2[1]);
    sub_29AB7DDD0((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AB7DDD0(uint64_t a1)
{
  sub_29AB7DED0((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_29AB7DE20(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = *a3;
  sub_29B293C98(__dst + 3);
  return __dst;
}

void sub_29AB7DE84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AB7DF00(uint64_t **a1, const void **a2, __int128 *a3)
{
  v5 = sub_29A00B0D0(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29AB7DF80(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *sub_29AB7DF80@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29AB7DFEC(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AB7DFEC(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = *(a2 + 3);
  *(a2 + 3) = 0;
  return __dst;
}

void sub_29AB7E048(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AB7DDD0(v2 + 32);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType *sub_29AB7E0A4(atomic_ullong *a1)
{
  result = sub_29AB7E0EC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType::~GlfTextureTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType *sub_29AB7E0EC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType::GlfTextureTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AB7E130(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A15A71C(a1, a2);
    v6 = a1[1];
    v7 = v6 + 32 * a2;
    v8 = 32 * a2;
    do
    {
      sub_29AB7E1D0(a1, v6, a3);
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29AB7E1D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  *(a2 + 8) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a3[2];
  *(a2 + 24) = *(a3 + 6);
  *(a2 + 16) = v5;
}

void sub_29AB7E23C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB7E290(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AB7E290(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 32)
  {
    v3 = *(i - 24);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(i - 32);
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(result + 8) = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfGLContext::~GlfGLContext(pxrInternal__aapl__pxrReserved__::GlfGLContext *this)
{
  *this = &unk_2A2072718;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::Remove(v2, this);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContext::GetCurrentGLContext(unint64_t *a1@<X8>)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GetCurrent(v2, a1);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContext::GetSharedGLContext(char **a1@<X8>)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GetShared(v2, a1);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(unint64_t *a1)
{
  v2 = *a1;
  if (v2 && (v2 = (*(*v2 + 16))(v2), v2))
  {
    (*(**a1 + 32))();
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::DidMakeCurrent(v3, a1);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::DoneCurrent(v2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLContext::AreSharing(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::GlfGLContext::IsSharing(result, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLContext::IsSharing(uint64_t a1, uint64_t a2)
{
  if (!*a2 || !(*(*a1 + 16))(a1) || !(*(**a2 + 16))())
  {
    return 0;
  }

  v4 = *(*a1 + 40);

  return v4(a1, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::GlfGLContext::IsInitialized(pxrInternal__aapl__pxrReserved__::GlfGLContext *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::IsInitialized(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLContext::IsCurrent(pxrInternal__aapl__pxrReserved__::GlfGLContext *this)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContext::GetCurrentGLContext(&v4);
  v2 = (*(*this + 48))(this, &v4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return v2;
}

void sub_29AB7E698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(pxrInternal__aapl__pxrReserved__::GlfGLContext *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    v3 = *(*this + 32);

    return v3(this);
  }

  return result;
}

unint64_t *pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::GlfGLContextScopeHolder(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  a1[2] = 0;
  a1[3] = 0;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::GlfGLContext::GetCurrentGLContext(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = a1[3];
    *(a1 + 1) = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (*(&v8 + 1))
      {
        sub_29A014BEC(*(&v8 + 1));
      }
    }

    if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(a1);
    }
  }

  return a1;
}

void sub_29AB7E7C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::_MakeNewContextCurrent(unint64_t *this)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(this);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder *this)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(this + 2);
  }

  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::_RestoreOldContext(pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder *this)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(this + 2);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfGLRawContext::New(void *a1@<X8>)
{
  v3 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(&v6);
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(v3);
  v5 = v6;
  v4 = v7;
  *v3 = &unk_2A2072770;
  v3[1] = v5;
  v3[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AB7EBC8(a1, v3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void *pxrInternal__aapl__pxrReserved__::GlfGLRawContext::GlfGLRawContext(pxrInternal__aapl__pxrReserved__::GlfGLRawContext *this, const pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *a2)
{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(this);
  v5 = *a2;
  v4 = *(a2 + 1);
  *result = &unk_2A2072770;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(this);
  v5 = *a2;
  v4 = *(a2 + 1);
  *result = &unk_2A2072770;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::GlfGLRawContext::New@<X0>(pxrInternal__aapl__pxrReserved__::GlfGLRawContext *this@<X0>, void *a2@<X8>)
{
  v5 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(v5);
  v7 = *this;
  v6 = *(this + 1);
  *v5 = &unk_2A2072770;
  v5[1] = v7;
  v5[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AB7EBC8(a2, v5);
}

void pxrInternal__aapl__pxrReserved__::GlfGLRawContext::~GlfGLRawContext(pxrInternal__aapl__pxrReserved__::GlfGLRawContext *this)
{
  *this = &unk_2A2072770;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContext::~GlfGLContext(this);
}

{
  pxrInternal__aapl__pxrReserved__::GlfGLRawContext::~GlfGLRawContext(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::GlfGLRawContext::_IsEqual(uint64_t a1, const void **a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::operator==((a1 + 8), v3 + 1);
}

void *sub_29AB7EBC8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20727D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AB7EC20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C293C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB7EC3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AB7EC64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AB7EC94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2072820))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GlfHasExtensions(unsigned __int8 *a1)
{
  if ((atomic_load_explicit(&qword_2A17486F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17486F0))
  {
    sub_29AB7EDE0();
    __cxa_atexit(sub_29AA7B2BC, &qword_2A17486D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17486F0);
  }

  pxrInternal__aapl__pxrReserved__::TfStringTokenize(a1, " \t\n", &v8);
  v2 = v8;
  v3 = v9;
  if (v8 == v9)
  {
    v5 = 1;
  }

  else
  {
    do
    {
      v4 = sub_29A00AF58(&qword_2A17486D8, v2);
      v5 = v4 != 0;
      v2 += 3;
      if (v4)
      {
        v6 = v2 == v3;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  v10 = &v8;
  sub_29A012C90(&v10);
  return v5;
}

void sub_29AB7EDE0()
{
  sub_29AB7AF98(v7);
  qword_2A17486E8 = 0;
  qword_2A17486E0 = 0;
  qword_2A17486D8 = &qword_2A17486E0;
  String = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7939);
  if (String)
  {
    sub_29A008E78(__p, String);
    pxrInternal__aapl__pxrReserved__::TfStringTokenize(__p, " \t\n", &v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    v1 = v5;
    for (i = v6; v1 != i; v1 += 3)
    {
      sub_29A095658(&qword_2A17486D8, v1, v1);
    }

    __p[0] = &v5;
    sub_29A012C90(__p);
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v7);
}

void sub_29AB7EEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A019EE8(v18, *(v18 + 8));
  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(&a18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(uint64_t a1, uint64_t a2)
{
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = xmmword_29B6C5D10;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = _Q1;
  v8 = *(a2 + 8);
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  *(a1 + 60) = xmmword_29B6C5D20;
  *(a1 + 76) = 1127481344;
  *(a1 + 84) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 97) = 1;
  *(a1 + 100) = 512;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v18, 1.0);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  *(a1 + 120) = *v9;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 136) = v12;
  v13 = v9[6];
  v14 = v9[7];
  v15 = v9[5];
  *(a1 + 184) = v9[4];
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v15;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v18, 1.0);
  sub_29A79C4E8((a1 + 248), 1uLL, v16);
  *(a1 + 272) = 0;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 280));
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 328) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 400));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 404));
  return a1;
}

void sub_29AB7F054(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 248);
  if (v3)
  {
    *(v1 + 256) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 101);
  sub_29A1DE3A4(this + 100);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetTransform(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  *(this + 168) = *(a2 + 3);
  *(this + 152) = v4;
  *(this + 136) = v3;
  *(this + 120) = v2;
  result = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  *(this + 232) = *(a2 + 7);
  *(this + 216) = v7;
  *(this + 200) = v6;
  *(this + 184) = result;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAmbient(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDiffuse(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1] = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpecular(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[2] = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetPosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[3] = *a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotDirection(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 72) = *(a2 + 2);
  *(result + 64) = v2;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotCutoff(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this, float *a2)
{
  result = *a2;
  *(this + 19) = *a2;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotFalloff(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this, float *a2)
{
  result = *a2;
  *(this + 20) = *a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAttenuation(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 92) = *(a2 + 2);
  *(result + 84) = v2;
  return result;
}

char **pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetShadowMatrices(uint64_t a1, char **a2)
{
  result = (a1 + 248);
  if (result != a2)
  {
    return sub_29AB7F8A0(result, *a2, a2[1], (a2[1] - *a2) >> 7);
  }

  return result;
}

int *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetID(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 100, a2);

  return sub_29A225948(this + 101, a2 + 1);
}

std::string *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDomeLightTextureFile(pxrInternal__aapl__pxrReserved__::GlfSimpleLight *this, const std::string *a2)
{
  std::string::operator=((this + 280), a2);

  return std::string::operator=((this + 304), a2 + 1);
}

__int128 *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetPostSurfaceParams(uint64_t a1, void *a2, const std::string *a3, __int128 *a4)
{
  sub_29A166F2C((a1 + 328), a2);
  std::string::operator=((a1 + 336), a3);

  return sub_29A4AB3CC((a1 + 360), a4);
}

BOOL pxrInternal__aapl__pxrReserved__::GlfSimpleLight::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || *(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76) || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 84) != *(a2 + 84) || *(a1 + 88) != *(a2 + 88) || *(a1 + 92) != *(a2 + 92) || *(a1 + 97) != *(a2 + 97) || *(a1 + 98) != *(a2 + 98) || *(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 108) != *(a2 + 108) || *(a1 + 112) != *(a2 + 112) || *(a1 + 116) != *(a2 + 116))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==((a1 + 120), (a2 + 120));
  if (result)
  {
    result = sub_29AB7F6C4((a1 + 248), a2 + 248);
    if (result)
    {
      if (*(a1 + 96) == *(a2 + 96) && *(a1 + 272) == *(a2 + 272))
      {
        pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==();
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_29AB7F6C4(double **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

void *sub_29AB7F8A0(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 7)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 7)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 57)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 6;
    if (v8 >> 6 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF80)
    {
      v11 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A79C588(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::New@<X0>(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext **a1@<X8>)
{
  v3 = operator new(0x1C8uLL);
  result = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GlfSimpleLightingContext(v3);
  *a1 = v3;
  return result;
}

pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GlfSimpleLightingContext(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 2) = 1;
  *this = &unk_2A2072848;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v2 = operator new(0xA0uLL);
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GlfSimpleShadowArray(v2);
  *(this + 6) = v2;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(this + 56, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(this + 184, 1.0);
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial((this + 312));
  *(this + 24) = xmmword_29B6C5D40;
  *(this + 200) = 0;
  *(this + 402) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 436) = 0u;
  return this;
}

void sub_29AB7FADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = v12;
  operator delete(v13);
  sub_29AB81EE0(&a10);
  sub_29A0F6078(v11, v15);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::~GlfSimpleLightingContext(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  *this = &unk_2A2072848;
  v1 = *(this + 55);
  *(this + 55) = 0;
  if (v1)
  {
    sub_29AB82B78(this + 440, v1);
  }

  sub_29AB81F64();
}

{
  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::~GlfSimpleLightingContext(this);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetLights(uint64_t a1, __int128 **a2)
{
  v3 = (a1 + 24);
  if ((a1 + 24) != a2)
  {
    sub_29AB81F94(a1 + 24, *a2, a2[1], 0xFAFAFAFAFAFAFAFBLL * ((a2[1] - *a2) >> 3));
  }

  *(a1 + 448) = 0;
  *(a1 + 451) = 0;
  v4 = 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
  *(a1 + 401) = 0;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    while (!pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow((*v3 + v5)))
    {
      v5 += 408;
      if (!--v6)
      {
        return;
      }
    }

    *(a1 + 401) = 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow(v1) && v3 <= pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexEnd(v1))
    {
      v3 = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexEnd(v1) + 1;
    }

    v1 = (v1 + 408);
  }

  while (v1 != v2);
  return v3;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetShadows(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 48;
  v3 = *(a1 + 48);
  *(a1 + 48) = *a2;
  sub_29B293C98(a2);
  sub_29B290B2C(v2, v3);
  *(v2 + 401) = 0;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetMaterial(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this, __n128 *a2)
{
  v4 = (this + 312);
  if (pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::operator!=(this + 312, a2))
  {
    *v4 = *a2;
    result = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v4[4].n128_u64[0] = a2[4].n128_u64[0];
    v4[2] = v6;
    v4[3] = v7;
    v4[1] = result;
    *(this + 450) = 0;
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetSceneAmbient(__n128 *a1, __n128 *a2)
{
  if (a1[24].n128_f32[0] != a2->n128_f32[0] || a1[24].n128_f32[1] != a2->n128_f32[1] || a1[24].n128_f32[2] != a2->n128_f32[2] || (result.n128_u32[0] = a1[24].n128_u32[3], result.n128_f32[0] != a2->n128_f32[3]))
  {
    result = *a2;
    a1[24] = *a2;
    a1[28].n128_u8[2] = 0;
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetCamera(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  if (!pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(this + 7, a2))
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    *(this + 104) = *(a2 + 3);
    *(this + 88) = v8;
    *(this + 72) = v7;
    *(this + 56) = v6;
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 6);
    *(this + 168) = *(a2 + 7);
    *(this + 152) = v11;
    *(this + 136) = v10;
    *(this + 120) = v9;
    *(this + 224) = 0;
  }

  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  *(this + 232) = *(a3 + 3);
  *(this + 216) = v14;
  *(this + 200) = v13;
  *(this + 184) = v12;
  result = *(a3 + 4);
  v16 = *(a3 + 5);
  v17 = *(a3 + 7);
  *(this + 280) = *(a3 + 6);
  *(this + 296) = v17;
  *(this + 264) = v16;
  *(this + 248) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetUseLighting(uint64_t this, int a2)
{
  if (*(this + 400) != a2)
  {
    *(this + 400) = a2;
    *(this + 448) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetUseColorMaterialDiffuse(uint64_t this, int a2)
{
  if (*(this + 402) != a2)
  {
    *(this + 448) = 0;
    *(this + 402) = a2;
  }

  return this;
}

void sub_29AB80018(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C2960();
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::InitSamplerUnitBindings(uint64_t a1, uint64_t a2)
{
  v3 = sub_29AB80170((a1 + 48));
  result = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v3);
  if (result)
  {
    sub_29AB80018(a2);
  }

  return result;
}

void sub_29AB80154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB80170(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::BindUniformBlocks(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v82, "void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::BindUniformBlocks(const GlfBindingMapPtr &)");
  if (!*(a1 + 408))
  {
    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::New("_lightingUniformBlock", &v74);
    *(a1 + 408) = v74;
    *&v74 = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::GlfUniformBlock>::_RemoveRef();
  }

  if (!*(a1 + 416))
  {
    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::New("_shadowUniformBlock", &v74);
    *(a1 + 416) = v74;
    *&v74 = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::GlfUniformBlock>::_RemoveRef();
  }

  if (!*(a1 + 424))
  {
    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::New("_materialUniformBlock", &v74);
    *(a1 + 424) = v74;
    *&v74 = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::GlfUniformBlock>::_RemoveRef();
  }

  if (*(a1 + 448) == 1 && (*(a1 + 449) & 1) != 0 || (v5 = *(a1 + 24), v4 = *(a1 + 32), v6 = v4 - v5, v4 == v5))
  {
    v18 = 0;
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(a1);
    v8 = 0xFAFAFAFAFAFAFAFBLL * (v6 >> 3);
    v10 = MEMORY[0x2A1C7C4A8](v7, 144 * v7, v9);
    v12 = (&v57 - v11);
    v15 = MEMORY[0x2A1C7C4A8](v10, v13, v14);
    v64 = &v57 - v15 * v16;
    v57 = v17;
    bzero(v64, v17);
    bzero(v12, (192 * v8) | 0x10);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse((a1 + 56), 0, 0.0, &v74);
    v58 = (192 * v8) | 0x10;
    v59 = a2;
    v18 = 0;
    v19 = *(a1 + 400);
    v20 = *(a1 + 402);
    *v12 = v19;
    v12[1] = v20;
    v60 = v12;
    if (v19 == 1 && v8 >= 1)
    {
      v21 = 0;
      v18 = 0;
      v22 = v60 + 16;
      v63 = v8 & 0x7FFFFFFF;
      v23 = v60 + 128;
      v61 = v60 + 16;
      do
      {
        v24 = (*(a1 + 24) + 408 * v21);
        Position = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPosition(v24);
        v26 = &v22[192 * v21];
        *v26 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*(a1 + 56), *Position), vmulq_n_f64(*(a1 + 88), Position[1])), vmulq_n_f64(*(a1 + 120), Position[2])), vmulq_n_f64(*(a1 + 152), Position[3]))), vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*(a1 + 72), *Position), vmulq_n_f64(*(a1 + 104), Position[1])), vmulq_n_f64(*(a1 + 136), Position[2])), vmulq_n_f64(*(a1 + 168), Position[3])));
        Diffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetDiffuse(v24);
        v26[2].i32[0] = *Diffuse;
        v26[2].i32[1] = Diffuse[1];
        v26[2].i32[2] = Diffuse[2];
        v26[2].i32[3] = Diffuse[3];
        Ambient = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAmbient(v24);
        v26[1].i32[0] = *Ambient;
        v26[1].i32[1] = Ambient[1];
        v26[1].i32[2] = Ambient[2];
        v26[1].i32[3] = Ambient[3];
        Specular = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpecular(v24);
        v26[3].i32[0] = *Specular;
        v26[3].i32[1] = Specular[1];
        v26[3].i32[2] = Specular[2];
        v26[3].i32[3] = Specular[3];
        SpotDirection = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotDirection(v24);
        v26[4].i32[0] = sub_29A144F00((a1 + 56), SpotDirection).u32[0];
        v26[4].i32[1] = v31;
        v26[4].i32[2] = v32;
        Attenuation = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAttenuation(v24);
        v26[6].i32[0] = *Attenuation;
        v26[6].i32[1] = Attenuation[1];
        v26[6].i32[2] = Attenuation[2];
        v26[5].i32[0] = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotCutoff(v24);
        v26[5].i32[1] = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotFalloff(v24);
        Transform = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetTransform(v24);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(Transform, 0, 0.0, &v66);
        for (i = 0; i != 4; ++i)
        {
          *&v23[16 * i] = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v66 + 2 * i)), *(&v66 + 2 * i + 1));
        }

        v26[11].i32[2] = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow(v24);
        v26[11].i32[3] = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight(v24);
        if (v26[11].i32[2])
        {
          ShadowIndexStart = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexStart(v24);
          v26[11].i32[0] = ShadowIndexStart;
          ShadowIndexEnd = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexEnd(v24);
          v26[11].i32[1] = ShadowIndexEnd;
          if (ShadowIndexStart <= ShadowIndexEnd)
          {
            v62 = v21;
            v38 = ShadowIndexStart;
            v39 = ShadowIndexEnd + 1;
            v40 = &v64[144 * ShadowIndexStart];
            do
            {
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v41 = sub_29AB80170((a1 + 48));
              pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetWorldToShadowMatrix(v41, v38, v65);
              v70 = v78;
              v71 = v79;
              v72 = v80;
              v73 = v81;
              v66 = v74;
              v67 = v75;
              v68 = v76;
              v69 = v77;
              pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v66, v65);
              memset(v65, 0, sizeof(v65));
              pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v66, 0, 0.0, v65);
              ShadowBias = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBias(v24);
              v43 = &v64[144 * v38];
              v43[33] = ShadowBias;
              ShadowBlur = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBlur(v24);
              v45 = 0;
              v43[32] = ShadowBlur;
              do
              {
                *&v40[16 * v45] = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v66 + 2 * v45)), *(&v66 + 2 * v45 + 1));
                ++v45;
              }

              while (v45 != 4);
              for (j = 0; j != 4; ++j)
              {
                *&v40[16 * j + 64] = vcvt_hight_f32_f64(vcvt_f32_f64(v65[2 * j]), v65[2 * j + 1]);
              }

              ++v38;
              v40 += 144;
            }

            while (v39 != v38);
            v18 = 1;
            v22 = v61;
            v21 = v62;
          }

          else
          {
            v18 = 1;
          }
        }

        if (*(a1 + 400) != 1)
        {
          break;
        }

        ++v21;
        v23 += 192;
      }

      while (v21 < v63);
    }

    v47 = sub_29AB809F4((a1 + 408));
    a2 = v59;
    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Update(v47, v60, v58);
    *(a1 + 448) = 1;
    if (v18)
    {
      v48 = sub_29AB809F4((a1 + 416));
      pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Update(v48, v64, v57);
      *(a1 + 449) = 1;
    }
  }

  v49 = sub_29AB809F4((a1 + 408));
  v50 = atomic_load(&qword_2A17486F8);
  if (!v50)
  {
    v50 = sub_29AB8254C();
  }

  if ((*v50 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v50);
  }

  pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Bind(v49, a2);
  if (v18)
  {
    v51 = sub_29AB809F4((a1 + 416));
    v52 = atomic_load(&qword_2A17486F8);
    if (!v52)
    {
      v52 = sub_29AB8254C();
    }

    if ((*(v52 + 1) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v52);
    }

    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Bind(v51, a2);
  }

  if ((*(a1 + 450) & 1) == 0)
  {
    v78 = 0u;
    v79 = 0u;
    v74 = *pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetAmbient((a1 + 312));
    v75 = *pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetDiffuse((a1 + 312));
    v76 = *pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetSpecular((a1 + 312));
    v77 = *pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetEmission((a1 + 312));
    Shininess = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetShininess((a1 + 312));
    *&v79 = Shininess;
    v78 = *(a1 + 384);
    v54 = sub_29AB809F4((a1 + 424));
    pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Update(v54, &v74, 96);
    *(a1 + 450) = 1;
  }

  v55 = sub_29AB809F4((a1 + 424));
  v56 = atomic_load(&qword_2A17486F8);
  if (!v56)
  {
    v56 = sub_29AB8254C();
  }

  if ((*(v56 + 2) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v56);
  }

  pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Bind(v55, a2);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_BindPostSurfaceShaderParams(a1, a2);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v82);
}

uint64_t sub_29AB809F4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_BindPostSurfaceShaderParams(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 451) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_ComputePostSurfaceShaderState(a1);
  }

  result = *(a1 + 440);
  if (result)
  {
    v5 = result[3];
    result += 3;
    if (v5)
    {
      v6 = sub_29AB809F4(result);
      v7 = atomic_load(&qword_2A17486F8);
      if (!v7)
      {
        v7 = sub_29AB8254C();
      }

      if ((*(v7 + 3) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      return pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Bind(v6, a2);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::BindSamplers(uint64_t a1, uint64_t a2)
{
  v3 = sub_29AB80170((a1 + 48));
  if (pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v3))
  {
    v6 = atomic_load(&qword_2A17486F8);
    if (!v6)
    {
      v6 = sub_29AB8254C();
    }

    v7 = *(v6 + 32) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s[%zd]", v4, v5, v8, 0);
    sub_29AB80018(a2);
  }

  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
}

void sub_29AB80C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::UnbindSamplers(uint64_t a1, uint64_t a2)
{
  v3 = sub_29AB80170((a1 + 48));
  if (pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v3))
  {
    v6 = atomic_load(&qword_2A17486F8);
    if (!v6)
    {
      v6 = sub_29AB8254C();
    }

    v7 = *(v6 + 32) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s[%zd]", v4, v5, v8, 0);
    sub_29AB80018(a2);
  }

  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
}

void sub_29AB80DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetStateFromOpenGL(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabled(2896) == 1;
  if (*(this + 400) != v2)
  {
    *(this + 400) = v2;
    *(this + 448) = 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetDoublev(2982, v28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v28, 0, 0.0, &v20);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3377, &v19);
  memset(v18, 0, sizeof(v18));
  sub_29AB8136C(v18, v19);
  v29[0] = xmmword_29B43C8B0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(v17, v29);
  if (v19 >= 1)
  {
    for (i = 0; i < v19; ++i)
    {
      if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabled((i + 0x4000)))
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4611, v29);
        v31 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v20, v29[0].n128_f32[0]), vmulq_n_f64(v22, v29[0].n128_f32[1])), vmulq_n_f64(v24, v29[0].n128_f32[2])), vmulq_n_f64(v26, v29[0].n128_f32[3]))), vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v21, v29[0].n128_f32[0]), vmulq_n_f64(v23, v29[0].n128_f32[1])), vmulq_n_f64(v25, v29[0].n128_f32[2])), vmulq_n_f64(v27, v29[0].n128_f32[3])));
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetPosition(v17, &v31);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4608, &v32);
        v31 = v32;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAmbient(v17, &v31);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4609, &v32);
        v31 = v32;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetDiffuse(v17, &v31);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4610, &v32);
        v31 = v32;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpecular(v17, &v31);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4612, &v31);
        v13 = v31.n128_u64[0];
        v14 = v31.n128_u32[2];
        LODWORD(v15) = sub_29A144F00(&v20, &v13).u32[0];
        HIDWORD(v15) = v4;
        v16 = v5;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotDirection(v17, &v15);
        LODWORD(v13) = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4614, &v13);
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotCutoff(v17, &v13);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4613, &v13);
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetSpotFalloff(v17, &v13);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4615, &v13);
        LODWORD(v15) = v13;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4616, &v13);
        HIDWORD(v15) = v13;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetLightfv((i + 0x4000), 4617, &v13);
        v16 = v13;
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::SetAttenuation(v17, &v15);
        sub_29AB81454(v18, v17);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::SetLights(this, v18);
  v6 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial(v29);
  LODWORD(v15) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv(1028, 4608, &v32, v6);
  v31 = v32;
  *&v7 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetAmbient(v29, &v31).n128_u64[0];
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv(1028, 4609, &v32, v7);
  v31 = v32;
  *&v8 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetDiffuse(v29, &v31).n128_u64[0];
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv(1028, 4610, &v32, v8);
  v31 = v32;
  *&v9 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetSpecular(v29, &v31).n128_u64[0];
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv(1028, 5632, &v32, v9);
  v31 = v32;
  *&v10 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetEmission(v29, &v31).n128_u64[0];
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetMaterialfv(1028, 5633, &v15, v10);
  LODWORD(v15) = fmaxf(*&v15, 0.0001);
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetShininess(v29, *&v15);
  if (pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::operator!=(this + 312, v29))
  {
    v11 = v29[3];
    *(this + 344) = v29[2];
    *(this + 360) = v11;
    *(this + 47) = v30;
    v12 = v29[1];
    *(this + 312) = v29[0];
    *(this + 328) = v12;
    *(this + 450) = 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(2899, &v31);
  if (*(this + 96) != v31.n128_f32[0] || *(this + 97) != v31.n128_f32[1] || *(this + 98) != v31.n128_f32[2] || *(this + 99) != v31.n128_f32[3])
  {
    *(this + 24) = v31;
    *(this + 450) = 0;
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(v29);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v17);
  v17[0].n128_u64[0] = v18;
  sub_29AB81EE0(v17);
}

void sub_29AB812E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial((v63 - 176));
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(&a12);
  a12 = &a63;
  sub_29AB81EE0(&a12);
  _Unwind_Resume(a1);
}

void *sub_29AB8136C(void *result, unint64_t a2)
{
  if (0xFAFAFAFAFAFAFAFBLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xA0A0A0A0A0A0A1)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A936374(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = v4 + 408 * v6;
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29AB828C8(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AB8296C(&v12);
  }

  return result;
}

void sub_29AB81440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB8296C(va);
  _Unwind_Resume(a1);
}

void sub_29AB81454(void *a1, __int128 *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29AB82270(a1[1], a2);
  }

  sub_29AB829BC(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_PostSurfaceShaderState::_Init(uint64_t a1, pxrInternal__aapl__pxrReserved__::GlfSimpleLight **a2)
{
  sub_29A008864(v66);
  sub_29A008864(v60);
  sub_29A008864(v54);
  v51 = 0;
  __dst = 0;
  v53 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    do
    {
      PostSurfaceIdentifier = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPostSurfaceIdentifier(v4);
      PostSurfaceShaderSource = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPostSurfaceShaderSource(v4);
      PostSurfaceShaderParams = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPostSurfaceShaderParams(v4);
      if (*PostSurfaceIdentifier)
      {
        v10 = *(PostSurfaceShaderSource + 23);
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(PostSurfaceShaderSource + 8);
        }

        if (v10)
        {
          v11 = PostSurfaceShaderParams;
          v12 = *PostSurfaceShaderParams;
          if (*PostSurfaceShaderParams)
          {
            if ((v12 & 0xF) != 0)
            {
              __p[0] = "glf/simpleLightingContext.cpp";
              __p[1] = "_Init";
              v46 = 630;
              v47 = "void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_PostSurfaceShaderState::_Init(const GlfSimpleLightVector &)";
              v48 = 0;
              ID = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetID(v4);
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(ID);
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid shader params size (%zd bytes) for %s (must be a multiple of %zd)\n", v12, Text, 0x10uLL);
            }

            else
            {
              if (sub_29AB7A08C(4))
              {
                v15 = *PostSurfaceIdentifier & 0xFFFFFFFFFFFFFFF8;
                if (v15)
                {
                  v16 = (v15 + 16);
                  if (*(v15 + 39) < 0)
                  {
                    v16 = *v16;
                  }
                }

                else
                {
                  v16 = "";
                }

                v17 = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetID(v4);
                v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v17);
                pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PostSurfaceLight: %s: %s\n", v19, v20, v16, v18);
              }

              if (!sub_29AB82B04(&v49, PostSurfaceIdentifier))
              {
                sub_29A31B870(&v49, PostSurfaceIdentifier, PostSurfaceIdentifier);
                v21 = *(PostSurfaceShaderSource + 23);
                if (v21 >= 0)
                {
                  v22 = PostSurfaceShaderSource;
                }

                else
                {
                  v22 = *PostSurfaceShaderSource;
                }

                if (v21 >= 0)
                {
                  v23 = *(PostSurfaceShaderSource + 23);
                }

                else
                {
                  v23 = *(PostSurfaceShaderSource + 8);
                }

                sub_29A00911C(&v67, v22, v23);
              }

              v24 = sub_29A00911C(&v61, "    ", 4);
              v25 = pxrInternal__aapl__pxrReserved__::operator<<(v24, PostSurfaceIdentifier);
              v26 = sub_29A00911C(v25, "Params ", 7);
              v27 = sub_29A00911C(v26, "light", 5);
              v28 = MEMORY[0x29C2C1F00](v27, ++v6);
              sub_29A00911C(v28, ";\n", 2);
              v29 = sub_29A00911C(&v55, "    ", 4);
              v30 = sub_29A00911C(v29, "color = Apply", 13);
              v31 = pxrInternal__aapl__pxrReserved__::operator<<(v30, PostSurfaceIdentifier);
              v32 = sub_29A00911C(v31, "WorldSpace(", 11);
              v33 = sub_29A00911C(v32, "postSurface.light", 17);
              v34 = MEMORY[0x29C2C1F00](v33, v6);
              v35 = sub_29A00911C(v34, ", color, Pworld.xyz", 19);
              sub_29A00911C(v35, ");\n", 3);
              sub_29A4F6AE8(&v51, __dst, v11[4], (v11[4] + *v11), *v11);
            }
          }
        }
      }

      v4 = (v4 + 408);
    }

    while (v4 != v5);
    if (v6)
    {
      std::stringbuf::str();
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = *__p;
      *(a1 + 16) = v46;
      std::string::append(a1, "layout(std140) uniform PostSurfaceShaderParams {\n");
      std::stringbuf::str();
      if (v46 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      if (v46 >= 0)
      {
        v37 = HIBYTE(v46);
      }

      else
      {
        v37 = __p[1];
      }

      std::string::append(a1, v36, v37);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(a1, "} postSurface;\n\n");
      std::string::append(a1, "MAT4 GetWorldToViewInverseMatrix();\nvec4 postSurfaceShader(vec4 Peye, vec3 Neye, vec4 color)\n{\n    vec4 Pworld = vec4(GetWorldToViewInverseMatrix() * Peye);\n    color.rgb /= color.a;\n");
      std::stringbuf::str();
      if (v46 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      if (v46 >= 0)
      {
        v39 = HIBYTE(v46);
      }

      else
      {
        v39 = __p[1];
      }

      std::string::append(a1, v38, v39);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(a1, "    color.rgb *= color.a;\n    return color;\n}\n\n");
      pxrInternal__aapl__pxrReserved__::GlfUniformBlock::New("_postSurfaceShaderUniformBlock", __p);
      *(a1 + 24) = __p[0];
      __p[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::GlfUniformBlock>::_RemoveRef();
    }
  }

  sub_29A1602D4(&v49, v50[0]);
  if (v51)
  {
    __dst = v51;
    operator delete(v51);
  }

  v54[0] = *MEMORY[0x29EDC9528];
  v40 = v54[0];
  v41 = *(MEMORY[0x29EDC9528] + 72);
  v42 = *(MEMORY[0x29EDC9528] + 64);
  *(v54 + *(v54[0] - 24)) = v42;
  v43 = v41;
  v55 = v41;
  v56 = MEMORY[0x29EDC9570] + 16;
  if (v58 < 0)
  {
    operator delete(v57[7].__locale_);
  }

  v56 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v59);
  v60[0] = v40;
  *(v60 + *(v40 - 24)) = v42;
  v61 = v43;
  v62 = MEMORY[0x29EDC9570] + 16;
  if (v64 < 0)
  {
    operator delete(v63[7].__locale_);
  }

  v62 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v63);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v65);
  v66[0] = v40;
  *(v66 + *(v40 - 24)) = v42;
  v67 = v43;
  v68 = MEMORY[0x29EDC9570] + 16;
  if (v70 < 0)
  {
    operator delete(v69[7].__locale_);
  }

  v68 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v69);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v71);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_ComputePostSurfaceShaderState(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  v2 = (this + 24);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      PostSurfaceIdentifier = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPostSurfaceIdentifier(v3);
      PostSurfaceShaderSource = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPostSurfaceShaderSource(v3);
      v8 = *PostSurfaceIdentifier & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v9 = *(v8 + 39);
        if ((v9 & 0x8000000000000000) != 0)
        {
          v10 = *(v8 + 16);
          v9 = *(v8 + 24);
        }

        else
        {
          v10 = (v8 + 16);
        }
      }

      else
      {
        v9 = 0;
        v10 = "";
      }

      v11 = pxrInternal__aapl__pxrReserved__::ArchHash64(v10, v9, v5);
      v12 = *(PostSurfaceShaderSource + 23);
      if (v12 >= 0)
      {
        v13 = PostSurfaceShaderSource;
      }

      else
      {
        v13 = *PostSurfaceShaderSource;
      }

      if (v12 >= 0)
      {
        v14 = *(PostSurfaceShaderSource + 23);
      }

      else
      {
        v14 = *(PostSurfaceShaderSource + 8);
      }

      v5 = pxrInternal__aapl__pxrReserved__::ArchHash64(v13, v14, v11);
      v3 = (v3 + 408);
    }

    while (v3 != v4);
  }

  v15 = *(this + 55);
  if (!v15 || *(v15 + 32) != v5)
  {
    v16 = operator new(0x28uLL);
    sub_29AB81E54(v16, v5, v2);
    v17 = *(this + 55);
    *(this + 55) = v16;
    if (v17)
    {
      sub_29AB82B78(this + 440, v17);
    }
  }

  *(this + 451) = 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeShaderSourceHash(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this)
{
  if ((*(this + 451) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_ComputePostSurfaceShaderState(this);
  }

  v2 = *(this + 55);
  if (v2)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeShaderSource(pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*(this + 451) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_ComputePostSurfaceShaderState(this);
  }

  if (*(this + 55))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v4)
    {
      v4 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    if ((*(v4 + 1) ^ *a2) <= 7)
    {
      return *(this + 55);
    }
  }

  if (atomic_load_explicit(&qword_2A1748700, memory_order_acquire))
  {
    return &qword_2A1748708;
  }

  sub_29B2C29D4(&v6);
  return v6;
}

uint64_t sub_29AB81E54(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::GlfSimpleLight **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a2;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::_PostSurfaceShaderState::_Init(a1, a3);
  return a1;
}

void sub_29AB81EE0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight((v4 - 408));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AB81F94(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AB8213C(a1);
    if (a4 > 0xA0A0A0A0A0A0A0)
    {
      sub_29A00C9A4();
    }

    v9 = 0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x50505050505050)
    {
      v10 = 0xA0A0A0A0A0A0A0;
    }

    else
    {
      v10 = v9;
    }

    sub_29AB8219C(a1, v10);
    v11 = sub_29AB821EC(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xFAFAFAFAFAFAFAFBLL * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29AB82464(v8, v15);
        v15 = (v15 + 408);
        v8 = (v8 + 408);
        v14 -= 408;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29AB821EC(a1, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      sub_29AB82464(v8, v6);
      v6 = (v6 + 408);
      v8 = (v8 + 408);
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v12 = (v12 - 408);
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v12);
  }

  *(a1 + 8) = v8;
}

void sub_29AB8213C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight((v3 - 408));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char *sub_29AB8219C(void *a1, unint64_t a2)
{
  if (a2 >= 0xA0A0A0A0A0A0A1)
  {
    sub_29A00C9A4();
  }

  result = sub_29A936374(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[408 * v4];
  return result;
}

uint64_t sub_29AB821EC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29AB82270(a4, a2);
  }

  return a4;
}

void sub_29AB8224C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 408);
    do
    {
      pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v4);
      v4 = (v5 - 408);
      v2 += 408;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB82270(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = v11;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*>();
}

void sub_29AB82408(_Unwind_Exception *a1)
{
  v4 = *(v1 + 328);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0D2850((v2 + 4));
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 256) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AB82464(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  v13 = a2[12];
  v14 = a2[13];
  v15 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v14;
  *(a1 + 224) = v15;
  *(a1 + 192) = v13;
  if (a1 != a2)
  {
    sub_29AB7F8A0((a1 + 248), *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 7);
  }

  *(a1 + 272) = *(a2 + 272);
  std::string::operator=((a1 + 280), (a2 + 280));
  std::string::operator=((a1 + 304), (a2 + 19));
  sub_29A166F2C((a1 + 328), a2 + 41);
  std::string::operator=((a1 + 336), a2 + 14);
  sub_29A4AB3CC((a1 + 360), (a2 + 360));
  sub_29A2258F0((a1 + 400), a2 + 100);
  sub_29A225948((a1 + 404), a2 + 101);
  return a1;
}

unint64_t sub_29AB8254C()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "Lighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "Shadow", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Material", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "PostSurfaceShaderParams", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "shadowCompareTextures", 0);
  v1 = v0 + 5;
  v2 = *v0;
  v17 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v3;
    }
  }

  v4 = v0[1];
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = v0[2];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = v0[3];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = v0[4];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  *v1 = 0;
  v0[6] = 0;
  v0[7] = 0;
  sub_29A12EF7C(v1, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v13 = *(&v17 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong(&qword_2A17486F8, &v14, v0);
  if (v14)
  {
    v15 = sub_29AB82814(v0);
    operator delete(v15);
    return atomic_load(&qword_2A17486F8);
  }

  return v0;
}

void sub_29AB82738(_Unwind_Exception *a1)
{
  v4 = 32;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AB82814(uint64_t a1)
{
  v7 = (a1 + 40);
  sub_29A124AB0(&v7);
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29AB828C8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29AB82270(a4, a2);
  }
}

void sub_29AB82948(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 408);
    do
    {
      pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v4);
      v4 = (v5 - 408);
      v2 += 408;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB8296C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight((i - 408));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB829BC(void *a1, __int128 *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0xA0A0A0A0A0A0A0)
  {
    if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3);
    }

    if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 3) >= 0x50505050505050)
    {
      v5 = 0xA0A0A0A0A0A0A0;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A936374(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[408 * v2];
    v9 = v8;
    v10 = &v6[408 * v5];
    sub_29AB82270(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29AB82AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB8296C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB82B04(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if ((sub_29A153D90(a1, a2, v2 + 4) & 1) == 0)
      {
        if (!sub_29A153D90(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void sub_29AB82B78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29AB81F64();
  }
}

double pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial(pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial *this)
{
  *this = xmmword_29B6C5D10;
  *(this + 1) = xmmword_29B6C5E70;
  result = 0.0000305175853;
  *(this + 2) = xmmword_29B6C5E80;
  *(this + 3) = xmmword_29B43C8B0;
  *(this + 8) = 0x4040000000000000;
  return result;
}

{
  *this = xmmword_29B6C5D10;
  *(this + 1) = xmmword_29B6C5E70;
  result = 0.0000305175853;
  *(this + 2) = xmmword_29B6C5E80;
  *(this + 3) = xmmword_29B43C8B0;
  *(this + 8) = 0x4040000000000000;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetAmbient(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetDiffuse(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1] = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetSpecular(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[2] = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::SetEmission(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[3] = *a2;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GlfSimpleShadowArray(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *this = &unk_2A20728A0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 149) = 0;
  return result;
}

{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *this = &unk_2A20728A0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 149) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::~GlfSimpleShadowArray(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  *this = &unk_2A20728A0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeResources(this);
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  sub_29A0F6078(this + 2, v2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::~GlfSimpleShadowArray(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeResources(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  sub_29AB7AF98(v4);
  if ((*(this + 156) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeTextures(this);
  }

  if (*(this + 30))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffers(1, this + 120);
    *(this + 30) = 0;
  }

  if (*(this + 31))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSamplers(1, this + 124);
    *(this + 31) = 0;
  }

  v3 = *(this + 32);
  v2 = (this + 128);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSamplers(1, v2);
    *v2 = 0;
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapDepthSampler(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  result = *(this + 31);
  if (!result)
  {
    v3[0] = "glf/simpleShadowArray.cpp";
    v3[1] = "GetShadowMapDepthSampler";
    v3[2] = 55;
    v3[3] = "GLuint pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapDepthSampler() const";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Shadow depth sampler has not been allocated");
    return *(this + 31);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapCompareSampler(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  result = *(this + 32);
  if (!result)
  {
    v3[0] = "glf/simpleShadowArray.cpp";
    v3[1] = "GetShadowMapCompareSampler";
    v3[2] = 64;
    v3[3] = "GLuint pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapCompareSampler() const";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Shadow compare sampler has not been allocated");
    return *(this + 32);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetShadowMapResolutions(uint64_t a1, char **a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v4 = (a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  if (v6 - v5 == v8 - v7)
  {
    if (v5 == v6)
    {
      return;
    }

    for (i = v7; *v5 == *i && *(v5 + 1) == *(i + 1); i += 8)
    {
      v5 += 8;
      if (v5 == v6)
      {
        return;
      }
    }
  }

  if (v4 != a2)
  {
    sub_29A00CB24(v4, v7, v8, (v8 - v7) >> 3);
  }

  if ((*(a1 + 156) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeTextures(a1);
  }

  v12 = (*(a1 + 32) - *(a1 + 24)) >> 3;
  if (v12 != (*(a1 + 80) - *(a1 + 72)) >> 7 || v12 != (*(a1 + 104) - *(a1 + 96)) >> 7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v15, 1.0);
    sub_29AB8331C((a1 + 72), v12, v13);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v15, 1.0);
    sub_29AB8331C((a1 + 96), v12, v14);
  }

  *(a1 + 156) = 0;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeTextures(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  if (*(this + 6) != *(this + 7))
  {
    sub_29AB7AF98(v6);
    v2 = *(this + 6);
    v3 = *(this + 7);
    if (v2 != v3)
    {
      do
      {
        if (*v2)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, v2);
        }

        ++v2;
      }

      while (v2 != v3);
      v2 = *(this + 6);
    }

    *(this + 7) = v2;
    sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_FreeTextures()");
    pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v6);
  }
}

void sub_29AB832EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(&a16);
  _Unwind_Resume(a1);
}

void sub_29AB8331C(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 7;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + (a2 << 7);
    }
  }

  else
  {
    sub_29AB84384(a1, a2 - v3, a3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this, unint64_t a2)
{
  v3 = *(this + 3);
  if (a2 < (*(this + 4) - v3) >> 3)
  {
    return *(v3 + 8 * a2);
  }

  v7[0] = "glf/simpleShadowArray.cpp";
  v7[1] = "GetShadowMapSize";
  v7[2] = 104;
  v7[3] = "GfVec2i pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(size_t) const";
  v8 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "index < _resolutions.size()", 0);
  result = 0;
  if (v6)
  {
    v3 = *(this + 3);
    return *(v3 + 8 * a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetViewMatrix@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(this + 72);
  if (a2 >= (*(this + 80) - v5) >> 7)
  {
    v13 = this;
    v14[0] = "glf/simpleShadowArray.cpp";
    v14[1] = "GetViewMatrix";
    v14[2] = 114;
    v14[3] = "GfMatrix4d pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetViewMatrix(size_t) const";
    v15 = 0;
    this = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "index < _viewMatrix.size()", 0);
    if (!this)
    {
      return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
    }

    v5 = *(v13 + 72);
  }

  v6 = (v5 + (a2 << 7));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  a3[2] = v6[2];
  a3[3] = v9;
  *a3 = v7;
  a3[1] = v8;
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[7];
  a3[6] = v6[6];
  a3[7] = v12;
  a3[4] = v10;
  a3[5] = v11;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetViewMatrix(uint64_t this, unint64_t a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v5 = *(this + 72);
  if (a2 < (*(this + 80) - v5) >> 7)
  {
    goto LABEL_2;
  }

  v13 = this;
  v14[0] = "glf/simpleShadowArray.cpp";
  v14[1] = "SetViewMatrix";
  v14[2] = 124;
  v14[3] = "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetViewMatrix(size_t, const GfMatrix4d &)";
  v15 = 0;
  this = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "index < _viewMatrix.size()", 0);
  if (this)
  {
    v5 = *(v13 + 72);
LABEL_2:
    v6 = (v5 + (a2 << 7));
    v7 = *a3;
    v8 = *(a3 + 1);
    v9 = *(a3 + 3);
    v6[2] = *(a3 + 2);
    v6[3] = v9;
    *v6 = v7;
    v6[1] = v8;
    v10 = *(a3 + 4);
    v11 = *(a3 + 5);
    v12 = *(a3 + 7);
    v6[6] = *(a3 + 6);
    v6[7] = v12;
    v6[4] = v10;
    v6[5] = v11;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetProjectionMatrix@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(this + 96);
  if (a2 >= (*(this + 104) - v5) >> 7)
  {
    v13 = this;
    v14[0] = "glf/simpleShadowArray.cpp";
    v14[1] = "GetProjectionMatrix";
    v14[2] = 134;
    v14[3] = "GfMatrix4d pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetProjectionMatrix(size_t) const";
    v15 = 0;
    this = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "index < _projectionMatrix.size()", 0);
    if (!this)
    {
      return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
    }

    v5 = *(v13 + 96);
  }

  v6 = (v5 + (a2 << 7));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  a3[2] = v6[2];
  a3[3] = v9;
  *a3 = v7;
  a3[1] = v8;
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[7];
  a3[6] = v6[6];
  a3[7] = v12;
  a3[4] = v10;
  a3[5] = v11;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetProjectionMatrix(uint64_t this, unint64_t a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v5 = *(this + 96);
  if (a2 < (*(this + 104) - v5) >> 7)
  {
    goto LABEL_2;
  }

  v13 = this;
  v14[0] = "glf/simpleShadowArray.cpp";
  v14[1] = "SetProjectionMatrix";
  v14[2] = 144;
  v14[3] = "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetProjectionMatrix(size_t, const GfMatrix4d &)";
  v15 = 0;
  this = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "index < _projectionMatrix.size()", 0);
  if (this)
  {
    v5 = *(v13 + 96);
LABEL_2:
    v6 = (v5 + (a2 << 7));
    v7 = *a3;
    v8 = *(a3 + 1);
    v9 = *(a3 + 3);
    v6[2] = *(a3 + 2);
    v6[3] = v9;
    *v6 = v7;
    v6[1] = v8;
    v10 = *(a3 + 4);
    v11 = *(a3 + 5);
    v12 = *(a3 + 7);
    v6[6] = *(a3 + 6);
    v6[7] = v12;
    v6[4] = v10;
    v6[5] = v11;
  }

  return this;
}

double pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetWorldToShadowMatrix@<D0>(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  __asm { FMOV            V0.2D, #0.5 }

  v30 = _Q0;
  v41 = _Q0;
  *&v42 = 0x3FE0000000000000;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(&v49, &v41);
  v12 = v11[3];
  v14 = *v11;
  v13 = v11[1];
  v57[2] = v11[2];
  v57[3] = v12;
  v57[0] = v14;
  v57[1] = v13;
  v15 = v11[7];
  v17 = v11[4];
  v16 = v11[5];
  v57[6] = v11[6];
  v57[7] = v15;
  v57[4] = v17;
  v57[5] = v16;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v30;
  *&v34 = 0x3FE0000000000000;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v41, &v33);
  v19 = v18[3];
  v21 = *v18;
  v20 = v18[1];
  v51 = v18[2];
  v52 = v19;
  v49 = v21;
  v50 = v20;
  v22 = v18[7];
  v24 = v18[4];
  v23 = v18[5];
  v55 = v18[6];
  v56 = v22;
  v53 = v24;
  v54 = v23;
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetViewMatrix(this, a2, v32);
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetProjectionMatrix(this, a2, v31);
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = v32[7];
  v33 = v32[0];
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v33, v31);
  v45 = v37;
  v46 = v38;
  v47 = v39;
  v48 = v40;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v36;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v41, v57);
  v25 = v46;
  *(a3 + 64) = v45;
  *(a3 + 80) = v25;
  v26 = v48;
  *(a3 + 96) = v47;
  *(a3 + 112) = v26;
  v27 = v42;
  *a3 = v41;
  *(a3 + 16) = v27;
  v28 = v44;
  *(a3 + 32) = v43;
  *(a3 + 48) = v28;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a3, &v49);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::BeginCapture(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this, unint64_t a2, int a3)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_BindFramebuffer(this, a2);
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glClear(256);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2978, this + 140);
  ShadowMapSize = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(this, a2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(0, 0, ShadowMapSize, HIDWORD(ShadowMapSize));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange(0.0, 0.99999);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(34383);
  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::BeginCapture(size_t, BOOL)");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB83950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_BindFramebuffer(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, this + 132);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36010, this + 136);
  v4 = *(this + 30);
  if (!v4 || *(this + 6) == *(this + 7))
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocResources(this);
    v4 = *(this + 30);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36160, v4);
  v5 = *(this + 6);
  if (a2 >= (*(this + 7) - v5) >> 2)
  {
    __p[0] = "glf/simpleShadowArray.cpp";
    __p[1] = "_BindFramebuffer";
    v7 = 417;
    v8 = "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_BindFramebuffer(size_t)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, 1, "Texture index is out of bounds");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glFramebufferTexture(36160, 36096, *(v5 + 4 * a2), 0);
  }

  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_BindFramebuffer(size_t)");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB83A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::EndCapture(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange(0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(34383);
  if (sub_29AB7A08C(3))
  {
    ShadowMapSize = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(this, a2);
    v29[0] = ShadowMapSize;
    v29[1] = 0xC00000000;
    v30 = 1;
    v5 = (HIDWORD(ShadowMapSize) * ShadowMapSize);
    sub_29A0121C0(v28, v5);
    v32 = v28[0];
    Pixels = pxrInternal__aapl__pxrReserved__::internal::GLApi::glReadPixels(0, 0, ShadowMapSize, HIDWORD(ShadowMapSize), 6402, 5126);
    if (v5 >= 1)
    {
      v7 = v28[0];
      v8 = -3.4028e38;
      v9 = 3.4028e38;
      v10 = (HIDWORD(ShadowMapSize) * ShadowMapSize);
      do
      {
        v11 = *v7++;
        v12 = v11;
        if (v11 < v9)
        {
          v9 = v12;
        }

        if (v12 > v8)
        {
          v8 = v12;
        }

        --v10;
      }

      while (v10);
      v13 = v28[0];
      v14 = v8 - v9;
      do
      {
        *v13 = (*v13 - v9) / v14;
        ++v13;
        --v5;
      }

      while (v5);
    }

    TmpDir = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(Pixels);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s/GlfSimpleShadowArray.index_%zu.tif", v16, v17, TmpDir, a2);
    pxrInternal__aapl__pxrReserved__::ArchNormPath(&__p, &v27);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(&v27, &__p);
    v23 = 0;
    v18 = (*(*__p + 32))(__p, v29, &v23);
    sub_29A184A10(&v23, 0);
    v21 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v27.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Wrote shadow texture: %s\n", v19, v20, v21);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to write shadow texture: %s\n", v19, v20, v21);
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_UnbindFramebuffer(this);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(*(this + 35), *(this + 36), *(this + 37), *(this + 38));
  v22 = sub_29A008E78(v29, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::EndCapture(size_t)");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(v22);
  if (v31 < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_29AB83D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_UnbindFramebuffer(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, *(this + 33));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, *(this + 34));
  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_UnbindFramebuffer()");
  pxrInternal__aapl__pxrReserved__::GlfPostPendingGLErrors(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB83E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::AllocSamplers(uint64_t this)
{
  v1 = this;
  v6 = *MEMORY[0x29EDCA608];
  v5 = xmmword_29B6C5EA0;
  v2 = (this + 124);
  if (!*(this + 124))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenSamplers(1, v2);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v2, 10241, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v2, 10240, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v2, 10242, 33069);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v2, 10243, 33069);
    this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterfv(*v2, 4100, &v5);
  }

  v4 = *(v1 + 128);
  v3 = (v1 + 128);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenSamplers(1, v3);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 10241, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 10240, 9729);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 10242, 33069);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 10243, 33069);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterfv(*v3, 4100, &v5);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 34892, 34894);
    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v3, 34893, 515);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocResources(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::AllocSamplers(this);
  if ((*(this + 156) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocTextures(this);
  }

  v3 = *(this + 30);
  v2 = this + 120;
  if (!v3)
  {
    v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenFramebuffers;

    v4(1, v2);
  }
}

void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocTextures(pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray *this)
{
  if (*(this + 31) || (sub_29B2C2A44(v13)) && (*(this + 32) || (sub_29B2C2A90(&__p)) && (*(this + 6) == *(this + 7) || (v8[0] = "glf/simpleShadowArray.cpp", v8[1] = "_AllocTextures", v9 = 331, v10 = "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocTextures()", v11 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_textures.empty()", 0))))
  {
    sub_29AB7AF98(v13);
    v2 = *(this + 3);
    for (i = *(this + 4); v2 != i; v2 += 2)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTextures(1, &__p);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, LODWORD(__p.__r_.__value_.__l.__data_));
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glTexImage2D(3553, 0, 36012, *v2, v2[1], 0, 6402, 5126, 0);
      sub_29A00D250(this + 6, &__p);
      if (sub_29AB7A08C(2))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Created shadow map texture of size %dx%d (id %#x)\n", v4, v5, *v2, v2[1], LODWORD(__p.__r_.__value_.__l.__data_));
      }
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, 0);
    *(this + 156) = 0;
    pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v13);
  }

  else
  {
    v13[0] = "glf/simpleShadowArray.cpp";
    v13[1] = "_AllocTextures";
    v13[2] = 333;
    v13[3] = "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocTextures()";
    v14 = 0;
    sub_29A008E78(v8, "_AllocTextures");
    sub_29A008E78(&v7, "void pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::_AllocTextures()");
    pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(v8, &v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Unexpected entry state in %s\n", p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_29AB842D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

char **pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::SetTextures(uint64_t a1, char **a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    result = sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 156) = *a2 != a2[1];
  return result;
}

void sub_29AB84384(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2 <= (v7 - v6) >> 7)
  {
    if (a2)
    {
      v14 = a2 << 7;
      v15 = &v6[8 * a2];
      do
      {
        v16 = *a3;
        v17 = a3[1];
        v18 = a3[3];
        v6[2] = a3[2];
        v6[3] = v18;
        *v6 = v16;
        v6[1] = v17;
        v19 = a3[4];
        v20 = a3[5];
        v21 = a3[7];
        v6[6] = a3[6];
        v6[7] = v21;
        v6[4] = v19;
        v6[5] = v20;
        v6 += 8;
        v14 -= 128;
      }

      while (v14);
      v6 = v15;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v8 = v6 - *a1;
    v9 = a2 + (v8 >> 7);
    if (v9 >> 57)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 7;
    v11 = v7 - *a1;
    if (v11 >> 6 > v9)
    {
      v9 = v11 >> 6;
    }

    if (v11 >= 0x7FFFFFFFFFFFFF80)
    {
      v12 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_29A79C5C4(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v22 = &v13[128 * v10];
    v23 = &v22[128 * a2];
    v24 = a2 << 7;
    v25 = v22;
    do
    {
      v26 = *a3;
      v27 = a3[1];
      v28 = a3[3];
      *(v25 + 2) = a3[2];
      *(v25 + 3) = v28;
      *v25 = v26;
      *(v25 + 1) = v27;
      v29 = a3[4];
      v30 = a3[5];
      v31 = a3[7];
      *(v25 + 6) = a3[6];
      *(v25 + 7) = v31;
      *(v25 + 4) = v29;
      *(v25 + 5) = v30;
      v25 += 128;
      v24 -= 128;
    }

    while (v24);
    v32 = &v13[128 * v12];
    v33 = *(a1 + 8) - *a1;
    v34 = &v22[-v33];
    memcpy(&v22[-v33], *a1, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = v23;
    *(a1 + 16) = v32;
    if (v35)
    {

      operator delete(v35);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate::Glf_TestGLContextPrivate(void *result, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = result;
  }

  *result = v2;
  return result;
}

{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = result;
  }

  *result = v2;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate::areSharing(pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate *this, const pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate *a2, const pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      return *this == *a2;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_GetSharedContext(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1748728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748728))
  {
    v2 = operator new(8uLL);
    *v2 = v2;
    qword_2A1748720 = v2;
    __cxa_guard_release(&qword_2A1748728);
  }

  return qword_2A1748720;
}

pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface *pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface::GlfTestGLContextRegistrationInterface(pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface *this, uint64_t a2, char *a3)
{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface::GlfGLContextRegistrationInterface(this, a2, a3);
  *result = &unk_2A20728F8;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface::GlfGLContextRegistrationInterface(this, a2, a3);
  *result = &unk_2A20728F8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface::~GlfTestGLContextRegistrationInterface(pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface *this)
{
  pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface::~GlfGLContextRegistrationInterface(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface::GetShared@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x10uLL);
  SharedContext = pxrInternal__aapl__pxrReserved__::_GetSharedContext(v3);
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(v3);
  *v3 = &unk_2A2072928;
  *(v3 + 1) = SharedContext;

  return sub_29AB84A80(a1, v3);
}

void *pxrInternal__aapl__pxrReserved__::GlfTestGLContext::GlfTestGLContext(pxrInternal__aapl__pxrReserved__::GlfTestGLContext *this, const pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate *a2)
{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(this);
  *result = &unk_2A2072928;
  result[1] = a2;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(this);
  *result = &unk_2A2072928;
  result[1] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfTestGLContextRegistrationInterface::GetCurrent(void *a1@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate::_currenGLContext;
  if (pxrInternal__aapl__pxrReserved__::Glf_TestGLContextPrivate::_currenGLContext)
  {
    v4 = operator new(0x10uLL);
    pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(v4);
    *v4 = &unk_2A2072928;
    v4[1] = v3;

    sub_29AB84A80(a1, v4);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::GlfTestGLContext::Create@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(8uLL);
  v5 = v4;
  v6 = *a1;
  if (*a1)
  {
    v6 = v6[1];
  }

  if (!v6)
  {
    v6 = v4;
  }

  *v4 = v6;
  v7 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::GlfGLContext::GlfGLContext(v7);
  *v7 = &unk_2A2072928;
  v7[1] = v5;

  return sub_29AB84B8C(a2, v7);
}

pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface *pxrInternal__aapl__pxrReserved__::GlfTestGLContext::RegisterGLContextCallbacks(pxrInternal__aapl__pxrReserved__::GlfTestGLContext *this)
{
  v1 = operator new(8uLL);
  result = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface::GlfGLContextRegistrationInterface(v1, v2, v3);
  *v1 = &unk_2A20728F8;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GlfTestGLContext::_IsSharing(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v5[1];
    if (v9)
    {
      v7 = *v8 == *v9;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return v7;
}

const void *pxrInternal__aapl__pxrReserved__::GlfTestGLContext::_IsEqual(uint64_t a1, const void **a2)
{
  result = *a2;
  if (*a2)
  {
  }

  return result;
}

void sub_29AB84A58(pxrInternal__aapl__pxrReserved__::GlfGLContext *a1)
{
  pxrInternal__aapl__pxrReserved__::GlfGLContext::~GlfGLContext(a1);

  operator delete(v1);
}

void *sub_29AB84A80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20729A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AB84AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C293C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB84AF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AB84B1C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AB84B4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20729F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AB84B8C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2072A18;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AB84BE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C293C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB84C00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AB84C28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AB84C58(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2072A58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType::~GlfTextureTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::GlfTextureTokens_StaticTokenType::GlfTextureTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "texels", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "layout", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB84E38(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

double pxrInternal__aapl__pxrReserved__::GlfTexture::GlfTexture(pxrInternal__aapl__pxrReserved__::GlfTexture *this)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *this = &unk_2A2072A80;
  result = 0.0;
  *(this + 24) = xmmword_29B6C6210;
  *(this + 5) = ++qword_2A1748738;
  *(this + 12) = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GlfTexture::GlfTexture(uint64_t a1, int a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2072A80;
  result = 0.0;
  *(a1 + 24) = xmmword_29B6C6210;
  *(a1 + 40) = ++qword_2A1748738;
  *(a1 + 48) = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfTexture::~GlfTexture(pxrInternal__aapl__pxrReserved__::GlfTexture *this, const void *a2)
{
  *this = &unk_2A2072A80;
  qword_2A1748730 -= *(this + 3);
  sub_29A0F6078(this + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

void *pxrInternal__aapl__pxrReserved__::GlfTexture::SetMemoryRequested(void *this, uint64_t a2)
{
  if (this[4] != a2)
  {
    this[4] = a2;
    return (*(*this + 56))();
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfTexture::_SetMemoryUsed(uint64_t this, uint64_t a2)
{
  qword_2A1748730 += a2 - *(this + 24);
  *(this + 24) = a2;
  return this;
}

pxrInternal__aapl__pxrReserved__::GlfUniformBlock *pxrInternal__aapl__pxrReserved__::GlfUniformBlock::GlfUniformBlock(pxrInternal__aapl__pxrReserved__::GlfUniformBlock *this, const char *a2)
{
  *(this + 2) = 0;
  *(this + 2) = 1;
  *this = &unk_2A2072B08;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenBuffers(1, this + 24);
  if (a2)
  {
    MEMORY[0x29C2C1A60](this + 32, a2);
  }

  return this;
}

void sub_29AB85100(_Unwind_Exception *a1, const void *a2)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_29A0F6078(v3, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfUniformBlock::~GlfUniformBlock(pxrInternal__aapl__pxrReserved__::GlfUniformBlock *this)
{
  *this = &unk_2A2072B08;
  sub_29AB7AF98(v4);
  IsBuffer = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsBuffer(*(this + 6));
  if (IsBuffer == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffers(IsBuffer, this + 24);
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextScopeHolder::~GlfGLContextScopeHolder(v4);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  sub_29A0F6078(this + 2, v3);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::GlfUniformBlock::~GlfUniformBlock(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::GlfUniformBlock *pxrInternal__aapl__pxrReserved__::GlfUniformBlock::New@<X0>(pxrInternal__aapl__pxrReserved__::GlfUniformBlock *this@<X0>, pxrInternal__aapl__pxrReserved__::GlfUniformBlock **a2@<X8>)
{
  v5 = operator new(0x38uLL);
  result = pxrInternal__aapl__pxrReserved__::GlfUniformBlock::GlfUniformBlock(v5, this);
  *a2 = v5;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Bind(uint64_t a1, uint64_t a2)
{
  result = sub_29B2C2ADC(a2);
  if (v4 & 1 | result)
  {
    sub_29AB80018(a2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Update(pxrInternal__aapl__pxrReserved__::GlfUniformBlock *this, const void *a2, int a3)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v6, "void pxrInternal__aapl__pxrReserved__::GlfUniformBlock::Update(const void *, int)");
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35345, *(this + 6));
  if (*(this + 7) != a3)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferData(35345, a3, 0, 35044);
    *(this + 7) = a3;
  }

  if (a3 >= 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferSubData(35345, 0, a3, a2);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35345, 0);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGetNumElements(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = 1;
  if (this > 6407)
  {
    if (this > 6409)
    {
      if (this != 33319 && this != 6410)
      {
        goto LABEL_16;
      }

      return 2;
    }

    if (this == 6408)
    {
      return 4;
    }

    v2 = 6409;
  }

  else
  {
    if (this > 6405)
    {
      if (this != 6406)
      {
        return 3;
      }

      return v1;
    }

    if ((this - 6402) < 2)
    {
      return v1;
    }

    v2 = 6400;
  }

  if (this != v2)
  {
LABEL_16:
    v4[0] = "glf/utils.cpp";
    v4[1] = "GlfGetNumElements";
    v4[2] = 35;
    v4[3] = "int pxrInternal__aapl__pxrReserved__::GlfGetNumElements(GLenum)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported format");
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGetElementSize(pxrInternal__aapl__pxrReserved__ *this)
{
  if (this - 5120) < 0xC && ((0xC4Fu >> this))
  {
    return dword_29B6C6288[this - 5120];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "glf/utils.cpp";
  v4[1] = "GlfGetElementSize";
  v4[2] = 57;
  v4[3] = "int pxrInternal__aapl__pxrReserved__::GlfGetElementSize(GLenum)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported type");
  return 4;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGetHioFormat(pxrInternal__aapl__pxrReserved__ *this, int a2, int a3)
{
  if (this <= 33318)
  {
    if (this <= 6406)
    {
      if ((this - 6402) >= 2 && this != 6400 && this != 6406)
      {
        goto LABEL_52;
      }

LABEL_34:
      if (a2 <= 5123)
      {
        if (a2 > 5121)
        {
          if (a2 == 5122)
          {
            return 24;
          }

          else
          {
            return 20;
          }
        }

        else if (a2 == 5120)
        {
          return 4;
        }

        else
        {
          if (a2 != 5121)
          {
            return 41;
          }

          if (a3)
          {
            return 36;
          }

          else
          {
            return 0;
          }
        }
      }

      else if (a2 <= 5125)
      {
        if (a2 == 5124)
        {
          return 32;
        }

        else
        {
          return 28;
        }
      }

      else
      {
        switch(a2)
        {
          case 5126:
            return 12;
          case 5130:
            return 16;
          case 5131:
            return 8;
          default:
            return 41;
        }
      }
    }

    if (this <= 6408)
    {
      if (this == 6407)
      {
        if (a2 > 5123)
        {
          if (a2 <= 5125)
          {
            if (a2 == 5124)
            {
              return 34;
            }

            else
            {
              return 30;
            }
          }

          else
          {
            switch(a2)
            {
              case 5126:
                return 14;
              case 5130:
                return 18;
              case 5131:
                return 10;
              default:
                return 41;
            }
          }
        }

        if (a2 > 5121)
        {
          if (a2 == 5122)
          {
            return 26;
          }

          else
          {
            return 22;
          }
        }

        if (a2 == 5120)
        {
          return 6;
        }

        if (a2 != 5121)
        {
          return 41;
        }

        v6 = a3 == 0;
        v7 = 2;
        v8 = 38;
      }

      else
      {
        if (a2 > 5123)
        {
          if (a2 <= 5125)
          {
            if (a2 == 5124)
            {
              return 35;
            }

            else
            {
              return 31;
            }
          }

          else
          {
            switch(a2)
            {
              case 5126:
                return 15;
              case 5130:
                return 19;
              case 5131:
                return 11;
              default:
                return 41;
            }
          }
        }

        if (a2 > 5121)
        {
          if (a2 == 5122)
          {
            return 27;
          }

          else
          {
            return 23;
          }
        }

        if (a2 == 5120)
        {
          return 7;
        }

        if (a2 != 5121)
        {
          return 41;
        }

        v6 = a3 == 0;
        v7 = 3;
        v8 = 39;
      }

      if (v6)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    if (this == 6409)
    {
      goto LABEL_34;
    }

    if (this != 6410)
    {
LABEL_52:
      v11 = v3;
      v12 = v4;
      v9[0] = "glf/utils.cpp";
      v9[1] = "GlfGetHioFormat";
      v9[2] = 180;
      v9[3] = "HioFormat pxrInternal__aapl__pxrReserved__::GlfGetHioFormat(GLenum, GLenum, BOOL)";
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Unsupported type");
      return 2;
    }

LABEL_28:
    if (a2 <= 5123)
    {
      if (a2 > 5121)
      {
        if (a2 == 5122)
        {
          return 25;
        }

        else
        {
          return 21;
        }
      }

      else if (a2 == 5120)
      {
        return 5;
      }

      else
      {
        if (a2 != 5121)
        {
          return 41;
        }

        if (a3)
        {
          return 37;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (a2 <= 5125)
    {
      if (a2 == 5124)
      {
        return 33;
      }

      else
      {
        return 29;
      }
    }

    else
    {
      switch(a2)
      {
        case 5126:
          return 13;
        case 5130:
          return 17;
        case 5131:
          return 9;
        default:
          return 41;
      }
    }
  }

  if (this <= 36491)
  {
    if (this != 33319)
    {
      if (this != 33777)
      {
        if (this == 33779)
        {
          return 45;
        }

        goto LABEL_52;
      }

      return 44;
    }

    goto LABEL_28;
  }

  if (this > 36493)
  {
    if (this == 36494)
    {
      return 40;
    }

    if (this != 36495)
    {
      goto LABEL_52;
    }

    return 41;
  }

  if (this == 36492)
  {
    return 42;
  }

  else
  {
    return 43;
  }
}

double pxrInternal__aapl__pxrReserved__::GlfCheckGLFrameBufferStatus(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCheckFramebufferStatus();
  if (v3 > 36057)
  {
    if (v3 <= 36059)
    {
      if (v3 == 36058)
      {
        if (!a2)
        {
          return result;
        }

        v7 = "Framebuffer incomplete formats";
      }

      else
      {
        if (!a2)
        {
          return result;
        }

        v7 = "Framebuffer incomplete draw buffer";
      }

      goto LABEL_26;
    }

    if (v3 == 36060)
    {
      if (!a2)
      {
        return result;
      }

      v7 = "Framebuffer incomplete read buffer";
      goto LABEL_26;
    }

    if (v3 == 36061)
    {
      if (!a2)
      {
        return result;
      }

      v7 = "Framebuffer unsupported";
      goto LABEL_26;
    }
  }

  else if (v3 > 36054)
  {
    if (v3 == 36055)
    {
      if (!a2)
      {
        return result;
      }

      v7 = "Framebuffer incomplete missing attachment";
      goto LABEL_26;
    }

    if (v3 == 36057)
    {
      if (!a2)
      {
        return result;
      }

      v7 = "Framebuffer incomplete dimensions";
      goto LABEL_26;
    }
  }

  else
  {
    if (v3 == 36053)
    {
      return result;
    }

    if (v3 == 36054)
    {
      if (!a2)
      {
        return result;
      }

      v7 = "Framebuffer incomplete attachment";
LABEL_26:
      MEMORY[0x29C2C1A60](a2, v7);
      return result;
    }
  }

  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Framebuffer error 0x%x", v4, v5, v3);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  return *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76);
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 1) != v4[1] || *(v3 + 2) != v4[2])
    {
      return 0;
    }

    v3 += 12;
    v4 += 3;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36);
}

{
  return *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32);
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a2 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 24);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 16) : *(a1 + 16);
  v9 = v7 >= 0 ? (a2 + 16) : *(a2 + 16);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  v12 = *(a2 + 63);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 48);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v16 = *(a1 + 40);
  v15 = (a1 + 40);
  v14 = v16;
  if (v10 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v20 = *(a2 + 40);
  v19 = (a2 + 40);
  v18 = v20;
  if (v13 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  return memcmp(v17, v21, v11) == 0;
}

{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 - v2 != *(a2 + 16) - *(a2 + 8))
  {
    return 0;
  }

  if (v2 != v3)
  {
    pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48);
}

{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 8) : *(a1 + 8);
  v9 = v7 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 55);
  if (v10 >= 0)
  {
    v11 = *(a1 + 55);
  }

  else
  {
    v11 = *(a1 + 40);
  }

  v12 = *(a2 + 55);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 40);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 32) : *(a1 + 32);
  v15 = v13 >= 0 ? (a2 + 32) : *(a2 + 32);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 79);
  if (v16 >= 0)
  {
    v17 = *(a1 + 79);
  }

  else
  {
    v17 = *(a1 + 64);
  }

  v18 = *(a2 + 79);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 64);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 56) : *(a1 + 56);
  v21 = v19 >= 0 ? (a2 + 56) : *(a2 + 56);
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

  v22 = *(a1 + 103);
  if (v22 >= 0)
  {
    v23 = *(a1 + 103);
  }

  else
  {
    v23 = *(a1 + 88);
  }

  v24 = *(a2 + 103);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 88);
  }

  if (v23 == v24 && (v22 >= 0 ? (v26 = (a1 + 80)) : (v26 = *(a1 + 80)), v25 >= 0 ? (v27 = (a2 + 80)) : (v27 = *(a2 + 80)), !memcmp(v26, v27, v23) && *(a1 + 104) == *(a2 + 104)))
  {
    return (*(a2 + 112) ^ *(a1 + 112)) < 8uLL;
  }

  else
  {
    return 0;
  }
}

{
  return *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 41) == *(a2 + 41) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 60) == *(a2 + 60);
}

{
  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76);
}

{
  return *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
}

{
  v4 = *(a1 + 344);
  if (v4)
  {
    v5 = (*(*v4 + 56))(v4, &unk_2A207E278);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 344);
  if (v6)
  {
    v6 = (*(*v6 + 56))(v6, &unk_2A207E278);
  }

  if (v5)
  {
    v5 = *v5;
  }

  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || (*(a2 + 16) ^ *(a1 + 16)) > 7 || (*(a2 + 24) ^ *(a1 + 24)) > 7 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==((a1 + 40), (a2 + 40));
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==((a1 + 168), (a2 + 168));
    if (result)
    {
      v9 = sub_29ACCCFF8((a1 + 296), a2 + 296);
      result = 0;
      if (v9)
      {
        if (v5 == v7)
        {
          result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::operator==(a1 + 352, a2 + 352);
          if (result)
          {
            return *(a1 + 464) == *(a2 + 464);
          }
        }
      }
    }
  }

  return result;
}

{
  return *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56);
}

{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    v5 += 8;
    ++v6;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a2 + 32);
  if (v8 - v9 != *(a2 + 40) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    v9 += 8;
    ++v10;
  }

  result = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::operator==(a1 + 120, a2 + 120);
  if (result)
  {
    if (*(a1 + 192) == *(a2 + 192) && *(a1 + 196) == *(a2 + 196) && *(a1 + 200) == *(a2 + 200) && *(a1 + 204) == *(a2 + 204))
    {
      return *(a1 + 56) == *(a2 + 56);
    }

    return 0;
  }

  return result;
}

{
  return *a1 == *a2 && *(a1 + 32) == *(a2 + 32) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 36) == *(a2 + 36);
}

{
  v3 = 0;
  if (sub_29B0EA6B0(a1, a2))
  {
    v3 = 0;
    if (sub_29B0EA6B0(a1 + 8, a2 + 8))
    {
      return (*(a1 + 16) & 1) == (*(a2 + 16) & 1);
    }
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::operator!=(uint64_t a1, uint64_t a2)
{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return *a1 != *a2 || *(a1 + 4) != *(a2 + 4);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

void *pxrInternal__aapl__pxrReserved__::HgiBlitCmds::HgiBlitCmds(pxrInternal__aapl__pxrReserved__::HgiBlitCmds *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiCmds::HgiCmds(this);
  *result = &unk_2A2072B60;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiBuffer::HgiBuffer(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A2072C00;
  v4 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 48) = v6;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiBuffer::~HgiBuffer(void **this)
{
  *this = &unk_2A2072C00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && v7[4] == v6[4];
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && v7[4] == v6[4] && *(v7 + 10) == *(v6 + 10);
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 6) != *(v6 + 6) || v7[5] != v6[5])
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::operator==(v7 + 48, v6 + 48);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 128) != *(v6 + 128) || *(v7 + 129) != *(v6 + 129) || *(v7 + 130) != *(v6 + 130) || *(v7 + 33) != *(v6 + 33))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::operator==((v7 + 17), (v6 + 17));
  if (!result)
  {
    return result;
  }

  result = sub_29AB871B0(v7 + 22, v6 + 22);
  if (!result)
  {
    return result;
  }

  result = sub_29AB87224(v7 + 25, v6 + 25);
  if (!result)
  {
    return result;
  }

  result = pxrInternal__aapl__pxrReserved__::operator==((v7 + 28), (v6 + 28));
  if (!result)
  {
    return result;
  }

  if (*(v7 + 304) != *(v6 + 304))
  {
    return 0;
  }

  return *(v7 + 77) == *(v6 + 77) && *(v7 + 78) == *(v6 + 78);
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = v7[3];
  v9 = v7[4];
  v10 = v6[3];
  if (v9 - v8 != v6[4] - v10)
  {
    return 0;
  }

  while (v8 != v9)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v8, v10);
    if (!result)
    {
      return result;
    }

    v8 += 11;
    v10 += 88;
  }

  v14 = v7 + 6;
  v12 = v7[6];
  v13 = v14[1];
  v16 = v6 + 6;
  v15 = v6[6];
  if (v13 - v12 != v16[1] - v15)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v12, v15);
    if (!result)
    {
      break;
    }

    v12 += 8;
    v15 += 64;
  }

  while (v12 != v13);
  return result;
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && v7[6] == v6[6] && v7[7] == v6[7] && v7[8] == v6[8] && v7[9] == v6[9] && v7[10] == v6[10] && v7[11] == v6[11] && v7[15] == v6[15];
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && *(v7 + 7) == *(v6 + 7) && *(v7 + 8) == *(v6 + 8) && v7[5] == v6[5] && *(v7 + 48) == *(v6 + 48);
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 == v10 && (v8 >= 0 ? (v12 = v7 + 3) : (v12 = v7[3]), v11 >= 0 ? (v13 = v6 + 3) : (v13 = v6[3]), !memcmp(v12, v13, v9) && *(v7 + 12) == *(v6 + 12) && *(v7 + 13) == *(v6 + 13) && *(v7 + 14) == *(v6 + 14)))
  {
    return *(v7 + 60) == *(v6 + 60);
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9) || *(v7 + 12) != *(v6 + 12) || *(v7 + 13) != *(v6 + 13) || *(v7 + 14) != *(v6 + 14) || *(v7 + 15) != *(v6 + 15) || *(v7 + 16) != *(v6 + 16) || !sub_29A1B00DC(v7 + 9, v6 + 9))
  {
    return 0;
  }

  return sub_29A1B00DC(v7 + 12, v6 + 12);
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = v7[6];
  v15 = v7[7];
  v16 = v6[6];
  if (v15 - v14 != v6[7] - v16)
  {
    return 0;
  }

  while (v14 != v15)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v14, v16);
    if (!result)
    {
      return result;
    }

    v14 += 56;
    v16 += 7;
  }

  v18 = *(v7 + 95);
  if (v18 >= 0)
  {
    v19 = *(v7 + 95);
  }

  else
  {
    v19 = v7[10];
  }

  v20 = *(v6 + 95);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v6[10];
  }

  if (v19 == v20 && (v18 >= 0 ? (v22 = v7 + 9) : (v22 = v7[9]), v21 >= 0 ? (v23 = v6 + 9) : (v23 = v6[9]), !memcmp(v22, v23, v19)))
  {
    return *(v7 + 24) == *(v6 + 24);
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v14 = v7[3];
  v13 = v7 + 3;
  v12 = v14;
  if (v8 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v18 = v6[3];
  v17 = v6 + 3;
  v16 = v18;
  if (v11 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  return memcmp(v15, v19, v9) == 0;
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  if (*(v7 + 6) != *(v6 + 6))
  {
    return 0;
  }

  v8 = v7[7];
  v9 = v7[8];
  v10 = v6[7];
  if (v9 - v8 != v6[8] - v10)
  {
    return 0;
  }

  while (v8 != v9)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v8, v10);
    if (!result)
    {
      return result;
    }

    v8 += 56;
    v10 += 7;
  }

  v12 = v7[13];
  v13 = v7[14];
  v14 = v6[13];
  if (v13 - v12 != v6[14] - v14)
  {
    return 0;
  }

  while (v12 != v13)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v12, v14);
    if (!result)
    {
      return result;
    }

    v12 += 120;
    v14 += 15;
  }

  v15 = v7[19];
  v16 = v7[20];
  v17 = v6[19];
  if (v16 - v15 != v6[20] - v17)
  {
    return 0;
  }

  while (v15 != v16)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v15, v17);
    if (!result)
    {
      return result;
    }

    v15 += 120;
    v17 += 15;
  }

  v18 = v7[22];
  v19 = v7[23];
  v20 = v6[22];
  if (v19 - v18 != v6[23] - v20)
  {
    return 0;
  }

  while (v18 != v19)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v18, v20);
    if (!result)
    {
      return result;
    }

    v18 += 120;
    v20 += 15;
  }

  if (*(v7 + 62) != *(v6 + 62) || *(v7 + 63) != *(v6 + 63) || *(v7 + 64) != *(v6 + 64))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::operator==((v7 + 33), (v6 + 33));
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==((v7 + 41), (v6 + 41));
    if (result)
    {
      return *(v7 + 360) == *(v6 + 360);
    }
  }

  return result;
}

{
  return *a1 == *a2 && a1[1] == a2[1];
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && *(v7 + 7) == *(v6 + 7) && *(v7 + 8) == *(v6 + 8) && *(v7 + 9) == *(v6 + 9) && *(v7 + 10) == *(v6 + 10) && *(v7 + 11) == *(v6 + 11) && *(v7 + 12) == *(v6 + 12) && *(v7 + 13) == *(v6 + 13) && *(v7 + 14) == *(v6 + 14) && *(v7 + 15) == *(v6 + 15) && *(v7 + 17) == *(v6 + 17) && v7[9] == v6[9];
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && *(v7 + 14) == *(v6 + 14) && *(v7 + 15) == *(v6 + 15) && v7[5] == v6[5] && *(v7 + 24) == *(v6 + 24) && *(v7 + 25) == *(v6 + 25);
}

{
  return a1[2] == a2[2] && (a2[3] ^ a1[3]) <= 7 && *a1 == *a2 && (a2[1] ^ a1[1]) < 8uLL;
}

{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  if (a1[3] != a2[3])
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 != a1 + 2)
  {
    if ((*(a2[1] + 32) ^ v4[4]) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::operator==();
    }

    return 0;
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a1 + 5;
  if (v5 == a1 + 5)
  {
    return 1;
  }

  v7 = a2[4];
  do
  {
    result = sub_29AC45228(&v14, v5 + 4, v7 + 4);
    if (!result)
    {
      break;
    }

    v9 = v5[1];
    v10 = v5;
    if (v9)
    {
      do
      {
        v5 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v5 = v10[2];
        v11 = *v5 == v10;
        v10 = v5;
      }

      while (!v11);
    }

    v12 = v7[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = v7[2];
        v11 = *v13 == v7;
        v7 = v13;
      }

      while (!v11);
    }

    v7 = v13;
  }

  while (v5 != v6);
  return result;
}

{
  return *a1 == *a2 && a1[1] == a2[1];
}

{
  return (*a2 ^ *a1) < 8uLL;
}

{
  return (*a2 ^ *a1) < 8uLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiCmds::HgiCmds(uint64_t this)
{
  *this = &unk_2A2072C48;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_2A2072C48;
  *(this + 8) = 0;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::HgiComputeCmds::HgiComputeCmds(pxrInternal__aapl__pxrReserved__::HgiComputeCmds *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiCmds::HgiCmds(this);
  *result = &unk_2A2072C80;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HgiComputeCmdsDesc::HgiComputeCmdsDesc(_DWORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}

{
  return *a1 == *a2;
}

{
  return *a1 == *a2 && a1[1] == a2[1];
}

{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::operator!=(_DWORD *a1, _DWORD *a2)
{
  return *a1 != *a2;
}

{
  return *a1 != *a2;
}

{
  return *a1 != *a2 || a1[1] != a2[1];
}

{
  return *a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2];
}

{
  return *a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3];
}

_DWORD *pxrInternal__aapl__pxrReserved__::HgiComputeShaderConstantsDesc::HgiComputeShaderConstantsDesc(_DWORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *this)
{
  result = 0.0;
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::operator!=(void *a1, void *a2)
{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return *a1 != *a2 || a1[1] != a2[1];
}

{
  return (*a2 ^ *a1) > 7uLL;
}

{
  return (*a2 ^ *a1) > 7uLL;
}

pxrInternal__aapl__pxrReserved__::HgiComputePipeline *pxrInternal__aapl__pxrReserved__::HgiComputePipeline::HgiComputePipeline(pxrInternal__aapl__pxrReserved__::HgiComputePipeline *this, const pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *a2)
{
  *this = &unk_2A2072D00;
  v4 = this + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  *(this + 12) = *(a2 + 10);
  *(this + 2) = v6;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiComputePipeline::~HgiComputePipeline(void **this)
{
  *this = &unk_2A2072D00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2A2072D00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2A2072D00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  operator delete(this);
}

void sub_29AB86504()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072D20, 0, "HGI_DEBUG_DEVICE_CAPABILITIES", 0);
  v0 = sub_29AB865CC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HGI_DEBUG_DEVICE_CAPABILITIES", "Hgi report when device capabilities are initialized and dump contents");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072D20, 1, "HGI_DEBUG_INSTANCE_CREATION", 0);
  v1 = sub_29AB865CC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HGI_DEBUG_INSTANCE_CREATION", "Hgi report when attempting to create an Hgi instance");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072D20, 2, "HGI_DEBUG_IS_SUPPORTED", 0);
  v2 = sub_29AB865CC() + 8;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2, "HGI_DEBUG_IS_SUPPORTED", "Hgi debug info when IsBackendSupported() is false");
}

uint64_t sub_29AB865CC()
{
  if ((atomic_load_explicit(&qword_2A14F9530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9530))
  {
    v1 = operator new(0xCuLL);
    v1[2] = 0;
    *v1 = 0;
    qword_2A14F9528 = v1;
    __cxa_guard_release(&qword_2A14F9530);
  }

  return qword_2A14F9528;
}

void *pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::HgiGraphicsCmds(pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiCmds::HgiCmds(this);
  *result = &unk_2A2072D40;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(uint64_t *a1, uint64_t *a2)
{
  result = pxrInternal__aapl__pxrReserved__::operator==((a1 + 3), (a2 + 3));
  if (result)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *a2;
    if (v6 - *a1 != a2[1] - *a2)
    {
      return 0;
    }

    while (v5 != v6)
    {
      result = pxrInternal__aapl__pxrReserved__::operator==(v5, v7);
      if (!result)
      {
        return result;
      }

      v5 += 80;
      v7 += 80;
    }

    if (a1[20] != a2[20])
    {
      return 0;
    }

    if (a1[22] != a2[22])
    {
      return 0;
    }

    v9 = a1[13];
    v8 = a1[14];
    v10 = a2[13];
    if (v8 - v9 != a2[14] - v10)
    {
      return 0;
    }

    if (v9 != v8)
    {
      v11 = (v10 + 8);
      do
      {
        v12 = *v11;
        v11 += 2;
        if (*(v9 + 8) != v12)
        {
          return 0;
        }

        v9 += 16;
      }

      while (v9 != v8);
    }

    v14 = a1[16];
    v13 = a1[17];
    v15 = a2[16];
    if (v13 - v14 != a2[17] - v15)
    {
      return 0;
    }

    if (v14 == v13)
    {
      return 1;
    }

    else
    {
      v16 = (v15 + 8);
      v17 = v14 + 16;
      do
      {
        v18 = *v16;
        v16 += 2;
        result = *(v17 - 8) == v18;
        v19 = *(v17 - 8) != v18 || v17 == v13;
        v17 += 16;
      }

      while (!v19);
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc *this)
{
  *&result = 13;
  *this = 13;
  *(this + 2) = 0;
  return result;
}

{
  *&result = 13;
  *this = 13;
  *(this + 2) = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *&result = 1;
  *(this + 4) = 1;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *&result = 1;
  *(this + 4) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMultiSampleState::HgiMultiSampleState(uint64_t this)
{
  *this = 1;
  *(this + 2) = 0;
  *(this + 4) = 1;
  return this;
}

{
  *this = 1;
  *(this + 2) = 0;
  *(this + 4) = 1;
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::operator!=(unsigned __int8 *a1, unsigned __int8 *a2)
{
  return *a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || *(a1 + 1) != *(a2 + 1);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return *a1 != *a2;
}

{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 | v3))
  {
    return 0;
  }

  return v2 != v3 || *(a1 + 1) != *(a2 + 1);
}

{
  return !pxrInternal__aapl__pxrReserved__::operator==(a1, a2);
}

{
  return *a1 != *a2 || a1[1] != a2[1];
}

double pxrInternal__aapl__pxrReserved__::HgiRasterizationState::HgiRasterizationState(pxrInternal__aapl__pxrReserved__::HgiRasterizationState *this)
{
  *this = 0x3F80000000000000;
  *(this + 1) = 0x100000002;
  *(this + 8) = 1;
  result = 0.0078125;
  *(this + 20) = 0x3F80000000000000;
  *(this + 28) = 0;
  *(this + 4) = 0;
  return result;
}

{
  *this = 0x3F80000000000000;
  *(this + 1) = 0x100000002;
  *(this + 8) = 1;
  result = 0.0078125;
  *(this + 20) = 0x3F80000000000000;
  *(this + 28) = 0;
  *(this + 4) = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiDepthStencilState::HgiDepthStencilState(pxrInternal__aapl__pxrReserved__::HgiDepthStencilState *this)
{
  *this = 257;
  *(this + 1) = 1;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  *(this + 6) = 7;
  *(this + 36) = 0;
  *(this + 28) = 0;
  result = NAN;
  *(this + 44) = -1;
  *(this + 13) = 7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = -1;
  return result;
}

{
  *this = 257;
  *(this + 1) = 1;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  *(this + 6) = 7;
  *(this + 36) = 0;
  *(this + 28) = 0;
  result = NAN;
  *(this + 44) = -1;
  *(this + 13) = 7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = -1;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiStencilState::HgiStencilState(pxrInternal__aapl__pxrReserved__::HgiStencilState *this)
{
  *this = 7;
  *(this + 12) = 0;
  *(this + 4) = 0;
  result = NAN;
  *(this + 20) = -1;
  return result;
}

{
  *this = 7;
  *(this + 12) = 0;
  *(this + 4) = 0;
  result = NAN;
  *(this + 20) = -1;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || a1[8] != a2[8] || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || a1[20] != a2[20] || !pxrInternal__aapl__pxrReserved__::operator==((a1 + 24), (a2 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::operator==((a1 + 52), (a2 + 52));
}

{
  return *a1 == *a2;
}

{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 | v3))
  {
    return 1;
  }

  return v2 == v3 && *(a1 + 1) == *(a2 + 1);
}

{
  return *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8) && *(a1 + 44) == *(a2 + 44) && *(a1 + 52) == *(a2 + 52) && *(a1 + 60) == *(a2 + 60);
}

{
  return *a1 == *a2 && a1[1] == a2[1];
}

double pxrInternal__aapl__pxrReserved__::HgiGraphicsShaderConstantsDesc::HgiGraphicsShaderConstantsDesc(pxrInternal__aapl__pxrReserved__::HgiGraphicsShaderConstantsDesc *this)
{
  *&result = 0x200000000;
  *this = 0x200000000;
  return result;
}

{
  *&result = 0x200000000;
  *this = 0x200000000;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiTessellationLevel::HgiTessellationLevel(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HgiTessellationState::HgiTessellationState(pxrInternal__aapl__pxrReserved__::HgiTessellationState *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 257;
  *(this + 13) = 1;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 68) = 0;
  *(this + 18) = 7;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 92) = -1;
  *(this + 25) = 7;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = -1;
  *(this + 64) = 1;
  *(this + 130) = 0;
  *(this + 132) = 1;
  *(this + 35) = 1065353216;
  *(this + 18) = 0x100000002;
  *(this + 76) = 1;
  *(this + 156) = 0x3F80000000000000;
  *(this + 164) = 0;
  result = 0.0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 14) = xmmword_29B6C6450;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 15;
  *(this + 260) = 0;
  *(this + 77) = 0;
  *(this + 289) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 78) = 2;
  *(this + 87) = 0;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  return result;
}

BOOL sub_29AB871B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 40;
    v4 += 40;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_29AB87224(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 80;
    v4 += 80;
  }

  while (v2 != v3);
  return result;
}