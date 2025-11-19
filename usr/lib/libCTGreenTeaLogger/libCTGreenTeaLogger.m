uint64_t createGreenTeaLogger(const char *a1)
{
  getGreenTeaLogUtility(&v3);
  v1 = (**v3)(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v1)
  {
    operator new();
  }

  return 0;
}

void getGreenTeaLogUtility(void *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    getGreenTeaLogUtility();
  }

  if ((atomic_load_explicit(&qword_2A18986B0, memory_order_acquire) & 1) == 0)
  {
    getGreenTeaLogUtility();
  }

  if (qword_2A18986A8 != -1)
  {
    getGreenTeaLogUtility();
  }

  v2 = unk_2A18986C0;
  *a1 = qword_2A18986B8;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void getGreenTeaLogUtility()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    qword_2A18986B8 = 0;
    unk_2A18986C0 = 0;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

{
  if (__cxa_guard_acquire(&qword_2A18986B0))
  {
    qword_2A18986A8 = 0;

    __cxa_guard_release(&qword_2A18986B0);
  }
}

{
  dispatch_once(&qword_2A18986A8, &__block_literal_global_1);
}

BOOL ct_green_tea_logging_enabled()
{
  GreenTeaLogger = createGreenTeaLogger(&unk_29773685D);
  if (!GreenTeaLogger)
  {
    return 0;
  }

  v1 = GreenTeaLogger;
  LogHandle = CTGreenTeaLoggerImpl::getLogHandle(*GreenTeaLogger);
  if (LogHandle)
  {
    v3 = os_log_type_enabled(LogHandle, OS_LOG_TYPE_INFO);
  }

  else
  {
    v3 = 0;
  }

  ct_green_tea_logger_destroy(v1);
  return v3;
}

const char *ct_green_tea_logger_create(const char *result)
{
  if (result)
  {
    return createGreenTeaLogger(result);
  }

  return result;
}

CTGreenTeaLoggerImpl **getCTGreenTeaOsLogHandle(CTGreenTeaLoggerImpl **result)
{
  if (result)
  {
    return CTGreenTeaLoggerImpl::getLogHandle(*result);
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t GreenTeaLogUtility::canCreateLogHandle(GreenTeaLogUtility *this)
{
  {
    GreenTeaLogUtility::canCreateLogHandle();
  }

  {
    v1 = 1;
  }

  else
  {
    {
      GreenTeaLogUtility::canCreateLogHandle();
    }
  }

  return v1 & 1;
}

void ct_green_tea_logger_s::ct_green_tea_logger_s(ct_green_tea_logger_s *this, const char *a2)
{
  *this = 0;
  *(this + 1) = 0;
  operator new();
}

void sub_297735C80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12_GLOBAL__N_116isCarrierInstallEv_block_invoke()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFEqual(v0, @"Carrier");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = v2 != 0;
      _os_log_impl(&dword_297735000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "Carrier install: %d", v4, 8u);
    }

    CFRelease(v1);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void ___ZN12_GLOBAL__N_117isInternalInstallEv_block_invoke()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFEqual(v0, @"Internal");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = v2 != 0;
      _os_log_impl(&dword_297735000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "Internal install: %d", v4, 8u);
    }

    CFRelease(v1);
  }

  v3 = *MEMORY[0x29EDCA608];
}

const char *ct_green_tea_logger_create_static(const char *result)
{
  if (result)
  {
    v1 = result;
    if ((atomic_load_explicit(&qword_2A1898698, memory_order_acquire) & 1) == 0)
    {
      ct_green_tea_logger_create_static_cold_1();
    }

    if (ct_green_tea_logger_create_static::onceToken != -1)
    {
      ct_green_tea_logger_create_static_cold_2();
    }

    v2 = _MergedGlobals;

    return CTGreenTeaLogServer::getLogger(v2, v1);
  }

  return result;
}

void ct_green_tea_logger_create_static_cold_1()
{
  if (__cxa_guard_acquire(&qword_2A1898698))
  {
    _MergedGlobals = 0;

    __cxa_guard_release(&qword_2A1898698);
  }
}

void __ct_green_tea_logger_create_static_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ33ct_green_tea_logger_create_staticEUb_E14neverDestroyed, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ33ct_green_tea_logger_create_staticEUb_E14neverDestroyed))
  {
    operator new();
  }

  _MergedGlobals = _ZZZ33ct_green_tea_logger_create_staticEUb_E14neverDestroyed;
}

uint64_t CTGreenTeaLogServer::getLogger(std::mutex *this, const char *a2)
{
  v12 = a2;
  std::mutex::lock(this);
  v4 = *this[1].__m_.__opaque;
  if (!v4)
  {
    goto LABEL_9;
  }

  opaque = this[1].__m_.__opaque;
  do
  {
    v6 = *(v4 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      opaque = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (opaque != this[1].__m_.__opaque && *(opaque + 4) <= a2)
  {
    v9 = *(opaque + 5);
  }

  else
  {
LABEL_9:
    GreenTeaLogger = createGreenTeaLogger(a2);
    if (GreenTeaLogger)
    {
      std::__tree<std::__value_type<char const*,ct_green_tea_logger_s *>,std::__map_value_compare<char const*,std::__value_type<char const*,ct_green_tea_logger_s *>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ct_green_tea_logger_s *>>>::__emplace_unique_key_args<char const*,char const*&,ct_green_tea_logger_s *&>(&this[1], &v12);
      v9 = GreenTeaLogger;
    }

    else
    {
      v9 = 0;
    }
  }

  std::mutex::unlock(this);
  return v9;
}

void *std::__tree<std::__value_type<char const*,ct_green_tea_logger_s *>,std::__map_value_compare<char const*,std::__value_type<char const*,ct_green_tea_logger_s *>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ct_green_tea_logger_s *>>>::__emplace_unique_key_args<char const*,char const*&,ct_green_tea_logger_s *&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ct_green_tea_logger_destroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    JUMPOUT(0x29C273430);
  }

  return result;
}

void CTGreenTeaLoggerImpl::~CTGreenTeaLoggerImpl(void **this)
{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

void GreenTeaLogUtility::canCreateLogHandle()
{
}

{
}

uint64_t *std::__tree<std::__value_type<char const*,ct_green_tea_logger_s *>,std::__map_value_compare<char const*,std::__value_type<char const*,ct_green_tea_logger_s *>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,ct_green_tea_logger_s *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void GreenTeaLogUtility::~GreenTeaLogUtility(GreenTeaLogUtility *this)
{
  GreenTeaLogUtilityInterface::~GreenTeaLogUtilityInterface(this);

  JUMPOUT(0x29C273430);
}

void std::__shared_ptr_emplace<GreenTeaLogUtility>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E52290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C273430);
}

void std::__shared_ptr_emplace<CTGreenTeaLoggerImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E522E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C273430);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}