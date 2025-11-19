void pci::system::info::getTH(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  os_unfair_lock_lock(this + 4);
  v6 = *&this[10]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = this + 10;
    do
    {
      v8 = *&v6[8]._os_unfair_lock_opaque;
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10]._os_unfair_lock_opaque;
    }

    while (v6);
    if (v7 != &this[10] && *&v7[8]._os_unfair_lock_opaque <= a2)
    {
      v12 = *&v7[10]._os_unfair_lock_opaque;
      v11 = *&v7[12]._os_unfair_lock_opaque;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v12;
      a3[1] = v11;
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void pci::transport::th::writeAsync(pci::transport::th *this, const unsigned __int8 *a2, int a3, void (*a4)(void *))
{
  v30 = *MEMORY[0x29EDCA608];
  v13 = *(this + 10);
  v8 = _TelephonyUtilDebugPrintVerbose();
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(this + 10);
    buf = 136316674;
    buf_4 = "th";
    v18 = 2048;
    v19 = this;
    v20 = 1024;
    v21 = v12;
    v22 = 2080;
    v23 = "writeAsync";
    v24 = 2048;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 2048;
    v29 = a4;
    _os_log_debug_impl(&dword_297F72000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, size %u, dDtor %p", &buf, 0x40u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_33;
  aBlock[4] = this;
  v10 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v10)
  {
    v11 = _Block_copy(v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = v11;
  pci::transport::th::writeInternal(this, a2, a3, a4, &v14);
}

void sub_297F72CFC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void (*TelephonyBasebandPCITransportWrite(uint64_t a1, const unsigned __int8 *a2, int a3, _DWORD *a4, uint64_t a5, int a6, void (*a7)(void *)))(void *)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportWrite();
  }

  if (a3 && a2 && a4)
  {
    *a4 = 0;
    pci::system::info::get(&v20);
    pci::system::info::getTH(v20, *(a1 + 80), buf);
    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
    }

    if (*buf)
    {
      if (*(*buf + 74) == 1)
      {
        pci::transport::th::writeAsync(*buf, a2, a3, a7);
      }

      pci::transport::th::write(*buf, a2, a3, a7, a6);
    }

    v14 = _TelephonyUtilDebugPrintError();
    v15 = pci::log::get(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(v20) = 134217984;
      *(&v20 + 4) = a1;
      _os_log_impl(&dword_297F72000, v15, OS_LOG_TYPE_INFO, "transport %p is not valid", &v20, 0xCu);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v12 = _TelephonyUtilDebugPrintError();
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_297F72000, v13, OS_LOG_TYPE_INFO, "invalid parameters", buf, 2u);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return a7;
}

void sub_297F72F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void pci::system::info::get(void *a1@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    pci::system::info::get();
  }

  if (pci::system::info::get(void)::sOnce != -1)
  {
    pci::system::info::get();
  }

  v3 = *(&xmmword_2A18A5AC0 + 1);
  *a1 = xmmword_2A18A5AC0;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void pci::transport::th::writeInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void **a5)
{
  v32 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v24 = *(a1 + 40);
  v10 = _TelephonyUtilDebugPrintVerbose();
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    *v25 = 136316674;
    *v26 = "th";
    *&v26[8] = 2048;
    *&v26[10] = a1;
    *&v26[18] = 1024;
    v27 = v23;
    v28 = 2080;
    *v29 = "writeInternal";
    *&v29[8] = 2048;
    *&v29[10] = a2;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = a3;
    WORD3(v30) = 2048;
    *(&v30 + 1) = a4;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, size %u, dDtor %p", v25, 0x40u);
    if (!a2)
    {
      goto LABEL_5;
    }
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  v12 = _TelephonyUtilDebugPrintBinaryVerbose();
  v13 = pci::log::get(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::writeInternal();
  }

LABEL_5:
  v30 = 0u;
  *object = 0u;
  *&v29[2] = 0u;
  if (*a5)
  {
    v14 = _Block_copy(*a5);
  }

  else
  {
    v14 = 0;
  }

  *v25 = *(a1 + 40);
  *v26 = 3;
  *&v26[4] = a4;
  *&v26[12] = a2;
  v27 = a3;
  if (v14)
  {
    v15 = _Block_copy(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *&v29[2];
  *&v29[2] = v15;
  if (v16)
  {
    _Block_release(v16);
  }

  v18 = *a1;
  v17 = *(a1 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = object[0];
  *(&v30 + 1) = v18;
  object[0] = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    dispatch_retain(*(a1 + 16));
  }

  v21 = object[1];
  object[1] = v20;
  if (v21)
  {
    dispatch_release(v21);
  }

  v22 = v30;
  *&v29[10] = 0;
  *&v30 = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  pci::transport::task::create();
}

void sub_297F73374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  pci::transport::task::parameters::~parameters(va);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void pci::transport::bh::ioCompletion(pci::transport::bh *this, void *a2, uint64_t a3, void *a4)
{
  if (!this)
  {
    pci::transport::bh::ioCompletion();
  }

  (*(this + 2))(this, a2, a3, 0);

  _Block_release(this);
}

void ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 56);
  os_unfair_lock_lock((v8 + 24));
  dispatch_assert_queue_V2(*(v8 + 16));
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) == 1)
  {
    ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke_cold_1();
  }

  *(v9 + 24) = 1;
  v21 = *(a1 + 64);
  v19 = *(v8 + 28);
  v10 = _TelephonyUtilDebugPrintVerbose();
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(v8 + 28);
    v18 = *(a1 + 64);
    *buf = 136316930;
    v24 = "bh";
    v25 = 2048;
    v26 = v8;
    v27 = 1024;
    v28 = v17;
    v29 = 2080;
    v30 = "generateCallback_block_invoke";
    v31 = 2080;
    v32 = v18;
    v33 = 1024;
    v34 = a2;
    v35 = 1024;
    v36 = a3;
    v37 = 1024;
    v38 = a4;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s complete 0x%x, size %u, cookie %u", buf, 0x42u);
  }

  if (((a2 == -536870168) & *(a1 + 88)) != 0)
  {
    a2 = 0;
  }

  if (a2)
  {
    v22 = *(a1 + 64);
    v20 = *(v8 + 28);
    v12 = _TelephonyUtilDebugPrintError();
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(v8 + 28);
      v15 = *(a1 + 64);
      *buf = 136316930;
      v24 = "bh";
      v25 = 2048;
      v26 = v8;
      v27 = 1024;
      v28 = v14;
      v29 = 2080;
      v30 = "generateCallback_block_invoke";
      v31 = 2080;
      v32 = v15;
      v33 = 1024;
      v34 = a2;
      v35 = 1024;
      v36 = a3;
      v37 = 1024;
      v38 = a4;
      _os_log_impl(&dword_297F72000, v13, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: %s failed, complete 0x%x, size %u, cookie %u", buf, 0x42u);
    }
  }

  std::list<void const*>::remove(v8 + 64, (*(*(a1 + 48) + 8) + 24));
  os_unfair_lock_unlock((v8 + 24));
  pci::transport::task::complete(*(a1 + 72), a2, a3, a4);
  v16 = *MEMORY[0x29EDCA608];
}

uint64_t pci::log::get(pci::log *this)
{
  if (pci::log::get(void)::once != -1)
  {
    pci::log::get();
  }

  return pci::log::get(void)::logger;
}

void sub_297F737A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

char *getTypeString(unsigned int a1)
{
  if (a1 >= 4)
  {
    getTypeString();
  }

  return (&off_29EE87638)[a1];
}

pci::transport::task *pci::transport::task::task(pci::transport::task *this, const pci::transport::task::parameters *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = *a2;
  v4 = *(a2 + 5);
  v3 = *(a2 + 6);
  *(this + 3) = *(a2 + 1);
  *(this + 4) = v4;
  *(this + 5) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 8);
  *(this + 6) = *(a2 + 7);
  *(this + 7) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 64) = *(a2 + 1) == 0;
  *(this + 9) = 0;
  *(this + 20) = *(a2 + 6);
  *(this + 11) = 0;
  v12 = *(this + 4);
  getTypeString(*(this + 5));
  v6 = _TelephonyUtilDebugPrintVerbose();
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(this + 4);
    TypeString = getTypeString(*(this + 5));
    *buf = 136316162;
    v14 = "task";
    v15 = 2048;
    v16 = this;
    v17 = 1024;
    v18 = v10;
    v19 = 2080;
    v20 = "task";
    v21 = 2080;
    v22 = TypeString;
    _os_log_debug_impl(&dword_297F72000, v7, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s: ", buf, 0x30u);
  }

  v8 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_297F73970(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::task::complete(pci::transport::task *this, int a2, unsigned int a3, int a4)
{
  v45 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(*(this + 6));
  v8 = *(this + 4);
  getTypeString(*(this + 5));
  v9 = _TelephonyUtilDebugPrintVerbose();
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(this + 4);
    TypeString = getTypeString(*(this + 5));
    *buf = 136316418;
    v34 = "task";
    v35 = 2048;
    v36 = this;
    v37 = 1024;
    v38 = v29;
    v39 = 2080;
    v40 = "complete";
    v41 = 2080;
    v42 = TypeString;
    v43 = 1024;
    v44 = a2;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s: status 0x%x", buf, 0x36u);
  }

  v11 = *(this + 11);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (v12)
  {
    v13 = -536870166;
  }

  else
  {
    v13 = a2;
  }

  v14 = *(this + 5);
  if (v14 >= 2)
  {
    if (v14 == 3)
    {
      v15 = (this + 72);
      (*(this + 3))(*(this + 9));
LABEL_21:
      *v15 = 0;
      goto LABEL_22;
    }

    if (v14 != 2)
    {
      pci::transport::task::complete();
    }

    if (!v13)
    {
      v16 = *(v11 + 8);
      if (!v16 || *(this + 64) != 1)
      {
        *(v11 + 8) = *(this + 9);
        goto LABEL_20;
      }

      if (*(this + 20) < a3)
      {
        pci::transport::task::complete();
      }

      memcpy(v16, *(this + 9), a3);
    }

    pci::transport::task::ioFree(this, *(this + 9));
LABEL_20:
    v15 = (this + 72);
    goto LABEL_21;
  }

LABEL_22:
  v17 = *(this + 11);
  if (v17)
  {
    v18 = *(this + 64);
    v19 = *(this + 5);
    *(v17 + 16) = a3;
    *(v17 + 64) = v13;
    *(v17 + 68) = a4;
    if ((v18 & 1) == 0 && (v13 || v19 == 3))
    {
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
    }

    pci::transport::bind::~bind(v17);
    MEMORY[0x29C27D350](v20, 0x10A0C40F1E767F4, v21, v22, v23, v24);
    *(this + 11) = 0;
  }

  else
  {
    v25 = *(this + 4);
    getTypeString(*(this + 5));
    v26 = _TelephonyUtilDebugPrint();
    v27 = pci::log::get(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(this + 4);
      v32 = getTypeString(*(this + 5));
      *buf = 136316418;
      v34 = "task";
      v35 = 2048;
      v36 = this;
      v37 = 1024;
      v38 = v31;
      v39 = 2080;
      v40 = "complete";
      v41 = 2080;
      v42 = v32;
      v43 = 1024;
      v44 = a2;
      _os_log_debug_impl(&dword_297F72000, v27, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s: poisoned completion, status 0x%x", buf, 0x36u);
    }
  }

  os_unfair_lock_unlock(*(this + 6));
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t std::list<void const*>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t std::list<void const*>::remove(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<void const*>::splice(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  std::__list_imp<void const*>::clear(v11);
  return v9;
}

void sub_297F73DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<void const*>::clear(va);
  _Unwind_Resume(a1);
}

void *std::__list_imp<void const*>::clear(void *result)
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

void pci::transport::task::init(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a1 + 48));
  v6 = *(a1 + 16);
  v4 = _TelephonyUtilDebugPrintVerbose();
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::task::init(a1, (a1 + 16));
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = a2[6];
  if (*(a2 + 9))
  {
    dispatch_retain(*(a2 + 9));
  }

  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, a1);
  operator new();
}

void sub_297F741A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pci::transport::bind::parameters::~parameters(va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<pci::transport::task>::shared_ptr[abi:ne200100]<pci::transport::task,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F74294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::transport::task>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<pci::system::info>::__enable_weak_this[abi:ne200100]<pci::system::info,pci::system::info,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

pci::transport::task **std::unique_ptr<pci::transport::task>::~unique_ptr[abi:ne200100](pci::transport::task **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::task::~task(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void *std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void pci::transport::bind::~bind(pci::transport::bind *this)
{
  v10 = *this;
  v2 = _TelephonyUtilDebugPrintVerbose();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bind::~bind(this);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(this + 16);
    if (v5 == -536870911)
    {
      __assert_rtn("~bind", "PCITransportTask.cpp", 47, "fStatus != kIOReturnInvalid");
    }

    (*(v4 + 16))(v4, v5, *(this + 1), *(this + 4), *(this + 17));
    v6 = *(this + 3);
    *(this + 3) = 0;
    if (v6)
    {
      _Block_release(v6);
    }
  }

  std::list<std::shared_ptr<pci::transport::task>>::remove(*(this + 7), this + 5);
  dispatch_group_leave(*(this + 4));
  v7 = *(this + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    _Block_release(v9);
  }
}

void ___ZN3pci9transport2th9readAsyncEv_block_invoke(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v58 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  v34 = *(v8 + 40);
  v9 = _TelephonyUtilDebugPrintVerbose();
  v10 = pci::log::get(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    v33 = *(v8 + 40);
    *buf = 136316674;
    *v47 = "th";
    *&v47[8] = 2048;
    *&v47[10] = v8;
    v48 = 1024;
    v49 = v33;
    v50 = 2080;
    v51 = "readAsync_block_invoke";
    v52 = 1024;
    v53 = a2;
    v54 = 2048;
    v55 = a3;
    v56 = 1024;
    v57 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_11;
  }

  if (*(v8 + 40) == 30)
  {
    v12 = pci::log::get(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 >= 0x10)
      {
        v13 = 16;
      }

      else
      {
        v13 = a4;
      }

      *buf = 68157954;
      *v47 = v13;
      *&v47[4] = 2096;
      *&v47[6] = a3;
      _os_log_impl(&dword_297F72000, v12, OS_LOG_TYPE_DEFAULT, "%.*P", buf, 0x12u);
    }
  }

  else
  {
    v14 = _TelephonyUtilDebugPrintBinaryVerbose();
    v15 = pci::log::get(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      pci::transport::th::writeInternal();
    }
  }

LABEL_11:
  v16 = *(v8 + 112);
  if (v16)
  {
    v17 = _Block_copy(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v8 + 136);
  if (v18)
  {
    v19 = _Block_copy(v18);
    v20 = a1;
  }

  else
  {
    v20 = a1;
    v19 = 0;
  }

  aBlock = v17;
  v21 = *(v8 + 48);
  if (v21)
  {
    dispatch_retain(*(v8 + 48));
  }

  v22 = 0;
  v23 = *(v8 + 75);
  v24 = 0;
  if (a3)
  {
    if (*(v8 + 75))
    {
      v24 = *(v8 + 80);
      v22 = *(v8 + 88);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3pci9transport2th9readAsyncEv_block_invoke_38;
  block[3] = &__block_descriptor_tmp_39;
  v25 = aBlock;
  if (aBlock)
  {
    v25 = _Block_copy(aBlock);
  }

  v38 = v25;
  v39 = a3;
  v43 = a2;
  v44 = a4;
  v45 = v23;
  if (v19)
  {
    v26 = _Block_copy(v19);
  }

  else
  {
    v26 = 0;
  }

  v40 = v26;
  v41 = v24;
  v42 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v21, block);
  if (!a2 && (*(v8 + 184) & 1) == 0)
  {
    v30 = *(v8 + 100);
    v31 = *(*(*(v20 + 32) + 8) + 40);
    if (v31)
    {
      v32 = _Block_copy(v31);
    }

    else
    {
      v32 = 0;
    }

    v36 = v32;
    pci::transport::th::readInternal(v8, 0, v30, 0, &v36);
  }

  v27 = *(*(v20 + 32) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = 0;
  if (v28)
  {
    _Block_release(v28);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v38)
  {
    _Block_release(v38);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v29 = *MEMORY[0x29EDCA608];
}

void sub_297F748D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *aBlock, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c46_ZTSN8dispatch5blockIU13block_pointerFviPvjEEE48c90_ZTSN8dispatch5blockIU13block_pointerFvPvjNSt3__110shared_ptrIN3pci9transport6ioPoolEEEEEE56c49_ZTSNSt3__110shared_ptrIN3pci9transport6ioPoolEEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[4] = v4;
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void pci::transport::th::readInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void **a5)
{
  v26 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v14 = *(a1 + 40);
  v10 = _TelephonyUtilDebugPrintVerbose();
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    *v16 = 136316674;
    v17 = "th";
    v18 = 2048;
    v19 = a1;
    v20 = 1024;
    v21 = v13;
    v22 = 2080;
    *v23 = "readInternal";
    *&v23[8] = 2048;
    *&v23[10] = a2;
    LOWORD(v24) = 1024;
    *(&v24 + 2) = a3;
    WORD3(v24) = 2048;
    *(&v24 + 1) = a4;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, size %u, dDtor %p", v16, 0x40u);
  }

  v24 = 0u;
  *object = 0u;
  *&v23[2] = 0u;
  v12 = *a5;
  if (*a5)
  {
    v12 = _Block_copy(v12);
  }

  aBlock = v12;
  pci::transport::th::setTaskParams(a1, v16, a2, a3, a4, 2, &aBlock, *(a1 + 75));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  pci::transport::task::create();
}

void sub_297F74CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  pci::transport::task::parameters::~parameters(va);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void pci::transport::th::setTaskParams(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void **a7, int a8)
{
  *a2 = *(a1 + 10);
  *(a2 + 4) = a6;
  *(a2 + 8) = a5;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  v11 = *a7;
  if (*a7)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 32);
  *(a2 + 32) = v11;
  if (v12)
  {
    _Block_release(v12);
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 64);
  *(a2 + 56) = v14;
  *(a2 + 64) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = a1[2];
  if (v16)
  {
    dispatch_retain(a1[2]);
  }

  v17 = *(a2 + 72);
  *(a2 + 72) = v16;
  if (v17)
  {
    dispatch_release(v17);
  }

  if (a8)
  {
    v18 = a1[10];
    v19 = a1[11];
    if (v19)
    {
      v20 = 0;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = 1;
LABEL_18:
  v21 = *(a2 + 48);
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if ((v20 & 1) == 0)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void pci::transport::bh::write(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v3, "write", 0, &aBlock);
}

void sub_297F75084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::generateCallback(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3802000000;
  v21[3] = __Block_byref_object_copy__38;
  v21[4] = __Block_byref_object_dispose__39;
  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(&v22, a1);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke;
  aBlock[3] = &unk_2A1E970D8;
  aBlock[4] = v21;
  aBlock[5] = v19;
  v14 = a4;
  aBlock[6] = &v15;
  aBlock[7] = a1;
  v11 = *a2;
  v10 = a2[1];
  aBlock[8] = a3;
  aBlock[9] = v11;
  aBlock[10] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  *a5 = v12;
  v16[3] = v12;
  os_unfair_lock_lock((a1 + 24));
  operator new();
}

void sub_297F752A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    _Block_release(v26);
  }

  pci::transport::bh::generateCallback((v27 + 80), &a22, &a26, (v28 - 120));
  _Unwind_Resume(a1);
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v16 = *(v7 + 40);
  v8 = _TelephonyUtilDebugPrintVerbose();
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(v7 + 40);
    *buf = 136316674;
    v23 = "th";
    v24 = 2048;
    v25 = v7;
    v26 = 1024;
    v27 = v15;
    v28 = 2080;
    v29 = "writeAsync_block_invoke";
    v30 = 1024;
    v31 = a2;
    v32 = 2048;
    v33 = a3;
    v34 = 1024;
    v35 = a4;
    _os_log_debug_impl(&dword_297F72000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
  }

  v10 = *(v7 + 120);
  if (v10)
  {
    v11 = _Block_copy(v10);
    v12 = *(v7 + 48);
    if (v12)
    {
      dispatch_retain(v12);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke_31;
    block[3] = &__block_descriptor_tmp_32;
    if (v11)
    {
      v13 = _Block_copy(v11);
    }

    else
    {
      v13 = 0;
    }

    aBlock = v13;
    v19 = a3;
    v20 = a2;
    v21 = a4;
    dispatch_async(v12, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v12)
    {
      dispatch_release(v12);
    }

    if (v11)
    {
      _Block_release(v11);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297F75744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void pci::transport::bind::bind(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  a1[4] = a2[4];
  v6 = *(a2 + 3);
  *(a1 + 3) = 0;
  *(a1 + 4) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 5);
  *(a1 + 5) = *(a2 + 4);
  *(a1 + 6) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7) = a3;
  *(a1 + 8) = -536870911;
  v11 = *a1;
  v8 = _TelephonyUtilDebugPrintVerbose();
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bind::bind(a1, v9);
  }

  dispatch_group_enter(*(a1 + 4));
  v10 = *(a1 + 7);
  std::list<std::shared_ptr<pci::transport::task>>::push_back();
}

void sub_297F75854(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = v1[3];
  if (v5)
  {
    _Block_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::bind::setCompletion(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

__n128 __Block_byref_object_copy__38(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t __copy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN3pci9transport4taskEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *pci::transport::task::ioAlloc(pci::transport::task *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    v3 = pci::transport::ioPool::allocate(v2);
  }

  else
  {
    v3 = malloc_type_malloc(*(this + 20), 0x9020F953uLL);
  }

  v4 = v3;
  v10 = *(this + 4);
  v5 = _TelephonyUtilDebugPrintVerbose();
  v6 = pci::log::get(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 4);
    *buf = 136316162;
    v12 = "task";
    v13 = 2048;
    v14 = this;
    v15 = 1024;
    v16 = v9;
    v17 = 2080;
    v18 = "ioAlloc";
    v19 = 2048;
    v20 = v4;
    _os_log_debug_impl(&dword_297F72000, v6, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %p", buf, 0x30u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void *__copy_helper_block_e8_32c46_ZTSN8dispatch5blockIU13block_pointerFviPvjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t std::list<std::shared_ptr<pci::transport::task>>::remove(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<void const*>::splice(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(v11);
  return v9;
}

void sub_297F75BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t pci::transport::ioPool::allocate(pci::transport::ioPool *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v13 = *(this + 6);
  v14 = *(this + 22);
  v11 = *(this + 19);
  v12 = (*(this + 1) - *this) >> 3;
  v2 = _TelephonyUtilDebugPrintVerbose();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 19);
    v8 = (*(this + 1) - *this) >> 3;
    v9 = *(this + 6);
    v10 = *(this + 22);
    *buf = 136316674;
    *&buf[4] = "ioPool";
    v16 = 2048;
    v17 = this;
    v18 = 1024;
    v19 = v7;
    v20 = 2080;
    v21 = "allocate";
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    _os_log_debug_impl(&dword_297F72000, v3, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: free:%zu active:%zu additional:%u", buf, 0x40u);
  }

  os_unfair_lock_lock(this + 16);
  *buf = 0;
  v4 = *(this + 1);
  if (*this != v4)
  {
    *buf = *(v4 - 8);
    *(this + 1) = v4 - 8;
LABEL_7:
    std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void * const&>(this + 3, buf);
    goto LABEL_8;
  }

  *buf = malloc_type_malloc(*(this + 18), 0x3D16A4F6uLL);
  if (*buf)
  {
    ++*(this + 22);
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock(this + 16);
  result = *buf;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void __destroy_helper_block_e8_32c46_ZTSN8dispatch5blockIU13block_pointerFviPvjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(uint64_t *a1)
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
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void pci::transport::task::~task(pci::transport::task *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v10 = *(this + 4);
  getTypeString(*(this + 5));
  v2 = _TelephonyUtilDebugPrintVerbose();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(this + 4);
    TypeString = getTypeString(*(this + 5));
    *buf = 136316162;
    v12 = "task";
    v13 = 2048;
    v14 = this;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = "~task";
    v19 = 2080;
    v20 = TypeString;
    _os_log_debug_impl(&dword_297F72000, v3, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s: ", buf, 0x30u);
  }

  if (*(this + 11))
  {
    __assert_rtn("~task", "PCITransportTask.cpp", 171, "!fBind");
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_297F75F94(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void __destroy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN3pci9transport4taskEEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void pci::transport::bh::read(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v4, "read", a3, &aBlock);
}

void sub_297F761F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

pci::transport::task *std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::task::~task(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

void __Block_byref_object_dispose__39(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN3pci9transport2th9readAsyncEv_block_invoke_38(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 80) == 1 && *(a1 + 40))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 76);
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v5 + 16))(v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_297F76334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::ioPool::release(pci::transport::ioPool *this, void *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = (*(this + 1) - *this) >> 3;
  v4 = *(this + 6);
  v5 = *(this + 19);
  v24 = *(this + 22);
  v25 = a2;
  v6 = _TelephonyUtilDebugPrintVerbose();
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(this + 19);
    v21 = (*(this + 1) - *this) >> 3;
    v22 = *(this + 6);
    v23 = *(this + 22);
    *buf = 136316674;
    v27 = "ioPool";
    v28 = 2048;
    v29 = this;
    v30 = 1024;
    v31 = v20;
    v32 = 2080;
    v33 = "release";
    v34 = 2048;
    v35 = v21;
    v36 = 2048;
    v37 = v22;
    v38 = 1024;
    v39 = v23;
    _os_log_debug_impl(&dword_297F72000, v7, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: free:%zu active:%zu additional:%u", buf, 0x40u);
  }

  os_unfair_lock_lock(this + 16);
  v8 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(this + 3, &v25);
  if (!v8)
  {
    pci::transport::ioPool::release();
  }

  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(this + 3, v8);
  v10 = *(this + 1);
  v9 = *(this + 2);
  if (v10 >= v9)
  {
    v12 = (v10 - *this) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *this;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(this, v15);
    }

    *(8 * v12) = v25;
    v11 = 8 * v12 + 8;
    v16 = *(this + 1) - *this;
    v17 = (8 * v12 - v16);
    memcpy(v17, *this, v16);
    v18 = *this;
    *this = v17;
    *(this + 1) = v11;
    *(this + 2) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v10 = v25;
    v11 = (v10 + 1);
  }

  *(this + 1) = v11;
  os_unfair_lock_unlock(this + 16);
  v19 = *MEMORY[0x29EDCA608];
}

void ___ZN3pci9transport2th4initEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, pci::transport::ioPool **a4)
{
  if (a2)
  {
    if (*a4)
    {
      pci::transport::ioPool::release(*a4, a2);
    }
  }
}

uint64_t std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void __destroy_helper_block_e8_32c46_ZTSN8dispatch5blockIU13block_pointerFviPvjEEE48c90_ZTSN8dispatch5blockIU13block_pointerFvPvjNSt3__110shared_ptrIN3pci9transport6ioPoolEEEEEE56c49_ZTSNSt3__110shared_ptrIN3pci9transport6ioPoolEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

pci::system::info *pci::system::info::info(pci::system::info *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v2 = dispatch_workloop_create("com.apple.WirelessIPC.baseband.pci_workloop");
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 3) = v2;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 12) = 0;
  v3 = _TelephonyUtilDebugPrint();
  v4 = pci::log::get(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::info(v4);
  }

  return this;
}

void sub_297F769C0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::destroy(v3, *(v1 + 88));
  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(v4, *(v1 + 64));
  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(v2, *(v1 + 40));
  v6 = *(v1 + 24);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void pci::system::info::~info(pci::system::info *this)
{
  v2 = _TelephonyUtilDebugPrint();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::info(v3);
  }

  std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(this + 32, *(this + 5));
  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void pci::system::info::insertTH(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 4);
  ++pci::system::info::insertTH(std::shared_ptr<pci::transport::th>)::unique;
  v3 = a2[1];
  v4 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__emplace_multi<std::pair<void const*,std::shared_ptr<pci::transport::th>>>();
}

void sub_297F76B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::system::info::eraseTH(pci::system::info *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (this + 40);
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == (this + 40) || v5[4] > a2)
  {
LABEL_9:
    pci::system::info::eraseTH();
  }

  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::erase(this + 4, v5);
  os_unfair_lock_unlock(this + 4);
  return 1;
}

uint64_t pci::system::info::insertBH(uint64_t a1, int a2, uint64_t *a3, unsigned int a4)
{
  v60 = *MEMORY[0x29EDCA608];
  v49 = a2;
  os_unfair_lock_lock((a1 + 16));
  v8 = _TelephonyUtilDebugPrintVerbose();
  v9 = pci::log::get(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  v11 = a2;
  if (v10)
  {
    *v57 = 136316162;
    *&v57[4] = "system";
    *&v57[12] = 2048;
    *&v57[14] = a1;
    *&v57[22] = 1024;
    LODWORD(v58) = a2;
    WORD2(v58) = 2080;
    *(&v58 + 6) = "insertBH";
    HIWORD(v58) = 1024;
    LODWORD(v59) = a2;
    _os_log_debug_impl(&dword_297F72000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %u", v57, 0x2Cu);
    v11 = v49;
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = a1 + 64;
  do
  {
    if (*(v12 + 32) >= v11)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < v11));
  }

  while (v12);
  if (v13 != a1 + 64 && v11 >= *(v13 + 32))
  {
    v24 = (a1 + 88);
    v23 = *(a1 + 88);
    if (!v23)
    {
      goto LABEL_25;
    }

    v25 = a1 + 88;
    do
    {
      if (*(v23 + 32) >= v11)
      {
        v25 = v23;
      }

      v23 = *(v23 + 8 * (*(v23 + 32) < v11));
    }

    while (v23);
    if (v25 != v24 && v11 >= *(v25 + 32))
    {
      v39 = _TelephonyUtilDebugPrintVerbose();
      v40 = pci::log::get(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *v57 = 136316162;
        *&v57[4] = "system";
        *&v57[12] = 2048;
        *&v57[14] = a1;
        *&v57[22] = 1024;
        LODWORD(v58) = a2;
        WORD2(v58) = 2080;
        *(&v58 + 6) = "insertBH";
        HIWORD(v58) = 1024;
        LODWORD(v59) = v49;
        _os_log_debug_impl(&dword_297F72000, v40, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: already pending for interface %d", v57, 0x2Cu);
      }

      os_unfair_lock_unlock((a1 + 16));
      v20 = 0;
    }

    else
    {
LABEL_25:
      v45 = 0;
      v46 = &v45;
      v47 = 0x2000000000;
      v48 = 1;
      *v57 = 0;
      *&v57[8] = v57;
      *&v57[16] = 0x3002000000;
      *&v58 = __Block_byref_object_copy_;
      *(&v58 + 1) = __Block_byref_object_dispose_;
      v59 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke;
      aBlock[3] = &unk_2A1E968C0;
      aBlock[4] = &v45;
      v43 = a2;
      v44 = v49;
      v27 = *a3;
      v26 = a3[1];
      aBlock[6] = a1;
      aBlock[7] = v27;
      v42 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      aBlock[5] = v57;
      v28 = _Block_copy(aBlock);
      v29 = v28;
      if (v28)
      {
        v30 = _Block_copy(v28);
      }

      else
      {
        v30 = 0;
      }

      *buf = &v49;
      v31 = std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 80, &v49);
      v32 = v31[5];
      v31[5] = v30;
      if (v32)
      {
        _Block_release(v32);
      }

      os_unfair_lock_unlock((a1 + 16));
      v33 = *&v57[8];
      if (a4 == -1)
      {
        v34 = -1;
      }

      else
      {
        v34 = dispatch_time(0, 1000000 * a4);
      }

      if (dispatch_semaphore_wait(*(v33 + 40), v34))
      {
        v35 = _TelephonyUtilDebugPrintError();
        v36 = pci::log::get(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "system";
          v51 = 2048;
          v52 = a1;
          v53 = 1024;
          v54 = a2;
          v55 = 2080;
          v56 = "insertBH";
          _os_log_impl(&dword_297F72000, v36, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: Semaphore wait timed out!\n", buf, 0x26u);
        }

        os_unfair_lock_lock((a1 + 16));
        if (v29)
        {
          v37 = *v24;
          if (*v24)
          {
            v38 = a1 + 88;
            do
            {
              if (*(v37 + 32) >= v49)
              {
                v38 = v37;
              }

              v37 = *(v37 + 8 * (*(v37 + 32) < v49));
            }

            while (v37);
            if (v38 != v24 && v49 >= *(v38 + 32))
            {
              v29[2](v29, 0);
              std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer((a1 + 80), v38);
              std::__destroy_at[abi:ne200100]<std::pair<int const,dispatch::block<void({block_pointer})(BOOL)>>,0>(v38 + 32);
              operator delete(v38);
            }
          }
        }

        os_unfair_lock_unlock((a1 + 16));
        dispatch_semaphore_wait(*(*&v57[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
      }

      v20 = *(v46 + 24);
      if (v42)
      {
        std::__shared_weak_count::__release_weak(v42);
      }

      _Block_object_dispose(v57, 8);
      if (v59)
      {
        dispatch_release(v59);
      }

      if (v29)
      {
        _Block_release(v29);
      }

      _Block_object_dispose(&v45, 8);
    }
  }

  else
  {
LABEL_10:
    v14 = _TelephonyUtilDebugPrintVerbose();
    v15 = pci::log::get(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v57 = 136316162;
      *&v57[4] = "system";
      *&v57[12] = 2048;
      *&v57[14] = a1;
      *&v57[22] = 1024;
      LODWORD(v58) = a2;
      WORD2(v58) = 2080;
      *(&v58 + 6) = "insertBH";
      HIWORD(v58) = 1024;
      LODWORD(v59) = v49;
      _os_log_debug_impl(&dword_297F72000, v15, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: add interface %d", v57, 0x2Cu);
    }

    *v57 = &v49;
    v16 = std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 56, &v49);
    v18 = *a3;
    v17 = a3[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = v16[6];
    v16[5] = v18;
    v16[6] = v17;
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    os_unfair_lock_unlock((a1 + 16));
    v20 = 1;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_297F77248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, char a24)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  _Block_object_dispose((v25 - 160), 8);
  v27 = *(v25 - 120);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

intptr_t ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  v14 = *(a1 + 72);
  v5 = _TelephonyUtilDebugPrintVerbose();
  v6 = pci::log::get(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 72);
    *buf = 136316162;
    *&buf[4] = "system";
    v16 = 2048;
    v17 = v4;
    v18 = 1024;
    v19 = v13;
    v20 = 2080;
    v21 = "insertBH_block_invoke";
    v22 = 1024;
    v23 = a2;
    _os_log_debug_impl(&dword_297F72000, v6, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: completion %u", buf, 0x2Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (a2)
  {
    *buf = a1 + 76;
    v7 = std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v4 + 56, (a1 + 76));
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    v10 = v7[6];
    v7[5] = v9;
    v7[6] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_56c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t pci::system::info::removeBH(pci::system::info *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = _TelephonyUtilDebugPrintVerbose();
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::removeBH(this, a2, v5);
  }

  v6 = *(this + 8);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = (this + 64);
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v7 = v6;
    }

    v6 = v6[*(v6 + 8) < a2];
  }

  while (v6);
  if (v7 == (this + 64) || *(v7 + 8) > a2)
  {
LABEL_10:
    pci::system::info::removeBH();
  }

  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::erase(this + 7, v7);
  v11 = *(this + 11);
  if (v11)
  {
    v12 = this + 88;
    do
    {
      if (*(v11 + 8) >= a2)
      {
        v12 = v11;
      }

      v11 = *&v11[8 * (*(v11 + 8) < a2)];
    }

    while (v11);
    if (v12 != this + 88 && *(v12 + 8) <= a2)
    {
      (*(*(v12 + 5) + 16))(*(v12 + 5), 1, v8, v9, v10);
      std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(this + 10, v12);
      std::__destroy_at[abi:ne200100]<std::pair<int const,dispatch::block<void({block_pointer})(BOOL)>>,0>((v12 + 32));
      operator delete(v12);
    }
  }

  os_unfair_lock_unlock(this + 4);
  return 1;
}

void std::shared_ptr<pci::system::info>::shared_ptr[abi:ne200100]<pci::system::info,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F776A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::system::info>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::system::info **std::unique_ptr<pci::system::info>::~unique_ptr[abi:ne200100](pci::system::info **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::system::info::~info(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

pci::system::info *std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::system::info::~info(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::__get_deleter(uint64_t a1, uint64_t a2)
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

void std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<int const,dispatch::block<void({block_pointer})(BOOL)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<int const,dispatch::block<void({block_pointer})(BOOL)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,dispatch::block<void({block_pointer})(BOOL)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<int const,dispatch::block<void({block_pointer})(BOOL)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t telephonytransport::TelephonyBasebandTransportFree(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportFree();
  }

  v1 = *(*telephonytransport::PCIClient::sharedInstance(a1) + 32);

  return v1();
}

uint64_t telephonytransport::TelephonyBasebandTransportWrite(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportWrite();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 64);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportRead(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportRead();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 48);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportSendImage(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportSendImage();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 72);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportReadRegister(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportReadRegister();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 56);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportUnblockRead(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportUnblockRead();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 80);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportFlushRead(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportFlushRead();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 88);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportIsValid(telephonytransport::PCIClient *a1)
{
  if (!a1)
  {
    telephonytransport::TelephonyBasebandTransportIsValid();
  }

  v2 = telephonytransport::PCIClient::sharedInstance(a1);
  v3 = *(a1 + 10);
  v4 = *(*v2 + 40);

  return v4();
}

uint64_t telephonytransport::TelephonyBasebandTransportCreate(uint64_t a1, unsigned int *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = _TelephonyUtilDebugPrintError();
    v6 = pci::log::get(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Oversteer: no tu transport object";
LABEL_9:
      _os_log_impl(&dword_297F72000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_37;
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (!pci::transport::th::validateParams(a2))
  {
    v8 = _TelephonyUtilDebugPrintError();
    v6 = pci::log::get(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "failed to validate Oversteer transport parameters";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    dispatch_retain(*(a2 + 1));
  }

  else
  {
    std::to_string(&v33, *a2);
    v10 = std::string::insert(&v33, 0, "Callback.", 9uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v36 = v10->__r_.__value_.__r.__words[2];
    *buf = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v36 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    v13 = dispatch_queue_attr_make_with_qos_class(0, a2[20], 0);
    v14 = *(a2 + 9);
    if (v14)
    {
      dispatch_retain(*(a2 + 9));
      v4 = dispatch_queue_create_with_target_V2(v12, v13, v14);
      dispatch_release(v14);
    }

    else
    {
      v4 = dispatch_queue_create(v12, v13);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v15 = *(a2 + 6);
  if (v15)
  {
    v15 = _Block_copy(v15);
  }

  *buf = &unk_2A1E96978;
  *&buf[8] = v15;
  v37 = buf;
  v16 = *(a2 + 2);
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v33.__r_.__value_.__r.__words[0] = &unk_2A1E96A08;
  v33.__r_.__value_.__l.__size_ = v16;
  v34 = &v33;
  v17 = telephonytransport::PCIClient::sharedInstance(v16);
  v18 = *a2;
  v19 = a2[8];
  v20 = a2[9];
  v21 = a2[10];
  v24 = a2 + 6;
  v22 = a2[6];
  v23 = v24[1];
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v9 = (*(*v17 + 24))(v17, v18, v19, v20, v21, v23, v22, &object, buf, &v33, a1 + 80);
  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    v25 = _TelephonyUtilDebugPrintVerbose();
    v26 = pci::log::get(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      telephonytransport::TelephonyBasebandTransportCreate(v26);
    }

    *(a1 + 48) = telephonytransport::TelephonyBasebandTransportFree;
    *a1 = telephonytransport::TelephonyBasebandTransportWrite;
    *(a1 + 8) = telephonytransport::TelephonyBasebandTransportRead;
    *(a1 + 32) = telephonytransport::TelephonyBasebandTransportSendImage;
    *(a1 + 40) = telephonytransport::TelephonyBasebandTransportReadRegister;
    *(a1 + 16) = telephonytransport::TelephonyBasebandTransportUnblockRead;
    *(a1 + 24) = telephonytransport::TelephonyBasebandTransportFlushRead;
    *(a1 + 56) = telephonytransport::TelephonyBasebandTransportIsValid;
  }

  else
  {
    v27 = _TelephonyUtilDebugPrintError();
    v28 = pci::log::get(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&dword_297F72000, v28, OS_LOG_TYPE_INFO, "failed to create Oversteer transport internal", v31, 2u);
    }
  }

  std::__function::__value_func<void ()(unsigned int,void *,void *)>::~__value_func[abi:ne200100](&v33);
  std::__function::__value_func<void ()(BOOL,unsigned char *,unsigned int)>::~__value_func[abi:ne200100](buf);
  if (v4)
  {
    dispatch_release(v4);
  }

LABEL_37:
  v29 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_297F78AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double TelephonyBasebandPCITransportInitParameters(uint64_t a1)
{
  if (a1)
  {
    return pci::transport::th::initParams(a1);
  }

  return result;
}

uint64_t TelephonyBasebandPCITransportCreate(uint64_t a1, unsigned int *a2)
{
  if (*a2 == 8 && (IsOversteerEnabled = TelephonyUtilIsOversteerEnabled(), IsOversteerEnabled) && (v5 = telephonytransport::PCIClient::sharedInstance(IsOversteerEnabled)) != 0 && (*(*v5 + 16))(v5))
  {

    return telephonytransport::TelephonyBasebandTransportCreate(a1, a2);
  }

  else
  {
    if (a1)
    {
      *(a1 + 80) = 0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      if (pci::transport::th::validateParams(a2))
      {
        pci::transport::th::create();
      }
    }

    else
    {
      v7 = _TelephonyUtilDebugPrintError();
      v8 = pci::log::get(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_297F72000, v8, OS_LOG_TYPE_INFO, "no tu transport object", buf, 2u);
      }
    }

    return 0;
  }
}

void sub_297F78D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL TelephonyBasebandPCITransportFree(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportFree();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v7);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  v2 = v7;
  if (v7)
  {
    pci::system::info::get(&buf);
    pci::system::info::eraseTH(buf, *(a1 + 80));
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }
  }

  else
  {
    v3 = _TelephonyUtilDebugPrintError();
    v4 = pci::log::get(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v4, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F78F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void (*TelephonyBasebandPCITransportRead(uint64_t a1, const unsigned __int8 *a2, unsigned int a3, _DWORD *a4, uint64_t a5, int a6, void (*a7)(void *)))(void *)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = a3;
  if (!a1)
  {
    TelephonyBasebandPCITransportRead();
  }

  if (a3 && a2 && a4)
  {
    *a4 = 0;
    pci::system::info::get(&v25);
    pci::system::info::getTH(v25, *(a1 + 80), buf);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }

    if (*buf)
    {
      if (*(*buf + 74) != 1)
      {
        pci::transport::th::read(*buf, a2, &v24, a7, a6);
      }

      v11 = _TelephonyUtilDebugPrintError();
      v12 = pci::log::get(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      LOWORD(v25) = 0;
      v13 = "client cannot issue read for async transport";
      v14 = v12;
      v15 = 2;
    }

    else
    {
      v18 = _TelephonyUtilDebugPrintError();
      v19 = pci::log::get(v18);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_18:
        if (a7)
        {
          a7(a2);
          a7 = 0;
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        goto LABEL_23;
      }

      LODWORD(v25) = 134217984;
      *(&v25 + 4) = a1;
      v13 = "transport %p is not valid";
      v14 = v19;
      v15 = 12;
    }

    _os_log_impl(&dword_297F72000, v14, OS_LOG_TYPE_INFO, v13, &v25, v15);
    goto LABEL_18;
  }

  v16 = _TelephonyUtilDebugPrintError();
  v17 = pci::log::get(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_297F72000, v17, OS_LOG_TYPE_INFO, "invalid parameters", buf, 2u);
  }

  if (a7)
  {
    a7(a2);
    a7 = 0;
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return a7;
}

void sub_297F791A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void (*TelephonyBasebandPCITransportSendImage(uint64_t a1, const unsigned __int8 *a2, int a3, _DWORD *a4, int a5, _DWORD *a6, void (*a7)(void *)))(void *)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (!a1)
  {
    TelephonyBasebandPCITransportSendImage();
  }

  if (a3 && a2 && a4 && a6)
  {
    *a4 = 0;
    *a6 = 0;
    pci::system::info::get(&v21);
    pci::system::info::getTH(v21, *(a1 + 80), buf);
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }

    if (*buf)
    {
      if (*(*buf + 74) == 1)
      {
        pci::transport::th::sendImageAsync(*buf, a2, a3, a7);
      }

      pci::transport::th::sendImage(*buf, a2, a3, &v20, a7, a5);
    }

    v14 = _TelephonyUtilDebugPrintError();
    v15 = pci::log::get(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(v21) = 134217984;
      *(&v21 + 4) = a1;
      _os_log_impl(&dword_297F72000, v15, OS_LOG_TYPE_INFO, "transport %p is not valid", &v21, 0xCu);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v12 = _TelephonyUtilDebugPrintError();
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_297F72000, v13, OS_LOG_TYPE_INFO, "invalid parameters", buf, 2u);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return a7;
}

void sub_297F79404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportReadRegister(uint64_t a1, int a2, const unsigned __int8 *a3, unsigned int a4, _DWORD *a5)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = a4;
  if (!a1)
  {
    TelephonyBasebandPCITransportReadRegister();
  }

  if (a4 && a3 && a5)
  {
    *a5 = 0;
    pci::system::info::get(&v17);
    pci::system::info::getTH(v17, *(a1 + 80), buf);
    if (*(&v17 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
    }

    if (*buf)
    {
      pci::transport::th::readRegister(*buf, a2, a3, &v16, -1);
    }

    v10 = _TelephonyUtilDebugPrintError();
    v11 = pci::log::get(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(v17) = 134217984;
      *(&v17 + 4) = a1;
      _os_log_impl(&dword_297F72000, v11, OS_LOG_TYPE_INFO, "transport %p is not valid", &v17, 0xCu);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    v8 = _TelephonyUtilDebugPrintError();
    v9 = pci::log::get(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_297F72000, v9, OS_LOG_TYPE_INFO, "invalid parameters", buf, 2u);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297F795F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportUnblockRead(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportUnblockRead();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v7);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v7)
  {
    v2 = pci::transport::th::unblockRead(v7);
  }

  else
  {
    v3 = _TelephonyUtilDebugPrintError();
    v4 = pci::log::get(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v4, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }

    v2 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_297F7973C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportFlushRead(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportFlushRead();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v7);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v7)
  {
    v2 = pci::transport::th::flushRead(v7);
  }

  else
  {
    v3 = _TelephonyUtilDebugPrintError();
    v4 = pci::log::get(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v4, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }

    v2 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_297F79884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL TelephonyBasebandPCITransportIsValid(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportIsValid();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v7);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  v2 = v7;
  if (!v7)
  {
    v3 = _TelephonyUtilDebugPrintError();
    v4 = pci::log::get(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v4, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F799C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportTimesync(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportTimesync_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v12);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v12)
  {
    pci::transport::th::timesyncAsync(v12, a2, a3, a4);
  }

  v8 = _TelephonyUtilDebugPrintError();
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_297F72000, v9, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297F79B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL TelephonyBasebandPCITransportRegisterTimeEvent(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportRegisterTimeEvent_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v11);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v11)
  {
    v6 = pci::transport::th::registerTimeEvent(v11, a2, a3);
  }

  else
  {
    v7 = _TelephonyUtilDebugPrintError();
    v8 = pci::log::get(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v8, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }

    v6 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_297F79C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL TelephonyBasebandPCITransportDeregisterTimeEvent(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportDeregisterTimeEvent_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v9);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v9)
  {
    v4 = pci::transport::th::deregisterTimeEvent(v9, a2);
  }

  else
  {
    v5 = _TelephonyUtilDebugPrintError();
    v6 = pci::log::get(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_297F72000, v6, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
    }

    v4 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_297F79DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportMapRegion(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportMapRegion_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v14);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v14)
  {
    pci::transport::th::mapRegionAsync(v14, a2, a3, a4, 0, 0, a5);
  }

  v10 = _TelephonyUtilDebugPrintError();
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_297F72000, v11, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297F79F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportMapRegionwithClientData(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportMapRegionwithClientData_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v18);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v18)
  {
    pci::transport::th::mapRegionAsync(v18, a2, a3, a4, a5, a6, a7);
  }

  v14 = _TelephonyUtilDebugPrintError();
  v15 = pci::log::get(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_297F72000, v15, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297F7A0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TelephonyBasebandPCITransportUnmapRegion(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    TelephonyBasebandPCITransportUnmapRegion_cold_1();
  }

  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, *(a1 + 80), &v10);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  if (v10)
  {
    pci::transport::th::unmapRegionAsync(v10, a2, a3);
  }

  v6 = _TelephonyUtilDebugPrintError();
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_297F72000, v7, OS_LOG_TYPE_INFO, "transport %p is not valid", &buf, 0xCu);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297F7A250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2A1E96978;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2A1E96978;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  JUMPOUT(0x29C27D350);
}

void *std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E96978;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::operator()(uint64_t a1, _BYTE *a2, uint64_t *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a2;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_0>,void ()(BOOL,unsigned char *,unsigned int)>::destroy[abi:ne200100](const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::__function::__value_func<void ()(BOOL,unsigned char *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::~__func(void *a1)
{
  *a1 = &unk_2A1E96A08;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::~__func(void *a1)
{
  *a1 = &unk_2A1E96A08;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  JUMPOUT(0x29C27D350);
}

void *std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E96A08;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1,std::allocator<telephonytransport::TelephonyBasebandTransportCreate(TelephonyUtilTransport_tag *,PCITransportParameters const*)::$_1>,void ()(unsigned int,void *,void *)>::destroy[abi:ne200100](const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned int,void *,void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

os_log_t ___ZN3pci3log3getEv_block_invoke()
{
  result = os_log_create("com.apple.telephony.ipc", "PCI");
  pci::log::get(void)::logger = result;
  return result;
}

BOOL pci::transport::kernel::isServicePresent(pci::transport::kernel *this, const char *a2)
{
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceMatching(this);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v5 != 0;
}

uint64_t pci::transport::kernel::probeVariant(pci::transport::kernel *this)
{
  if (pci::transport::kernel::probeVariant(void)::sOnce != -1)
  {
    pci::transport::kernel::probeVariant();
  }

  return pci::transport::kernel::probeVariant(void)::ret;
}

void ___ZN3pci9transport6kernel12probeVariantEv_block_invoke()
{
  v10 = *MEMORY[0x29EDCA608];
  v9[0] = xmmword_29EE86DD8;
  v9[1] = *&off_29EE86DE8;
  v9[2] = xmmword_29EE86DF8;
  std::map<char const*,pci::transport::kernel::variant>::map[abi:ne200100](&v7, v9, 3);
  v1 = v7;
  if (v7 == v8)
  {
LABEL_9:
    v5 = 0;
  }

  else
  {
    while (!pci::transport::kernel::isServicePresent(v1[4], v0))
    {
      v2 = v1[1];
      if (v2)
      {
        do
        {
          v3 = v2;
          v2 = *v2;
        }

        while (v2);
      }

      else
      {
        do
        {
          v3 = v1[2];
          v4 = *v3 == v1;
          v1 = v3;
        }

        while (!v4);
      }

      v1 = v3;
      if (v3 == v8)
      {
        goto LABEL_9;
      }
    }

    v5 = *(v1 + 10);
  }

  pci::transport::kernel::probeVariant(void)::ret = v5;
  std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v7, v8[0]);
  v6 = *MEMORY[0x29EDCA608];
}

const char *pci::transport::kernel::errorAsString(int a1)
{
  switch(a1)
  {
    case 0:
      return "unrecognized error code";
    case 2:
      return getACIPCErrorTypeString();
    case 1:
      return getABPErrorTypeString();
  }

  return "unsupported variant: daleipc";
}

uint64_t pci::transport::kernel::getTimesyncBufferSize(pci::transport::kernel *this, int a2)
{
  v3 = (*(*this + 176))(this);
  if (v3 <= 0x18)
  {
    v4 = 24;
  }

  else
  {
    v4 = v3;
  }

  return (v4 * a2);
}

unint64_t pci::transport::kernel::marshalTimesyncResults(pci::transport::kernel *this, char *a2, unsigned int a3)
{
  v6 = (*(*this + 176))(this);
  v7 = a3 / v6;
  if (v6 <= a3)
  {
    v8 = v6;
    v9 = 0;
    do
    {
      v10 = v7 + ~v9;
      (*(*this + 184))(&v13, this, &a2[v10 * v8]);
      v11 = &a2[24 * v10];
      *v11 = v13;
      *(v11 + 2) = v14;
      ++v9;
    }

    while (v9 < v7);
  }

  return v7;
}

uint64_t abpKernel::pciTransportInterfaceToABP(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      memcpy(__dst, &unk_29EE86E08, sizeof(__dst));
      std::map<PCITransportInterface,char const*>::map[abi:ne200100](&v8, __dst, 18);
      v7 = v9;
      abpKernel::pciTransportInterfaceToABP(PCITransportInterface)::sMap = v8;
      qword_2A18A5A58 = v9;
      qword_2A18A5A60 = v10;
      if (v10)
      {
        *(v9 + 16) = &qword_2A18A5A58;
        v8 = &v9;
        v9 = 0;
        v10 = 0;
        v7 = 0;
      }

      else
      {
        abpKernel::pciTransportInterfaceToABP(PCITransportInterface)::sMap = &qword_2A18A5A58;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v8, v7);
      a1 = v5;
    }
  }

  v1 = qword_2A18A5A58;
  if (!qword_2A18A5A58)
  {
    goto LABEL_9;
  }

  v2 = &qword_2A18A5A58;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 != &qword_2A18A5A58 && *(v2 + 8) <= a1)
  {
    result = v2[5];
  }

  else
  {
LABEL_9:
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t abpKernel::pciTransportRegisterToABP(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  {
    v6 = a1;
    a1 = v6;
    if (v7)
    {
      v12[0] = xmmword_297F91BA0;
      v12[1] = unk_297F91BB0;
      v12[2] = xmmword_297F91BC0;
      std::map<PCITransportRegister,unsigned int>::map[abi:ne200100](&v9, v12, 6);
      v8 = v10;
      abpKernel::pciTransportRegisterToABP(PCITransportRegister)::sMap = v9;
      qword_2A18A5A70 = v10;
      qword_2A18A5A78 = v11;
      if (v11)
      {
        *(v10 + 16) = &qword_2A18A5A70;
        v9 = &v10;
        v10 = 0;
        v11 = 0;
        v8 = 0;
      }

      else
      {
        abpKernel::pciTransportRegisterToABP(PCITransportRegister)::sMap = &qword_2A18A5A70;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v9, v8);
      a1 = v6;
    }
  }

  v1 = qword_2A18A5A70;
  if (qword_2A18A5A70)
  {
    v2 = &qword_2A18A5A70;
    do
    {
      if (*(v1 + 28) >= a1)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 28) < a1));
    }

    while (v1);
    if (v2 == &qword_2A18A5A70 || *(v2 + 7) > a1)
    {
      v3 = 0;
      v1 = 0;
    }

    else
    {
      v1 = *(v2 + 8) << 32;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1 | v3;
}

void *abpKernel::wrapNotificationBlock@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN9abpKernel21wrapNotificationBlockEU13block_pointerFvNSt3__14pairIN3pci9transport6kernel7variantEjEEjiE_block_invoke;
    aBlock[3] = &unk_29EE86F30;
    aBlock[4] = a1;
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t abpKernel::start(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!abpKernel::pciTransportInterfaceToABP(a2))
  {
    return 0;
  }

  abpKernel::wrapNotificationBlock(a6, &v10);
  v7 = v10;
  v8 = IOABPClass::start();
  if (v7)
  {
    _Block_release(v7);
  }

  return v8;
}

{
  if (!abpKernel::pciTransportInterfaceToABP(a2))
  {
    return 0;
  }

  abpKernel::wrapNotificationBlock(a6, &v10);
  v7 = v10;
  v8 = IOABPClass::start();
  if (v7)
  {
    _Block_release(v7);
  }

  return v8;
}

void sub_297F7AFD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_297F7B094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abpKernel::readRegister(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = abpKernel::pciTransportRegisterToABP(a2);
  if ((v7 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6D758](a1 + 8, HIDWORD(v7), a3, a4);
}

uint64_t abpKernel::abortChannelAsync(uint64_t a1, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    abpKernel::abortChannelAsync();
  }

  v3 = a2 != 1;
  v4 = a1 + 8;

  return MEMORY[0x2A1C6D780](v4, v3);
}

uint64_t abpKernel::startChannelAsync(uint64_t a1, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    abpKernel::startChannelAsync();
  }

  v3 = a2 != 1;
  v4 = a1 + 8;

  return MEMORY[0x2A1C6D790](v4, v3);
}

uint64_t abpKernel::PCITransportTimeDomainToABP(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  {
    v7 = a2;
    a2 = v7;
    if (v8)
    {
      v13 = 1;
      v14 = 1;
      v15 = 2;
      v16 = 2;
      std::map<PCITransportTimeDomain,unsigned char>::map[abi:ne200100](&v10, &v13, 2);
      v9 = v11;
      abpKernel::PCITransportTimeDomainToABP(PCITransportTimeDomain)::sMap = v10;
      qword_2A13A5D58 = v11;
      qword_2A13A5D60 = v12;
      if (v12)
      {
        *(v11 + 16) = &qword_2A13A5D58;
        v10 = &v11;
        v11 = 0;
        v12 = 0;
        v9 = 0;
      }

      else
      {
        abpKernel::PCITransportTimeDomainToABP(PCITransportTimeDomain)::sMap = &qword_2A13A5D58;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v10, v9);
      a2 = v7;
    }
  }

  v2 = qword_2A13A5D58;
  if (qword_2A13A5D58)
  {
    v3 = &qword_2A13A5D58;
    do
    {
      if (*(v2 + 28) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < a2));
    }

    while (v2);
    if (v3 == &qword_2A13A5D58 || *(v3 + 7) > a2)
    {
      v4 = 0;
      LODWORD(v2) = 0;
    }

    else
    {
      LODWORD(v2) = *(v3 + 32);
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4 | (v2 << 8);
}

uint64_t abpKernel::timesyncAsync(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v7 = 3758097090;
  v8 = (32 * a3);
  if (v8 > a5)
  {
    return 3758097115;
  }

  v13 = abpKernel::PCITransportTimeDomainToABP(a1, a2);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  return MEMORY[0x2A1C6D760](a1 + 8, HIBYTE(v13), a4, v8, a6, a7);
}

uint64_t abpKernel::registerTimeEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((abpKernel::PCITransportTimeDomainToABP(a1, a2) & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6D788](a1 + 8, a2, a3, a4);
}

uint64_t abpKernel::deregisterTimeEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((abpKernel::PCITransportTimeDomainToABP(a1, a2) & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6D798](a1 + 8, a2, a3, a4);
}

void abpKernel::marshalTimesyncMeasurement(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 4) - v3;
  *a2 = *a1;
  *(a2 + 4) = v4;
  v5 = a1[3];
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
}

void *abpKernelControl::wrapControlEventBlock@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN16abpKernelControl21wrapControlEventBlockEU13block_pointerFvNSt3__14pairIN3pci9transport6kernel7variantEjEEPvS7_E_block_invoke;
    aBlock[3] = &unk_29EE86F58;
    aBlock[4] = a1;
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t abpKernelControl::registerEventNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  abpKernelControl::wrapControlEventBlock(a3, &v6);
  v3 = v6;
  v4 = IOABPControlClass::registerEventNotification();
  if (v3)
  {
    _Block_release(v3);
  }

  return v4;
}

{
  abpKernelControl::wrapControlEventBlock(a3, &v6);
  v3 = v6;
  v4 = IOABPControlClass::registerEventNotification();
  if (v3)
  {
    _Block_release(v3);
  }

  return v4;
}

void sub_297F7B5F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_297F7B67C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void acipcKernel::acipcKernel(acipcKernel *this)
{
  *this = &unk_2A1E96AD8;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 8) = 0u;
  IOACIPCClass::IOACIPCClass((this + 8));
  *v2 = MEMORY[0x29EDC9190] + 16;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = -1;
}

uint64_t acipcKernel::pciTransportInterfaceToACIPC(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      v11[9] = unk_29EE87008;
      v11[10] = xmmword_29EE87018;
      v11[11] = unk_29EE87028;
      v11[12] = xmmword_29EE87038;
      v11[7] = unk_29EE86FE8;
      v11[8] = xmmword_29EE86FF8;
      v11[2] = xmmword_29EE86F98;
      v11[3] = unk_29EE86FA8;
      v11[5] = unk_29EE86FC8;
      v11[6] = xmmword_29EE86FD8;
      v11[4] = xmmword_29EE86FB8;
      v11[0] = xmmword_29EE86F78;
      v11[1] = unk_29EE86F88;
      std::map<PCITransportInterface,__CFString const*>::map[abi:ne200100](&v8, v11, 13);
      v7 = v9;
      acipcKernel::pciTransportInterfaceToACIPC(PCITransportInterface)::sMap = v8;
      qword_2A18A5A88 = v9;
      qword_2A18A5A90 = v10;
      if (v10)
      {
        *(v9 + 16) = &qword_2A18A5A88;
        v8 = &v9;
        v9 = 0;
        v10 = 0;
        v7 = 0;
      }

      else
      {
        acipcKernel::pciTransportInterfaceToACIPC(PCITransportInterface)::sMap = &qword_2A18A5A88;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v8, v7);
      a1 = v5;
    }
  }

  v1 = qword_2A18A5A88;
  if (!qword_2A18A5A88)
  {
    goto LABEL_9;
  }

  v2 = &qword_2A18A5A88;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 != &qword_2A18A5A88 && *(v2 + 8) <= a1)
  {
    result = v2[5];
  }

  else
  {
LABEL_9:
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t acipcKernel::pciTransportRegisterToACIPC(int a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  {
    v6 = a1;
    a1 = v6;
    if (v7)
    {
      v12[0] = 5;
      std::map<PCITransportRegister,unsigned int>::map[abi:ne200100](&v9, v12, 1);
      v8 = v10;
      acipcKernel::pciTransportRegisterToACIPC(PCITransportRegister)::sMap = v9;
      qword_2A18A5A30 = v10;
      qword_2A18A5A38 = v11;
      if (v11)
      {
        *(v10 + 16) = &qword_2A18A5A30;
        v9 = &v10;
        v10 = 0;
        v11 = 0;
        v8 = 0;
      }

      else
      {
        acipcKernel::pciTransportRegisterToACIPC(PCITransportRegister)::sMap = &qword_2A18A5A30;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v9, v8);
      a1 = v6;
    }
  }

  v1 = qword_2A18A5A30;
  if (qword_2A18A5A30)
  {
    v2 = &qword_2A18A5A30;
    do
    {
      if (*(v1 + 28) >= a1)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 28) < a1));
    }

    while (v1);
    if (v2 == &qword_2A18A5A30 || *(v2 + 7) > a1)
    {
      v3 = 0;
      v1 = 0;
    }

    else
    {
      v1 = *(v2 + 8) << 32;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1 | v3;
}

uint64_t acipcKernel::PCITransportTimeDomainToACIPC(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  {
    v6 = a1;
    a1 = v6;
    if (v7)
    {
      v12[0] = xmmword_297F91BD0;
      v12[1] = unk_297F91BE0;
      v13 = 0x300000005;
      std::map<PCITransportTimeDomain,unsigned char>::map[abi:ne200100](&v9, v12, 5);
      v8 = v10;
      acipcKernel::PCITransportTimeDomainToACIPC(PCITransportTimeDomain)::sMap = v9;
      qword_2A18A5A18 = v10;
      qword_2A18A5A20 = v11;
      if (v11)
      {
        *(v10 + 16) = &qword_2A18A5A18;
        v9 = &v10;
        v10 = 0;
        v11 = 0;
        v8 = 0;
      }

      else
      {
        acipcKernel::PCITransportTimeDomainToACIPC(PCITransportTimeDomain)::sMap = &qword_2A18A5A18;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v9, v8);
      a1 = v6;
    }
  }

  v1 = qword_2A18A5A18;
  if (qword_2A18A5A18)
  {
    v2 = &qword_2A18A5A18;
    do
    {
      if (*(v1 + 28) >= a1)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 28) < a1));
    }

    while (v1);
    if (v2 == &qword_2A18A5A18 || *(v2 + 7) > a1)
    {
      v3 = 0;
      LODWORD(v1) = 0;
    }

    else
    {
      LODWORD(v1) = *(v2 + 32);
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3 | (v1 << 8);
}

uint64_t acipcKernel::pciTransportMemRegionToACIPC(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  {
    v6 = a1;
    a1 = v6;
    if (v7)
    {
      v12[0] = xmmword_297F91BF8;
      v12[1] = unk_297F91C08;
      std::map<PCITransportMemRegion,unsigned short>::map[abi:ne200100](&v9, v12, 4);
      v8 = v10;
      acipcKernel::pciTransportMemRegionToACIPC(PCITransportMemRegion)::sMap = v9;
      qword_2A13A5D78 = v10;
      qword_2A13A5D80 = v11;
      if (v11)
      {
        *(v10 + 16) = &qword_2A13A5D78;
        v9 = &v10;
        v10 = 0;
        v11 = 0;
        v8 = 0;
      }

      else
      {
        acipcKernel::pciTransportMemRegionToACIPC(PCITransportMemRegion)::sMap = &qword_2A13A5D78;
      }

      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v9, v8);
      a1 = v6;
    }
  }

  v1 = qword_2A13A5D78;
  if (qword_2A13A5D78)
  {
    v2 = &qword_2A13A5D78;
    do
    {
      if (*(v1 + 28) >= a1)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * (*(v1 + 28) < a1));
    }

    while (v1);
    if (v2 == &qword_2A13A5D78 || *(v2 + 7) > a1)
    {
      v3 = 0;
      LODWORD(v1) = 0;
    }

    else
    {
      LODWORD(v1) = *(v2 + 16) << 16;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1 | v3;
}

void acipcKernel::getMatchingDictionary(int a1@<W1>, void *a2@<X8>)
{
  v3 = acipcKernel::pciTransportInterfaceToACIPC(a1);
  if (v3 && (v4 = v3, v5 = IOServiceMatching("IOAppleConvergedIPCInterface"), (cf = v5) != 0))
  {
    v6 = v5;
    CFDictionarySetValue(v5, @"ACIPCInterfaceProtocol", v4);
    CFDictionarySetValue(v6, @"ACIPCInterfaceProviderDevice", @"cellular");
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_297F7BE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
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

void *acipcKernel::wrapNotificationBlock@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN11acipcKernel21wrapNotificationBlockEU13block_pointerFvNSt3__14pairIN3pci9transport6kernel7variantEjEEjiE_block_invoke;
    aBlock[3] = &unk_29EE87050;
    aBlock[4] = a1;
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t acipcKernel::start(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  acipcKernel::getMatchingDictionary(a2, &cf);
  if (!cf)
  {
    return 0;
  }

  v12 = a3;
  ctu::cf::CFSharedRef<__CFRunLoop>::operator=((a1 + 200), &v12);
  acipcKernel::wrapNotificationBlock(a6, &v12);
  v9 = v12;
  v10 = IOACIPCClass::start();
  if (v9)
  {
    _Block_release(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_297F7BFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  if (v10)
  {
    _Block_release(v10);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFRunLoop>::operator=(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
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

uint64_t acipcKernel::start(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  acipcKernel::getMatchingDictionary(a2, &cf);
  if (!cf)
  {
    return 0;
  }

  if (a3)
  {
    dispatch_retain(a3);
  }

  v9 = *(a1 + 208);
  *(a1 + 208) = a3;
  if (v9)
  {
    dispatch_release(v9);
  }

  acipcKernel::wrapNotificationBlock(a6, &v13);
  v10 = v13;
  v11 = IOACIPCClass::start();
  if (v10)
  {
    _Block_release(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_297F7C158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  if (v10)
  {
    _Block_release(v10);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void acipcKernel::findRings(acipcKernel *this)
{
  *(this + 27) = -1;
  TransferRingInfo = IOACIPCClass::getTransferRingInfo((this + 8));
  v19 = TransferRingInfo;
  if (TransferRingInfo)
  {
    v3 = TransferRingInfo;
    Count = CFArrayGetCount(TransferRingInfo);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        if (*(this + 54) != -1 && *(this + 55) != -1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        v7 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          break;
        }

        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 != CFDictionaryGetTypeID())
        {
          break;
        }

        v18 = 0;
        Value = CFDictionaryGetValue(v7, @"AppleConvergedIPCRingIndex");
        v10 = Value;
        if (!Value)
        {
          break;
        }

        v11 = CFGetTypeID(Value);
        if (v11 != CFNumberGetTypeID())
        {
          break;
        }

        if ((ctu::cf::assign(&v18, v10, v12) & 1) == 0)
        {
          break;
        }

        v17 = 0;
        v13 = CFDictionaryGetValue(v7, @"AppleConvergedIPCRingDirection");
        v14 = v13;
        if (!v13)
        {
          break;
        }

        v15 = CFGetTypeID(v13);
        if (v15 != CFNumberGetTypeID() || (ctu::cf::assign(&v17, v14, v16) & 1) == 0)
        {
          break;
        }

        if (v17 == 1)
        {
          if (*(this + 55) == -1)
          {
            *(this + 55) = v18;
          }
        }

        else if (v17 == 2 && *(this + 54) == -1)
        {
          *(this + 54) = v18;
        }
      }
    }

    CFRelease(v3);
  }
}

void sub_297F7C320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

double acipcKernel::clearRings(acipcKernel *this)
{
  result = NAN;
  *(this + 27) = -1;
  return result;
}

double acipcKernel::open(acipcKernel *this)
{
  acipcKernel::findRings(this);
  if (IOACIPCClass::open((this + 8)))
  {
    result = NAN;
    *(this + 27) = -1;
  }

  return result;
}

uint64_t acipcKernel::write(acipcKernel *this, const void *a2)
{
  if (*(this + 55) == -1)
  {
    return 3758097101;
  }

  else
  {
    return IOACIPCClass::io();
  }
}

uint64_t acipcKernel::writeAsync(acipcKernel *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  if (*(this + 55) == -1)
  {
    return 3758097101;
  }

  else
  {
    return MEMORY[0x2A1C6D978](this + 8);
  }
}

uint64_t acipcKernel::read(acipcKernel *this, void *a2, unsigned int *a3)
{
  if (*(this + 54) == -1)
  {
    return 3758097101;
  }

  else
  {
    return IOACIPCClass::io();
  }
}

uint64_t acipcKernel::readAsync(acipcKernel *this, void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  if (*(this + 54) == -1)
  {
    return 3758097101;
  }

  else
  {
    return MEMORY[0x2A1C6D978](this + 8);
  }
}

uint64_t acipcKernel::readRegister(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = acipcKernel::pciTransportRegisterToACIPC(a2);
  if ((v7 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6D8F8](a1 + 8, HIDWORD(v7), a3, a4);
}

uint64_t acipcKernel::abortChannelAsync(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 208);
  if (!v5 && !*(a1 + 200))
  {
    return 3758097101;
  }

  v6 = 220;
  if (a2 == 1)
  {
    v6 = 216;
  }

  if (*(a1 + v6) == -1)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = ___ZN11acipcKernel17abortChannelAsyncE21PCITransportDirectionPFvPviES1__block_invoke;
    v8[3] = &__block_descriptor_tmp_90;
    v8[4] = a3;
    v8[5] = a4;
    if (v5)
    {
      if (*(a1 + 200))
      {
        acipcKernel::abortChannelAsync();
      }

      dispatch_async(v5, v8);
    }

    result = *(a1 + 200);
    if (result)
    {
      if (*(a1 + 208))
      {
        acipcKernel::abortChannelAsync();
      }

      CFRunLoopPerformBlock(result, *MEMORY[0x29EDB8FC0], v8);
      CFRunLoopWakeUp(*(a1 + 200));
      return 0;
    }
  }

  else
  {

    return MEMORY[0x2A1C6D920](a1 + 8);
  }

  return result;
}

__CFRunLoop *acipcKernel::startChannelAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 208);
  if (!v5 && !*(a1 + 200))
  {
    return 3758097101;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN11acipcKernel17startChannelAsyncE21PCITransportDirectionPFvPviES1__block_invoke;
  v7[3] = &__block_descriptor_tmp_93;
  v7[4] = a3;
  v7[5] = a4;
  if (v5)
  {
    if (*(a1 + 200))
    {
      acipcKernel::startChannelAsync();
    }

    dispatch_async(v5, v7);
  }

  result = *(a1 + 200);
  if (result)
  {
    if (*(a1 + 208))
    {
      acipcKernel::startChannelAsync();
    }

    CFRunLoopPerformBlock(result, *MEMORY[0x29EDB8FC0], v7);
    CFRunLoopWakeUp(*(a1 + 200));
    return 0;
  }

  return result;
}

uint64_t acipcKernel::timesyncAsync(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = acipcKernel::PCITransportTimeDomainToACIPC(a2);
  if ((v13 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6DAA0](a1 + 8, HIBYTE(v13), a3, a4, a5, a6, a7);
}

uint64_t acipcKernel::registerTimeEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = acipcKernel::PCITransportTimeDomainToACIPC(a2);
  if ((v7 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6DAA8](a1 + 8, HIBYTE(v7), a3, a4);
}

uint64_t acipcKernel::deregisterTimeEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = acipcKernel::PCITransportTimeDomainToACIPC(a2);
  if ((v7 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6DAB0](a1 + 8, HIBYTE(v7), a3, a4);
}

__n128 acipcKernel::marshalTimesyncMeasurement@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t acipcKernel::mapRegionAsync(uint64_t a1, int a2, const void *a3, uint64_t a4, const void *a5, unsigned int a6, void (*a7)(void *, int), void *a8)
{
  v15 = acipcKernel::pciTransportMemRegionToACIPC(a2);
  if (v15)
  {
    return IOACIPCClass::mapMemoryAsync((a1 + 8), HIWORD(v15), a3, a4, 0, 0, a5, a6, a7, a8);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t acipcKernel::unmapRegionAsync(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = acipcKernel::pciTransportMemRegionToACIPC(a2);
  if ((v7 & 1) == 0)
  {
    return 3758097090;
  }

  return MEMORY[0x2A1C6D910](a1 + 8, HIWORD(v7), a3, a4);
}

void *acipcKernelControl::wrapControlEventBlock@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN18acipcKernelControl21wrapControlEventBlockEU13block_pointerFvNSt3__14pairIN3pci9transport6kernel7variantEjEEPvS7_E_block_invoke;
    aBlock[3] = &unk_29EE870B8;
    aBlock[4] = a1;
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void acipcKernelControl::getMatchingDictionary(void *a1@<X8>)
{
  v3 = IOServiceMatching("IOAppleConvergedIPCControl");
  cf = v3;
  if (v3)
  {
    CFDictionarySetValue(v3, @"ACIPCControlVariant", @"cellular");
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a1, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_297F7CABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t acipcKernelControl::start(acipcKernelControl *this)
{
  acipcKernelControl::getMatchingDictionary(&cf);
  if (!cf)
  {
    return 0;
  }

  v2 = IOACIPCControlClass::start((this + 8), cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void sub_297F7CB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t acipcKernelControl::registerEventNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  acipcKernelControl::wrapControlEventBlock(a3, &v6);
  v3 = v6;
  v4 = IOACIPCControlClass::registerEventNotification();
  if (v3)
  {
    _Block_release(v3);
  }

  return v4;
}

{
  acipcKernelControl::wrapControlEventBlock(a3, &v6);
  v3 = v6;
  v4 = IOACIPCControlClass::registerEventNotification();
  if (v3)
  {
    _Block_release(v3);
  }

  return v4;
}

void sub_297F7CBB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_297F7CC38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::kernel::create(void *a1@<X8>)
{
  if (pci::transport::kernel::probeVariant(void)::sOnce != -1)
  {
    pci::transport::kernel::probeVariant();
  }

  if (pci::transport::kernel::probeVariant(void)::ret > 1)
  {
    if (pci::transport::kernel::probeVariant(void)::ret == 2)
    {
      operator new();
    }
  }

  else if (pci::transport::kernel::probeVariant(void)::ret)
  {
    operator new();
  }

  *a1 = 0;
}

void pci::transport::kernelControl::create(void *a1@<X8>)
{
  if (pci::transport::kernel::probeVariant(void)::sOnce != -1)
  {
    pci::transport::kernel::probeVariant();
  }

  if (pci::transport::kernel::probeVariant(void)::ret == 2)
  {
    operator new();
  }

  if (pci::transport::kernel::probeVariant(void)::ret == 1)
  {
    operator new();
  }

  *a1 = 0;
}

void pci::transport::kernelTrace::create(void *a1@<X8>)
{
  if (pci::transport::kernel::probeVariant(void)::sOnce != -1)
  {
    pci::transport::kernel::probeVariant();
  }

  if (pci::transport::kernel::probeVariant(void)::ret == 2)
  {
    operator new();
  }

  if (pci::transport::kernel::probeVariant(void)::ret == 1)
  {
    operator new();
  }

  *a1 = 0;
}

void abpKernel::~abpKernel(abpKernel *this)
{
  *this = &unk_2A1E96BA8;
  MEMORY[0x29C27CC20](this + 8);
}

{
  *this = &unk_2A1E96BA8;
  MEMORY[0x29C27CC20](this + 8);

  JUMPOUT(0x29C27D350);
}

void abpKernelControl::~abpKernelControl(abpKernelControl *this)
{
  *this = &unk_2A1E96CA0;
  MEMORY[0x29C27CF20](this + 8);
}

{
  *this = &unk_2A1E96CA0;
  MEMORY[0x29C27CF20](this + 8);

  JUMPOUT(0x29C27D350);
}

void acipcKernel::~acipcKernel(acipcKernel *this)
{
  acipcKernel::~acipcKernel(this);

  JUMPOUT(0x29C27D350);
}

{
  *this = &unk_2A1E96AD8;
  v2 = *(this + 26);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    CFRelease(v3);
  }

  MEMORY[0x29C27CD50](this + 8);
}

void acipcKernelControl::~acipcKernelControl(acipcKernelControl *this)
{
  *this = &unk_2A1E96D68;
  MEMORY[0x29C27D120](this + 8);
}

{
  *this = &unk_2A1E96D68;
  MEMORY[0x29C27D120](this + 8);

  JUMPOUT(0x29C27D350);
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::map<char const*,pci::transport::kernel::variant>::map[abi:ne200100](void *a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,pci::transport::kernel::variant> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,pci::transport::kernel::variant> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::__find_equal<char const*>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::__find_equal<char const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::map<PCITransportInterface,char const*>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,char const*> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,char const*> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__find_equal<PCITransportInterface>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__find_equal<PCITransportInterface>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::map<PCITransportRegister,unsigned int>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__emplace_hint_unique_key_args<PCITransportRegister,std::pair<PCITransportRegister const,unsigned int> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__emplace_hint_unique_key_args<PCITransportRegister,std::pair<PCITransportRegister const,unsigned int> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__find_equal<PCITransportRegister>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__find_equal<PCITransportRegister>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::map<PCITransportTimeDomain,unsigned char>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportTimeDomain,unsigned char>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,unsigned char>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,unsigned char>>>::__emplace_hint_unique_key_args<PCITransportTimeDomain,std::pair<PCITransportTimeDomain const,unsigned char> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportTimeDomain,unsigned char>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,unsigned char>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,unsigned char>>>::__emplace_hint_unique_key_args<PCITransportTimeDomain,std::pair<PCITransportTimeDomain const,unsigned char> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__find_equal<PCITransportRegister>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::map<PCITransportInterface,__CFString const*>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportInterface,__CFString const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,__CFString const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,__CFString const*>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,__CFString const*> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportInterface,__CFString const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,__CFString const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,__CFString const*>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,__CFString const*> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__find_equal<PCITransportInterface>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::map<PCITransportMemRegion,unsigned short>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportMemRegion,unsigned short>,std::__map_value_compare<PCITransportMemRegion,std::__value_type<PCITransportMemRegion,unsigned short>,std::less<PCITransportMemRegion>,true>,std::allocator<std::__value_type<PCITransportMemRegion,unsigned short>>>::__emplace_hint_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,unsigned short> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportMemRegion,unsigned short>,std::__map_value_compare<PCITransportMemRegion,std::__value_type<PCITransportMemRegion,unsigned short>,std::less<PCITransportMemRegion>,true>,std::allocator<std::__value_type<PCITransportMemRegion,unsigned short>>>::__emplace_hint_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,unsigned short> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__find_equal<PCITransportRegister>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void abpKernelTrace::~abpKernelTrace(abpKernelTrace *this)
{
  *this = &unk_2A1E96E08;
  MEMORY[0x29C27CE40](this + 8);
}

{
  *this = &unk_2A1E96E08;
  MEMORY[0x29C27CE40](this + 8);

  JUMPOUT(0x29C27D350);
}

uint64_t abpKernelTrace::getTraceCodeCount(abpKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOABPTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t abpKernelTrace::getTraceCodeSize(abpKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOABPTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t abpKernelTrace::getMinBufferSize(abpKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOABPTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t abpKernelTrace::getMaxBufferSize(abpKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOABPTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t abpKernelTrace::getMaxBuffersInFlight(abpKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOABPTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t abpKernelTrace::getTraceCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  memset(__str, 0, sizeof(__str));
  v14 = 0u;
  TraceCode = IOABPTraceClass::getTraceCode();
  if (TraceCode)
  {
    *(a3 + 48) = v15;
    std::string::operator=(a3, __str);
    std::string::operator=((a3 + 24), &__str[24]);
    v5 = v16;
    v6 = v17;
    while (v5 != v6)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v11.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v11.__r_.__value_.__l.__data_ = v7;
      }

      v12 = *(v5 + 6);
      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, &v11);
      v10 = v12;
      std::vector<pci::transport::kernelTrace::traceCodeAttachment>::push_back[abi:ne200100](a3 + 56, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v5 += 2;
    }
  }

  v11.__r_.__value_.__r.__words[0] = &v16;
  std::vector<IOABPTraceCodeAttachment>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  return TraceCode;
}

uint64_t std::vector<pci::transport::kernelTrace::traceCodeAttachment>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__emplace_back_slow_path<pci::transport::kernelTrace::traceCodeAttachment const&>(a1, a2);
  }

  else
  {
    std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__construct_one_at_end[abi:ne200100]<pci::transport::kernelTrace::traceCodeAttachment const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE86D68, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
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

void std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__construct_one_at_end[abi:ne200100]<pci::transport::kernelTrace::traceCodeAttachment const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 6);
  *(a1 + 8) = v4 + 32;
}

uint64_t std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__emplace_back_slow_path<pci::transport::kernelTrace::traceCodeAttachment const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>>(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 6);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<pci::transport::kernelTrace::traceCodeAttachment>::~__split_buffer(&v18);
  return v17;
}

void sub_297F7E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pci::transport::kernelTrace::traceCodeAttachment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<pci::transport::kernelTrace::traceCodeAttachment>,pci::transport::kernelTrace::traceCodeAttachment*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<pci::transport::kernelTrace::traceCodeAttachment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<pci::transport::kernelTrace::traceCodeAttachment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<pci::transport::kernelTrace::traceCodeAttachment>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void IOABPTraceCodeDict::~IOABPTraceCodeDict(void **this)
{
  v2 = this + 7;
  std::vector<IOABPTraceCodeAttachment>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<IOABPTraceCodeAttachment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IOABPTraceCodeAttachment>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IOABPTraceCodeAttachment>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void acipcKernelTrace::~acipcKernelTrace(acipcKernelTrace *this)
{
  *this = &unk_2A1E96ED8;
  MEMORY[0x29C27D030](this + 8);
}

{
  *this = &unk_2A1E96ED8;
  MEMORY[0x29C27D030](this + 8);

  JUMPOUT(0x29C27D350);
}

uint64_t acipcKernelTrace::start(acipcKernelTrace *this, __CFRunLoop *a2)
{
  result = IOACIPCTraceClass::start((this + 8), a2);
  if (result)
  {
    return IOACIPCTraceClass::activateAllTracePoints((this + 8)) == 0;
  }

  return result;
}

uint64_t acipcKernelTrace::start(acipcKernelTrace *this, dispatch_queue_s *a2)
{
  result = IOACIPCTraceClass::start((this + 8), a2);
  if (result)
  {
    return IOACIPCTraceClass::activateAllTracePoints((this + 8)) == 0;
  }

  return result;
}

uint64_t acipcKernelTrace::stop(acipcKernelTrace *this)
{
  IOACIPCTraceClass::deactivateAllTracePoints((this + 8));

  return MEMORY[0x2A1C6D9E8](this + 8);
}

uint64_t acipcKernelTrace::getTraceCodeCount(acipcKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOACIPCTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t acipcKernelTrace::getTraceCodeSize(acipcKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOACIPCTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t acipcKernelTrace::getMinBufferSize(acipcKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOACIPCTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t acipcKernelTrace::getMaxBufferSize(acipcKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOACIPCTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t acipcKernelTrace::getMaxBuffersInFlight(acipcKernelTrace *this, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = IOACIPCTraceClass::getRegistryInfo();
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t acipcKernelTrace::getTraceCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  memset(__str, 0, sizeof(__str));
  v14 = 0u;
  TraceCode = IOACIPCTraceClass::getTraceCode();
  if (TraceCode)
  {
    *(a3 + 48) = v15;
    std::string::operator=(a3, __str);
    std::string::operator=((a3 + 24), &__str[24]);
    v5 = v16;
    v6 = v17;
    while (v5 != v6)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v11.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v11.__r_.__value_.__l.__data_ = v7;
      }

      v12 = *(v5 + 6);
      memset(&__p, 0, sizeof(__p));
      std::string::operator=(&__p, &v11);
      v10 = v12;
      std::vector<pci::transport::kernelTrace::traceCodeAttachment>::push_back[abi:ne200100](a3 + 56, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v5 += 2;
    }
  }

  v11.__r_.__value_.__r.__words[0] = &v16;
  std::vector<IOABPTraceCodeAttachment>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  return TraceCode;
}

void sub_297F7F088(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL pci::transport::ioPool::init(pci::transport::ioPool *this)
{
  v44[2] = *MEMORY[0x29EDCA608];
  v33 = *(this + 17);
  v34 = *(this + 18);
  v31 = *(this + 19);
  v2 = _TelephonyUtilDebugPrint();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(this + 18);
    v26 = *(this + 19);
    v28 = *(this + 17);
    *buf = 136316418;
    v36 = "ioPool";
    v37 = 2048;
    v38 = this;
    v39 = 1024;
    v40 = v26;
    v41 = 2080;
    v42 = "init";
    v43 = 1024;
    LODWORD(v44[0]) = v28;
    WORD2(v44[0]) = 1024;
    *(v44 + 6) = v27;
    _os_log_debug_impl(&dword_297F72000, v3, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: num:%u size:%u", buf, 0x32u);
  }

  v4 = *(this + 18);
  if (!v4 || (v5 = *(this + 17)) == 0)
  {
    v21 = _TelephonyUtilDebugPrintError();
    v22 = pci::log::get(v21);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_28;
    }

    *buf = 0;
    v23 = "invalid configuration";
LABEL_27:
    _os_log_impl(&dword_297F72000, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
    result = 0;
    goto LABEL_28;
  }

  v6 = malloc_type_malloc((v5 * v4), 0x244D5968uLL);
  *(this + 10) = v6;
  if (!v6)
  {
    v25 = _TelephonyUtilDebugPrintError();
    v22 = pci::log::get(v25);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_28;
    }

    *buf = 0;
    v23 = "no memory";
    goto LABEL_27;
  }

  if (*(this + 17))
  {
    v7 = 0;
    v8 = *(this + 1);
    do
    {
      v9 = *(this + 2);
      if (v8 >= v9)
      {
        v10 = (v8 - *this) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<pci::transport::kernelTrace::traceCodeAttachment>::__throw_length_error[abi:ne200100]();
        }

        v11 = v9 - *this;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(this, v13);
        }

        *(8 * v10) = v6;
        v8 = (8 * v10 + 8);
        v14 = *(this + 1) - *this;
        v15 = (8 * v10 - v14);
        memcpy(v15, *this, v14);
        v16 = *this;
        *this = v15;
        *(this + 1) = v8;
        *(this + 2) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8++ = v6;
      }

      *(this + 1) = v8;
      v6 += *(this + 18);
      ++v7;
    }

    while (v7 < *(this + 17));
    v17 = *(this + 10);
  }

  v32 = *(this + 19);
  v18 = _TelephonyUtilDebugPrint();
  v19 = pci::log::get(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(this + 19);
    v30 = *(this + 10);
    *buf = 136316162;
    v36 = "ioPool";
    v37 = 2048;
    v38 = this;
    v39 = 1024;
    v40 = v29;
    v41 = 2080;
    v42 = "init";
    v43 = 2048;
    v44[0] = v30;
    _os_log_debug_impl(&dword_297F72000, v19, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %p", buf, 0x30u);
  }

  result = 1;
LABEL_28:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pci::transport::ioPool::initParams(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 0;
    *result = 0;
  }

  return result;
}

BOOL pci::transport::ioPool::validateParams(uint64_t a1)
{
  if (!a1)
  {
    v2 = _TelephonyUtilDebugPrintError();
    v3 = pci::log::get(v2);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v4 = "no params";
    v5 = &v10;
    goto LABEL_11;
  }

  if (!*(a1 + 4))
  {
    v6 = _TelephonyUtilDebugPrintError();
    v3 = pci::log::get(v6);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v4 = "invalid number of io";
    v5 = &v9;
    goto LABEL_11;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  v7 = _TelephonyUtilDebugPrintError();
  v3 = pci::log::get(v7);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 0;
    v4 = "invalid io size";
    v5 = buf;
LABEL_11:
    _os_log_impl(&dword_297F72000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
    return 0;
  }

  return result;
}

uint64_t pci::transport::ioPool::ioPool(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 68) = *(a2 + 4);
  *(a1 + 76) = *a2;
  v3 = (a1 + 76);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v4 = _TelephonyUtilDebugPrint();
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::ioPool::ioPool(a1, v3, v5);
  }

  return a1;
}

void sub_297F7F638(_Unwind_Exception *a1)
{
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(v1 + 24);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void pci::transport::ioPool::~ioPool(pci::transport::ioPool *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v24 = *(this + 6);
  v25 = *(this + 22);
  v22 = *(this + 10);
  v23 = (*(this + 1) - *this) >> 3;
  v21 = *(this + 19);
  v2 = _TelephonyUtilDebugPrint();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 19);
    v15 = *(this + 10);
    v16 = (*(this + 1) - *this) >> 3;
    v17 = *(this + 6);
    v18 = *(this + 22);
    *buf = 136316930;
    v27 = "ioPool";
    v28 = 2048;
    v29 = this;
    v30 = 1024;
    v31 = v14;
    v32 = 2080;
    v33 = "~ioPool";
    v34 = 2048;
    v35 = v15;
    v36 = 2048;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    v40 = 1024;
    v41 = v18;
    _os_log_debug_impl(&dword_297F72000, v3, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %p free:%zu active:%zu additional:%u", buf, 0x4Au);
  }

  v4 = *(this + 10);
  if (v4)
  {
    if (*(this + 6))
    {
      v19 = "fActiveIO.size() == 0";
      v20 = 75;
    }

    else
    {
      v6 = *this;
      v5 = *(this + 1);
      v7 = *(this + 17);
      v8 = *(this + 22);
      if (v8 + v7 == (v5 - *this) >> 3)
      {
        if (!v8)
        {
          goto LABEL_16;
        }

        if (v6 != v5)
        {
          v9 = (*(this + 18) * v7) + v4;
          do
          {
            v10 = *v6;
            if (*v6 < v4 || v9 <= v10)
            {
              free(v10);
              v8 = *(this + 22) - 1;
              *(this + 22) = v8;
              v5 = *(this + 1);
            }

            ++v6;
          }

          while (v6 != v5);
          if (!v8)
          {
LABEL_16:
            free(*(this + 10));
            goto LABEL_17;
          }
        }

        v19 = "fAdditionalNumIO == 0";
        v20 = 92;
      }

      else
      {
        v19 = "fFreeIO.size() ==(fNumIO + fAdditionalNumIO)";
        v20 = 76;
      }
    }

    __assert_rtn("~ioPool", "PCITransportIOPool.cpp", v20, v19);
  }

LABEL_17:
  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(this + 24);
  v12 = *this;
  if (*this)
  {
    *(this + 1) = v12;
    operator delete(v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_297F7F898(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::shared_ptr<pci::transport::ioPool>::shared_ptr[abi:ne200100]<pci::transport::ioPool,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F7F970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::transport::ioPool>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::transport::ioPool **std::unique_ptr<pci::transport::ioPool>::~unique_ptr[abi:ne200100](pci::transport::ioPool **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::ioPool::~ioPool(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::ioPool *,std::shared_ptr<pci::transport::ioPool>::__shared_ptr_default_delete<pci::transport::ioPool,pci::transport::ioPool>,std::allocator<pci::transport::ioPool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

pci::transport::ioPool *std::__shared_ptr_pointer<pci::transport::ioPool *,std::shared_ptr<pci::transport::ioPool>::__shared_ptr_default_delete<pci::transport::ioPool,pci::transport::ioPool>,std::allocator<pci::transport::ioPool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::ioPool::~ioPool(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::ioPool *,std::shared_ptr<pci::transport::ioPool>::__shared_ptr_default_delete<pci::transport::ioPool,pci::transport::ioPool>,std::allocator<pci::transport::ioPool>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_297F7FDCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::transport::bh::init(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x29EDCA608];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = *(a2 + 8);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 1;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3002000000;
  v57 = __Block_byref_object_copy__13;
  v58 = __Block_byref_object_dispose__14;
  v59 = 0;
  v4 = (a1 + 28);
  v40 = *(a1 + 28);
  v5 = _TelephonyUtilDebugPrintVerbose();
  v6 = pci::log::get(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::init(a1, v4);
  }

  v7 = *(a1 + 112);
  v8 = *(a1 + 28);
  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, a1);
  v52 = *buf;
  v53 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  inserted = pci::system::info::insertBH(v7, v8, &v52, *(a2 + 4));
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if ((inserted & 1) == 0)
  {
    v42 = *(a1 + 28);
    v32 = _TelephonyUtilDebugPrintError();
    v33 = pci::log::get(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = *(a1 + 28);
      *buf = 136315906;
      *&buf[4] = "bh";
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v69 = 1024;
      v70 = v34;
      v71 = 2080;
      v72 = "init";
      v35 = "%s::%p::%d::%s: failed to insert in system";
LABEL_69:
      _os_log_impl(&dword_297F72000, v33, OS_LOG_TYPE_INFO, v35, buf, 0x26u);
    }

LABEL_70:
    v31 = 0;
    goto LABEL_71;
  }

  *(a1 + 32) = 1;
  pci::transport::kernel::create(buf);
  v10 = *buf;
  *buf = 0;
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = *buf;
    *buf = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v10 = *(a1 + 40);
  }

  if (!v10)
  {
    v43 = *(a1 + 28);
    v36 = _TelephonyUtilDebugPrintError();
    v33 = pci::log::get(v36);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 28);
      *buf = 136315906;
      *&buf[4] = "bh";
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v69 = 1024;
      v70 = v37;
      v71 = 2080;
      v72 = "init";
      v35 = "%s::%p::%d::%s: failed to create kernel instance";
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  do
  {
    std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, a1);
    v14 = *buf;
    v13 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v15 = dispatch_semaphore_create(0);
    os_unfair_lock_lock((a1 + 24));
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke;
    aBlock[3] = &unk_2A1E97008;
    aBlock[4] = &v60;
    aBlock[5] = &v64;
    aBlock[6] = a1;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    v16 = _Block_copy(aBlock);
    v17 = v55[5];
    v55[5] = v16;
    if (v17)
    {
      _Block_release(v17);
    }

    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 1174405120;
    v48[2] = ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_21;
    v48[3] = &unk_2A1E97040;
    v48[5] = a1;
    v48[6] = v14;
    v49 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v48[4] = &v54;
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 1174405120;
    v46[2] = ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25;
    v46[3] = &__block_descriptor_tmp_29_0;
    v46[4] = a1;
    v46[5] = v14;
    v47 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v44[0] = MEMORY[0x29EDCA5F8];
    v44[1] = 1174405120;
    v44[2] = ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_30;
    v44[3] = &__block_descriptor_tmp_35_0;
    v44[4] = a1;
    v44[5] = v14;
    v45 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (((*(**(a1 + 40) + 32))(*(a1 + 40), *(a1 + 28), *(a1 + 16), v48, v46, v44) & 1) == 0)
    {
      v41 = *(a1 + 28);
      v18 = _TelephonyUtilDebugPrintError();
      v19 = pci::log::get(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 28);
        *buf = 136315906;
        *&buf[4] = "bh";
        *&buf[12] = 2048;
        *&buf[14] = a1;
        v69 = 1024;
        v70 = v20;
        v71 = 2080;
        v72 = "init";
        _os_log_impl(&dword_297F72000, v19, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: failed to start", buf, 0x26u);
      }

      v21 = v55[5];
      if (v21)
      {
        (*(v21 + 16))(v21, 0, 0, 0);
        v22 = v55[5];
        v55[5] = 0;
        if (v22)
        {
          _Block_release(v22);
        }
      }
    }

    os_unfair_lock_unlock((a1 + 24));
    v23 = *(a2 + 4);
    if (v23 == -1)
    {
      v24 = -1;
    }

    else
    {
      v24 = dispatch_time(0, 1000000 * v23);
    }

    if (dispatch_semaphore_wait(v15, v24))
    {
      os_unfair_lock_lock((a1 + 24));
      v25 = v55[5];
      if (v25)
      {
        (*(v25 + 16))(v25, 0, 1, 0);
        v26 = v55[5];
        v55[5] = 0;
        if (v26)
        {
          _Block_release(v26);
        }
      }

      os_unfair_lock_unlock((a1 + 24));
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((v61[3] & 1) != 0 || (v27 = *(v65 + 6)) == 0)
    {
      v30 = 0;
    }

    else
    {
      *(v65 + 6) = v27 - 1;
      v28 = dispatch_group_create();
      (*(**(a1 + 40) + 40))(*(a1 + 40), v28);
      dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      v29 = *(a2 + 4) / (*(a2 + 8) + 1);
      if (v29 >= 0x3E8)
      {
        v29 = 1000;
      }

      usleep(1000 * v29);
      if (v28)
      {
        dispatch_release(v28);
      }

      v30 = 1;
    }

    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_weak(v47);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_weak(v49);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v15)
    {
      dispatch_release(v15);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  while ((v30 & 1) != 0);
  os_unfair_lock_lock((a1 + 24));
  if (*(v61 + 24) == 1)
  {
    *(a1 + 33) = 1;
  }

  os_unfair_lock_unlock((a1 + 24));
  v31 = *(v61 + 24);
LABEL_71:
  _Block_object_dispose(&v54, 8);
  if (v59)
  {
    _Block_release(v59);
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  v38 = *MEMORY[0x29EDCA608];
  return v31 & 1;
}

void sub_297F80654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, dispatch_object_t object, uint64_t a45, std::__shared_weak_count *a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *aBlock)
{
  _Block_object_dispose(&a47, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v52 - 224), 8);
  _Block_object_dispose((v52 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t pci::transport::bh::bh(uint64_t a1, dispatch_queue_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(v12, "com.apple.WirelessIPC.baseband.pci_bh");
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  v4 = v14;
  pci::transport::bh::generateString(v12, __p, *a2, v14);
  if (v15 < 0)
  {
    v4 = v14[0];
  }

  v5 = dispatch_queue_attr_make_with_qos_class(0, *(a2 + 6), 0);
  *(a1 + 16) = dispatch_queue_create_with_target_V2(v4, v5, a2[2]);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  *(a1 + 28) = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  pci::system::info::get((a1 + 112));
  v9 = *(a1 + 28);
  v6 = _TelephonyUtilDebugPrint();
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::bh(a1, (a1 + 28));
  }

  return a1;
}

void sub_297F808FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v30 = *(v25 + 120);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(v27, *(v25 + 96));
  std::__list_imp<void const*>::clear(v26);
  v31 = *(v25 + 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *v28;
  *v28 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v25 + 16);
  if (v33)
  {
    dispatch_release(v33);
  }

  v34 = *(v25 + 8);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t pci::transport::bh::generateString@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
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

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v9, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  MEMORY[0x29C27D250](v15, a3);
  if ((v27 & 0x10) != 0)
  {
    v17 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v17 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v16 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    locale = v22[1].__locale_;
    v17 = v22[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a4[23] = v16;
  if (v16)
  {
    memmove(a4, locale, v16);
  }

LABEL_26:
  a4[v16] = 0;
  v20 = *MEMORY[0x29EDC9538];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v21 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x29C27D310](&v28);
}

void sub_297F80C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C27D310](v2 + 112);
  _Unwind_Resume(a1);
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

void pci::transport::bh::~bh(pci::transport::bh *this)
{
  v2 = (this + 28);
  v22 = *(this + 7);
  v3 = _TelephonyUtilDebugPrint();
  v4 = pci::log::get(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::~bh(this, v2);
  }

  if (*(this + 10))
  {
    __assert_rtn("~bh", "PCITransportBH.cpp", 58, "fCBL.empty()");
  }

  v5 = *(this + 6);
  if (v5)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3802000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = v5;
    v32[0] = *(this + 7);
    *(this + 6) = 0;
    *(this + 7) = 0;
    v6 = *(this + 2);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN3pci9transport2bhD2Ev_block_invoke;
    block[3] = &unk_29EE870E0;
    block[4] = &v26;
    dispatch_async(v6, block);
    _Block_object_dispose(&v26, 8);
    if (v32[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32[0]);
    }
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x4002000000;
    v29 = __Block_byref_object_copy__7;
    v9 = *(this + 12);
    v10 = *(this + 11);
    v30 = __Block_byref_object_dispose__8;
    v31 = v10;
    v32[0] = v9;
    v32[1] = v8;
    v9[2] = v32;
    *(this + 12) = 0;
    *(this + 13) = 0;
    *(this + 11) = this + 96;
    std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(this + 88, 0);
    *(this + 12) = 0;
    *(this + 13) = 0;
    *(this + 11) = this + 96;
    v11 = *(this + 2);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 0x40000000;
    v25[2] = ___ZN3pci9transport2bhD2Ev_block_invoke_9;
    v25[3] = &unk_29EE87108;
    v25[4] = &v26;
    dispatch_async(v11, v25);
    _Block_object_dispose(&v26, 8);
    std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(&v31, v32[0]);
  }

  if (*(this + 32) == 1)
  {
    v23 = *(this + 7);
    v12 = _TelephonyUtilDebugPrint();
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      pci::transport::bh::~bh(this, v2);
    }

    pci::system::info::removeBH(*(this + 14), *(this + 7));
    *(this + 32) = 0;
  }

  v14 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v24 = *(this + 7);
  v15 = _TelephonyUtilDebugPrintVerbose();
  v16 = pci::log::get(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::~bh(this, v2);
  }

  v17 = *(this + 15);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(this + 88, *(this + 12));
  std::__list_imp<void const*>::clear(this + 8);
  v18 = *(this + 7);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(this + 5);
  *(this + 5) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 2);
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = *(this + 1);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
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

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

intptr_t ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 48);
  os_unfair_lock_assert_owner((v8 + 24));
  v22 = *(v8 + 28);
  v9 = _TelephonyUtilDebugPrint();
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(v8 + 28);
    *buf = 136316674;
    v26 = "bh";
    v27 = 2048;
    v28 = v8;
    v29 = 1024;
    v30 = v21;
    v31 = 2080;
    v32 = "init_block_invoke";
    v33 = 1024;
    v34 = a2;
    v35 = 1024;
    v36 = a3;
    v37 = 1024;
    v38 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: in addComp added %u, started %u, service 0x%x", buf, 0x38u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2 & a3;
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    goto LABEL_12;
  }

  v11 = (*(**(v8 + 40) + 48))(*(v8 + 40), a4);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  if (v11 != -536870203)
  {
    v24 = *(v8 + 28);
    v16 = _TelephonyUtilDebugPrintError();
    v17 = pci::log::get(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(v8 + 28);
      *buf = 136316162;
      v26 = "bh";
      v27 = 2048;
      v28 = v8;
      v29 = 1024;
      v30 = v18;
      v31 = 2080;
      v32 = "init_block_invoke";
      v33 = 1024;
      v34 = v12;
      _os_log_impl(&dword_297F72000, v17, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: failed to open 0x%x", buf, 0x2Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_13;
  }

  v23 = *(v8 + 28);
  v13 = _TelephonyUtilDebugPrintError();
  v14 = pci::log::get(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(v8 + 28);
    *buf = 136316162;
    v26 = "bh";
    v27 = 2048;
    v28 = v8;
    v29 = 1024;
    v30 = v15;
    v31 = 2080;
    v32 = "init_block_invoke";
    v33 = 1024;
    v34 = -536870203;
    _os_log_impl(&dword_297F72000, v14, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: failed to open 0x%x", buf, 0x2Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_13:
  result = dispatch_semaphore_signal(*(a1 + 56));
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void __copy_helper_block_e8_56c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 56) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_21(void *a1, uint64_t a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        os_unfair_lock_lock(v5 + 6);
        os_unfair_lock_opaque = v5[7]._os_unfair_lock_opaque;
        v8 = _TelephonyUtilDebugPrintVerbose();
        v9 = pci::log::get(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_21_cold_1(v5, &v5[7]._os_unfair_lock_opaque);
        }

        v10 = *(*(a1[4] + 8) + 40);
        if (v10)
        {
          (*(v10 + 16))(v10, 1, 1, a2);
          v11 = *(a1[4] + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = 0;
          if (v12)
          {
            _Block_release(v12);
          }
        }

        os_unfair_lock_unlock(v5 + 6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t __copy_helper_block_e8_48c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25(void *a1)
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
        os_unfair_lock_lock((v3 + 24));
        v12 = *(v3 + 28);
        v6 = _TelephonyUtilDebugPrint();
        v7 = pci::log::get(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25_cold_1(v3, (v3 + 28));
        }

        if (*(v3 + 48))
        {
          if ((*(v3 + 33) & 1) == 0)
          {
            __assert_rtn("init_block_invoke", "PCITransportBH.cpp", 227, "fActive");
          }

          v13 = *(v3 + 28);
          v8 = _TelephonyUtilDebugPrintVerbose();
          v9 = pci::log::get(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25_cold_2(v3, (v3 + 28));
          }

          v11 = *(v3 + 48);
          v10 = *(v3 + 56);
          *(v3 + 48) = 0;
          *(v3 + 56) = 0;
          os_unfair_lock_unlock((v3 + 24));
          if (v11)
          {
            pci::transport::task::complete(v11, 0, 0, 0);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        else
        {
          os_unfair_lock_unlock((v3 + 24));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_297F81784(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_30(void *a1, unint64_t a2, int a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
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
        os_unfair_lock_lock(v9 + 6);
        os_unfair_lock_opaque = v9[7]._os_unfair_lock_opaque;
        pci::transport::kernel::errorAsString(a2);
        pci::transport::kernel::errorAsUnsigned(a2);
        v13 = _TelephonyUtilDebugPrintError();
        v14 = pci::log::get(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = v9[7]._os_unfair_lock_opaque;
          *buf = 136316930;
          v18 = "bh";
          v19 = 2048;
          v20 = v9;
          v21 = 1024;
          v22 = v15;
          v23 = 2080;
          v24 = "init_block_invoke";
          v25 = 2080;
          v26 = pci::transport::kernel::errorAsString(a2);
          v27 = 1024;
          v28 = pci::transport::kernel::errorAsUnsigned(a2);
          v29 = 1024;
          v30 = a3;
          v31 = 1024;
          v32 = a4;
          _os_log_impl(&dword_297F72000, v14, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: %s (%u): param 0x%x: status 0x%x", buf, 0x42u);
        }

        os_unfair_lock_unlock(v9 + 6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void pci::transport::bh::setNotify(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48))
  {
    pci::transport::bh::setNotify();
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  os_unfair_lock_unlock((a1 + 24));
}

void pci::transport::bh::invokeCallbackAsync(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN3pci9transport2bh19invokeCallbackAsyncEU13block_pointerFvijjEijj_block_invoke;
  block[3] = &unk_29EE87130;
  block[4] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_async(v5, block);
}

void pci::transport::bh::open(uint64_t a1, uint64_t *a2)
{
  aBlock[8] = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v3, "open pipe", 0, aBlock);
}

void sub_297F81D5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::bh::cmdCompletion(pci::transport::bh *this, void *a2)
{
  if (!this)
  {
    pci::transport::bh::cmdCompletion();
  }

  (*(this + 2))(this, a2, 0, 0);

  _Block_release(this);
}

void pci::transport::bh::close(uint64_t a1, uint64_t *a2)
{
  aBlock[8] = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v3, "close pipe", 0, aBlock);
}

void sub_297F8208C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}