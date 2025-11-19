void sub_1C7AA927C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
{
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

LABEL_6:
  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 96, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 72, v23);
  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage((v18 + 56));
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v112[1] = *MEMORY[0x1E69E9840];
  v93 = &v95;
  v4 = *(a1 + 72);
  v5 = (a1 + 88);
  if (v4 == (a1 + 88))
  {
    v6 = *(a1 + 84);
    memcpy(&v95, v5, 8 * v6);
    v4 = &v95;
  }

  else
  {
    *(a1 + 72) = v5;
    v93 = v4;
    v6 = *(a1 + 84);
    *(a1 + 80) = 1;
  }

  v94 = v6;
  *(a1 + 80) = 1;
  v91 = *(a1 + 108);
  v92 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 113)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
        }

        else
        {
          v13 = *a2;
          v14 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v14, 0, memory_order_release, memory_order_relaxed);
          if (v14 != 1)
          {
            WTF::Lock::unlockSlow(v13);
          }

          if (WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&buf, a1);
            v15 = buf;
            (*(*buf + 16))(&v97, buf);
            (*(*v8 + 24))(v8, a1, &v97);
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
          }

          v16 = 0;
          atomic_compare_exchange_strong_explicit(*a2, &v16, 1u, memory_order_acquire, memory_order_acquire);
          if (v16)
          {
            MEMORY[0x1CCA63990]();
          }
        }
      }

      else
      {
        v10 = *(v8 + 16);
        atomic_fetch_add((v8 + 8), 1u);
        *&buf = v8;
        *(&buf + 1) = a1;
        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F472BFE8;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v97 = v11;
        (*(*v10 + 16))(v10, &v97);
        v12 = v97;
        v97 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v4 = (v4 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v17 = v92;
  if (!v91)
  {
    goto LABEL_149;
  }

  v18 = MEMORY[0x1E696EBC0];
  v19 = v92;
  v20 = (v92 + 40 * v91);
  do
  {
    while (1)
    {
      v21 = *v19;
      *v19 = 0;
      v97 = v21;
      v22 = *(v19 + 24);
      v98 = *(v19 + 8);
      v99 = v22;
      if (v21)
      {
        atomic_fetch_add((v21 + 8), 1u);
      }

      v23 = 0;
      v96[0] = 0;
      v96[1] = 0;
      v96[2] = "<chained promise>";
      v96[3] = 0;
      v24 = (v21 + 48);
      v100 = (v21 + 48);
      v101 = 1;
      atomic_compare_exchange_strong_explicit((v21 + 48), &v23, 1u, memory_order_acquire, memory_order_acquire);
      if (v23)
      {
        v24 = MEMORY[0x1CCA63990]();
      }

      v25 = WTF::NativePromiseBase::logChannel(v24);
      v26 = v25;
      if (*v25 && v25[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v106, v96);
        WTF::String::String(&v105, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v104, v21);
        if (v106)
        {
          v28 = *(v106 + 4);
          v29 = v105;
          if (v105)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v29 = v105;
          if (v105)
          {
LABEL_31:
            v30 = *(v29 + 4);
            v31 = v104;
            if (v104)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }
        }

        v30 = 0;
        v31 = v104;
        if (v104)
        {
LABEL_32:
          v32 = *(v31 + 4);
          if ((v32 | v30) < 0)
          {
            goto LABEL_164;
          }

          goto LABEL_37;
        }

LABEL_36:
        v32 = 0;
        if (v30 < 0)
        {
          goto LABEL_164;
        }

LABEL_37:
        v33 = __OFADD__(v30, v32);
        v34 = v30 + v32;
        v35 = v33;
        if (v28 < 0 || (v35 & 1) != 0 || (result = (v28 + v34), __OFADD__(v28, v34)))
        {
LABEL_164:
          v107 = 0;
LABEL_165:
          __break(0xC471u);
          return result;
        }

        if (v106 && (*(v106 + 16) & 4) == 0)
        {
          v36 = 0;
          goto LABEL_53;
        }

        if (v29)
        {
          v37 = *(v29 + 16);
          v36 = (v37 >> 2) & 1;
          if (!v31 || (v37 & 4) == 0)
          {
LABEL_53:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v36, v106, v29, v31, &v107);
            if (!v107)
            {
              goto LABEL_165;
            }

            v104 = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v38);
            }

            v39 = v105;
            v105 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v38);
            }

            v40 = v106;
            v106 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v38);
            }

            v41 = *(v26 + 4);
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v42)
            {
              WTF::String::utf8();
              v44 = v102 ? v102 + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v44;
              _os_log_impl(&dword_1C79C0000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v42 = v102;
              v102 = 0;
              if (v42)
              {
                if (*v42 == 1)
                {
                  v42 = WTF::fastFree(v42, v43);
                  if (*v26)
                  {
LABEL_71:
                    if (v26[16] >= 4u)
                    {
                      while (1)
                      {
                        v45 = *v18;
                        if (v45)
                        {
                          break;
                        }

                        v46 = *v18;
                        atomic_compare_exchange_strong_explicit(v18, &v46, v45 | 1, memory_order_acquire, memory_order_acquire);
                        if (v46 == v45)
                        {
                          v47 = WTF::Logger::observers(v42);
                          v48 = *(v47 + 12);
                          if (v48)
                          {
                            v49 = *v47;
                            v50 = *v47 + 8 * v48;
                            do
                            {
                              v51 = *v49;
                              LODWORD(buf) = 0;
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v96);
                              v109 = 0;
                              WTF::String::String(&v110, " settling chained promise ");
                              v111 = 0;
                              WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(v112, v21);
                              v102 = 0;
                              v103 = 0;
                              v52 = WTF::fastMalloc(0x30);
                              LODWORD(v103) = 3;
                              v102 = v52;
                              v53 = HIDWORD(v103);
                              v54 = v52 + 16 * HIDWORD(v103);
                              *v54 = buf;
                              v55 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v53 = HIDWORD(v103);
                                v52 = v102;
                              }

                              *(v54 + 1) = v55;
                              v56 = v53 + 1;
                              HIDWORD(v103) = v56;
                              v57 = v52 + 16 * v56;
                              *v57 = v109;
                              v58 = v110;
                              if (v110)
                              {
                                atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
                                v56 = HIDWORD(v103);
                                v52 = v102;
                              }

                              *(v57 + 1) = v58;
                              v59 = v56 + 1;
                              HIDWORD(v103) = v59;
                              v60 = v52 + 16 * v59;
                              *v60 = v111;
                              v61 = v112[0];
                              if (v112[0])
                              {
                                atomic_fetch_add_explicit(v112[0], 2u, memory_order_relaxed);
                                v59 = HIDWORD(v103);
                              }

                              *(v60 + 1) = v61;
                              HIDWORD(v103) = v59 + 1;
                              (*(*v51 + 16))(v51, v26, 4, &v102);
                              v62 = v102;
                              if (HIDWORD(v103))
                              {
                                v63 = 16 * HIDWORD(v103);
                                v64 = (v102 + 8);
                                do
                                {
                                  v65 = *v64;
                                  *v64 = 0;
                                  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v65, v43);
                                  }

                                  v64 += 2;
                                  v63 -= 16;
                                }

                                while (v63);
                                v62 = v102;
                              }

                              if (v62)
                              {
                                v102 = 0;
                                LODWORD(v103) = 0;
                                WTF::fastFree(v62, v43);
                              }

                              v66 = v112[0];
                              v112[0] = 0;
                              if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v66, v43);
                              }

                              v67 = v110;
                              v110 = 0;
                              if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v67, v43);
                              }

                              v68 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v68, v43);
                              }

                              ++v49;
                            }

                            while (v49 != v50);
                          }

                          v69 = 1;
                          v18 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v69, 0, memory_order_release, memory_order_relaxed);
                          v20 = (v92 + 40 * v91);
                          if (v69 != 1)
                          {
                            WTF::Lock::unlockSlow(v18);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_103:
                  v70 = v107;
                  v107 = 0;
                  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v70, v43);
                  }

                  goto LABEL_106;
                }

                --*v42;
              }
            }

            if (*v26)
            {
              goto LABEL_71;
            }

            goto LABEL_103;
          }
        }

        else if (!v31)
        {
          v36 = 1;
          goto LABEL_53;
        }

        v36 = (*(v31 + 16) >> 2) & 1;
        goto LABEL_53;
      }

LABEL_106:
      v71 = *(v21 + 64);
      v72 = *(a1 + 64);
      if (v71 != 255 || v72 != 255)
      {
        switch(v72)
        {
          case 255:
            if (v71 >= 2 && v71 != 255)
            {
              v73 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            v74 = -1;
            goto LABEL_139;
          case 2:
            if (v71 < 2 || v71 == 255)
            {
              goto LABEL_138;
            }

            if (v71 != 2)
            {
              v79 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v79)
              {
                (*(*v79 + 8))(v79);
              }

LABEL_138:
              v80 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v21 + 56) = v80;
              v74 = 2;
LABEL_139:
              *(v21 + 64) = v74;
              break;
            }

            v75 = *(a1 + 56);
            *(a1 + 56) = 0;
            v76 = *(v21 + 56);
            *(v21 + 56) = v75;
            if (v76)
            {
              (*(*v76 + 8))(v76);
            }

            break;
          case 1:
            if (!*(v21 + 64) || v71 == 255)
            {
              goto LABEL_135;
            }

            if (v71 != 1)
            {
              v78 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v78)
              {
                (*(*v78 + 8))(v78);
              }

LABEL_135:
              *(v21 + 64) = -1;
              *(v21 + 56) = *(a1 + 56);
              v74 = 1;
              goto LABEL_139;
            }

            *(v21 + 56) = *(a1 + 56);
            break;
          default:
            if (*(v21 + 64))
            {
              if (v71 != 1 && v71 != 255)
              {
                v77 = *(v21 + 56);
                *(v21 + 56) = 0;
                if (v77)
                {
                  (*(*v77 + 8))(v77);
                }
              }

              *(v21 + 64) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v21, &v100);
      v81 = v101;
      if (v101 == 1)
      {
        v82 = v100;
        atomic_compare_exchange_strong_explicit(v100, &v81, 0, memory_order_release, memory_order_relaxed);
        if (v81 != 1)
        {
          break;
        }
      }

      v83 = (v21 + 8);
      add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_146;
      }

LABEL_143:
      WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v97);
      v19 = (v19 + 40);
      if (v19 == v20)
      {
        goto LABEL_147;
      }
    }

    WTF::Lock::unlockSlow(v82);
    v83 = (v21 + 8);
    add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_143;
    }

LABEL_146:
    atomic_store(add, v83);
    (*(*v21 + 16))(v21);
    WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v97);
    v19 = (v19 + 40);
  }

  while (v19 != v20);
LABEL_147:
  v17 = v92;
  v85 = 40 * v91;
  v86 = v92;
  do
  {
    v86 = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v86) + 5;
    v85 -= 40;
  }

  while (v85);
LABEL_149:
  if (v17)
  {
    WTF::fastFree(v17, v5);
  }

  result = v93;
  if (v94)
  {
    v87 = 8 * v94;
    do
    {
      v88 = *result;
      *result = 0;
      if (v88 && atomic_fetch_add(v88 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v88 + 2);
        v89 = result;
        (*(*v88 + 8))(v88);
        result = v89;
      }

      result += 8;
      v87 -= 8;
    }

    while (v87);
    result = v93;
  }

  if (&v95 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AA9F30(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v12 = 0;
  atomic_compare_exchange_strong_explicit(*v10, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v13);
  _Unwind_Resume(a1);
}

void sub_1C7AA9FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::Lock *a31, char a32, WTF *a33, int a34)
{
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34 + 2);
      (*(*v34 + 16))(v34);
    }
  }

  WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a26);
  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v36);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v37);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<char [32],WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

BOOL WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 48);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](a1 + 48);
    v4 = *(a1 + 64);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  else
  {
    v4 = *(a1 + 64);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  WTF::Lock::unlockSlow(v2);
  return v4 == 2;
}

mpark *WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 64) == 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    mpark::throw_bad_variant_access(result);
  }

  v6 = result;
  v7 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  result = v6;
  a2 = v7;
  if (*(v7 + 64) != 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  *result = v4;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

mpark *WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 64) == 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    mpark::throw_bad_variant_access(result);
  }

  v5 = result;
  v6 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  result = v5;
  a2 = v6;
  if (*(v6 + 64) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  *result = *(a2 + 56);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
  WTF::String::String(&v73, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v71, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v70, a4);
  WTF::String::String(&v69, "]");
  v8 = v74;
  v67 = v74;
  v81 = v73;
  *&buf = v75;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v67, &v81, &v80, &v79, &v78, &v77, &v76);
  if (!v76)
  {
    __break(0xC471u);
    return result;
  }

  v11 = v69;
  v69 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v70;
  v70 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v71;
  v71 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v72;
  v72 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = v73;
  v73 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v74 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v10);
  }

  v16 = v75;
  v75 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v18 || ((WTF::String::utf8(), v67) ? (v20 = v67 + 16) : (v20 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v20, _os_log_impl(&dword_1C79C0000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v18 = v67, v67 = 0, !v18))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v18 != 1)
  {
    --*v18;
    goto LABEL_30;
  }

  v18 = WTF::fastFree(v18, v19);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v66 = *v24 + 8 * v25;
            do
            {
              v27 = *v26;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v83 = 0;
              WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
              v85 = 0;
              WTF::String::String(&v86, " aborting [callback:");
              v87 = 0;
              WTF::LogArgument<void const*>::toString();
              v89 = 0;
              WTF::String::String(&v90, " callSite:");
              v91 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v92, a4);
              v93 = 0;
              WTF::String::String(v94, "]");
              v67 = 0;
              v68 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v68) = 7;
              v67 = v28;
              v29 = HIDWORD(v68);
              v30 = v28 + 16 * HIDWORD(v68);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v68);
                v28 = v67;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v68) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v83;
              v34 = v84;
              if (v84)
              {
                atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                v32 = HIDWORD(v68);
                v28 = v67;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v68) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v85;
              v37 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                v35 = HIDWORD(v68);
                v28 = v67;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v68) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v87;
              v40 = v88;
              if (v88)
              {
                atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
                v38 = HIDWORD(v68);
                v28 = v67;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v68) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v89;
              v43 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
                v41 = HIDWORD(v68);
                v28 = v67;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v68) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v91;
              v46 = v92;
              if (v92)
              {
                atomic_fetch_add_explicit(v92, 2u, memory_order_relaxed);
                v44 = HIDWORD(v68);
                v28 = v67;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v68) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v93;
              v49 = v94[0];
              if (v94[0])
              {
                atomic_fetch_add_explicit(v94[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v68);
              }

              *(v48 + 1) = v49;
              HIDWORD(v68) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v67);
              v50 = v67;
              if (HIDWORD(v68))
              {
                v51 = a1;
                v52 = a2;
                v53 = a3;
                v54 = a4;
                v55 = 16 * HIDWORD(v68);
                v56 = (v67 + 8);
                do
                {
                  v57 = *v56;
                  *v56 = 0;
                  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v57, v19);
                  }

                  v56 += 2;
                  v55 -= 16;
                }

                while (v55);
                v50 = v67;
                a4 = v54;
                a3 = v53;
                a2 = v52;
                a1 = v51;
              }

              if (v50)
              {
                v67 = 0;
                LODWORD(v68) = 0;
                WTF::fastFree(v50, v19);
              }

              v58 = v94[0];
              v94[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v19);
              }

              v59 = v92;
              v92 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v19);
              }

              v60 = v90;
              v90 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v19);
              }

              v61 = v88;
              v88 = 0;
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v19);
              }

              v62 = v86;
              v86 = 0;
              if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v19);
              }

              v63 = v84;
              v84 = 0;
              if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v63, v19);
              }

              v64 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v19);
              }

              ++v26;
            }

            while (v26 != v66);
          }

          v65 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v65, 0, memory_order_release, memory_order_relaxed);
          if (v65 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v76;
  v76 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void sub_1C7AAAB98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
{
  v45 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 == 1)
  {
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472BFE8;
  v1 = result[2];
  result[2] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = v3[1];
    v3[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472BFE8;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v5 = a1;
    (*(*v2 + 16))(v2);
    a1 = v5;
    v3 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (!v3)
    {
LABEL_5:

      return WTF::fastFree(a1, a2);
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_5;
  }

  atomic_store(1u, v3 + 2);
  v6 = a1;
  (*(*v3 + 8))(v3);
  a1 = v6;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v21 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v21, (v2 + 24));
    }

    return result;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((v1 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v14 = a1;
    MEMORY[0x1CCA63990](v1 + 48);
    a1 = v14;
    v8 = *(v1 + 64);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_10:
      v9 = *(a1 + 1);
      v10 = *(a1 + 2);
      if (v8 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = *(v1 + 64);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_10;
    }
  }

  v15 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v16 = v15 + 8;
  v9 = *(v15 + 1);
  v10 = *(v16 + 1);
  if (v8 == 2)
  {
LABEL_11:
    v11 = 0;
    a1 = (v10 + 48);
    atomic_compare_exchange_strong_explicit((v10 + 48), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990]();
      a1 = (v10 + 48);
      if (*(v10 + 64) == 2)
      {
        goto LABEL_13;
      }
    }

    else if (*(v10 + 64) == 2)
    {
LABEL_13:
      v12 = *(v10 + 56);
      *(v10 + 56) = 0;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow(a1);
      }

      (*(*v12 + 16))(v20, v12);
      (*(*v9 + 24))(v9, v10, v20);
      return (*(*v12 + 8))(v12);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_18:
  v17 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v17, 1u, memory_order_acquire, memory_order_acquire);
  if (v17)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 64) != 1)
    {
      goto LABEL_26;
    }
  }

  else if (*(v10 + 64) != 1)
  {
    goto LABEL_26;
  }

  v19 = *(v10 + 56);
  v18 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  return (*(*v9 + 24))(v9, v10, &v19);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 132);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 132);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 120);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        result = (*(*v6 + 16))(v6);
      }
    }

    v4 += 5;
    v5 -= 40;
  }

  while (v5);
LABEL_9:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

void sub_1C7AAB4E4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  result = WTF::Logger::LogSiteIdentifier::toString(&v16, (a2 + 16));
  if (v17)
  {
    v6 = *(v17 + 1);
    if (v16)
    {
LABEL_3:
      v7 = *(v16 + 1);
      if ((v7 & 0x80000000) == 0)
      {
        v4 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

LABEL_30:
      *a1 = 0;
LABEL_31:
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v6 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_9:
  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  v10 = v4;
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    goto LABEL_30;
  }

  v4 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v4)
  {
    goto LABEL_30;
  }

  result = (v11 + 13);
  if (__OFADD__(v11, 13))
  {
    goto LABEL_30;
  }

  v12 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v16 || (*(v16 + 16) & 4) != 0);
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v12, "NativePromise", 0xDuLL, v17, 60, v16, 62, &v18);
  v14 = v18;
  *a1 = v18;
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_1C7AAB6C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  else
  {
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return v1;
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 16))(v4);
  return a1;
}

void sub_1C7AAB824(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) == 2)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  else if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      v3 = *(a1 + 12);
      v4 = *a1;
      if (v3)
      {
        v5 = 24 * v3;
        v6 = (v4 + 16);
        do
        {
          v7 = *v6;
          *v6 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }

          v6 += 3;
          v5 -= 24;
        }

        while (v5);
        v4 = *a1;
      }

      if (v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    *(a1 + 24) = -1;
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 24))
  {
    v3 = *(a1 + 12);
    v4 = *a1;
    if (v3)
    {
      v5 = 24 * v3;
      v6 = (v4 + 16);
      do
      {
        v7 = *v6;
        *v6 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v6 += 3;
        v5 -= 24;
      }

      while (v5);
      v4 = *a1;
    }

    if (v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

unint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v53, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v52, a1);
    v5 = v52;
    if (v53)
    {
      v6 = *(v53 + 1);
      if (v52)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (v52)
      {
LABEL_8:
        v7 = *(v52 + 4);
        if ((v7 | v6) < 0)
        {
          goto LABEL_86;
        }

LABEL_12:
        result = (v6 + v7);
        if (!__OFADD__(v6, v7))
        {
          if (v53)
          {
            v8 = *(v53 + 4);
            v9 = (v8 >> 2) & 1;
            if (!v52 || (v8 & 4) == 0)
            {
LABEL_20:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v9, v53, v52, &v54);
              if (!v54)
              {
LABEL_87:
                __break(0xC471u);
                return result;
              }

              v52 = 0;
              if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v5, v10);
              }

              v11 = v53;
              v53 = 0;
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v10);
              }

              v12 = *(v2 + 32);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                WTF::String::utf8();
                v15 = v50 ? v50 + 16 : 0;
                *buf = 136446210;
                *v56 = v15;
                _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v13 = v50;
                v50 = 0;
                if (v13)
                {
                  if (*v13 == 1)
                  {
                    v13 = WTF::fastFree(v13, v14);
                    if (*v2)
                    {
LABEL_35:
                      if (*(v2 + 16) >= 4u)
                      {
                        v16 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v17 = *v16;
                          if (v17)
                          {
                            break;
                          }

                          v18 = *v16;
                          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
                          if (v18 == v17)
                          {
                            v19 = WTF::Logger::observers(v13);
                            v20 = *(v19 + 12);
                            if (v20)
                            {
                              v21 = *v19;
                              v22 = *v19 + 8 * v20;
                              do
                              {
                                v23 = *v21;
                                *buf = 0;
                                WTF::String::String(&v56[4], "destroying ");
                                v57 = 0;
                                WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(v58, a1);
                                v50 = 0;
                                v51 = 0;
                                v24 = WTF::fastMalloc(0x20);
                                LODWORD(v51) = 2;
                                v50 = v24;
                                v25 = HIDWORD(v51);
                                v26 = v24 + 16 * HIDWORD(v51);
                                *v26 = *buf;
                                v27 = *&v56[4];
                                if (*&v56[4])
                                {
                                  atomic_fetch_add_explicit(*&v56[4], 2u, memory_order_relaxed);
                                  v25 = HIDWORD(v51);
                                  v24 = v50;
                                }

                                *(v26 + 1) = v27;
                                v28 = v25 + 1;
                                HIDWORD(v51) = v28;
                                v29 = v24 + 16 * v28;
                                *v29 = v57;
                                v30 = v58[0];
                                if (v58[0])
                                {
                                  atomic_fetch_add_explicit(v58[0], 2u, memory_order_relaxed);
                                  v28 = HIDWORD(v51);
                                }

                                *(v29 + 1) = v30;
                                HIDWORD(v51) = v28 + 1;
                                (*(*v23 + 16))(v23, v2, 4, &v50);
                                v31 = v50;
                                if (HIDWORD(v51))
                                {
                                  v32 = 16 * HIDWORD(v51);
                                  v33 = (v50 + 8);
                                  do
                                  {
                                    v34 = *v33;
                                    *v33 = 0;
                                    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v34, v14);
                                    }

                                    v33 += 2;
                                    v32 -= 16;
                                  }

                                  while (v32);
                                  v31 = v50;
                                }

                                if (v31)
                                {
                                  v50 = 0;
                                  LODWORD(v51) = 0;
                                  WTF::fastFree(v31, v14);
                                }

                                v35 = v58[0];
                                v58[0] = 0;
                                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v35, v14);
                                }

                                v36 = *&v56[4];
                                *&v56[4] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v14);
                                }

                                ++v21;
                              }

                              while (v21 != v22);
                            }

                            v37 = 1;
                            atomic_compare_exchange_strong_explicit(v16, &v37, 0, memory_order_release, memory_order_relaxed);
                            if (v37 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_63:
                    v38 = v54;
                    v54 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v14);
                    }

                    goto LABEL_66;
                  }

                  --*v13;
                }
              }

              if (*v2)
              {
                goto LABEL_35;
              }

              goto LABEL_63;
            }
          }

          else if (!v52)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v9 = (*(v52 + 16) >> 2) & 1;
          goto LABEL_20;
        }

LABEL_86:
        v54 = 0;
        goto LABEL_87;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_86;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 132);
  if (v40)
  {
    v41 = *(a1 + 120);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 120);
  if (v43)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 108);
  v45 = *(a1 + 96);
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        v48 = v45;
        (*(*v47 + 8))(v47);
        v45 = v48;
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = *(a1 + 96);
  }

  if ((a1 + 112) != v45 && v45 != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v45, v39);
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(a1 + 56, v39);
  return a1;
}

void sub_1C7AABF58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
{
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

LABEL_6:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 120, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 96, v23);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v18 + 56, v24);
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v150[1] = *MEMORY[0x1E69E9840];
  v130 = &v132;
  v4 = *(a1 + 96);
  v5 = (a1 + 112);
  if (v4 == (a1 + 112))
  {
    v6 = *(a1 + 108);
    memcpy(&v132, v5, 8 * v6);
    v4 = &v132;
  }

  else
  {
    *(a1 + 96) = v5;
    v130 = v4;
    v6 = *(a1 + 108);
    *(a1 + 104) = 1;
  }

  v131 = v6;
  *(a1 + 104) = 1;
  v128 = *(a1 + 132);
  v129 = *(a1 + 120);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 137)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
        }

        else
        {
          v13 = *a2;
          v14 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v14, 0, memory_order_release, memory_order_relaxed);
          if (v14 != 1)
          {
            WTF::Lock::unlockSlow(v13);
          }

          if (WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v134, a1);
            v15 = v134;
            (*(*v134 + 16))(&buf, v134);
            (*(*v8 + 24))(v8, a1, &buf);
            std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::~expected(&buf, v16);
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
            std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::~expected(&buf, v17);
          }

          v18 = 0;
          atomic_compare_exchange_strong_explicit(*a2, &v18, 1u, memory_order_acquire, memory_order_acquire);
          if (v18)
          {
            MEMORY[0x1CCA63990]();
          }
        }
      }

      else
      {
        v10 = *(v8 + 16);
        atomic_fetch_add((v8 + 8), 1u);
        *&buf = v8;
        *(&buf + 1) = a1;
        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F472C038;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v134 = v11;
        (*(*v10 + 16))(v10, &v134);
        v12 = v134;
        v134 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v4 = (v4 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v19 = v129;
  if (!v128)
  {
    goto LABEL_225;
  }

  v20 = MEMORY[0x1E696EBC0];
  v21 = &v129[5 * v128];
  do
  {
    while (1)
    {
      v22 = *v19;
      *v19 = 0;
      v134 = v22;
      v23 = *(v19 + 3);
      v135 = *(v19 + 1);
      v136 = v23;
      if (v22)
      {
        atomic_fetch_add((v22 + 8), 1u);
      }

      v24 = 0;
      v133[0] = 0;
      v133[1] = 0;
      v133[2] = "<chained promise>";
      v133[3] = 0;
      v25 = (v22 + 48);
      v137 = (v22 + 48);
      v138 = 1;
      atomic_compare_exchange_strong_explicit((v22 + 48), &v24, 1u, memory_order_acquire, memory_order_acquire);
      if (v24)
      {
        v25 = MEMORY[0x1CCA63990]();
      }

      v26 = WTF::NativePromiseBase::logChannel(v25);
      v29 = v26;
      if (*v26 && v26[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v144, v133);
        WTF::String::String(&v143, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v142, v22);
        if (v144)
        {
          v31 = *(v144 + 4);
          v32 = v143;
          if (v143)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v31 = 0;
          v32 = v143;
          if (v143)
          {
LABEL_31:
            v33 = *(v32 + 4);
            v34 = v142;
            if (v142)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }
        }

        v33 = 0;
        v34 = v142;
        if (v142)
        {
LABEL_32:
          v35 = *(v34 + 4);
          if ((v35 | v33) < 0)
          {
            goto LABEL_240;
          }

          goto LABEL_37;
        }

LABEL_36:
        v35 = 0;
        if (v33 < 0)
        {
          goto LABEL_240;
        }

LABEL_37:
        v36 = __OFADD__(v33, v35);
        v37 = v33 + v35;
        v38 = v36;
        if (v31 < 0 || (v38 & 1) != 0 || (result = (v31 + v37), __OFADD__(v31, v37)))
        {
LABEL_240:
          v145 = 0;
LABEL_241:
          __break(0xC471u);
          return result;
        }

        if (v144 && (*(v144 + 16) & 4) == 0)
        {
          v39 = 0;
          goto LABEL_53;
        }

        if (v32)
        {
          v40 = *(v32 + 16);
          v39 = (v40 >> 2) & 1;
          if (!v34 || (v40 & 4) == 0)
          {
LABEL_53:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v39, v144, v32, v34, &v145);
            if (!v145)
            {
              goto LABEL_241;
            }

            v142 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v41);
            }

            v42 = v143;
            v143 = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v41);
            }

            v43 = v144;
            v144 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v41);
            }

            v44 = *(v29 + 4);
            v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
            if (v45)
            {
              WTF::String::utf8();
              v46 = v139[0] ? v139[0] + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v46;
              _os_log_impl(&dword_1C79C0000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v45 = v139[0];
              v139[0] = 0;
              if (v45)
              {
                if (*v45 == 1)
                {
                  v45 = WTF::fastFree(v45, v27);
                  if (*v29)
                  {
LABEL_71:
                    if (v29[16] >= 4u)
                    {
                      while (1)
                      {
                        v47 = *v20;
                        if (v47)
                        {
                          break;
                        }

                        v48 = *v20;
                        atomic_compare_exchange_strong_explicit(v20, &v48, v47 | 1, memory_order_acquire, memory_order_acquire);
                        if (v48 == v47)
                        {
                          v49 = WTF::Logger::observers(v45);
                          v50 = *(v49 + 12);
                          if (v50)
                          {
                            v51 = *v49;
                            v52 = *v49 + 8 * v50;
                            do
                            {
                              v53 = *v51;
                              LODWORD(buf) = 0;
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v133);
                              LODWORD(v147) = 0;
                              WTF::String::String(&v148, " settling chained promise ");
                              v149 = 0;
                              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(v150, v22);
                              v139[0] = 0;
                              v139[1] = 0;
                              v54 = WTF::fastMalloc(0x30);
                              LODWORD(v139[1]) = 3;
                              v139[0] = v54;
                              v55 = HIDWORD(v139[1]);
                              v56 = v54 + 16 * HIDWORD(v139[1]);
                              *v56 = buf;
                              v57 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v55 = HIDWORD(v139[1]);
                                v54 = v139[0];
                              }

                              *(v56 + 1) = v57;
                              v58 = v55 + 1;
                              HIDWORD(v139[1]) = v58;
                              v59 = v54 + 16 * v58;
                              *v59 = v147;
                              v60 = v148;
                              if (v148)
                              {
                                atomic_fetch_add_explicit(v148, 2u, memory_order_relaxed);
                                v58 = HIDWORD(v139[1]);
                                v54 = v139[0];
                              }

                              *(v59 + 1) = v60;
                              v61 = v58 + 1;
                              HIDWORD(v139[1]) = v61;
                              v62 = v54 + 16 * v61;
                              *v62 = v149;
                              v63 = v150[0];
                              if (v150[0])
                              {
                                atomic_fetch_add_explicit(v150[0], 2u, memory_order_relaxed);
                                v61 = HIDWORD(v139[1]);
                              }

                              *(v62 + 1) = v63;
                              HIDWORD(v139[1]) = v61 + 1;
                              (*(*v53 + 16))(v53, v29, 4, v139);
                              v64 = v139[0];
                              if (HIDWORD(v139[1]))
                              {
                                v65 = 16 * HIDWORD(v139[1]);
                                v66 = (v139[0] + 8);
                                do
                                {
                                  v67 = *v66;
                                  *v66 = 0;
                                  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v67, v27);
                                  }

                                  v66 += 2;
                                  v65 -= 16;
                                }

                                while (v65);
                                v64 = v139[0];
                              }

                              if (v64)
                              {
                                v139[0] = 0;
                                LODWORD(v139[1]) = 0;
                                WTF::fastFree(v64, v27);
                              }

                              v68 = v150[0];
                              v150[0] = 0;
                              if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v68, v27);
                              }

                              v69 = v148;
                              v148 = 0;
                              if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v69, v27);
                              }

                              v70 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v70, v27);
                              }

                              ++v51;
                            }

                            while (v51 != v52);
                          }

                          v71 = 1;
                          v20 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v71, 0, memory_order_release, memory_order_relaxed);
                          v21 = &v129[5 * v128];
                          if (v71 != 1)
                          {
                            WTF::Lock::unlockSlow(v20);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_103:
                  v72 = v145;
                  v145 = 0;
                  if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v72, v27);
                  }

                  goto LABEL_106;
                }

                --*v45;
              }
            }

            if (*v29)
            {
              goto LABEL_71;
            }

            goto LABEL_103;
          }
        }

        else if (!v34)
        {
          v39 = 1;
          goto LABEL_53;
        }

        v39 = (*(v34 + 16) >> 2) & 1;
        goto LABEL_53;
      }

LABEL_106:
      v73 = *(v22 + 88);
      v74 = *(a1 + 88);
      if (v73 == 255 && v74 == 255)
      {
        goto LABEL_216;
      }

      if (v74 != 255)
      {
        if (v74 == 2)
        {
          if (*(v22 + 88) <= 1u)
          {
            if (*(v22 + 88))
            {
              if (!*(v22 + 80))
              {
                v84 = *(v22 + 68);
                v85 = *(v22 + 56);
                if (v84)
                {
                  v86 = 24 * v84;
                  v87 = (v85 + 16);
                  do
                  {
                    v88 = *v87;
                    *v87 = 0;
                    if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v88, v27);
                    }

                    v87 += 3;
                    v86 -= 24;
                  }

                  while (v86);
                  v85 = *(v22 + 56);
                  v21 = &v129[5 * v128];
                }

                if (v85)
                {
                  *(v22 + 56) = 0;
                  *(v22 + 64) = 0;
                  WTF::fastFree(v85, v27);
                }
              }

              *(v22 + 80) = -1;
            }

LABEL_195:
            v113 = *(a1 + 56);
            *(a1 + 56) = 0;
            *(v22 + 56) = v113;
            *(v22 + 88) = 2;
            goto LABEL_216;
          }

          if (v73 == 255)
          {
            goto LABEL_195;
          }

          v97 = *(a1 + 56);
          *(a1 + 56) = 0;
          v98 = *(v22 + 56);
          *(v22 + 56) = v97;
          if (v98)
          {
            (*(*v98 + 8))(v98);
          }

          goto LABEL_216;
        }

        if (v74 != 1)
        {
          if (*(v22 + 88) > 1u)
          {
            if (v73 == 2)
            {
              v99 = *(v22 + 56);
              *(v22 + 56) = 0;
              if (v99)
              {
                (*(*v99 + 8))(v99);
              }
            }

            *(v22 + 88) = 0;
          }

          else if (*(v22 + 88))
          {
            if (!*(v22 + 80))
            {
              v89 = *(v22 + 68);
              v90 = *(v22 + 56);
              if (v89)
              {
                v91 = 24 * v89;
                v92 = (v90 + 16);
                do
                {
                  v93 = *v92;
                  *v92 = 0;
                  if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v93, v27);
                  }

                  v92 += 3;
                  v91 -= 24;
                }

                while (v91);
                v90 = *(v22 + 56);
                v21 = &v129[5 * v128];
              }

              if (v90)
              {
                *(v22 + 56) = 0;
                *(v22 + 64) = 0;
                WTF::fastFree(v90, v27);
              }
            }

            *(v22 + 80) = -1;
            *(v22 + 88) = 0;
          }

          goto LABEL_216;
        }

        if (*(v22 + 88) > 1u)
        {
          if (v73 == 2)
          {
            v94 = *(v22 + 56);
            *(v22 + 56) = 0;
            if (v94)
            {
              (*(*v94 + 8))(v94);
            }
          }
        }

        else if (*(v22 + 88))
        {
          LOBYTE(v139[0]) = 0;
          v141 = -1;
          v80 = *(a1 + 80);
          if (*(a1 + 80))
          {
            if (v80 == 255)
            {
              LOBYTE(buf) = 0;
              LOBYTE(v148) = -1;
              v82 = (v22 + 80);
              v81 = *(v22 + 80);
              if (v81 == 255)
              {
                goto LABEL_202;
              }

LABEL_173:
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore14DOMCacheEngine10CacheInfosENS7_5ErrorEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(v81, v139, v139, (v22 + 56));
              if (*v82 == 255)
              {
                if (v80 == 255)
                {
                  goto LABEL_202;
                }

                goto LABEL_184;
              }

              if (v80 == 255)
              {
                if (!*v82)
                {
                  v103 = *(v22 + 68);
                  v104 = *(v22 + 56);
                  if (v103)
                  {
                    v105 = v20;
                    v106 = 24 * v103;
                    v107 = (v104 + 16);
                    do
                    {
                      v108 = *v107;
                      *v107 = 0;
                      if (v108 && atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v108, v27);
                      }

                      v107 += 3;
                      v106 -= 24;
                    }

                    while (v106);
                    v104 = *(v22 + 56);
                    v20 = v105;
                  }

                  if (v104)
                  {
                    *(v22 + 56) = 0;
                    *(v22 + 64) = 0;
                    WTF::fastFree(v104, v27);
                  }
                }

                *v82 = -1;
                if (v141)
                {
                  goto LABEL_215;
                }

LABEL_203:
                v114 = v139[0];
                if (HIDWORD(v139[1]))
                {
                  v115 = 24 * HIDWORD(v139[1]);
                  v116 = (v139[0] + 16);
                  do
                  {
                    v117 = *v116;
                    *v116 = 0;
                    if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v117, v27);
                    }

                    v116 += 3;
                    v115 -= 24;
                  }

                  while (v115);
                }

                if (v114)
                {
                  WTF::fastFree(v114, v27);
                }

LABEL_215:
                v21 = &v129[5 * v128];
                goto LABEL_216;
              }

LABEL_184:
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore14DOMCacheEngine10CacheInfosENS7_5ErrorEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(v80, v22 + 56, v22 + 56, &buf);
              if (!v148)
              {
                v109 = buf;
                if (HIDWORD(buf))
                {
                  v110 = 24 * HIDWORD(buf);
                  v111 = (buf + 16);
                  do
                  {
                    v112 = *v111;
                    *v111 = 0;
                    if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v112, v27);
                    }

                    v111 += 3;
                    v110 -= 24;
                  }

                  while (v110);
                }

                if (v109)
                {
                  WTF::fastFree(v109, v27);
                }
              }

LABEL_202:
              if (!v141)
              {
                goto LABEL_203;
              }

              goto LABEL_215;
            }

            LOBYTE(v139[0]) = *(a1 + 56);
            v141 = v80;
            LOBYTE(buf) = v139[0];
            LOBYTE(v148) = v80;
            v82 = (v22 + 80);
            v81 = *(v22 + 80);
            if (v81 != 255)
            {
              goto LABEL_173;
            }
          }

          else
          {
            *&v28 = 0;
            v100 = *(a1 + 56);
            *(a1 + 56) = 0;
            v140 = *(a1 + 72);
            v101 = v140;
            v141 = 0;
            *v139 = v28;
            *&buf = v100;
            v102 = *(a1 + 64);
            *(a1 + 64) = 0;
            *(&buf + 1) = v102;
            v147 = v101;
            LOBYTE(v148) = 0;
            v82 = (v22 + 80);
            v81 = *(v22 + 80);
            if (v81 != 255)
            {
              goto LABEL_173;
            }
          }

          v141 = -1;
          goto LABEL_184;
        }

        *(v22 + 56) = 0;
        *(v22 + 80) = -1;
        v95 = *(a1 + 80);
        if (v95 != 255)
        {
          if (*(a1 + 80))
          {
            *(v22 + 56) = *(a1 + 56);
          }

          else
          {
            *(v22 + 56) = 0;
            *(v22 + 64) = 0;
            v96 = *(a1 + 56);
            *(a1 + 56) = 0;
            *(v22 + 56) = v96;
            LODWORD(v96) = *(a1 + 64);
            *(a1 + 64) = 0;
            *(v22 + 64) = v96;
            v95 = *(a1 + 68);
            *(a1 + 68) = 0;
            *(v22 + 68) = v95;
            *(v22 + 72) = *(a1 + 72);
            LOBYTE(v95) = *(a1 + 80);
          }

          *(v22 + 80) = v95;
        }

        *(v22 + 88) = 1;
        goto LABEL_216;
      }

      if (*(v22 + 88) > 1u)
      {
        if (v73 == 2)
        {
          v83 = *(v22 + 56);
          *(v22 + 56) = 0;
          if (v83)
          {
            (*(*v83 + 8))(v83);
          }
        }

LABEL_129:
        *(v22 + 88) = -1;
        goto LABEL_216;
      }

      if (!*(v22 + 88))
      {
        goto LABEL_129;
      }

      if (!*(v22 + 80))
      {
        v75 = *(v22 + 68);
        v76 = *(v22 + 56);
        if (v75)
        {
          v77 = 24 * v75;
          v78 = (v76 + 16);
          do
          {
            v79 = *v78;
            *v78 = 0;
            if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v79, v27);
            }

            v78 += 3;
            v77 -= 24;
          }

          while (v77);
          v76 = *(v22 + 56);
          v21 = &v129[5 * v128];
        }

        if (v76)
        {
          *(v22 + 56) = 0;
          *(v22 + 64) = 0;
          WTF::fastFree(v76, v27);
        }
      }

      *(v22 + 80) = -1;
      *(v22 + 88) = -1;
LABEL_216:
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v22, &v137);
      v118 = v138;
      if (v138 == 1)
      {
        v119 = v137;
        atomic_compare_exchange_strong_explicit(v137, &v118, 0, memory_order_release, memory_order_relaxed);
        if (v118 != 1)
        {
          break;
        }
      }

      v120 = (v22 + 8);
      add = atomic_fetch_add((v22 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_222;
      }

LABEL_219:
      WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v134);
      v19 += 5;
      if (v19 == v21)
      {
        goto LABEL_223;
      }
    }

    WTF::Lock::unlockSlow(v119);
    v120 = (v22 + 8);
    add = atomic_fetch_add((v22 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_219;
    }

LABEL_222:
    atomic_store(add, v120);
    (*(*v22 + 16))(v22);
    WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v134);
    v19 += 5;
  }

  while (v19 != v21);
LABEL_223:
  v19 = v129;
  v122 = 40 * v128;
  v123 = v129;
  do
  {
    v123 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v123) + 5;
    v122 -= 40;
  }

  while (v122);
LABEL_225:
  if (v19)
  {
    WTF::fastFree(v19, v5);
  }

  result = v130;
  if (v131)
  {
    v124 = 8 * v131;
    do
    {
      v125 = *result;
      *result = 0;
      if (v125 && atomic_fetch_add(v125 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v125 + 2);
        v126 = result;
        (*(*v125 + 8))(v125);
        result = v126;
      }

      result += 8;
      v124 -= 8;
    }

    while (v124);
    result = v130;
  }

  if (&v132 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AACFE4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::~expected(v11 - 144, a2);
  v14 = 0;
  atomic_compare_exchange_strong_explicit(*v10, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v13);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v15);
  _Unwind_Resume(a1);
}

void sub_1C7AAD078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::Lock *a31, char a32, WTF *a33, int a34)
{
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34 + 2);
      (*(*v34 + 16))(v34);
    }
  }

  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a26);
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v36);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v37);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::takeResult(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 88) == 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  v7 = result;
  v8 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  a2 = v8;
  result = v7;
  if (*(v8 + 88) != 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  *result = 0;
  *(result + 24) = -1;
  v4 = *(a2 + 80);
  if (v4 != 255)
  {
    if (*(a2 + 80))
    {
      *result = *(a2 + 56);
    }

    else
    {
      *result = *(a2 + 56);
      v5 = *(a2 + 64);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(result + 8) = v5;
      *(result + 16) = *(a2 + 72);
    }

    *(result + 24) = v4;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
  WTF::String::String(&v73, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v71, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v70, a4);
  WTF::String::String(&v69, "]");
  v8 = v74;
  v67 = v74;
  v81 = v73;
  *&buf = v75;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v67, &v81, &v80, &v79, &v78, &v77, &v76);
  if (!v76)
  {
    __break(0xC471u);
    return result;
  }

  v11 = v69;
  v69 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v70;
  v70 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v71;
  v71 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v72;
  v72 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = v73;
  v73 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v74 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v10);
  }

  v16 = v75;
  v75 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v18 || ((WTF::String::utf8(), v67) ? (v20 = v67 + 16) : (v20 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v20, _os_log_impl(&dword_1C79C0000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v18 = v67, v67 = 0, !v18))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v18 != 1)
  {
    --*v18;
    goto LABEL_30;
  }

  v18 = WTF::fastFree(v18, v19);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v66 = *v24 + 8 * v25;
            do
            {
              v27 = *v26;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v83 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
              v85 = 0;
              WTF::String::String(&v86, " aborting [callback:");
              v87 = 0;
              WTF::LogArgument<void const*>::toString();
              v89 = 0;
              WTF::String::String(&v90, " callSite:");
              v91 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v92, a4);
              v93 = 0;
              WTF::String::String(v94, "]");
              v67 = 0;
              v68 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v68) = 7;
              v67 = v28;
              v29 = HIDWORD(v68);
              v30 = v28 + 16 * HIDWORD(v68);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v68);
                v28 = v67;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v68) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v83;
              v34 = v84;
              if (v84)
              {
                atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                v32 = HIDWORD(v68);
                v28 = v67;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v68) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v85;
              v37 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                v35 = HIDWORD(v68);
                v28 = v67;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v68) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v87;
              v40 = v88;
              if (v88)
              {
                atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
                v38 = HIDWORD(v68);
                v28 = v67;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v68) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v89;
              v43 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
                v41 = HIDWORD(v68);
                v28 = v67;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v68) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v91;
              v46 = v92;
              if (v92)
              {
                atomic_fetch_add_explicit(v92, 2u, memory_order_relaxed);
                v44 = HIDWORD(v68);
                v28 = v67;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v68) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v93;
              v49 = v94[0];
              if (v94[0])
              {
                atomic_fetch_add_explicit(v94[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v68);
              }

              *(v48 + 1) = v49;
              HIDWORD(v68) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v67);
              v50 = v67;
              if (HIDWORD(v68))
              {
                v51 = a1;
                v52 = a2;
                v53 = a3;
                v54 = a4;
                v55 = 16 * HIDWORD(v68);
                v56 = (v67 + 8);
                do
                {
                  v57 = *v56;
                  *v56 = 0;
                  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v57, v19);
                  }

                  v56 += 2;
                  v55 -= 16;
                }

                while (v55);
                v50 = v67;
                a4 = v54;
                a3 = v53;
                a2 = v52;
                a1 = v51;
              }

              if (v50)
              {
                v67 = 0;
                LODWORD(v68) = 0;
                WTF::fastFree(v50, v19);
              }

              v58 = v94[0];
              v94[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v19);
              }

              v59 = v92;
              v92 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v19);
              }

              v60 = v90;
              v90 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v19);
              }

              v61 = v88;
              v88 = 0;
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v19);
              }

              v62 = v86;
              v86 = 0;
              if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v19);
              }

              v63 = v84;
              v84 = 0;
              if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v63, v19);
              }

              v64 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v19);
              }

              ++v26;
            }

            while (v26 != v66);
          }

          v65 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v65, 0, memory_order_release, memory_order_relaxed);
          if (v65 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v76;
  v76 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void sub_1C7AADB7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
{
  v45 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 == 1)
  {
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472C038;
  v1 = result[2];
  result[2] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = v3[1];
    v3[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472C038;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v5 = a1;
    (*(*v2 + 16))(v2);
    a1 = v5;
    v3 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (!v3)
    {
LABEL_5:

      return WTF::fastFree(a1, a2);
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_5;
  }

  atomic_store(1u, v3 + 2);
  v6 = a1;
  (*(*v3 + 8))(v3);
  a1 = v6;

  return WTF::fastFree(a1, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v29 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v29, (v2 + 24));
    }

    return result;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((v1 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v19 = a1;
    MEMORY[0x1CCA63990](v1 + 48);
    a1 = v19;
    v8 = *(v1 + 88);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_11:
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v8 = *(v1 + 88);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_11;
    }
  }

  v20 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v9 = *(v20 + 8);
  v10 = *(v20 + 16);
  if (v8 == 2)
  {
LABEL_12:
    v11 = 0;
    a1 = v10 + 48;
    atomic_compare_exchange_strong_explicit((v10 + 48), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990]();
      a1 = v10 + 48;
      if (*(v10 + 88) == 2)
      {
        goto LABEL_14;
      }
    }

    else if (*(v10 + 88) == 2)
    {
LABEL_14:
      v12 = *(v10 + 56);
      *(v10 + 56) = 0;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow(a1);
      }

      (*(*v12 + 16))(&v29, v12);
      (*(*v9 + 24))(v9, v10, &v29);
      if (!v32)
      {
        v15 = v29;
        if (HIDWORD(v30))
        {
          v16 = 24 * HIDWORD(v30);
          v17 = (v29 + 16);
          do
          {
            v18 = *v17;
            *v17 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v14);
            }

            v17 += 3;
            v16 -= 24;
          }

          while (v16);
          v15 = v29;
        }

        if (v15)
        {
          v29 = 0;
          LODWORD(v30) = 0;
          WTF::fastFree(v15, v14);
        }
      }

      v32 = -1;
      return (*(*v12 + 8))(v12);
    }

LABEL_51:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_29:
  v21 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v21, 1u, memory_order_acquire, memory_order_acquire);
  if (v21)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 88) != 1)
    {
      goto LABEL_51;
    }
  }

  else if (*(v10 + 88) != 1)
  {
    goto LABEL_51;
  }

  LOBYTE(v29) = 0;
  v32 = -1;
  v22 = *(v10 + 80);
  if (v22 != 255)
  {
    if (*(v10 + 80))
    {
      LOBYTE(v29) = *(v10 + 56);
    }

    else
    {
      v29 = *(v10 + 56);
      v23 = *(v10 + 64);
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      v30 = v23;
      v31 = *(v10 + 72);
    }

    v32 = v22;
  }

  v24 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  result = (*(*v9 + 24))(v9, v10, &v29);
  if (!v32)
  {
    result = v29;
    if (HIDWORD(v30))
    {
      v26 = 24 * HIDWORD(v30);
      v27 = (v29 + 16);
      do
      {
        v28 = *v27;
        *v27 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v25);
        }

        v27 += 3;
        v26 -= 24;
      }

      while (v26);
      result = v29;
    }

    if (result)
    {
      v29 = 0;
      LODWORD(v30) = 0;
      return WTF::fastFree(result, v25);
    }
  }

  return result;
}

void sub_1C7AAE428(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>::~expected(&a9, a2);
  (*(*v9 + 8))(v9);
  _Unwind_Resume(a1);
}

WTF *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore14DOMCacheEngine10CacheInfosENS7_5ErrorEEEEE14generic_assignINS0_15move_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSG_OT0_E_JRSB_SF_EEEDcmSH_DpOT0_(WTF *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result)
  {
    if (*(a2 + 24))
    {
      if (*(a2 + 24) == 1)
      {
        *a3 = *a4;
        return result;
      }
    }

    else
    {
      v8 = *(a2 + 12);
      result = *a2;
      if (v8)
      {
        v9 = 24 * v8;
        v10 = (result + 16);
        do
        {
          v11 = *v10;
          *v10 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v10 += 3;
          v9 -= 24;
        }

        while (v9);
        result = *a2;
      }

      if (result)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        result = WTF::fastFree(result, a2);
      }
    }

    *a2 = *a4;
    *(a2 + 24) = 1;
  }

  else if (*(a2 + 24))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v7 = *a4;
    *a4 = 0;
    *a2 = v7;
    LODWORD(v7) = *(a4 + 2);
    *(a4 + 2) = 0;
    *(a2 + 8) = v7;
    LODWORD(v7) = *(a4 + 3);
    *(a4 + 3) = 0;
    *(a2 + 12) = v7;
    *(a2 + 16) = a4[2];
    *(a2 + 24) = 0;
  }

  else
  {
    v12 = *(a3 + 12);
    result = *a3;
    if (v12)
    {
      v13 = 24 * v12;
      v14 = (result + 16);
      do
      {
        v15 = *v14;
        *v14 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, a2);
        }

        v14 += 3;
        v13 -= 24;
      }

      while (v13);
      result = *a3;
    }

    if (result)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    v16 = *a4;
    *a4 = 0;
    *a3 = v16;
    LODWORD(v16) = *(a4 + 2);
    *(a4 + 2) = 0;
    *(a3 + 8) = v16;
    LODWORD(v16) = *(a4 + 3);
    *(a4 + 3) = 0;
    *(a3 + 12) = v16;
    *(a3 + 16) = a4[2];
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 124);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 124);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 112);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        result = (*(*v6 + 16))(v6);
      }
    }

    v4 += 5;
    v5 -= 40;
  }

  while (v5);
LABEL_9:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

void sub_1C7AAE7C4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  result = WTF::Logger::LogSiteIdentifier::toString(&v16, (a2 + 16));
  if (v17)
  {
    v6 = *(v17 + 1);
    if (v16)
    {
LABEL_3:
      v7 = *(v16 + 1);
      if ((v7 & 0x80000000) == 0)
      {
        v4 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

LABEL_30:
      *a1 = 0;
LABEL_31:
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v6 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_9:
  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  v10 = v4;
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    goto LABEL_30;
  }

  v4 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v4)
  {
    goto LABEL_30;
  }

  result = (v11 + 13);
  if (__OFADD__(v11, 13))
  {
    goto LABEL_30;
  }

  v12 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v16 || (*(v16 + 16) & 4) != 0);
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v12, "NativePromise", 0xDuLL, v17, 60, v16, 62, &v18);
  v14 = v18;
  *a1 = v18;
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_1C7AAE9A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  else
  {
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return v1;
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 16))(v4);
  return a1;
}

void sub_1C7AAEB04(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(uint64_t result, void *a2)
{
  if (*(result + 24) <= 1u)
  {
    if (*(result + 24))
    {
      if (!*(result + 16))
      {
        v2 = result;
        v3 = *(result + 12);
        if (v3)
        {
          WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*result, (*result + 608 * v3));
        }

        result = v2;
        v4 = *v2;
        if (*v2)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
          WTF::fastFree(v4, a2);
          result = v2;
        }
      }

      *(result + 16) = -1;
    }

    goto LABEL_9;
  }

  if (*(result + 24) != 2 || (v5 = *result, *result = 0, !v5))
  {
LABEL_9:
    *(result + 24) = -1;
    return result;
  }

  v6 = result;
  (*(*v5 + 8))(v5);
  result = v6;
  *(v6 + 24) = -1;
  return result;
}

void sub_1C7AAEC90(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~expected(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*a1, (*a1 + 608 * v4));
  }

  v5 = *a1;
  if (!*a1)
  {
LABEL_2:
    *(a1 + 16) = -1;
    return a1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v5, a2);
    *(a1 + 16) = -1;
    return a1;
  }
}

void sub_1C7AAED28(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~variant(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*a1, (*a1 + 608 * v4));
  }

  v5 = *a1;
  if (!*a1)
  {
LABEL_2:
    *(a1 + 16) = -1;
    return a1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v5, a2);
    *(a1 + 16) = -1;
    return a1;
  }
}

void sub_1C7AAEDC0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(WTF::StringImpl *a1, WTF::StringImpl *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      if (*(v3 + 592) > 1u)
      {
        if (*(v3 + 592) == 2)
        {
          v5 = *(v3 + 73);
          *(v3 + 73) = 0;
          if (v5)
          {
            if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v5 + 2);
              (*(*v5 + 8))(v5);
            }
          }
        }
      }

      else if (*(v3 + 592))
      {
        v4 = *(v3 + 73);
        *(v3 + 73) = 0;
        if (v4)
        {
          if (*v4 == 1)
          {
            v6 = MEMORY[0x1CCA67F60]();
            bmalloc::api::tzoneFree(v6, v7);
          }

          else
          {
            --*v4;
          }
        }
      }

      *(v3 + 592) = -1;
      if (*(v3 + 576) == 1)
      {
        v8 = *(v3 + 71);
        *(v3 + 71) = 0;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      v9 = *(v3 + 69);
      *(v3 + 69) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      if (*(v3 + 536) == 1)
      {
        break;
      }

LABEL_29:
      WebCore::HTTPHeaderMap::~HTTPHeaderMap((v3 + 376), a2);
      v15 = *(v3 + 46);
      *(v3 + 46) = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      v16 = *(v3 + 45);
      *(v3 + 45) = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }

      v17 = *(v3 + 43);
      *(v3 + 43) = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v14);
      }

      v18 = *(v3 + 41);
      *(v3 + 41) = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v14);
      }

      v19 = *(v3 + 36);
      *(v3 + 36) = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v14);
      }

      v20 = *(v3 + 34);
      *(v3 + 34) = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }

      v21 = *(v3 + 29);
      *(v3 + 29) = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v14);
      }

      v22 = *(v3 + 27);
      *(v3 + 27) = 0;
      if (v22)
      {
      }

      v23 = *(v3 + 24);
      *(v3 + 24) = 0;
      if (!v23)
      {
        goto LABEL_55;
      }

      if (*v23 != 1)
      {
        --*v23;
LABEL_55:
        v24 = *(v3 + 23);
        *(v3 + 23) = 0;
        if (v24)
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      v25 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v25, v26);
      v24 = *(v3 + 23);
      *(v3 + 23) = 0;
      if (v24)
      {
LABEL_58:
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v14);
        }
      }

LABEL_60:
      v27 = *(v3 + 22);
      *(v3 + 22) = 0;
      if (v27)
      {
        if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v14);
        }
      }

      WebCore::ResourceRequestBase::RequestData::~RequestData((v3 + 24), v14);
      v3 = (v3 + 608);
      if (v3 == a2)
      {
        return;
      }
    }

    v10 = *(v3 + 66);
    *(v3 + 66) = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WebCore::AdditionalNetworkLoadMetricsForWebInspector::~AdditionalNetworkLoadMetricsForWebInspector(v10, a2);
        WTF::fastFree(v12, v13);
        v11 = *(v3 + 62);
        *(v3 + 62) = 0;
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      --*v10;
    }

    v11 = *(v3 + 62);
    *(v3 + 62) = 0;
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    goto LABEL_29;
  }
}

unint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v53, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v52, a1);
    v5 = v52;
    if (v53)
    {
      v6 = *(v53 + 1);
      if (v52)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (v52)
      {
LABEL_8:
        v7 = *(v52 + 4);
        if ((v7 | v6) < 0)
        {
          goto LABEL_86;
        }

LABEL_12:
        result = (v6 + v7);
        if (!__OFADD__(v6, v7))
        {
          if (v53)
          {
            v8 = *(v53 + 4);
            v9 = (v8 >> 2) & 1;
            if (!v52 || (v8 & 4) == 0)
            {
LABEL_20:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v9, v53, v52, &v54);
              if (!v54)
              {
LABEL_87:
                __break(0xC471u);
                return result;
              }

              v52 = 0;
              if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v5, v10);
              }

              v11 = v53;
              v53 = 0;
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v10);
              }

              v12 = *(v2 + 32);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                WTF::String::utf8();
                v15 = v50 ? v50 + 16 : 0;
                *buf = 136446210;
                *v56 = v15;
                _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v13 = v50;
                v50 = 0;
                if (v13)
                {
                  if (*v13 == 1)
                  {
                    v13 = WTF::fastFree(v13, v14);
                    if (*v2)
                    {
LABEL_35:
                      if (*(v2 + 16) >= 4u)
                      {
                        v16 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v17 = *v16;
                          if (v17)
                          {
                            break;
                          }

                          v18 = *v16;
                          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
                          if (v18 == v17)
                          {
                            v19 = WTF::Logger::observers(v13);
                            v20 = *(v19 + 12);
                            if (v20)
                            {
                              v21 = *v19;
                              v22 = *v19 + 8 * v20;
                              do
                              {
                                v23 = *v21;
                                *buf = 0;
                                WTF::String::String(&v56[4], "destroying ");
                                v57 = 0;
                                WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v58, a1);
                                v50 = 0;
                                v51 = 0;
                                v24 = WTF::fastMalloc(0x20);
                                LODWORD(v51) = 2;
                                v50 = v24;
                                v25 = HIDWORD(v51);
                                v26 = v24 + 16 * HIDWORD(v51);
                                *v26 = *buf;
                                v27 = *&v56[4];
                                if (*&v56[4])
                                {
                                  atomic_fetch_add_explicit(*&v56[4], 2u, memory_order_relaxed);
                                  v25 = HIDWORD(v51);
                                  v24 = v50;
                                }

                                *(v26 + 1) = v27;
                                v28 = v25 + 1;
                                HIDWORD(v51) = v28;
                                v29 = v24 + 16 * v28;
                                *v29 = v57;
                                v30 = v58[0];
                                if (v58[0])
                                {
                                  atomic_fetch_add_explicit(v58[0], 2u, memory_order_relaxed);
                                  v28 = HIDWORD(v51);
                                }

                                *(v29 + 1) = v30;
                                HIDWORD(v51) = v28 + 1;
                                (*(*v23 + 16))(v23, v2, 4, &v50);
                                v31 = v50;
                                if (HIDWORD(v51))
                                {
                                  v32 = 16 * HIDWORD(v51);
                                  v33 = (v50 + 8);
                                  do
                                  {
                                    v34 = *v33;
                                    *v33 = 0;
                                    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v34, v14);
                                    }

                                    v33 += 2;
                                    v32 -= 16;
                                  }

                                  while (v32);
                                  v31 = v50;
                                }

                                if (v31)
                                {
                                  v50 = 0;
                                  LODWORD(v51) = 0;
                                  WTF::fastFree(v31, v14);
                                }

                                v35 = v58[0];
                                v58[0] = 0;
                                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v35, v14);
                                }

                                v36 = *&v56[4];
                                *&v56[4] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v14);
                                }

                                ++v21;
                              }

                              while (v21 != v22);
                            }

                            v37 = 1;
                            atomic_compare_exchange_strong_explicit(v16, &v37, 0, memory_order_release, memory_order_relaxed);
                            if (v37 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_63:
                    v38 = v54;
                    v54 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v14);
                    }

                    goto LABEL_66;
                  }

                  --*v13;
                }
              }

              if (*v2)
              {
                goto LABEL_35;
              }

              goto LABEL_63;
            }
          }

          else if (!v52)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v9 = (*(v52 + 16) >> 2) & 1;
          goto LABEL_20;
        }

LABEL_86:
        v54 = 0;
        goto LABEL_87;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_86;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 124);
  if (v40)
  {
    v41 = *(a1 + 112);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 112);
  if (v43)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 100);
  v45 = *(a1 + 88);
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        v48 = v45;
        (*(*v47 + 8))(v47);
        v45 = v48;
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = *(a1 + 88);
  }

  if ((a1 + 104) != v45 && v45 != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    WTF::fastFree(v45, v39);
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(a1 + 56, v39);
  return a1;
}

void sub_1C7AAF5A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
{
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

LABEL_6:
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 112, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 88, v23);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v18 + 56, v24);
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v128[1] = *MEMORY[0x1E69E9840];
  v109 = &v111;
  v4 = *(a1 + 88);
  v5 = (a1 + 104);
  if (v4 == (a1 + 104))
  {
    v6 = *(a1 + 100);
    memcpy(&v111, v5, 8 * v6);
    v4 = &v111;
  }

  else
  {
    *(a1 + 88) = v5;
    v109 = v4;
    v6 = *(a1 + 100);
    *(a1 + 96) = 1;
  }

  v110 = v6;
  *(a1 + 96) = 1;
  v107 = *(a1 + 124);
  v108 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 129)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
        }

        else
        {
          v13 = *a2;
          v14 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v14, 0, memory_order_release, memory_order_relaxed);
          if (v14 != 1)
          {
            WTF::Lock::unlockSlow(v13);
          }

          if (WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v113, a1);
            v15 = v113;
            (*(*v113 + 16))(&buf, v113);
            (*(*v8 + 24))(v8, a1, &buf);
            std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~expected(&buf, v16);
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
            std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~expected(&buf, v17);
          }

          v18 = 0;
          atomic_compare_exchange_strong_explicit(*a2, &v18, 1u, memory_order_acquire, memory_order_acquire);
          if (v18)
          {
            MEMORY[0x1CCA63990]();
          }
        }
      }

      else
      {
        v10 = *(v8 + 16);
        atomic_fetch_add((v8 + 8), 1u);
        *&buf = v8;
        *(&buf + 1) = a1;
        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F472C088;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v113 = v11;
        (*(*v10 + 16))(v10, &v113);
        v12 = v113;
        v113 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v4 = (v4 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v19 = v108;
  if (!v107)
  {
    goto LABEL_185;
  }

  v20 = (v108 + 40 * v107);
  v21 = MEMORY[0x1E696EBC0];
  v22 = v108;
  do
  {
    while (1)
    {
      v23 = *v22;
      *v22 = 0;
      v113 = v23;
      v24 = *(v22 + 24);
      v114 = *(v22 + 8);
      v115 = v24;
      if (v23)
      {
        atomic_fetch_add((v23 + 8), 1u);
      }

      v25 = 0;
      v112[0] = 0;
      v112[1] = 0;
      v112[2] = "<chained promise>";
      v112[3] = 0;
      v26 = (v23 + 48);
      v116 = (v23 + 48);
      v117 = 1;
      atomic_compare_exchange_strong_explicit((v23 + 48), &v25, 1u, memory_order_acquire, memory_order_acquire);
      if (v25)
      {
        v26 = MEMORY[0x1CCA63990]();
      }

      v27 = WTF::NativePromiseBase::logChannel(v26);
      v30 = v27;
      if (*v27 && v27[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v122, v112);
        WTF::String::String(&v121, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v120, v23);
        if (v122)
        {
          v32 = *(v122 + 4);
          v33 = v121;
          if (v121)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v32 = 0;
          v33 = v121;
          if (v121)
          {
LABEL_31:
            v34 = *(v33 + 4);
            v35 = v120;
            if (v120)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }
        }

        v34 = 0;
        v35 = v120;
        if (v120)
        {
LABEL_32:
          v36 = *(v35 + 4);
          if ((v36 | v34) < 0)
          {
            goto LABEL_200;
          }

          goto LABEL_37;
        }

LABEL_36:
        v36 = 0;
        if (v34 < 0)
        {
          goto LABEL_200;
        }

LABEL_37:
        v37 = __OFADD__(v34, v36);
        v38 = v34 + v36;
        v39 = v37;
        if (v32 < 0 || (v39 & 1) != 0 || (result = (v32 + v38), __OFADD__(v32, v38)))
        {
LABEL_200:
          v123 = 0;
LABEL_201:
          __break(0xC471u);
          return result;
        }

        if (v122 && (*(v122 + 16) & 4) == 0)
        {
          v40 = 0;
          goto LABEL_53;
        }

        if (v33)
        {
          v41 = *(v33 + 16);
          v40 = (v41 >> 2) & 1;
          if (!v35 || (v41 & 4) == 0)
          {
LABEL_53:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v40, v122, v33, v35, &v123);
            if (!v123)
            {
              goto LABEL_201;
            }

            v120 = 0;
            if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v42);
            }

            v43 = v121;
            v121 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v42);
            }

            v44 = v122;
            v122 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v42);
            }

            v45 = *(v30 + 4);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              WTF::String::utf8();
              v47 = v118[0] ? v118[0] + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v47;
              _os_log_impl(&dword_1C79C0000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v46 = v118[0];
              v118[0] = 0;
              if (v46)
              {
                if (*v46 == 1)
                {
                  v46 = WTF::fastFree(v46, v28);
                  if (*v30)
                  {
LABEL_71:
                    if (v30[16] >= 4u)
                    {
                      while (1)
                      {
                        v48 = *v21;
                        if (v48)
                        {
                          break;
                        }

                        v49 = *v21;
                        atomic_compare_exchange_strong_explicit(v21, &v49, v48 | 1, memory_order_acquire, memory_order_acquire);
                        if (v49 == v48)
                        {
                          v50 = WTF::Logger::observers(v46);
                          v51 = *(v50 + 12);
                          if (v51)
                          {
                            v52 = *v50;
                            v53 = *v50 + 8 * v51;
                            do
                            {
                              v54 = *v52;
                              LODWORD(buf) = 0;
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v112);
                              v125 = 0;
                              WTF::String::String(&v126, " settling chained promise ");
                              v127 = 0;
                              WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v128, v23);
                              v118[0] = 0;
                              v118[1] = 0;
                              v55 = WTF::fastMalloc(0x30);
                              LODWORD(v118[1]) = 3;
                              v118[0] = v55;
                              v56 = HIDWORD(v118[1]);
                              v57 = v55 + 16 * HIDWORD(v118[1]);
                              *v57 = buf;
                              v58 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v56 = HIDWORD(v118[1]);
                                v55 = v118[0];
                              }

                              *(v57 + 1) = v58;
                              v59 = v56 + 1;
                              HIDWORD(v118[1]) = v59;
                              v60 = v55 + 16 * v59;
                              *v60 = v125;
                              v61 = v126;
                              if (v126)
                              {
                                atomic_fetch_add_explicit(v126, 2u, memory_order_relaxed);
                                v59 = HIDWORD(v118[1]);
                                v55 = v118[0];
                              }

                              *(v60 + 1) = v61;
                              v62 = v59 + 1;
                              HIDWORD(v118[1]) = v62;
                              v63 = v55 + 16 * v62;
                              *v63 = v127;
                              v64 = v128[0];
                              if (v128[0])
                              {
                                atomic_fetch_add_explicit(v128[0], 2u, memory_order_relaxed);
                                v62 = HIDWORD(v118[1]);
                              }

                              *(v63 + 1) = v64;
                              HIDWORD(v118[1]) = v62 + 1;
                              (*(*v54 + 16))(v54, v30, 4, v118);
                              v65 = v118[0];
                              if (HIDWORD(v118[1]))
                              {
                                v66 = 16 * HIDWORD(v118[1]);
                                v67 = (v118[0] + 8);
                                do
                                {
                                  v68 = *v67;
                                  *v67 = 0;
                                  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v68, v28);
                                  }

                                  v67 += 2;
                                  v66 -= 16;
                                }

                                while (v66);
                                v65 = v118[0];
                              }

                              if (v65)
                              {
                                v118[0] = 0;
                                LODWORD(v118[1]) = 0;
                                WTF::fastFree(v65, v28);
                              }

                              v69 = v128[0];
                              v128[0] = 0;
                              if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v69, v28);
                              }

                              v70 = v126;
                              v126 = 0;
                              if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v70, v28);
                              }

                              v71 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v71, v28);
                              }

                              ++v52;
                            }

                            while (v52 != v53);
                          }

                          v72 = 1;
                          v21 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v72, 0, memory_order_release, memory_order_relaxed);
                          v20 = (v108 + 40 * v107);
                          if (v72 != 1)
                          {
                            WTF::Lock::unlockSlow(v21);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_103:
                  v73 = v123;
                  v123 = 0;
                  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v73, v28);
                  }

                  goto LABEL_106;
                }

                --*v46;
              }
            }

            if (*v30)
            {
              goto LABEL_71;
            }

            goto LABEL_103;
          }
        }

        else if (!v35)
        {
          v40 = 1;
          goto LABEL_53;
        }

        v40 = (*(v35 + 16) >> 2) & 1;
        goto LABEL_53;
      }

LABEL_106:
      v74 = *(v23 + 80);
      v75 = *(a1 + 80);
      if (v74 != 255 || v75 != 255)
      {
        switch(v75)
        {
          case 255:
            if (*(v23 + 80) > 1u)
            {
              if (v74 == 2)
              {
                v80 = *(v23 + 56);
                *(v23 + 56) = 0;
                if (v80)
                {
                  (*(*v80 + 8))(v80);
                }
              }
            }

            else if (*(v23 + 80))
            {
              if (!*(v23 + 72))
              {
                v76 = *(v23 + 68);
                if (v76)
                {
                  WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*(v23 + 56), (*(v23 + 56) + 608 * v76));
                }

                v77 = *(v23 + 56);
                if (v77)
                {
                  *(v23 + 56) = 0;
                  *(v23 + 64) = 0;
                  WTF::fastFree(v77, v28);
                }
              }

              *(v23 + 72) = -1;
              v78 = -1;
              goto LABEL_163;
            }

            v78 = -1;
LABEL_163:
            *(v23 + 80) = v78;
            break;
          case 2:
            if (*(v23 + 80) <= 1u)
            {
              if (*(v23 + 80))
              {
                if (!*(v23 + 72))
                {
                  v81 = *(v23 + 68);
                  if (v81)
                  {
                    WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*(v23 + 56), (*(v23 + 56) + 608 * v81));
                  }

                  v82 = *(v23 + 56);
                  if (v82)
                  {
                    *(v23 + 56) = 0;
                    *(v23 + 64) = 0;
                    WTF::fastFree(v82, v28);
                  }
                }

                *(v23 + 72) = -1;
              }

LABEL_153:
              v88 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v23 + 56) = v88;
              v78 = 2;
              goto LABEL_163;
            }

            if (v74 == 255)
            {
              goto LABEL_153;
            }

            v90 = *(a1 + 56);
            *(a1 + 56) = 0;
            v91 = *(v23 + 56);
            *(v23 + 56) = v90;
            if (v91)
            {
              (*(*v91 + 8))(v91);
            }

            break;
          case 1:
            if (*(v23 + 80) > 1u)
            {
              if (v74 == 2)
              {
                v85 = *(v23 + 56);
                *(v23 + 56) = 0;
                if (v85)
                {
                  (*(*v85 + 8))(v85);
                }
              }

LABEL_149:
              *(v23 + 80) = -1;
              *(v23 + 56) = 0;
              *(v23 + 72) = -1;
              v86 = *(a1 + 72);
              if (v86 != 255)
              {
                if (*(a1 + 72))
                {
                  *(v23 + 56) = *(a1 + 56);
                }

                else
                {
                  *(v23 + 56) = 0;
                  *(v23 + 64) = 0;
                  v87 = *(a1 + 56);
                  *(a1 + 56) = 0;
                  *(v23 + 56) = v87;
                  LODWORD(v87) = *(a1 + 64);
                  *(a1 + 64) = 0;
                  *(v23 + 64) = v87;
                  v86 = *(a1 + 68);
                  *(a1 + 68) = 0;
                  *(v23 + 68) = v86;
                  LOBYTE(v86) = *(a1 + 72);
                }

                *(v23 + 72) = v86;
              }

              v78 = 1;
              goto LABEL_163;
            }

            if (!*(v23 + 80))
            {
              goto LABEL_149;
            }

            LOBYTE(v118[0]) = 0;
            v119 = -1;
            v79 = *(a1 + 72);
            if (*(a1 + 72))
            {
              if (v79 == 255)
              {
                LOBYTE(buf) = 0;
              }

              else
              {
                LOBYTE(v118[0]) = *(a1 + 56);
                v119 = v79;
                LOBYTE(buf) = v118[0];
              }
            }

            else
            {
              *&v29 = 0;
              v96 = *(a1 + 56);
              *(a1 + 56) = 0;
              v119 = 0;
              *v118 = v29;
              *&buf = v96;
              v97 = *(a1 + 64);
              *(a1 + 64) = 0;
              *(&buf + 1) = v97;
            }

            LOBYTE(v125) = v79;
            mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(v118, (v23 + 56));
            mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(v23 + 56, &buf);
            if (!v125)
            {
              v99 = buf;
              if (HIDWORD(buf))
              {
                WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(buf, (buf + 608 * HIDWORD(buf)));
              }

              if (v99)
              {
                WTF::fastFree(v99, v98);
              }
            }

            if (!v119)
            {
              if (HIDWORD(v118[1]))
              {
                WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(v118[0], (v118[0] + 608 * HIDWORD(v118[1])));
              }

              v100 = v118[0];
              if (v118[0])
              {
                v118[0] = 0;
                LODWORD(v118[1]) = 0;
                WTF::fastFree(v100, v98);
              }
            }

            break;
          default:
            if (*(v23 + 80) > 1u)
            {
              if (v74 == 2)
              {
                v89 = *(v23 + 56);
                *(v23 + 56) = 0;
                if (v89)
                {
                  (*(*v89 + 8))(v89);
                }
              }

              *(v23 + 80) = 0;
            }

            else if (*(v23 + 80))
            {
              if (!*(v23 + 72))
              {
                v83 = *(v23 + 68);
                if (v83)
                {
                  WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*(v23 + 56), (*(v23 + 56) + 608 * v83));
                }

                v84 = *(v23 + 56);
                if (v84)
                {
                  *(v23 + 56) = 0;
                  *(v23 + 64) = 0;
                  WTF::fastFree(v84, v28);
                }
              }

              *(v23 + 72) = -1;
              *(v23 + 80) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v23, &v116);
      v92 = v117;
      if (v117 == 1)
      {
        v93 = v116;
        atomic_compare_exchange_strong_explicit(v116, &v92, 0, memory_order_release, memory_order_relaxed);
        if (v92 != 1)
        {
          break;
        }
      }

      v94 = (v23 + 8);
      add = atomic_fetch_add((v23 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_182;
      }

LABEL_167:
      WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v113);
      v22 = (v22 + 40);
      if (v22 == v20)
      {
        goto LABEL_183;
      }
    }

    WTF::Lock::unlockSlow(v93);
    v94 = (v23 + 8);
    add = atomic_fetch_add((v23 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_167;
    }

LABEL_182:
    atomic_store(add, v94);
    (*(*v23 + 16))(v23);
    WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v113);
    v22 = (v22 + 40);
  }

  while (v22 != v20);
LABEL_183:
  v19 = v108;
  v101 = 40 * v107;
  v102 = v108;
  do
  {
    v102 = WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v102) + 5;
    v101 -= 40;
  }

  while (v101);
LABEL_185:
  if (v19)
  {
    WTF::fastFree(v19, v5);
  }

  result = v109;
  if (v110)
  {
    v103 = 8 * v110;
    do
    {
      v104 = *result;
      *result = 0;
      if (v104 && atomic_fetch_add(v104 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v104 + 2);
        v105 = result;
        (*(*v104 + 8))(v104);
        result = v105;
      }

      result += 8;
      v103 -= 8;
    }

    while (v103);
    result = v109;
  }

  if (&v111 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AB0428(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~expected(v12 - 144, a2);
  v15 = 0;
  atomic_compare_exchange_strong_explicit(*v11, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v14);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v16);
  _Unwind_Resume(a1);
}

void sub_1C7AB04BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::Lock *a32, char a33, WTF *a34, int a35)
{
  if (v35)
  {
    if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35 + 2);
      (*(*v35 + 16))(v35);
    }
  }

  WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a27);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, v37);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, v38);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

BOOL WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 48);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](a1 + 48);
    v4 = *(a1 + 80);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  else
  {
    v4 = *(a1 + 80);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  WTF::Lock::unlockSlow(v2);
  return v4 == 2;
}

mpark *WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 80) == 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    mpark::throw_bad_variant_access(result);
  }

  v6 = result;
  v7 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  result = v6;
  a2 = v7;
  if (*(v7 + 80) != 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  *result = v4;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 80) == 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    mpark::throw_bad_variant_access(result);
  }

  v7 = result;
  v8 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  a2 = v8;
  result = v7;
  if (*(v8 + 80) != 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  *result = 0;
  *(result + 16) = -1;
  v4 = *(a2 + 72);
  if (v4 != 255)
  {
    if (*(a2 + 72))
    {
      *result = *(a2 + 56);
    }

    else
    {
      *result = *(a2 + 56);
      v5 = *(a2 + 64);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(result + 8) = v5;
    }

    *(result + 16) = v4;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
  WTF::String::String(&v73, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v71, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v70, a4);
  WTF::String::String(&v69, "]");
  v8 = v74;
  v67 = v74;
  v81 = v73;
  *&buf = v75;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v67, &v81, &v80, &v79, &v78, &v77, &v76);
  if (!v76)
  {
    __break(0xC471u);
    return result;
  }

  v11 = v69;
  v69 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v70;
  v70 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v71;
  v71 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v72;
  v72 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = v73;
  v73 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v74 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v10);
  }

  v16 = v75;
  v75 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v18 || ((WTF::String::utf8(), v67) ? (v20 = v67 + 16) : (v20 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v20, _os_log_impl(&dword_1C79C0000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v18 = v67, v67 = 0, !v18))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v18 != 1)
  {
    --*v18;
    goto LABEL_30;
  }

  v18 = WTF::fastFree(v18, v19);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v66 = *v24 + 8 * v25;
            do
            {
              v27 = *v26;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v83 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
              v85 = 0;
              WTF::String::String(&v86, " aborting [callback:");
              v87 = 0;
              WTF::LogArgument<void const*>::toString();
              v89 = 0;
              WTF::String::String(&v90, " callSite:");
              v91 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v92, a4);
              v93 = 0;
              WTF::String::String(v94, "]");
              v67 = 0;
              v68 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v68) = 7;
              v67 = v28;
              v29 = HIDWORD(v68);
              v30 = v28 + 16 * HIDWORD(v68);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v68);
                v28 = v67;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v68) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v83;
              v34 = v84;
              if (v84)
              {
                atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                v32 = HIDWORD(v68);
                v28 = v67;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v68) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v85;
              v37 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                v35 = HIDWORD(v68);
                v28 = v67;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v68) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v87;
              v40 = v88;
              if (v88)
              {
                atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
                v38 = HIDWORD(v68);
                v28 = v67;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v68) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v89;
              v43 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
                v41 = HIDWORD(v68);
                v28 = v67;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v68) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v91;
              v46 = v92;
              if (v92)
              {
                atomic_fetch_add_explicit(v92, 2u, memory_order_relaxed);
                v44 = HIDWORD(v68);
                v28 = v67;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v68) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v93;
              v49 = v94[0];
              if (v94[0])
              {
                atomic_fetch_add_explicit(v94[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v68);
              }

              *(v48 + 1) = v49;
              HIDWORD(v68) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v67);
              v50 = v67;
              if (HIDWORD(v68))
              {
                v51 = a1;
                v52 = a2;
                v53 = a3;
                v54 = a4;
                v55 = 16 * HIDWORD(v68);
                v56 = (v67 + 8);
                do
                {
                  v57 = *v56;
                  *v56 = 0;
                  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v57, v19);
                  }

                  v56 += 2;
                  v55 -= 16;
                }

                while (v55);
                v50 = v67;
                a4 = v54;
                a3 = v53;
                a2 = v52;
                a1 = v51;
              }

              if (v50)
              {
                v67 = 0;
                LODWORD(v68) = 0;
                WTF::fastFree(v50, v19);
              }

              v58 = v94[0];
              v94[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v19);
              }

              v59 = v92;
              v92 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v19);
              }

              v60 = v90;
              v90 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v19);
              }

              v61 = v88;
              v88 = 0;
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v19);
              }

              v62 = v86;
              v86 = 0;
              if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v19);
              }

              v63 = v84;
              v84 = 0;
              if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v63, v19);
              }

              v64 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v19);
              }

              ++v26;
            }

            while (v26 != v66);
          }

          v65 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v65, 0, memory_order_release, memory_order_relaxed);
          if (v65 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v76;
  v76 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void sub_1C7AB1180(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
{
  v45 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 == 1)
  {
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472C088;
  v1 = result[2];
  result[2] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = v3[1];
    v3[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472C088;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v5 = a1;
    (*(*v2 + 16))(v2);
    a1 = v5;
    v3 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (!v3)
    {
LABEL_5:

      return WTF::fastFree(a1, a2);
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_5;
  }

  atomic_store(1u, v3 + 2);
  v6 = a1;
  (*(*v3 + 8))(v3);
  a1 = v6;

  return WTF::fastFree(a1, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v24 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v24, (v2 + 24));
    }

    return result;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((v1 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v16 = a1;
    MEMORY[0x1CCA63990](v1 + 48);
    a1 = v16;
    v8 = *(v1 + 80);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_11:
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = *(v1 + 80);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_11;
    }
  }

  v17 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v18 = v17 + 8;
  v9 = *(v17 + 8);
  v10 = *(v18 + 8);
  if (v8 == 2)
  {
LABEL_12:
    v11 = 0;
    a1 = v10 + 48;
    atomic_compare_exchange_strong_explicit((v10 + 48), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990]();
      a1 = v10 + 48;
      if (*(v10 + 80) == 2)
      {
        goto LABEL_14;
      }
    }

    else if (*(v10 + 80) == 2)
    {
LABEL_14:
      v12 = *(v10 + 56);
      *(v10 + 56) = 0;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow(a1);
      }

      (*(*v12 + 16))(&v24, v12);
      (*(*v9 + 24))(v9, v10, &v24);
      if (!v26)
      {
        if (HIDWORD(v25))
        {
          WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(v24, (v24 + 608 * HIDWORD(v25)));
        }

        v15 = v24;
        if (v24)
        {
          v24 = 0;
          LODWORD(v25) = 0;
          WTF::fastFree(v15, v14);
        }
      }

      v26 = -1;
      return (*(*v12 + 8))(v12);
    }

LABEL_41:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_24:
  v19 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 80) != 1)
    {
      goto LABEL_41;
    }
  }

  else if (*(v10 + 80) != 1)
  {
    goto LABEL_41;
  }

  LOBYTE(v24) = 0;
  v26 = -1;
  v20 = *(v10 + 72);
  if (v20 != 255)
  {
    if (*(v10 + 72))
    {
      LOBYTE(v24) = *(v10 + 56);
    }

    else
    {
      v24 = *(v10 + 56);
      v21 = *(v10 + 64);
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      v25 = v21;
    }

    v26 = v20;
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  result = (*(*v9 + 24))(v9, v10, &v24);
  if (!v26)
  {
    if (HIDWORD(v25))
    {
      WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(v24, (v24 + 608 * HIDWORD(v25)));
    }

    result = v24;
    if (v24)
    {
      v24 = 0;
      LODWORD(v25) = 0;
      return WTF::fastFree(result, v23);
    }
  }

  return result;
}

void sub_1C7AB19BC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11)
{
  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AB19E0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::~expected(va, a2);
  (*(*v3 + 8))(v3);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  v3 = a2[16];
  if (v2 != 255 || v3 != 255)
  {
    if (v3 == 255)
    {
      if (!*(result + 16))
      {
        v4 = result;
        v5 = *(result + 12);
        if (v5)
        {
          WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*result, (*result + 608 * v5));
        }

        result = v4;
        v6 = *v4;
        if (*v4)
        {
          *v4 = 0;
          *(v4 + 8) = 0;
          WTF::fastFree(v6, a2);
          result = v4;
        }
      }

      *(result + 16) = -1;
    }

    else if (a2[16])
    {
      if (*(result + 16))
      {
        if (v2 == 1)
        {
          *result = *a2;
          return result;
        }
      }

      else
      {
        v8 = result;
        v9 = *(result + 12);
        if (v9)
        {
          v10 = a2;
          WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*result, (*result + 608 * v9));
          a2 = v10;
        }

        result = v8;
        v11 = *v8;
        if (*v8)
        {
          *v8 = 0;
          *(v8 + 8) = 0;
          v12 = a2;
          WTF::fastFree(v11, a2);
          a2 = v12;
          result = v8;
        }
      }

      *result = *a2;
      *(result + 16) = 1;
    }

    else if (*(result + 16))
    {
      *result = 0;
      *(result + 8) = 0;
      v7 = *a2;
      *a2 = 0;
      *result = v7;
      LODWORD(v7) = *(a2 + 2);
      *(a2 + 2) = 0;
      *(result + 8) = v7;
      LODWORD(v7) = *(a2 + 3);
      *(a2 + 3) = 0;
      *(result + 12) = v7;
      *(result + 16) = 0;
    }

    else
    {
      v13 = *(result + 12);
      if (v13)
      {
        v14 = result;
        v15 = a2;
        WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*result, (*result + 608 * v13));
        a2 = v15;
        result = v14;
      }

      v16 = *result;
      if (*result)
      {
        *result = 0;
        *(result + 8) = 0;
        v17 = result;
        v18 = a2;
        WTF::fastFree(v16, a2);
        a2 = v18;
        result = v17;
      }

      v19 = *a2;
      *a2 = 0;
      *result = v19;
      LODWORD(v19) = *(a2 + 2);
      *(a2 + 2) = 0;
      *(result + 8) = v19;
      LODWORD(v19) = *(a2 + 3);
      *(a2 + 3) = 0;
      *(result + 12) = v19;
    }
  }

  return result;
}

void sub_1C7AB1C1C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::Lock *WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::createAndReject<WebCore::DOMCacheEngine::Error,std::enable_if<true,void>>(uint64_t *a1, _BYTE *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v113[1] = *MEMORY[0x1E69E9840];
  v6 = WTF::fastMalloc(0x88);
  *(v6 + 8) = 1;
  *v6 = &unk_1F472C0B0;
  v7 = *(a3 + 1);
  v99 = a3;
  *(v6 + 16) = *a3;
  *(v6 + 32) = v7;
  *(v6 + 48) = 0;
  v8 = (v6 + 48);
  *(v6 + 80) = 0;
  *(v6 + 88) = v6 + 104;
  *(v6 + 96) = 1;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  v9 = WTF::NativePromiseBase::logChannel(v6);
  v10 = v9;
  if (!*v9 || v9[16] < 4u)
  {
    goto LABEL_64;
  }

  WTF::String::String(&v107, "creating ");
  WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v106, v6);
  v11 = v106;
  if (v107)
  {
    v12 = *(v107 + 1);
    if (v106)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    if (v106)
    {
LABEL_5:
      v13 = *(v106 + 1);
      if ((v13 | v12) < 0)
      {
        goto LABEL_164;
      }

      goto LABEL_9;
    }
  }

  v13 = 0;
  if (v12 < 0)
  {
LABEL_164:
    v100 = 0;
    goto LABEL_165;
  }

LABEL_9:
  v14 = (v12 + v13);
  if (__OFADD__(v12, v13))
  {
    goto LABEL_164;
  }

  if (!v107)
  {
    if (!v106)
    {
      v16 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v16 = (*(v106 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v15 = *(v107 + 4);
  v16 = (v15 >> 2) & 1;
  if (v106 && (v15 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v14, v16, v107, v106, &v100);
  if (!v100)
  {
LABEL_165:
    __break(0xC471u);
    JUMPOUT(0x1C7AB262CLL);
  }

  v106 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v17);
  }

  v18 = v107;
  v107 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = *(v10 + 4);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (!v20 || ((WTF::String::utf8(), v102) ? (v22 = v102 + 16) : (v22 = 0), *buf = 136446210, *v109 = v22, _os_log_impl(&dword_1C79C0000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v20 = v102, v102 = 0, !v20))
  {
LABEL_31:
    if (*v10)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v20 != 1)
  {
    --*v20;
    goto LABEL_31;
  }

  v20 = WTF::fastFree(v20, v21);
  if (*v10)
  {
LABEL_32:
    if (v10[16] >= 4u)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v96 = a2;
          v97 = a1;
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              *buf = 0;
              WTF::String::String(&v109[4], "creating ");
              v110 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v111, v6);
              v102 = 0;
              v103 = 0;
              v31 = WTF::fastMalloc(0x20);
              LODWORD(v103) = 2;
              v102 = v31;
              v32 = HIDWORD(v103);
              v33 = v31 + 16 * HIDWORD(v103);
              *v33 = *buf;
              v34 = *&v109[4];
              if (*&v109[4])
              {
                atomic_fetch_add_explicit(*&v109[4], 2u, memory_order_relaxed);
                v32 = HIDWORD(v103);
                v31 = v102;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v103) = v35;
              v36 = v31 + 16 * v35;
              *v36 = v110;
              v37 = v111;
              if (v111)
              {
                atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
                v35 = HIDWORD(v103);
              }

              *(v36 + 1) = v37;
              HIDWORD(v103) = v35 + 1;
              (*(*v30 + 16))(v30, v10, 4, &v102);
              v38 = v102;
              if (HIDWORD(v103))
              {
                v39 = 16 * HIDWORD(v103);
                v40 = (v102 + 8);
                do
                {
                  v41 = *v40;
                  *v40 = 0;
                  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v41, v21);
                  }

                  v40 += 2;
                  v39 -= 16;
                }

                while (v39);
                v38 = v102;
              }

              if (v38)
              {
                v102 = 0;
                LODWORD(v103) = 0;
                WTF::fastFree(v38, v21);
              }

              v42 = v111;
              v111 = 0;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v21);
              }

              v43 = *&v109[4];
              *&v109[4] = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v21);
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v44 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v44, 0, memory_order_release, memory_order_relaxed);
          a2 = v96;
          a1 = v97;
          if (v44 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v9 = v100;
  v100 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v9 = WTF::StringImpl::destroy(v9, v21);
  }

  v8 = (v6 + 48);
LABEL_64:
  v45 = 0;
  *a1 = v6;
  v100 = v8;
  v101 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v45, 1u, memory_order_acquire, memory_order_acquire);
  if (v45)
  {
    v9 = MEMORY[0x1CCA63990](v8);
  }

  v46 = WTF::NativePromiseBase::logChannel(v9);
  v48 = v46;
  if (*v46 && v46[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v106, v99);
    WTF::String::String(&v105, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v104, v6);
    v49 = v104;
    if (v106)
    {
      v50 = *(v106 + 1);
      if (v105)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v50 = 0;
      if (v105)
      {
LABEL_70:
        v51 = *(v105 + 1);
        if (v104)
        {
          goto LABEL_71;
        }

        goto LABEL_75;
      }
    }

    v51 = 0;
    if (v104)
    {
LABEL_71:
      v52 = *(v104 + 4);
      if ((v52 | v51) < 0)
      {
        goto LABEL_162;
      }

      goto LABEL_76;
    }

LABEL_75:
    v52 = 0;
    if (v51 < 0)
    {
LABEL_162:
      v107 = 0;
      goto LABEL_165;
    }

LABEL_76:
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    v55 = v53;
    if (v50 < 0)
    {
      goto LABEL_162;
    }

    if (v55)
    {
      goto LABEL_162;
    }

    v56 = (v50 + v54);
    if (__OFADD__(v50, v54))
    {
      goto LABEL_162;
    }

    if (v106 && (*(v106 + 16) & 4) == 0)
    {
      v57 = 0;
      goto LABEL_94;
    }

    if (v105)
    {
      v58 = *(v105 + 4);
      v57 = (v58 >> 2) & 1;
      if (!v104 || (v58 & 4) == 0)
      {
LABEL_94:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v56, v57, v106, v105, v104, &v107);
        if (!v107)
        {
          goto LABEL_165;
        }

        v104 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v59);
        }

        v60 = v105;
        v105 = 0;
        if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v60, v59);
        }

        v61 = v106;
        v106 = 0;
        if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v61, v59);
        }

        v62 = *(v48 + 4);
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
        if (v63)
        {
          WTF::String::utf8();
          v64 = v102 ? v102 + 16 : 0;
          *buf = 136446210;
          *v109 = v64;
          _os_log_impl(&dword_1C79C0000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v63 = v102;
          v102 = 0;
          if (v63)
          {
            if (*v63 == 1)
            {
              v63 = WTF::fastFree(v63, v47);
              if (*v48)
              {
LABEL_112:
                if (v48[16] >= 4u)
                {
                  v65 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v66 = *v65;
                    if (v66)
                    {
                      break;
                    }

                    v67 = *v65;
                    atomic_compare_exchange_strong_explicit(v65, &v67, v66 | 1, memory_order_acquire, memory_order_acquire);
                    if (v67 == v66)
                    {
                      v68 = WTF::Logger::observers(v63);
                      v69 = *(v68 + 12);
                      if (v69)
                      {
                        v70 = *v68;
                        v98 = *v68 + 8 * v69;
                        do
                        {
                          v71 = *v70;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v109[4], v99);
                          v110 = 0;
                          WTF::String::String(&v111, " rejecting ");
                          v112 = 0;
                          WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v113, v6);
                          v102 = 0;
                          v103 = 0;
                          v72 = WTF::fastMalloc(0x30);
                          LODWORD(v103) = 3;
                          v102 = v72;
                          v73 = HIDWORD(v103);
                          v74 = v72 + 16 * HIDWORD(v103);
                          *v74 = *buf;
                          v75 = *&v109[4];
                          if (*&v109[4])
                          {
                            atomic_fetch_add_explicit(*&v109[4], 2u, memory_order_relaxed);
                            v73 = HIDWORD(v103);
                            v72 = v102;
                          }

                          *(v74 + 1) = v75;
                          v76 = v73 + 1;
                          HIDWORD(v103) = v76;
                          v77 = v72 + 16 * v76;
                          *v77 = v110;
                          v78 = v111;
                          if (v111)
                          {
                            atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
                            v76 = HIDWORD(v103);
                            v72 = v102;
                          }

                          *(v77 + 1) = v78;
                          v79 = v76 + 1;
                          HIDWORD(v103) = v79;
                          v80 = v72 + 16 * v79;
                          *v80 = v112;
                          v81 = v113[0];
                          if (v113[0])
                          {
                            atomic_fetch_add_explicit(v113[0], 2u, memory_order_relaxed);
                            v79 = HIDWORD(v103);
                          }

                          *(v80 + 1) = v81;
                          HIDWORD(v103) = v79 + 1;
                          (*(*v71 + 16))(v71, v48, 4, &v102);
                          v82 = v102;
                          if (HIDWORD(v103))
                          {
                            v83 = 16 * HIDWORD(v103);
                            v84 = (v102 + 8);
                            do
                            {
                              v85 = *v84;
                              *v84 = 0;
                              if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v85, v47);
                              }

                              v84 += 2;
                              v83 -= 16;
                            }

                            while (v83);
                            v82 = v102;
                          }

                          if (v82)
                          {
                            v102 = 0;
                            LODWORD(v103) = 0;
                            WTF::fastFree(v82, v47);
                          }

                          v86 = v113[0];
                          v113[0] = 0;
                          if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v86, v47);
                          }

                          v87 = v111;
                          v111 = 0;
                          if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v87, v47);
                          }

                          v88 = *&v109[4];
                          *&v109[4] = 0;
                          if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v88, v47);
                          }

                          ++v70;
                        }

                        while (v70 != v98);
                      }

                      v89 = 1;
                      atomic_compare_exchange_strong_explicit(v65, &v89, 0, memory_order_release, memory_order_relaxed);
                      if (v89 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_145:
              v90 = v107;
              v107 = 0;
              if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v90, v47);
              }

              goto LABEL_148;
            }

            --*v63;
          }
        }

        if (*v48)
        {
          goto LABEL_112;
        }

        goto LABEL_145;
      }
    }

    else if (!v104)
    {
      v57 = 1;
      goto LABEL_94;
    }

    v57 = (*(v104 + 16) >> 2) & 1;
    goto LABEL_94;
  }

LABEL_148:
  v91 = *a2;
  if (*(v6 + 80) > 1u)
  {
    if (*(v6 + 80) == 2)
    {
      v93 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v93)
      {
        (*(*v93 + 8))(v93);
      }
    }
  }

  else if (*(v6 + 80))
  {
    if (!*(v6 + 72))
    {
      v92 = *(v6 + 56);
      if (v92)
      {
        *(v6 + 56) = 0;
        *(v6 + 64) = 0;
        WTF::fastFree(v92, v47);
      }
    }
  }

  *(v6 + 56) = v91;
  *(v6 + 72) = 1;
  *(v6 + 80) = 1;
  result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v6, &v100);
  v95 = v101;
  if (v101 == 1)
  {
    result = v100;
    atomic_compare_exchange_strong_explicit(v100, &v95, 0, memory_order_release, memory_order_relaxed);
    if (v95 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AB263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, WTF *a17, int a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, WTF::StringImpl *a22, char a23, WTF::StringImpl *a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  v31 = v29;
  *v31 = 0;
  if (atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v28 + 2);
    (*(*v28 + 16))(v28);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(uint64_t result, void *a2)
{
  if (*(result + 24) <= 1u)
  {
    if (*(result + 24))
    {
      if (!*(result + 16))
      {
        v2 = *result;
        if (*result)
        {
          *result = 0;
          *(result + 8) = 0;
          v3 = result;
          WTF::fastFree(v2, a2);
          result = v3;
        }
      }

      *(result + 16) = -1;
    }

    goto LABEL_7;
  }

  if (*(result + 24) != 2 || (v4 = *result, *result = 0, !v4))
  {
LABEL_7:
    *(result + 24) = -1;
    return result;
  }

  v5 = result;
  (*(*v4 + 8))(v4);
  result = v5;
  *(v5 + 24) = -1;
  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 124);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 124);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 112);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        result = (*(*v6 + 16))(v6);
      }
    }

    v4 += 5;
    v5 -= 40;
  }

  while (v5);
LABEL_9:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

void sub_1C7AB2C10(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  result = WTF::Logger::LogSiteIdentifier::toString(&v16, (a2 + 16));
  if (v17)
  {
    v6 = *(v17 + 1);
    if (v16)
    {
LABEL_3:
      v7 = *(v16 + 1);
      if ((v7 & 0x80000000) == 0)
      {
        v4 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

LABEL_30:
      *a1 = 0;
LABEL_31:
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v6 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_9:
  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  v10 = v4;
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    goto LABEL_30;
  }

  v4 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v4)
  {
    goto LABEL_30;
  }

  result = (v11 + 13);
  if (__OFADD__(v11, 13))
  {
    goto LABEL_30;
  }

  v12 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v16 || (*(v16 + 16) & 4) != 0);
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v12, "NativePromise", 0xDuLL, v17, 60, v16, 62, &v18);
  v14 = v18;
  *a1 = v18;
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_1C7AB2DF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  else
  {
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return v1;
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 16))(v4);
  return a1;
}

void sub_1C7AB2F50(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  _Unwind_Resume(exception_object);
}

unint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v55, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v54, a1);
    v5 = v54;
    if (v55)
    {
      v6 = *(v55 + 1);
      if (v54)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (v54)
      {
LABEL_8:
        v7 = *(v54 + 4);
        if ((v7 | v6) < 0)
        {
          goto LABEL_95;
        }

LABEL_12:
        result = (v6 + v7);
        if (!__OFADD__(v6, v7))
        {
          if (v55)
          {
            v8 = *(v55 + 4);
            v9 = (v8 >> 2) & 1;
            if (!v54 || (v8 & 4) == 0)
            {
LABEL_20:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v9, v55, v54, &v56);
              if (!v56)
              {
LABEL_96:
                __break(0xC471u);
                return result;
              }

              v54 = 0;
              if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v5, v10);
              }

              v11 = v55;
              v55 = 0;
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v10);
              }

              v12 = *(v2 + 32);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                WTF::String::utf8();
                v15 = v52 ? v52 + 16 : 0;
                *buf = 136446210;
                *v58 = v15;
                _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v13 = v52;
                v52 = 0;
                if (v13)
                {
                  if (*v13 == 1)
                  {
                    v13 = WTF::fastFree(v13, v14);
                    if (*v2)
                    {
LABEL_35:
                      if (*(v2 + 16) >= 4u)
                      {
                        v16 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v17 = *v16;
                          if (v17)
                          {
                            break;
                          }

                          v18 = *v16;
                          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
                          if (v18 == v17)
                          {
                            v19 = WTF::Logger::observers(v13);
                            v20 = *(v19 + 12);
                            if (v20)
                            {
                              v21 = *v19;
                              v22 = *v19 + 8 * v20;
                              do
                              {
                                v23 = *v21;
                                *buf = 0;
                                WTF::String::String(&v58[4], "destroying ");
                                v59 = 0;
                                WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v60, a1);
                                v52 = 0;
                                v53 = 0;
                                v24 = WTF::fastMalloc(0x20);
                                LODWORD(v53) = 2;
                                v52 = v24;
                                v25 = HIDWORD(v53);
                                v26 = v24 + 16 * HIDWORD(v53);
                                *v26 = *buf;
                                v27 = *&v58[4];
                                if (*&v58[4])
                                {
                                  atomic_fetch_add_explicit(*&v58[4], 2u, memory_order_relaxed);
                                  v25 = HIDWORD(v53);
                                  v24 = v52;
                                }

                                *(v26 + 1) = v27;
                                v28 = v25 + 1;
                                HIDWORD(v53) = v28;
                                v29 = v24 + 16 * v28;
                                *v29 = v59;
                                v30 = v60[0];
                                if (v60[0])
                                {
                                  atomic_fetch_add_explicit(v60[0], 2u, memory_order_relaxed);
                                  v28 = HIDWORD(v53);
                                }

                                *(v29 + 1) = v30;
                                HIDWORD(v53) = v28 + 1;
                                (*(*v23 + 16))(v23, v2, 4, &v52);
                                v31 = v52;
                                if (HIDWORD(v53))
                                {
                                  v32 = 16 * HIDWORD(v53);
                                  v33 = (v52 + 8);
                                  do
                                  {
                                    v34 = *v33;
                                    *v33 = 0;
                                    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v34, v14);
                                    }

                                    v33 += 2;
                                    v32 -= 16;
                                  }

                                  while (v32);
                                  v31 = v52;
                                }

                                if (v31)
                                {
                                  v52 = 0;
                                  LODWORD(v53) = 0;
                                  WTF::fastFree(v31, v14);
                                }

                                v35 = v60[0];
                                v60[0] = 0;
                                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v35, v14);
                                }

                                v36 = *&v58[4];
                                *&v58[4] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v14);
                                }

                                ++v21;
                              }

                              while (v21 != v22);
                            }

                            v37 = 1;
                            atomic_compare_exchange_strong_explicit(v16, &v37, 0, memory_order_release, memory_order_relaxed);
                            if (v37 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_63:
                    v38 = v56;
                    v56 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v14);
                    }

                    goto LABEL_66;
                  }

                  --*v13;
                }
              }

              if (*v2)
              {
                goto LABEL_35;
              }

              goto LABEL_63;
            }
          }

          else if (!v54)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v9 = (*(v54 + 16) >> 2) & 1;
          goto LABEL_20;
        }

LABEL_95:
        v56 = 0;
        goto LABEL_96;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_95;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 124);
  if (v40)
  {
    v41 = *(a1 + 112);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 112);
  if (v43)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 100);
  v45 = *(a1 + 88);
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        v48 = v45;
        (*(*v47 + 8))(v47);
        v45 = v48;
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = *(a1 + 88);
  }

  if ((a1 + 104) != v45 && v45 != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    WTF::fastFree(v45, v39);
  }

  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v51 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (!*(a1 + 72))
    {
      v50 = *(a1 + 56);
      if (v50)
      {
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        WTF::fastFree(v50, v39);
      }
    }

    *(a1 + 72) = -1;
  }

  *(a1 + 80) = -1;
  return a1;
}

void sub_1C7AB3568(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
{
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

LABEL_6:
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 112, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 88, v23);
  WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v18 + 56, v24);
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v125[1] = *MEMORY[0x1E69E9840];
  v106 = &v108;
  v4 = *(a1 + 88);
  v5 = (a1 + 104);
  if (v4 == (a1 + 104))
  {
    v6 = *(a1 + 100);
    memcpy(&v108, v5, 8 * v6);
    v4 = &v108;
  }

  else
  {
    *(a1 + 88) = v5;
    v106 = v4;
    v6 = *(a1 + 100);
    *(a1 + 96) = 1;
  }

  v107 = v6;
  *(a1 + 96) = 1;
  v104 = *(a1 + 124);
  v105 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 129)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
        }

        else
        {
          v13 = *a2;
          v14 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v14, 0, memory_order_release, memory_order_relaxed);
          if (v14 != 1)
          {
            WTF::Lock::unlockSlow(v13);
          }

          if (WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v110, a1);
            v15 = v110;
            (*(*v110 + 16))(&buf, v110);
            (*(*v8 + 24))(v8, a1, &buf);
            if (!v122)
            {
              v17 = buf;
              if (buf)
              {
                *&buf = 0;
                DWORD2(buf) = 0;
                WTF::fastFree(v17, v16);
              }
            }

            LOBYTE(v122) = -1;
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
            if (!v122)
            {
              v18 = buf;
              if (buf)
              {
                *&buf = 0;
                DWORD2(buf) = 0;
                WTF::fastFree(v18, v5);
              }
            }
          }

          v19 = 0;
          atomic_compare_exchange_strong_explicit(*a2, &v19, 1u, memory_order_acquire, memory_order_acquire);
          if (v19)
          {
            MEMORY[0x1CCA63990]();
          }
        }
      }

      else
      {
        v10 = *(v8 + 16);
        atomic_fetch_add((v8 + 8), 1u);
        *&buf = v8;
        *(&buf + 1) = a1;
        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F472C0D8;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v110 = v11;
        (*(*v10 + 16))(v10, &v110);
        v12 = v110;
        v110 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v4 = (v4 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v20 = v105;
  if (!v104)
  {
    goto LABEL_180;
  }

  v21 = MEMORY[0x1E696EBC0];
  v22 = v105;
  v23 = (v105 + 40 * v104);
  do
  {
    while (1)
    {
      v24 = *v22;
      *v22 = 0;
      v110 = v24;
      v25 = *(v22 + 24);
      v111 = *(v22 + 8);
      v112 = v25;
      if (v24)
      {
        atomic_fetch_add((v24 + 8), 1u);
      }

      v26 = 0;
      v109[0] = 0;
      v109[1] = 0;
      v109[2] = "<chained promise>";
      v109[3] = 0;
      v27 = (v24 + 48);
      v113 = (v24 + 48);
      v114 = 1;
      atomic_compare_exchange_strong_explicit((v24 + 48), &v26, 1u, memory_order_acquire, memory_order_acquire);
      if (v26)
      {
        v27 = MEMORY[0x1CCA63990]();
      }

      v28 = WTF::NativePromiseBase::logChannel(v27);
      v31 = v28;
      if (*v28 && v28[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v119, v109);
        WTF::String::String(&v118, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v117, v24);
        if (v119)
        {
          v33 = *(v119 + 4);
          v34 = v118;
          if (v118)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v33 = 0;
          v34 = v118;
          if (v118)
          {
LABEL_36:
            v35 = *(v34 + 4);
            v36 = v117;
            if (v117)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          }
        }

        v35 = 0;
        v36 = v117;
        if (v117)
        {
LABEL_37:
          v37 = *(v36 + 4);
          if ((v37 | v35) < 0)
          {
            goto LABEL_195;
          }

          goto LABEL_42;
        }

LABEL_41:
        v37 = 0;
        if (v35 < 0)
        {
          goto LABEL_195;
        }

LABEL_42:
        v38 = __OFADD__(v35, v37);
        v39 = v35 + v37;
        v40 = v38;
        if (v33 < 0 || (v40 & 1) != 0 || (result = (v33 + v39), __OFADD__(v33, v39)))
        {
LABEL_195:
          v120 = 0;
LABEL_196:
          __break(0xC471u);
          return result;
        }

        if (v119 && (*(v119 + 16) & 4) == 0)
        {
          v41 = 0;
          goto LABEL_58;
        }

        if (v34)
        {
          v42 = *(v34 + 16);
          v41 = (v42 >> 2) & 1;
          if (!v36 || (v42 & 4) == 0)
          {
LABEL_58:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v41, v119, v34, v36, &v120);
            if (!v120)
            {
              goto LABEL_196;
            }

            v117 = 0;
            if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v43);
            }

            v44 = v118;
            v118 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v43);
            }

            v45 = v119;
            v119 = 0;
            if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v45, v43);
            }

            v46 = *(v31 + 4);
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
            if (v47)
            {
              WTF::String::utf8();
              v48 = v115[0] ? v115[0] + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v48;
              _os_log_impl(&dword_1C79C0000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v47 = v115[0];
              v115[0] = 0;
              if (v47)
              {
                if (*v47 == 1)
                {
                  v47 = WTF::fastFree(v47, v29);
                  if (*v31)
                  {
LABEL_76:
                    if (v31[16] >= 4u)
                    {
                      while (1)
                      {
                        v49 = *v21;
                        if (v49)
                        {
                          break;
                        }

                        v50 = *v21;
                        atomic_compare_exchange_strong_explicit(v21, &v50, v49 | 1, memory_order_acquire, memory_order_acquire);
                        if (v50 == v49)
                        {
                          v51 = WTF::Logger::observers(v47);
                          v52 = *(v51 + 12);
                          if (v52)
                          {
                            v53 = *v51;
                            v54 = *v51 + 8 * v52;
                            do
                            {
                              v55 = *v53;
                              LODWORD(buf) = 0;
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v109);
                              v122 = 0;
                              WTF::String::String(&v123, " settling chained promise ");
                              v124 = 0;
                              WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v125, v24);
                              v115[0] = 0;
                              v115[1] = 0;
                              v56 = WTF::fastMalloc(0x30);
                              LODWORD(v115[1]) = 3;
                              v115[0] = v56;
                              v57 = HIDWORD(v115[1]);
                              v58 = v56 + 16 * HIDWORD(v115[1]);
                              *v58 = buf;
                              v59 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v57 = HIDWORD(v115[1]);
                                v56 = v115[0];
                              }

                              *(v58 + 1) = v59;
                              v60 = v57 + 1;
                              HIDWORD(v115[1]) = v60;
                              v61 = v56 + 16 * v60;
                              *v61 = v122;
                              v62 = v123;
                              if (v123)
                              {
                                atomic_fetch_add_explicit(v123, 2u, memory_order_relaxed);
                                v60 = HIDWORD(v115[1]);
                                v56 = v115[0];
                              }

                              *(v61 + 1) = v62;
                              v63 = v60 + 1;
                              HIDWORD(v115[1]) = v63;
                              v64 = v56 + 16 * v63;
                              *v64 = v124;
                              v65 = v125[0];
                              if (v125[0])
                              {
                                atomic_fetch_add_explicit(v125[0], 2u, memory_order_relaxed);
                                v63 = HIDWORD(v115[1]);
                              }

                              *(v64 + 1) = v65;
                              HIDWORD(v115[1]) = v63 + 1;
                              (*(*v55 + 16))(v55, v31, 4, v115);
                              v66 = v115[0];
                              if (HIDWORD(v115[1]))
                              {
                                v67 = 16 * HIDWORD(v115[1]);
                                v68 = (v115[0] + 8);
                                do
                                {
                                  v69 = *v68;
                                  *v68 = 0;
                                  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v69, v29);
                                  }

                                  v68 += 2;
                                  v67 -= 16;
                                }

                                while (v67);
                                v66 = v115[0];
                              }

                              if (v66)
                              {
                                v115[0] = 0;
                                LODWORD(v115[1]) = 0;
                                WTF::fastFree(v66, v29);
                              }

                              v70 = v125[0];
                              v125[0] = 0;
                              if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v70, v29);
                              }

                              v71 = v123;
                              v123 = 0;
                              if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v71, v29);
                              }

                              v72 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v72, v29);
                              }

                              ++v53;
                            }

                            while (v53 != v54);
                          }

                          v73 = 1;
                          v21 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v73, 0, memory_order_release, memory_order_relaxed);
                          v23 = (v105 + 40 * v104);
                          if (v73 != 1)
                          {
                            WTF::Lock::unlockSlow(v21);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_108:
                  v74 = v120;
                  v120 = 0;
                  if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v74, v29);
                  }

                  goto LABEL_111;
                }

                --*v47;
              }
            }

            if (*v31)
            {
              goto LABEL_76;
            }

            goto LABEL_108;
          }
        }

        else if (!v36)
        {
          v41 = 1;
          goto LABEL_58;
        }

        v41 = (*(v36 + 16) >> 2) & 1;
        goto LABEL_58;
      }

LABEL_111:
      v75 = *(v24 + 80);
      v76 = *(a1 + 80);
      if (v75 != 255 || v76 != 255)
      {
        switch(v76)
        {
          case 255:
            if (*(v24 + 80) > 1u)
            {
              if (v75 == 2)
              {
                v80 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v80)
                {
                  (*(*v80 + 8))(v80);
                }
              }
            }

            else if (*(v24 + 80))
            {
              if (!*(v24 + 72))
              {
                v77 = *(v24 + 56);
                if (v77)
                {
                  *(v24 + 56) = 0;
                  *(v24 + 64) = 0;
                  WTF::fastFree(v77, v29);
                }
              }

              *(v24 + 72) = -1;
              v78 = -1;
              goto LABEL_162;
            }

            v78 = -1;
LABEL_162:
            *(v24 + 80) = v78;
            break;
          case 2:
            if (*(v24 + 80) <= 1u)
            {
              if (*(v24 + 80))
              {
                if (!*(v24 + 72))
                {
                  v81 = *(v24 + 56);
                  if (v81)
                  {
                    *(v24 + 56) = 0;
                    *(v24 + 64) = 0;
                    WTF::fastFree(v81, v29);
                  }
                }

                *(v24 + 72) = -1;
              }

LABEL_152:
              v86 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v24 + 56) = v86;
              v78 = 2;
              goto LABEL_162;
            }

            if (v75 == 255)
            {
              goto LABEL_152;
            }

            v88 = *(a1 + 56);
            *(a1 + 56) = 0;
            v89 = *(v24 + 56);
            *(v24 + 56) = v88;
            if (v89)
            {
              (*(*v89 + 8))(v89);
            }

            break;
          case 1:
            if (*(v24 + 80) > 1u)
            {
              if (v75 == 2)
              {
                v83 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v83)
                {
                  (*(*v83 + 8))(v83);
                }
              }

LABEL_148:
              *(v24 + 56) = 0;
              *(v24 + 72) = -1;
              v84 = *(a1 + 72);
              if (v84 != 255)
              {
                if (*(a1 + 72))
                {
                  *(v24 + 56) = *(a1 + 56);
                }

                else
                {
                  *(v24 + 56) = 0;
                  *(v24 + 64) = 0;
                  v85 = *(a1 + 56);
                  *(a1 + 56) = 0;
                  *(v24 + 56) = v85;
                  LODWORD(v85) = *(a1 + 64);
                  *(a1 + 64) = 0;
                  *(v24 + 64) = v85;
                  v84 = *(a1 + 68);
                  *(a1 + 68) = 0;
                  *(v24 + 68) = v84;
                  LOBYTE(v84) = *(a1 + 72);
                }

                *(v24 + 72) = v84;
              }

              v78 = 1;
              goto LABEL_162;
            }

            if (!*(v24 + 80))
            {
              goto LABEL_148;
            }

            LOBYTE(v115[0]) = 0;
            v116 = -1;
            v79 = *(a1 + 72);
            if (*(a1 + 72))
            {
              if (v79 == 255)
              {
                LOBYTE(buf) = 0;
              }

              else
              {
                LOBYTE(v115[0]) = *(a1 + 56);
                v116 = v79;
                LOBYTE(buf) = v115[0];
              }
            }

            else
            {
              *&v30 = 0;
              v94 = *(a1 + 56);
              *(a1 + 56) = 0;
              v116 = 0;
              *v115 = v30;
              *&buf = v94;
              v95 = *(a1 + 64);
              *(a1 + 64) = 0;
              *(&buf + 1) = v95;
            }

            LOBYTE(v122) = v79;
            mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(v115, (v24 + 56));
            mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(v24 + 56, &buf);
            if (!v122 && buf)
            {
              WTF::fastFree(buf, v96);
            }

            if (!v116)
            {
              v97 = v115[0];
              if (v115[0])
              {
                v115[0] = 0;
                LODWORD(v115[1]) = 0;
                WTF::fastFree(v97, v96);
              }
            }

            break;
          default:
            if (*(v24 + 80) > 1u)
            {
              if (v75 == 2)
              {
                v87 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v87)
                {
                  (*(*v87 + 8))(v87);
                }
              }

              *(v24 + 80) = 0;
            }

            else if (*(v24 + 80))
            {
              if (!*(v24 + 72))
              {
                v82 = *(v24 + 56);
                if (v82)
                {
                  *(v24 + 56) = 0;
                  *(v24 + 64) = 0;
                  WTF::fastFree(v82, v29);
                }
              }

              *(v24 + 72) = -1;
              *(v24 + 80) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v24, &v113);
      v90 = v114;
      if (v114 == 1)
      {
        v91 = v113;
        atomic_compare_exchange_strong_explicit(v113, &v90, 0, memory_order_release, memory_order_relaxed);
        if (v90 != 1)
        {
          break;
        }
      }

      v92 = (v24 + 8);
      add = atomic_fetch_add((v24 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_177;
      }

LABEL_166:
      WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v110);
      v22 = (v22 + 40);
      if (v22 == v23)
      {
        goto LABEL_178;
      }
    }

    WTF::Lock::unlockSlow(v91);
    v92 = (v24 + 8);
    add = atomic_fetch_add((v24 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_166;
    }

LABEL_177:
    atomic_store(add, v92);
    (*(*v24 + 16))(v24);
    WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v110);
    v22 = (v22 + 40);
  }

  while (v22 != v23);
LABEL_178:
  v20 = v105;
  v98 = 40 * v104;
  v99 = v105;
  do
  {
    v99 = WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v99) + 5;
    v98 -= 40;
  }

  while (v98);
LABEL_180:
  if (v20)
  {
    WTF::fastFree(v20, v5);
  }

  result = v106;
  if (v107)
  {
    v100 = 8 * v107;
    do
    {
      v101 = *result;
      *result = 0;
      if (v101 && atomic_fetch_add(v101 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v101 + 2);
        v102 = result;
        (*(*v101 + 8))(v101);
        result = v102;
      }

      result += 8;
      v100 -= 8;
    }

    while (v100);
    result = v106;
  }

  if (&v108 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AB439C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if (!*(v12 - 128))
  {
    v14 = *(v12 - 144);
    if (v14)
    {
      *(v12 - 144) = 0;
      *(v12 - 136) = 0;
      WTF::fastFree(v14, a2);
    }
  }

  v15 = 0;
  atomic_compare_exchange_strong_explicit(*v11, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v16);
  _Unwind_Resume(a1);
}

void sub_1C7AB4460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF::Lock *a32, char a33, WTF *a34, int a35, int a36, char a37)
{
  if (v37)
  {
    if (atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v37 + 2);
      (*(*v37 + 16))(v37);
    }
  }

  WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a27);
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a18, v39);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, v40);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
  WTF::String::String(&v73, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v71, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v70, a4);
  WTF::String::String(&v69, "]");
  v8 = v74;
  v67 = v74;
  v81 = v73;
  *&buf = v75;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v67, &v81, &v80, &v79, &v78, &v77, &v76);
  if (!v76)
  {
    __break(0xC471u);
    return result;
  }

  v11 = v69;
  v69 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v70;
  v70 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v71;
  v71 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v72;
  v72 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = v73;
  v73 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v74 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v10);
  }

  v16 = v75;
  v75 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v18 || ((WTF::String::utf8(), v67) ? (v20 = v67 + 16) : (v20 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v20, _os_log_impl(&dword_1C79C0000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v18 = v67, v67 = 0, !v18))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v18 != 1)
  {
    --*v18;
    goto LABEL_30;
  }

  v18 = WTF::fastFree(v18, v19);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v66 = *v24 + 8 * v25;
            do
            {
              v27 = *v26;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v83 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
              v85 = 0;
              WTF::String::String(&v86, " aborting [callback:");
              v87 = 0;
              WTF::LogArgument<void const*>::toString();
              v89 = 0;
              WTF::String::String(&v90, " callSite:");
              v91 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v92, a4);
              v93 = 0;
              WTF::String::String(v94, "]");
              v67 = 0;
              v68 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v68) = 7;
              v67 = v28;
              v29 = HIDWORD(v68);
              v30 = v28 + 16 * HIDWORD(v68);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v68);
                v28 = v67;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v68) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v83;
              v34 = v84;
              if (v84)
              {
                atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                v32 = HIDWORD(v68);
                v28 = v67;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v68) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v85;
              v37 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                v35 = HIDWORD(v68);
                v28 = v67;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v68) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v87;
              v40 = v88;
              if (v88)
              {
                atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
                v38 = HIDWORD(v68);
                v28 = v67;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v68) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v89;
              v43 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
                v41 = HIDWORD(v68);
                v28 = v67;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v68) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v91;
              v46 = v92;
              if (v92)
              {
                atomic_fetch_add_explicit(v92, 2u, memory_order_relaxed);
                v44 = HIDWORD(v68);
                v28 = v67;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v68) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v93;
              v49 = v94[0];
              if (v94[0])
              {
                atomic_fetch_add_explicit(v94[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v68);
              }

              *(v48 + 1) = v49;
              HIDWORD(v68) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v67);
              v50 = v67;
              if (HIDWORD(v68))
              {
                v51 = a1;
                v52 = a2;
                v53 = a3;
                v54 = a4;
                v55 = 16 * HIDWORD(v68);
                v56 = (v67 + 8);
                do
                {
                  v57 = *v56;
                  *v56 = 0;
                  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v57, v19);
                  }

                  v56 += 2;
                  v55 -= 16;
                }

                while (v55);
                v50 = v67;
                a4 = v54;
                a3 = v53;
                a2 = v52;
                a1 = v51;
              }

              if (v50)
              {
                v67 = 0;
                LODWORD(v68) = 0;
                WTF::fastFree(v50, v19);
              }

              v58 = v94[0];
              v94[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v19);
              }

              v59 = v92;
              v92 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v19);
              }

              v60 = v90;
              v90 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v19);
              }

              v61 = v88;
              v88 = 0;
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v19);
              }

              v62 = v86;
              v86 = 0;
              if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v19);
              }

              v63 = v84;
              v84 = 0;
              if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v63, v19);
              }

              v64 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v19);
              }

              ++v26;
            }

            while (v26 != v66);
          }

          v65 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v65, 0, memory_order_release, memory_order_relaxed);
          if (v65 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v76;
  v76 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void sub_1C7AB4E98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
{
  v45 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 == 1)
  {
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472C0D8;
  v1 = result[2];
  result[2] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = v3[1];
    v3[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472C0D8;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v5 = a1;
    (*(*v2 + 16))(v2);
    a1 = v5;
    v3 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (!v3)
    {
LABEL_5:

      return WTF::fastFree(a1, a2);
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_5;
  }

  atomic_store(1u, v3 + 2);
  v6 = a1;
  (*(*v3 + 8))(v3);
  a1 = v6;

  return WTF::fastFree(a1, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v24 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v24, (v2 + 24));
    }

    return result;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((v1 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v16 = a1;
    MEMORY[0x1CCA63990](v1 + 48);
    a1 = v16;
    v8 = *(v1 + 80);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_11:
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = *(v1 + 80);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_11;
    }
  }

  v17 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v18 = v17 + 8;
  v9 = *(v17 + 8);
  v10 = *(v18 + 8);
  if (v8 == 2)
  {
LABEL_12:
    v11 = 0;
    a1 = v10 + 48;
    atomic_compare_exchange_strong_explicit((v10 + 48), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990]();
      a1 = v10 + 48;
      if (*(v10 + 80) == 2)
      {
        goto LABEL_14;
      }
    }

    else if (*(v10 + 80) == 2)
    {
LABEL_14:
      v12 = *(v10 + 56);
      *(v10 + 56) = 0;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow(a1);
      }

      (*(*v12 + 16))(&v24, v12);
      (*(*v9 + 24))(v9, v10, &v24);
      if (!v26)
      {
        v15 = v24;
        if (v24)
        {
          v24 = 0;
          LODWORD(v25) = 0;
          WTF::fastFree(v15, v14);
        }
      }

      v26 = -1;
      return (*(*v12 + 8))(v12);
    }

LABEL_37:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_22:
  v19 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 80) != 1)
    {
      goto LABEL_37;
    }
  }

  else if (*(v10 + 80) != 1)
  {
    goto LABEL_37;
  }

  LOBYTE(v24) = 0;
  v26 = -1;
  v20 = *(v10 + 72);
  if (v20 != 255)
  {
    if (*(v10 + 72))
    {
      LOBYTE(v24) = *(v10 + 56);
    }

    else
    {
      v24 = *(v10 + 56);
      v21 = *(v10 + 64);
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      v25 = v21;
    }

    v26 = v20;
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  result = (*(*v9 + 24))(v9, v10, &v24);
  if (!v26)
  {
    result = v24;
    if (v24)
    {
      v24 = 0;
      LODWORD(v25) = 0;
      return WTF::fastFree(result, v23);
    }
  }

  return result;
}