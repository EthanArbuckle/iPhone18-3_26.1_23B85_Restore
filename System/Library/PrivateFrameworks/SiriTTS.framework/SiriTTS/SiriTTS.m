uint64_t NeuralTTSUtils::should_use_neural_voice(NeuralTTSUtils *this, const char *a2)
{
  v7 = this;
  is_ane_available = NeuralTTSUtils::is_ane_available(this);
  if ((is_ane_available & 1) == 0 && !NeuralTTSUtils::is_amx_available(is_ane_available) || !NeuralTTSUtils::is_neural_voice_ready(this, v4))
  {
    return 0;
  }

  if (NeuralTTSUtils::check_thermal_limit(2))
  {
    std::allocate_shared[abi:ne200100]<Environment,std::allocator<Environment>,char const*&,0>();
  }

  return 1;
}

void sub_1C2F96444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NeuralTTSUtils::is_ane_available(NeuralTTSUtils *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "neuralModelType");
  InternalSettings::get_string_for_key(v8, __p);
  if (v9 < 0)
  {
    v2 = v8[1] == 3 && *v8[0] == 28257 && *(v8[0] + 2) == 101;
    operator delete(v8[0]);
  }

  else
  {
    v2 = v9 == 3 && LOWORD(v8[0]) == 28257 && BYTE2(v8[0]) == 101;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v2)
    {
      goto LABEL_21;
    }
  }

  else if (v2)
  {
LABEL_21:
    v4 = 1;
    return v4 & 1;
  }

  if (NeuralTTSUtils::is_ane_available(void)::onceToken != -1)
  {
    dispatch_once(&NeuralTTSUtils::is_ane_available(void)::onceToken, &__block_literal_global_1689);
  }

  v4 = NeuralTTSUtils::is_ane_available(void)::is_ane_available;
  return v4 & 1;
}

void sub_1C2F96584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InternalSettings::get_string_for_key(_BYTE *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.voiceservices"];
  v5 = [v4 stringForKey:v10];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UTF8String];
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  a1[23] = v8;
  if (v8)
  {
    memmove(a1, v7, v8);
  }

  a1[v9] = 0;
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t Diagnostics::log(uint64_t this, char *__s, const char *a3, ...)
{
  va_start(va, a3);
  v7[1] = *MEMORY[0x1E69E9840];
  if (Diagnostics::s_log_level >= this)
  {
    va_copy(v7, va);
    v4 = strlen(__s);
    v5 = v7 - ((MEMORY[0x1EEE9AC00]() + 17) & 0xFFFFFFFFFFFFFFF0);
    strcpy(v5, __s);
    *&v5[v4] = 10;
    this = vfprintf(*MEMORY[0x1E69E9848], v5, v7[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
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

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *MemoryMap::MemoryMap(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = open(v4, 0);
  if (v5 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v29 = *(a2 + 23);
    v30 = *a2;
    v31 = __error();
    if (v29 >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = v30;
    }

    StringFormatter::StringFormatter(&v41, "MemoryMap unable to open '%s': error %d\n", v32, *v31);
    MEMORY[0x1C692A510](exception, &v41);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v6 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if (fstat(v5, &v41) < 0)
  {
    v17 = __error();
    StringFormatter::StringFormatter(&__p, "MemoryMap unable to fstat, error %d", *v17);
    if ((v40 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v40 & 0x80u) == 0)
    {
      v19 = v40;
    }

    else
    {
      v19 = v39;
    }

    MEMORY[0x1C692A650](v36, p_p, v19);
    if (v40 < 0)
    {
      operator delete(__p);
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_46;
  }

  {
    NeverDestructed<std::recursive_mutex>::NeverDestructed<>();
  }

  v7 = MemoryMap::FileMapping::mutex(void)::mutex;
  std::recursive_mutex::lock(MemoryMap::FileMapping::mutex(void)::mutex);
  {
    operator new();
  }

  v8 = MemoryMap::FileMapping::mappings(void)::mappings;
  v9 = *MemoryMap::FileMapping::mappings(void)::mappings;
  while (v9)
  {
    v10 = v9[2];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = v9[1];
      if (!v12)
      {
        goto LABEL_18;
      }

      if (*v12 == v41.st_dev)
      {
        v13 = *(v12 + 8);
        if (v13 == v41.st_ino)
        {
          goto LABEL_45;
        }

        if (v13 > v41.st_ino)
        {
LABEL_23:
          v14 = 3;
          goto LABEL_24;
        }
      }

      else if (*v12 > v41.st_dev)
      {
        goto LABEL_23;
      }

      v14 = 0;
      v8 = *v8;
      v9 = *v9;
LABEL_24:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (v14)
      {
        break;
      }
    }

    else
    {
      v11 = 0;
LABEL_18:
      v15 = *v8;
      *v8 = **v8;
      v16 = v15[2];
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      operator delete(v15);
      v14 = 0;
      v9 = *v8;
      if (v11)
      {
        goto LABEL_24;
      }
    }
  }

  if (mmap(0, v41.st_size, 1, 1, v6, 0) != -1)
  {
    operator new();
  }

  v20 = *__error();
  v21 = __error();
  v22 = strerror(*v21);
  StringFormatter::StringFormatter(&__p, "MemoryMap unable to mmap, error %d/%s", v20, v22);
  if ((v40 & 0x80u) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p;
  }

  if ((v40 & 0x80u) == 0)
  {
    v24 = v40;
  }

  else
  {
    v24 = v39;
  }

  MEMORY[0x1C692A650](v36, v23, v24);
  if (v40 < 0)
  {
    operator delete(__p);
  }

  v12 = 0;
  v11 = 0;
LABEL_45:
  std::recursive_mutex::unlock(v7);
LABEL_46:
  close(v6);
  if (!v12)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    v34 = v36;
    if (v37 < 0)
    {
      v34 = v36[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    StringFormatter::StringFormatter(&v41, "%s, file: %s", v34, v35);
    MEMORY[0x1C692A510](v33, &v41);
    __cxa_throw(v33, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  v26 = *(v12 + 16);
  v25 = *(v12 + 24);
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    a1[2] = v26;
    a1[3] = v25;
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    a1[2] = v26;
    a1[3] = v25;
  }

  return a1;
}

void sub_1C2F96ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::recursive_mutex::unlock(v28);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VoiceConfig::get_json(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(&v8);
  if (v8)
  {
    v3 = v10;
    v4 = v11;
    v13 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v14, v12);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v30, v14);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v15, v30);
    v16 = 0;
    v17[0] = v3;
    v17[1] = v3 + v4;
    v17[2] = -1;
    v18 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = "";
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v5 = localeconv();
    if (v5->decimal_point)
    {
      v6 = *v5->decimal_point;
    }

    else
    {
      v6 = 46;
    }

    v28 = v6;
    v29 = 1;
    v16 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(v17);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v30);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::parse(v15, a2);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::~lexer(v17);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v15);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v14);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v12);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C2F97180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::~lexer(&a27);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a22);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a18);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, *v27);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a14);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void VoiceConfig::get_resource(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  (*(*a1 + 40))(v17);
  v7 = v18;
  v8 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v7 = v17[1];
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    MemoryMap::MemoryMap(&v12, v17);
    v10 = v12;
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v13;
      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = v14;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      *a4 = v12;
      *(a4 + 8) = 0;
      *(a4 + 16) = v14;
    }

    if (!*a4)
    {
      VoiceConfig::report_error(a2, a3, __p);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v18;
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1C2F9731C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v8 = (*(*v7 + 16))(v7);
    MEMORY[0x1C692A640](va, v8);
  }

  __cxa_end_catch();
  JUMPOUT(0x1C2F972D0);
}

void sub_1C2F9736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v26 = *(v24 + 8);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
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

uint64_t std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::__emplace_unique_key_args<std::type_index,std::piecewise_construct_t const&,std::tuple<std::type_index&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::__find_equal<std::type_index>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void SharedObjectPool::get<GryphonConfig>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    SharedObjectPool::get<VoiceConfig>(&v7, a2);
    (*(*v7 + 80))(&v6);
    operator new();
  }

  v5 = *(*v4 + 16);
  *a1 = *(*v4 + 8);
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void sub_1C2F97944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a11, a10);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::recursive_mutex::unlock((v13 + 56));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::__count_unique<std::type_index>(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = *(a2 + 8);
    v4 = 1;
    do
    {
      v5 = *(v2[4] + 8);
      if (!std::type_info::before[abi:ne200100](v3, v5))
      {
        if (!std::type_info::before[abi:ne200100](v5, v3))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1C2F97B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SharedObjectPool::get<VoiceConfig>(void *a1, uint64_t *a2)
{
  std::recursive_mutex::lock((a2 + 7));
  {
    v4 = *a2;
    VoiceConfig::create();
  }

  v6 = *(*v5 + 16);
  *a1 = *(*v5 + 8);
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 7));
}

void sub_1C2F97C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::recursive_mutex::unlock((v10 + 56));
  _Unwind_Resume(a1);
}

void sub_1C2F97D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void Environment::Environment(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_1C2F97DF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2F97ED8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::destroy(*(v1 + 64));
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

const std::error_category *VoiceConfigImpl::add_search_dir(VoiceConfigImpl *this, const std::__fs::filesystem::path *a2)
{
  __ec.__val_ = 0;
  result = std::system_category();
  __ec.__cat_ = result;
  size = HIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__pn_.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = result;
    result = std::__fs::filesystem::__status(a2, &__ec);
    if (__p)
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v5;
      if (__p != 255)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_1C2F9838C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27)
{
  v31 = *(v28 + 16);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  MEMORY[0x1C692AE10](v28, 0x10F3C4013766346);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  (*(*v27 + 8))(v27);
  _Unwind_Resume(a1);
}

void NeuralTTSUtils::current_model_sample_rate(NeuralTTSUtils *this, const char *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = this;
  std::allocate_shared[abi:ne200100]<Environment,std::allocator<Environment>,char const*&,0>();
}

void sub_1C2F98718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, unsigned __int8 a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, unsigned __int8 a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, std::__shared_weak_count *a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, char a50)
{
  NeuralThermalFallbackConnection::~NeuralThermalFallbackConnection(&a14);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a34, a33);
  AudioResamplingModule::~AudioResamplingModule(&a50);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a42, a41);
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  _Unwind_Resume(a1);
}

void VoiceConfigDirectory::get_path(uint64_t a1@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  v52[4] = *MEMORY[0x1E69E9840];
  __ec.__val_ = 0;
  v6 = std::system_category();
  __ec.__cat_ = v6;
  file_name_from_id(&__s, a2);
  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__s.__r_.__value_.__s + 23))
    {
      v35 = __s;
      goto LABEL_6;
    }

LABEL_31:
    name_from_id(&v45, a2);
    v51 = v45;
    memset(&v45, 0, sizeof(v45));
    std::__fs::filesystem::operator/[abi:ne200100](&v51, a1 + 8, &v46);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v46, &__ec);
    if (v51.__r_.__value_.__s.__data_[0] && (__ec.__val_ = 0, __ec.__cat_ = v6, v51.__r_.__value_.__s.__data_[0] != 255))
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
      {
        name_from_id(&v45, a2);
        v11 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
        v12 = v45.__r_.__value_.__r.__words[0];
        symbol_name_from_id(&__p, a2);
        v13 = &v45;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v15 = &v46;
        if ((v46.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v46.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(v51.__r_.__value_.__l.__data_) = 136315650;
        *(v51.__r_.__value_.__r.__words + 4) = v13;
        WORD2(v51.__r_.__value_.__r.__words[1]) = 2080;
        *(&v51.__r_.__value_.__r.__words[1] + 6) = p_p;
        HIWORD(v51.__r_.__value_.__r.__words[2]) = 2080;
        v52[0] = v15;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }
      }

      name_from_id(&v51, a2);
      v16 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
      v17 = v51.__r_.__value_.__r.__words[0];
      symbol_name_from_id(&v45, a2);
      v19 = &v51;
      if (v16 < 0)
      {
        v19 = v17;
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v45;
      }

      else
      {
        v20 = v45.__r_.__value_.__r.__words[0];
      }

      v21 = &v46;
      if ((v46.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v46.__pn_.__r_.__value_.__r.__words[0];
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a3, v46.__pn_.__r_.__value_.__l.__data_, v46.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *a3 = v46;
      }
    }

    else
    {
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
    }

    if (SHIBYTE(v46.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__pn_.__r_.__value_.__l.__data_);
    }

    goto LABEL_98;
  }

  if (!__s.__r_.__value_.__l.__size_)
  {
    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external(&v35, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
LABEL_6:
  std::string::basic_string[abi:ne200100]<0>(&__p, "gryphon.cfg");
  std::string::basic_string[abi:ne200100]<0>(v49, "gryphon_22E.cfg");
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v41, v49, &v51, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = __p;
  }

  memset(v52, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v52, v41, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
  *&v45.__r_.__value_.__r.__words[1] = 0uLL;
  v45.__r_.__value_.__r.__words[0] = &v45.__r_.__value_.__l.__size_;
  if (!*std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(&v45, &v45.__r_.__value_.__l.__size_, &v48, &v47, &v51.__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v46.__pn_.__r_.__value_.__r.__words[0] = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v46.__pn_.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(&v45, &v35.__r_.__value_.__l.__data_);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (&v45.__r_.__value_.__r.__words[1] != v7)
  {
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v36, v7[2].__r_.__value_.__l.__size_, v7[2].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v7[2].__r_.__value_.__r.__words[2] - v7[2].__r_.__value_.__l.__size_) >> 3));
  }

  std::vector<std::string>::push_back[abi:ne200100](&v36, &v35);
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v45, v45.__r_.__value_.__l.__size_);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v8 = v36;
  v9 = v37;
  while (1)
  {
    if (v8 == v9)
    {
      v51.__r_.__value_.__r.__words[0] = &v36;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
      goto LABEL_31;
    }

    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v51, v8);
    std::__fs::filesystem::operator/[abi:ne200100](&v51, a1 + 8, &v46);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v46, 0);
    if (v45.__r_.__value_.__s.__data_[0])
    {
      if (v45.__r_.__value_.__s.__data_[0] != 255)
      {
        break;
      }
    }

    if (SHIBYTE(v46.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__pn_.__r_.__value_.__l.__data_);
    }

    ++v8;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v22 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    name_from_id(&v45, a2);
    v23 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
    v24 = v45.__r_.__value_.__r.__words[0];
    symbol_name_from_id(&__p, a2);
    v25 = &v45;
    if (v23 < 0)
    {
      v25 = v24;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    v27 = &v46;
    if ((v46.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v46.__pn_.__r_.__value_.__r.__words[0];
    }

    LODWORD(v51.__r_.__value_.__l.__data_) = 136315650;
    *(v51.__r_.__value_.__r.__words + 4) = v25;
    WORD2(v51.__r_.__value_.__r.__words[1]) = 2080;
    *(&v51.__r_.__value_.__r.__words[1] + 6) = v26;
    HIWORD(v51.__r_.__value_.__r.__words[2]) = 2080;
    v52[0] = v27;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  name_from_id(&v51, a2);
  v28 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  v29 = v51.__r_.__value_.__r.__words[0];
  symbol_name_from_id(&v45, a2);
  v31 = &v51;
  if (v28 < 0)
  {
    v31 = v29;
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v45.__r_.__value_.__r.__words[0];
  }

  v33 = &v46;
  if ((v46.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = v46.__pn_.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v46.__pn_.__r_.__value_.__l.__data_, v46.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(v46.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v46;
  }

  v51.__r_.__value_.__r.__words[0] = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
LABEL_98:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1C2F98FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  *(v52 - 144) = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v52 - 144));
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void file_name_from_id(std::string *a1, unsigned int a2)
{
  v174 = *MEMORY[0x1E69E9840];
  {
    v12 = a1;
    v9 = a2;
    a2 = v9;
    v11 = v10;
    a1 = v12;
    if (v11)
    {
      v14 = 1768842360;
      std::string::basic_string[abi:ne200100]<0>(v15, "");
      v16 = 1937011316;
      std::string::basic_string[abi:ne200100]<0>(v17, "");
      v18 = 1633968500;
      std::string::basic_string[abi:ne200100]<0>(v19, "");
      v20 = 1886220907;
      std::string::basic_string[abi:ne200100]<0>(v21, "");
      v22 = 1714450030;
      std::string::basic_string[abi:ne200100]<0>(v23, "");
      v24 = 1685417582;
      std::string::basic_string[abi:ne200100]<0>(v25, "");
      v26 = 1885889131;
      std::string::basic_string[abi:ne200100]<0>(v27, "");
      v28 = 1885893488;
      std::string::basic_string[abi:ne200100]<0>(v29, "");
      v30 = 1852797549;
      std::string::basic_string[abi:ne200100]<0>(v31, "");
      v32 = 1835298404;
      std::string::basic_string[abi:ne200100]<0>(v33, "");
      v34 = 1835298423;
      std::string::basic_string[abi:ne200100]<0>(v35, "");
      v36 = 1835298414;
      std::string::basic_string[abi:ne200100]<0>(v37, "");
      v38 = 1835298415;
      std::string::basic_string[abi:ne200100]<0>(v39, "");
      v40 = 1835298409;
      std::string::basic_string[abi:ne200100]<0>(v41, "");
      v42 = 1835298406;
      std::string::basic_string[abi:ne200100]<0>(v43, "");
      v44 = 1919839846;
      std::string::basic_string[abi:ne200100]<0>(v45, "");
      v46 = 1952543344;
      std::string::basic_string[abi:ne200100]<0>(v47, "");
      v48 = 1886547316;
      std::string::basic_string[abi:ne200100]<0>(v49, "");
      v50 = 1949462637;
      std::string::basic_string[abi:ne200100]<0>(v51, "t2p_mapping.dat");
      v52 = 1735422573;
      std::string::basic_string[abi:ne200100]<0>(v53, "generated_prompts");
      v54 = 2003135842;
      std::string::basic_string[abi:ne200100]<0>(v55, "norm_embedding");
      v56 = 1852990316;
      std::string::basic_string[abi:ne200100]<0>(v57, "norm_classify_model");
      v58 = 1852991854;
      std::string::basic_string[abi:ne200100]<0>(v59, "norm_input");
      v60 = 1852992627;
      std::string::basic_string[abi:ne200100]<0>(v61, "norm_labsym");
      v62 = 1852994668;
      std::string::basic_string[abi:ne200100]<0>(v63, "norm_toklab");
      v64 = 1852977512;
      std::string::basic_string[abi:ne200100]<0>(v65, "norm_onehot_feat");
      v66 = 1852994156;
      std::string::basic_string[abi:ne200100]<0>(v67, "norm_rules");
      v68 = 1852990320;
      std::string::basic_string[abi:ne200100]<0>(v69, "norm_complex");
      v70 = 1870033522;
      std::string::basic_string[abi:ne200100]<0>(v71, "override_rules");
      v72 = 1886352237;
      std::string::basic_string[abi:ne200100]<0>(v73, "pos_model");
      v74 = 1886545272;
      std::string::basic_string[abi:ne200100]<0>(v75, "pron_dict.db");
      v76 = 1885892461;
      std::string::basic_string[abi:ne200100]<0>(v77, "phon_map.db");
      v78 = 1886547821;
      std::string::basic_string[abi:ne200100]<0>(v79, "pron_nnmt_model.nnet");
      v80 = 1885893228;
      std::string::basic_string[abi:ne200100]<0>(v81, "phoneme_rules");
      v82 = 1885893235;
      std::string::basic_string[abi:ne200100]<0>(v83, "phrasing_model");
      v84 = 1885893234;
      std::string::basic_string[abi:ne200100]<0>(v85, "phrasing_rules");
      v86 = 1651664996;
      std::string::basic_string[abi:ne200100]<0>(v87, "broker.hdr");
      v88 = 1650550884;
      std::string::basic_string[abi:ne200100]<0>(v89, "broker.hdr.asset");
      v90 = 1885564279;
      std::string::basic_string[abi:ne200100]<0>(v91, "PCMWave");
      v92 = 1935831659;
      std::string::basic_string[abi:ne200100]<0>(v93, "sentence_break_exceptions");
      v94 = 1717790311;
      std::string::basic_string[abi:ne200100]<0>(v95, "frontend.cfg");
      v96 = 1734567527;
      std::string::basic_string[abi:ne200100]<0>(v97, "gryphon.cfg");
      v98 = 1734700644;
      std::string::basic_string[abi:ne200100]<0>(v99, "gender");
      v100 = 1735292269;
      std::string::basic_string[abi:ne200100]<0>(v101, "plural");
      v102 = 1718903655;
      std::string::basic_string[abi:ne200100]<0>(v103, "filter_text.json");
      v104 = 1953657708;
      std::string::basic_string[abi:ne200100]<0>(v105, "transliterate.json");
      v106 = 1920234092;
      std::string::basic_string[abi:ne200100]<0>(v107, "replace_rules.json");
      v108 = 1920231009;
      std::string::basic_string[abi:ne200100]<0>(v109, "replace.far");
      v110 = 1731358822;
      std::string::basic_string[abi:ne200100]<0>(v111, "g2p_rules.far");
      v112 = 1718776943;
      std::string::basic_string[abi:ne200100]<0>(v113, "g2p_token_fr.dat");
      v114 = 1718776677;
      std::string::basic_string[abi:ne200100]<0>(v115, "g2p_sent_fr.dat");
      v116 = 1718775913;
      std::string::basic_string[abi:ne200100]<0>(v117, "g2p_pitch_fr.dat");
      v118 = 1852139109;
      std::string::basic_string[abi:ne200100]<0>(v119, "neural_fe_config.json");
      v120 = 1852138085;
      std::string::basic_string[abi:ne200100]<0>(v121, "neural_be_config.json");
      v122 = 1953395557;
      std::string::basic_string[abi:ne200100]<0>(v123, "tn_seq2seq.bin");
      v124 = 1953395570;
      std::string::basic_string[abi:ne200100]<0>(v125, "tn_seq2seq_rule.dat");
      v126 = 1731358835;
      std::string::basic_string[abi:ne200100]<0>(v127, "g2p/g2p.mdl.bin");
      v128 = 1731358831;
      std::string::basic_string[abi:ne200100]<0>(v129, "g2p_seq2seq.bin");
      v130 = 1751477859;
      std::string::basic_string[abi:ne200100]<0>(v131, "tts_nlp/tts-nlp-encoder.json");
      v132 = 1751410019;
      std::string::basic_string[abi:ne200100]<0>(v133, "tts_nlp/tts-nlp-decoder.json");
      v134 = 1953395813;
      std::string::basic_string[abi:ne200100]<0>(v135, "tts_nlp/tok_encoder.dat");
      v136 = 1953395812;
      std::string::basic_string[abi:ne200100]<0>(v137, "tts_nlp/tok_decoder.dat");
      v138 = 1953390956;
      std::string::basic_string[abi:ne200100]<0>(v139, "tts_nlp/aligner.dat");
      v140 = 1731358834;
      std::string::basic_string[abi:ne200100]<0>(v141, "g2p_seq2seq_rule.dat");
      v142 = 1887007858;
      std::string::basic_string[abi:ne200100]<0>(v143, "g2p_pyt_rule.dat");
      v144 = 2020827506;
      std::string::basic_string[abi:ne200100]<0>(v145, "g2p_xsampa_rule.dat");
      v146 = 1818783858;
      std::string::basic_string[abi:ne200100]<0>(v147, "g2p_lhp_rule.dat");
      v148 = 1768846450;
      std::string::basic_string[abi:ne200100]<0>(v149, "g2p_internal_rule.dat");
      v150 = 1886352244;
      std::string::basic_string[abi:ne200100]<0>(v151, "g2p_post_rule.dat");
      v152 = 1852731506;
      std::string::basic_string[abi:ne200100]<0>(v153, "tn_prefix_rule.dat");
      v154 = 1919252338;
      std::string::basic_string[abi:ne200100]<0>(v155, "rewrite_rule.dat");
      v156 = 1936684658;
      std::string::basic_string[abi:ne200100]<0>(v157, "override.dat");
      v158 = 1936748402;
      std::string::basic_string[abi:ne200100]<0>(v159, "post.dat");
      v160 = 1936548208;
      std::string::basic_string[abi:ne200100]<0>(v161, "smapping.dat");
      v162 = 1886417510;
      std::string::basic_string[abi:ne200100]<0>(v163, "preprocess_rule.dat");
      v164 = 1752523875;
      std::string::basic_string[abi:ne200100]<0>(v165, "hydra_udct.json");
      v166 = 1752523890;
      std::string::basic_string[abi:ne200100]<0>(v167, "hydra_udct_pp.dat");
      v168 = 1634100856;
      std::string::basic_string[abi:ne200100]<0>(v169, "affix_rules");
      v170 = 1852138092;
      std::string::basic_string[abi:ne200100]<0>(v171, "neural_blacklist.json");
      v172 = 1852139116;
      std::string::basic_string[abi:ne200100]<0>(v173, "neural_fallbacklist.json");
      std::map<unsigned int,std::string>::map[abi:ne200100](&v13, &v14, 80);
      NeverDestructed<std::map<unsigned int,std::string>>::NeverDestructed<>();
    }
  }

  v2 = *(file_name_from_id::name_map + 8);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = file_name_from_id::name_map + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != file_name_from_id::name_map + 8 && *(v3 + 32) <= a2)
  {
    if (*(v3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *(v3 + 40), *(v3 + 48));
    }

    else
    {
      v8 = *(v3 + 40);
      a1->__r_.__value_.__r.__words[2] = *(v3 + 56);
      *&a1->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C2F99D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a12);
  v13 = &STACK[0xA10];
  v14 = -2560;
  while (1)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    v13 -= 4;
    v14 += 32;
    if (!v14)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t NSProcessInfoObjCBridge::get_thermal_state(NSProcessInfoObjCBridge *this)
{
  v1 = [MEMORY[0x1E696AE30] injectedProcessInfo];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
  }

  v4 = v3;

  v5 = [v4 thermalState];
  if ((v5 - 1) < 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL NeuralTTSUtils::is_amx_available(NeuralTTSUtils *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "neuralModelType");
  InternalSettings::get_string_for_key(&v10, __p);
  if (v12 < 0)
  {
    v2 = v11 == 3 && *v10 == 28001 && v10[2] == 120;
    operator delete(v10);
  }

  else
  {
    v2 = v12 == 3 && v10 == 28001 && BYTE2(v10) == 120;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v2)
    {
      return 1;
    }
  }

  else if (v2)
  {
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "neuralModelType");
  InternalSettings::get_string_for_key(&v10, __p);
  if (v12 < 0)
  {
    v6 = v11 == 3 && *v10 == 28257 && v10[2] == 101;
    operator delete(v10);
  }

  else
  {
    v6 = v12 == 3 && v10 == 28257 && BYTE2(v10) == 101;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return (_get_cpu_capabilities() & 0x78000000) != 0;
}

void sub_1C2F9A130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NeuralTTSUtils::is_neural_voice_ready(NeuralTTSUtils *this, const char *a2)
{
  if (!NeuralTTSUtils::is_amx_available(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "neuralModelType");
    InternalSettings::get_string_for_key(v8, &__p);
    if (v9 < 0)
    {
      v3 = v8[1] == 3 && *v8[0] == 28001 && *(v8[0] + 2) == 120;
      operator delete(v8[0]);
    }

    else
    {
      v3 = v9 == 3 && LOWORD(v8[0]) == 28001 && BYTE2(v8[0]) == 120;
    }

    if (v7 < 0)
    {
      operator delete(__p);
      if (v3)
      {
        return 1;
      }
    }

    else if (v3)
    {
      return 1;
    }

    std::allocate_shared[abi:ne200100]<Environment,std::allocator<Environment>,char const*&,0>();
  }

  return 1;
}

void sub_1C2F9A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = v29;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a16, a15);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t NSProcessInfoObjCBridge::low_power_mode_enabled(NSProcessInfoObjCBridge *this)
{
  v1 = [MEMORY[0x1E696AE30] injectedProcessInfo];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
  }

  v4 = v3;

  v5 = [v4 isLowPowerModeEnabled];
  return v5;
}

uint64_t NeuralTTSUtils::check_thermal_limit(NeuralTTSUtils *this)
{
  v1 = this;
  v22 = *MEMORY[0x1E69E9840];
  v2 = NSProcessInfoObjCBridge::low_power_mode_enabled(this);
  thermal_state = NSProcessInfoObjCBridge::get_thermal_state(v2);
  v4 = OSThermalNotificationCurrentLevel();
  std::string::basic_string[abi:ne200100]<0>(buf, "ignoreThermalState");
  BOOL_for_key = InternalSettings::get_BOOL_for_key(buf);
  v6 = BOOL_for_key;
  if (v21 < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (BOOL_for_key)
  {
LABEL_3:
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v7 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = thermal_state;
      _os_log_impl(&dword_1C2F95000, v7, OS_LOG_TYPE_DEFAULT, "ignoring neural thermal state: %ld", buf, 0xCu);
    }

    Diagnostics::log(5, "ignoring neural thermal state: %ld", v8, thermal_state);
    result = 0;
    goto LABEL_18;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "forceNeuralThermalState");
  v9 = InternalSettings::get_BOOL_for_key(buf);
  if (v21 < 0)
  {
    operator delete(*buf);
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v11 = os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEFAULT, "force neural critical thermal state", buf, 2u);
    }

    Diagnostics::log(5, "force neural critical thermal state", v12);
    goto LABEL_16;
  }

  if (v11)
  {
    *buf = 67109632;
    *&buf[4] = thermal_state;
    *&buf[8] = 1024;
    *&buf[10] = v2;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEFAULT, "Current thermal state: %d, low power mode: %d, thermal level: %d", buf, 0x14u);
  }

  Diagnostics::log(5, "Current thermal state: %d, low power mode: %d, thermal level: %d", v12, thermal_state, v2, v4);
  v15 = _os_feature_enabled_impl();
  if (v4 > 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    if (v1 == 3)
    {
      v17 = 10;
    }

    else
    {
      v17 = 4;
    }

    if (v4 < v17)
    {
      goto LABEL_31;
    }

LABEL_16:
    result = 1;
    goto LABEL_18;
  }

  if (thermal_state >= v1)
  {
    goto LABEL_16;
  }

LABEL_31:
  if (v2)
  {
    if (NeuralTTSUtils::is_h12_platform(void)::onceToken != -1)
    {
      dispatch_once(&NeuralTTSUtils::is_h12_platform(void)::onceToken, &__block_literal_global_20);
    }

    if ((NeuralTTSUtils::is_h12_platform(void)::isH12Platform & 1) != 0 || (MGGetSInt32Answer() & 0xFFFFFFFE) == 6)
    {
      goto LABEL_16;
    }
  }

  if (NeuralTTSUtils::is_h12_platform(void)::onceToken != -1)
  {
    dispatch_once(&NeuralTTSUtils::is_h12_platform(void)::onceToken, &__block_literal_global_20);
  }

  result = (thermal_state > 1) & NeuralTTSUtils::is_h12_platform(void)::isH12Platform;
LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2F9A8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InternalSettings::get_BOOL_for_key(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.voiceservices"];
  v4 = [v3 BOOLForKey:v2];

  return v4;
}

void SoundStormModule::prepare(SoundStormModule *this)
{
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v1 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v1, OS_LOG_TYPE_DEFAULT, "Prepare inference.", buf, 2u);
  }

  Diagnostics::log(5, "Prepare inference.", v2);
  operator new();
}

void sub_1C2F9ABD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1C378AF00)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1C378AEF0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1C378AF00)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1C378AEF0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(unsigned __int8 *a1, const void **a2, unsigned int *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use value() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v12, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v11);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v12, &v11))
  {
    return *a3;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v12);
  LODWORD(v11.__r_.__value_.__l.__data_) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v11);
  return LODWORD(v11.__r_.__value_.__l.__data_);
}

void sub_1C2F9AFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2F9B170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(a3, a1);
  result = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(a3);
  if (*a1 == 1)
  {
    result = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(a1 + 8), a2);
    a3[1] = result;
  }

  return result;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, v4);
    }
  }

  return result;
}

void sub_1C2F9B3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL NeuralTTSUtils::has_neural_fallback_connection(uint64_t a1)
{
  SharedObjectPool::get<GryphonConfig>(&v8, a1);
  v1 = v8;
  std::string::basic_string[abi:ne200100]<0>(__p, "neural_fallback_connection");
  GryphonConfig::params_for_connection(v6, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v6[0];
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6[0]);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v2 == 1;
}

void sub_1C2F9B4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 24);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v8, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create(212, v8, exception);
  }

  if (!v2)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_1C2F9B5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
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
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, a3, a5);
}

BOOL std::type_info::before[abi:ne200100](unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0 && (a2 & 0x8000000000000000) != 0)
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) >> 31;
  }

  else
  {
    return a1 < a2;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
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

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1C2F9B8D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
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

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2F9B9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
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

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1C2F9BBE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::__find_equal<std::type_index>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 8);
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4[4] + 8);
        if (!std::type_info::before[abi:ne200100](v6, v8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (!std::type_info::before[abi:ne200100](v8, v6))
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

LABEL_10:
  *a2 = v7;
  return v5;
}

uint64_t std::map<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::__find_equal<std::type_index>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 40;
}

void Agglomerate::set<std::shared_ptr<VoiceConfig>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void VoiceConfigImpl::get_json(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    (*(**v7 + 80))(*v7, a2, 2);
    if (*a4)
    {
      return;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a4 + 8), 0);
    ++v7;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  VoiceConfig::report_error(a2, a3, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
}

void sub_1C2F9BF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2F9C058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v8 + 8), v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C2F9C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      if (v4[1] < v4[2])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v4[1]);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(v4);
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v5);
      }

      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
    }

    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v6);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i64[0];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i64[0] = v2;
  }

  if (v2 == -1)
  {
    return -1;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:ne200100](&a1[3].i64[1], &v6);
  result = a1[1].i64[0];
  if (result == 10)
  {
    v5 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v5;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 239)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
      goto LABEL_7;
    }

    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 187 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 191)
    {
      v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
      goto LABEL_153;
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_7:
      while (1)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
        v3 = *(a1 + 16);
        if (v3 > 12)
        {
          break;
        }

        if ((v3 - 9) >= 2)
        {
          if ((v3 + 1) < 2)
          {
            result = 15;
            goto LABEL_155;
          }

          goto LABEL_121;
        }
      }

      if (v3 > 31)
      {
        break;
      }

      if (v3 != 13)
      {
        goto LABEL_121;
      }
    }

    if (v3 > 43)
    {
      break;
    }

    if (v3 != 32)
    {
      if (v3 != 34)
      {
        goto LABEL_121;
      }

      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(a1);
      while (2)
      {
        v16 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) + 1;
        result = 4;
        v2 = "invalid string: missing closing quote";
        switch(v16)
        {
          case 0:
            goto LABEL_153;
          case 1:
            v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
            goto LABEL_153;
          case 2:
            v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
            goto LABEL_153;
          case 3:
            v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
            goto LABEL_153;
          case 4:
            v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
            goto LABEL_153;
          case 5:
            v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
            goto LABEL_153;
          case 6:
            v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
            goto LABEL_153;
          case 7:
            v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
            goto LABEL_153;
          case 8:
            v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
            goto LABEL_153;
          case 9:
            v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
            goto LABEL_153;
          case 10:
            v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
            goto LABEL_153;
          case 11:
            v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
            goto LABEL_153;
          case 12:
            v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
            goto LABEL_153;
          case 13:
            v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
            goto LABEL_153;
          case 14:
            v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
            goto LABEL_153;
          case 15:
            v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
            goto LABEL_153;
          case 16:
            v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
            goto LABEL_153;
          case 17:
            v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
            goto LABEL_153;
          case 18:
            v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
            goto LABEL_153;
          case 19:
            v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
            goto LABEL_153;
          case 20:
            v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
            goto LABEL_153;
          case 21:
            v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
            goto LABEL_153;
          case 22:
            v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
            goto LABEL_153;
          case 23:
            v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
            goto LABEL_153;
          case 24:
            v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
            goto LABEL_153;
          case 25:
            v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
            goto LABEL_153;
          case 26:
            v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
            goto LABEL_153;
          case 27:
            v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
            goto LABEL_153;
          case 28:
            v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
            goto LABEL_153;
          case 29:
            v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
            goto LABEL_153;
          case 30:
            v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
            goto LABEL_153;
          case 31:
            v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
            goto LABEL_153;
          case 32:
            v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
            goto LABEL_153;
          case 33:
          case 34:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 92:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
          case 104:
          case 105:
          case 106:
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
            LOBYTE(v17) = *(a1 + 16);
            goto LABEL_70;
          case 35:
            goto LABEL_155;
          case 93:
            v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
            v2 = "invalid string: forbidden character after backslash";
            if (v19 <= 101)
            {
              if (v19 > 91)
              {
                if (v19 == 92)
                {
                  LOBYTE(v17) = 92;
                }

                else
                {
                  if (v19 != 98)
                  {
                    goto LABEL_153;
                  }

                  LOBYTE(v17) = 8;
                }
              }

              else if (v19 == 34)
              {
                LOBYTE(v17) = 34;
              }

              else
              {
                if (v19 != 47)
                {
                  goto LABEL_153;
                }

                LOBYTE(v17) = 47;
              }

              goto LABEL_70;
            }

            if (v19 <= 113)
            {
              if (v19 == 102)
              {
                LOBYTE(v17) = 12;
              }

              else
              {
                if (v19 != 110)
                {
                  goto LABEL_153;
                }

                LOBYTE(v17) = 10;
              }

              goto LABEL_70;
            }

            if (v19 == 114)
            {
              LOBYTE(v17) = 13;
              goto LABEL_70;
            }

            if (v19 == 116)
            {
              LOBYTE(v17) = 9;
              goto LABEL_70;
            }

            if (v19 != 117)
            {
              goto LABEL_153;
            }

            codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_codepoint(a1);
            v17 = codepoint;
            if (codepoint == -1)
            {
LABEL_189:
              v2 = "invalid string: '\\u' must be followed by 4 hex digits";
              goto LABEL_153;
            }

            if ((codepoint & 0xFFFFFC00) == 0xD800)
            {
              if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) != 117)
              {
                goto LABEL_190;
              }

              v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_codepoint(a1);
              if (v21 == -1)
              {
                goto LABEL_189;
              }

              if (v21 >> 10 != 55)
              {
LABEL_190:
                v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                goto LABEL_153;
              }

              v17 = v21 + (v17 << 10) - 56613888;
            }

            else
            {
              if ((codepoint & 0xFFFFFC00) == 0xDC00)
              {
                v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                goto LABEL_153;
              }

              if (codepoint <= 127)
              {
                goto LABEL_70;
              }

              if (codepoint <= 0x7FF)
              {
                std::string::push_back((a1 + 80), (codepoint >> 6) | 0xC0);
                goto LABEL_90;
              }

              if (!HIWORD(codepoint))
              {
                std::string::push_back((a1 + 80), (codepoint >> 12) | 0xE0);
                std::string::push_back((a1 + 80), (v17 >> 6) & 0x3F | 0x80);
                LOBYTE(v17) = v17 & 0x3F | 0x80;
                goto LABEL_70;
              }
            }

            std::string::push_back((a1 + 80), (v17 >> 18) | 0xF0);
            std::string::push_back((a1 + 80), (v17 >> 12) & 0x3F | 0x80);
            std::string::push_back((a1 + 80), (v17 >> 6) & 0x3F | 0x80);
LABEL_90:
            LOBYTE(v17) = v17 & 0x3F | 0x80;
LABEL_70:
            std::string::push_back((a1 + 80), v17);
            continue;
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
          case 201:
          case 202:
          case 203:
          case 204:
          case 205:
          case 206:
          case 207:
          case 208:
          case 209:
          case 210:
          case 211:
          case 212:
          case 213:
          case 214:
          case 215:
          case 216:
          case 217:
          case 218:
          case 219:
          case 220:
          case 221:
          case 222:
          case 223:
          case 224:
            v31 = xmmword_1C3844BD0;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 2);
            goto LABEL_73;
          case 225:
            v31 = xmmword_1C3858520;
            v32 = unk_1C3858530;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 4);
            goto LABEL_73;
          case 226:
          case 227:
          case 228:
          case 229:
          case 230:
          case 231:
          case 232:
          case 233:
          case 234:
          case 235:
          case 236:
          case 237:
          case 239:
          case 240:
            v31 = xmmword_1C3858540;
            v32 = unk_1C3858550;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 4);
            goto LABEL_73;
          case 238:
            v31 = xmmword_1C3858560;
            v32 = unk_1C3858570;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 4);
            goto LABEL_73;
          case 241:
            v31 = xmmword_1C3858580;
            v32 = unk_1C3858590;
            v33 = xmmword_1C38585A0;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 6);
            goto LABEL_73;
          case 242:
          case 243:
          case 244:
            v31 = xmmword_1C38585B0;
            v32 = unk_1C38585C0;
            v33 = xmmword_1C38585D0;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 6);
            goto LABEL_73;
          case 245:
            v31 = xmmword_1C38585E0;
            v32 = unk_1C38585F0;
            v33 = xmmword_1C3858600;
            byte_in_range = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::next_byte_in_range(a1, &v31, 6);
LABEL_73:
            if ((byte_in_range & 1) == 0)
            {
              goto LABEL_154;
            }

            continue;
          default:
            v2 = "invalid string: ill-formed UTF-8 byte";
            goto LABEL_153;
        }
      }
    }
  }

  if (v3 > 57)
  {
    if (v3 > 109)
    {
      if (v3 > 122)
      {
        if (v3 == 123)
        {
          result = 9;
          goto LABEL_155;
        }

        if (v3 == 125)
        {
          result = 11;
          goto LABEL_155;
        }
      }

      else if (v3 == 110)
      {
        LODWORD(v31) = 1819047278;
        v22 = 1;
        while (*(&v31 + v22) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1))
        {
          if (++v22 == 4)
          {
            result = 3;
            goto LABEL_155;
          }
        }
      }

      else if (v3 == 116)
      {
        LODWORD(v31) = 1702195828;
        v13 = 1;
        while (*(&v31 + v13) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1))
        {
          if (++v13 == 4)
          {
            result = 1;
            goto LABEL_155;
          }
        }
      }

      goto LABEL_121;
    }

    if (v3 > 92)
    {
      if (v3 == 93)
      {
        result = 10;
        goto LABEL_155;
      }

      if (v3 == 102)
      {
        v15 = 0;
        while (aFalse_2[v15 + 1] == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1))
        {
          if (++v15 == 4)
          {
            result = 2;
            goto LABEL_155;
          }
        }
      }

      goto LABEL_121;
    }

    if (v3 == 58)
    {
      result = 12;
      goto LABEL_155;
    }

    if (v3 == 91)
    {
      result = 8;
      goto LABEL_155;
    }

LABEL_121:
    v2 = "invalid literal";
    goto LABEL_153;
  }

  if ((v3 - 48) >= 0xA)
  {
    if (v3 == 44)
    {
      result = 13;
      goto LABEL_155;
    }

    if (v3 != 45)
    {
      goto LABEL_121;
    }
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(a1);
  v4 = *(a1 + 16);
  if ((v4 - 49) >= 9)
  {
    if (v4 == 48)
    {
      std::string::push_back((a1 + 80), 48);
      v5 = 5;
    }

    else
    {
      if (v4 == 45)
      {
        std::string::push_back((a1 + 80), 45);
      }

      v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
      if ((v14 - 49) < 9)
      {
        v4 = *(a1 + 16);
        v5 = 6;
        goto LABEL_20;
      }

      if (v14 != 48)
      {
        v2 = "invalid number; expected digit after '-'";
LABEL_153:
        *(a1 + 104) = v2;
LABEL_154:
        result = 14;
        goto LABEL_155;
      }

      std::string::push_back((a1 + 80), *(a1 + 16));
      v5 = 6;
    }

    v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    if (v23 == 101 || v23 == 69)
    {
      v6 = (a1 + 80);
      goto LABEL_26;
    }

    if (v23 != 46)
    {
      goto LABEL_138;
    }

    v6 = (a1 + 80);
    goto LABEL_129;
  }

  v5 = 5;
LABEL_20:
  v6 = (a1 + 80);
  while (1)
  {
    std::string::push_back((a1 + 80), v4);
    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    v4 = *(a1 + 16);
  }

  if (v7 != 46)
  {
    if (v7 == 69 || v7 == 101)
    {
      goto LABEL_26;
    }

LABEL_138:
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
    *&v31 = 0;
    *__error() = 0;
    v26 = (a1 + 80);
    v27 = *(a1 + 103);
    if (v5 == 5)
    {
      if (v27 < 0)
      {
        v26 = *v26;
      }

      v28 = strtoull(v26, &v31, 10);
      if (!*__error())
      {
        *(a1 + 120) = v28;
        result = 5;
        goto LABEL_155;
      }
    }

    else
    {
      if (v27 < 0)
      {
        v26 = *v26;
      }

      v29 = strtoll(v26, &v31, 10);
      if (!*__error())
      {
        *(a1 + 112) = v29;
        result = 6;
        goto LABEL_155;
      }
    }

    goto LABEL_135;
  }

LABEL_129:
  std::string::push_back(v6, *(a1 + 136));
  if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) > 9)
  {
    v2 = "invalid number; expected digit after '.'";
    goto LABEL_153;
  }

  v6 = (a1 + 80);
  do
  {
    std::string::push_back((a1 + 80), *(a1 + 16));
    v24 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
  }

  while ((v24 - 48) < 0xA);
  if (v24 != 101 && v24 != 69)
  {
    goto LABEL_134;
  }

LABEL_26:
  std::string::push_back(v6, *(a1 + 16));
  v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1);
  if ((v8 - 48) < 0xA)
  {
    v9 = (a1 + 80);
    goto LABEL_28;
  }

  if (v8 != 45 && v8 != 43)
  {
    v2 = "invalid number; expected '+', '-', or digit after exponent";
    goto LABEL_153;
  }

  v9 = (a1 + 80);
  std::string::push_back((a1 + 80), *(a1 + 16));
  if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) >= 0xA)
  {
    v2 = "invalid number; expected digit after exponent sign";
    goto LABEL_153;
  }

LABEL_28:
  v10 = *(a1 + 16);
  for (i = v9; ; i = (a1 + 80))
  {
    std::string::push_back(i, v10);
    if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get(a1) - 48) > 9)
    {
      break;
    }

    v10 = *(a1 + 16);
  }

LABEL_134:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(a1);
  *&v31 = 0;
  *__error() = 0;
LABEL_135:
  v25 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v25 = *v25;
  }

  *(a1 + 128) = strtod(v25, &v31);
  result = 7;
LABEL_155:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C2F9D0F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[1]>();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C2F9D6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2F9D790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    v14 = *(i - 16);
    v13 = i - 16;
    LOBYTE(v27) = v14;
    v28 = *(v13 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](&v29, (v30 - 16));
    if (v27 == 1)
    {
      v18 = v28;
      v19 = (v28 + 1);
      v20 = *v28;
      if (*v28 != (v28 + 1))
      {
        v21 = v30;
        do
        {
          if (v21 >= v31)
          {
            v21 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v20 + 56));
          }

          else
          {
            *v21 = v20[56];
            *(v21 + 8) = *(v20 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20 + 56);
            v20[56] = 0;
            *(v20 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
            v21 += 16;
          }

          v30 = v21;
          v22 = *(v20 + 1);
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = *(v20 + 2);
              v11 = *v23 == v20;
              v20 = v23;
            }

            while (!v11);
          }

          v20 = v23;
        }

        while (v23 != v19);
        v18 = v28;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v18, *(v18 + 8));
      *v18 = v18 + 8;
      *(v18 + 16) = 0;
      *(v18 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v15 = v28;
      v16 = *v28;
      v17 = v28[1];
      if (*v28 != v17)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v16);
          v16 += 16;
        }

        while (v16 != v17);
        v15 = v28;
        v16 = *v28;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v15, v16);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_49;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_52;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_49:
        operator delete(v26);
        goto LABEL_50;
      }
    }

LABEL_51:
    operator delete(v24);
    goto LABEL_52;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1, *(*a1 + 8));
    goto LABEL_50;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_50:
    v24 = *a1;
    goto LABEL_51;
  }

LABEL_52:
  v27 = &v29;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v9 = *v8;
        v8 += 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann10basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS8_14adl_serializerENSB_IhNS4_IhEEEEEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSK_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENST_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  return this;
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::parse(uint64_t a1, unsigned __int8 *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v13 = *(a1 + 184);
    v71 = a2;
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    v75 = v13;
    memset(&v69, 0, sizeof(v69));
    while (1)
    {
      while (1)
      {
        v14 = *(a1 + 32);
        if (v14 > 5)
        {
          break;
        }

        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            LOBYTE(v66.__vftable) = 1;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v71, &v66);
          }

          else
          {
            if (v14 != 2)
            {
              goto LABEL_113;
            }

            LOBYTE(v66.__vftable) = 0;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v71, &v66);
          }
        }

        else if (v14 == 3)
        {
          v66.__vftable = 0;
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v71);
        }

        else
        {
          if (v14 == 4)
          {
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v71);
          }

          v66.__vftable = *(a1 + 160);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v71, &v66);
        }

LABEL_71:
        size = v69.__r_.__value_.__l.__size_;
        if (!v69.__r_.__value_.__l.__size_)
        {
          goto LABEL_121;
        }

        while (1)
        {
          if ((*(v69.__r_.__value_.__r.__words[0] + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)))
          {
            v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
            *(a1 + 32) = v21;
            if (v21 == 13)
            {
              goto LABEL_83;
            }

            if (v21 != 10)
            {
              v42 = *(a1 + 72);
              nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
              v65 = *(a1 + 72);
              std::string::basic_string[abi:ne200100]<0>(&v63, "array");
              nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0xAu, &v63);
              nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
              nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v42, &v68, &v66);
              goto LABEL_142;
            }

            goto LABEL_78;
          }

          v22 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
          *(a1 + 32) = v22;
          if (v22 == 13)
          {
            break;
          }

          if (v22 != 11)
          {
            v45 = *(a1 + 72);
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
            v65 = *(a1 + 72);
            std::string::basic_string[abi:ne200100]<0>(&v63, "object");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0xBu, &v63);
            nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v45, &v68, &v66);
            goto LABEL_142;
          }

LABEL_78:
          *(&v72 + 1) -= 8;
          size = --v69.__r_.__value_.__l.__size_;
          if (!v69.__r_.__value_.__l.__size_)
          {
            goto LABEL_121;
          }
        }

        v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v23;
        if (v23 != 4)
        {
          goto LABEL_140;
        }

        v24 = *(*(*(&v72 + 1) - 8) + 8);
        v66.__vftable = (a1 + 120);
        *(&v73 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24, (a1 + 120)) + 56;
        v25 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v25;
        if (v25 != 12)
        {
          goto LABEL_141;
        }

LABEL_83:
        v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
LABEL_84:
        *(a1 + 32) = v18;
      }

      if (v14 <= 7)
      {
        if (v14 == 6)
        {
          v66.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v71, &v66);
        }

        else
        {
          if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v53 = *(a1 + 72);
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v63, *(a1 + 96), *(a1 + 104));
            v54 = std::string::insert(&v63, 0, "number overflow parsing '");
            v55 = *&v54->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v55;
            v54->__r_.__value_.__l.__size_ = 0;
            v54->__r_.__value_.__r.__words[2] = 0;
            v54->__r_.__value_.__r.__words[0] = 0;
            v56 = std::string::append(&__p, "'");
            v57 = *&v56->__r_.__value_.__l.__data_;
            v65.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
            *&v65.__r_.__value_.__l.__data_ = v57;
            v56->__r_.__value_.__l.__size_ = 0;
            v56->__r_.__value_.__r.__words[2] = 0;
            v56->__r_.__value_.__r.__words[0] = 0;
            nlohmann::detail::out_of_range::create(406, &v65, &v66);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v53, &v68, &v66);
            nlohmann::detail::exception::~exception(&v66);
            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            goto LABEL_115;
          }

          v66.__vftable = *(a1 + 168);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v71, &v66);
        }

        goto LABEL_71;
      }

      if (v14 != 8)
      {
        break;
      }

      v68.__r_.__value_.__s.__data_[0] = 2;
      v66.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v71, &v68);
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](&v72, &v66);
      v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
      *(a1 + 32) = v19;
      if (v19 == 10)
      {
        goto LABEL_68;
      }

      LOBYTE(v66.__vftable) = 1;
      std::vector<BOOL>::push_back(&v69, &v66);
    }

    if (v14 != 9)
    {
      if (v14 == 14)
      {
        v34 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v34, &v68, &v66);
      }

      else
      {
LABEL_113:
        v35 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0x10u, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v35, &v68, &v66);
      }

      v66.__vftable = &unk_1F42CDB50;
      MEMORY[0x1C692A5A0](v67);
      std::exception::~exception(&v66);
      goto LABEL_115;
    }

    v68.__r_.__value_.__s.__data_[0] = 1;
    v66.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v71, &v68);
    std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](&v72, &v66);
    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v15;
    if (v15 != 11)
    {
      if (v15 == 4)
      {
        v16 = *(*(*(&v72 + 1) - 8) + 8);
        v66.__vftable = (a1 + 120);
        *(&v73 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, (a1 + 120)) + 56;
        v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v17;
        if (v17 == 12)
        {
          LOBYTE(v66.__vftable) = 0;
          std::vector<BOOL>::push_back(&v69, &v66);
          v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
          goto LABEL_84;
        }

LABEL_141:
        v47 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "object separator");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0xCu, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v47, &v68, &v66);
      }

      else
      {
LABEL_140:
        v46 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "object key");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 4u, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v46, &v68, &v66);
      }

LABEL_142:
      nlohmann::detail::exception::~exception(&v66);
LABEL_115:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

LABEL_121:
      if (v69.__r_.__value_.__r.__words[0])
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      v36 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
      *(a1 + 32) = v36;
      if (v36 != 15)
      {
        v37 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v69, *(a1 + 96), *(a1 + 104));
        v68 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&__p, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v65, a1, 0xFu, &__p);
        nlohmann::detail::parse_error::create(101, &v68, &v65, &v66);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v37, &v69, &v66);
        v66.__vftable = &unk_1F42CDB50;
        MEMORY[0x1C692A5A0](v67);
        std::exception::~exception(&v66);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }
      }

      if (v74 == 1)
      {
        v38 = *a2;
        *a2 = 9;
        v39 = *(a2 + 1);
        *(a2 + 1) = 0;
        v58 = v39;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v58, v38);
      }

      if (v72)
      {
        *(&v72 + 1) = v72;
        operator delete(v72);
      }

      goto LABEL_134;
    }

LABEL_68:
    *(&v72 + 1) -= 8;
    goto LABEL_71;
  }

  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v70, a1);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v71, a2, v70, *(a1 + 184));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v70);
  memset(&v69, 0, sizeof(v69));
LABEL_3:
  while (1)
  {
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      break;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v66.__vftable = *(a1 + 152);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v71, &v66, 0);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v48 = *(a1 + 72);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v63, *(a1 + 96), *(a1 + 104));
          v49 = std::string::insert(&v63, 0, "number overflow parsing '");
          v50 = *&v49->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          v51 = std::string::append(&__p, "'");
          v52 = *&v51->__r_.__value_.__l.__data_;
          v65.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v65.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, &v65, &v66);
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v48, &v68, &v66);
          nlohmann::detail::exception::~exception(&v66);
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          goto LABEL_90;
        }

        v66.__vftable = *(a1 + 168);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v71, &v66, 0);
      }

      goto LABEL_29;
    }

    if (v4 != 8)
    {
      if (v4 == 9)
      {
        if ((nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(&v71, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
        {
          goto LABEL_96;
        }

        v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        *(a1 + 32) = v5;
        if (v5 != 11)
        {
          if (v5 == 4)
          {
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
          }

          goto LABEL_137;
        }

        v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v71);
        goto LABEL_25;
      }

      if (v4 == 14)
      {
        v26 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v26, &v68, &v66);
LABEL_89:
        v66.__vftable = &unk_1F42CDB50;
        MEMORY[0x1C692A5A0](v67);
        std::exception::~exception(&v66);
        goto LABEL_90;
      }

LABEL_88:
      v27 = *(a1 + 72);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
      v65 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(&v63, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0x10u, &v63);
      nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v27, &v68, &v66);
      goto LABEL_89;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(&v71, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_96;
    }

    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v71);
LABEL_25:
      if ((v6 & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_29;
    }

    LOBYTE(v66.__vftable) = 1;
    std::vector<BOOL>::push_back(&v69, &v66);
  }

  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      LOBYTE(v66.__vftable) = 1;
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v71, &v66, 0);
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_88;
      }

      LOBYTE(v66.__vftable) = 0;
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v71, &v66, 0);
    }
  }

  else if (v4 == 3)
  {
    v66.__vftable = 0;
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v71, &v66, 0);
  }

  else if (v4 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v71);
  }

  else
  {
    v66.__vftable = *(a1 + 160);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v71, &v66, 0);
  }

LABEL_29:
  v8 = v69.__r_.__value_.__l.__size_;
  if (!v69.__r_.__value_.__l.__size_)
  {
    goto LABEL_96;
  }

  while (1)
  {
    if ((*(v69.__r_.__value_.__r.__words[0] + (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
        goto LABEL_3;
      }

      if (v9 != 10)
      {
        v41 = *(a1 + 72);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
        v65 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(&v63, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0xAu, &v63);
        nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v41, &v68, &v66);
        goto LABEL_138;
      }

      v10 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v71);
      goto LABEL_37;
    }

    v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
    *(a1 + 32) = v11;
    if (v11 == 13)
    {
      break;
    }

    if (v11 != 11)
    {
      v43 = *(a1 + 72);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
      v65 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(&v63, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 0xBu, &v63);
      nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v43, &v68, &v66);
      goto LABEL_138;
    }

    v10 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v71);
LABEL_37:
    if (v10)
    {
      v8 = --v69.__r_.__value_.__l.__size_;
      if (v69.__r_.__value_.__l.__size_)
      {
        continue;
      }
    }

    goto LABEL_96;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_137:
  v44 = *(a1 + 72);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v68, *(a1 + 96), *(a1 + 104));
  v65 = *(a1 + 72);
  std::string::basic_string[abi:ne200100]<0>(&v63, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&__p, a1, 4u, &v63);
  nlohmann::detail::parse_error::create(101, &v65, &__p, &v66);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v44, &v68, &v66);
LABEL_138:
  nlohmann::detail::exception::~exception(&v66);
LABEL_90:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

LABEL_96:
  if (v69.__r_.__value_.__r.__words[0])
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v28 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::scan(a1 + 40);
  *(a1 + 32) = v28;
  if (v28 != 15)
  {
    v29 = *(a1 + 72);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::get_token_string(&v69, *(a1 + 96), *(a1 + 104));
    v68 = *(a1 + 72);
    std::string::basic_string[abi:ne200100]<0>(&__p, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::exception_message(&v65, a1, 0xFu, &__p);
    nlohmann::detail::parse_error::create(101, &v68, &v65, &v66);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v71, v29, &v69, &v66);
    v66.__vftable = &unk_1F42CDB50;
    MEMORY[0x1C692A5A0](v67);
    std::exception::~exception(&v66);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }

  if (v76 == 1)
  {
    v30 = *a2;
    *a2 = 9;
    v61 = v30;
    v31 = *(a2 + 1);
    *(a2 + 1) = 0;
    v62 = v31;
    v32 = &v62;
    goto LABEL_109;
  }

  if (*a2 == 9)
  {
    *a2 = 0;
    v59 = 9;
    v33 = *(a2 + 1);
    *(a2 + 1) = 0;
    v60 = v33;
    v32 = &v60;
    v30 = 9;
LABEL_109:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v32, v30);
  }

  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v71);
LABEL_134:
  v40 = *MEMORY[0x1E69E9840];
}

void sub_1C2F9F308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, std::exception a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  nlohmann::detail::exception::~exception(&a35);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a46)
  {
    operator delete(a46);
  }

  v54 = *(v52 - 232);
  if (v54)
  {
    *(v52 - 224) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20[0] = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v21, v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v10 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v11 = *v10;
    *v10 = v20[0];
    v20[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v20[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(v6, a2);
      }

      else
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v14 = *a2;
      v18[0] = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v19, v14);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v15 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v16 = *v15;
      *v15 = v18[0];
      v18[0] = v16;
      v17 = *(v15 + 8);
      *(v15 + 8) = v19;
      v19 = v17;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v19, v18[0]);
      return a1[4];
    }
  }
}

void std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1C2F9F95C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::reset(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    **(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
  }

  v2 = *(a1 + 56);
  v1 = a1 + 56;
  *(v1 + 8) = v2;
  v3 = *(v1 - 40);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::unget(uint64_t result)
{
  v1 = (result + 40);
  v2 = *(result + 40);
  *(result + 24) = 1;
  --*(result + 32);
  if (v2 || (v1 = (result + 48), (v2 = *(result + 48)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    --*(result + 64);
  }

  return result;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void name_from_id(std::string *a1, int a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::push_back(a1, SHIBYTE(a2));
  std::string::push_back(a1, (a2 << 8) >> 24);
  std::string::push_back(a1, SBYTE1(a2));
  std::string::push_back(a1, a2);
}

void sub_1C2FA00F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void symbol_name_from_id(std::string *a1, unsigned int a2)
{
  v232 = *MEMORY[0x1E69E9840];
  {
    v12 = a1;
    v9 = a2;
    a2 = v9;
    v11 = v10;
    a1 = v12;
    if (v11)
    {
      v14 = 1768842360;
      std::string::basic_string[abi:ne200100]<0>(v15, "kFeatureIndex");
      v16 = 1937011316;
      std::string::basic_string[abi:ne200100]<0>(v17, "kStringTable");
      v18 = 1633968500;
      std::string::basic_string[abi:ne200100]<0>(v19, "kAudioData");
      v20 = 1886220907;
      std::string::basic_string[abi:ne200100]<0>(v21, "kPitchmarkData");
      v22 = 1714450030;
      std::string::basic_string[abi:ne200100]<0>(v23, "kF0NeuralNet");
      v24 = 1685417582;
      std::string::basic_string[abi:ne200100]<0>(v25, "kDurNeuralNet");
      v26 = 1885889131;
      std::string::basic_string[abi:ne200100]<0>(v27, "kPhoneBook");
      v28 = 1885893488;
      std::string::basic_string[abi:ne200100]<0>(v29, "kPhoneSpec");
      v30 = 1852797549;
      std::string::basic_string[abi:ne200100]<0>(v31, "kNorms");
      v32 = 1835298404;
      std::string::basic_string[abi:ne200100]<0>(v33, "kMDNDirectory");
      v34 = 1835298423;
      std::string::basic_string[abi:ne200100]<0>(v35, "kMDNWeights");
      v36 = 1835298414;
      std::string::basic_string[abi:ne200100]<0>(v37, "kMDNInputNormalizer");
      v38 = 1835298415;
      std::string::basic_string[abi:ne200100]<0>(v39, "kMDNOutputDenormalizer");
      v40 = 1835298409;
      std::string::basic_string[abi:ne200100]<0>(v41, "kMDNInputSelectionDims");
      v42 = 1835298406;
      std::string::basic_string[abi:ne200100]<0>(v43, "kMDNSingleFileFormat");
      v44 = 1919839846;
      std::string::basic_string[abi:ne200100]<0>(v45, "kRNNSingleFileFormat");
      v46 = 1952543344;
      std::string::basic_string[abi:ne200100]<0>(v47, "kTAPAndRAPFile");
      v48 = 1886547316;
      std::string::basic_string[abi:ne200100]<0>(v49, "kPromptData");
      v50 = 1949462637;
      std::string::basic_string[abi:ne200100]<0>(v51, "kT2PMapping");
      v52 = 1735422573;
      std::string::basic_string[abi:ne200100]<0>(v53, "kGeneratedPromptData");
      v54 = 2003135842;
      std::string::basic_string[abi:ne200100]<0>(v55, "kNormWordEmbedding");
      v56 = 1852990316;
      std::string::basic_string[abi:ne200100]<0>(v57, "kNormClassifier");
      v58 = 1852991854;
      std::string::basic_string[abi:ne200100]<0>(v59, "kNormInput");
      v60 = 1852992627;
      std::string::basic_string[abi:ne200100]<0>(v61, "kNormLabelSymbols");
      v62 = 1852994668;
      std::string::basic_string[abi:ne200100]<0>(v63, "kNormTokenLabels");
      v64 = 1852977512;
      std::string::basic_string[abi:ne200100]<0>(v65, "kNormOneHotFeat");
      v66 = 1852994156;
      std::string::basic_string[abi:ne200100]<0>(v67, "kNormRules");
      v68 = 1852990320;
      std::string::basic_string[abi:ne200100]<0>(v69, "kNormComplexClasses");
      v70 = 1870033522;
      std::string::basic_string[abi:ne200100]<0>(v71, "kOverrideRules");
      v72 = 1886352237;
      std::string::basic_string[abi:ne200100]<0>(v73, "kPartOfSpeechModel");
      v74 = 1886545272;
      std::string::basic_string[abi:ne200100]<0>(v75, "kPronExceptions");
      v76 = 1885892461;
      std::string::basic_string[abi:ne200100]<0>(v77, "kPhonemeMap");
      v78 = 1886547821;
      std::string::basic_string[abi:ne200100]<0>(v79, "kPronModel");
      v80 = 1885893228;
      std::string::basic_string[abi:ne200100]<0>(v81, "kPhonemeRules");
      v82 = 1885893235;
      std::string::basic_string[abi:ne200100]<0>(v83, "kPhrasingModel");
      v84 = 1885893234;
      std::string::basic_string[abi:ne200100]<0>(v85, "kPhrasingRules");
      v86 = 1651664996;
      std::string::basic_string[abi:ne200100]<0>(v87, "kBrokerHeader");
      v88 = 1650550884;
      std::string::basic_string[abi:ne200100]<0>(v89, "kBrokerHeaderAsset");
      v90 = 1885564279;
      std::string::basic_string[abi:ne200100]<0>(v91, "kPCMWave");
      v92 = 1935831659;
      std::string::basic_string[abi:ne200100]<0>(v93, "kSentenceBreakExceptions");
      v94 = 1717790311;
      std::string::basic_string[abi:ne200100]<0>(v95, "kFrontendConfig");
      v96 = 1734567527;
      std::string::basic_string[abi:ne200100]<0>(v97, "kGryphonConfig");
      v98 = 1734700644;
      std::string::basic_string[abi:ne200100]<0>(v99, "kGenderRules");
      v100 = 1735292269;
      std::string::basic_string[abi:ne200100]<0>(v101, "kGrammaticalNumberRules");
      v102 = 1718903655;
      std::string::basic_string[abi:ne200100]<0>(v103, "kFilterTextConfig");
      v104 = 1953657708;
      std::string::basic_string[abi:ne200100]<0>(v105, "kTransliterateConfig");
      v106 = 1920234092;
      std::string::basic_string[abi:ne200100]<0>(v107, "kReplaceRules");
      v108 = 1920231009;
      std::string::basic_string[abi:ne200100]<0>(v109, "kReplaceFSTArchive");
      v110 = 1731358822;
      std::string::basic_string[abi:ne200100]<0>(v111, "kG2PFSTArchive");
      v112 = 1718776943;
      std::string::basic_string[abi:ne200100]<0>(v113, "kFRTokenArchive");
      v114 = 1718776677;
      std::string::basic_string[abi:ne200100]<0>(v115, "kFRSentArchive");
      v116 = 1718775913;
      std::string::basic_string[abi:ne200100]<0>(v117, "kFRPitchArchive");
      v118 = 1852139109;
      std::string::basic_string[abi:ne200100]<0>(v119, "kNeuralFEConfig");
      v120 = 1852138085;
      std::string::basic_string[abi:ne200100]<0>(v121, "kNeuralBEConfig");
      v122 = 1953395557;
      std::string::basic_string[abi:ne200100]<0>(v123, "kTNSEQ2SEQ");
      v124 = 1953395570;
      std::string::basic_string[abi:ne200100]<0>(v125, "kTNSEQ2SEQRULE");
      v126 = 1731358835;
      std::string::basic_string[abi:ne200100]<0>(v127, "kG2PSEQ2SEQ");
      v128 = 1731358831;
      std::string::basic_string[abi:ne200100]<0>(v129, "kG2PSEQ2SEQOLD");
      v130 = 1751477859;
      std::string::basic_string[abi:ne200100]<0>(v131, "kHydraG2PEncoder");
      v132 = 1751410019;
      std::string::basic_string[abi:ne200100]<0>(v133, "kHydraG2PDecoder");
      v134 = 1953395813;
      std::string::basic_string[abi:ne200100]<0>(v135, "kTTSNLPTokEnc");
      v136 = 1953395812;
      std::string::basic_string[abi:ne200100]<0>(v137, "kTTSNLPTokDec");
      v138 = 1953390956;
      std::string::basic_string[abi:ne200100]<0>(v139, "kTTSNLPAligner");
      v140 = 1731358834;
      std::string::basic_string[abi:ne200100]<0>(v141, "kG2PSEQ2SEQRULE");
      v142 = 1887007858;
      std::string::basic_string[abi:ne200100]<0>(v143, "kG2PPYTRULE");
      v144 = 2020827506;
      std::string::basic_string[abi:ne200100]<0>(v145, "kG2PXSAMPARULE");
      v146 = 1818783858;
      std::string::basic_string[abi:ne200100]<0>(v147, "kG2PLHPRULE");
      v148 = 1768846450;
      std::string::basic_string[abi:ne200100]<0>(v149, "kG2PINTERNALRULE");
      v150 = 1886352244;
      std::string::basic_string[abi:ne200100]<0>(v151, "kG2PPOSTRULE");
      v152 = 1852731506;
      std::string::basic_string[abi:ne200100]<0>(v153, "kNNPreRule");
      v154 = 1919252338;
      std::string::basic_string[abi:ne200100]<0>(v155, "kRewriteArchive");
      v156 = 1936684658;
      std::string::basic_string[abi:ne200100]<0>(v157, "kStitchOverride");
      v158 = 1936748402;
      std::string::basic_string[abi:ne200100]<0>(v159, "kStitchPost");
      v160 = 1936548208;
      std::string::basic_string[abi:ne200100]<0>(v161, "kStitchMapping");
      v162 = 1886417510;
      std::string::basic_string[abi:ne200100]<0>(v163, "kPreprocessArchive");
      v164 = 1752523875;
      std::string::basic_string[abi:ne200100]<0>(v165, "kHydraUserDctList");
      v166 = 1752523890;
      std::string::basic_string[abi:ne200100]<0>(v167, "kHydraUserDctRule");
      v168 = 1634100856;
      std::string::basic_string[abi:ne200100]<0>(v169, "kAffixRules");
      v170 = 1852138092;
      std::string::basic_string[abi:ne200100]<0>(v171, "kNeuralFallbackDeprecated");
      v172 = 1852139116;
      std::string::basic_string[abi:ne200100]<0>(v173, "kNeuralFallbacklist");
      v174 = 1634624611;
      std::string::basic_string[abi:ne200100]<0>(v175, "kAnetecDecoder");
      v176 = 1634628452;
      std::string::basic_string[abi:ne200100]<0>(v177, "kAnetecStreamingDecoder");
      v178 = 1634624867;
      std::string::basic_string[abi:ne200100]<0>(v179, "kAnetecEncoder");
      v180 = 1634628453;
      std::string::basic_string[abi:ne200100]<0>(v181, "kAnetecStreamingEncoder");
      v182 = 1885435758;
      std::string::basic_string[abi:ne200100]<0>(v183, "kParallelWaveNet");
      v184 = 1885430125;
      std::string::basic_string[abi:ne200100]<0>(v185, "kParallelAM");
      v186 = 1952539503;
      std::string::basic_string[abi:ne200100]<0>(v187, "kTacotron");
      v188 = 2003988078;
      std::string::basic_string[abi:ne200100]<0>(v189, "kWaveRNN");
      v190 = 1853318509;
      std::string::basic_string[abi:ne200100]<0>(v191, "kNeuralWordEmbedding");
      v192 = 1885890164;
      std::string::basic_string[abi:ne200100]<0>(v193, "kPhonemeFeatures");
      v194 = 1717662576;
      std::string::basic_string[abi:ne200100]<0>(v195, "kFastSpeech");
      v196 = 1852139122;
      std::string::basic_string[abi:ne200100]<0>(v197, "kNeuralFrontend");
      v198 = 1684630631;
      std::string::basic_string[abi:ne200100]<0>(v199, "kDialog");
      v200 = 1954050162;
      std::string::basic_string[abi:ne200100]<0>(v201, "kTextProcessing");
      v202 = 1936946287;
      std::string::basic_string[abi:ne200100]<0>(v203, "kSoundStorm");
      v204 = 1936613746;
      std::string::basic_string[abi:ne200100]<0>(v205, "kS1NAR");
      v206 = 1717662579;
      std::string::basic_string[abi:ne200100]<0>(v207, "kFS2S1");
      v208 = 1920427373;
      std::string::basic_string[abi:ne200100]<0>(v209, "kRobertaWordEmbedding");
      v210 = 1920431214;
      std::string::basic_string[abi:ne200100]<0>(v211, "kRobertaWordEmbTokenizer");
      v212 = 1987015801;
      std::string::basic_string[abi:ne200100]<0>(v213, "kVoiceType");
      v214 = 1701737593;
      std::string::basic_string[abi:ne200100]<0>(v215, "kEngineType");
      v216 = 1818324583;
      std::string::basic_string[abi:ne200100]<0>(v217, "kLanguage");
      v218 = 1987538035;
      std::string::basic_string[abi:ne200100]<0>(v219, "kVowels");
      v220 = 1684629094;
      std::string::basic_string[abi:ne200100]<0>(v221, "kDifferentiatorPhones");
      v222 = 1937011315;
      std::string::basic_string[abi:ne200100]<0>(v223, "kStressablePhones");
      v224 = 1684368485;
      std::string::basic_string[abi:ne200100]<0>(v225, "kUnwantedPhones");
      v226 = 1702389364;
      std::string::basic_string[abi:ne200100]<0>(v227, "kExcludedFeatures");
      v228 = 1885893222;
      std::string::basic_string[abi:ne200100]<0>(v229, "kPhrasingFeat");
      v230 = 1936288870;
      std::string::basic_string[abi:ne200100]<0>(v231, "kSilenceDurationFactor");
      std::map<unsigned int,std::string>::map[abi:ne200100](&v13, &v14, 109);
      NeverDestructed<std::map<unsigned int,std::string>>::NeverDestructed<>();
    }
  }

  v2 = *(symbol_name_from_id::symbol_map + 8);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = symbol_name_from_id::symbol_map + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != symbol_name_from_id::symbol_map + 8 && *(v3 + 32) <= a2)
  {
    if (*(v3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *(v3 + 40), *(v3 + 48));
    }

    else
    {
      v8 = *(v3 + 40);
      a1->__r_.__value_.__r.__words[2] = *(v3 + 56);
      *&a1->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C2FA1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a11);
  v12 = &STACK[0xDA8];
  v13 = -3488;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 4;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(a1);
    }
  }
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(void *a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 4;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 4;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 4;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 6;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 6;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 6;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v4);
    }

    v5 = (16 * v1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(16 * v1);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1C2FA1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v3 + 8), v4);
  result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(void *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 7;
    v22 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22;
    v22 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 7;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 7;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<unsigned char const*>>::~lexer(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

unsigned __int8 *GryphonConfig::GryphonConfig(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v6, a2);
  v3 = *a1;
  *a1 = v6[0];
  v6[0] = v3;
  v4 = *(a1 + 1);
  *(a1 + 1) = v7;
  v7 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v3);
  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::string::__throw_length_error[abi:ne200100]()
{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<nlohmann::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FA1C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, v6);
      v6 += 16;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  return result;
}

void sub_1C2FA1EE8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

std::string *std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_1C2FA2040(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C2FA21C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

void GryphonConfig::params_for_connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "connection");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v7, v5);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  GryphonConfig::params_for_module_from_pipeline(a1, &__p, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v8, v7[0]);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, __p, exception);
  }

  v3 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_1C2FA2470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  return result;
}

BOOL GryphonConfig::params_for_module_from_pipeline(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __p = a3;
  v18 = 0uLL;
  *&v19 = 0;
  *(&v19 + 1) = 0x8000000000000000;
  v5 = *a3;
  if (*a3)
  {
    if (v5 == 2)
    {
      v7 = *(a3 + 1);
      *(&v18 + 1) = *v7;
      v12 = a3;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0x8000000000000000;
      v14 = v7[1];
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      v6 = *(a3 + 1);
      *&v18 = *v6;
      v14 = 0;
      v15 = 0;
      v16 = 0x8000000000000000;
      v12 = a3;
      v13 = v6 + 1;
      goto LABEL_9;
    }

    *(&v19 + 1) = 0;
  }

  else
  {
    *(&v19 + 1) = 1;
  }

  v12 = a3;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
LABEL_9:
  if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&__p, &v12))
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&__p);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v23, v8);
    v23[16] = 3;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  v9 = __p;
  v21 = v18;
  v22 = v19;
  __p = a3;
  v18 = 0uLL;
  *&v19 = 0;
  *(&v19 + 1) = 0x8000000000000000;
  v20 = v9;
  v10 = *a3;
  if (v10 == 2)
  {
    *(&v18 + 1) = *(*(a3 + 1) + 8);
  }

  else if (v10 == 1)
  {
    *&v18 = *(a3 + 1) + 8;
  }

  else
  {
    *(&v19 + 1) = 1;
  }

  result = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v20, &__p);
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v20);
    std::string::basic_string[abi:ne200100]<0>(&__p, "params");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v12, 0, 0, 0, 1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

void sub_1C2FA27D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v20 + 8), a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v10 = v3 == 5 && v4 == 7;
    if (v10)
    {
      v15 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v13 = *(a1 + 1);
        v14 = *(a2 + 1);
        return v13 == v14;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          return result;
        }

        v13 = *(a1 + 1);
        v14 = *(a2 + 1);
        return v13 == v14;
      }

      v15 = *(a1 + 1);
    }

    return *(a2 + 1) == v15;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        v8 = a1[8];
        v9 = a2[8];
        return v8 == v9;
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = *(a1 + 1);
          v6 = *(a2 + 1);
          v7 = *(v5 + 8) - *v5;
          if (v7 == *(v6 + 8) - *v6 && !memcmp(*v5, *v6, v7) && *(v5 + 24) == *(v6 + 24))
          {
            v8 = *(v5 + 25);
            v9 = *(v6 + 25);
            return v8 == v9;
          }
        }

        return 0;
      }

      v13 = *(a1 + 1);
      v14 = *(a2 + 1);
      return v13 == v14;
    }

    return *(a1 + 1) == *(a2 + 1);
  }

  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v17 = *(a1 + 1);
      v18 = *(a2 + 1);
      if (v17[2] != v18[2])
      {
        return 0;
      }

      v21 = *v17;
      v19 = v17 + 1;
      v20 = v21;
      if (v21 != v19)
      {
        v22 = *v18;
        while (1)
        {
          v23 = *(v20 + 55);
          if (v23 >= 0)
          {
            v24 = *(v20 + 55);
          }

          else
          {
            v24 = v20[5];
          }

          v25 = *(v22 + 55);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = v22[5];
          }

          if (v24 != v25)
          {
            break;
          }

          v27 = v23 >= 0 ? v20 + 4 : v20[4];
          v28 = v26 >= 0 ? v22 + 4 : v22[4];
          if (memcmp(v27, v28, v24))
          {
            break;
          }

          result = nlohmann::operator==(v20 + 7, v22 + 7);
          if (result)
          {
            v30 = v20[1];
            v31 = v20;
            if (v30)
            {
              do
              {
                v20 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v20 = v31[2];
                v10 = *v20 == v31;
                v31 = v20;
              }

              while (!v10);
            }

            v32 = v22[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v22[2];
                v10 = *v33 == v22;
                v22 = v33;
              }

              while (!v10);
            }

            result = 1;
            v22 = v33;
            if (v20 != v19)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v3 != 2)
  {
    v34 = *(a1 + 1);
    v35 = *(a2 + 1);
    v36 = *(v34 + 23);
    if (v36 >= 0)
    {
      v37 = *(v34 + 23);
    }

    else
    {
      v37 = *(v34 + 8);
    }

    v38 = *(v35 + 23);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(v35 + 8);
    }

    if (v37 == v38)
    {
      if (v36 >= 0)
      {
        v40 = *(a1 + 1);
      }

      else
      {
        v40 = *v34;
      }

      if (v39 >= 0)
      {
        v41 = *(a2 + 1);
      }

      else
      {
        v41 = *v35;
      }

      return memcmp(v40, v41, v37) == 0;
    }

    return 0;
  }

  v42 = *(a1 + 1);
  v43 = *(a2 + 1);
  v44 = *v42;
  v45 = v42[1];
  v46 = *v43;
  if (v45 - *v42 != v43[1] - *v43)
  {
    return 0;
  }

  if (v44 == v45)
  {
    return 1;
  }

  do
  {
    result = nlohmann::operator==(v44, v46);
    if (!result)
    {
      break;
    }

    v44 += 16;
    v46 += 16;
  }

  while (v44 != v45);
  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v5 = a2 + 16;
    v6 = 32 * a3;
    while (**v5 == 2)
    {
      v8 = *(*v5 + 8);
      v7 = *v8;
      if (*(v8 + 8) - *v8 != 32 || *v7 != 3)
      {
        break;
      }

      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      if (a5 != 1)
      {
        LOBYTE(v9) = 1;
      }

      if ((v9 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v12, "cannot create object from initializer list");
        nlohmann::detail::type_error::create(301, &v12, exception);
      }

      if (!v10)
      {
LABEL_18:
        *a1 = 2;
        operator new();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v9 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void sub_1C2FA2EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  operator delete(v16);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,0>@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    a3 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
  }

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a4, a3);
}

void sub_1C2FA3054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void GryphonConfig::params_for_module(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "pipeline");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v32, v6);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a3, *(a3 + 8));
  }

  else
  {
    v29 = *a3;
  }

  GryphonConfig::params_for_module_from_pipeline(v30, &v29, v32);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v30[0] == 1)
  {
    v7 = 0;
    *a1 = 1;
    *(a1 + 8) = v31;
    v30[0] = 0;
    v31 = 0;
  }

  else
  {
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "connection");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v27, v8);
    v22 = v27;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x8000000000000000;
    if (v27[0])
    {
      if (v27[0] == 2)
      {
        v24 = *v28;
      }

      else if (v27[0] == 1)
      {
        v23 = *v28;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 1;
    }

    while (1)
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v17 = v27;
      v21 = 0x8000000000000000;
      if (v27[0] == 2)
      {
        v19 = v28[1];
      }

      else if (v27[0] == 1)
      {
        v18 = v28 + 1;
      }

      else
      {
        v21 = 1;
      }

      if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v22, &v17))
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_32;
      }

      v9 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v22);
      v10 = v9;
      if (*v9 == 1)
      {
        if (std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__count_multi<char [9]>(*(v9 + 1), "pipeline"))
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
          }

          else
          {
            __p = *a3;
          }

          v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v10, "pipeline");
          GryphonConfig::params_for_module_from_pipeline(v15, &__p, v11);
          v12 = v30[0];
          v30[0] = v15[0];
          v15[0] = v12;
          v13 = v31;
          v31 = v16;
          v16 = v13;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v30[0] == 1)
          {
            break;
          }
        }
      }

      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(&v22);
    }

    *a1 = 1;
    *(a1 + 8) = v31;
    v30[0] = 0;
    v31 = 0;
LABEL_32:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
    v7 = v30[0];
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v7);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v33, v32[0]);
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(unsigned __int8 **result)
{
  if (!*result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *(a2 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1C2FA3618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void kaldi::Vector<float>::Destroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

void std::__shared_ptr_emplace<Resampler>::__on_zero_shared(uint64_t a1)
{
  kaldi::Vector<float>::Destroy(a1 + 112);
  v3 = (a1 + 72);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; kaldi::Vector<float>::Destroy(i))
  {
    i -= 24;
  }

  *(a1 + 8) = a2;
}

void std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void AudioResamplingModule::AudioResamplingModule(uint64_t a1, unsigned __int8 *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Module::Module(a1, a2, v10);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  *a1 = &unk_1F42E0528;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "sample_rate_in");
  v7 = 24000;
  *(a1 + 320) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(a2, __p, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sample_rate_out");
  v7 = 48000;
  *(a1 + 324) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(a2, __p, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "leading_silence");
  v7 = 0;
  *(a1 + 296) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(a2, __p, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trailing_silence");
  v7 = 20;
  *(a1 + 304) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(a2, __p, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "override_trimming_silence");
  LOBYTE(v7) = 0;
  *(a1 + 292) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(a2, __p, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1C2FA39B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  v19 = *(v15 + 41);
  if (v19)
  {
    *(v15 + 42) = v19;
    operator delete(v19);
  }

  v20 = *(v15 + 35);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  Module::~Module(v15);
  _Unwind_Resume(a1);
}

void sub_1C2FA3A34()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1C2FA3A2CLL);
}

void kaldi::Vector<float>::Resize(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2;
  v7 = *a1;
  if (!a3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v7)
      {
        kaldi::Vector<float>::Init(a1, a2, a3, a4, a5);
LABEL_25:
        v7 = *a1;
        v14 = 4 * *(a1 + 2);
LABEL_26:

        bzero(v7, v14);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v8 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v7);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<float>::Init(a1, v5, v11, v12, v13);
        if ((v8 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v8)
      {
        return;
      }

      v14 = 4 * a2;
      goto LABEL_26;
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<float>::Init(a1, a2, a3, a4, a5);
    if (!v8)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (!a2 || !v7)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v15 = *(a1 + 2);
    if (a2 > v15)
    {
      bzero(&v7[4 * v15], 4 * (a2 - v15));
    }

    *(a1 + 2) = v5;
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
    kaldi::Vector<float>::Resize(&__dst, a2, 1);
    v9 = *(a1 + 2);
    v10 = *a1;
    if (v9 >= v5)
    {
      memcpy(__dst, v10, 4 * v5);
    }

    else
    {
      memcpy(__dst, v10, 4 * v9);
      bzero(__dst + 4 * *(a1 + 2), 4 * (v5 - *(a1 + 2)));
    }

    v16 = __dst;
    __dst = *a1;
    v17 = __dst;
    *a1 = v16;
    v18 = v20;
    v20 = a1[1];
    a1[1] = v18;
    if (v17)
    {
      free(v17);
    }
  }
}

void **kaldi::Vector<float>::Init(void **result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0xC6, "dim >= 0", a5);
  }

  v6 = result;
  if (a2)
  {
    memptr = 0;
    v7 = 4 * a2;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0x47F99594uLL);
    if (result || !memptr)
    {
      if (v7 < 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v11, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 217);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Negative dimension: size=", 25);
        MEMORY[0x1C692A960](v8, (4 * a2));
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v11);
      }

      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v10, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v6 = memptr;
    *(v6 + 2) = a2;
    *(v6 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_1C2FA3D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C2FA4048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FA40BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::get_shape(InferenceEngine::DataTensor *this@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (!a2 || *(v5 + 8 * v9) != 1)
      {
        v10 = a3[2];
        if (v8 >= v10)
        {
          v11 = *a3;
          v12 = v8 - *a3;
          v13 = (v12 >> 3) + 1;
          if (v13 >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v10 - v11;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
          }

          v16 = (8 * (v12 >> 3));
          *v16 = *(v5 + 8 * v9);
          v8 = (v16 + 1);
          memcpy(0, v11, v12);
          v17 = *a3;
          *a3 = 0;
          a3[1] = v8;
          a3[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = *(v5 + 8 * v9);
          v8 += 8;
        }

        a3[1] = v8;
        v5 = *(this + 7);
        v4 = *(this + 8);
      }

      ++v9;
    }

    while (v9 < (v4 - v5) >> 3);
  }
}

void sub_1C2FA4218(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C2FA452C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Vocab::OOvWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

uint64_t InferenceEngine::DataTensor::set_shape(InferenceEngine::DataTensor *this, char **a2)
{
  v3 = (this + 56);
  if (v3 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return InferenceEngine::DataTensor::init_data_size(this);
}

char *std::vector<unsigned long>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<unsigned long>::emplace_back<unsigned long>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1C2FA4744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

void InferenceEngine::DataTensor::~DataTensor(InferenceEngine::DataTensor *this)
{
  *this = &unk_1F42CDED8;
  v2 = *(this + 96);
  v3 = *(this + 11);
  if (v2 == 1)
  {
    munmap(v3, *(this + 10));
  }

  else
  {
    free(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  InferenceEngine::DataTensor::~DataTensor(this);

  JUMPOUT(0x1C692AE10);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FA4C94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<float>>::resize(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v5 + 24 * a2);
      if (v4 != v13)
      {
        v14 = a1[1];
        do
        {
          v16 = *(v14 - 3);
          v14 -= 3;
          v15 = v16;
          if (v16)
          {
            *(v4 - 2) = v15;
            operator delete(v15);
          }

          v4 = v14;
        }

        while (v14 != v13);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
        v11 = 0x5555555555555556 * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v12);
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v17 = &v4[3 * v7];
    v18 = 24 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
  }
}

void sub_1C2FA4FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1C2FA50E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void SoundStormP2APromptInference::prepare_inputs(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  SoundStormP2ABaseInference::prepare_inputs(a1, v3);
}

void sub_1C2FA53E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FA555C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::build_from_2d_array<float>(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  __p[1] = ((v2[1] - *v2) >> 2);
  memset(v3, 0, sizeof(v3));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v3, __p, v5, 2uLL);
  InferenceEngine::DataUtils::get_type_string<float>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1C2FA56BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FA57A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *InferenceEngine::DataUtils::get_type_string<float>@<X0>(_BYTE *a1@<X8>)
{
  if (std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5468]))
  {
    v2 = "fp32";
  }

  else
  {
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5468], MEMORY[0x1E69E5478]))
    {
      InferenceEngine::DataUtils::get_type_string<float>();
    }

    v2 = "int32";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void *std::__shared_ptr_emplace<InferenceEngine::DataTensor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string,std::vector<unsigned long> &,std::allocator<InferenceEngine::DataTensor>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CDBF8;
  InferenceEngine::DataTensor::DataTensor(a1 + 3);
  return a1;
}

uint64_t InferenceEngine::DataTensor::DataTensor(uint64_t a1, __int128 *a2, __int128 *a3, char **a4)
{
  *a1 = &unk_1F42CDED8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if ((a1 + 56) == a4)
  {
    goto LABEL_17;
  }

  std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 56), *a4, a4[1], (a4[1] - *a4) >> 3);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64) - v9;
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10 >> 3;
  v12 = v11 <= 1 ? 1 : v11;
  if (*v9 != -1)
  {
    v13 = 1;
    do
    {
      v14 = v13;
      if (v12 == v13)
      {
        break;
      }

      v15 = v9[v13++];
    }

    while (v15 != -1);
    if (v14 >= v11)
    {
LABEL_17:
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      InferenceEngine::DataTensor::allocate_memory(a1, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_1C2FA59EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *InferenceEngine::DataTensor::allocate_memory(uint64_t a1, uint64_t a2)
{
  InferenceEngine::DataTensor::init_data_size(a1);
  if (*(a1 + 96) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = open(v4, 0);
    if (v5 < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = *(a2 + 23);
      v11 = *a2;
      v12 = __error();
      if (v10 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = v11;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v18, "MemoryMap unable to open '%s': error %d\n", v13, *v12);
      MEMORY[0x1C692A510](exception, &v18);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v6 = v5;
    v7 = mmap(0, *(a1 + 80), 1, 1, v5, 0);
    *(a1 + 88) = v7;
    if (v7 == -1)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      InferenceEngine::StringFormatter::StringFormatter(&v18, "MemoryMap unable to mmap, error %d/%s", v15, v17);
      MEMORY[0x1C692A510](v14, &v18);
      __cxa_throw(v14, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    return close(v6);
  }

  else
  {
    free(*(a1 + 88));
    result = malloc_type_valloc(*(a1 + 80), 0xB641B648uLL);
    *(a1 + 88) = result;
  }

  return result;
}

void sub_1C2FA5D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataTensor::init_data_size(uint64_t this)
{
  v1 = *(this + 56);
  v2 = *(this + 64) - v1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = 1;
    do
    {
      v6 = *v1++;
      v5 *= v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  v7 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 40) != 4 || **v7 != 842231910)
    {
      if (*(this + 40) != 4 || **v7 != 909209702)
      {
        if (*(this + 40) != 5)
        {
          goto LABEL_29;
        }

        v8 = *v7;
        goto LABEL_19;
      }

LABEL_27:
      v12 = 2;
      goto LABEL_28;
    }
  }

  else
  {
    if (*(this + 55) != 4)
    {
      v8 = (this + 32);
      if (*(this + 55) != 5)
      {
        goto LABEL_29;
      }

LABEL_19:
      v9 = *v8;
      v10 = *(v8 + 4);
      if (v9 != 863268457 || v10 != 50)
      {
LABEL_29:
        v13 = this;
        exception = __cxa_allocate_exception(0x10uLL);
        if (*(v13 + 55) < 0)
        {
          v7 = *v7;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v15, "DataTensor type not supported: '%s'", v7);
        MEMORY[0x1C692A510](exception, &v15);
        __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      goto LABEL_24;
    }

    if (*v7 != 842231910)
    {
      if (*v7 != 909209702)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v12 = 4;
LABEL_28:
  *(this + 80) = v12 * v5;
  return this;
}