void *swift::runtime::SwiftTLSContext::get(swift::runtime::SwiftTLSContext *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 800);
  if (!result)
  {
    v4 = 100;
    context[0] = &v4;
    context[1] = swift::runtime::SwiftTLSContext::get(void)::$_0::__invoke;
    if (swift::runtime::SwiftTLSContext::get(void)::token != -1)
    {
      dispatch_once_f(&swift::runtime::SwiftTLSContext::get(void)::token, context, swift::tls_init_once(long &,unsigned long,void (*)(void *))::{lambda(void *)#1}::__invoke);
    }

    result = swift_slowAlloc(0x10, 7uLL);
    *result = 0;
    result[1] = 0;
    *(StatusReg + 800) = result;
  }

  return result;
}

uint64_t swift::tls_init_once(long &,unsigned long,void (*)(void *))::{lambda(void *)#1}::__invoke()
{
  result = pthread_key_init_np();
  if (result)
  {
    swift::threading::fatal("tls_init_once() failed to set destructor", v1, v2, v3);
  }

  return result;
}

void swift::runtime::SwiftTLSContext::get(void)::$_0::__invoke(void *a1)
{
  if (a1)
  {
    a1;
  }
}

os_log_t swift::runtime::trace::setupLogs(swift::runtime::trace *this, void *a2)
{
  swift::runtime::trace::TracingEnabled = 1;
  result = os_log_create("com.apple.swift", "SectionScan");
  swift::runtime::trace::ScanLog = result;
  return result;
}

void swift::addImageAccessibleFunctionsBlockCallbackUnsafe(swift *this, unint64_t a2, char *a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = &a3[a2];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v22 = v3;
  v23 = v4;
  os_unfair_lock_lock(&unk_1EA79EAF8);
  v5 = qword_1EA79EAF0;
  if (qword_1EA79EAF0)
  {
    v6 = *qword_1EA79EAF0;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1EA79EAF0;
  if (v6 >= qword_1EA79EAE0)
  {
    if (2 * v6 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = 2 * v6;
    }

    v9 = malloc_type_malloc((32 * (v8 >> 1)) | 8, 0x1000040504FFAC1uLL);
    if (!v9)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v7 = v9;
    *v9 = 0;
    if (v5)
    {
      if (v6)
      {
        v10 = v9 + 1;
        v11 = (v5 + 8);
        v12 = v9 + 2;
        v13 = v5 + 16;
        v14 = v6;
        do
        {
          *v10 = *v11;
          v15 = v11[1];
          v11 += 2;
          v10[1] = v15;
          v10 += 2;
          v12 += 2;
          v13 += 16;
          --v14;
        }

        while (v14);
      }

      atomic_store(v6, v9);
      v16 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v16 = qword_1EA79EB00;
      v16[1] = v5;
      qword_1EA79EB00 = v16;
    }

    qword_1EA79EAE0 = v8;
    atomic_store(v7, &qword_1EA79EAF0);
  }

  v7[2 * v6 + 1] = v22;
  v7[2 * v6 + 2] = v23;
  atomic_store(v6 + 1, v7);
  __dmb(0xBu);
  if (!qword_1EA79EAE8)
  {
    v17 = qword_1EA79EB00;
    if (qword_1EA79EB00)
    {
      do
      {
        v19 = *v17;
        v18 = v17[1];
        v20 = -1;
        do
        {
          v21 = atomic_load(v18);
          ++v20;
        }

        while (v20 < v21);
        free(v18);
        free(v17);
        v17 = v19;
      }

      while (v19);
    }

    qword_1EA79EB00 = 0;
  }

  os_unfair_lock_unlock(&unk_1EA79EAF8);
}

void swift::addImageAccessibleFunctionsBlockCallback(swift *this, unint64_t a2, char *a3)
{
  if (qword_1EA79EB08 == -1)
  {
  }

  else
  {
    v4 = a3;
    v5 = a2;
    swift::addImageAccessibleFunctionsBlockCallback(this);
    a2 = v5;
    a3 = v4;
  }

  swift::addImageAccessibleFunctionsBlockCallbackUnsafe(this, a2, a3);
}

uint64_t swift::Lazy<anonymous namespace::AccessibleFunctionsState>::defaultInitCallback(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return swift::initializeAccessibleFunctionsLookup(a1);
}

int *swift_findAccessibleFunction(const void *a1, size_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (qword_1EA79EB08 != -1)
  {
    v70 = a2;
    v71 = a1;
    swift::addImageAccessibleFunctionsBlockCallback(a1);
    a1 = v71;
    a2 = v70;
  }

  v85 = a1;
  v86 = a2;
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift::runtime::bincompat::checkBinCompatEnvironmentVariable();
  }

  if (swift::runtime::environment::SWIFT_DUMP_ACCESSIBLE_FUNCTIONS_variable == 1 && swift_findAccessibleFunction::dumpAccessibleFunctionsToken != -1)
  {
    swift_findAccessibleFunction_cold_3();
  }

  do
  {
    explicit = atomic_load_explicit(&qword_1EA79EAC0, memory_order_acquire);
    v3 = atomic_load_explicit(&qword_1EA79EAC8, memory_order_acquire);
    v4 = atomic_load_explicit(&dword_1EA79EABC, memory_order_acquire);
  }

  while (explicit != atomic_load_explicit(&qword_1EA79EAC0, memory_order_acquire));
  if (explicit)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    if (v7)
    {
      if (*(v7 + 16))
      {
        v8 = *(v7 + 16);
      }

      else
      {
        v8 = 0;
      }

      return v8;
    }
  }

  v9 = v85;
  v10 = v86;
  if (qword_1ED426550 != -1)
  {
    swift_findAccessibleFunction_cold_4();
  }

  if (swift::runtime::trace::tracingReady(void)::{lambda(void)#1}::operator() const(void)::TheLazy == 1 && !_os_trace_lazy_init_completed_4swift())
  {
    goto LABEL_30;
  }

  if (swift::runtime::trace::LogsToken != -1)
  {
    swift::_searchConformancesByMangledTypeName();
  }

  if (swift::runtime::trace::TracingEnabled == 1)
  {
    v11 = os_signpost_id_generate(swift::runtime::trace::ScanLog);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 68157954;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = v9;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "section_scan", "accessible function scan for '%.*s'", buf, 0x12u);
      }
    }
  }

  else
  {
LABEL_30:
    v11 = 0;
  }

  atomic_fetch_add_explicit(&qword_1EA79EAE8, 1uLL, memory_order_acquire);
  v13 = qword_1EA79EAF0;
  if (qword_1EA79EAF0 && (v14 = atomic_load_explicit(qword_1EA79EAF0, memory_order_acquire)) != 0)
  {
    v15 = (v13 + 8);
    v16 = v13 + 8 + 16 * v14;
    while (1)
    {
      v8 = *v15 ? *v15 : 0;
      v17 = v15[1];
      if (!v17)
      {
        break;
      }

      v18 = v15[1];
      if (v8 != v17)
      {
        goto LABEL_42;
      }

LABEL_34:
      v15 += 2;
      if (v15 == v16)
      {
        goto LABEL_54;
      }
    }

    v18 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_42:
    v19 = v8;
    while (1)
    {
      SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v19 + *v8, v3);
      if (v3 == v10 && (!v10 || !memcmp(SymbolicMangledNameStringRef, v9, v10)))
      {
        break;
      }

      v8 += 5;
      v19 += 5;
      if (v8 == v18)
      {
        goto LABEL_34;
      }
    }

    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 134217984;
        *&buf[4] = v19;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v21, OS_SIGNPOST_INTERVAL_END, v11, "section_scan", "result=%p", buf, 0xCu);
      }
    }

    atomic_fetch_add_explicit(&qword_1EA79EAE8, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    v23 = v85;
    v22 = v86;
    *buf = v85;
    *&buf[8] = v86;
    os_unfair_lock_lock(&unk_1EA79EAD0);
    v24 = qword_1EA79EAC8;
    v77 = qword_1EA79EAC8 & 3;
    v25 = v77 == 0;
    if ((qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v25 = 1;
    }

    v78 = v25;
    v79 = qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL;
    if (v25)
    {
      v26 = 4;
    }

    else
    {
      v26 = *(qword_1EA79EAC8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v81 = v26;
    v28 = dword_1EA79EABC;
    v29 = qword_1EA79EAC0;
    v30 = qword_1EA79EAC0 + 8;
    if (qword_1EA79EAC0)
    {
      v31 = qword_1EA79EAC0 + 8;
    }

    else
    {
      v31 = 0;
    }

    {
      __dmb(0xBu);
      {
        v33 = qword_1EA79EAD8;
        if (qword_1EA79EAD8)
        {
          do
          {
            v34 = *v33;
            free(v33[1]);
            free(v33);
            v33 = v34;
          }

          while (v34);
        }

        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v83 = v31;
    v80 = v24;
    size = v22;
    v76 = v29;
    v73 = (v28 + 1);
    __src = v23;
    if ((1 << v81) / ((1 << v81) - v73) < 4)
    {
      v40 = v24;
    }

    else
    {
      v35 = (v81 + 1);
      v84 = v81;
      if (v35 >= 0x11)
      {
        v36 = 4;
      }

      else
      {
        v36 = 2;
      }

      if (v35 < 9)
      {
        v37 = 1;
      }

      else
      {
        v37 = v36;
      }

      v38 = malloc_type_calloc(2 << v81, v37, 0x48DDA4AEuLL);
      if (!v38)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v39 = v31;
      v72 = v28;
      if (v37 != 1)
      {
        if (v37 == 4)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }
      }

      v40 = v37 | v38;
      *v38 = v81 + 1;
      if (v81)
      {
        v41 = ~(-2 << v81);
        v42 = v24 & 3;
        v43 = v79;
        if (!v77)
        {
          v43 = 0;
        }

        v82 = v43;
        v44 = v40 & 3;
        if ((v40 & 3) != 0)
        {
          v45 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v45 = 0;
        }

        for (i = 1; !(i >> v84); ++i)
        {
          if (v42 > 1)
          {
            if (v42 == 2)
            {
              LODWORD(v47) = *(v82 + 2 * i);
              if (*(v82 + 2 * i))
              {
                goto LABEL_101;
              }
            }

            else
            {
              LODWORD(v47) = *(v82 + 4 * i);
              if (v47)
              {
LABEL_101:
                for (j = __swift::__runtime::llvm::hash_value(*(v39 + 24 * (v47 - 1)), *(v39 + 24 * (v47 - 1) + 8)); ; j = v50 + 1)
                {
                  v50 = j & v41;
                  if ((j & v41) != 0)
                  {
                    if ((v40 & 3) > 1)
                    {
                      LODWORD(v49) = v44 == 2 ? *(v45 + 2 * v50) : *(v45 + 4 * v50);
                    }

                    else if ((v40 & 3) != 0)
                    {
                      LODWORD(v49) = *(v45 + v50);
                    }

                    else
                    {
                      v49 = (v40 >> (4 * v50)) & 0xF;
                    }

                    if (!v49)
                    {
                      break;
                    }
                  }
                }

                if (v44 == 3)
                {
                  *(v45 + 4 * v50) = v47;
                  v39 = v83;
                  v42 = v80 & 3;
                }

                else
                {
                  v39 = v83;
                  v42 = v80 & 3;
                  if (v44 == 2)
                  {
                    *(v45 + 2 * v50) = v47;
                  }

                  else
                  {
                    *(v45 + v50) = v47;
                  }
                }
              }
            }
          }

          else if (v42)
          {
            LODWORD(v47) = *(v82 + i);
            if (*(v82 + i))
            {
              goto LABEL_101;
            }
          }

          else
          {
            v47 = (v80 >> (4 * i)) & 0xF;
            if (v47)
            {
              goto LABEL_101;
            }
          }
        }
      }

      atomic_store(v40, &qword_1EA79EAC8);
      if (!v78)
      {
        v51 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v39 = v83;
        *v51 = qword_1EA79EAD8;
        v51[1] = v79;
        qword_1EA79EAD8 = v51;
      }

      v28 = v72;
    }

    v52 = v76;
    v53 = v32;
    if (!v76 || v28 >= *v76)
    {
      v54 = v28 + (v28 >> 2);
      v55 = v28;
      if (v54 <= v28 + 1)
      {
        v54 = v28 + 1;
      }

      v28 = malloc_good_size(24 * v54 + 8);
      v56 = malloc_type_malloc(v28, 0x1070040D224386BuLL);
      if (!v56)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v52 = v56;
      *v56 = (v28 - 8) / 0x18;
      LODWORD(v28) = v55;
      if (v76)
      {
        if (v55)
        {
          v57 = v56 + 2;
          v58 = v56 + 6;
          v59 = v76 + 6;
          v60 = v55;
          do
          {
            *v57 = *v30;
            v61 = *(v30 + 16);
            v30 += 24;
            *(v57 + 2) = v61;
            v57 += 6;
            v58 += 6;
            v59 += 6;
            --v60;
          }

          while (v60);
        }

        v62 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v62 = qword_1EA79EAD8;
        v62[1] = v76;
        qword_1EA79EAD8 = v62;
      }

      atomic_store(v52, &qword_1EA79EAC0);
    }

    v63 = (v52 + 24 * v28);
    v63[3] = v19;
    v64 = malloc_type_malloc(size, 0x100004077774924uLL);
    memcpy(v64, __src, size);
    v63[1] = v64;
    v63[2] = size;
    atomic_store(v73, &dword_1EA79EABC);
    if ((v40 & 3) > 1)
    {
      if ((v40 & 3) == 2)
      {
        v65 = v40 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v40 & 3) == 0)
        {
          v65 = 0;
        }

        atomic_store(v73, (v65 + 2 * v53));
      }

      else
      {
        v66 = v40 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v40 & 3) == 0)
        {
          v66 = 0;
        }

        atomic_store(v73, (v66 + 4 * v53));
      }
    }

    else if ((v40 & 3) != 0)
    {
      atomic_store(v73, ((v40 & 0xFFFFFFFFFFFFFFFCLL) + v53));
    }

    else
    {
      atomic_store((v73 << (4 * v53)) | v40, &qword_1EA79EAC8);
    }

    __dmb(0xBu);
    {
      v67 = qword_1EA79EAD8;
      if (qword_1EA79EAD8)
      {
        do
        {
          v68 = *v67;
          free(v67[1]);
          free(v67);
          v67 = v68;
        }

        while (v68);
      }

LABEL_145:
      qword_1EA79EAD8 = 0;
    }

LABEL_146:
    os_unfair_lock_unlock(&unk_1EA79EAD0);
  }

  else
  {
LABEL_54:
    atomic_fetch_add_explicit(&qword_1EA79EAE8, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = swift::runtime::trace::ScanLog;
      if (os_signpost_enabled(swift::runtime::trace::ScanLog))
      {
        *buf = 134217984;
        *&buf[4] = 0;
        _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v27, OS_SIGNPOST_INTERVAL_END, v11, "section_scan", "result=%p", buf, 0xCu);
      }
    }

    return 0;
  }

  return v8;
}

size_t _dumpAccessibleFunctionRecords(uint64_t a1)
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (qword_1EA79EB08 != -1)
  {
    swift::addImageAccessibleFunctionsBlockCallback(a1);
  }

  v1 = MEMORY[0x1E69E9848];
  fwrite("==== Accessible Function Records ====\n", 0x26uLL, 1uLL, *MEMORY[0x1E69E9848]);
  atomic_fetch_add_explicit(&qword_1EA79EAE8, 1uLL, memory_order_acquire);
  v3 = qword_1EA79EAF0;
  if (qword_1EA79EAF0)
  {
    explicit = atomic_load_explicit(qword_1EA79EAF0, memory_order_acquire);
    if (explicit)
    {
      v5 = (v3 + 8);
      v12 = &v5[2 * explicit];
      do
      {
        if (*v5)
        {
          v6 = *v5;
        }

        else
        {
          v6 = 0;
        }

        if (v5[1])
        {
          v7 = v5[1];
        }

        else
        {
          v7 = 0;
        }

        v13 = v5;
        if (v6 != v7)
        {
          SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v6 + *v6, v2);
          v14 = 0;
          v15 = 0x101010101010101;
          v16 = 1;
          v17 = 0;
          v18 = 16843009;
          v19 = 1;
          v20 = 256;
          v21 = 1;
          v22 = 0;
          v23 = 0;
          v24[0] = &unk_1EEEAA698;
          v24[1] = swift::Demangle::__runtime::genericParameterName;
          v24[3] = v24;
          swift::Demangle::__runtime::demangleSymbolAsString(SymbolicMangledNameStringRef, v9, &v14, v10);
        }

        v5 += 2;
      }

      while (v13 + 2 != v12);
    }
  }

  atomic_fetch_add_explicit(&qword_1EA79EAE8, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  fprintf(*v1, "Record count: %d\n", 0);
  return fwrite("==== End of Accessible Function Records ====\n", 0x2DuLL, 1uLL, *v1);
}

uint64_t (*__tsan_on_initialize())(void)
{
  _swift_tsan_enabled = 1;
  _swift_tsan_acquire = dlsym(0xFFFFFFFFFFFFFFFELL, "__tsan_acquire");
  _swift_tsan_release = dlsym(0xFFFFFFFFFFFFFFFELL, "__tsan_release");
  result = dlsym(0xFFFFFFFFFFFFFFFFLL, "__tsan_on_initialize");
  if (result)
  {

    return result();
  }

  return result;
}

char *_swift_backtrace_demangle(swift::Demangle::__runtime *a1, const char *a2, void *a3, uint64_t *a4)
{
  v5 = a3;
  v24[4] = *MEMORY[0x1E69E9840];
  if (a3 && !a4)
  {
    return 0;
  }

  if (swift::Demangle::__runtime::isSwiftSymbol(a1, a2))
  {
    v17 = 1;
    v19 = 1;
    v20 = 0;
    v21 = 1;
    v22 = 0;
    v23 = 0;
    v24[0] = &unk_1EEEAA698;
    v24[1] = swift::Demangle::__runtime::genericParameterName;
    v24[3] = v24;
    *outlen = 257;
    *&outlen[2] = 0;
    *&outlen[5] = 0;
    v18 = 0x101000001010101;
    swift::Demangle::__runtime::demangleSymbolAsString(a1, a2, outlen, v9);
  }

  if (a2 < 2)
  {
    return 0;
  }

  if (*a1 != 23135)
  {
    return 0;
  }

  *outlen = 0;
  status[0] = 0;
  v10 = __cxa_demangle(a1, 0, outlen, status);
  if (!v10)
  {
    return 0;
  }

  if (a4)
  {
    v11 = *a4;
    *a4 = *outlen;
    v12 = v11 - 1;
  }

  else
  {
    v12 = -1;
  }

  if (!v5)
  {
    return v10;
  }

  if (*outlen - 1 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *outlen - 1;
  }

  v14 = v10;
  memcpy(v5, v10, v13);
  *(v5 + v13) = 0;
  free(v14);
  return v5;
}

void anonymous namespace::_swift_processBacktracingSetting(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = a1;
  v27 = a2;
  __src[0] = a3;
  __src[1] = a4;
  if (a2 == 6)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "enable", 6uLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 8)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "demangle", 8uLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 11)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "interactive", 0xBuLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 5)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "color", 5uLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 7)
  {
    if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "timeout", 7uLL))
    {
      a2 = v27;
      goto LABEL_16;
    }

    v24 = *__src;
    if (__src[1] == 4 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "none", 4uLL))
    {
      dword_1ED412CB4 = 0;
      return;
    }

    v22 = 0;
    if ((__swift::__runtime::llvm::consumeSignedInteger(&v24, 0, &v22, a4) & 1) != 0 || (v6 = v22, v22 != v22))
    {
      if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: bad backtracing timeout '%.*s'\n", v4, v5, __src[1], __src[0]);
      }

      return;
    }

    v22 = __swift::__runtime::llvm::StringRef::trim(&v24, " \t\n\v\f\r", 6);
    v23 = v7;
    if (v7)
    {
      if (v7 == 1)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "s", 1uLL))
        {
          goto LABEL_200;
        }

        v7 = v23;
      }

      if (v7 != 7)
      {
        goto LABEL_71;
      }

      if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "seconds", 7uLL))
      {
        v7 = v23;
LABEL_71:
        if (v7 == 1)
        {
          if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "m", 1uLL))
          {
            goto LABEL_199;
          }

          v7 = v23;
        }

        if (v7 != 7)
        {
          goto LABEL_77;
        }

        if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "minutes", 7uLL))
        {
          v7 = v23;
LABEL_77:
          if (v7 == 1)
          {
            if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "h", 1uLL))
            {
LABEL_82:
              v6 *= 3600;
              goto LABEL_200;
            }

            v7 = v23;
          }

          if (v7 != 5 || __swift::__runtime::llvm::StringRef::compare_insensitive(&v22, "hours", 5uLL))
          {
            return;
          }

          goto LABEL_82;
        }

LABEL_199:
        v6 *= 60;
      }
    }

LABEL_200:
    dword_1ED412CB4 = v6;
    return;
  }

LABEL_16:
  if (a2 == 6)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "unwind", 6uLL))
    {
      v8 = __src[1];
      if (__src[1] == 4)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "auto", 4uLL))
        {
          _swift_backtraceSettings = 0;
          return;
        }

        v8 = __src[1];
        if (__src[1] == 4)
        {
          if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "fast", 4uLL))
          {
            _swift_backtraceSettings = 1;
            return;
          }

          v8 = __src[1];
        }
      }

      if (v8 == 7 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "precise", 7uLL))
      {
        _swift_backtraceSettings = 2;
      }

      else if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: unknown unwind algorithm '%.*s'\n", a3, a4, __src[1], __src[0]);
      }

      return;
    }

    a2 = v27;
  }

  if (a2 == 8)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "sanitize", 8uLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 6)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "preset", 6uLL))
    {
      v9 = __src[1];
      if (__src[1] == 4)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "auto", 4uLL))
        {
          dword_1ED412CD0 = -1;
          return;
        }

        v9 = __src[1];
      }

      if (v9 == 8)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "friendly", 8uLL))
        {
          dword_1ED412CD0 = 0;
          return;
        }

        v9 = __src[1];
      }

      if (v9 == 6)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "medium", 6uLL))
        {
          dword_1ED412CD0 = 1;
          return;
        }

        v9 = __src[1];
      }

      if (v9 == 4 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "full", 4uLL))
      {
        dword_1ED412CD0 = 2;
      }

      else if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: unknown backtracing preset '%.*s'\n", a3, a4, __src[1], __src[0]);
      }

      return;
    }

    a2 = v27;
  }

  if (a2 == 7)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "threads", 7uLL))
    {
      v10 = __src[1];
      if (__src[1] == 3)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "all", 3uLL))
        {
          dword_1ED412CB8 = 0;
          return;
        }

        v10 = __src[1];
      }

      if (v10 == 7 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "crashed", 7uLL))
      {
        dword_1ED412CB8 = 1;
      }

      else if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: unknown threads setting '%.*s'\n", a3, a4, __src[1], __src[0]);
      }

      return;
    }

    a2 = v27;
  }

  if (a2 == 9)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "registers", 9uLL))
    {
      v11 = __src[1];
      if (__src[1] == 4)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "none", 4uLL))
        {
          dword_1ED412CBC = 0;
          return;
        }

        v11 = __src[1];
      }

      if (v11 == 3)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "all", 3uLL))
        {
          dword_1ED412CBC = 1;
          return;
        }

        v11 = __src[1];
      }

      if (v11 == 7 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "crashed", 7uLL))
      {
        dword_1ED412CBC = 2;
        return;
      }

LABEL_132:
      if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: unknown registers setting '%.*s'\n", a3, a4, __src[1], __src[0]);
      }

      return;
    }

    a2 = v27;
  }

  if (a2 != 6)
  {
    goto LABEL_34;
  }

  if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "images", 6uLL))
  {
    v12 = __src[1];
    if (__src[1] == 4)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "none", 4uLL))
      {
        dword_1ED412CC0 = 0;
        return;
      }

      v12 = __src[1];
    }

    if (v12 == 3)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "all", 3uLL))
      {
        dword_1ED412CC0 = 1;
        return;
      }

      v12 = __src[1];
    }

    if (v12 == 9 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "mentioned", 9uLL))
    {
      dword_1ED412CC0 = 2;
      return;
    }

    goto LABEL_132;
  }

  a2 = v27;
LABEL_34:
  if (a2 == 5)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "limit", 5uLL))
    {
      LODWORD(v24) = 0;
      if (__src[1] == 4 && !__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "none", 4uLL))
      {
        dword_1ED412CC4 = -1;
      }

      else if ((__swift::__runtime::llvm::StringRef::getAsInteger<int>(__src, 0, &v24) & 1) != 0 || v24 < 1)
      {
        if ((byte_1ED412CE0 & 1) == 0)
        {
          swift::warning(0, "swift runtime: bad backtrace limit '%.*s'\n", v13, v14, __src[1], __src[0]);
        }
      }

      else
      {
        dword_1ED412CC4 = v24;
      }

      return;
    }

    a2 = v27;
  }

  if (a2 == 3)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "top", 3uLL))
    {
      LODWORD(v24) = 0;
      if ((__swift::__runtime::llvm::StringRef::getAsInteger<int>(__src, 0, &v24) & 1) != 0 || (v24 & 0x80000000) != 0)
      {
        if ((byte_1ED412CE0 & 1) == 0)
        {
          swift::warning(0, "swift runtime: bad backtrace top count '%.*s'\n", v15, v16, __src[1], __src[0]);
        }
      }

      else
      {
        dword_1ED412CC8 = v24;
      }

      return;
    }

    a2 = v27;
  }

  if (a2 == 5)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "cache", 5uLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 == 9)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "output-to", 9uLL))
    {
      v17 = __src[1];
      if (__src[1] == 4)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "auto", 4uLL))
        {
          dword_1ED412CD8 = -1;
          return;
        }

        v17 = __src[1];
      }

      if (v17 == 6)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "stdout", 6uLL))
        {
          dword_1ED412CD8 = 0;
          return;
        }

        v17 = __src[1];
        if (__src[1] == 6)
        {
          if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "stderr", 6uLL))
          {
            dword_1ED412CD8 = 2;
            return;
          }

          v17 = __src[1];
        }
      }

      v18 = malloc_type_malloc((v17 + 1), 0x100004077774924uLL);
      v19 = v18;
      if (__src[1])
      {
        memmove(v18, __src[0], __src[1]);
      }

      v17[v19] = 0;
      free(qword_1ED412CF0);
      dword_1ED412CD8 = 3;
      qword_1ED412CF0 = v19;
      return;
    }

    a2 = v27;
  }

  if (a2 == 11)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "symbolicate", 0xBuLL))
    {
      return;
    }

    a2 = v27;
  }

  if (a2 != 6)
  {
LABEL_52:
    if (a2 != 8 || __swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "warnings", 8uLL))
    {
      if ((byte_1ED412CE0 & 1) == 0)
      {
        swift::warning(0, "swift runtime: unknown backtracing setting '%.*s'\n", a3, a4, v27, v26);
      }

      return;
    }

    v21 = __src[1];
    if (__src[1] == 10)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "suppressed", 0xAuLL))
      {
        goto LABEL_198;
      }

      v21 = __src[1];
    }

    if (v21 == 8)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "disabled", 8uLL))
      {
        goto LABEL_198;
      }

      v21 = __src[1];
    }

    if (v21 != 3)
    {
      goto LABEL_181;
    }

    if (__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "off", 3uLL))
    {
      v21 = __src[1];
LABEL_181:
      if (v21 == 7)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "enabled", 7uLL))
        {
          goto LABEL_204;
        }

        v21 = __src[1];
      }

      if (v21 != 2 || __swift::__runtime::llvm::StringRef::compare_insensitive(__src, "on", 2uLL))
      {
        if ((byte_1ED412CE0 & 1) == 0)
        {
          swift::warning(0, "swift runtime: unknown warnings setting '%.*s'\n", a3, a4, __src[1], __src[0]);
        }

        return;
      }

LABEL_204:
      byte_1ED412CE0 = 0;
      return;
    }

LABEL_198:
    byte_1ED412CE0 = 1;
    return;
  }

  if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v26, "format", 6uLL))
  {
    a2 = v27;
    goto LABEL_52;
  }

  v20 = __src[1];
  if (__src[1] == 4)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "text", 4uLL))
    {
      dword_1ED412CE4 = 0;
      return;
    }

    v20 = __src[1];
    if (__src[1] == 4)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(__src, "json", 4uLL))
      {
        dword_1ED412CE4 = 1;
        return;
      }

      v20 = __src[1];
    }
  }

  swift::warning(0, "swift runtime: unknown backtrace format '%.*s'\n", a3, a4, v20, __src[0]);
}

uint64_t anonymous namespace::parseOnOffTty(unsigned __int8 *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a2;
  if (a2 == 2)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "on", 2uLL))
    {
      return 1;
    }

    a2 = v5;
  }

  if (a2 == 4)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "true", 4uLL))
    {
      return 1;
    }

    a2 = v5;
  }

  if (a2 != 3)
  {
    goto LABEL_10;
  }

  if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "yes", 3uLL))
  {
    return 1;
  }

  a2 = v5;
LABEL_10:
  if (a2 == 1)
  {
    v2 = 1;
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "y", 1uLL))
    {
      return v2;
    }

    a2 = v5;
    if (v5 == 1)
    {
      v2 = 1;
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "t", 1uLL))
      {
        return v2;
      }

      a2 = v5;
      if (v5 == 1)
      {
        v2 = 1;
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "1", 1uLL))
        {
          return v2;
        }

        a2 = v5;
      }
    }
  }

  if (a2 == 3)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "tty", 3uLL))
    {
      return 2;
    }

    a2 = v5;
  }

  if (a2 == 4)
  {
    return 2 * (__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "auto", 4uLL) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL anonymous namespace::parseBoolean(unsigned __int8 *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a2;
  if (a2 == 2)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "on", 2uLL))
    {
      return 1;
    }

    a2 = v5;
  }

  if (a2 == 4)
  {
    if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "true", 4uLL))
    {
      return 1;
    }

    a2 = v5;
  }

  if (a2 != 3)
  {
    goto LABEL_10;
  }

  if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "yes", 3uLL))
  {
    return 1;
  }

  a2 = v5;
LABEL_10:
  if (a2 != 1)
  {
    return 0;
  }

  v2 = 1;
  if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "y", 1uLL))
  {
    if (v5 == 1)
    {
      v2 = 1;
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "t", 1uLL))
      {
        return v2;
      }

      if (v5 == 1)
      {
        return __swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "1", 1uLL) == 0;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t __swift::__runtime::llvm::StringRef::trim(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  first_not_of = __swift::__runtime::llvm::StringRef::find_first_not_of(a1, a2, a3, 0);
  v7 = a1[1];
  if (first_not_of >= v7)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = first_not_of;
  }

  v10[0] = *a1 + v8;
  v10[1] = v7 - v8;
  __swift::__runtime::llvm::StringRef::find_last_not_of(v10, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
  return v10[0];
}

uint64_t __swift::__runtime::llvm::StringRef::getAsInteger<int>(uint64_t a1, __swift::__runtime::llvm::StringRef *a2, _DWORD *a3)
{
  v5 = 0;
  if (__swift::__runtime::llvm::getAsSignedInteger(*a1, *(a1 + 8), a2, &v5) || v5 != v5)
  {
    return 1;
  }

  result = 0;
  *a3 = v5;
  return result;
}

uint64_t anonymous namespace::parseSymbolication(unsigned __int8 *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a2;
  if (a2 != 2)
  {
LABEL_4:
    if (a2 == 4)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "true", 4uLL))
      {
        return 2;
      }

      a2 = v5;
    }

    if (a2 == 3)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "yes", 3uLL))
      {
        return 2;
      }

      a2 = v5;
    }

    if (a2 == 1)
    {
      if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "y", 1uLL))
      {
        return 2;
      }

      a2 = v5;
      if (v5 == 1)
      {
        if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "t", 1uLL))
        {
          return 2;
        }

        a2 = v5;
        if (v5 == 1)
        {
          if (!__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "1", 1uLL))
          {
            return 2;
          }

          a2 = v5;
        }
      }
    }

    if (a2 != 4)
    {
      return 0;
    }

    if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "full", 4uLL))
    {
      if (v5 == 4)
      {
        return __swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "fast", 4uLL) == 0;
      }

      return 0;
    }

    return 2;
  }

  v2 = 2;
  if (__swift::__runtime::llvm::StringRef::compare_insensitive(&v4, "on", 2uLL))
  {
    a2 = v5;
    goto LABEL_4;
  }

  return v2;
}

void _GLOBAL__sub_I_Backtrace_cpp()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    _GLOBAL__sub_I_Backtrace_cpp_cold_1();
  }

  v0 = swift::runtime::environment::SWIFT_BACKTRACE_variable;
  if (issetugid())
  {
    dword_1ED412CA4 = 0;
  }

  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    dword_1ED412CA4 = 0;
  }

  if (v0)
  {
    v3 = *v0;
    if (*v0)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = 0;
        v7 = 1;
        v8 = v4;
        v9 = v0;
LABEL_11:
        v4 = v8;
        v10 = v9 + 1;
        v2 = (v9 - v8);
        v8 = v9 + 1;
        while (1)
        {
          v12 = v10;
          if (v6)
          {
            break;
          }

          if (v3 == 61)
          {
            v7 = 0;
            v5 = v8 - 1;
            v3 = *v8;
            v6 = 1;
            v9 = v8;
            if (*v8)
            {
              goto LABEL_11;
            }

            v5 = v8 - 1;
            v4 = v8;
LABEL_22:
            goto LABEL_23;
          }

LABEL_13:
          v11 = *v8++;
          v3 = v11;
          ++v2;
          ++v10;
          if (!v11)
          {
            if (v7)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        if (v3 != 44)
        {
          goto LABEL_13;
        }

        v3 = *v8;
        v0 = v8;
      }

      while (*v8);
    }
  }

LABEL_23:
  if (dword_1ED412CA4 != -1)
  {
    if (!dword_1ED412CA4)
    {
      return;
    }

    if ((byte_1ED412CE0 & 1) == 0)
    {
      swift::warning(0, "swift runtime: backtrace-on-crash is not supported on this platform.\n", v1, v2);
    }
  }

  dword_1ED412CA4 = 0;
}

unint64_t _swift_formatAddress(unint64_t result, unsigned __int8 *a2)
{
  a2[17] = 0;
  v2 = a2 + 18;
  while (1)
  {
    v3 = v2 - 1;
    if (v2 - 1 <= a2)
    {
      break;
    }

    v4 = (result & 0xF) + 87;
    if ((result & 0xF | 0x30) <= 0x39)
    {
      v4 = result & 0xF | 0x30;
    }

    *(v2 - 2) = v4;
    --v2;
    v5 = result > 0xF;
    result >>= 4;
    if (!v5)
    {
      if (v3 - 1 > a2)
      {
        do
        {
          *a2++ = v4;
          v6 = *v3++;
          v4 = v6;
        }

        while (v6);
        *a2 = 0;
      }

      return result;
    }
  }

  return result;
}

unint64_t _swift_formatUnsigned(unint64_t result, unsigned __int8 *a2)
{
  a2[21] = 0;
  v2 = a2 + 22;
  while (1)
  {
    v3 = v2 - 1;
    if (v2 - 1 <= a2)
    {
      break;
    }

    v4 = (result % 0xA) | 0x30;
    *(v2 - 2) = (result % 0xA) | 0x30;
    --v2;
    v5 = result > 9;
    result = result / 0xAuLL;
    if (!v5)
    {
      if (v3 - 1 > a2)
      {
        v6 = v4;
        do
        {
          *a2++ = v6;
          v7 = *v3++;
          v6 = v7;
        }

        while (v7);
        *a2 = 0;
      }

      return result;
    }
  }

  return result;
}

unint64_t swift::SwiftError::getType(swift::SwiftError *this, const void *a2)
{
  Class = swift::_swift_getClass(this, a2);
  if (qword_1ED426570 != -1)
  {
    v6 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v6;
  }

  if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    return *(this + 5);
  }

  v4 = objc_opt_class();

  return swift_getObjCClassMetadata(v4);
}

uint64_t swift::getNSErrorClass(swift *this)
{
  if (qword_1ED426560 != -1)
  {
    [(__SwiftNativeNSError *)this classForCoder];
  }

  return swift::getNSErrorClass(void)::$_0::operator() const(void)::TheLazy;
}

BOOL swift::SwiftError::isPureNSError(swift::SwiftError *this, const void *a2)
{
  Class = swift::_swift_getClass(this, a2);
  if (qword_1ED426570 != -1)
  {
    v4 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v4;
  }

  return Class != getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy;
}

unint64_t swift::SwiftError::getHashableBaseType(atomic_ullong *this, const void *a2)
{
  Class = swift::_swift_getClass(this, a2);
  if (qword_1ED426570 != -1)
  {
    v11 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v11;
  }

  if (Class != getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    if (qword_1EA79EB20 != -1)
    {
      swift::SwiftError::getHashableBaseType(Class);
    }

    v4 = &swift::getNSErrorMetadata(void)::$_0::operator() const(void)::TheLazy;
    return *v4;
  }

  explicit = atomic_load_explicit(this + 7, memory_order_acquire);
  if (explicit == 1)
  {
    result = 0;
  }

  else
  {
    result = explicit;
  }

  if (!explicit)
  {
    v7 = this[5];
    v4 = this + 5;
    HashableBaseType = swift::hashable_support::findHashableBaseType(v7);
    v9 = 0;
    if (HashableBaseType)
    {
      v10 = HashableBaseType;
    }

    else
    {
      v10 = 1;
    }

    atomic_compare_exchange_strong(v4 + 2, &v9, v10);
    return *v4;
  }

  return result;
}

unint64_t swift::SwiftError::getHashableConformance(swift::SwiftError *this, const void *a2)
{
  Class = swift::_swift_getClass(this, a2);
  if (qword_1ED426570 != -1)
  {
    v11 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v11;
  }

  if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    explicit = atomic_load_explicit(this + 8, memory_order_acquire);
    if (explicit == 1)
    {
      result = 0;
    }

    else
    {
      result = explicit;
    }

    if (!explicit)
    {
      result = swift_conformsToProtocolCommon(*(this + 5), &protocol descriptor for Hashable);
      v9 = 0;
      if (result)
      {
        v10 = result;
      }

      else
      {
        v10 = 1;
      }

      atomic_compare_exchange_strong(this + 8, &v9, v10);
    }
  }

  else
  {
    gotLoadHelper_x19___sSo8NSObjectCSH10ObjectiveCMc(v4);
    v5 = *(this + 55);
    CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v5);

    return swift::_getWitnessTable(v5, CanonicalTypeMetadata, 0);
  }

  return result;
}

uint64_t swift::getNSErrorMetadata(swift *this)
{
  if (qword_1EA79EB20 != -1)
  {
    swift::SwiftError::getHashableBaseType(this);
  }

  return swift::getNSErrorMetadata(void)::$_0::operator() const(void)::TheLazy;
}

atomic_ullong *swift::dynamicCastValueToNSError(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = _getErrorEmbeddedNSErrorIndirect<A>(_:)(a1, a2, a3);
  if (v8)
  {
    v9 = v8;
    if ((a4 & 2) != 0)
    {
      (*(*(a2 - 8) + 8))(a1, a2);
    }
  }

  else
  {
    if (qword_1ED426570 != -1)
    {
      [(__SwiftNativeNSError *)0 dealloc];
    }

    v10 = *(a2 - 8);
    v11 = *(v10 + 80) & 0xB8;
    Instance = class_createInstance(getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy, *(v10 + 64) + v11 + 32);
    v9 = Instance;
    Instance[5] = a2;
    Instance[6] = a3;
    atomic_store(0, Instance + 7);
    atomic_store(0, Instance + 8);
    if (a1)
    {
      v14 = Instance + v11;
      v15 = *(a2 - 8);
      if ((a4 & 2) != 0)
      {
        (*(v15 + 32))(v14 + 72, a1, a2);
      }

      else
      {
        (*(v15 + 16))(v14 + 72, a1, a2);
      }
    }

    _swift_stdlib_bridgeErrorToNSError(v9, v13);
  }

  return v9;
}

void *swift_allocError(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1ED426570 != -1)
  {
    [(__SwiftNativeNSError *)a1 dealloc];
  }

  v8 = *(a1 - 8);
  v9 = *(v8 + 80) & 0xB8;
  result = class_createInstance(getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy, *(v8 + 64) + v9 + 32);
  result[5] = a1;
  result[6] = a2;
  atomic_store(0, result + 7);
  atomic_store(0, result + 8);
  v11 = result + v9;
  if (a3)
  {
    v12 = result;
    v13 = *(a1 - 8);
    if (a4)
    {
      (*(v13 + 32))(v11 + 72, a3, a1);
    }

    else
    {
      (*(v13 + 16))(v11 + 72, a3, a1);
    }

    return v12;
  }

  return result;
}

atomic_ullong *_swift_stdlib_bridgeErrorToNSError(atomic_ullong *a1, const void *a2)
{
  v26 = a1;
  if (!atomic_load_explicit(a1 + 3, memory_order_acquire))
  {
    v3 = v26;
    Class = swift::_swift_getClass(v26, a2);
    if (qword_1ED426570 != -1)
    {
      v23 = Class;
      [(__SwiftNativeNSError *)Class dealloc];
      Class = v23;
    }

    if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
    {
      v6 = (v26 + *(*(*(v26 + 5) - 8) + 80) + 72) & ~*(*(*(v26 + 5) - 8) + 80);
    }

    else
    {
      v6 = &v26;
    }

    v7 = swift::_swift_getClass(v26, v5);
    if (qword_1ED426570 != -1)
    {
      v24 = v7;
      [(__SwiftNativeNSError *)v7 dealloc];
      v7 = v24;
    }

    if (v7 == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
    {
      ObjCClassMetadata = *(v3 + 5);
    }

    else
    {
      v9 = objc_opt_class();
      ObjCClassMetadata = swift_getObjCClassMetadata(v9);
    }

    v11 = swift::_swift_getClass(v3, v8);
    if (qword_1ED426570 != -1)
    {
      v25 = v11;
      [(__SwiftNativeNSError *)v11 dealloc];
      v11 = v25;
    }

    if (v11 == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
    {
      WitnessTable = *(v3 + 6);
    }

    else
    {
      gotLoadHelper_x21___sSo10CFErrorRefas5Error10FoundationMc(v12);
      v13 = *(v3 + 462);
      CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v13);
      WitnessTable = swift::_getWitnessTable(v13, CanonicalTypeMetadata, 0);
    }

    v16 = _getErrorDomainNSString<A>(_:)(v6, ObjCClassMetadata, WitnessTable);
    v17 = _getErrorCode<A>(_:)(v6, ObjCClassMetadata, WitnessTable);
    v18 = _getErrorUserInfoNSDictionary<A>(_:)(v6, ObjCClassMetadata, WitnessTable);
    if (!v18)
    {
      if (qword_1EA79EB30 != -1)
      {
        _swift_stdlib_bridgeErrorToNSError_cold_4();
      }

      v18 = _swift_stdlib_bridgeErrorToNSError::$_0::operator() const(void)::TheLazy;
    }

    v19 = 0;
    v20 = v26;
    *(v26 + 2) = v17;
    atomic_compare_exchange_strong(v20 + 4, &v19, v18);
    if (v19)
    {
    }

    v21 = 0;
    atomic_compare_exchange_strong(v26 + 3, &v21, v16);
    if (v21)
    {
    }
  }

  return a1;
}

unint64_t swift::SwiftError::getErrorConformance(swift::SwiftError *this, const void *a2)
{
  Class = swift::_swift_getClass(this, a2);
  if (qword_1ED426570 != -1)
  {
    v8 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v8;
  }

  if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    return *(this + 6);
  }

  gotLoadHelper_x19___sSo10CFErrorRefas5Error10FoundationMc(v4);
  v5 = *(this + 462);
  CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v5);

  return swift::_getWitnessTable(v5, CanonicalTypeMetadata, 0);
}

unint64_t swift_getErrorValue(void *a1, void *a2, unint64_t *a3)
{
  Class = swift::_swift_getClass(a1, a2);
  if (qword_1ED426570 != -1)
  {
    v15 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v15;
  }

  if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    ObjCClassMetadata = a1[5];
  }

  else
  {
    v8 = objc_opt_class();
    ObjCClassMetadata = swift_getObjCClassMetadata(v8);
  }

  a3[1] = ObjCClassMetadata;
  v10 = swift::_swift_getClass(a1, v7);
  if (qword_1ED426570 != -1)
  {
    v16 = v10;
    [(__SwiftNativeNSError *)v10 dealloc];
    v10 = v16;
  }

  if (v10 == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    *a3 = (a1 + *(*(a1[5] - 8) + 80) + 72) & ~*(*(a1[5] - 8) + 80);
    result = a1[6];
  }

  else
  {
    *a2 = a1;
    *a3 = a2;
    gotLoadHelper_x20___sSo10CFErrorRefas5Error10FoundationMc(v11);
    v12 = a1[462];
    CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(v12);
    result = swift::_getWitnessTable(v12, CanonicalTypeMetadata, 0);
  }

  a3[2] = result;
  return result;
}

uint64_t swift::tryDynamicCastNSErrorObjectToValue(uint64_t a1, void *a2, swift *a3, uint64_t a4)
{
  v22 = a1;
  if (qword_1ED426560 == -1)
  {
    if (a1 >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v18 = a2;
  v19 = a4;
  [(__SwiftNativeNSError *)a1 classForCoder];
  a4 = v19;
  a2 = v18;
  if (a1 < 1)
  {
    return 0;
  }

LABEL_3:
  v6 = a4;
  v7 = a2;
  if (qword_1ED426580 != -1)
  {
    swift::tryDynamicCastNSErrorObjectToValue(a1);
  }

  v8 = isKindOfClass(swift::HeapObject *,objc_class *)::$_0::operator() const(void)::TheLazy;
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel_methodSignatureForSelector_) == v8 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = swift::_swift_getClass(a1, v10);
  if (qword_1ED426570 != -1)
  {
    v20 = v11;
    [(__SwiftNativeNSError *)v11 dealloc];
    v11 = v20;
  }

  if (v11 != getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    gotLoadHelper_x16___s10Foundation26_ObjectiveCBridgeableErrorMp(v12);
    if (swift_conformsToProtocolCommon(a3, *(v13 + 3824)) && (_s10Foundation21_bridgeNSErrorToError_3outSbSo0C0C_SpyxGtAA021_ObjectiveCBridgeableE0RzlF_delayInitStub(v14) & 1) != 0)
    {
      if ((v6 & 2) != 0)
      {
      }

      return 1;
    }

    if (*a3 == 771 && swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(a3) == 2)
    {
      *v7 = a1;
      return 1;
    }

    return 0;
  }

  v16 = protocol descriptor for Error;
  if (!protocol descriptor for Error)
  {
    v16 = 0;
  }

  v21 = v16;
  ExistentialTypeMetadata = swift_getExistentialTypeMetadata(1u, 0, 1, &v21);
  return swift_dynamicCast(v7, &v22, ExistentialTypeMetadata, a3, v6);
}

uint64_t swift::tryDynamicCastNSErrorToValue(void *a1, uint64_t *a2, uint64_t *a3, swift *a4, uint64_t a5)
{
  v5 = *a3;
  if (*a3 > 0x7FF)
  {
    LODWORD(v5) = 0;
  }

  if (!v5 || v5 == 773 || v5 == 515)
  {
    return swift::tryDynamicCastNSErrorObjectToValue(*a2, a1, a4, a5);
  }

  else
  {
    return 0;
  }
}

Class swift::getNSErrorClass(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(Class *a1)
{
  result = objc_lookUpClass("NSError");
  *a1 = result;
  return result;
}

unint64_t swift::getNSErrorMetadata(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(unint64_t *a1)
{
  if (qword_1ED426560 != -1)
  {
    [(__SwiftNativeNSError *)a1 classForCoder];
  }

  result = swift_getObjCClassMetadata(swift::getNSErrorClass(void)::$_0::operator() const(void)::TheLazy);
  *a1 = result;
  return result;
}

objc_class *getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(objc_class **a1)
{
  if (qword_1ED426560 != -1)
  {
    [(__SwiftNativeNSError *)a1 classForCoder];
  }

  v2 = swift::getNSErrorClass(void)::$_0::operator() const(void)::TheLazy;
  result = objc_opt_class();
  v4 = result;
  if (v2)
  {
    result = class_setSuperclass(result, v2);
  }

  *a1 = v4;
  return result;
}

uint64_t _swift_stdlib_bridgeErrorToNSError::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  result = [(objc_class *)objc_lookUpClass("NSDictionary") dictionary];
  *a1 = result;
  return result;
}

IMP isKindOfClass(swift::HeapObject *,objc_class *)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(IMP *a1)
{
  v2 = objc_lookUpClass("NSProxy");
  result = class_getMethodImplementation(v2, sel_methodSignatureForSelector_);
  *a1 = result;
  return result;
}

Class swift::_swift_getClass(unint64_t this, const void *a2)
{
  if ((this & 0x8000000000000000) != 0)
  {
    return object_getClass(this);
  }

  else
  {
    return (*this & 0x7FFFFFFFFFFFF8);
  }
}

Class swift_getObjCClassFromObject(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    Class = object_getClass(a1);
    if (Class)
    {
      goto LABEL_5;
    }
  }

  else
  {
    Class = *a1 & 0x7FFFFFFFFFFFF8;
    if (Class)
    {
LABEL_5:
      while ((*(Class + 32) & 2) != 0)
      {
        if (*(Class + 64))
        {
          return Class;
        }

        if (!*(Class + 8))
        {
          break;
        }

        Class = *(Class + 8);
      }
    }
  }

  Class = objc_opt_class();
  v3 = object_getClass(a1);
  if (!class_isMetaClass(v3))
  {
    return Class;
  }

  return object_getClass(Class);
}

unint64_t swift_getObjectType(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    result = object_getClass(a1);
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *a1 & 0x7FFFFFFFFFFFF8;
    if (result)
    {
LABEL_5:
      while ((*(result + 32) & 2) != 0)
      {
        if (*(result + 64))
        {
          return result;
        }

        if (!*(result + 8))
        {
          break;
        }

        result = *(result + 8);
      }
    }
  }

  v3 = objc_opt_class();
  Class = object_getClass(a1);
  if (class_isMetaClass(Class))
  {
    v5 = object_getClass(v3);
  }

  else
  {
    v5 = v3;
  }

  return swift_getObjCClassMetadata(v5);
}

void *swift::getDescription(uint64_t a1, Class *a2)
{
  Description = swift_stdlib_getDescription(a1, a2);
  (*(*(a2 - 1) + 1))(a1, a2);

  return Description;
}

double swift::Lazy<std::unordered_set<objc_class *>>::defaultInitCallback(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t swift::usesNativeSwiftReferenceCounting(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a1 + 40) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _swift_objcClassUsesNativeSwiftReferenceCounting(uint64_t a1)
{
  if (*a1 == 773)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a1 + 40) >> 1) & 1;
  }

  return 0;
}

uint64_t swift_unknownObjectRetain_n(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return a1;
  }

  v3 = a2;
  if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    if (a2 >= 1)
    {
      do
      {
        v4 = a1;
        --v3;
      }

      while (v3);
    }

    return a1;
  }

  return swift_retain_n(a1, a2);
}

void swift_unknownObjectRelease_n(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    v2 = a2;
    if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {

      a1, a2;
    }

    else if (a2 >= 1)
    {
      do
      {

        --v2;
      }

      while (v2);
    }
  }
}

id swift_unknownObjectRetain(id result)
{
  if (result >= 1)
  {
    if ((*((*result & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*result & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void swift_unknownObjectRelease(id a1)
{
  if (a1 >= 1)
  {
    if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      a1;
    }

    else
    {
    }
  }
}

uint64_t swift_nonatomic_unknownObjectRetain_n(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return a1;
  }

  v3 = a2;
  if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    if (a2 >= 1)
    {
      do
      {
        v4 = a1;
        --v3;
      }

      while (v3);
    }

    return a1;
  }

  return swift_nonatomic_retain_n(a1, a2);
}

void swift_nonatomic_unknownObjectRelease_n(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    v2 = a2;
    if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {

      swift_nonatomic_release_n(a1, a2);
    }

    else if (a2 >= 1)
    {
      do
      {

        --v2;
      }

      while (v2);
    }
  }
}

id swift_nonatomic_unknownObjectRetain(id result)
{
  if (result >= 1)
  {
    if ((*((*result & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*result & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      return swift_nonatomic_retain(result);
    }

    else
    {
      return result;
    }
  }

  return result;
}

void swift_nonatomic_unknownObjectRelease(id a1)
{
  if (a1 >= 1)
  {
    if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      a1;
    }

    else
    {
    }
  }
}

unint64_t swift_bridgeObjectRetain(unint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    if (result >> 62)
    {
      return objcRetainAndReturn(result);
    }

    else
    {
      return (result & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x1(int a1, unint64_t a2)
{
  result = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 >> 62)
    {
      return objcRetainAndReturn(a2);
    }

    else
    {

      return (a2 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x2(int a1, int a2, unint64_t a3)
{
  result = a3;
  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a3 >> 62)
    {
      return objcRetainAndReturn(a3);
    }

    else
    {

      return (a3 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x3(int a1, int a2, int a3, unint64_t a4)
{
  result = a4;
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (a4 >> 62)
    {
      return objcRetainAndReturn(a4);
    }

    else
    {

      return (a4 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x4(int a1, int a2, int a3, int a4, unint64_t a5)
{
  result = a5;
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 >> 62)
    {
      return objcRetainAndReturn(a5);
    }

    else
    {

      return (a5 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x5(int a1, int a2, int a3, int a4, int a5, unint64_t a6)
{
  result = a6;
  if ((a6 & 0x8000000000000000) == 0)
  {
    if (a6 >> 62)
    {
      return objcRetainAndReturn(a6);
    }

    else
    {

      return (a6 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x6(int a1, int a2, int a3, int a4, int a5, int a6, unint64_t a7)
{
  result = a7;
  if ((a7 & 0x8000000000000000) == 0)
  {
    if (a7 >> 62)
    {
      return objcRetainAndReturn(a7);
    }

    else
    {

      return (a7 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, unint64_t a8)
{
  result = a8;
  if ((a8 & 0x8000000000000000) == 0)
  {
    if (a8 >> 62)
    {
      return objcRetainAndReturn(a8);
    }

    else
    {

      return (a8 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x8@<X0>(unint64_t a1@<X8>)
{
  result = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 >> 62)
    {
      return objcRetainAndReturn(a1);
    }

    else
    {

      return (a1 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x9()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x10()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x11()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x12()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x13()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x14()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x15()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x19()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x20()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x21()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x22()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x23()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x24()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x25()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x26()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x27()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

atomic_ullong *swift_bridgeObjectRetain_x28()
{
  result = v0;
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
      return objcRetainAndReturn(v0);
    }

    else
    {

      return (v0 & 0xFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

unint64_t swift_nonatomic_bridgeObjectRetain(unint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (result >> 62)
    {
      v2 = (result & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      swift_nonatomic_retain(result & 0xFFFFFFFFFFFFFF8);
    }

    return v1;
  }

  return result;
}

void swift_bridgeObjectRelease(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 >> 62)
    {
    }

    else
    {
      a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x1(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 >> 62)
    {
    }

    else
    {
      a2 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a3 >> 62)
    {
    }

    else
    {
      a3 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x3(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (a4 >> 62)
    {
    }

    else
    {
      a4 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    if (a5 >> 62)
    {
    }

    else
    {
      a5 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    if (a6 >> 62)
    {
    }

    else
    {
      a6 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if ((a7 & 0x8000000000000000) == 0)
  {
    if (a7 >> 62)
    {
    }

    else
    {
      a7 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((a8 & 0x8000000000000000) == 0)
  {
    if (a8 >> 62)
    {
    }

    else
    {
      a8 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x8(unint64_t a1@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 >> 62)
    {
    }

    else
    {
      a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x9()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x10()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x11()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x12()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x13()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x14()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x15()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x19()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x20()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x21()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x22()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x23()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x24()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x25()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x26()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x27()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_bridgeObjectRelease_x28()
{
  if ((v0 & 0x8000000000000000) == 0)
  {
    if (v0 >> 62)
    {
    }

    else
    {
      v0 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

void swift_nonatomic_bridgeObjectRelease(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 >> 62)
    {
    }

    else
    {
      swift_nonatomic_release(a1 & 0xFFFFFFFFFFFFFF8);
    }
  }
}

unint64_t swift_bridgeObjectRetain_n(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = a2;
    if (a1 >> 62)
    {
      if (a2 >= 1)
      {
        do
        {
          v4 = (a1 & 0xFFFFFFFFFFFFFF8);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      swift_retain_n(a1 & 0xFFFFFFFFFFFFFF8, a2);
    }
  }

  return a1;
}

void swift_bridgeObjectRelease_n(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = a2;
    if (a1 >> 62)
    {
      if (a2 >= 1)
      {
        do
        {

          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;

      v4, a2;
    }
  }
}

unint64_t swift_nonatomic_bridgeObjectRetain_n(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = a2;
    if (a1 >> 62)
    {
      if (a2 >= 1)
      {
        do
        {
          v4 = (a1 & 0xFFFFFFFFFFFFFF8);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      swift_nonatomic_retain_n(a1 & 0xFFFFFFFFFFFFFF8, a2);
    }
  }

  return a1;
}

void swift_nonatomic_bridgeObjectRelease_n(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = a2;
    if (a1 >> 62)
    {
      if (a2 >= 1)
      {
        do
        {

          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;

      swift_nonatomic_release_n(v4, a2);
    }
  }
}

uint64_t *swift_unknownObjectUnownedInit(uint64_t *result, uint64_t a2, const char *a3, char *a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0 && (*((*a2 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a2 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      *result = a2;
      v7 = result;
      swift_unownedRetain(a2, a2, a3, a4);
      return v7;
    }

    else
    {
      v4 = result;
      v6 = malloc_type_malloc(8uLL, 0x99AD2E2CuLL);
      objc_initWeak(v6, a2);
      result = v4;
      *v4 = v6 | 1;
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

atomic_ullong **swift_unknownObjectUnownedAssign(atomic_ullong **a1, uint64_t a2, const char *a3, char *a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0 && (*((*a2 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a2 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
    {
      v11 = *a1;
      if (*a1)
      {
        v13 = (v11 & 0xFFFFFFFFFFFFFFFELL);
        if (v13)
        {
          v14 = a2;
          objc_destroyWeak(v13);
          free(v13);
          a2 = v14;
        }

        *a1 = a2;
        swift_unownedRetain(a2, a2, a3, a4);
      }

      else if (v11 != a2)
      {
        v12 = a2;
        swift_unownedRetain(a2, a2, a3, a4);
        *a1 = v12;
        swift_unownedRelease(v11);
      }
    }

    else
    {
      v5 = *a1;
      if (*a1)
      {
        objc_storeWeak((v5 & 0xFFFFFFFFFFFFFFFELL), a2);
      }

      else
      {
        v6 = a2;
        swift_unownedRelease(v5);
        v7 = malloc_type_malloc(8uLL, 0x99AD2E2CuLL);
        objc_initWeak(v7, v6);
        *a1 = (v7 | 1);
      }
    }
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      if (v8)
      {
        v9 = (v8 & 0xFFFFFFFFFFFFFFFELL);
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          objc_destroyWeak((v8 & 0xFFFFFFFFFFFFFFFELL));
          free(v9);
        }
      }

      else
      {
        swift_unownedRelease(v8);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void swift_unknownObjectUnownedDestroy(atomic_ullong **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (v1)
    {
      v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
      if ((v1 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        objc_destroyWeak((v1 & 0xFFFFFFFFFFFFFFFELL));

        free(v2);
      }
    }

    else
    {

      swift_unownedRelease(v1);
    }
  }
}

atomic_ullong *swift_unknownObjectUnownedLoadStrong(atomic_ullong **a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (v4)
  {
    result = objc_loadWeakRetained((v4 & 0xFFFFFFFFFFFFFFFELL));
    if (!result)
    {
      swift::swift_abortRetainUnowned(0, v6, v7, v8);
    }
  }

  else
  {
    swift_unownedRetainStrong(*a1, a2, a3, a4);
    return v4;
  }

  return result;
}

uint64_t swift_unknownObjectUnownedTakeStrong(uint64_t *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  if (*a1)
  {
    if (v4)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
      WeakRetained = objc_loadWeakRetained((v4 & 0xFFFFFFFFFFFFFFFELL));
      if (!WeakRetained)
      {
        swift::swift_abortRetainUnowned(0, v7, v8, v9);
      }

      v4 = WeakRetained;
      if (v5)
      {
        objc_destroyWeak(v5);
        free(v5);
      }
    }

    else
    {
      swift_unownedRetainStrongAndRelease(*a1, a2, a3, a4);
    }
  }

  return v4;
}

uint64_t *swift_unknownObjectUnownedCopyInit(uint64_t *result, uint64_t *a2, const char *a3, char *a4)
{
  v4 = *a2;
  if (*a2)
  {
    if (v4)
    {
      v6 = result;
      v7 = malloc_type_malloc(8uLL, 0x99AD2E2CuLL);
      objc_copyWeak(v7, (v4 & 0xFFFFFFFFFFFFFFFELL));
      result = v6;
      *v6 = v7 | 1;
    }

    else
    {
      *result = v4;
      v5 = result;
      swift_unownedRetain(v4, a2, a3, a4);
      return v5;
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

atomic_ullong **swift_unknownObjectUnownedCopyAssign(atomic_ullong **a1, uint64_t *a2, const char *a3, char *a4)
{
  if (a1 != a2)
  {
    v6 = *a2;
    v7 = *a1;
    if (*a2)
    {
      if (v7)
      {
        objc_destroyWeak((v7 & 0xFFFFFFFFFFFFFFFELL));
        objc_copyWeak((*a1 & 0xFFFFFFFFFFFFFFFELL), (*a2 & 0xFFFFFFFFFFFFFFFELL));
      }

      else
      {
        swift_unownedRelease(*a1);
        v8 = *a2;
        v9 = malloc_type_malloc(8uLL, 0x99AD2E2CuLL);
        objc_copyWeak(v9, (v8 & 0xFFFFFFFFFFFFFFFELL));
        *a1 = (v9 | 1);
      }
    }

    else if (v7)
    {
      v10 = (v7 & 0xFFFFFFFFFFFFFFFELL);
      if (v10)
      {
        objc_destroyWeak(v10);
        free(v10);
        v6 = *a2;
      }

      *a1 = v6;
      swift_unownedRetain(v6, a2, a3, a4);
    }

    else if (v6 != v7)
    {
      *a1 = v6;
      swift_unownedRetain(v6, a2, a3, a4);
      swift_unownedRelease(v7);
    }
  }

  return a1;
}

atomic_ullong **swift_unknownObjectUnownedTakeAssign(atomic_ullong **result, atomic_ullong **a2)
{
  v3 = *result;
  if (*result)
  {
    if (v3)
    {
      v5 = (v3 & 0xFFFFFFFFFFFFFFFELL);
      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v6 = result;
        objc_destroyWeak((v3 & 0xFFFFFFFFFFFFFFFELL));
        free(v5);
        result = v6;
      }
    }

    else
    {
      v4 = result;
      swift_unownedRelease(*result);
      result = v4;
    }
  }

  *result = *a2;
  return result;
}

BOOL swift_unknownObjectUnownedIsEqual(const void **a1, id a2, const char *a3, char *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return a2 == 0;
  }

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 & 0xFFFFFFFFFFFFFFFELL));
    v8 = WeakRetained == a2;

    return v8;
  }

  else if (v4 == a2)
  {
    swift_unownedCheck(a2, a2, a3, a4);
    return 1;
  }

  else
  {
    return 0;
  }
}

id *swift_unknownObjectWeakInit(id *result, atomic_ullong *a2)
{
  if (a2 <= 0)
  {
    *result = a2;
  }

  else if ((*((*a2 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) != 0 && (*((*a2 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
  {
    v3 = result;
    v4 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference(a2 + 1, a2);
    result = v3;
    if (v4)
    {
      v5 = v4 | 1;
    }

    else
    {
      v5 = 0;
    }

    *v3 = v5;
  }

  else
  {
    v2 = result;
    objc_initWeak(result, a2);
    return v2;
  }

  return result;
}

void swift::WeakReference::unknownAssign(id *this, atomic_ullong *obj)
{
  if (obj <= 0)
  {
    swift::WeakReference::unknownDestroy(this);
    *this = obj;
    return;
  }

  if ((*((*obj & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0)
  {
    v4 = 0;
    if (*this)
    {
      _ZF = (*this & 0x8000000000000001) == 1;
    }

    else
    {
      _ZF = 1;
    }

    v6 = _ZF;
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_25:
    if ((v4 & 1) == 0)
    {

      objc_storeWeak(this, obj);
      return;
    }

    goto LABEL_29;
  }

  if (*this)
  {
    v7 = (*this & 0x8000000000000001) == 1;
  }

  else
  {
    v7 = 1;
  }

  v6 = v7;
  if (v6 == 1 && (*((*obj & 0x7FFFFFFFFFFFF8) + 0x28) & 2) != 0)
  {
    v25 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference(obj + 1, obj);
    v26 = v25 | 1;
    if (!v25)
    {
      v26 = 0;
    }

    v27 = *this;
    *this = v26;
    if ((v27 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X8 = 0;
      _X9 = 0;
      __asm { CASP            X8, X9, X8, X9, [X10] }

      _X6 = _X8;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X10] }

      if (_X4 != _X8)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X8] }

          v37 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v37);
      }
    }

    return;
  }

  v4 = (*((*obj & 0x7FFFFFFFFFFFF8) + 0x28) >> 1) & 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if (v6)
  {
    v9 = *this;
    *this = 0;
    if ((v9 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X8 = 0;
      _X9 = 0;
      __asm { CASP            X8, X9, X8, X9, [X10] }

      _X6 = _X8;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X10] }

      if (_X4 != _X8)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X8] }

          v22 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v22);
      }
    }

    if (v4)
    {
      goto LABEL_35;
    }
  }

  else
  {
    objc_destroyWeak(this);
    if (v4)
    {
LABEL_35:
      v23 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference(obj + 1, obj);
      v24 = v23 | 1;
      if (!v23)
      {
        v24 = 0;
      }

      *this = v24;
      return;
    }
  }

  objc_initWeak(this, obj);
}

id swift_unknownObjectWeakLoadStrong(id *a1)
{
  v2 = *a1;
  v3 = *a1 & 0x8000000000000001;
  if (*a1)
  {
    _ZF = v3 == 1;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v5 = v2 & 0x7FFFFFFFFFFFFFFELL;
    if ((v2 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X4 = 0;
      _X5 = 0;
      __asm { CASP            X4, X5, X4, X5, [X0] }

      if ((_X4 & 0x100000000) == 0)
      {
        _X3 = 0;
        while (1)
        {
          _X6 = _X4 + 0x200000000;
          if (_X4 + 0x200000000 < 0)
          {
            break;
          }

          v14 = _X3 | (v3 << 32);
          _X3 = v14;
          __asm { CASP            X2, X3, X6, X7, [X0] }

          if (_X2 == _X4)
          {
            return *v5;
          }

          v3 = HIDWORD(v14);
          _X4 = _X2;
          if ((_X2 & 0x100000000) != 0)
          {
            return 0;
          }
        }

        if (_X4 == -1 || swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((v5 + 16), _X4, (_X3 | (v3 << 32)), _X3))
        {
          return *v5;
        }
      }
    }

    return 0;
  }

  else
  {

    return objc_loadWeakRetained(a1);
  }
}

id swift_unknownObjectWeakTakeStrong(id *a1)
{
  v1 = *a1;
  v2 = *a1 & 0x8000000000000001;
  if (*a1)
  {
    _ZF = v2 == 1;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    *a1 = 0;
    v4 = (v1 & 0x7FFFFFFFFFFFFFFELL);
    if ((v1 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X4 = 0;
      _X5 = 0;
      __asm { CASP            X4, X5, X4, X5, [X19] }

      if ((_X4 & 0x100000000) == 0)
      {
        _X3 = 0;
        while (1)
        {
          _X6 = _X4 + 0x200000000;
          if (_X4 + 0x200000000 < 0)
          {
            break;
          }

          v13 = _X3 | (v2 << 32);
          _X3 = v13;
          __asm { CASP            X2, X3, X6, X7, [X19] }

          if (_X2 == _X4)
          {
            goto LABEL_16;
          }

          v2 = HIDWORD(v13);
          _X4 = _X2;
          if ((_X2 & 0x100000000) != 0)
          {
            goto LABEL_12;
          }
        }

        if (_X4 == -1 || (v17 = v1 & 0x7FFFFFFFFFFFFFFELL, v18 = swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((v4 + 2), _X4, (_X3 | (v2 << 32)), _X3), v4 = v17, v18))
        {
LABEL_16:
          WeakRetained = *v4;
          goto LABEL_17;
        }
      }

LABEL_12:
      WeakRetained = 0;
LABEL_17:
      _X8 = 0;
      _X9 = 0;
      __asm { CASP            X8, X9, X8, X9, [X19] }

      _X6 = _X8;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X19] }

      if (_X4 != _X8)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X19] }

          v28 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v28);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1);
    objc_destroyWeak(a1);
  }

  return WeakRetained;
}

void swift::WeakReference::unknownDestroy(id *this)
{
  if (*this)
  {
    _ZF = (*this & 0x8000000000000001) == 1;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v2 = *this;
    *this = 0;
    if ((v2 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X8 = 0;
      _X9 = 0;
      __asm { CASP            X8, X9, X8, X9, [X10] }

      _X6 = _X8;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X10] }

      if (_X4 != _X8)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X8] }

          v15 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v15);
      }
    }
  }

  else
  {
    objc_destroyWeak(this);
  }
}

swift *swift_unknownObjectWeakCopyInit(swift *result, id *a2)
{
  if (*a2)
  {
    _ZF = (*a2 & 0x8000000000000001) == 1;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v3 = *a2 & 0x7FFFFFFFFFFFFFFELL;
    if (v3)
    {
      _X2 = 0;
      v5 = v3 + 16;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X9] }

      if ((_X2 & 0x100000000) != 0)
      {
        v3 = 0;
      }

      else
      {
        _X2 = 0;
        _X3 = 0;
        __asm { CASP            X2, X3, X2, X3, [X9] }

        _X4 = _X2;
        while (1)
        {
          v15 = _X3 | (v5 << 32);
          _X3 = v15;
          __asm { CASP            X2, X3, X4, X5, [X9] }

          if (_X2 == _X4)
          {
            break;
          }

          v5 = HIDWORD(v15);
          _X4 = _X2;
          if (v15 == -1)
          {
            swift::swift_abortWeakRetainOverflow(result, a2, _X2, v15);
          }
        }
      }
    }

    if (v3)
    {
      v18 = v3 | 1;
    }

    else
    {
      v18 = 0;
    }

    *result = v18;
  }

  else
  {
    v17 = result;
    objc_copyWeak(result, a2);
    return v17;
  }

  return result;
}

id *swift_unknownObjectWeakTakeInit(id *result, id *a2)
{
  if (*a2)
  {
    v2 = (*a2 & 0x8000000000000001) == 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = *a2;
    *a2 = 0;
    *result = v3;
  }

  else
  {
    v4 = result;
    objc_moveWeak(result, a2);
    return v4;
  }

  return result;
}

id *swift_unknownObjectWeakCopyAssign(id *this, id *a2)
{
  if (this != a2)
  {
    swift::WeakReference::unknownDestroy(this);
    if (*a2)
    {
      _ZF = (*a2 & 0x8000000000000001) == 1;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v5 = *a2 & 0x7FFFFFFFFFFFFFFELL;
      if (v5)
      {
        _X0 = 0;
        v7 = v5 + 16;
        _X1 = 0;
        __asm { CASP            X0, X1, X0, X1, [X9] }

        if ((_X0 & 0x100000000) != 0)
        {
          v5 = 0;
        }

        else
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X9] }

          _X2 = _X0;
          while (1)
          {
            v17 = (_X1 + 1);
            v18 = _X1 | (v7 << 32);
            _X1 = v18;
            __asm { CASP            X0, X1, X2, X3, [X9]; this }

            if (_X0 == _X2)
            {
              break;
            }

            v7 = HIDWORD(v18);
            _X2 = _X0;
            if (v18 == -1)
            {
              swift::swift_abortWeakRetainOverflow(_X0, v18, _X0, v17);
            }
          }
        }
      }

      if (v5)
      {
        v20 = v5 | 1;
      }

      else
      {
        v20 = 0;
      }

      *this = v20;
    }

    else
    {
      objc_copyWeak(this, a2);
    }
  }

  return this;
}

id *swift_unknownObjectWeakTakeAssign(id *this, id *a2)
{
  if (this != a2)
  {
    swift::WeakReference::unknownDestroy(this);
    if (*a2)
    {
      v4 = (*a2 & 0x8000000000000001) == 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = *a2;
      *a2 = 0;
      *this = v5;
    }

    else
    {
      objc_moveWeak(this, a2);
    }
  }

  return this;
}

Class *swift_dynamicCastTypeToObjCProtocolUnconditional(Class *cls, uint64_t a2, Protocol **a3)
{
  v4 = a2;
  v6 = 0;
  v7 = *cls;
  if (*cls > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 > 1279)
  {
    if ((v7 - 1280) >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v6 = cls;
    goto LABEL_14;
  }

  if (v7 != 773)
  {
    if (v7 != 1024)
    {
LABEL_9:
      swift::nameForMetadata(&v21, cls, 1);
      v8 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
      v9 = v21.__r_.__value_.__r.__words[0];
      v10 = *a3;
      Name = protocol_getName(v10);
      if (v8 >= 0)
      {
        v13 = &v21;
      }

      else
      {
        v13 = v9;
      }

      swift::swift_dynamicCastFailure(cls, v13, v10, Name, 0, v12);
    }

LABEL_14:
    if (!a2)
    {
      return cls;
    }

    goto LABEL_15;
  }

  v6 = cls[1];
  if (!a2)
  {
    return cls;
  }

  do
  {
LABEL_15:
    if (([(objc_class *)v6 conformsToProtocol:*a3]& 1) == 0)
    {
      swift::nameForMetadata(&v21, cls, 1);
      v15 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
      v16 = v21.__r_.__value_.__r.__words[0];
      v17 = *a3;
      v18 = protocol_getName(v17);
      if (v15 >= 0)
      {
        v20 = &v21;
      }

      else
      {
        v20 = v16;
      }

      swift::swift_dynamicCastFailure(cls, v20, v17, v18, 0, v19);
    }

    ++a3;
    --v4;
  }

  while (v4);
  return cls;
}

void sub_18026043C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *swift_dynamicCastTypeToObjCProtocolConditional(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = 0;
  v7 = *a1;
  if (*a1 > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 > 1279)
  {
    if ((v7 - 1280) >= 2)
    {
      return v6;
    }

    goto LABEL_7;
  }

  switch(v7)
  {
    case 0:
      v6 = a1;
      if (a2)
      {
        goto LABEL_8;
      }

      return a1;
    case 0x305:
      v6 = a1[1];
      if (!a2)
      {
        return a1;
      }

LABEL_8:
      while (([v6 conformsToProtocol:*a3] & 1) != 0)
      {
        ++a3;
        if (!--v4)
        {
          return a1;
        }
      }

      return 0;
    case 0x400:
LABEL_7:
      if (a2)
      {
        goto LABEL_8;
      }

      return a1;
  }

  return v6;
}

void *swift_dynamicCastObjCProtocolUnconditional(void *a1, uint64_t a2, Protocol **a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      if (([a1 conformsToProtocol:*a3] & 1) == 0)
      {
        Class = object_getClass(a1);
        Name = class_getName(Class);
        v9 = *a3;
        v10 = protocol_getName(v9);
        swift::swift_dynamicCastFailure(Class, Name, v9, v10, 0, v11);
      }

      ++a3;
      --v5;
    }

    while (v5);
  }

  return a1;
}

swift::runtime::bincompat *swift_dynamicCastObjCProtocolConditional(swift::runtime::bincompat *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if ((swift::runtime::bincompat::useLegacyObjCBoxingInCasting(a1) & 1) != 0 || !swift::getAsSwiftValue(v5, v6))
  {
    if (!a2)
    {
      return v5;
    }

    while (([(swift::runtime::bincompat *)v5 conformsToProtocol:*a3]& 1) != 0)
    {
      ++a3;
      if (!--a2)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t swift_instantiateObjCClass(objc_class *a1)
{
  if (qword_1ED4265C8 != -1)
  {
    v2 = a1;
    swift_instantiateObjCClass_cold_1(a1);
    a1 = v2;
  }

  if ((objcSupportsLazyRealization(void)::$_0::operator() const(void)::TheLazy & 1) == 0)
  {
    v1 = a1;
    class_getSuperclass(a1);
    objc_opt_class();
    a1 = v1;
  }

  return MEMORY[0x1EEE66B98](a1, &swift_instantiateObjCClass::ImageInfo);
}

uint64_t swift_getInitializedObjCClass(uint64_t result)
{
  if (qword_1ED4265C8 != -1)
  {
    v2 = result;
    swift_instantiateObjCClass_cold_1(result);
    result = v2;
  }

  if ((objcSupportsLazyRealization(void)::$_0::operator() const(void)::TheLazy & 1) == 0)
  {
    v1 = result;
    objc_opt_self();
    return v1;
  }

  return result;
}

BOOL swift_isUniquelyReferenced_nonNull_native(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x8000000000000000) != 0)
  {
    if (v1 == -1)
    {
      return 0;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v2 = _X0 & 0x100000000 | (_X0 >> 33);
  }

  else
  {
    v2 = HIDWORD(v1);
  }

  return v2 == 0;
}

BOOL swift_isUniquelyReferenced_native(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    if ((v1 & 0x8000000000000000) != 0)
    {
      if (v1 == -1)
      {
        return 0;
      }

      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      v2 = _X0 & 0x100000000 | (_X0 >> 33);
    }

    else
    {
      v2 = HIDWORD(v1);
    }

    return v2 == 0;
  }

  return result;
}

BOOL swift_isUniquelyReferencedNonObjC_nonNull(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 == -1)
    {
      return 0;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v3 = _X0 & 0x100000000 | (_X0 >> 33);
  }

  else
  {
    v3 = HIDWORD(v2);
  }

  return v3 == 0;
}

uint64_t swift_isUniquelyReferenced_nonNull(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    return MEMORY[0x1EEE66B30]();
  }

  v2 = *(a1 + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 == -1)
    {
      return 0;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v3 = _X0 & 0x100000000 | (_X0 >> 33);
  }

  else
  {
    v3 = HIDWORD(v2);
  }

  return v3 == 0;
}

BOOL swift_isUniquelyReferencedNonObjC(uint64_t a1)
{
  if (a1 < 1 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 == -1)
    {
      return 0;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v3 = _X0 & 0x100000000 | (_X0 >> 33);
  }

  else
  {
    v3 = HIDWORD(v2);
  }

  return v3 == 0;
}

uint64_t swift_isUniquelyReferenced(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if ((*((*a1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*a1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
  {
    return MEMORY[0x1EEE66B30]();
  }

  v1 = *(a1 + 8);
  if ((v1 & 0x8000000000000000) != 0)
  {
    if (v1 != -1)
    {
      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      v2 = _X0 & 0x100000000 | (_X0 >> 33);
      return v2 == 0;
    }

    return 0;
  }

  v2 = HIDWORD(v1);
  return v2 == 0;
}

BOOL swift_isUniquelyReferencedNonObjC_nonNull_bridgeObject(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    if ((*((*v1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*v1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0)
    {
      return 0;
    }
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 != -1)
    {
      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      v3 = _X0 & 0x100000000 | (_X0 >> 33);
      return v3 == 0;
    }

    return 0;
  }

  v3 = HIDWORD(v2);
  return v3 == 0;
}

uint64_t swift_isUniquelyReferenced_nonNull_bridgeObject(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62 && ((*((*v1 & 0x7FFFFFFFFFFFF8) + 0x20) & 2) == 0 || (*((*v1 & 0x7FFFFFFFFFFFF8) + 0x28) & 2) == 0))
  {
    return MEMORY[0x1EEE66B30](a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 != -1)
    {
      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      v3 = _X0 & 0x100000000 | (_X0 >> 33);
      return v3 == 0;
    }

    return 0;
  }

  v3 = HIDWORD(v2);
  return v3 == 0;
}

uint64_t swift_isEscapingClosureAtFileLocation(uint64_t result, const char *a2, int a3, int a4, int a5, int a6)
{
  if (result)
  {
    v8 = *(result + 8);
    if ((v8 & 0x8000000000000000) != 0)
    {
      if (v8 != -1)
      {
        _X6 = 0;
        _X7 = 0;
        __asm { CASP            X6, X7, X6, X7, [X8] }

        if (!(_X6 >> 33) && (_X6 & 0x100000000) == 0)
        {
          return 0;
        }
      }
    }

    else if (!HIDWORD(v8))
    {
      return 0;
    }

    v22[3] = v6;
    v22[4] = v7;
    v16 = "closure argument passed as @noescape to Objective-C has escaped";
    if (!a6)
    {
      v16 = "closure argument was escaped in withoutActuallyEscaping block";
    }

    v22[0] = 0;
    v17 = 63;
    if (!a6)
    {
      v17 = 61;
    }

    swift_asprintf(v22, "%.*s: file %.*s, line %u, column %u \n", v17, v16, a3, a2, a4, a5);
    swift::printCurrentBacktrace(2);
    shouldReportFatalErrorsToDebugger = _swift_shouldReportFatalErrorsToDebugger();
    v19 = v22[0];
    if (shouldReportFatalErrorsToDebugger)
    {
      memset(&v20[2], 0, 48);
      v21 = 0;
      v20[0] = xmmword_1E69EB0D0;
      v20[1] = *&off_1E69EB0E0;
      _swift_reportToDebugger(1, v22[0], v20);
    }

    swift_reportError(1, v19);
    free(v19);
    return 1;
  }

  return result;
}

uint64_t _swift_getSwiftClassInstanceExtents(uint64_t a1)
{
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    a1 = *(a1 + 8);
  }

  return *(a1 + 44);
}

uint64_t _swift_getObjCClassInstanceExtents(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
    {
      a1 = *(a1 + 8);
    }

    return *(a1 + 44);
  }

  else
  {
    class_getInstanceSize(a1);
    return 0;
  }
}

void swift_objc_swift3ImplicitObjCEntrypoint(void *a1, const char *a2, const char *a3, unint64_t a4, uint64_t a5, uint64_t a6, atomic_uchar *a7)
{
  if ((atomic_exchange(a7, 1u) & 1) == 0)
  {
    if (swift::runtime::environment::initializeToken != -1)
    {
      v21 = a5;
      v22 = a6;
      v23 = a3;
      v24 = a2;
      v25 = a1;
      v26 = a4;
      swift_objc_swift3ImplicitObjCEntrypoint_cold_1();
      a4 = v26;
      a1 = v25;
      a2 = v24;
      a3 = v23;
      a6 = v22;
      a5 = v21;
    }

    v7 = swift::runtime::environment::SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT_variable;
    if (swift::runtime::environment::SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT_variable)
    {
      v8 = a4;
      v9 = a2;
      v10 = a3;
      v11 = a6;
      v12 = a5;
      v13 = swift::runtime::environment::SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT_variable != 1;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      if (v7 <= 2)
      {
        v16 = swift::warning;
      }

      else
      {
        v16 = swift::fatalError;
      }

      if (v8 >= 0x7FFFFFFF)
      {
        LODWORD(v8) = 0x7FFFFFFF;
      }

      v37 = 0;
      v38 = 0;
      v17 = objc_opt_class();
      Name = class_getName(v17);
      v28 = sel_getName(v9);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      swift_asprintf(&v38, "implicit Objective-C entrypoint %c[%s %s] is deprecated and will be removed in Swift 4", v18, Name, v28);
      swift_asprintf(&v37, "%*s", v8, v10);
      v19 = v37;
      v36[0] = v37;
      v36[1] = v12;
      v36[2] = v11;
      v36[3] = v12;
      v36[4] = v11;
      v36[5] = "@objc ";
      v35[0] = "add '@objc' to expose this Swift declaration to Objective-C";
      v35[1] = 1;
      v35[2] = v36;
      v29[0] = 2;
      v29[1] = "implicit-objc-entrypoint";
      v29[2] = 0;
      v29[3] = 1;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v33 = 1;
      v34 = v35;
      v20 = v38;
      _swift_reportToDebugger(v16 == swift::fatalError, v38, v29);
      (v16)(v13, "*** %s:%zu:%zu: %s; add explicit '@objc' to the declaration to emit the Objective-C entrypoint in Swift 4 and suppress this message\n", v19, v12, v11, v20);
      free(v20);
      free(v19);
    }
  }
}

uint64_t swift::getNSObjectMetadata(swift *this)
{
  if (qword_1EA79EB90 != -1)
  {
    swift::getNSObjectMetadata(this);
  }

  return swift::getNSObjectMetadata(void)::$_0::operator() const(void)::TheLazy;
}

uint64_t swift::getNSStringMetadata(swift *this)
{
  if (qword_1ED4265D8 != -1)
  {
    swift::getNSStringMetadata(this);
  }

  return swift::getNSStringMetadata(void)::$_0::operator() const(void)::TheLazy;
}

uint64_t swift::hashable_support::getNSStringHashableConformance(swift::hashable_support *this)
{
  if (qword_1ED4265E8 != -1)
  {
    swift::hashable_support::getNSStringHashableConformance(this);
  }

  return swift::hashable_support::getNSStringHashableConformance(void)::$_0::operator() const(void)::TheLazy;
}

uint64_t swift::getRootSuperclass(swift *this)
{
  if (qword_1ED426590 != -1)
  {
    swift::getRootSuperclass(this);
  }

  return swift::getRootSuperclass(void)::SwiftObjectClass;
}

atomic_ullong *swift_dynamicCastObjCClass(atomic_ullong *result, uint64_t a2)
{
  if (swift_dynamicCastObjCClass::Override == 1)
  {
    return swift_dynamicCastObjCClassImpl(result, a2);
  }

  if (swift_dynamicCastObjCClass::Override)
  {
    return swift_dynamicCastObjCClass::Override(result, a2, swift_dynamicCastObjCClassImpl);
  }

  return swift_dynamicCastObjCClassSlow(result, a2);
}

atomic_ullong *swift_dynamicCastObjCClassImpl(atomic_ullong *result, uint64_t a2)
{
  v7 = result;
  if (result)
  {
    v3 = result;
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      return v3;
    }

    else if (swift::getNSErrorClass(isKindOfClass) == a2 || objc_opt_class() == a2)
    {
      Class = object_getClass(v3);
      ObjCClassMetadata = swift_getObjCClassMetadata(Class);
      result = swift::findErrorWitness(ObjCClassMetadata);
      if (result)
      {
        return swift::dynamicCastValueToNSError(&v7, ObjCClassMetadata, result, 2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_ullong *swift_dynamicCastObjCClassSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastObjCClass = swift::getOverride_dynamicCastObjCClass(a1);
  if (Override_dynamicCastObjCClass)
  {
    swift_dynamicCastObjCClass::Override = Override_dynamicCastObjCClass;

    return (Override_dynamicCastObjCClass)(a1, a2, swift_dynamicCastObjCClassImpl);
  }

  else
  {
    swift_dynamicCastObjCClass::Override = 1;

    return swift_dynamicCastObjCClassImpl(a1, a2);
  }
}

atomic_ullong *swift_dynamicCastObjCClassUnconditional(atomic_ullong *result, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_dynamicCastObjCClassUnconditional::Override == 1)
  {
    return swift_dynamicCastObjCClassUnconditionalImpl(result, a2);
  }

  if (swift_dynamicCastObjCClassUnconditional::Override)
  {
    return swift_dynamicCastObjCClassUnconditional::Override(result, a2, a3, a4, a5, swift_dynamicCastObjCClassUnconditionalImpl);
  }

  return swift_dynamicCastObjCClassUnconditionalSlow(result, a2, a3, a4, a5);
}

atomic_ullong *swift_dynamicCastObjCClassUnconditionalImpl(atomic_ullong *result, Class *a2)
{
  v10 = result;
  if (result)
  {
    v3 = result;
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      return v3;
    }

    else
    {
      if (swift::getNSErrorClass(isKindOfClass) != a2 && objc_opt_class() != a2 || (v5 = object_getClass(v3), ObjCClassMetadata = swift_getObjCClassMetadata(v5), (ErrorWitness = swift::findErrorWitness(ObjCClassMetadata)) == 0))
      {
        Class = object_getClass(v3);
        swift::swift_dynamicCastFailure(Class, a2, 0, v9);
      }

      return swift::dynamicCastValueToNSError(&v10, ObjCClassMetadata, ErrorWitness, 2);
    }
  }

  return result;
}

atomic_ullong *swift_dynamicCastObjCClassUnconditionalSlow(swift *a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastObjCClassUnconditional = swift::getOverride_dynamicCastObjCClassUnconditional(a1);
  if (Override_dynamicCastObjCClassUnconditional)
  {
    swift_dynamicCastObjCClassUnconditional::Override = Override_dynamicCastObjCClassUnconditional;

    return (Override_dynamicCastObjCClassUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastObjCClassUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastObjCClassUnconditional::Override = 1;

    return swift_dynamicCastObjCClassUnconditionalImpl(a1, a2);
  }
}

uint64_t swift_dynamicCastObjCClassMetatype(void *a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCClassMetatype::Override;
  if (swift_dynamicCastObjCClassMetatype::Override == 1)
  {
    if ([a1 isSubclassOfClass:a2])
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  else if (swift_dynamicCastObjCClassMetatype::Override)
  {

    return v3(a1, a2, swift_dynamicCastObjCClassMetatypeImpl);
  }

  else
  {

    return swift_dynamicCastObjCClassMetatypeSlow(a1, a2);
  }
}

void *swift_dynamicCastObjCClassMetatypeImpl(void *a1, uint64_t a2)
{
  if ([a1 isSubclassOfClass:a2])
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t swift_dynamicCastObjCClassMetatypeSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastObjCClassMetatype = swift::getOverride_dynamicCastObjCClassMetatype(a1);
  if (Override_dynamicCastObjCClassMetatype)
  {
    swift_dynamicCastObjCClassMetatype::Override = Override_dynamicCastObjCClassMetatype;

    return (Override_dynamicCastObjCClassMetatype)(a1, a2, swift_dynamicCastObjCClassMetatypeImpl);
  }

  else
  {
    swift_dynamicCastObjCClassMetatype::Override = 1;
    if ([(swift *)a1 isSubclassOfClass:a2])
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t swift_dynamicCastObjCClassMetatypeUnconditional(Class *a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_dynamicCastObjCClassMetatypeUnconditional::Override;
  if (swift_dynamicCastObjCClassMetatypeUnconditional::Override == 1)
  {
    if (([(Class *)a1 isSubclassOfClass:a2]& 1) == 0)
    {
      swift::swift_dynamicCastFailure(a1, a2, 0, v8);
    }

    return a1;
  }

  else if (swift_dynamicCastObjCClassMetatypeUnconditional::Override)
  {

    return v7(a1, a2, a3, a4, a5, swift_dynamicCastObjCClassMetatypeUnconditionalImpl);
  }

  else
  {

    return swift_dynamicCastObjCClassMetatypeUnconditionalSlow(a1, a2, a3, a4, a5);
  }
}

Class *swift_dynamicCastObjCClassMetatypeUnconditionalImpl(Class *a1, Class *a2)
{
  if (![(Class *)a1 isSubclassOfClass:a2])
  {
    swift::swift_dynamicCastFailure(a1, a2, 0, v4);
  }

  return a1;
}

uint64_t swift_dynamicCastObjCClassMetatypeUnconditionalSlow(swift *a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastObjCClassMetatypeUnconditional = swift::getOverride_dynamicCastObjCClassMetatypeUnconditional(a1);
  if (Override_dynamicCastObjCClassMetatypeUnconditional)
  {
    swift_dynamicCastObjCClassMetatypeUnconditional::Override = Override_dynamicCastObjCClassMetatypeUnconditional;

    return (Override_dynamicCastObjCClassMetatypeUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastObjCClassMetatypeUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastObjCClassMetatypeUnconditional::Override = 1;
    if (([(swift *)a1 isSubclassOfClass:a2]& 1) == 0)
    {
      swift::swift_dynamicCastFailure(a1, a2, 0, v12);
    }

    return a1;
  }
}

swift *swift_dynamicCastForeignClassMetatype(swift *result, uint64_t a2)
{
  if (swift_dynamicCastForeignClassMetatype::Override != 1)
  {
    if (swift_dynamicCastForeignClassMetatype::Override)
    {
      return swift_dynamicCastForeignClassMetatype::Override(result, a2, swift_dynamicCastForeignClassMetatypeImpl);
    }

    else
    {
      return swift_dynamicCastForeignClassMetatypeSlow(result, a2);
    }
  }

  return result;
}

uint64_t swift_dynamicCastForeignClassMetatypeSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastForeignClassMetatype = swift::getOverride_dynamicCastForeignClassMetatype(a1);
  if (Override_dynamicCastForeignClassMetatype)
  {
    swift_dynamicCastForeignClassMetatype::Override = Override_dynamicCastForeignClassMetatype;

    return (Override_dynamicCastForeignClassMetatype)(a1, a2, swift_dynamicCastForeignClassMetatypeImpl);
  }

  else
  {
    swift_dynamicCastForeignClassMetatype::Override = 1;
    return a1;
  }
}

swift *swift_dynamicCastForeignClassMetatypeUnconditional(swift *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_dynamicCastForeignClassMetatypeUnconditional::Override != 1)
  {
    if (swift_dynamicCastForeignClassMetatypeUnconditional::Override)
    {
      return swift_dynamicCastForeignClassMetatypeUnconditional::Override(result, a2, a3, a4, a5, swift_dynamicCastForeignClassMetatypeUnconditionalImpl);
    }

    else
    {
      return swift_dynamicCastForeignClassMetatypeUnconditionalSlow(result, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t swift_dynamicCastForeignClassMetatypeUnconditionalSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastForeignClassMetatypeUnconditional = swift::getOverride_dynamicCastForeignClassMetatypeUnconditional(a1);
  if (Override_dynamicCastForeignClassMetatypeUnconditional)
  {
    swift_dynamicCastForeignClassMetatypeUnconditional::Override = Override_dynamicCastForeignClassMetatypeUnconditional;

    return (Override_dynamicCastForeignClassMetatypeUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastForeignClassMetatypeUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastForeignClassMetatypeUnconditional::Override = 1;
    return a1;
  }
}

swift *swift_dynamicCastForeignClass(swift *result, uint64_t a2)
{
  if (swift_dynamicCastForeignClass::Override != 1)
  {
    if (swift_dynamicCastForeignClass::Override)
    {
      return swift_dynamicCastForeignClass::Override(result, a2, swift_dynamicCastForeignClassImpl);
    }

    else
    {
      return swift_dynamicCastForeignClassSlow(result, a2);
    }
  }

  return result;
}

uint64_t swift_dynamicCastForeignClassSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastForeignClass = swift::getOverride_dynamicCastForeignClass(a1);
  if (Override_dynamicCastForeignClass)
  {
    swift_dynamicCastForeignClass::Override = Override_dynamicCastForeignClass;

    return (Override_dynamicCastForeignClass)(a1, a2, swift_dynamicCastForeignClassImpl);
  }

  else
  {
    swift_dynamicCastForeignClass::Override = 1;
    return a1;
  }
}

swift *swift_dynamicCastForeignClassUnconditional(swift *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_dynamicCastForeignClassUnconditional::Override != 1)
  {
    if (swift_dynamicCastForeignClassUnconditional::Override)
    {
      return swift_dynamicCastForeignClassUnconditional::Override(result, a2, a3, a4, a5, swift_dynamicCastForeignClassUnconditionalImpl);
    }

    else
    {
      return swift_dynamicCastForeignClassUnconditionalSlow(result, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t swift_dynamicCastForeignClassUnconditionalSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastForeignClassUnconditional = swift::getOverride_dynamicCastForeignClassUnconditional(a1);
  if (Override_dynamicCastForeignClassUnconditional)
  {
    swift_dynamicCastForeignClassUnconditional::Override = Override_dynamicCastForeignClassUnconditional;

    return (Override_dynamicCastForeignClassUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastForeignClassUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastForeignClassUnconditional::Override = 1;
    return a1;
  }
}

uint64_t objcSupportsLazyRealization(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(_BYTE *a1)
{
  result = _objc_supportsLazyRealization();
  *a1 = result;
  return result;
}

unint64_t swift::getNSObjectMetadata(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(unint64_t *a1)
{
  v2 = objc_opt_class();
  result = swift_getObjCClassMetadata(v2);
  *a1 = result;
  return result;
}

unint64_t swift::getNSStringMetadata(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(unint64_t *a1)
{
  v2 = objc_lookUpClass("NSString");
  result = swift_getObjCClassMetadata(v2);
  *a1 = result;
  return result;
}

uint64_t swift::hashable_support::getNSStringHashableConformance(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  if (qword_1ED4265D8 != -1)
  {
    swift::getNSStringMetadata(a1);
  }

  result = swift_conformsToProtocolCommon(swift::getNSStringMetadata(void)::$_0::operator() const(void)::TheLazy, &protocol descriptor for Hashable);
  *a1 = result;
  return result;
}

uint64_t swift::getRootSuperclass(void)::$_0::__invoke(uint64_t *a1)
{
  result = objc_opt_class();
  *a1 = result;
  return result;
}

void *std::__hash_table<objc_class *,std::hash<objc_class *>,std::equal_to<objc_class *>,std::allocator<objc_class *>>::__emplace_unique_key_args<objc_class *,objc_class * const&>(void *a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
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

LABEL_11:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_11;
  }

  return v9;
}

unint64_t SwiftValueHeader::cacheHashableEquatableConformance(SwiftValueHeader *this)
{
  v2 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Hashable);
  if (v2)
  {
    v3 = v2;
    HashableBaseType = swift::hashable_support::findHashableBaseType(*this);
  }

  else
  {
    v5 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Equatable);
    v3 = v5 | 1;
    if (v5)
    {
      if (*v5)
      {
        v6 = *v5;
      }

      else
      {
        v6 = 0;
      }

      HashableBaseType = swift::findConformingSuperclass(*this, v6) | 1;
    }

    else
    {
      HashableBaseType = 1;
    }
  }

  v7 = 0;
  v8 = 0;
  atomic_compare_exchange_strong(this + 2, &v7, v3);
  atomic_compare_exchange_strong(this + 1, &v8, HashableBaseType);
  return v3;
}

unint64_t SwiftValueHeader::getHashableBaseType(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (!explicit)
  {
    v3 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Hashable);
    if (v3)
    {
      v4 = v3;
      HashableBaseType = swift::hashable_support::findHashableBaseType(*this);
    }

    else
    {
      v6 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Equatable);
      v4 = v6 | 1;
      if (v6)
      {
        if (*v6)
        {
          v7 = *v6;
        }

        else
        {
          v7 = 0;
        }

        HashableBaseType = swift::findConformingSuperclass(*this, v7) | 1;
      }

      else
      {
        HashableBaseType = 1;
      }
    }

    v8 = 0;
    v9 = 0;
    atomic_compare_exchange_strong(this + 2, &v8, v4);
    atomic_compare_exchange_strong(this + 1, &v9, HashableBaseType);
    explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  }

  if (explicit)
  {
    return 0;
  }

  else
  {
    return explicit;
  }
}

unint64_t SwiftValueHeader::getEquatableBaseType(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (!explicit)
  {
    v3 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Hashable);
    if (v3)
    {
      v4 = v3;
      HashableBaseType = swift::hashable_support::findHashableBaseType(*this);
    }

    else
    {
      v6 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Equatable);
      v4 = v6 | 1;
      if (v6)
      {
        if (*v6)
        {
          v7 = *v6;
        }

        else
        {
          v7 = 0;
        }

        HashableBaseType = swift::findConformingSuperclass(*this, v7) | 1;
      }

      else
      {
        HashableBaseType = 1;
      }
    }

    v8 = 0;
    v9 = 0;
    atomic_compare_exchange_strong(this + 2, &v8, v4);
    atomic_compare_exchange_strong(this + 1, &v9, HashableBaseType);
    explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  }

  return explicit & ((explicit << 63) >> 63) & 0xFFFFFFFFFFFFFFFELL;
}

unint64_t SwiftValueHeader::getHashableConformance(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  if (!explicit)
  {
    v3 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Hashable);
    if (v3)
    {
      explicit = v3;
      HashableBaseType = swift::hashable_support::findHashableBaseType(*this);
    }

    else
    {
      v5 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Equatable);
      explicit = v5 | 1;
      if (v5)
      {
        if (*v5)
        {
          v6 = *v5;
        }

        else
        {
          v6 = 0;
        }

        HashableBaseType = swift::findConformingSuperclass(*this, v6) | 1;
      }

      else
      {
        HashableBaseType = 1;
      }
    }

    v7 = 0;
    v8 = 0;
    atomic_compare_exchange_strong(this + 2, &v7, explicit);
    atomic_compare_exchange_strong(this + 1, &v8, HashableBaseType);
  }

  if (explicit)
  {
    return 0;
  }

  else
  {
    return explicit;
  }
}

unint64_t SwiftValueHeader::getEquatableConformance(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  if (!explicit)
  {
    v3 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Hashable);
    if (v3)
    {
      explicit = v3;
      HashableBaseType = swift::hashable_support::findHashableBaseType(*this);
    }

    else
    {
      v5 = swift_conformsToProtocolCommon(*this, &protocol descriptor for Equatable);
      explicit = v5 | 1;
      if (v5)
      {
        if (*v5)
        {
          v6 = *v5;
        }

        else
        {
          v6 = 0;
        }

        HashableBaseType = swift::findConformingSuperclass(*this, v6) | 1;
      }

      else
      {
        HashableBaseType = 1;
      }
    }

    v7 = 0;
    v8 = 0;
    atomic_compare_exchange_strong(this + 2, &v7, explicit);
    atomic_compare_exchange_strong(this + 1, &v8, HashableBaseType);
  }

  return explicit & ((explicit << 63) >> 63) & 0xFFFFFFFFFFFFFFFELL;
}

void *swift::bridgeAnythingToSwiftValueObject(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(a2 - 8) + 80) & 0xF8;
  v7 = (v6 + 39) & ~(v6 | 7);
  v8 = swift_slowAlloc((v7 + *(*(a2 - 8) + 64)), v6 | 7);
  v9 = v8;
  if (qword_1ED4265F8 != -1)
  {
    swift::bridgeAnythingToSwiftValueObject(v8);
  }

  v10 = objc_constructInstance(getSwiftValueClass(void)::$_0::operator() const(void)::TheLazy, v9);
  v11 = v10;
  v10[2] = 0;
  v10[3] = 0;
  v10[1] = a2;
  v12 = *(a2 - 8);
  if (a3)
  {
    (*(v12 + 32))(v10 + v7, a1, a2);
  }

  else
  {
    (*(v12 + 16))(v10 + v7, a1, a2);
  }

  return v11;
}

swift *swift::getAsSwiftValue(swift *this, objc_object *a2)
{
  Class = object_getClass(this);
  if (qword_1ED4265F8 != -1)
  {
    v5 = Class;
    swift::bridgeAnythingToSwiftValueObject(Class);
    Class = v5;
  }

  if (Class == getSwiftValueClass(void)::$_0::operator() const(void)::TheLazy)
  {
    return this;
  }

  else
  {
    return 0;
  }
}

uint64_t swift::findSwiftValueConformances(uint64_t a1)
{
  v9 = *(a1 + 8);
  if ((v9 & 0x40000000) != 0 && *(a1 + 16))
  {
    return 0;
  }

  v11 = *(a1 + 12);
  if (!v11)
  {
    return 1;
  }

  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v3;
  v20 = v2;
  v21 = v1;
  v22 = v7;
  v23 = v8;
  v12 = 0;
  v13 = (a1 + 8 * ((v9 >> 30) & 1) + 16);
  v14 = 8 * v11;
  while (1)
  {
    v15 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    if (!v12)
    {
      v12 = objc_opt_class();
    }

    if (([v12 conformsToProtocol:{v15 & 0xFFFFFFFFFFFFFFFELL, v16, v17, v18, v19, v20, v21, v22, v23}] & 1) == 0)
    {
      break;
    }

    ++v13;
    v14 -= 8;
    if (!v14)
    {
      return 1;
    }
  }

  return 0;
}

double swift::Lazy<std::unordered_set<swift::TargetMetadata<swift::InProcess> const*,std::hash<swift::TargetMetadata<swift::InProcess> const*>,std::equal_to<swift::TargetMetadata<swift::InProcess> const*>,std::allocator<swift::TargetMetadata<swift::InProcess> const*>>>::defaultInitCallback(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t getSwiftValueClass(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  result = objc_opt_class();
  *a1 = result;
  return result;
}

id _quickLookObjectForPointer(id *a1)
{
  v1 = *a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 debugQuickLookObject];
    v3 = v2;

    return v2;
  }

  return v1;
}

uint64_t replacementGetImageNameFromClass(objc_class *a1, const char **a2)
{
  if (a1)
  {
    if ((*(a1 + 32) & 2) != 0)
    {
      if (*(a1 + 8))
      {
        v3 = a1;
        v4 = a2;
        v5 = dyld_image_path_containing_address();
        a2 = v4;
        v6 = v5;
        a1 = v3;
        *v4 = v6;
        if (v6)
        {
          return 1;
        }
      }
    }
  }

  v8 = defaultGetImageNameFromClass;

  return v8(a1, a2);
}

uint64_t anonymous namespace::error(_anonymous_namespace_ *this, const char *a2, const char *a3, const char *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    snprintf(__str, 0x400uLL, "%s%s at %s:%u\n");
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s%s\n");
  }

  return asl_log(0, 0, 3, "%s", __str);
}

void __swift::__runtime::llvm::report_fatal_error(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __swift::__runtime::llvm::report_fatal_error(a1, 0);
}

void __swift::__runtime::llvm::report_fatal_error(const void *a1, const void *a2)
{
  v3[0] = a1;
  v3[1] = a2;
  __swift::__runtime::llvm::StringRef::str(v3, v2);
  __swift::__runtime::llvm::report_fatal_error(v2);
}

void __swift::__runtime::llvm::llvm_unreachable_internal(__swift::__runtime::llvm *this, const char *a2, const char *a3)
{
  if (this)
  {
    v5 = this;
  }

  else
  {
    v5 = "UNREACHABLE executed!";
  }

  abort();
}

void *__swift::__runtime::llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x8C556D9CuLL);
  if (!v5)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  this[1] = v5;
  v6 = 8 * *(this + 4);

  return memset(v5, 255, v6);
}

const void **__swift::__runtime::llvm::SmallPtrSetImplBase::insert_imp_big(__swift::__runtime::llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4);
  if (3 * v3 <= 4 * (v2 - *(this + 6)))
  {
    v14 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v14 = a2;
  }

  v15 = this;
  __swift::__runtime::llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v15;
  a2 = v14;
LABEL_3:
  v4 = *(this + 4) - 1;
  v5 = *(this + 1);
  v6 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 == -1)
  {
    v9 = 0;
LABEL_5:
    if (v9)
    {
      v7 = v9;
    }

    if (*v7 != a2)
    {
      if (*v7 == -2)
      {
        --*(this + 6);
      }

      else
      {
        ++*(this + 5);
      }

      *v7 = a2;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 + 2 == 0;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v4;
      v7 = (v5 + 8 * (v12 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

void __swift::__runtime::llvm::SmallPtrSetImplBase::Grow(__swift::__runtime::llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = malloc_type_malloc(8 * a2, 0x8C556D9CuLL);
  if (!v8 && (a2 || (v8 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  *(this + 1) = v8;
  *(this + 4) = a2;
  memset(v8, 255, 8 * a2);
  if (v7)
  {
    v9 = v4;
    do
    {
      v12 = *v9;
      if (*v9 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = *(this + 4) - 1;
        v14 = *(this + 1);
        v15 = v13 & ((v12 >> 4) ^ (v12 >> 9));
        v11 = (v14 + 8 * v15);
        v16 = *v11;
        if (*v11 == -1)
        {
          v10 = 0;
LABEL_9:
          if (v10)
          {
            v11 = v10;
          }
        }

        else
        {
          v10 = 0;
          v17 = 1;
          while (v16 != v12)
          {
            if (v10)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v10 = v11;
            }

            v19 = v15 + v17++;
            v15 = v19 & v13;
            v11 = (v14 + 8 * (v19 & v13));
            v16 = *v11;
            if (*v11 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v11 = v12;
      }

      ++v9;
    }

    while (v9 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

const void **__swift::__runtime::llvm::SmallPtrSetImplBase::FindBucketFor(__swift::__runtime::llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  result = (v3 + 8 * v4);
  v6 = *result;
  if (*result == -1)
  {
    v7 = 0;
LABEL_3:
    if (v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (v6 != a2)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 + 2 == 0;
      }

      if (v9)
      {
        v7 = result;
      }

      v10 = v4 + v8++;
      v4 = v10 & v2;
      result = (v3 + 8 * v4);
      v6 = *result;
      if (*result == -1)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

__swift::__runtime::llvm::SmallPtrSetImplBase *__swift::__runtime::llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const void **__dst, const __swift::__runtime::llvm::SmallPtrSetImplBase *a3)
{
  *this = __dst;
  v5 = *(a3 + 1);
  if (v5 == *a3)
  {
    v7 = __dst;
    *(this + 1) = __dst;
  }

  else
  {
    v6 = *(a3 + 4);
    v7 = malloc_type_malloc(8 * v6, 0x8C556D9CuLL);
    if (!v7 && (v6 || (v7 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    *(this + 1) = v7;
    v5 = *a3;
  }

  *(this + 4) = *(a3 + 4);
  v8 = *(a3 + 1);
  v9 = v8 == v5;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  v11 = *(a3 + v10);
  if (v11)
  {
    memmove(v7, v8, 8 * v11);
  }

  *(this + 20) = *(a3 + 20);
  return this;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::CopyHelper(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  *(this + 4) = *(a2 + 4);
  v4 = *(a2 + 1);
  v5 = 16;
  if (v4 == *a2)
  {
    v5 = 20;
  }

  v6 = *(a2 + v5);
  if (v6)
  {
    memmove(*(this + 1), v4, 8 * v6);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(uint64_t a1, void *__dst, int a3, double *a4)
{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::MoveHelper(uint64_t a1, int a2, double *a3)
{
  v4 = *a3;
  v3 = *(a3 + 1);
  if (v3 == *a3)
  {
    v5 = *a1;
    *(a1 + 8) = *a1;
    v6 = *(a3 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      memmove(v5, *(a3 + 1), 8 * v6);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v3;
    a3[1] = v4;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::CopyFrom(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  v4 = *(this + 1);
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v4 == *this)
  {
    if (v5 == v6)
    {
      v4 = *this;
    }

    else
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_malloc(8 * v7, 0x8C556D9CuLL);
      if (!v4)
      {
LABEL_9:
        if (v7 || (v4 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0)
        {
          __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
        }
      }
    }
  }

  else
  {
    if (v5 != v6)
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_realloc(v4, 8 * v7, 0x48319B8uLL);
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    free(v4);
    v4 = *this;
  }

LABEL_14:
  *(this + 1) = v4;
LABEL_15:
  *(this + 4) = *(a2 + 4);
  v8 = *(a2 + 1);
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    memmove(v4, v8, 8 * v10);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::MoveFrom(uint64_t a1, int a2, double *a3)
{
  v6 = *(a1 + 8);
  if (v6 != *a1)
  {
    free(v6);
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  if (v7 == *a3)
  {
    v9 = *a1;
    *(a1 + 8) = *a1;
    v10 = *(a3 + 5);
    if (v10)
    {
      memmove(v9, *(a3 + 1), 8 * v10);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    a3[1] = v8;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

unint64_t *__swift::__runtime::llvm::SmallPtrSetImplBase::swap(unint64_t *this, __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  if (this == a2)
  {
    return this;
  }

  v2 = *this;
  v3 = this[1];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v3 == *this)
  {
    if (v5 != v4)
    {
      v7 = *(this + 5);
      if (v7)
      {
        v8 = this;
        v9 = a2;
        memmove(*a2, v3, 8 * v7);
        this = v8;
        a2 = v9;
        v4 = *v9;
        v5 = *(v9 + 1);
      }

      v10 = *(a2 + 4);
      *(a2 + 4) = *(this + 4);
      *(this + 4) = v10;
      v11 = *(a2 + 5);
      *(a2 + 5) = *(this + 5);
      *(this + 5) = v11;
      v12 = *(a2 + 6);
      *(a2 + 6) = *(this + 6);
      *(this + 6) = v12;
      this[1] = v5;
      *(a2 + 1) = v4;
      return this;
    }

    v19 = *(a2 + 5);
    v20 = *(this + 5);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = 8 * v21;
    if (v21)
    {
      v23 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v23 < 9)
      {
        v24 = *this;
LABEL_26:
        v35 = (v2 + 8 * v21);
        do
        {
          v36 = *v24;
          *v24++ = *v4;
          *v4++ = v36;
        }

        while (v24 != v35);
        goto LABEL_28;
      }

      v25 = v2 >= &v4[v22 / 8] || v4 >= v2 + v22;
      v24 = *this;
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v23 + 1;
      v27 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      v28 = &v4[v27];
      v24 = (v2 + v27 * 8);
      v29 = (v2 + 16);
      v30 = (v4 + 2);
      v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *(v29 - 1);
        v33 = *v29;
        v34 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v34;
        *(v30 - 1) = v32;
        *v30 = v33;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v4 = v28;
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    if (v19 >= v20)
    {
      v38 = 8 * v19 - v22;
      if (8 * v19 == v22)
      {
        goto LABEL_33;
      }

      v37 = *a2;
      v39 = *this;
    }

    else
    {
      v37 = *this;
      v38 = 8 * (v20 - v21);
      v39 = *a2;
    }

    v40 = a2;
    v41 = this;
    memmove((v39 + 8 * v21), (v37 + v22), v38);
    this = v41;
    a2 = v40;
    goto LABEL_33;
  }

  if (v5 != v4)
  {
    this[1] = v5;
    *(a2 + 1) = v3;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
LABEL_33:
    v42 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v42;
    v43 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v43;
    return this;
  }

  v13 = *(a2 + 5);
  if (v13)
  {
    v14 = this;
    v15 = a2;
    memmove(*this, *(a2 + 1), 8 * v13);
    this = v14;
    a2 = v15;
    v2 = *v14;
    v3 = v14[1];
  }

  v16 = *(a2 + 4);
  *(a2 + 4) = *(this + 4);
  *(this + 4) = v16;
  v17 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v17;
  v18 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v18;
  *(a2 + 1) = v3;
  this[1] = v2;
  return this;
}

uint64_t __swift::__runtime::llvm::SmallVectorBase<unsigned int>::SmallVectorBase(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (HIDWORD(a2))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity overflow during allocation", 1);
  }

  v4 = *(a1 + 12);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", 1);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a2)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = a2;
  }

  if (v5 >= 0xFFFFFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  *a4 = v5;
  v6 = v5 * a3;
  result = malloc_type_malloc(v5 * a3, 0x8C556D9CuLL);
  if (!result && (v6 || (result = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity overflow during allocation", 1);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", 1);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a3)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a1;
  v9 = v7 * a4;
  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(v7 * a4, 0x8C556D9CuLL);
    if (!v12 && (v9 || (v12 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
LABEL_21:
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v13 = v12;
    memcpy(v12, *a1, *(a1 + 8) * a4);
    result = v13;
  }

  else
  {
    result = malloc_type_realloc(v8, v7 * a4, 0x48319B8uLL);
    if (!result)
    {
      if (v9)
      {
        goto LABEL_21;
      }

      result = malloc_type_malloc(1uLL, 0x8C556D9CuLL);
      if (!result)
      {
        goto LABEL_21;
      }
    }
  }

  *a1 = result;
  *(a1 + 12) = v7;
  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::SmallVectorBase(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::mallocForGrow(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", 1);
  }

  if (((2 * v4) | 1uLL) > a2)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = a2;
  }

  *a4 = v5;
  v6 = v5 * a3;
  result = malloc_type_malloc(v5 * a3, 0x8C556D9CuLL);
  if (!result && (v6 || (result = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", 1);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v6 = 2 * v4 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *a1;
  v8 = v6 * a4;
  if (v7 == a2)
  {
    v11 = malloc_type_malloc(v6 * a4, 0x8C556D9CuLL);
    if (!v11 && (v8 || (v11 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
LABEL_16:
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", 1);
    }

    v12 = v11;
    memcpy(v11, *a1, *(a1 + 8) * a4);
    result = v12;
  }

  else
  {
    result = malloc_type_realloc(v7, v6 * a4, 0x48319B8uLL);
    if (!result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      result = malloc_type_malloc(1uLL, 0x8C556D9CuLL);
      if (!result)
      {
        goto LABEL_16;
      }
    }
  }

  *a1 = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::compare_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (a3 >= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 | 0x20;
      v9 = v7 - 65 >= 0x1A;
      v11 = *a2++;
      v10 = v11;
      if (!v9)
      {
        v6 = v8;
      }

      if (v10 - 65 < 0x1A)
      {
        v10 |= 0x20u;
      }

      if (v6 != v10)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    if (v6 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_12:
    v12 = v3 == a3;
    if (v3 < a3)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

BOOL __swift::__runtime::llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 | 0x20;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 | 0x20;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

BOOL __swift::__runtime::llvm::StringRef::ends_with_insensitive(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + v3;
  v6 = -a3;
  do
  {
    v7 = *(v5 + v6);
    if ((v7 - 65) < 0x1A)
    {
      v7 |= 0x20u;
    }

    v9 = *a2++;
    v8 = v9;
    v10 = v9 | 0x20;
    if ((v9 - 65) < 0x1A)
    {
      v8 = v10;
    }

    result = v7 == v8;
  }

  while (v7 == v8 && v6++ != -1);
  return result;
}

unint64_t __swift::__runtime::llvm::StringRef::find_insensitive(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v4 = a2;
  if (a2 - 65 < 0x1A)
  {
    v4 = a2 | 0x20;
  }

  v5 = *(this + 1);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = *(this + 1);
  }

  if (v5 == result)
  {
    return -1;
  }

  v7 = *this;
  while (1)
  {
    v8 = *(v7 + result);
    if ((v8 - 65) < 0x1A)
    {
      v8 |= 0x20u;
    }

    if (v8 == v4)
    {
      break;
    }

    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::compare_numeric(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  if (a3 >= v5)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a3;
  }

  if (!v6)
  {
LABEL_38:
    if (v5 < a3)
    {
      v34 = -1;
    }

    else
    {
      v34 = 1;
    }

    if (v5 == a3)
    {
      return 0;
    }

    else
    {
      return v34;
    }
  }

  v8 = 0;
  v9 = v6 + 1;
  v10 = *a1;
  v11 = -v6;
  v12 = *a1 + 1;
  while (1)
  {
    v14 = *(v10 + v8);
    v15 = *(a2 + v8);
    if (v14 - 48 <= 9 && v15 - 48 <= 9)
    {
      break;
    }

    v13 = v8;
    if (v14 != v15)
    {
      if (v14 < v15)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

LABEL_7:
    v8 = v13 + 1;
    if (v13 + 1 == v6)
    {
      goto LABEL_38;
    }
  }

  v17 = 0;
  v18 = a2 + 1;
  v19 = v12;
  do
  {
    if (!(v11 + v8 + v17))
    {
      v13 = v6;
      v30 = v9 - v8;
      if (v9 == v8)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    v27 = v8 + v17 + 1;
    if (v27 >= v5)
    {
      v28 = 0;
      if (v27 >= a3)
      {
LABEL_31:
        v22 = 0;
        v24 = 5;
        v23 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v28 = *(v19 + v8) - 48 < 0xA;
      if (v27 >= a3)
      {
        goto LABEL_31;
      }
    }

    v20 = (*(v18 + v8) - 48);
    v21 = v20 >= 0xA;
    v22 = v20 < 0xA;
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v21)
    {
      v24 = 5;
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
    v25 = v28 == v22;
    if (v28 == v22)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if (v25)
    {
      v3 = v3;
    }

    else
    {
      v3 = v23;
    }

    ++v17;
    ++v19;
    ++v18;
  }

  while (!v26);
  if (v26 != 5)
  {
    return v3;
  }

  v29 = v8 + v17;
  v13 = v29 - 1;
  v30 = v29 - v8;
  if (v29 == v8)
  {
    goto LABEL_7;
  }

LABEL_36:
  v36 = v11;
  v31 = v10;
  v32 = v6;
  v33 = memcmp((v10 + v8), (a2 + v8), v30);
  v6 = v32;
  v10 = v31;
  v11 = v36;
  if (!v33)
  {
    goto LABEL_7;
  }

  return (v33 >> 31) | 1u;
}

unsigned __int8 **__swift::__runtime::llvm::StringRef::lower@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 | 0x20;
      if ((v8 - 65) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

unsigned __int8 **__swift::__runtime::llvm::StringRef::upper@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 - 32;
      if ((v8 - 97) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

uint64_t __swift::__runtime::llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    return -1;
  }

  v7 = a4;
  if (!a3)
  {
    return v7;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v10 = *a1;
  v11 = (*a1 + a4);
  v12 = a3 - 1;
  if (a3 == 1)
  {
    v13 = memchr(v11, *a2, v6);
    if (v13)
    {
      return v13 - v10;
    }

    else
    {
      return -1;
    }
  }

  v14 = &v11[v6 - a3];
  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v10 + v7), a2, a3))
    {
      ++v7;
      result = -1;
      if (v10 + v7 - 1 >= v14)
      {
        return result;
      }
    }

    return v7;
  }

  v28 = vdupq_n_s8(a3);
  v29 = v28;
  v27[12] = v28;
  v27[13] = v28;
  v27[10] = v28;
  v27[11] = v28;
  v27[8] = v28;
  v27[9] = v28;
  v27[6] = v28;
  v27[7] = v28;
  v27[4] = v28;
  v27[5] = v28;
  v27[2] = v28;
  v27[3] = v28;
  v27[0] = v28;
  v27[1] = v28;
  v15 = a3 - 2;
  if (a3 <= 2)
  {
    v16 = 0;
    v17 = 0;
LABEL_13:
    v18 = v17 + 1;
    do
    {
      *(v27 + a2[v16]) = v12 - v16;
      v16 = v18++;
    }

    while (v12 != v16);
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 0;
  if (HIDWORD(v15))
  {
    goto LABEL_13;
  }

  v16 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v17 = v12 & 0xFFFFFFFE;
  v24 = a2 + 1;
  v25 = v12 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v27 + *(v24 - 1)) = v15 + 1;
    v26 = *v24;
    v24 += 2;
    *(v27 + v26) = v15;
    v15 -= 2;
    v25 -= 2;
  }

  while (v25);
  if (v12 != v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  v19 = v14 + 1;
  v20 = a2[v12];
  while (1)
  {
    v21 = v11[v12];
    if (v21 == v20)
    {
      v22 = v11;
      v23 = memcmp(v11, a2, v12);
      v11 = v22;
      if (!v23)
      {
        break;
      }
    }

    v11 += *(v27 + v21);
    if (v11 >= v19)
    {
      return -1;
    }
  }

  return &v22[-v10];
}

uint64_t __swift::__runtime::llvm::StringRef::find_insensitive(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  if (v4 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v4 - v5;
  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1 + v5;
  v9 = a4;
  result = -1;
  while (a3)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + v10);
      v12 = *(a2 + v10);
      if ((v11 - 65) < 0x1A)
      {
        v11 |= 0x20u;
      }

      if ((v12 - 65) < 0x1A)
      {
        v12 |= 0x20u;
      }

      if (v11 != v12)
      {
        break;
      }

      if (a3 == ++v10)
      {
        return v9;
      }
    }

    ++v8;
    --v6;
    ++v9;
    if (v6 < a3)
    {
      return result;
    }
  }

  return a4;
}

unint64_t __swift::__runtime::llvm::StringRef::rfind_insensitive(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (a2 - 65 >= 0x1A)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 | 0x20;
  }

  while (v3)
  {
    v5 = v3 - 1;
    v6 = *(*this + v3 - 1);
    if ((v6 - 65) >= 0x1A)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 | 0x20;
    }

    v3 = v5;
    if (v7 == v4)
    {
      return v5;
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::rfind(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return -1;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    return -1;
  }

  v9 = *a1;
  while (1)
  {
    --v5;
    v10 = v3 >= v4 ? v4 : v3;
    if (a3 <= v3 - v10)
    {
      if (!a3)
      {
        return v5;
      }

      if (!memcmp((v9 + v10), a2, a3))
      {
        break;
      }
    }

    if (--v4 == -1)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t __swift::__runtime::llvm::StringRef::rfind_insensitive(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 >= a3)
  {
    v5 = v4 + 1;
    if (v4 != -1)
    {
      v7 = *a1;
      while (1)
      {
        if (v3 >= v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = v3;
        }

        --v5;
        v9 = v3 - v5;
        if (v3 < v5)
        {
          v9 = 0;
        }

        if (a3 <= v9)
        {
          if (!a3)
          {
            return v5;
          }

          v10 = (v7 + v8);
          v11 = a2;
          v12 = a3;
          while (1)
          {
            v14 = *v10++;
            v13 = v14;
            v15 = v14 | 0x20;
            v16 = (v14 - 65) >= 0x1A;
            v18 = *v11++;
            v17 = v18;
            if (!v16)
            {
              v13 = v15;
            }

            if ((v17 - 65) < 0x1A)
            {
              v17 |= 0x20u;
            }

            if (v13 != v17)
            {
              break;
            }

            if (!--v12)
            {
              return v5;
            }
          }
        }

        --v4;
        result = -1;
        if (!v5)
        {
          return result;
        }
      }
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t __swift::__runtime::llvm::StringRef::find_first_not_of(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t __swift::__runtime::llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t __swift::__runtime::llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t __swift::__runtime::llvm::StringRef::find_last_not_of(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  while (v3)
  {
    v4 = v3 - 1;
    v5 = *(*this + v3-- - 1);
    if (v5 != a2)
    {
      return v4;
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

_OWORD *__swift::__runtime::llvm::StringRef::split(_OWORD *result, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, int a6)
{
  v21 = *result;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v21 + 1);
    do
    {
      result = __swift::__runtime::llvm::StringRef::find(&v21, a3, a4, 0);
      if (result == -1)
      {
        break;
      }

      v16 = v21;
      if (result || a6)
      {
        if (v11 >= result)
        {
          v12 = result;
        }

        else
        {
          v12 = v11;
        }

        v13 = *(a2 + 8);
        if (v13 >= *(a2 + 12))
        {
          v17 = result;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v13 + 1, 16);
          result = v17;
          v13 = *(a2 + 8);
        }

        v14 = (*a2 + 16 * v13);
        *v14 = v16;
        v14[1] = v12;
        ++*(a2 + 8);
      }

      v15 = result + a4;
      if (v11 < result + a4)
      {
        v15 = v11;
      }

      v11 -= v15;
      *&v21 = v16 + v15;
      *(&v21 + 1) = v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = *(&v21 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v18 = v21;
    v19 = *(a2 + 8);
    if (v19 >= *(a2 + 12))
    {
      result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v19 + 1, 16);
      LODWORD(v19) = *(a2 + 8);
    }

    v20 = (*a2 + 16 * v19);
    *v20 = v18;
    v20[1] = v11;
    ++*(a2 + 8);
  }

  return result;
}

char *__swift::__runtime::llvm::StringRef::split(char *result, uint64_t a2, int __c, int a4, int a5)
{
  v7 = *result;
  v8 = *(result + 1);
  if (!a4)
  {
LABEL_19:
    if ((a5 & 1) == 0 && !v8)
    {
      return result;
    }

    goto LABEL_24;
  }

  v9 = a4;
  while (v8)
  {
    result = memchr(v7, __c, v8);
    if (!result)
    {
      goto LABEL_24;
    }

    v15 = result - v7;
    if (result - v7 == -1)
    {
      goto LABEL_24;
    }

    if (result != v7 || a5)
    {
      if (v8 >= v15)
      {
        v11 = result - v7;
      }

      else
      {
        v11 = v8;
      }

      v12 = *(a2 + 8);
      if (v12 >= *(a2 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v12 + 1, 16);
        v12 = *(a2 + 8);
      }

      v13 = (*a2 + 16 * v12);
      *v13 = v7;
      v13[1] = v11;
      ++*(a2 + 8);
    }

    if (v8 >= v15 + 1)
    {
      v14 = v15 + 1;
    }

    else
    {
      v14 = v8;
    }

    v7 += v14;
    v8 -= v14;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  if (a5)
  {
    v8 = 0;
LABEL_24:
    v16 = *(a2 + 8);
    if (v16 >= *(a2 + 12))
    {
      result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v16 + 1, 16);
      LODWORD(v16) = *(a2 + 8);
    }

    v17 = (*a2 + 16 * v16);
    *v17 = v7;
    v17[1] = v8;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::count(void *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = v5 - a3;
  if (v5 < a3)
  {
    return 0;
  }

  v7 = v6 + 1;
  if (v6 == -1)
  {
    return 0;
  }

  v8 = 0;
  v11 = 0;
  do
  {
    if (v5 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    if (a3 > v5 - v13)
    {
      v12 = 1;
    }

    else
    {
      v14 = memcmp((*a1 + v13), a2, a3);
      if (v14)
      {
        v12 = 1;
      }

      else
      {
        v12 = a3;
      }

      if (!v14)
      {
        ++v8;
      }
    }

    v11 += v12;
  }

  while (v11 < v7);
  return v8;
}

uint64_t __swift::__runtime::llvm::consumeUnsignedInteger(__swift::__runtime::llvm *this, __swift::__runtime::llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 1);
  if (a2)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v4 < 2)
  {
    LODWORD(a2) = 10;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v13 = *this;
  if (**this == 30768 || *v13 == 22576)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 16;
LABEL_30:
    v16 = -2;
LABEL_31:
    v4 += v16;
    *this = v14;
    *(this + 1) = v4;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (*v13 == 25136 || *v13 == 16944)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 2;
    goto LABEL_30;
  }

  if (*v13 == 28464)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 8;
    goto LABEL_30;
  }

  if (*v13 == 48)
  {
    v15 = *(v13 + 1);
    v14 = v13 + 1;
    if ((v15 - 48) <= 9)
    {
      LODWORD(a2) = 8;
      v16 = -1;
      goto LABEL_31;
    }
  }

  LODWORD(a2) = 10;
LABEL_3:
  v5 = 0;
  v6 = *this;
  *a3 = 0;
  v7 = v4;
  do
  {
    if (*v6 < 48)
    {
      break;
    }

    v8 = *v6;
    if (v8 >= 0x3A)
    {
      if (v8 < 0x61)
      {
        if (v8 - 65 > 0x19)
        {
          break;
        }

        v9 = -55;
      }

      else
      {
        if (v8 >= 0x7B)
        {
          break;
        }

        v9 = -87;
      }
    }

    else
    {
      v9 = -48;
    }

    v10 = v9 + v8;
    if (v10 >= a2)
    {
      break;
    }

    v11 = v5 * a2 + v10;
    *a3 = v11;
    if (v11 / a2 < v5)
    {
      return 1;
    }

    ++v6;
    v5 = v11;
    --v7;
  }

  while (v7);
  if (v4 != v7)
  {
    *this = v6;
    *(this + 1) = v7;
    return 0;
  }

  return 1;
}

uint64_t __swift::__runtime::llvm::consumeSignedInteger(__swift::__runtime::llvm *this, __swift::__runtime::llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v12 = 0;
  v5 = *(this + 1);
  if (v5 && **this == 45)
  {
    *&v11 = *this + 1;
    *(&v11 + 1) = v5 - 1;
    LODWORD(result) = __swift::__runtime::llvm::consumeUnsignedInteger(&v11, a2, &v12, a4);
    v8 = v12;
    if (v12 > 0x8000000000000000)
    {
      result = 1;
    }

    else
    {
      result = result;
    }

    if ((result & 1) == 0)
    {
      *this = v11;
      v9 = -v8;
LABEL_11:
      *a3 = v9;
    }
  }

  else
  {
    v10 = __swift::__runtime::llvm::consumeUnsignedInteger(this, a2, &v12, a4);
    result = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        result = 0;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::getAsUnsignedInteger(uint64_t a1, uint64_t a2, __swift::__runtime::llvm::StringRef *a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = __swift::__runtime::llvm::consumeUnsignedInteger(&v5, a3, a4, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL __swift::__runtime::llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, __swift::__runtime::llvm::StringRef *a3, unint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((__swift::__runtime::llvm::consumeUnsignedInteger(&v8, a3, &v9, a4) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((__swift::__runtime::llvm::consumeUnsignedInteger(&v7, a3, &v9, a4) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<char const>(void *a1, uint64_t a2)
{
  v2 = a2;
  {
    v62 = a1;
    a1 = v62;
    v2 = a2;
  }

  v3 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v4 = v2 - a1;
  if ((v2 - a1) > 0x40)
  {
    v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
    v7 = __ROR8__(__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273, 49);
    v8 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed >> 47);
    v9 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (((0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))) ^ __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed)));
    v10 = a1[1];
    v12 = a1[6];
    v11 = a1[7];
    v13 = v7 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + v10;
    v14 = a1[5];
    v15 = v14 + v7 - 0x4B6D499041670D8DLL * __ROR8__(v12 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed - 0x4B6D499041670D8DLL * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed, 42);
    v16 = *a1 - 0x6D8ED9027DD26057 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v18 = a1[2];
    v17 = a1[3];
    v19 = v16 + v10 + v18;
    v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
    v21 = __ROR8__(v8 - 0x622015F714C7D297 * (v6 ^ (v6 >> 47)), 33);
    v22 = (0xB492B66FBE98F273 * __ROR8__(v13, 37)) ^ v20;
    v23 = __ROR8__(v19, 44) + v16 + __ROR8__(v22 + v8 + v16 + v17, 21);
    v24 = 0xB492B66FBE98F273 * v21;
    v25 = v19 + v17;
    v26 = v20 + a1[4] - 0x4B6D499041670D8DLL * v21;
    v27 = v14 + v12 + v26;
    v28 = __ROR8__(v15 + v18 + v11 + v26, 21) + v26 + __ROR8__(v27, 44);
    v29 = v27 + v11;
    v30 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v31 = v22;
    }

    else
    {
      v32 = a1 + 15;
      do
      {
        v33 = *(v32 - 6);
        v34 = v15 + v25 + v24 + v33;
        v35 = *(v32 - 1);
        v36 = *(v32 - 2);
        v15 = v36 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v35, 42);
        v37 = v22 + v29;
        v38 = *(v32 - 7) - 0x4B6D499041670D8DLL * v23;
        v40 = *(v32 - 5);
        v39 = *(v32 - 4);
        v41 = v38 + v33 + v40;
        v31 = (0xB492B66FBE98F273 * __ROR8__(v34, 37)) ^ v28;
        v23 = __ROR8__(v41, 44) + v38 + __ROR8__(v31 + v29 + v38 + v39, 21);
        v24 = 0xB492B66FBE98F273 * __ROR8__(v37, 33);
        v25 = v41 + v39;
        v42 = v24 + v28 + *(v32 - 3);
        v43 = v36 + v35 + v42;
        v28 = __ROR8__(v15 + v40 + v42 + *v32, 21) + v42 + __ROR8__(v43, 44);
        v29 = v43 + *v32;
        v32 += 8;
        v22 = v31;
        v30 -= 64;
      }

      while (v30);
    }

    if ((v4 & 0x3F) != 0)
    {
      v44 = *(v2 - 56);
      v45 = *(v2 - 16);
      v46 = *(v2 - 8);
      v47 = v31 + v29;
      v48 = (0xB492B66FBE98F273 * __ROR8__(v15 + v25 + v24 + v44, 37)) ^ v28;
      v50 = *(v2 - 32);
      v49 = *(v2 - 24);
      v15 = v49 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v45, 42);
      v51 = v48 + v29;
      v52 = *(v2 - 64) - 0x4B6D499041670D8DLL * v23;
      v55 = v2 - 48;
      v53 = *(v2 - 48);
      v54 = *(v55 + 8);
      v56 = v52 + v44 + v53;
      v24 = 0xB492B66FBE98F273 * __ROR8__(v47, 33);
      v23 = __ROR8__(v56, 44) + v52 + __ROR8__(v51 + v52 + v54, 21);
      v25 = v56 + v54;
      v57 = v24 + v28 + v50;
      v58 = v49 + v45 + v57;
      v28 = __ROR8__(v15 + v53 + v57 + v46, 21) + v57 + __ROR8__(v58, 44);
      v29 = v58 + v46;
      v31 = v48;
    }

    v59 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v28)));
    v60 = v24 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47));
    v61 = 0x9DDFEA08EB382D69 * ((v31 - 0x4B6D499041670D8DLL * (v15 ^ (v15 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) >> 47))) ^ v60);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) ^ ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 47));
  }

  else
  {

    return __swift::__runtime::llvm::hashing::detail::hash_short(a1, v4, v3);
  }
}

void swift::Demangle::__runtime::Context::~Context(swift::Demangle::__runtime::Context *this)
{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

unsigned int *swift::Demangle::__runtime::Context::demangleSymbolAsNode(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v11 = 0;
    v8 = swift::Demangle::__runtime::Demangler::demangleSymbol(v7, a2, a3, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }

    return v8;
  }

  else
  {

    return swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v7);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleTypeAsNode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v7 = 0;
  v4 = swift::Demangle::__runtime::Demangler::demangleType(v3, a2, a3, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return v4;
}

void swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v11 = *a1;
  if (!ManglingPrefixLength)
  {
    v12 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v11);
    goto LABEL_7;
  }

  v20 = 0;
  v12 = swift::Demangle::__runtime::Demangler::demangleSymbol(v11, a2, a3, __p);
  if (v20 == __p)
  {
    v17 = v12;
    (*(*v20 + 4))(v20);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v20)
  {
LABEL_7:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = v12;
  (*(*v20 + 5))(v20);
  v12 = v14;
  if (!v14)
  {
LABEL_13:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_34:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_8:
  swift::Demangle::__runtime::nodeToString(v12, a4, v13, __p);
  v15 = HIBYTE(v19);
  v16 = HIBYTE(v19);
  if (v19 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    *a5 = *__p;
    *(a5 + 16) = v19;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v16 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_34;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v19 < 0)
  {
LABEL_32:
    operator delete(__p[0]);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3, swift::Demangle::__runtime::Node *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v10 = swift::Demangle::__runtime::Demangler::demangleSymbol(v9, a2, a3, v14);
    if (v15 == v14)
    {
      v12 = v10;
      (*(*v15 + 32))(v15);
      goto LABEL_7;
    }

    if (v15)
    {
      v12 = v10;
      (*(*v15 + 40))(v15);
LABEL_7:
      v10 = v12;
    }
  }

  else
  {
    v10 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v9);
  }

  return swift::Demangle::__runtime::nodeToString(v10, a4, v11);
}

void swift::Demangle::__runtime::Context::demangleTypeAsString(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v16 = 0;
  v11 = swift::Demangle::__runtime::Demangler::demangleType(v9, a2, a3, __p);
  if (v16 == __p)
  {
    (*(*v16 + 4))(v16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_31:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v16)
  {
    (*(*v16 + 5))();
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  swift::Demangle::__runtime::nodeToString(v11, a4, v10, __p);
  v12 = HIBYTE(v15);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    *a5 = *__p;
    *(a5 + 16) = v15;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v13 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v15 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }
}

BOOL swift::Demangle::__runtime::Context::isThunkSymbol(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, a3))
  {
    v10 = v3 - 2;
    if (v3 < 2 || *a2 != 21599 || v10 < 2)
    {
      return 0;
    }

    if (*(a2 + 1) != 28500 && *(a2 + 1) != 20308)
    {
      if (v3 == 4)
      {
        return 0;
      }

      v11 = *(a2 + 1) == 16720 && a2[4] == 95;
      if (!v11 && (v10 < 4 || *(a2 + 2) != 1601126736))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[v3 - 1] - 48 > 9)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = memchr(a2, 46, v3);
  if (v6)
  {
    v7 = v3 >= v6 - a2 ? v6 - a2 : v3;
    if (v6 - a2 != -1)
    {
      v3 = v7;
LABEL_10:
      if (!v3)
      {
        return 0;
      }

      if (a2[v3 - 1] == 95)
      {
        if (v3 == 1)
        {
          return 0;
        }

        v8 = 0;
        v9 = a2;
        while (v9[v3 - 2] - 48 <= 9)
        {
          ++v8;
          --v9;
          if (v3 - 1 == v8)
          {
            goto LABEL_34;
          }
        }

        if (~v8 + v3 >= 2 && (*&v9[v3 - 3] == 20820 || *&v9[v3 - 3] == 22868))
        {
          v3 = v3 - v8 - 3;
        }
      }
    }
  }

LABEL_34:
  if (v3 < 2)
  {
    return 0;
  }

  v12 = &a2[v3];
  if (*&a2[v3 - 2] != 16724 && *(v12 - 1) != 24916 && *(v12 - 1) != 28500 && *(v12 - 1) != 20308 && *(v12 - 1) != 21076 && *(v12 - 1) != 29268 && *(v12 - 1) != 22356 && *(v12 - 1) != 17254)
  {
    return 0;
  }

  v13 = *a1;
  v21 = 0;
  v14 = swift::Demangle::__runtime::Demangler::demangleSymbol(v13, a2, v3, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    if (!v14)
    {
      return 0;
    }
  }

  if (*(v14 + 16) == 101)
  {
    v15 = *(v14 + 18);
    if ((v15 - 1) < 2)
    {
      goto LABEL_54;
    }

    if (v15 == 5 && *(v14 + 8))
    {
      v14 = *v14;
LABEL_54:
      v16 = *(*v14 + 16);
      return (v16 - 170) <= 0x29 && ((1 << (v16 + 86)) & 0x31000000C11) != 0 || v16 == 0;
    }
  }

  return 0;
}

void swift::Demangle::__runtime::Context::getThunkTarget(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a3;
  v37[0] = a2;
  if (!swift::Demangle::__runtime::Context::isThunkSymbol(a1, a2, a3))
  {
    goto LABEL_75;
  }

  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, v4))
  {
    if (v4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v4;
    }

    v12 = (a2 + v11);
    v13 = &v4[-v11];
    v14 = v13 - 3;
    if (v13 >= 3)
    {
      if (*v12 == 16720 && v12[2] == 95)
      {
        if (v14 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v14;
          if (v13 != 3)
          {
            memmove(a4, v12 + 3, v14);
          }

          *(a4 + v14) = 0;
          return;
        }

        goto LABEL_87;
      }

      if (v13 != 3 && *v12 == 1601126736)
      {
        v32 = v13 - 4;
        if (v13 - 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v32 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v32;
          if (v13 != 4)
          {
            memmove(a4, v12 + 4, v32);
          }

          *(a4 + v32) = 0;
          return;
        }

        goto LABEL_87;
      }
    }

    *(&v36.__r_.__value_.__s + 23) = 2;
    strcpy(&v36, "_T");
    if (v13 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v13;
    }

    if (!a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      __p = 0;
      v34 = 0;
      v35 = 0;
LABEL_43:
      if ((v22 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v21;
      }

      if ((v22 & 0x80u) == 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      v25 = std::string::append(&v36, p_p, v24);
      v26 = v25->__r_.__value_.__r.__words[2];
      *a4 = *&v25->__r_.__value_.__l.__data_;
      *(a4 + 2) = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      return;
    }

    v17 = v13 - v16;
    if (v13 - v16 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v35) = v13 - v16;
      if (v13 >= 3)
      {
        memmove(&__p, &v12[v16], v17);
      }

      *(&__p + v17) = 0;
      v22 = HIBYTE(v35);
      v21 = __p;
      v20 = v34;
      goto LABEL_43;
    }

LABEL_87:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v4[a2 - 1];
  if ((v7 - 48) <= 9 && v4)
  {
    v8 = memchr(a2, 46, v4);
    if (!v8)
    {
      goto LABEL_61;
    }

    if (v4 >= &v8[-a2])
    {
      v9 = &v8[-a2];
    }

    else
    {
      v9 = v4;
    }

    if (&v8[-a2] == -1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v9;
    }

    if (v10 != v4)
    {
      goto LABEL_75;
    }
  }

  if (!v4)
  {
    goto LABEL_62;
  }

  if (v7 != 95)
  {
    goto LABEL_61;
  }

  if (v4 == 1)
  {
LABEL_62:
    v27 = (v4 - 2);
    if (v4 < v4 - 2)
    {
      v27 = v4;
    }

    v36.__r_.__value_.__r.__words[0] = a2;
    v36.__r_.__value_.__l.__size_ = v27;
    __swift::__runtime::llvm::StringRef::str(&v36.__r_.__value_.__l.__data_, a4);
    return;
  }

  v18 = 0;
  v19 = a2;
  while (v4[v19 - 2] - 48 <= 9)
  {
    ++v18;
    --v19;
    if (v4 - 1 == v18)
    {
      goto LABEL_61;
    }
  }

  if (&v4[~v18] >= 2 && (*&v4[v19 - 3] == 20820 || *&v4[v19 - 3] == 22868))
  {
    v4 = (v4 - v18 - 3);
  }

LABEL_61:
  v37[1] = v4;
  if (v4 < 2)
  {
    goto LABEL_62;
  }

  v28 = &v4[a2];
  if (*&v4[a2 - 2] == 21076 || *(v28 - 1) == 29268 || *(v28 - 1) == 22356)
  {
LABEL_75:
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    return;
  }

  if (*(v28 - 1) != 17254)
  {
    goto LABEL_62;
  }

  __swift::__runtime::llvm::StringRef::str(v37, a4);
  v29 = *(a4 + 23);
  v30 = (v29 & 0x80u) != 0;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a4 + 1);
  }

  if (v30)
  {
    v31 = *a4;
  }

  else
  {
    v31 = a4;
  }

  *(v31 + v29 - 1) = 99;
}