id sub_22EEF6CB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 debugMetroStateValue];
  *a2 = result;
  return result;
}

uint64_t sub_22EEF6CE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF6DF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF6E3C()
{
  sub_22EF708C8(v0[2], v0[3]);
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_22EF708C8(v0[4], v1);
  }

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_22EF708C8(v0[6], v2);
  }

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    sub_22EF708C8(v0[8], v3);
  }

  v4 = v0[11];
  if (v4 >> 60 != 15)
  {
    sub_22EF708C8(v0[10], v4);
  }

  v5 = v0[13];
  if (v5 >> 60 != 15)
  {
    sub_22EF708C8(v0[12], v5);
  }

  v6 = v0[15];
  if (v6 >> 60 != 15)
  {
    sub_22EF708C8(v0[14], v6);
  }

  v7 = v0[17];
  if (v7 >> 60 != 15)
  {
    sub_22EF708C8(v0[16], v7);
  }

  v8 = v0[19];
  if (v8 >> 60 != 15)
  {
    sub_22EF708C8(v0[18], v8);
  }

  v9 = v0[21];
  if (v9 >> 60 != 15)
  {
    sub_22EF708C8(v0[20], v9);
  }

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

BOOL sub_22EEF6FB4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22EEF6FE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22EEF7010@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22EEF70FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22EFB32B8(a1);

  *a2 = v3;
  return result;
}

void sub_22EEF713C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -64;
  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_22EEF7164()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF71BC()
{
  sub_22EF708C8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22EEF71F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s24AppletTranslationLibrary9ASN1ErrorOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

void *sub_22EEF726C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22EEF729C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void OVM::InterpreterImpl::RunSubroutine(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(a1[6], a2);
  if (a1[6] + 8 == v8)
  {
    *(&v20.__r_.__value_.__s + 23) = 17;
    strcpy(&v20, "No script named <");
    v10 = *(a2 + 23);
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
      v12 = *(a2 + 8);
    }

    v13 = std::string::append(&v20, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v21, "> found", 7uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    OVM::Error::Error<>(&v25, __p);
    v17 = v26;
    v18 = v25;
    v26 = 0;
    v25 = 0uLL;
    v27 = &v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    *a4 = v18;
    *(a4 + 16) = v17;
    memset(v24, 0, 24);
    *(a4 + 24) = 0;
    *&v25 = v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = *(v8 + 64);
    v19[0] = *(v8 + 56);
    v19[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    OVM::InterpreterImpl::RunSubroutine(a1, v19, a3, &v25);
    *a4 = v25;
    *(a4 + 16) = v26;
    *(a4 + 24) = 1;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_22EEFDC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EEFDCDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::string *a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    a13 = (*(*v24 + 16))(v24);
    operator new();
  }

  JUMPOUT(0x22EEFDCD4);
}

void sub_22EEFDE08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x22EEFDCD4);
}

uint64_t OVM::InterpreterImpl::RunSubroutine@<X0>(OVM::InterpreterImpl *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = **a2;
  v7 = ((*a2)[1] - v6) >> 5;
  v9 = *a3;
  v8 = a3[1];
  if (v7 != 0xAAAAAAAAAAAAAAABLL * ((v8 - *a3) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    StringUtil::Format("Expected %zu parameters but passed %zu", __p, ((*a2)[1] - **a2) >> 5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    MEMORY[0x2318FB7C0](exception, __p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v8 != v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v9 + 24 * v11);
      if (*(v6 + 32 * v11) != v13)
      {
        v16 = v6 + 32 * v11;
        v17 = (v16 + 8);
        if (*(v16 + 31) < 0)
        {
          v17 = *v17;
        }

        StringUtil::Format("Parameter %u (%s) expected type %d, got type %d", __p, v12, v17, *(v6 + 32 * v11), v13);
        v18 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7C0](v18, __p);
        __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = (v12 + 1);
      v12 = v11;
    }

    while (v7 > v11);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::emplace_back<>(a1);
  if (a3[1] != *a3)
  {
    operator new();
  }

  *a4 = 1;
  a4[4] = 0;
  v14 = (*a2)[3];
  v15 = (*a2)[4];
  while (v14 != v15)
  {
    OVM::InterpreterImpl::Evaluate(a1, *v14, &v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    ++v14;
  }

  return std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::pop_back(a1);
}

void OVM::Error::Unexpected<char const*,std::string>(char **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  OVM::Error::Error<std::string>(&v7, __p, a2);
  *a3 = v7;
  *(a3 + 16) = v8;
  v8 = 0;
  v7 = 0uLL;
  v9 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EEFE24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void StringUtil::Format(StringUtil *this@<X0>, _BYTE *a2@<X8>, ...)
{
  va_start(va, a2);
  __s = 0;
  vasprintf(&__s, this, va);
  if (__s)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, __s);
    free(__s);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<FAILED TO VASPRINTF>");
  }
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this@<X0>, const OVM::Expression **a2@<X1>, uint64_t *a3@<X8>)
{
  switch(*(a2 + 2))
  {
    case 0:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 1:

      OVM::InterpreterImpl::Evaluate(this, a2, a3);
      break;
    case 2:

      OVM::InterpreterImpl::Evaluate(this, a2, a3);
    case 3:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 4:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 5:
      OVM::InterpreterImpl::Evaluate(this, a2);
    case 6:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 7:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 8:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 9:
      operator new();
    case 0xA:

      OVM::InterpreterImpl::Evaluate(this, a2, a3);
      break;
    case 0xB:

      OVM::InterpreterImpl::Evaluate(this, a2, a3);
      break;
    case 0xC:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 0xD:

      OVM::InterpreterImpl::Evaluate(this, a2);
    case 0xE:
      operator new();
    case 0xF:

      OVM::InterpreterImpl::Evaluate(this, a2);
      break;
    default:
      printf("EVALUATE %d\n", *(a2 + 2));
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, ":shrug:");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2);
  v5 = *(a2 + 3);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        if (*(v12 + 16) == 1)
        {
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      if (*(v12 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (v5 == 6)
    {
      v11[0] = v12;
      v11[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      OVM::InterpreterImpl::EvaluateTruthiness(v11);
      operator new();
    }

    if (v5 == 7)
    {
      if (*(v12 + 16) == 1)
      {
        v8 = *(v12 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    goto LABEL_29;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        operator new();
      }

LABEL_29:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Unsupported unary operator");
      goto LABEL_33;
    }

    if (*v12 != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Deref a not-pointer?");
LABEL_33:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*(v12 + 16) == 3)
    {
      *a3 = *(v12 + 8);
      operator new();
    }

LABEL_28:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v5 == 2)
  {
    v6 = v12;
    if (*(v12 + 16) != 1)
    {
      goto LABEL_28;
    }

    v7 = *(v12 + 8) - 1;
  }

  else
  {
    v6 = v12;
    if (*(v12 + 16) != 1)
    {
      goto LABEL_28;
    }

    v7 = *(v12 + 8) + 1;
  }

  *(v6 + 8) = v7;
  v9 = v13;
  *a3 = v6;
  a3[1] = v9;
  v12 = 0;
  v13 = 0;
}

uint64_t OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *a1, const OVM::Expression **a2)
{
  v3 = *a2;
  if (!v3)
  {
    OVM::InterpreterImpl::Evaluate();
  }

  return OVM::InterpreterImpl::Evaluate(a1, v3);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::Expression **a2)
{
  v4 = a2 + 6;
  if (a2[6])
  {
    OVM::InterpreterImpl::Evaluate(this, a2 + 6);
    v5 = *(this + 5) + *(this + 4) - 1;
    v6 = a2 + 2;
    v7 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(*(this + 1) + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA), a2 + 2);
    v8 = *(this + 5) + *(this + 4) - 1;
    if (*(*(this + 1) + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA) + 8 == v7)
    {
      if (!*v4 || (v9 = *(a2 + 10), *v13 == v9))
      {
        operator new();
      }

      if (*(a2 + 39) < 0)
      {
        v6 = *v6;
      }

      StringUtil::Format("Initializing expr for variable %s is %d expected %d", v12, v6, *v13, v9);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7C0](exception, v12);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x2318FB7C0](v10, v12);
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  operator new();
}

{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2);
  v4 = OVM::InterpreterImpl::EvaluateTruthiness(&v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v5 = 6;
  if (v4)
  {
    v5 = 3;
  }

  v6 = &a2[v5];
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    OVM::InterpreterImpl::Evaluate(this, v7);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    ++v7;
  }

  operator new();
}

{
  exception = __cxa_allocate_exception(0x18uLL);
  OVM::InterpreterImpl::Evaluate(this, a2 + 2);
  *exception = &unk_2843B5BA0;
  *(exception + 8) = v5;
}

void sub_22EEFE954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OVM::InterpreterImpl::Evaluate@<X0>(OVM::InterpreterImpl *this@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 5) + *(this + 4) - 1;
  v7 = a2 + 2;
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(*(this + 1) + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA), a2 + 2);
  v9 = *(this + 5) + *(this + 4) - 1;
  if (*(*(this + 1) + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA) + 8 == result)
  {
    v11 = *(this + 8);
    if (v11 && *(this + 8) + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(v11, v7))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a2 + 39) < 0)
    {
      v7 = *v7;
    }

    StringUtil::Format("NameError, cannot resolve reference to %s", v13, v7);
    MEMORY[0x2318FB7C0](exception, v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(result + 64);
  *a3 = *(result + 56);
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_22EEFEB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this@<X0>, const OVM::ObjCMessage *a2@<X1>, void *a3@<X8>)
{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2);
  if (*v29 == 3)
  {
    if (*(v29 + 16) == 2)
    {
      v6 = a2 + 56;
      if (*(a2 + 79) < 0)
      {
        v6 = *v6;
      }

      v24 = *(v29 + 8);
      Uid = sel_getUid(v6);
      v23 = Uid;
      __src = 0;
      v27 = 0;
      v28 = 0;
      v8 = *(a2 + 3);
      for (i = *(a2 + 4); v8 != i; ++v8)
      {
        Uid = OVM::InterpreterImpl::Evaluate(this, v8);
        v10 = v27;
        if (v27 >= v28)
        {
          v12 = __src;
          v13 = v27 - __src;
          v14 = (v27 - __src) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v16 = v28 - __src;
          if ((v28 - __src) >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          v30[4] = &__src;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<OVM::Var>>>(&__src, v17);
          }

          *(16 * v14) = v25;
          v11 = 16 * v14 + 16;
          memcpy(0, v12, v13);
          v18 = __src;
          v19 = v28;
          __src = 0;
          v27 = v11;
          v28 = 0;
          v30[2] = v18;
          v30[3] = v19;
          v30[0] = v18;
          v30[1] = v18;
          Uid = std::__split_buffer<std::shared_ptr<OVM::Var>>::~__split_buffer(v30);
        }

        else
        {
          *v27 = v25;
          v11 = (v10 + 16);
        }

        v27 = v11;
      }

      *a3 = 0;
      a3[1] = 0;
      v20 = *(a2 + 12);
      if (*(a2 + 20))
      {
        if (v20 == 3)
        {
          OVM::InterpreterImpl::EvaluateObjCMessageVariadicNSObjectReturn(Uid, v24, v23, *(a2 + 20), &__src);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7B0](exception, "Variadic ObjC methods only support returning NSObject");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v20 == 3)
      {
        OVM::InterpreterImpl::EvaluateObjCMessageNSObjectReturn(Uid, v24, v23, &__src);
      }

      OVM::InterpreterImpl::EvaluateObjCMessageNonobjectReturn(Uid, v24, v23, v20, &__src);
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2318FB7B0](v21, "Attempting to send to a non NSObj");
  __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFEE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  a13 = &a16;
  std::vector<std::shared_ptr<OVM::Var>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::ObjCClass *a2)
{
  v3 = (a2 + 16);
  if ((***(this + 9))(*(this + 9), a2 + 16))
  {
    if (*(a2 + 39) < 0)
    {
      v4 = *v3;
    }

    else
    {
      v4 = v3;
    }

    if (objc_getClass(v4))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *(&v12.__r_.__value_.__s + 23) = 16;
    strcpy(&v12, "Cannot get class");
    v7 = *(a2 + 39);
    if (v7 >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *(a2 + 2);
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 39);
    }

    else
    {
      v9 = *(a2 + 3);
    }

    v10 = std::string::append(&v12, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x2318FB7C0](exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x2318FB7C0](v5, &v13);
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFF0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::FunctionCall *a2)
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  v3 = *(a2 + 2);
  for (i = *(a2 + 3); v3 != i; ++v3)
  {
    OVM::InterpreterImpl::Evaluate(this, v3);
    v5 = v23;
    if (v23 >= v24)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v23 - __p) >> 3);
      v9 = v8 + 1;
      if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v24 - __p) >> 3) > v9)
      {
        v9 = 0x5555555555555556 * ((v24 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(&__p, v10);
      }

      v11 = 8 * ((v23 - __p) >> 3);
      v12 = *v20;
      *(v11 + 16) = *(v20 + 2);
      *v11 = v12;
      v7 = 24 * v8 + 24;
      v13 = (v11 - (v23 - __p));
      memcpy(v13, __p, v23 - __p);
      v14 = __p;
      __p = v13;
      v23 = v7;
      v24 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      v6 = *v20;
      *(v23 + 16) = *(v20 + 2);
      *v5 = v6;
      v7 = v5 + 24;
    }

    v23 = v7;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v15 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(this + 6), a2 + 5);
  if (*(this + 6) + 8 != v15)
  {
    v16 = *(v15 + 64);
    v19[0] = *(v15 + 56);
    v19[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    OVM::InterpreterImpl::RunSubroutine(&v20, this, v19, &__p);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x2318FB7C0](exception, &v20);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFF394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a19)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::StringLiteral *a2)
{
  v2 = (a2 + 16);
  if (*(a2 + 39) < 0)
  {
    v2 = *v2;
  }

  [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:1];
  operator new();
}

void sub_22EEFF594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this@<X0>, const OVM::Expression **a2@<X1>, void *a3@<X8>)
{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2);
  OVM::InterpreterImpl::Evaluate(this, a2 + 3);
  *a3 = 0;
  a3[1] = 0;
  switch(*(a2 + 8))
  {
    case 0:
      v6 = *(v43 + 16);
      v7 = v45;
      *v45 = *v43;
      *(v45 + 16) = v6;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a3 = v45;
      a3[1] = v46;
      break;
    case 1:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v27 = *(v45 + 8);
        v28 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 2:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v20 = *(v45 + 8);
        v21 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 3:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v23 = *(v45 + 8);
        v24 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 4:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v14 = *(v45 + 8);
        v15 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 5:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v31 = *(v45 + 8);
        v32 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 6:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v35 = *(v45 + 8);
        v36 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 7:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v25 = *(v45 + 8);
        v26 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 8:
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = *(v45 + 16);
      if (v40 != -1)
      {
        v48 = &v47;
        (*(&off_2843B5C28 + v40))(&v48, v45 + 8);
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = *(v43 + 16);
        if (v41 != -1)
        {
          v48 = &v47;
          (*(&off_2843B5C28 + v41))(&v48, v43 + 8);
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 9:
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(v45 + 16);
      if (v18 != -1)
      {
        v48 = &v47;
        (*(&off_2843B5C28 + v18))(&v48, v45 + 8);
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(v43 + 16);
        if (v19 != -1)
        {
          v48 = &v47;
          (*(&off_2843B5C28 + v19))(&v48, v43 + 8);
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xA:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v37 = *(v45 + 8);
        v38 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xB:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v12 = *(v45 + 8);
        v13 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xC:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v16 = *(v45 + 8);
        v17 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xD:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v33 = *(v45 + 8);
        v34 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xE:
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v45 + 16);
      if (v10 != -1)
      {
        v48 = &v47;
        if ((*(&off_2843B5C28 + v10))(&v48, v45 + 8))
        {
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = *(v43 + 16);
          if (v11 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v48 = &v47;
          (*(&off_2843B5C28 + v11))(&v48, v43 + 8);
        }

        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xF:
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *(v45 + 16);
      if (v22 != -1)
      {
        v48 = &v47;
        if (!(*(&off_2843B5C28 + v22))(&v48, v45 + 8))
        {
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v42 = *(v43 + 16);
          if (v42 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v48 = &v47;
          (*(&off_2843B5C28 + v42))(&v48, v43 + 8);
        }

        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0x10:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v8 = *(v45 + 8);
        v9 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0x11:
      if (*(v45 + 16) == 1 && *(v43 + 16) == 1)
      {
        v29 = *(v45 + 8);
        v30 = *(v43 + 8);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    default:
      v7 = 0;
      break;
  }

  if (*(a2 + 36) == 1)
  {
    v39 = *(v7 + 16);
    *v45 = *v7;
    *(v45 + 16) = v39;
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void sub_22EF000D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = *(v12 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EF00674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22EF006BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::Loop *a2)
{
  v5 = *(a2 + 2);
  v4 = (a2 + 16);
  if (v5)
  {
    OVM::InterpreterImpl::Evaluate(this, v4);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  if (*(a2 + 16) == 1)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 6);
    while (v6 != v7)
    {
      OVM::InterpreterImpl::Evaluate(this, v6);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      ++v6;
    }
  }

  while (1)
  {
    OVM::InterpreterImpl::Evaluate(this, a2 + 3);
    v10 = OVM::InterpreterImpl::EvaluateTruthiness(&v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (!v10)
    {
      operator new();
    }

    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    while (v8 != v9)
    {
      OVM::InterpreterImpl::Evaluate(this, v8);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      ++v8;
    }

    if (*(a2 + 4))
    {
      OVM::InterpreterImpl::Evaluate(this, a2 + 4);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }
}

void sub_22EF0085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::DictionaryLiteral *a2)
{
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v6 = (v4 - v5) >> 3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v4 != v5)
  {
    v9 = 0;
    v10 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      OVM::InterpreterImpl::Evaluate(this, (*(a2 + 2) + v9));
      if (*v13 != 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7B0](exception, "Adding a non-nsobject to a dictinoary?");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(v13 + 16) != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = v7;
      }

      [v11 addObject:*(v13 + 8)];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      ++v10;
      v9 += 8;
    }

    while (v6 != v10);
  }

  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7];
  operator new();
}

void sub_22EF00A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::ArrayLiteral *a2)
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(a2 + 3) - *(a2 + 2)) >> 3];
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  while (v5 != v6)
  {
    OVM::InterpreterImpl::Evaluate(this, v5);
    if (*v8 != 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Adding a non-nsobject to an array?");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*(v8 + 16) != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    [v4 addObject:*(v8 + 8)];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    ++v5;
  }

  [MEMORY[0x277CBEA60] arrayWithArray:v4];
  operator new();
}

void sub_22EF00B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::CompoundExpression *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  while (v4 != v5)
  {
    OVM::InterpreterImpl::Evaluate(this, v4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    ++v4;
  }

  return OVM::InterpreterImpl::Evaluate(this, a2 + 5);
}

void OVM::InterpreterImpl::EarlyReturn::~EarlyReturn(std::exception *this)
{
  this->__vftable = &unk_2843B5BA0;
  v2 = this[2].__vftable;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2843B5BA0;
  v2 = this[2].__vftable;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::exception::~exception(this);

  JUMPOUT(0x2318FB870);
}

void OVM::InterpreterImpl::EvaluateObjCMessageVariadicNSObjectReturn(uint64_t a1, void *a2, const char *a3, int a4, uint64_t **a5)
{
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "No support (yet) for variadics with more than 2 fixed argument");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = *a5;
    v9 = (a5[1] - *a5) >> 4;
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v10 = *v8;
          v11 = v8[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *(v10 + 16);
          if (v12 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v97[0] = &v98;
          v13 = (*(&off_2843B5C28 + v12))(v97, v10 + 8);
          v14 = (*a5)[2];
          v15 = (*a5)[3];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(v14 + 16);
          if (v16 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v97[0] = &v98;
          [a2 a3];
LABEL_73:
          if (!v15)
          {
            goto LABEL_112;
          }

          v49 = v15;
          goto LABEL_111;
        }

LABEL_117:
        v92 = __cxa_allocate_exception(0x10uLL);
        StringUtil::Format("No support (yet) for variadics %u > 1/4 arguments", v97, (a5[1] - *a5) >> 4);
        MEMORY[0x2318FB7C0](v92, v97);
        __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v80 = *v8;
      v11 = v8[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = *(v80 + 16);
      if (v81 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 a3];
LABEL_112:
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      operator new();
    }

    if (v9 != 3)
    {
      if (v9 != 4)
      {
        goto LABEL_117;
      }

      v50 = *v8;
      v11 = v8[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = *(v50 + 16);
      if (v51 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v52 = (*(&off_2843B5C28 + v51))(v97, v50 + 8);
      v53 = (*a5)[2];
      v23 = (*a5)[3];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = *(v53 + 16);
      if (v54 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v55 = (*(&off_2843B5C28 + v54))(v97, v53 + 8);
      v56 = (*a5)[4];
      v57 = (*a5)[5];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = *(v56 + 16);
      if (v58 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v59 = (*(&off_2843B5C28 + v58))(v97, v56 + 8);
      v60 = (*a5)[6];
      v61 = (*a5)[7];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = *(v60 + 16);
      if (v62 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 a3];
      goto LABEL_88;
    }

    v82 = *v8;
    v11 = v8[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = *(v82 + 16);
    if (v83 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v97[0] = &v98;
    v84 = (*(&off_2843B5C28 + v83))(v97, v82 + 8);
    v85 = (*a5)[2];
    v23 = (*a5)[3];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v86 = *(v85 + 16);
    if (v86 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v97[0] = &v98;
    v87 = (*(&off_2843B5C28 + v86))(v97, v85 + 8);
    v88 = (*a5)[4];
    v27 = (*a5)[5];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v89 = *(v88 + 16);
    if (v89 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v97[0] = &v98;
    [a2 a3];
LABEL_106:
    if (!v27)
    {
LABEL_109:
      if (!v23)
      {
        goto LABEL_112;
      }

      v49 = v23;
      goto LABEL_111;
    }

    v79 = v27;
LABEL_108:
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    goto LABEL_109;
  }

  v17 = *a5;
  v18 = (a5[1] - *a5) >> 4;
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      v68 = *v17;
      v11 = v17[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = *(v68 + 16);
      if (v69 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v70 = (*(&off_2843B5C28 + v69))(v97, v68 + 8);
      v71 = (*a5)[2];
      v23 = (*a5)[3];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = *(v71 + 16);
      if (v72 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v73 = (*(&off_2843B5C28 + v72))(v97, v71 + 8);
      v74 = (*a5)[4];
      v57 = (*a5)[5];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v75 = *(v74 + 16);
      if (v75 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v76 = (*(&off_2843B5C28 + v75))(v97, v74 + 8);
      v77 = (*a5)[6];
      v61 = (*a5)[7];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = *(v77 + 16);
      if (v78 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 a3];
LABEL_88:
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      if (!v57)
      {
        goto LABEL_109;
      }

      v79 = v57;
      goto LABEL_108;
    }

    if (v18 == 5)
    {
      v29 = *v17;
      v11 = v17[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(v29 + 16);
      if (v30 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v31 = (*(&off_2843B5C28 + v30))(v97, v29 + 8);
      v32 = (*a5)[2];
      v33 = (*a5)[3];
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      v34 = *(v32 + 16);
      v94 = v33;
      if (v34 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v35 = (*(&off_2843B5C28 + v34))(v97, v32 + 8);
      v36 = (*a5)[4];
      v37 = (*a5)[5];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(v36 + 16);
      if (v38 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v93 = v35;
      v97[0] = &v98;
      v39 = (*(&off_2843B5C28 + v38))(v97, v36 + 8);
      v40 = a3;
      v41 = (*a5)[6];
      v42 = (*a5)[7];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = *(v41 + 16);
      if (v43 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v44 = v31;
      v97[0] = &v98;
      v45 = (*(&off_2843B5C28 + v43))(v97, v41 + 8);
      v46 = (*a5)[8];
      v47 = (*a5)[9];
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v48 = *(v46 + 16);
      if (v48 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 v40];
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v49 = v94;
      if (v94)
      {
LABEL_111:
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        goto LABEL_112;
      }

      goto LABEL_112;
    }
  }

  else
  {
    if (v18 == 2)
    {
      v63 = *v17;
      v11 = v17[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = *(v63 + 16);
      if (v64 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v65 = (*(&off_2843B5C28 + v64))(v97, v63 + 8);
      v66 = (*a5)[2];
      v15 = (*a5)[3];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v67 = *(v66 + 16);
      if (v67 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 a3];
      goto LABEL_73;
    }

    if (v18 == 3)
    {
      v19 = *v17;
      v11 = v17[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(v19 + 16);
      if (v20 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v21 = (*(&off_2843B5C28 + v20))(v97, v19 + 8);
      v22 = (*a5)[2];
      v23 = (*a5)[3];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(v22 + 16);
      if (v24 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      v25 = (*(&off_2843B5C28 + v24))(v97, v22 + 8);
      v26 = (*a5)[4];
      v27 = (*a5)[5];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(v26 + 16);
      if (v28 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v97[0] = &v98;
      [a2 a3];
      goto LABEL_106;
    }
  }

  v91 = __cxa_allocate_exception(0x10uLL);
  StringUtil::Format("No support (yet) for variadics %u > 2/5 variadic arguments", v97, (a5[1] - *a5) >> 4);
  MEMORY[0x2318FB7C0](v91, v97);
  __cxa_throw(v91, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EF016F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void OVM::InterpreterImpl::EvaluateObjCMessageNSObjectReturn(int a1, id a2, SEL a3, uint64_t **a4)
{
  v7 = *a4;
  v8 = (a4[1] - *a4) >> 4;
  if (v8 <= 4)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v161 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v162 = *(v161 + 16);
        if (v162 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v163 = (*(&off_2843B5C28 + v162))(v229, v161 + 8);
        v164 = (*a4)[2];
        v165 = (*a4)[3];
        if (v165)
        {
          atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v166 = *(v164 + 16);
        if (v166 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        [a2 a3];
        if (!v165)
        {
          goto LABEL_186;
        }

        v126 = v165;
        goto LABEL_185;
      }

      if (v8 == 3)
      {
        v117 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v118 = *(v117 + 16);
        if (v118 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v119 = (*(&off_2843B5C28 + v118))(v229, v117 + 8);
        v120 = (*a4)[2];
        v15 = (*a4)[3];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v121 = *(v120 + 16);
        if (v121 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v122 = (*(&off_2843B5C28 + v121))(v229, v120 + 8);
        v123 = (*a4)[4];
        v124 = (*a4)[5];
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v125 = *(v123 + 16);
        if (v125 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        [a2 a3];
        if (!v124)
        {
          goto LABEL_134;
        }

        v25 = v124;
      }

      else
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *(v9 + 16);
        if (v11 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v13 = (*(&off_2843B5C28 + v11))(v229, v9 + 8);
        v14 = (*a4)[2];
        v15 = (*a4)[3];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(v14 + 16);
        if (v16 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v17 = (*(&off_2843B5C28 + v16))(v229, v14 + 8);
        v18 = (*a4)[4];
        v19 = (*a4)[5];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v18 + 16);
        if (v20 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        v21 = (*(&off_2843B5C28 + v20))(v229, v18 + 8);
        v22 = (*a4)[6];
        v23 = (*a4)[7];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(v22 + 16);
        if (v24 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v229[0] = &v230;
        [a2 a3];
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (!v19)
        {
          goto LABEL_134;
        }

        v25 = v19;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_134:
      if (!v15)
      {
LABEL_186:
        if (!v10)
        {
          goto LABEL_223;
        }

        v68 = v10;
        goto LABEL_222;
      }

      v126 = v15;
LABEL_185:
      std::__shared_weak_count::__release_shared[abi:ne200100](v126);
      goto LABEL_186;
    }

    if (!v8)
    {
      [a2 a3];
      goto LABEL_223;
    }

    if (v8 == 1)
    {
      v65 = *v7;
      v66 = v7[1];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v67 = *(v65 + 16);
      if (v67 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      [a2 a3];
      if (v66)
      {
        v68 = v66;
LABEL_222:
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

LABEL_223:
      operator new();
    }

LABEL_269:
    exception = __cxa_allocate_exception(0x10uLL);
    Name = sel_getName(a3);
    StringUtil::Format("Arity %s %zu too high for me", v229, Name, (a4[1] - *a4) >> 4);
    MEMORY[0x2318FB7C0](exception, v229);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v8 <= 6)
  {
    if (v8 == 5)
    {
      v95 = *v7;
      v96 = v7[1];
      if (v96)
      {
        atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
      }

      v97 = *(v95 + 16);
      v220 = v96;
      if (v97 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v98 = (*(&off_2843B5C28 + v97))(v229, v95 + 8);
      v226 = a2;
      v99 = (*a4)[2];
      v100 = (*a4)[3];
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v101 = *(v99 + 16);
      if (v101 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v102 = a3;
      v229[0] = &v230;
      v103 = (*(&off_2843B5C28 + v101))(v229, v99 + 8);
      v104 = (*a4)[4];
      v105 = (*a4)[5];
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v106 = *(v104 + 16);
      if (v106 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v107 = (*(&off_2843B5C28 + v106))(v229, v104 + 8);
      v108 = (*a4)[6];
      v109 = (*a4)[7];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v110 = *(v108 + 16);
      if (v110 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v111 = v98;
      v229[0] = &v230;
      v112 = (*(&off_2843B5C28 + v110))(v229, v108 + 8);
      v113 = (*a4)[8];
      v114 = (*a4)[9];
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v115 = *(v113 + 16);
      if (v115 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      [v226 v102];
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109);
      }

      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }

      v61 = v220;
      if (v100)
      {
        v116 = v100;
        goto LABEL_175;
      }

      goto LABEL_220;
    }

    v69 = *v7;
    v70 = v7[1];
    if (v70)
    {
      atomic_fetch_add_explicit(v70 + 1, 1uLL, memory_order_relaxed);
    }

    v71 = *(v69 + 16);
    v225 = v70;
    if (v71 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v229[0] = &v230;
    v72 = (*(&off_2843B5C28 + v71))(v229, v69 + 8);
    v73 = (*a4)[2];
    v74 = (*a4)[3];
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    v75 = *(v73 + 16);
    v219 = v74;
    if (v75 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v229[0] = &v230;
    v76 = (*(&off_2843B5C28 + v75))(v229, v73 + 8);
    v77 = (*a4)[4];
    v78 = (*a4)[5];
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = *(v77 + 16);
    if (v79 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v211 = v76;
    v215 = v72;
    v229[0] = &v230;
    v80 = (*(&off_2843B5C28 + v79))(v229, v77 + 8);
    v81 = a2;
    v82 = (*a4)[6];
    v83 = (*a4)[7];
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = *(v82 + 16);
    if (v84 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v85 = a3;
    v229[0] = &v230;
    v86 = (*(&off_2843B5C28 + v84))(v229, v82 + 8);
    v87 = (*a4)[8];
    v88 = (*a4)[9];
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v89 = *(v87 + 16);
    if (v89 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v229[0] = &v230;
    v90 = (*(&off_2843B5C28 + v89))(v229, v87 + 8);
    v91 = (*a4)[10];
    v92 = (*a4)[11];
    if (v92)
    {
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = *(v91 + 16);
    if (v93 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v229[0] = &v230;
    [v81 v85];
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    v62 = v219;
    v61 = v225;
    if (!v78)
    {
      goto LABEL_173;
    }

    v94 = v78;
    goto LABEL_172;
  }

  switch(v8)
  {
    case 7:
      v167 = *v7;
      v168 = v7[1];
      if (v168)
      {
        atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v169 = *(v167 + 16);
      v217 = v168;
      if (v169 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v170 = (*(&off_2843B5C28 + v169))(v229, v167 + 8);
      v171 = (*a4)[2];
      v172 = (*a4)[3];
      if (v172)
      {
        atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v173 = *(v171 + 16);
      v213 = v172;
      if (v173 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v174 = (*(&off_2843B5C28 + v173))(v229, v171 + 8);
      v175 = (*a4)[4];
      v176 = (*a4)[5];
      if (v176)
      {
        atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v177 = *(v175 + 16);
      v209 = v176;
      if (v177 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v178 = (*(&off_2843B5C28 + v177))(v229, v175 + 8);
      v179 = (*a4)[6];
      v180 = (*a4)[7];
      if (v180)
      {
        atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v206 = v174;
      v228 = a2;
      v181 = *(v179 + 16);
      if (v181 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v222 = a3;
      v229[0] = &v230;
      v182 = (*(&off_2843B5C28 + v181))(v229, v179 + 8);
      v183 = (*a4)[8];
      v184 = (*a4)[9];
      if (v184)
      {
        atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v185 = *(v183 + 16);
      if (v185 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v186 = v178;
      v187 = v170;
      v229[0] = &v230;
      v188 = (*(&off_2843B5C28 + v185))(v229, v183 + 8);
      v189 = (*a4)[10];
      v190 = (*a4)[11];
      if (v190)
      {
        atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v191 = *(v189 + 16);
      if (v191 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v192 = (*(&off_2843B5C28 + v191))(v229, v189 + 8);
      v193 = (*a4)[12];
      v194 = (*a4)[13];
      if (v194)
      {
        atomic_fetch_add_explicit(&v194->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v195 = *(v193 + 16);
      if (v195 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      [v228 v222];
      if (v194)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v194);
      }

      if (v190)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v190);
      }

      if (v184)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v184);
      }

      v62 = v213;
      if (v180)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v180);
      }

      if (v209)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      }

      v61 = v217;
      if (v213)
      {
        goto LABEL_174;
      }

      goto LABEL_220;
    case 8:
      v127 = *v7;
      v128 = v7[1];
      if (v128)
      {
        atomic_fetch_add_explicit(v128 + 1, 1uLL, memory_order_relaxed);
      }

      v129 = *(v127 + 16);
      v227 = v128;
      if (v129 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v130 = (*(&off_2843B5C28 + v129))(v229, v127 + 8);
      v131 = (*a4)[2];
      v132 = (*a4)[3];
      if (v132)
      {
        atomic_fetch_add_explicit((v132 + 8), 1uLL, memory_order_relaxed);
      }

      v133 = *(v131 + 16);
      v221 = v132;
      if (v133 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v134 = (*(&off_2843B5C28 + v133))(v229, v131 + 8);
      v135 = (*a4)[4];
      v136 = (*a4)[5];
      if (v136)
      {
        atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v137 = *(v135 + 16);
      v216 = v136;
      if (v137 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v138 = (*(&off_2843B5C28 + v137))(v229, v135 + 8);
      v139 = (*a4)[6];
      v140 = (*a4)[7];
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v141 = *(v139 + 16);
      v212 = v140;
      if (v141 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v205 = v138;
      v229[0] = &v230;
      v142 = (*(&off_2843B5C28 + v141))(v229, v139 + 8);
      v143 = (*a4)[8];
      v144 = (*a4)[9];
      if (v144)
      {
        atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v208 = v144;
      v203 = v142;
      v145 = *(v143 + 16);
      if (v145 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v146 = (*(&off_2843B5C28 + v145))(v229, v143 + 8);
      v201 = v134;
      v147 = (*a4)[10];
      v148 = (*a4)[11];
      if (v148)
      {
        atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v149 = *(v147 + 16);
      if (v149 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v150 = v130;
      v151 = a2;
      v152 = a3;
      v229[0] = &v230;
      v153 = (*(&off_2843B5C28 + v149))(v229, v147 + 8);
      v154 = (*a4)[12];
      v155 = (*a4)[13];
      if (v155)
      {
        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v156 = *(v154 + 16);
      if (v156 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v157 = (*(&off_2843B5C28 + v156))(v229, v154 + 8);
      v158 = (*a4)[14];
      v159 = (*a4)[15];
      if (v159)
      {
        atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v160 = *(v158 + 16);
      if (v160 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      [v151 v152];
      if (v159)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v159);
      }

      if (v155)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v155);
      }

      if (v148)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v148);
      }

      if (v208)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v208);
      }

      v62 = v221;
      v61 = v227;
      v64 = v212;
      v63 = v216;
      if (!v212)
      {
        goto LABEL_170;
      }

      break;
    case 9:
      v26 = *v7;
      v27 = v7[1];
      if (v27)
      {
        atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = *(v26 + 16);
      v224 = v27;
      if (v28 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v29 = (*(&off_2843B5C28 + v28))(v229, v26 + 8);
      v30 = (*a4)[2];
      v31 = (*a4)[3];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(v30 + 16);
      v214 = v31;
      if (v32 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v33 = (*(&off_2843B5C28 + v32))(v229, v30 + 8);
      v34 = (*a4)[4];
      v35 = (*a4)[5];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *(v34 + 16);
      v210 = v35;
      if (v36 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v37 = (*(&off_2843B5C28 + v36))(v229, v34 + 8);
      v38 = (*a4)[6];
      v39 = (*a4)[7];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v202 = v37;
      v40 = *(v38 + 16);
      v207 = v39;
      if (v40 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v41 = (*(&off_2843B5C28 + v40))(v229, v38 + 8);
      v42 = (*a4)[8];
      v43 = (*a4)[9];
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v200 = v41;
      v204 = v43;
      v44 = *(v42 + 16);
      if (v44 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v218 = a3;
      v229[0] = &v230;
      v45 = (*(&off_2843B5C28 + v44))(v229, v42 + 8);
      v46 = (*a4)[10];
      v47 = (*a4)[11];
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v198 = v45;
      v199 = v33;
      v48 = *(v46 + 16);
      if (v48 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v49 = (*(&off_2843B5C28 + v48))(v229, v46 + 8);
      v50 = (*a4)[12];
      v51 = (*a4)[13];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(v50 + 16);
      if (v52 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v53 = (*(&off_2843B5C28 + v52))(v229, v50 + 8);
      v54 = (*a4)[14];
      v55 = (*a4)[15];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v56 = *(v54 + 16);
      if (v56 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      v57 = (*(&off_2843B5C28 + v56))(v229, v54 + 8);
      v58 = (*a4)[16];
      v59 = (*a4)[17];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = *(v58 + 16);
      if (v60 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v229[0] = &v230;
      [a2 v218];
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      v61 = v224;
      v63 = v210;
      v62 = v214;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v204)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v204);
      }

      if (!v207)
      {
        goto LABEL_170;
      }

      v64 = v207;
      break;
    default:
      goto LABEL_269;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
LABEL_170:
  if (!v63)
  {
    goto LABEL_173;
  }

  v94 = v63;
LABEL_172:
  std::__shared_weak_count::__release_shared[abi:ne200100](v94);
LABEL_173:
  if (v62)
  {
LABEL_174:
    v116 = v62;
LABEL_175:
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    if (!v61)
    {
      goto LABEL_223;
    }

LABEL_221:
    v68 = v61;
    goto LABEL_222;
  }

LABEL_220:
  if (!v61)
  {
    goto LABEL_223;
  }

  goto LABEL_221;
}

void sub_22EF02A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_22EF02DE4()
{
  if (v0)
  {
    JUMPOUT(0x22EF02DD8);
  }

  JUMPOUT(0x22EF02DDCLL);
}

void OVM::InterpreterImpl::EvaluateObjCMessageNonobjectReturn(int a1, id a2, SEL a3, uint64_t a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = (a5[1] - *a5) >> 4;
  if (v9 <= 4)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v117 = *v8;
          v11 = v8[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v118 = *(v117 + 16);
          if (v118 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          v119 = (*(&off_2843B5C28 + v118))(v224, v117 + 8);
          v120 = (*a5)[2];
          v121 = (*a5)[3];
          if (v121)
          {
            atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v122 = *(v120 + 16);
          if (v122 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          v123 = (*(&off_2843B5C28 + v122))(v224, v120 + 8);
          v124 = (*a5)[4];
          v125 = (*a5)[5];
          if (v125)
          {
            atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v126 = *(v124 + 16);
          if (v126 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          [a2 a3];
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v125);
          }

          if (!v121)
          {
            goto LABEL_139;
          }

          v27 = v121;
        }

        else
        {
          v10 = *v8;
          v11 = v8[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *(v10 + 16);
          if (v12 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          v13 = (*(&off_2843B5C28 + v12))(v224, v10 + 8);
          v14 = a2;
          v15 = (*a5)[2];
          v16 = (*a5)[3];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = *(v15 + 16);
          if (v17 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v18 = a3;
          v224[0] = v225;
          v19 = (*(&off_2843B5C28 + v17))(v224, v15 + 8);
          v20 = (*a5)[4];
          v21 = (*a5)[5];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = *(v20 + 16);
          if (v22 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          v23 = (*(&off_2843B5C28 + v22))(v224, v20 + 8);
          v24 = (*a5)[6];
          v25 = (*a5)[7];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(v24 + 16);
          if (v26 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v224[0] = v225;
          [v14 v18];
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (!v16)
          {
            goto LABEL_139;
          }

          v27 = v16;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_139:
        if (!v11)
        {
          goto LABEL_229;
        }

        v116 = v11;
        goto LABEL_228;
      }

      v158 = *v8;
      v67 = v8[1];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v159 = *(v158 + 16);
      if (v159 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      v160 = (*(&off_2843B5C28 + v159))(v224, v158 + 8);
      v161 = (*a5)[2];
      v162 = (*a5)[3];
      if (v162)
      {
        atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v163 = *(v161 + 16);
      if (v163 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      [a2 a3];
      if (v162)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v162);
      }

LABEL_189:
      if (!v67)
      {
        goto LABEL_229;
      }

      v116 = v67;
      goto LABEL_228;
    }

    if (!v9)
    {
      [a2 a3];
      goto LABEL_229;
    }

    if (v9 == 1)
    {
      v66 = *v8;
      v67 = v8[1];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = *(v66 + 16);
      if (v68 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      [a2 a3];
      goto LABEL_189;
    }

LABEL_275:
    exception = __cxa_allocate_exception(0x10uLL);
    Name = sel_getName(a3);
    StringUtil::Format("Arity %s %zu too high for me", v224, Name, (a5[1] - *a5) >> 4);
    MEMORY[0x2318FB7C0](exception, v224);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 <= 6)
  {
    if (v9 == 5)
    {
      v95 = *v8;
      v96 = v8[1];
      if (v96)
      {
        atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
      }

      v97 = *(v95 + 16);
      v221 = v96;
      if (v97 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      v98 = (*(&off_2843B5C28 + v97))(v224, v95 + 8);
      v99 = (*a5)[2];
      v100 = (*a5)[3];
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v101 = *(v99 + 16);
      v216 = v100;
      if (v101 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      v102 = (*(&off_2843B5C28 + v101))(v224, v99 + 8);
      v103 = (*a5)[4];
      v104 = (*a5)[5];
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v105 = *(v103 + 16);
      if (v105 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v106 = a2;
      v107 = a3;
      v224[0] = v225;
      v108 = (*(&off_2843B5C28 + v105))(v224, v103 + 8);
      v109 = (*a5)[6];
      v110 = (*a5)[7];
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v111 = *(v109 + 16);
      if (v111 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      v112 = (*(&off_2843B5C28 + v111))(v224, v109 + 8);
      v113 = (*a5)[8];
      v114 = (*a5)[9];
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v115 = *(v113 + 16);
      if (v115 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224[0] = v225;
      [v106 v107];
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (v216)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v216);
      }

      v116 = v221;
      if (v221)
      {
        goto LABEL_228;
      }

      goto LABEL_229;
    }

    v69 = *v8;
    v70 = v8[1];
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = *(v69 + 16);
    v211 = v70;
    if (v71 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v224[0] = v225;
    v72 = (*(&off_2843B5C28 + v71))(v224, v69 + 8);
    v73 = (*a5)[2];
    v74 = (*a5)[3];
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = *(v73 + 16);
    v207 = v74;
    if (v75 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v224[0] = v225;
    v76 = (*(&off_2843B5C28 + v75))(v224, v73 + 8);
    v77 = (*a5)[4];
    v78 = (*a5)[5];
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v215 = a2;
    v79 = *(v77 + 16);
    if (v79 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v220 = a3;
    v224[0] = v225;
    v80 = (*(&off_2843B5C28 + v79))(v224, v77 + 8);
    v81 = (*a5)[6];
    v82 = (*a5)[7];
    if (v82)
    {
      atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = *(v81 + 16);
    if (v83 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v84 = v76;
    v224[0] = v225;
    v85 = (*(&off_2843B5C28 + v83))(v224, v81 + 8);
    v86 = (*a5)[8];
    v87 = (*a5)[9];
    if (v87)
    {
      atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v88 = *(v86 + 16);
    if (v88 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v89 = v72;
    v224[0] = v225;
    v90 = (*(&off_2843B5C28 + v88))(v224, v86 + 8);
    v91 = (*a5)[10];
    v92 = (*a5)[11];
    if (v92)
    {
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = *(v91 + 16);
    if (v93 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v224[0] = v225;
    [v215 v220];
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    v64 = v207;
    v29 = v211;
    if (!v78)
    {
      goto LABEL_224;
    }

    v94 = v78;
  }

  else
  {
    switch(v9)
    {
      case 7:
        v164 = *v8;
        v165 = v8[1];
        if (v165)
        {
          atomic_fetch_add_explicit(v165 + 1, 1uLL, memory_order_relaxed);
        }

        v166 = *(v164 + 16);
        v218 = v165;
        if (v166 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v167 = (*(&off_2843B5C28 + v166))(v224, v164 + 8);
        v168 = (*a5)[2];
        v169 = (*a5)[3];
        if (v169)
        {
          atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v170 = *(v168 + 16);
        v213 = v169;
        if (v170 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v171 = (*(&off_2843B5C28 + v170))(v224, v168 + 8);
        v172 = (*a5)[4];
        v173 = (*a5)[5];
        if (v173)
        {
          atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v174 = *(v172 + 16);
        v209 = v173;
        if (v174 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v223 = a3;
        v224[0] = v225;
        v175 = (*(&off_2843B5C28 + v174))(v224, v172 + 8);
        v176 = (*a5)[6];
        v177 = (*a5)[7];
        if (v177)
        {
          atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v178 = *(v176 + 16);
        if (v178 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v202 = v175;
        v205 = v171;
        v224[0] = v225;
        v179 = (*(&off_2843B5C28 + v178))(v224, v176 + 8);
        v180 = (*a5)[8];
        v181 = (*a5)[9];
        if (v181)
        {
          atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v182 = *(v180 + 16);
        if (v182 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v183 = (*(&off_2843B5C28 + v182))(v224, v180 + 8);
        v184 = (*a5)[10];
        v185 = (*a5)[11];
        if (v185)
        {
          atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v186 = *(v184 + 16);
        if (v186 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v187 = v167;
        v224[0] = v225;
        v188 = (*(&off_2843B5C28 + v186))(v224, v184 + 8);
        v189 = (*a5)[12];
        v190 = (*a5)[13];
        if (v190)
        {
          atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v191 = *(v189 + 16);
        if (v191 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        [a2 v223];
        if (v190)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v190);
        }

        if (v185)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v185);
        }

        if (v181)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181);
        }

        v65 = v209;
        v64 = v213;
        if (v177)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v177);
        }

        v29 = v218;
        break;
      case 8:
        v127 = *v8;
        v128 = v8[1];
        if (v128)
        {
          atomic_fetch_add_explicit(v128 + 1, 1uLL, memory_order_relaxed);
        }

        v217 = v128;
        v129 = *(v127 + 16);
        if (v129 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v130 = (*(&off_2843B5C28 + v129))(v224, v127 + 8);
        v131 = (*a5)[2];
        v132 = (*a5)[3];
        if (v132)
        {
          atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v133 = *(v131 + 16);
        v212 = v132;
        if (v133 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v134 = (*(&off_2843B5C28 + v133))(v224, v131 + 8);
        v135 = (*a5)[4];
        v136 = (*a5)[5];
        if (v136)
        {
          atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v137 = *(v135 + 16);
        v208 = v136;
        if (v137 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v138 = (*(&off_2843B5C28 + v137))(v224, v135 + 8);
        v139 = (*a5)[6];
        v140 = (*a5)[7];
        if (v140)
        {
          atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v141 = *(v139 + 16);
        if (v141 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v204 = v138;
        v224[0] = v225;
        v142 = (*(&off_2843B5C28 + v141))(v224, v139 + 8);
        v143 = (*a5)[8];
        v144 = (*a5)[9];
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v199 = v142;
        v201 = v134;
        v145 = *(v143 + 16);
        if (v145 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v197 = v130;
        v224[0] = v225;
        v146 = (*(&off_2843B5C28 + v145))(v224, v143 + 8);
        v147 = (*a5)[10];
        v148 = (*a5)[11];
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v149 = *(v147 + 16);
        if (v149 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v150 = (*(&off_2843B5C28 + v149))(v224, v147 + 8);
        v151 = (*a5)[12];
        v152 = (*a5)[13];
        if (v152)
        {
          atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v153 = *(v151 + 16);
        if (v153 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v154 = (*(&off_2843B5C28 + v153))(v224, v151 + 8);
        v155 = (*a5)[14];
        v156 = (*a5)[15];
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v157 = *(v155 + 16);
        if (v157 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        [a2 a3];
        if (v156)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v156);
        }

        if (v152)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v152);
        }

        if (v148)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v148);
        }

        if (v144)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v144);
        }

        if (v140)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }

        if (v208)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v208);
        }

        if (v212)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v212);
        }

        if (v217)
        {
          v116 = v217;
LABEL_228:
          std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        }

LABEL_229:
        operator new();
      case 9:
        v28 = *v8;
        v29 = v8[1];
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = *(v28 + 16);
        if (v30 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v31 = (*(&off_2843B5C28 + v30))(v224, v28 + 8);
        v32 = (*a5)[2];
        v33 = (*a5)[3];
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        v34 = *(v32 + 16);
        v219 = v33;
        if (v34 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v35 = (*(&off_2843B5C28 + v34))(v224, v32 + 8);
        v36 = (*a5)[4];
        v37 = (*a5)[5];
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(v36 + 16);
        v210 = v37;
        if (v38 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v39 = (*(&off_2843B5C28 + v38))(v224, v36 + 8);
        v40 = (*a5)[6];
        v41 = (*a5)[7];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v200 = v39;
        v42 = *(v40 + 16);
        v206 = v41;
        if (v42 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v198 = v35;
        v224[0] = v225;
        v43 = (*(&off_2843B5C28 + v42))(v224, v40 + 8);
        v44 = (*a5)[8];
        v45 = (*a5)[9];
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v196 = v43;
        v46 = *(v44 + 16);
        v203 = v45;
        if (v46 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v195 = v31;
        v224[0] = v225;
        v47 = (*(&off_2843B5C28 + v46))(v224, v44 + 8);
        v214 = a2;
        v48 = (*a5)[10];
        v49 = (*a5)[11];
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v194 = v47;
        v50 = *(v48 + 16);
        if (v50 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v51 = a3;
        v224[0] = v225;
        v52 = (*(&off_2843B5C28 + v50))(v224, v48 + 8);
        v53 = (*a5)[12];
        v54 = (*a5)[13];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v55 = *(v53 + 16);
        if (v55 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v56 = (*(&off_2843B5C28 + v55))(v224, v53 + 8);
        v57 = (*a5)[14];
        v58 = (*a5)[15];
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = *(v57 + 16);
        if (v59 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        v60 = (*(&off_2843B5C28 + v59))(v224, v57 + 8);
        v61 = (*a5)[16];
        v62 = (*a5)[17];
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v63 = *(v61 + 16);
        if (v63 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v224[0] = v225;
        [v214 v51];
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        v64 = v219;
        v65 = v210;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v203)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v203);
        }

        if (v206)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v206);
        }

        break;
      default:
        goto LABEL_275;
    }

    if (!v65)
    {
LABEL_224:
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      if (v29)
      {
        v116 = v29;
        goto LABEL_228;
      }

      goto LABEL_229;
    }

    v94 = v65;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  goto LABEL_224;
}

void sub_22EF03FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

uint64_t OVM::InterpreterImpl::EvaluateTruthiness(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (*(&off_2843B5BB8 + v2))(&v5, v1 + 8);
}

void OVM::Interpreter::RunSubroutine(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  v11 = v6;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5;
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OVM::InterpreterImpl::RunSubroutine(v10, a2, a3, a6);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_22EF04518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OVM::InterpreterImpl::~InterpreterImpl(&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void *OVM::Error::Error<>(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v6, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278874850, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF04804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *OVM::Error::Error<std::string>(void *a1, uint64_t a2, __int128 *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v8, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, a3);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::emplace_back<>(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = 170 * ((v3 - v2) >> 3) - 1;
  if (v3 == v2)
  {
    v4 = 0;
  }

  if (v4 == a1[5] + a1[4])
  {
    std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__add_back_capacity(a1);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    v5 = a1[5] + a1[4];
    v6 = (*(v2 + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA));
  }

  v6[2] = 0;
  v6[1] = 0;
  *v6 = v6 + 1;
  v7 = a1[4];
  v8 = a1[5] + 1;
  a1[5] = v8;
  v9 = v7 + v8;
  v10 = a1[1];
  v11 = (v10 + 8 * (v9 / 0xAA));
  v12 = *v11 + 24 * (v9 % 0xAA);
  if (a1[2] == v10)
  {
    v12 = 0;
  }

  if (v12 == *v11)
  {
    v12 = *(v11 - 1) + 4080;
  }

  return v12 - 24;
}

void *std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(a1, &v10);
}

void sub_22EF05174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_front<std::map<std::string,std::shared_ptr<OVM::Var>> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *> &>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *> &>::emplace_front<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<OVM::Var>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<OVM::Var>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<OVM::Var>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_0,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_1,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_2,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void OVM::InterpreterImpl::~InterpreterImpl(OVM::InterpreterImpl *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](this);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(v7, *(v7 + 8));
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 170;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::~__split_buffer(a1);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__shared_ptr_emplace<OVM::Var>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B5BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(v3, *(v3 + 8));
  --a1[5];

  return std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(std::monostate)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(long)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(NSObject *)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(OVM::Var*)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(std::monostate)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(long)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(NSObject *)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(OVM::Var*)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>(uint64_t a1, int **a2)
{
  v2 = **a2;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
LABEL_5:
      (*a2)[4];
      return;
    }

    if (v2 == 4)
    {
LABEL_10:
      exception = __cxa_allocate_exception(8uLL);
      *exception = MEMORY[0x277D82900] + 16;
      __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
    }
  }

  else
  {
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    if (v2 == 1)
    {
      goto LABEL_10;
    }
  }
}

void std::__shared_ptr_pointer<OVM::Var *,OVM::InterpreterImpl::Evaluate(OVM::UnaryOperator const*)::$_0,std::allocator<OVM::Var>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::__shared_ptr_pointer<OVM::Var *,OVM::InterpreterImpl::Evaluate(OVM::UnaryOperator const*)::$_0,std::allocator<OVM::Var>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_22EF069E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EF06BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OVM::Deserialize(OVM *this@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = this;
  if ([(OVM *)v16 length]<= 4)
  {
    OVM::Error::Unexpected<char const(&)[37]>("Deserialize less than 5 bytes data?!", &v24);
LABEL_3:
    *a2 = v24;
    *(a2 + 16) = v25;
    v25 = 0;
    v24 = 0uLL;
    *(a2 + 24) = 0;
    v21 = &v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
    goto LABEL_4;
  }

  v4 = [(OVM *)v16 bytes];
  if (*v4 == 2)
  {
    v5 = *([(OVM *)v16 bytes]+ 1);
    if (v5 > 0x100000)
    {
      OVM::Error::Unexpected<char const(&)[40]>("Desrialized plugins should not be > 1MB", &v24);
      goto LABEL_3;
    }

    v14 = [MEMORY[0x277CBEB28] dataWithLength:v5];
    if (compression_decode_buffer([v14 bytes], objc_msgSend(v14, "length"), (-[OVM bytes](v16, "bytes") + 5), -[OVM length](v16, "length") - 5, 0, COMPRESSION_LZ4) == v5)
    {
      v19 = 0;
      v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v14 options:0 error:&v19];
      v8 = v19;
      v12 = v8;
      v13 = v7;
      if (!v7 || v8)
      {
        v9 = [v8 localizedFailureReason];
        v10 = v9;
        if (v9)
        {
          [v9 asCXXString];
        }

        else
        {
          v26[0] = 0;
          v26[1] = 0;
          v27 = 0;
        }

        OVM::Error::Error<>(&v24, v26);
        v11 = v25;
        *v18 = v24;
        v25 = 0;
        v24 = 0uLL;
        v20 = &v24;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
        *a2 = *v18;
        *(a2 + 16) = v11;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        *(a2 + 24) = 0;
        *&v24 = &v21;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          operator new();
        }

        OVM::Error::Unexpected<char const(&)[21]>("Wrong top-level type", &v24);
        *a2 = v24;
        *(a2 + 16) = v25;
        v25 = 0;
        v24 = 0uLL;
        *(a2 + 24) = 0;
        v21 = &v24;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
      }
    }

    else
    {
      OVM::Error::Unexpected<char const(&)[21]>("Decompression failed", &v24);
      *a2 = v24;
      *(a2 + 16) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a2 + 24) = 0;
      v21 = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
    }
  }

  else
  {
    StringUtil::Format("Bad version %d", v26, *v4);
    OVM::Error::Error<>(&v24, v26);
    v6 = v25;
    *v17 = v24;
    v25 = 0;
    v24 = 0uLL;
    v20 = &v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
    *a2 = *v17;
    *(a2 + 16) = v6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    *(a2 + 24) = 0;
    *&v24 = &v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

LABEL_4:

  v3 = *MEMORY[0x277D85DE8];
}

void sub_22EF074F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);

  _Unwind_Resume(a1);
}

void OVM::Error::Unexpected<char const(&)[37]>(char *__s@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[40]>(char *__s@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF079E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[21]>(char *__s@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[22]>(char *__s@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const*>(char **a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::AssertKeys(void *a1, uint64_t **a2)
{
  v13 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2318FB7B0](exception, "Expected a dictionary");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  if (v3)
  {
    v4 = *a2;
    v5 = 24 * v3;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithCXXString:v4];
      v7 = [v13 objectForKeyedSubscript:v6];

      if (!v7)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        v9 = v4;
        v10 = v8;
        v11 = v9;
        if (*(v9 + 23) < 0)
        {
          v11 = *v9;
        }

        StringUtil::Format("Missing mandatory key %s", v14, v11);
        MEMORY[0x2318FB7C0](v10, v14);
        __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_22EF07D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);

  _Unwind_Resume(a1);
}

uint64_t std::vector<OVM::Param>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OVM::Param>::__emplace_back_slow_path<OVM::Param>(a1, a2);
  }

  else
  {
    std::vector<OVM::Param>::__construct_one_at_end[abi:ne200100]<OVM::Param>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void OVM::DeserializeExpressions(uint64_t *__return_ptr a1@<X8>, OVM *this@<X0>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = this;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  if ([(OVM *)v5 countByEnumeratingWithState:&v8 objects:v12 count:16])
  {
    *v9;
    *v9;
    OVM::DeserializeExprsesion(**(&v8 + 1), v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EF07FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<OVM::Subroutine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B5CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

void std::__shared_ptr_emplace<OVM::Subroutine>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<OVM::Param>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<OVM::Param>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OVM::Param>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<OVM::Param>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::vector<OVM::Param>::__construct_one_at_end[abi:ne200100]<OVM::Param>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<OVM::Param>::__emplace_back_slow_path<OVM::Param>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Param>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OVM::Param>,OVM::Param*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<OVM::Param>::~__split_buffer(&v17);
  return v16;
}

void sub_22EF08300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OVM::Param>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Param>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OVM::Param>,OVM::Param*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *a4 = *(v6 - 2);
      v8 = (a4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        a4 = v14;
      }

      else
      {
        v9 = *v6;
        *(a4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      a4 += 32;
      v14 = a4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<OVM::Param>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OVM::Param>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OVM::Param>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t OVM::TypeInfo::ToType(uint64_t this)
{
  if ((this - 1) > 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::DeserializeExprsesion(OVM *this, NSDictionary *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = this;
  std::string::basic_string[abi:ne200100]<0>(__p, "etype");
  v76[0] = __p;
  v76[1] = 1;
  OVM::AssertKeys(v2, v76);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = [(OVM *)v2 objectForKeyedSubscript:@"etype"];
  v4 = OVM::Expression::ToKind([v3 intValue]);

  switch(v4)
  {
    case 1:
      v45 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "varName");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v45, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v46 = [(OVM *)v45 objectForKeyedSubscript:@"varName"];
      if (v46)
      {
        [v46 asCXXString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v80 = 0;
      }

      operator new();
    case 2:
      v23 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "receiver");
      std::string::basic_string[abi:ne200100]<0>(v81, "parameters");
      std::string::basic_string[abi:ne200100]<0>(v82, "selector");
      std::string::basic_string[abi:ne200100]<0>(v83, "returntype");
      v76[0] = __p;
      v76[1] = 4;
      OVM::AssertKeys(v23, v76);
      v24 = 0;
      while (1)
      {
        if (v83[v24 + 23] < 0)
        {
          operator delete(*&v83[v24]);
        }

        v24 -= 24;
        if (v24 == -96)
        {
          v25 = [(OVM *)v23 objectForKeyedSubscript:@"receiver"];
          OVM::DeserializeExprsesion(&v73, v25, v26);
          v27 = [(OVM *)v23 objectForKeyedSubscript:@"parameters"];
          OVM::DeserializeExpressions(__p, v27, v28);
          v29 = [(OVM *)v23 objectForKeyedSubscript:@"selector"];
          if (v29)
          {
            [v29 asCXXString];
          }

          else
          {
            v76[0] = 0;
            v76[1] = 0;
            v77 = 0;
          }

          [(OVM *)v23 objectForKeyedSubscript:@"returntype"];
          v72 = [objc_claimAutoreleasedReturnValue() intValue];
          LODWORD(v78) = OVM::TypeInfo::ToType(v72);
          [(OVM *)v23 objectForKeyedSubscript:@"isVariadic"];
          LODWORD(v75) = [objc_claimAutoreleasedReturnValue() unsignedIntValue];
          std::make_unique[abi:ne200100]<OVM::ObjCMessage,std::unique_ptr<OVM::Expression>,std::vector<std::unique_ptr<OVM::Expression>>,std::string,OVM::TypeInfo::Type,unsigned int,0>();
        }
      }

    case 3:
      v36 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "classname");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v36, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v37 = [(OVM *)v36 objectForKeyedSubscript:@"classname"];
      if (v37)
      {
        [v37 asCXXString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v80 = 0;
      }

      operator new();
    case 4:
      v16 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "funcName");
      std::string::basic_string[abi:ne200100]<0>(v81, "parameters");
      v76[0] = __p;
      v76[1] = 2;
      OVM::AssertKeys(v16, v76);
      v17 = 0;
      while (1)
      {
        if (v81[v17 + 23] < 0)
        {
          operator delete(*&v81[v17]);
        }

        v17 -= 24;
        if (v17 == -48)
        {
          v18 = [(OVM *)v16 objectForKeyedSubscript:@"funcName"];
          if (v18)
          {
            [v18 asCXXString];
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v80 = 0;
          }

          v70 = [(OVM *)v16 objectForKeyedSubscript:@"parameters"];
          OVM::DeserializeExpressions(v76, v70, v71);
          std::make_unique[abi:ne200100]<OVM::FunctionCall,std::string,std::vector<std::unique_ptr<OVM::Expression>>,0>();
        }
      }

    case 5:
      v47 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "expr");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v47, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v48 = [(OVM *)v47 objectForKeyedSubscript:@"expr"];
      OVM::DeserializeExprsesion(__p, v48, v49);
      operator new();
    case 6:
      v53 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "condition");
      std::string::basic_string[abi:ne200100]<0>(v81, "ifBranch");
      std::string::basic_string[abi:ne200100]<0>(v82, "ifBranch");
      v76[0] = __p;
      v76[1] = 3;
      OVM::AssertKeys(v53, v76);
      v54 = 0;
      while (1)
      {
        if (v82[v54 + 23] < 0)
        {
          operator delete(*&v82[v54]);
        }

        v54 -= 24;
        if (v54 == -72)
        {
          v55 = [(OVM *)v53 objectForKeyedSubscript:@"condition"];
          OVM::DeserializeExprsesion(&v75, v55, v56);
          v57 = [(OVM *)v53 objectForKeyedSubscript:@"ifBranch"];
          OVM::DeserializeExpressions(&v74, v57, v58);
          v59 = [(OVM *)v53 objectForKeyedSubscript:@"elseBranch"];
          OVM::DeserializeExpressions(&v73, v59, v60);
          operator new();
        }
      }

    case 7:
      v38 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "body");
      std::string::basic_string[abi:ne200100]<0>(v81, "behavior");
      v76[0] = __p;
      v76[1] = 2;
      OVM::AssertKeys(v38, v76);
      for (i = 0; i != -48; i -= 24)
      {
        if (v81[i + 23] < 0)
        {
          operator delete(*&v81[i]);
        }
      }

      v40 = [(OVM *)v38 objectForKeyedSubscript:@"init"];
      v41 = [(OVM *)v38 objectForKeyedSubscript:@"cond"];
      v42 = [(OVM *)v38 objectForKeyedSubscript:@"incr"];
      v44 = [(OVM *)v38 objectForKeyedSubscript:@"body"];
      if (v40)
      {
        OVM::DeserializeExprsesion(&v73, v40, v43);
        if (v41)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *&v73 = 0;
        if (v41)
        {
LABEL_50:
          OVM::DeserializeExprsesion(&v78, v41, v43);
          if (v42)
          {
LABEL_51:
            OVM::DeserializeExprsesion(&v75, v42, v43);
            goto LABEL_87;
          }

LABEL_86:
          v75 = 0;
LABEL_87:
          OVM::DeserializeExpressions(v76, v44, v43);
          [(OVM *)v38 objectForKeyedSubscript:@"behavior"];
          [objc_claimAutoreleasedReturnValue() intValue];
          operator new();
        }
      }

      v78 = 0;
      if (v42)
      {
        goto LABEL_51;
      }

      goto LABEL_86;
    case 8:
      v68 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "value");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v68, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v69 = [(OVM *)v68 objectForKeyedSubscript:@"value"];
      if (v69)
      {
        [v69 asCXXString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v80 = 0;
      }

      operator new();
    case 9:
      v22 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "value");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v22, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      [(OVM *)v22 objectForKeyedSubscript:@"value"];
      [objc_claimAutoreleasedReturnValue() longLongValue];
      operator new();
    case 10:
      v61 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "lhs");
      std::string::basic_string[abi:ne200100]<0>(v81, "rhs");
      std::string::basic_string[abi:ne200100]<0>(v82, "kind");
      std::string::basic_string[abi:ne200100]<0>(v83, "compound");
      v76[0] = __p;
      v76[1] = 4;
      OVM::AssertKeys(v61, v76);
      v62 = 0;
      while (1)
      {
        if (v83[v62 + 23] < 0)
        {
          operator delete(*&v83[v62]);
        }

        v62 -= 24;
        if (v62 == -96)
        {
          v63 = [(OVM *)v61 objectForKeyedSubscript:@"lhs"];
          OVM::DeserializeExprsesion(__p, v63, v64);
          v65 = [(OVM *)v61 objectForKeyedSubscript:@"rhs"];
          OVM::DeserializeExprsesion(v76, v65, v66);
          [(OVM *)v61 objectForKeyedSubscript:@"kind"];
          v67 = [objc_claimAutoreleasedReturnValue() intValue];
          OVM::BinaryOperator::ToKind(v67);
          [(OVM *)v61 objectForKeyedSubscript:@"compound"];
          [objc_claimAutoreleasedReturnValue() BOOLValue];
          operator new();
        }
      }

    case 11:
      v11 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "rhs");
      std::string::basic_string[abi:ne200100]<0>(v81, "kind");
      v76[0] = __p;
      v76[1] = 2;
      OVM::AssertKeys(v11, v76);
      v12 = 0;
      while (1)
      {
        if (v81[v12 + 23] < 0)
        {
          operator delete(*&v81[v12]);
        }

        v12 -= 24;
        if (v12 == -48)
        {
          v13 = [(OVM *)v11 objectForKeyedSubscript:@"rhs"];
          OVM::DeserializeExprsesion(__p, v13, v14);
          [(OVM *)v11 objectForKeyedSubscript:@"kind"];
          v15 = [objc_claimAutoreleasedReturnValue() intValue];
          OVM::UnaryOperator::ToKind(v15);
          operator new();
        }
      }

    case 12:
      v19 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "keysAndValues");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v19, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v20 = [(OVM *)v19 objectForKeyedSubscript:@"keysAndValues"];
      OVM::DeserializeExpressions(__p, v20, v21);
      operator new();
    case 13:
      v50 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "values");
      v76[0] = __p;
      v76[1] = 1;
      OVM::AssertKeys(v50, v76);
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      v51 = [(OVM *)v50 objectForKeyedSubscript:@"values"];
      OVM::DeserializeExpressions(__p, v51, v52);
      operator new();
    case 14:
      operator new();
    case 15:
      v30 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "exprs");
      std::string::basic_string[abi:ne200100]<0>(v81, "retVal");
      v76[0] = __p;
      v76[1] = 2;
      OVM::AssertKeys(v30, v76);
      v31 = 0;
      while (1)
      {
        if (v81[v31 + 23] < 0)
        {
          operator delete(*&v81[v31]);
        }

        v31 -= 24;
        if (v31 == -48)
        {
          v32 = [(OVM *)v30 objectForKeyedSubscript:@"exprs"];
          OVM::DeserializeExpressions(v76, v32, v33);
          v34 = [(OVM *)v30 objectForKeyedSubscript:@"retVal"];
          OVM::DeserializeExprsesion(&v73, v34, v35);
          operator new();
        }
      }

    default:
      v5 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "type");
      std::string::basic_string[abi:ne200100]<0>(v81, "name");
      v76[0] = __p;
      v76[1] = 2;
      OVM::AssertKeys(v5, v76);
      for (j = 0; j != -48; j -= 24)
      {
        if (v81[j + 23] < 0)
        {
          operator delete(*&v81[j]);
        }
      }

      v7 = [(OVM *)v5 objectForKeyedSubscript:@"initializer"];
      [(OVM *)v5 objectForKeyedSubscript:@"type"];
      v8 = [objc_claimAutoreleasedReturnValue() intValue];
      OVM::TypeInfo::ToType(v8);
      v9 = [(OVM *)v5 objectForKeyedSubscript:@"name"];
      if (v9)
      {
        [v9 asCXXString];
        if (v7)
        {
LABEL_10:
          OVM::DeserializeExprsesion(v76, v7, v10);
          goto LABEL_90;
        }
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v80 = 0;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v76[0] = 0;
LABEL_90:
      operator new();
  }
}

void sub_22EF098F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v35)
  {
    OVM::DeserializeExprsesion(v35);
  }

  MEMORY[0x2318FB870](v34, 0x10B3C40558ED239);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<OVM::Expression>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<OVM::Expression>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<OVM::Expression>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t OVM::Expression::ToKind(uint64_t this)
{
  if (this > 0xF)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::Declaration::~Declaration(OVM::Declaration *this)
{
  *this = &unk_2843B5D08;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_2843B5D08;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Value::~Value(void **this)
{
  *this = &unk_2843B5D50;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5D50;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void sub_22EF0A674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<OVM::ObjCMessage,std::unique_ptr<OVM::Expression>,std::vector<std::unique_ptr<OVM::Expression>>,std::string,OVM::TypeInfo::Type,unsigned int,0>(&a16, &a20);
  MEMORY[0x2318FB870](v21, v20);
  _Unwind_Resume(a1);
}

uint64_t OVM::ObjCMessage::ObjCMessage(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5, int a6)
{
  *(a1 + 8) = 2;
  *a1 = &unk_2843B5D88;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a3;
  *(a1 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 48) = a5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v9;
  }

  *(a1 + 80) = a6;
  return a1;
}

void sub_22EF0A764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    OVM::DeserializeExprsesion(v4);
  }

  _Unwind_Resume(a1);
}

void OVM::ObjCMessage::~ObjCMessage(void **this)
{
  *this = &unk_2843B5D88;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v3 = this + 3;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5D88;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v3 = this + 3;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x2318FB870](this, 0x10B3C40DFF08849);
}

void OVM::ObjCClass::~ObjCClass(void **this)
{
  *this = &unk_2843B5DC0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5DC0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void sub_22EF0AA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2318FB870](v20, v19);
  _Unwind_Resume(a1);
}

uint64_t OVM::FunctionCall::FunctionCall(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(a1 + 8) = 4;
  *a1 = &unk_2843B5DF8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v4;
  }

  return a1;
}

void sub_22EF0AB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OVM::FunctionCall::~FunctionCall(void **this)
{
  *this = &unk_2843B5DF8;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this + 2;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2843B5DF8;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this + 2;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10B3C406AA0CD03);
}

void OVM::StringLiteral::~StringLiteral(void **this)
{
  *this = &unk_2843B5E30;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5E30;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Conditional::~Conditional(OVM::Conditional *this)
{
  *this = &unk_2843B5E68;
  v3 = (this + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5E68;
  v3 = (this + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x2318FB870](this, 0x10A1C402F18DB2ELL);
}

uint64_t OVM::BinaryOperator::ToKind(uint64_t this)
{
  if (this > 0x11)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::BinaryOperator::~BinaryOperator(OVM::BinaryOperator *this)
{
  *this = &unk_2843B5ED8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2843B5ED8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2318FB870);
}

uint64_t OVM::UnaryOperator::ToKind(uint64_t this)
{
  if (this > 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::UnaryOperator::~UnaryOperator(OVM::UnaryOperator *this)
{
  *this = &unk_2843B5F10;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5F10;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Return::~Return(OVM::Return *this)
{
  *this = &unk_2843B5F48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5F48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Loop::~Loop(OVM::Loop *this)
{
  *this = &unk_2843B5F80;
  v5 = (this + 40);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2843B5F80;
  v5 = (this + 40);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MEMORY[0x2318FB870](this, 0x10A1C407AE6A5FBLL);
}

void OVM::DictionaryLiteral::~DictionaryLiteral(OVM::DictionaryLiteral *this)
{
  *this = &unk_2843B5FB8;
  v1 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2843B5FB8;
  v2 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10A1C4037ACD87BLL);
}

void OVM::ArrayLiteral::~ArrayLiteral(OVM::ArrayLiteral *this)
{
  *this = &unk_2843B5FF0;
  v1 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2843B5FF0;
  v2 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10A1C4037ACD87BLL);
}

void OVM::CompoundExpression::~CompoundExpression(OVM::CompoundExpression *this)
{
  *this = &unk_2843B6060;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2843B6060;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x2318FB870](this, 0x10A1C409BA56AB0);
}

void std::vector<std::unique_ptr<OVM::Expression>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<OVM::Script>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B6098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EF0F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EF0FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SelectByNameCmd(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = malloc_type_calloc(v2 + 6, 1uLL, 0x4FE168A1uLL);
  *v3 = 304128;
  v3[4] = [v1 length];
  v4 = [v1 bytes];
  v5 = [v1 length];

  memcpy(v3 + 5, v4, v5);
  v6 = MEMORY[0x277CBEA90];

  return [v6 dataWithBytesNoCopy:v3 length:v2 + 6 freeWhenDone:1];
}

id EndOfTransactionCmd(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 length];
  v6 = v5 + [v4 length];
  v7 = malloc_type_calloc(v6 + 7, 1uLL, 0x93AF27CAuLL);
  v8 = [v4 length] + 6;
  *v7 = 44672;
  v7[4] = 0;
  v7[4] = v5 + [v4 length] + 2;
  v7[5] = [v4 length];
  v9 = [v4 bytes];
  v10 = [v4 length];

  memcpy(v7 + 6, v9, v10);
  v11 = &v7[v8];
  *v11 = v5;
  if ([v3 length])
  {
    memcpy(v11 + 1, [v3 bytes], objc_msgSend(v3, "length"));
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v6 + 7 freeWhenDone:1];

  return v12;
}

uint64_t GetSW(void *a1)
{
  v1 = a1;
  if ([v1 length] < 2)
  {
    U16BE = 0;
  }

  else
  {
    U16BE = ReadU16BE(([v1 bytes] + objc_msgSend(v1, "length") - 2));
  }

  return U16BE;
}

id Find(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id Filter(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

void *CircularBufferInit(void *a1, size_t a2)
{
  bzero(a1, a2);
  a1[2] = a1 + a2;
  a1[3] = a2 - 32;
  *a1 = a1 + 4;
  return a1;
}

void *CircularBufferAdd(const void **a1, uint64_t a2, unsigned int a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v5[1] = a3;
  result = CircularBufferAddScattered(a1, v5, 1);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *CircularBufferAddScattered(const void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = 0;
  if (a3)
  {
    v7 = (a2 + 8);
    v8 = a3;
    do
    {
      v9 = *v7;
      v7 += 8;
      v6 += v9;
      --v8;
    }

    while (v8);
  }

  __src = v6;
  v10 = v6;
  v11 = v6 + 2;
  if (a1[2] - (a1 + 4) <= v11)
  {
    CircularBufferAddScattered_cold_1();
  }

  v12 = a1[1];
  if (!v12)
  {
    v12 = *a1;
    a1[1] = *a1;
  }

  __dst = 0;
  for (i = a1[3]; i < v11; a1[3] = i)
  {
    ReadCircular(a1, v12, &__dst, 2uLL);
    v14 = __dst;
    v15 = a1[2];
    v16 = a1[1] + __dst + 2;
    if (v16 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1 - v15 + 32;
    }

    v12 = &v17[v16];
    a1[1] = &v17[v16];
    i = a1[3] + v14 + 2;
  }

  result = CircularWrite(a1, &__src, 2uLL);
  if (v3)
  {
    v19 = (a2 + 8);
    do
    {
      result = CircularWrite(a1, *(v19 - 1), *v19);
      v19 += 2;
      --v3;
    }

    while (v3);
  }

  a1[3] = a1[3] - v10 - 2;
  return result;
}

void *ReadCircular(uint64_t a1, const void *a2, char *__dst, size_t __n)
{
  v6 = *(a1 + 16);
  if (a2 + __n <= v6)
  {
    v10 = __dst;
    v9 = __n;
  }

  else
  {
    v7 = v6 - a2;
    if ((v6 - a2) < 0)
    {
      ReadCircular_cold_1();
    }

    memcpy(__dst, a2, v6 - a2);
    v9 = __n - v7;
    v10 = &__dst[v7];
    a2 = (a1 + 32);
  }

  return memcpy(v10, a2, v9);
}

void *CircularWrite(uint64_t a1, char *__src, size_t __n)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  if (v6 + __n <= v7)
  {
    result = memcpy(v6, __src, __n);
    v11 = *a1 + __n;
  }

  else
  {
    v8 = v7 - v6;
    if ((v7 - v6) < 0)
    {
      CircularWrite_cold_1();
    }

    memcpy(v6, __src, v7 - v6);
    v9 = __n - v8;
    result = memcpy((a1 + 32), &__src[v8], v9);
    v11 = a1 + 32 + v9;
  }

  *a1 = v11;
  return result;
}

void CircularBufferDump(const void **a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    LOWORD(v5) = 0;
    __dst = 0;
    v6 = (a1 + 4);
    do
    {
      ReadCircular(a1, v2, &__dst, 2uLL);
      if (v5 <= __dst)
      {
        v5 = __dst;
      }

      else
      {
        v5 = v5;
      }

      v7 = &v2[__dst + 2];
      v8 = a1[2];
      if (v7 <= v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = &v6[-v8];
      }

      v2 = &v9[v7];
    }

    while (&v9[v7] != *a1);
    v10 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v10)
    {
      v11 = v10;
      bzero(v10, v5);
      v12 = a1[1];
      do
      {
        ReadCircular(a1, v12, &__dst, 2uLL);
        v13 = v12 + 2;
        v14 = a1[2];
        if ((v12 + 2) <= v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = &v6[-v14];
        }

        v16 = &v15[v13];
        ReadCircular(a1, &v15[v13], v11, __dst);
        v17 = &v16[__dst];
        v18 = a1[2];
        if (v17 <= v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = (v6 - v18);
        }

        v12 = &v19[v17];
        (*(a2 + 16))(a2);
      }

      while (v12 != *a1);
      free(v11);
    }
  }
}

__CFString *DecodeTransactionDetail(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*a1 << 16) | (a1[1] << 8) | a1[2];
  if (v2 < 0x20000)
  {
    if (v2 <= 66559)
    {
      if (v2 > 66303)
      {
        switch(v2)
        {
          case 66304:
            result = @"TransitTrain";
            goto LABEL_67;
          case 66305:
            result = @"TransitTrainMaglev";
            goto LABEL_67;
          case 66306:
            result = @"TransitTrainShinkansen";
            goto LABEL_67;
        }
      }

      else
      {
        switch(v2)
        {
          case 65536:
            result = @"Transit";
            goto LABEL_67;
          case 65792:
            result = @"TransitMetro";
            goto LABEL_67;
          case 66048:
            result = @"TransitBus";
            goto LABEL_67;
        }
      }
    }

    else
    {
      if (v2 <= 66562)
      {
        if (v2 == 66560)
        {
          result = @"TransitOther";
        }

        else if (v2 == 66561)
        {
          result = @"TransitOtherTaxi";
        }

        else
        {
          result = @"TransitOtherFerry";
        }

        goto LABEL_67;
      }

      if (v2 > 66816)
      {
        if (v2 == 66817)
        {
          result = @"TransitSpecialGreenCarUsed";
          goto LABEL_67;
        }

        if (v2 == 66818)
        {
          result = @"TransitSpecialGreenCarSeated";
          goto LABEL_67;
        }
      }

      else
      {
        if (v2 == 66563)
        {
          result = @"TransitOtherBike";
          goto LABEL_67;
        }

        if (v2 == 66816)
        {
          result = @"TransitSpecial";
          goto LABEL_67;
        }
      }
    }
  }

  else if (v2 > 131839)
  {
    if (v2 < 196608)
    {
      switch(v2)
      {
        case 131840:
          result = @"PurchaseRefund";
          goto LABEL_67;
        case 131841:
          result = @"PurchaseRefundReturn";
          goto LABEL_67;
        case 131842:
          result = @"PurchaseRefundCancellation";
          goto LABEL_67;
      }
    }

    else if (v2 > 197119)
    {
      if (v2 == 197120)
      {
        result = @"TopUpServer";
        goto LABEL_67;
      }

      if (v2 == 0x40000)
      {
        result = @"CardRead";
        goto LABEL_67;
      }
    }

    else
    {
      if (v2 == 196608)
      {
        result = @"TopUp";
        goto LABEL_67;
      }

      if (v2 == 196864)
      {
        result = @"TopUpContactless";
        goto LABEL_67;
      }
    }
  }

  else if (v2 <= 131329)
  {
    switch(v2)
    {
      case 131072:
        result = @"Purchase";
        goto LABEL_67;
      case 131328:
        result = @"PurchaseRetail";
        goto LABEL_67;
      case 131329:
        result = @"PurchaseRetailMerchant";
        goto LABEL_67;
    }
  }

  else if (v2 > 131584)
  {
    if (v2 == 131585)
    {
      result = @"PurchaseAdmissionParking";
      goto LABEL_67;
    }

    if (v2 == 131586)
    {
      result = @"PurchaseAdmissionGarden";
      goto LABEL_67;
    }
  }

  else
  {
    if (v2 == 131330)
    {
      result = @"PurchaseRetailGasStation";
      goto LABEL_67;
    }

    if (v2 == 131584)
    {
      result = @"PurchaseAdmission";
      goto LABEL_67;
    }
  }

  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    v9[0] = 67109632;
    v9[1] = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_ERROR, "Bogus transaction type 0x%X | 0x%X | 0x%X, returning unknown", v9, 0x14u);
  }

  result = @"Unknown";
LABEL_67:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DecodeBCD(const unsigned __int8 *a1, uint64_t a2)
{
  for (i = 0; a2; --a2)
  {
    v3 = *a1++;
    i = (v3 & 0xF) + 100 * i + 10 * (v3 >> 4);
  }

  return i;
}

uint64_t DecodeBCD(const DERItem *a1)
{
  length = a1->length;
  if (!length)
  {
    return 0;
  }

  result = 0;
  data = a1->data;
  do
  {
    v5 = *data++;
    result = (v5 & 0xF) + 100 * result + 10 * (v5 >> 4);
    --length;
  }

  while (length);
  return result;
}

uint64_t DecodeBCD(char *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  result = 0;
  v5 = &a1[a2];
  do
  {
    v6 = *v5++;
    result = (v6 & 0xF) + 100 * result + 10 * (v6 >> 4);
    --a3;
  }

  while (a3);
  return result;
}

uint64_t EncodeBCD(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2;
  do
  {
    v4 = *a1++;
    v2 = v4 | (v2 << 8);
    --v3;
  }

  while (v3);
  result = 0;
  do
  {
    result += ((v2 % 0x64 % 0xA) | (16 * (v2 % 0x64 / 0xA))) << v3;
    v3 += 8;
    v2 /= 0x64uLL;
    --a2;
  }

  while (a2);
  return result;
}

dispatch_time_t OUTLINED_FUNCTION_0_0(double a1, double a2)
{

  return dispatch_time(0, (a1 * a2));
}

void sub_22EF49BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31)
{
  objc_destroyWeak((v31 + 40));
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EF49EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x16u);
}

id FelicaGetDataFileSystemCommand(__int16 a1, __int16 a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0x5FE07070000C280;
  v6 = a1;
  v7 = a2;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:12];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id FeliCaGetBlockDataFromGetDataCommand(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length] != 21)
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = [v1 length];
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "GET DATA response length if unexpected: %u", &v12, 8u);
    }

    goto LABEL_13;
  }

  v2 = [v1 bytes];
  v3 = v2;
  if (*(v2 + 3))
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 3);
      v12 = 67109120;
      v13 = v5;
      v6 = "GET DATA response returned an unexpected Status Flag 1 %d";
LABEL_11:
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, v6, &v12, 8u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (*(v2 + 4))
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v3 + 4);
      v12 = 67109120;
      v13 = v8;
      v6 = "GET DATA response returned an unexpected Status Flag 2 %d";
      goto LABEL_11;
    }

LABEL_12:

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v2 + 5 length:16];
LABEL_14:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void sub_22EF5CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = v7;

  caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::shared_ptr<OVM::Script>,OVM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<OVM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_22EF5CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_22EF5D22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5DB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v54 - 224) & 1) == 0)
  {
    a41 = (v54 - 248);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5E374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51)
{
  v60 = v58;

  if ((a51 & 1) == 0)
  {
    a41 = &a48;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5FC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if ((*(v23 - 184) & 1) == 0)
  {
    *(v23 - 240) = v23 - 208;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v23 - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF60810(_Unwind_Exception *a1)
{
  v5 = (v3 + 2663);
  v6 = -2688;
  v7 = v5;
  while (1)
  {
    v8 = *v7;
    v7 -= 48;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 48;
    if (!v6)
    {
      MEMORY[0x2318FB870](v2, v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_22EF60F30(_Unwind_Exception *a1)
{
  v5 = (v3 + 1559);
  v6 = -1560;
  v7 = v5;
  while (1)
  {
    v8 = *v7;
    v7 -= 24;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 24;
    if (!v6)
    {
      MEMORY[0x2318FB870](v2, v1);
      _Unwind_Resume(a1);
    }
  }
}

std::string *ctu::join<std::__wrap_iter<std::string const*>>@<X0>(std::string *__str@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (__str != a2)
  {
    v8 = __str;
    __str = std::string::operator=(a5, __str);
    for (i = v8 + 1; i != a2; ++i)
    {
      if (a3)
      {
        if (a4 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a4 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v21) = a4;
        if (a4)
        {
          memmove(&__dst, a3, a4);
        }

        *(&__dst + a4) = 0;
        v13 = HIBYTE(v21);
        v12 = __dst;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        __dst = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v12;
      }

      if ((v13 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      std::string::append(a5, p_dst, v15);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__dst);
      }

      v16 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = i->__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a5, v17, size);
    }
  }

  return __str;
}

void sub_22EF6125C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void caulk::bad_expected_access<OVM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2843B6658;
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::exception::~exception(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF61360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void *caulk::bad_expected_access<OVM::Error>::bad_expected_access(void *a1, uint64_t *a2)
{
  *a1 = &unk_2843B6658;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

uint64_t caulk::bad_expected_access<OVM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2843B6658;
  v3 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::exception::~exception(a1);
  return MEMORY[0x2318FB870]();
}

uint64_t caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

uint64_t std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OVM::Var>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF615E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<OVM::Var>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void *std::map<std::string,OVM::Var>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,OVM::Var> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,OVM::Var> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__construct_node<std::pair<std::string const,OVM::Var> const&>();
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_22EF619DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_22EF61C5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AllowlistClassChecker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B6680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

id ATLLogObject()
{
  if (ATLLogObject_onceToken != -1)
  {
    ATLLogObject_cold_1();
  }

  v1 = ATLLogObject_logObject;

  return v1;
}

uint64_t __ATLLogObject_block_invoke()
{
  ATLLogObject_logObject = os_log_create("com.apple.nfc", "atl");

  return MEMORY[0x2821F96F8]();
}

void LogBinary(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = MEMORY[0x277CCAB68];
  v31 = v14;
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:&a9];
  v17 = [v15 stringWithFormat:@"%s/%d : %@", a2, a3, v16];

  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  v19 = [v17 length];
  v20 = v19 + [v18 length] + 1;
  v21 = ATLLogObject();
  v22 = os_log_type_enabled(v21, a1);
  if (v20 > 0x1FF)
  {
    if (v22)
    {
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&dword_22EEF5000, v21, a1, "%@", buf, 0xCu);
    }

    if ([v18 length])
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (([v18 length] + v24) > 0x1FF)
        {
          v26 = 512;
        }

        else
        {
          v26 = [v18 length] + v24;
        }

        v27 = [v18 subdataWithRange:{v25, v26}];
        v28 = ATLLogObject();
        if (os_log_type_enabled(v28, a1))
        {
          v29 = [v27 base64EncodedStringWithOptions:0];
          *buf = 138412290;
          v33 = v29;
          _os_log_impl(&dword_22EEF5000, v28, a1, "%@", buf, 0xCu);
        }

        v25 += 512;
        v24 -= 512;
      }

      while (v25 < [v18 length]);
    }
  }

  else
  {
    if (v22)
    {
      v23 = [v18 base64EncodedStringWithOptions:0];
      *buf = 138412546;
      v33 = v17;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_22EEF5000, v21, a1, "%@ %@", buf, 0x16u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t DERParseSequenceSpec(uint64_t *a1, uint64_t a2, char *a3, size_t a4)
{
  v8 = objc_alloc_init(DERLogContext);
  v9 = *(a2 + 16);
  v10 = *(a2 + 8);
  if (*(a2 + 18) == 1)
  {
    v11 = DERParseUnsortedSequenceC(a1, v9, v10, a3, a4, *(a2 + 19));
  }

  else
  {
    v11 = DERParseSequenceC(a1, v9, v10, a3, a4);
  }

  v14 = v11;
  if (v11)
  {
    LogBinary(OS_LOG_TYPE_ERROR, "DERParseSequenceSpec", 37, *a1, a1[1], @"parse %s failed with %d", v12, v13, *a2);
    [(DERLogContext *)v8 dumpLogs];
    v15 = ATLLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "------ END OF DER DUMP -----", buf, 2u);
    }
  }

  return v14;
}

uint64_t DERParseSequenceSpec(void *a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = a1;
  v8 = [v7 length];

  v10[1] = v8;
  return DERParseSequenceSpec(v10, a2, a3, a4);
}

uint64_t DERDecodeItemCtx(uint64_t a1, unint64_t *a2)
{
  v4 = objc_alloc_init(DERLogContext);
  v5 = DERDecodeItem(a1, a2);
  v8 = v5;
  if (v5)
  {
    LogBinary(OS_LOG_TYPE_ERROR, "DERDecodeItemCtx", 62, *a1, *(a1 + 8), @"parse failed with %d", v6, v7, v5);
    [(DERLogContext *)v4 dumpLogs];
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "------ END OF DER DUMP -----", buf, 2u);
    }
  }

  return v8;
}

void sub_22EF66700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22EF68724()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E328);
  __swift_project_value_buffer(v0, qword_27DA9E328);
  return sub_22EFB625C();
}

uint64_t sub_22EF687F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  result = sub_22EF7E630(a2, a3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = result;
    *a5 = v8;
  }

  return result;
}

uint64_t sub_22EF68840()
{
  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  result = sub_22EFB660C();
  qword_27DAA03F0 = result;
  return result;
}

uint64_t sub_22EF68888()
{
  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  result = sub_22EFB660C();
  qword_27DAA03F8 = result;
  return result;
}

id sub_22EF688D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22EFBB8B0;
  if (qword_27DA9E350 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA03F0;
  *(v0 + 32) = qword_27DAA03F0;
  v2 = qword_27DA9E358;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27DAA03F8;
  *(v0 + 40) = qword_27DAA03F8;
  qword_27DAA0400 = v0;

  return v4;
}

uint64_t LyonSystemConfiguration.AssociatedReader.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22EFB61EC();
  return MEMORY[0x2318FB660](v0[2]);
}

uint64_t static LyonSystemConfiguration.AssociatedReader.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (sub_22EF6E8C0(*a1, v5, *a2, v7))
  {
    v8 = a1[2] < a2[2];
  }

  else
  {
    v8 = sub_22EF71F2C(v4, v5, v6, v7);
  }

  return v8 & 1;
}

uint64_t sub_22EF68B18()
{
  v1 = v0;
  v2 = sub_22EFB651C();
  v4 = v3;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v2, v4);
  MEMORY[0x2318FB260](0x4920726564616552, 0xEB00000000203A44);
  sub_22EF83154(*v1, *(v1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
  v5 = sub_22EFB646C();
  v7 = v6;

  MEMORY[0x2318FB260](v5, v7);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v2, v4);
  MEMORY[0x2318FB260](0x797469726F697250, 0xEA0000000000203ALL);
  v16 = *(v0 + 16);
  v8 = sub_22EFB683C();
  MEMORY[0x2318FB260](v8);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v2, v4);
  MEMORY[0x2318FB260](0x4B2063696C627550, 0xEC000000203A7965);
  sub_22EF83154(*(v1 + 24), *(v1 + 32));
  v9 = sub_22EFB646C();
  v11 = v10;

  MEMORY[0x2318FB260](v9, v11);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v2, v4);

  MEMORY[0x2318FB260](0x746E696F70646E45, 0xED0000203A444920);
  sub_22EF83154(*(v1 + 40), *(v1 + 48));
  v12 = sub_22EFB646C();
  v14 = v13;

  MEMORY[0x2318FB260](v12, v14);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  return 0;
}

uint64_t LyonSystemConfiguration.AssociatedReader.hashValue.getter()
{
  sub_22EFB68DC();
  v1 = *v0;
  v2 = v0[1];
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v0[2]);
  return sub_22EFB691C();
}

uint64_t sub_22EF68E84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a1, v3, *a2, v6))
  {
    v8 = v4 < v7;
  }

  else
  {
    v8 = sub_22EF71F2C(v2, v3, v5, v6);
  }

  return v8 & 1;
}

BOOL sub_22EF68F60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a2, v6, *a1, v3))
  {
    v8 = v7 < v4;
  }

  else
  {
    v8 = sub_22EF71F2C(v5, v6, v2, v3);
  }

  return (v8 & 1) == 0;
}

BOOL sub_22EF69040(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a1, v3, *a2, v6))
  {
    v8 = v4 < v7;
  }

  else
  {
    v8 = sub_22EF71F2C(v2, v3, v5, v6);
  }

  return (v8 & 1) == 0;
}

uint64_t sub_22EF69120(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a2, v6, *a1, v3))
  {
    v8 = v7 < v4;
  }

  else
  {
    v8 = sub_22EF71F2C(v5, v6, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_22EF691FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22EFB68DC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v3);
  return sub_22EFB691C();
}

uint64_t sub_22EF69260()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22EFB61EC();
  return MEMORY[0x2318FB660](v3);
}

uint64_t sub_22EF69298()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22EFB68DC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v3);
  return sub_22EFB691C();
}

uint64_t sub_22EF692F8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_22EF6E8C0(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

BOOL static LyonSystemConfiguration.associatedReadersConflict(pass1Readers:pass2Readers:)(uint64_t a1, uint64_t a2)
{

  v4 = *(sub_22EF6B780(a2, a1) + 2);

  return v4 != 0;
}

void sub_22EF693A4(void *a1, char *a2)
{
  v221 = *MEMORY[0x277D85DE8];
  v5 = sub_22EFB63EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22EFB62DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22EF6F3F8(a1);
  if (v2)
  {
    goto LABEL_3;
  }

  v204 = a2;
  v189 = v9;
  v190 = v5;
  sub_22EF708C8(v15, v16);
  v17 = sub_22EF6F704(a1);
  if (!*(v17 + 16))
  {

    if (qword_27DA9E320 != -1)
    {
      goto LABEL_145;
    }

    goto LABEL_86;
  }

  v188 = v17;
  v175 = v6;
  v176 = a1;
  v211 = v204;

  sub_22EF6B444(&v211);
  v174 = 0;
  v19 = v211;
  v20 = sub_22EFAB164(&unk_2843B6790);
  v215 = v20;
  v216 = v21;
  v23 = v190;
  v24 = v189;
  v187 = *(v19 + 2);
  if (!v187)
  {
    v125 = v20;
    v126 = v21;

LABEL_91:
    sub_22EF70AE8(&qword_27DA9E418, MEMORY[0x277CC5540]);
    sub_22EFB62BC();
    sub_22EF70B68(v125, v126);
    v127 = v174;
    sub_22EFA9AB8(v125, v126, v24);
    v204 = v127;
    sub_22EF708C8(v125, v126);
    sub_22EFB62AC();
    (*(v175 + 8))(v24, v23);
    v213 = v10;
    v214 = sub_22EF70AE8(&qword_27DA9E420, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v211);
    (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
    __swift_project_boxed_opaque_existential_1(&v211, v213);
    v129 = v204;
    sub_22EFB608C();
    (*(v11 + 8))(v14, v10);
    v130 = __dst;
    __swift_destroy_boxed_opaque_existential_0Tm(&v211);
    v131 = sub_22EF6A9E4(v176, v130, *(&v130 + 1));
    if (v129)
    {
      sub_22EF708C8(v130, *(&v130 + 1));
      sub_22EF708C8(v215, v216);
      goto LABEL_3;
    }

    if ((v131 & 1) == 0)
    {
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v135 = sub_22EFB626C();
      __swift_project_value_buffer(v135, qword_27DA9E328);
      v136 = sub_22EFB624C();
      v137 = sub_22EFB65EC();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_22EEF5000, v136, v137, "Applet configuration has not changed", v138, 2u);
        MEMORY[0x2318FC200](v138, -1, -1);
      }

      sub_22EF708C8(v130, *(&v130 + 1));
      sub_22EF708C8(v215, v216);
      goto LABEL_3;
    }

    __dst = xmmword_22EFBB8D0;
    v132 = v215;
    v133 = v216 >> 62;
    v204 = 0;
    if ((v216 >> 62) > 1)
    {
      if (v133 != 2)
      {
        v134 = 0;
        goto LABEL_109;
      }

      v140 = *(v215 + 16);
      v139 = *(v215 + 24);
      v134 = v139 - v140;
      if (!__OFSUB__(v139, v140))
      {
LABEL_109:
        sub_22EFB02C8(v134, &__dst);
        v208 = sub_22EFAB164(&unk_2843B67B8);
        v209 = v141;
        sub_22EFB61FC();
        sub_22EFB61FC();
        v206 = sub_22EFAB164(&unk_2843B67E0);
        v207 = v142;
        v143 = v208;
        v144 = v209 >> 62;
        if ((v209 >> 62) > 1)
        {
          if (v144 != 2)
          {
            goto LABEL_121;
          }

          v147 = *(v208 + 16);
          v146 = *(v208 + 24);
          v148 = __OFSUB__(v146, v147);
          v145 = v146 - v147;
          if (!v148)
          {
LABEL_118:
            if (v145 < -32768)
            {
              __break(1u);
              goto LABEL_147;
            }

            if (v145 < 0x8000)
            {
LABEL_122:
              LOWORD(v211) = bswap32(v145) >> 16;
              v149 = sub_22EFA845C(&v211, &v211 + 2);
              v151 = v150;
              sub_22EFB61FC();
              sub_22EF708C8(v149, v151);
              sub_22EFB61FC();
              if (qword_27DA9E320 == -1)
              {
LABEL_123:
                v152 = sub_22EFB626C();
                __swift_project_value_buffer(v152, qword_27DA9E328);
                v153 = v206;
                v154 = v207;
                sub_22EF70B68(v206, v207);
                v155 = sub_22EFB624C();
                v156 = sub_22EFB65BC();
                sub_22EF708C8(v153, v154);
                if (os_log_type_enabled(v155, v156))
                {
                  v157 = swift_slowAlloc();
                  *&v203 = swift_slowAlloc();
                  v211 = v203;
                  *v157 = 136315138;
                  v158 = v204;
                  v159 = sub_22EF83154(v153, v154);
                  v204 = v158;
                  v205 = v159;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
                  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
                  v160 = sub_22EFB646C();
                  v162 = v161;

                  v163 = sub_22EF9447C(v160, v162, &v211);

                  *(v157 + 4) = v163;
                  _os_log_impl(&dword_22EEF5000, v155, v156, "Auxiliary Elements Command: %s", v157, 0xCu);
                  v164 = v203;
                  __swift_destroy_boxed_opaque_existential_0Tm(v203);
                  MEMORY[0x2318FC200](v164, -1, -1);
                  MEMORY[0x2318FC200](v157, -1, -1);
                }

                swift_beginAccess();
                v165 = sub_22EFB61BC();
                if (qword_27DA9E360 != -1)
                {
                  swift_once();
                }

                sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
                v166 = sub_22EFB653C();
                v205 = 0;
                v167 = [v176 transceiveAndCheckSW:v165 inArray:v166 error:&v205];

                v168 = v205;
                if (v167)
                {
                  v169 = sub_22EFB61DC();
                  sub_22EF708C8(v169, v170);

                  v171 = *(v183 + 16);
                  v172 = *(v183 + 24);
                  *(v183 + 16) = v130;
                  sub_22EF708B4(v171, v172);
                }

                else
                {
                  v173 = v168;
                  sub_22EFB60EC();

                  swift_willThrow();
                  sub_22EF708C8(v130, *(&v130 + 1));
                }

                sub_22EF708C8(v206, v207);
                sub_22EF708C8(__dst, *(&__dst + 1));
                sub_22EF708C8(v208, v209);
                sub_22EF708C8(v215, v216);
                goto LABEL_3;
              }

LABEL_147:
              swift_once();
              goto LABEL_123;
            }

            __break(1u);
LABEL_121:
            LODWORD(v145) = 0;
            goto LABEL_122;
          }

          __break(1u);
        }

        else if (!v144)
        {
          LODWORD(v145) = BYTE6(v209);
          goto LABEL_122;
        }

        LODWORD(v145) = HIDWORD(v143) - v143;
        if (__OFSUB__(HIDWORD(v143), v143))
        {
          goto LABEL_151;
        }

        v145 = v145;
        goto LABEL_118;
      }

      __break(1u);
    }

    else if (!v133)
    {
      v134 = BYTE6(v216);
      goto LABEL_109;
    }

    if (__OFSUB__(HIDWORD(v132), v132))
    {
      goto LABEL_150;
    }

    v134 = HIDWORD(v132) - v132;
    goto LABEL_109;
  }

  v25 = 0;
  v186 = v19 + 32;
  *&v22 = 136315138;
  v184 = v22;
  v203 = xmmword_22EFBB8C0;
  v198 = v10;
  v202 = v11;
  v204 = v14;
  v185 = v19;
  while (1)
  {
    if (v25 >= *(v19 + 2))
    {
      goto LABEL_139;
    }

    v195 = v25;
    v26 = &v186[56 * v25];
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    v220 = *(v26 + 6);
    v218 = v28;
    v219 = v29;
    v217 = v27;
    sub_22EF70CC4(&v217, &v211);
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v30 = sub_22EFB626C();
    __swift_project_value_buffer(v30, qword_27DA9E328);
    sub_22EF70CC4(&v217, &v211);
    v31 = sub_22EFB624C();
    v32 = sub_22EFB65BC();
    sub_22EF70CFC(&v217);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v211 = v34;
      *v33 = v184;
      v35 = sub_22EF68B18();
      v37 = sub_22EF9447C(v35, v36, &v211);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22EEF5000, v31, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      v38 = v34;
      v14 = v204;
      MEMORY[0x2318FC200](v38, -1, -1);
      MEMORY[0x2318FC200](v33, -1, -1);
    }

    v39 = v188;
    v41 = *(&v219 + 1);
    v40 = v220;
    if (*(v188 + 16))
    {
      sub_22EF70B68(*(&v219 + 1), v220);
      v42 = sub_22EFA9434(v41, v40);
      if (v43)
      {
        v44 = v41;
        v45 = *(*(v39 + 56) + v42);
        sub_22EF708C8(v44, v40);
        v46 = sub_22EFB618C();
        v48 = v47;
        sub_22EFB61FC();
        sub_22EF708C8(v46, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
        v49 = swift_allocObject();
        *(v49 + 16) = v203;
        *(v49 + 32) = v45;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
        v213 = v50;
        v51 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60);
        v214 = v51;
        v211 = v49;
        v52 = __swift_project_boxed_opaque_existential_1(&v211, v50);
        v53 = *v52;
        v54 = *(*v52 + 16);
        if (v54)
        {
          if (v54 <= 0xE)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v54;
            memcpy(&__dst, (v53 + 32), v54);
            v60 = __dst;
            v61 = v178 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v178 = v61;
          }

          else
          {
            v55 = sub_22EFB607C();
            v56 = *(v55 + 48);
            v57 = *(v55 + 52);
            swift_allocObject();
            v58 = sub_22EFB602C();
            v59 = v58;
            if (v54 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v60 = swift_allocObject();
              *(v60 + 16) = 0;
              *(v60 + 24) = v54;
              v61 = v59 | 0x8000000000000000;
            }

            else
            {
              v60 = v54 << 32;
              v61 = v58 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v60 = 0;
          v61 = 0xC000000000000000;
        }

        v98 = *(&v218 + 1);
        v99 = v219;
        __swift_destroy_boxed_opaque_existential_0Tm(&v211);
        sub_22EFB61FC();
        sub_22EF708C8(v60, v61);
        v100 = v99 >> 62;
        if ((v99 >> 62) > 1)
        {
          v11 = v202;
          if (v100 != 2)
          {
            __break(1u);

            __break(1u);
            return;
          }

          v101 = *(v98 + 16);
          v102 = *(v98 + 24);
        }

        else
        {
          v11 = v202;
          if (v100)
          {
            v101 = v98;
            v102 = v98 >> 32;
          }

          else
          {
            v101 = 0;
            v102 = BYTE6(v99);
          }
        }

        if (v101 == v102)
        {
          goto LABEL_140;
        }

        if (v100 == 2)
        {
          v103 = *(v98 + 24);
        }

        else if (v100 == 1)
        {
          v103 = v98 >> 32;
        }

        else
        {
          v103 = BYTE6(v99);
        }

        if (__OFSUB__(v103, 1))
        {
          goto LABEL_141;
        }

        v104 = sub_22EFB619C() & 1 | 2;
        v105 = swift_allocObject();
        *(v105 + 16) = v203;
        *(v105 + 32) = v104;
        v213 = v50;
        v214 = v51;
        v211 = v105;
        v106 = __swift_project_boxed_opaque_existential_1(&v211, v50);
        v107 = *v106;
        v108 = *(*v106 + 16);
        if (v108)
        {
          v14 = v204;
          if (v108 <= 0xE)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v108;
            memcpy(&__dst, (v107 + 32), v108);
            v114 = __dst;
            v115 = v177 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v177 = v115;
          }

          else
          {
            v109 = sub_22EFB607C();
            v110 = *(v109 + 48);
            v111 = *(v109 + 52);
            swift_allocObject();
            v112 = sub_22EFB602C();
            v113 = v112;
            if (v108 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v114 = swift_allocObject();
              *(v114 + 16) = 0;
              *(v114 + 24) = v108;
              v115 = v113 | 0x8000000000000000;
            }

            else
            {
              v114 = v108 << 32;
              v115 = v112 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v114 = 0;
          v115 = 0xC000000000000000;
          v14 = v204;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v211);
        v211 = v114;
        v212 = v115;
        v116 = sub_22EFB620C();
        v118 = v117;
        sub_22EFB61FC();
        sub_22EF708C8(v116, v118);
        v119 = v211;
        v120 = v212;
        sub_22EFB61FC();
        sub_22EF708C8(v119, v120);
        goto LABEL_8;
      }

      sub_22EF708C8(v41, v40);
    }

    v197 = v41;
    sub_22EF70CC4(&v217, &v211);
    v62 = sub_22EFB624C();
    v63 = sub_22EFB65CC();
    sub_22EF70CFC(&v217);
    if (os_log_type_enabled(v62, v63))
    {
      break;
    }

LABEL_8:
    sub_22EF70CFC(&v217);
    v23 = v190;
    v24 = v189;
    v19 = v185;
    v25 = v195 + 1;
    if (v195 + 1 == v187)
    {

      v125 = v215;
      v126 = v216;
      goto LABEL_91;
    }
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  *&__dst = v65;
  *v64 = v184;
  v66 = v40 >> 62;
  v196 = HIDWORD(v197);
  v182 = v62;
  v181 = v63;
  v180 = v64;
  v179 = v65;
  if ((v40 >> 62) <= 1)
  {
    if (v66)
    {
      v72 = v196 - v197;
      if (__OFSUB__(v196, v197))
      {
        goto LABEL_143;
      }

      v67 = v72;
      if (v72)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v67 = BYTE6(v40);
      if (BYTE6(v40))
      {
        goto LABEL_29;
      }
    }

    goto LABEL_36;
  }

  if (v66 != 2)
  {
    goto LABEL_36;
  }

  v69 = *(v197 + 16);
  v68 = *(v197 + 24);
  v67 = v68 - v69;
  if (__OFSUB__(v68, v69))
  {
    goto LABEL_144;
  }

  if (!v67)
  {
LABEL_36:
    v73 = MEMORY[0x277D84F90];
LABEL_37:
    v211 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v74 = sub_22EFB646C();
    v76 = v75;

    v77 = sub_22EF9447C(v74, v76, &__dst);

    v78 = v180;
    *(v180 + 1) = v77;
    v79 = v182;
    _os_log_impl(&dword_22EEF5000, v182, v181, "Endpoint %s not found for in Lyon Instance, skipping", v78, 0xCu);
    v80 = v179;
    __swift_destroy_boxed_opaque_existential_0Tm(v179);
    MEMORY[0x2318FC200](v80, -1, -1);
    MEMORY[0x2318FC200](v78, -1, -1);

    goto LABEL_8;
  }

LABEL_29:
  v208 = MEMORY[0x277D84F90];
  v200 = v40 >> 62;
  sub_22EF9AAC8(0, v67 & ~(v67 >> 63), 0);
  v70 = v200;
  v194 = v197;
  if (v200)
  {
    if (v200 == 2)
    {
      v71 = *(v197 + 16);
    }

    else
    {
      v71 = v194;
    }
  }

  else
  {
    v71 = 0;
  }

  v201 = v71;
  if (v67 < 0)
  {
    goto LABEL_142;
  }

  v81 = 0;
  v73 = v208;
  v192 = v197 >> 32;
  v193 = BYTE6(v40);
  v191 = &v211 + v201;
  v199 = v67;
  while (2)
  {
    if (v81 < v67)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_132;
      }

      v83 = v201 + v81;
      if (v70 != 2)
      {
        if (v70 == 1)
        {
          if (v83 < v194 || v83 >= v192)
          {
            goto LABEL_135;
          }

          v84 = sub_22EFB603C();
          if (!v84)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
          }

          v85 = v84;
          v86 = sub_22EFB605C();
          v87 = v83 - v86;
          if (__OFSUB__(v83, v86))
          {
            goto LABEL_137;
          }

LABEL_56:
          v90 = *(v85 + v87);
        }

        else
        {
          if (v83 >= v193)
          {
            goto LABEL_133;
          }

          LODWORD(v211) = v197;
          BYTE4(v211) = v196;
          *(&v211 + 5) = *(&v197 + 5);
          HIBYTE(v211) = HIBYTE(v197);
          LOWORD(v212) = v40;
          BYTE2(v212) = BYTE2(v40);
          BYTE3(v212) = BYTE3(v40);
          BYTE4(v212) = BYTE4(v40);
          BYTE5(v212) = BYTE5(v40);
          v90 = v191[v81];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v91 = swift_allocObject();
        *(v91 + 16) = v203;
        *(v91 + 56) = MEMORY[0x277D84B78];
        *(v91 + 64) = MEMORY[0x277D84BC0];
        *(v91 + 32) = v90;
        v92 = sub_22EFB649C();
        v94 = v93;
        v208 = v73;
        v96 = *(v73 + 16);
        v95 = *(v73 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_22EF9AAC8((v95 > 1), v96 + 1, 1);
          v73 = v208;
        }

        *(v73 + 16) = v96 + 1;
        v97 = v73 + 16 * v96;
        *(v97 + 32) = v92;
        *(v97 + 40) = v94;
        ++v81;
        v67 = v199;
        v10 = v198;
        v11 = v202;
        v14 = v204;
        v70 = v200;
        if (v82 == v199)
        {
          goto LABEL_37;
        }

        continue;
      }

      if (v83 < *(v197 + 16))
      {
        goto LABEL_134;
      }

      if (v83 >= *(v197 + 24))
      {
        goto LABEL_136;
      }

      v88 = sub_22EFB603C();
      if (!v88)
      {
        goto LABEL_149;
      }

      v85 = v88;
      v89 = sub_22EFB605C();
      v87 = v83 - v89;
      if (__OFSUB__(v83, v89))
      {
        goto LABEL_138;
      }

      goto LABEL_56;
    }

    break;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  swift_once();
LABEL_86:
  v121 = sub_22EFB626C();
  __swift_project_value_buffer(v121, qword_27DA9E328);
  v122 = sub_22EFB624C();
  v123 = sub_22EFB65CC();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_22EEF5000, v122, v123, "No endpoints available on device, skip auxiliary elements", v124, 2u);
    MEMORY[0x2318FC200](v124, -1, -1);
  }

LABEL_3:
  v18 = *MEMORY[0x277D85DE8];
}