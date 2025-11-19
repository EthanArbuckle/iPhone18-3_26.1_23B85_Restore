void sub_1C7AB56A4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (!a13)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  (*(*v13 + 8))(v13);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>::operator=(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  v3 = a2[16];
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      if (!a2[16])
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v3 == 255)
  {
    if (!*(result + 16))
    {
      v4 = *result;
      if (*result)
      {
        *result = 0;
        *(result + 8) = 0;
        v5 = result;
        WTF::fastFree(v4, a2);
        result = v5;
      }
    }

    *(result + 16) = -1;
  }

  else
  {
    if (a2[16])
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
        v7 = *result;
        if (*result)
        {
          *result = 0;
          *(result + 8) = 0;
          v8 = result;
          v9 = a2;
          WTF::fastFree(v7, a2);
          a2 = v9;
          result = v8;
        }
      }

LABEL_19:
      *result = *a2;
      *(result + 16) = 1;
      return result;
    }

    if (*(result + 16))
    {
LABEL_16:
      *result = 0;
      *(result + 8) = 0;
      v6 = *a2;
      *a2 = 0;
      *result = v6;
      LODWORD(v6) = *(a2 + 2);
      *(a2 + 2) = 0;
      *(result + 8) = v6;
      LODWORD(v6) = *(a2 + 3);
      *(a2 + 3) = 0;
      *(result + 12) = v6;
      *(result + 16) = 0;
      return result;
    }

    v10 = *result;
    if (*result)
    {
      *result = 0;
      *(result + 8) = 0;
      v11 = result;
      v12 = a2;
      WTF::fastFree(v10, a2);
      a2 = v12;
      result = v11;
    }

    v13 = *a2;
    *a2 = 0;
    *result = v13;
    LODWORD(v13) = *(a2 + 2);
    *(a2 + 2) = 0;
    *(result + 8) = v13;
    LODWORD(v13) = *(a2 + 3);
    *(a2 + 3) = 0;
    *(result + 12) = v13;
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t *WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 >= 2 && v1 != 255)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      result = v3;
    }
  }

  *(result + 8) = -1;
  return result;
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 108);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 108);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 96);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
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

void sub_1C7AB5A90(_Unwind_Exception *exception_object)
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

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
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

void sub_1C7AB5C70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
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

atomic_uint **WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
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

void sub_1C7AB5DD0(_Unwind_Exception *exception_object)
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

unint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
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
    result = WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v54, a1);
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
          goto LABEL_90;
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
LABEL_91:
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
                                WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(v60, a1);
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

LABEL_90:
        v56 = 0;
        goto LABEL_91;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_90;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 108);
  if (v40)
  {
    v41 = *(a1 + 96);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 96);
  if (v43)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 84);
  v45 = *(a1 + 72);
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
    v45 = *(a1 + 72);
  }

  if ((a1 + 88) != v45 && v45 != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    WTF::fastFree(v45, v39);
  }

  v50 = *(a1 + 64);
  if (v50 >= 2 && v50 != 255)
  {
    v51 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

void sub_1C7AB63BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
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
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 96, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 72, v23);
  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage((v18 + 56));
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v113[1] = *MEMORY[0x1E69E9840];
  v94 = &v96;
  v4 = *(a1 + 72);
  v5 = (a1 + 88);
  if (v4 == (a1 + 88))
  {
    v6 = *(a1 + 84);
    memcpy(&v96, v5, 8 * v6);
    v4 = &v96;
  }

  else
  {
    *(a1 + 72) = v5;
    v94 = v4;
    v6 = *(a1 + 84);
    *(a1 + 80) = 1;
  }

  v95 = v6;
  *(a1 + 80) = 1;
  v92 = *(a1 + 108);
  v93 = *(a1 + 96);
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
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
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
            (*(*buf + 16))(&v98, buf);
            (*(*v8 + 24))(v8, a1, &v98);
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
        *v11 = &unk_1F472C128;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v98 = v11;
        (*(*v10 + 16))(v10, &v98);
        v12 = v98;
        v98 = 0;
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

  v17 = v93;
  if (!v92)
  {
    goto LABEL_155;
  }

  v18 = MEMORY[0x1E696EBC0];
  v19 = v93;
  v20 = (v93 + 40 * v92);
  do
  {
    while (1)
    {
      v21 = *v19;
      *v19 = 0;
      v98 = v21;
      v22 = *(v19 + 24);
      v99 = *(v19 + 8);
      v100 = v22;
      if (v21)
      {
        atomic_fetch_add((v21 + 8), 1u);
      }

      v23 = 0;
      v97[0] = 0;
      v97[1] = 0;
      v97[2] = "<chained promise>";
      v97[3] = 0;
      v24 = (v21 + 48);
      v101 = (v21 + 48);
      v102 = 1;
      atomic_compare_exchange_strong_explicit((v21 + 48), &v23, 1u, memory_order_acquire, memory_order_acquire);
      if (v23)
      {
        v24 = MEMORY[0x1CCA63990]();
      }

      v25 = WTF::NativePromiseBase::logChannel(v24);
      v26 = v25;
      if (*v25 && v25[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v107, v97);
        WTF::String::String(&v106, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v105, v21);
        if (v107)
        {
          v28 = *(v107 + 4);
          v29 = v106;
          if (v106)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v29 = v106;
          if (v106)
          {
LABEL_31:
            v30 = *(v29 + 4);
            v31 = v105;
            if (v105)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }
        }

        v30 = 0;
        v31 = v105;
        if (v105)
        {
LABEL_32:
          v32 = *(v31 + 4);
          if ((v32 | v30) < 0)
          {
            goto LABEL_170;
          }

          goto LABEL_37;
        }

LABEL_36:
        v32 = 0;
        if (v30 < 0)
        {
          goto LABEL_170;
        }

LABEL_37:
        v33 = __OFADD__(v30, v32);
        v34 = v30 + v32;
        v35 = v33;
        if (v28 < 0 || (v35 & 1) != 0 || (result = (v28 + v34), __OFADD__(v28, v34)))
        {
LABEL_170:
          v108 = 0;
LABEL_171:
          __break(0xC471u);
          return result;
        }

        if (v107 && (*(v107 + 16) & 4) == 0)
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
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v36, v107, v29, v31, &v108);
            if (!v108)
            {
              goto LABEL_171;
            }

            v105 = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v38);
            }

            v39 = v106;
            v106 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v38);
            }

            v40 = v107;
            v107 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v38);
            }

            v41 = *(v26 + 4);
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v42)
            {
              WTF::String::utf8();
              v44 = v103 ? v103 + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v44;
              _os_log_impl(&dword_1C79C0000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v42 = v103;
              v103 = 0;
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
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v97);
                              v110 = 0;
                              WTF::String::String(&v111, " settling chained promise ");
                              v112 = 0;
                              WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(v113, v21);
                              v103 = 0;
                              v104 = 0;
                              v52 = WTF::fastMalloc(0x30);
                              LODWORD(v104) = 3;
                              v103 = v52;
                              v53 = HIDWORD(v104);
                              v54 = v52 + 16 * HIDWORD(v104);
                              *v54 = buf;
                              v55 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v53 = HIDWORD(v104);
                                v52 = v103;
                              }

                              *(v54 + 1) = v55;
                              v56 = v53 + 1;
                              HIDWORD(v104) = v56;
                              v57 = v52 + 16 * v56;
                              *v57 = v110;
                              v58 = v111;
                              if (v111)
                              {
                                atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
                                v56 = HIDWORD(v104);
                                v52 = v103;
                              }

                              *(v57 + 1) = v58;
                              v59 = v56 + 1;
                              HIDWORD(v104) = v59;
                              v60 = v52 + 16 * v59;
                              *v60 = v112;
                              v61 = v113[0];
                              if (v113[0])
                              {
                                atomic_fetch_add_explicit(v113[0], 2u, memory_order_relaxed);
                                v59 = HIDWORD(v104);
                              }

                              *(v60 + 1) = v61;
                              HIDWORD(v104) = v59 + 1;
                              (*(*v51 + 16))(v51, v26, 4, &v103);
                              v62 = v103;
                              if (HIDWORD(v104))
                              {
                                v63 = 16 * HIDWORD(v104);
                                v64 = (v103 + 8);
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
                                v62 = v103;
                              }

                              if (v62)
                              {
                                v103 = 0;
                                LODWORD(v104) = 0;
                                WTF::fastFree(v62, v43);
                              }

                              v66 = v113[0];
                              v113[0] = 0;
                              if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v66, v43);
                              }

                              v67 = v111;
                              v111 = 0;
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
                          v20 = (v93 + 40 * v92);
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
                  v70 = v108;
                  v108 = 0;
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
            goto LABEL_141;
          case 2:
            if (v71 < 2 || v71 == 255)
            {
              goto LABEL_140;
            }

            if (v71 != 2)
            {
              v80 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v80)
              {
                (*(*v80 + 8))(v80);
              }

LABEL_140:
              v81 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v21 + 56) = v81;
              v74 = 2;
LABEL_141:
              *(v21 + 64) = v74;
              break;
            }

            v76 = *(a1 + 56);
            *(a1 + 56) = 0;
            v77 = *(v21 + 56);
            *(v21 + 56) = v76;
            if (v77)
            {
              (*(*v77 + 8))(v77);
            }

            break;
          case 1:
            if (!*(v21 + 64) || v71 == 255)
            {
              goto LABEL_137;
            }

            if (v71 != 1)
            {
              v79 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v79)
              {
                (*(*v79 + 8))(v79);
              }

LABEL_137:
              *(v21 + 64) = -1;
              *(v21 + 56) = *(a1 + 56);
              v74 = 1;
              goto LABEL_141;
            }

            v75 = *(a1 + 56);
            if (*(v21 + 57) == v75 >> 8)
            {
              if ((v75 & 0x100) != 0)
              {
                *(v21 + 56) = v75;
              }
            }

            else if ((v75 & 0x100) != 0)
            {
              *(v21 + 56) = v75;
              *(v21 + 57) = 1;
            }

            else if (*(v21 + 57))
            {
              *(v21 + 57) = 0;
            }

            break;
          default:
            if (*(v21 + 64))
            {
              if (v71 != 1 && v71 != 255)
              {
                v78 = *(v21 + 56);
                *(v21 + 56) = 0;
                if (v78)
                {
                  (*(*v78 + 8))(v78);
                }
              }

              *(v21 + 64) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v21, &v101);
      v82 = v102;
      if (v102 == 1)
      {
        v83 = v101;
        atomic_compare_exchange_strong_explicit(v101, &v82, 0, memory_order_release, memory_order_relaxed);
        if (v82 != 1)
        {
          break;
        }
      }

      v84 = (v21 + 8);
      add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_152;
      }

LABEL_145:
      WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v98);
      v19 = (v19 + 40);
      if (v19 == v20)
      {
        goto LABEL_153;
      }
    }

    WTF::Lock::unlockSlow(v83);
    v84 = (v21 + 8);
    add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_145;
    }

LABEL_152:
    atomic_store(add, v84);
    (*(*v21 + 16))(v21);
    WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v98);
    v19 = (v19 + 40);
  }

  while (v19 != v20);
LABEL_153:
  v17 = v93;
  v86 = 40 * v92;
  v87 = v93;
  do
  {
    v87 = WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v87) + 5;
    v86 -= 40;
  }

  while (v86);
LABEL_155:
  if (v17)
  {
    WTF::fastFree(v17, v5);
  }

  result = v94;
  if (v95)
  {
    v88 = 8 * v95;
    do
    {
      v89 = *result;
      *result = 0;
      if (v89 && atomic_fetch_add(v89 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v89 + 2);
        v90 = result;
        (*(*v89 + 8))(v89);
        result = v90;
      }

      result += 8;
      v88 -= 8;
    }

    while (v88);
    result = v94;
  }

  if (&v96 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AB70A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v13);
  _Unwind_Resume(a1);
}

void sub_1C7AB7114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::Lock *a31, char a32, WTF *a33, int a34)
{
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34 + 2);
      (*(*v34 + 16))(v34);
    }
  }

  WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a26);
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v36);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v37);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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

    return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
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
              WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
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

void sub_1C7AB7B14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
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

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472C128;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472C128;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
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
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v21, (v2 + 24));
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

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) <= 1u)
  {
    if (*(result + 16))
    {
      if (!*(result + 8))
      {
        v2 = *result;
        *result = 0;
        if (v2)
        {
          if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v3 = result;
            WTF::StringImpl::destroy(v2, a2);
            result = v3;
          }
        }
      }

      *(result + 8) = -1;
    }

    goto LABEL_8;
  }

  if (*(result + 16) != 2 || (v4 = *result, *result = 0, !v4))
  {
LABEL_8:
    *(result + 16) = -1;
    return result;
  }

  v5 = result;
  (*(*v4 + 8))(v4);
  result = v5;
  *(v5 + 16) = -1;
  return result;
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 116);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 116);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 104);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
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

void sub_1C7AB8528(_Unwind_Exception *exception_object)
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

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
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

void sub_1C7AB8708(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
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

atomic_uint **WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
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

void sub_1C7AB8868(_Unwind_Exception *exception_object)
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

unint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
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
    result = WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v54, a1);
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
          goto LABEL_96;
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
LABEL_97:
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
                                WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(v60, a1);
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

LABEL_96:
        v56 = 0;
        goto LABEL_97;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_96;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 116);
  if (v40)
  {
    v41 = *(a1 + 104);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 104);
  if (v43)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 92);
  v45 = *(a1 + 80);
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
    v45 = *(a1 + 80);
  }

  if ((a1 + 96) != v45 && v45 != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    WTF::fastFree(v45, v39);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v51 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v50 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v50)
      {
        if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v39);
        }
      }
    }

    *(a1 + 64) = -1;
  }

  *(a1 + 72) = -1;
  return a1;
}

void sub_1C7AB8E8C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
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
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 104, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 80, v23);
  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v18 + 56, v24);
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v124[1] = *MEMORY[0x1E69E9840];
  v105 = &v107;
  v4 = *(a1 + 80);
  v5 = (a1 + 96);
  if (v4 == (a1 + 96))
  {
    v6 = *(a1 + 92);
    memcpy(&v107, v5, 8 * v6);
    v4 = &v107;
  }

  else
  {
    *(a1 + 80) = v5;
    v105 = v4;
    v6 = *(a1 + 92);
    *(a1 + 88) = 1;
  }

  v106 = v6;
  *(a1 + 88) = 1;
  v103 = *(a1 + 116);
  v104 = *(a1 + 104);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 121)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
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

          if (WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResultRunnable(&v109, a1);
            v15 = v109;
            (*(*v109 + 16))(&buf, v109);
            (*(*v8 + 24))(v8, a1, &buf);
            if (!BYTE8(buf))
            {
              v17 = buf;
              *&buf = 0;
              if (v17)
              {
                if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v17, v16);
                }
              }
            }

            BYTE8(buf) = -1;
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
            if (!BYTE8(buf))
            {
              v18 = buf;
              *&buf = 0;
              if (v18)
              {
                if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, v5);
                }
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
        *v11 = &unk_1F472C178;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v109 = v11;
        (*(*v10 + 16))(v10, &v109);
        v12 = v109;
        v109 = 0;
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

  v20 = v104;
  if (!v103)
  {
    goto LABEL_187;
  }

  v21 = MEMORY[0x1E696EBC0];
  v22 = v104;
  v23 = (v104 + 40 * v103);
  do
  {
    while (1)
    {
      v24 = *v22;
      *v22 = 0;
      v109 = v24;
      v25 = *(v22 + 24);
      v110 = *(v22 + 8);
      v111 = v25;
      if (v24)
      {
        atomic_fetch_add((v24 + 8), 1u);
      }

      v26 = 0;
      v108[0] = 0;
      v108[1] = 0;
      v108[2] = "<chained promise>";
      v108[3] = 0;
      v27 = (v24 + 48);
      v112 = (v24 + 48);
      v113 = 1;
      atomic_compare_exchange_strong_explicit((v24 + 48), &v26, 1u, memory_order_acquire, memory_order_acquire);
      if (v26)
      {
        v27 = MEMORY[0x1CCA63990]();
      }

      v28 = WTF::NativePromiseBase::logChannel(v27);
      v30 = v28;
      if (*v28 && v28[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v118, v108);
        WTF::String::String(&v117, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v116, v24);
        if (v118)
        {
          v32 = *(v118 + 4);
          v33 = v117;
          if (v117)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v32 = 0;
          v33 = v117;
          if (v117)
          {
LABEL_38:
            v34 = *(v33 + 4);
            v35 = v116;
            if (v116)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        v34 = 0;
        v35 = v116;
        if (v116)
        {
LABEL_39:
          v36 = *(v35 + 4);
          if ((v36 | v34) < 0)
          {
            goto LABEL_202;
          }

          goto LABEL_44;
        }

LABEL_43:
        v36 = 0;
        if (v34 < 0)
        {
          goto LABEL_202;
        }

LABEL_44:
        v37 = __OFADD__(v34, v36);
        v38 = v34 + v36;
        v39 = v37;
        if (v32 < 0 || (v39 & 1) != 0 || (result = (v32 + v38), __OFADD__(v32, v38)))
        {
LABEL_202:
          v119 = 0;
LABEL_203:
          __break(0xC471u);
          return result;
        }

        if (v118 && (*(v118 + 16) & 4) == 0)
        {
          v40 = 0;
          goto LABEL_60;
        }

        if (v33)
        {
          v41 = *(v33 + 16);
          v40 = (v41 >> 2) & 1;
          if (!v35 || (v41 & 4) == 0)
          {
LABEL_60:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v40, v118, v33, v35, &v119);
            if (!v119)
            {
              goto LABEL_203;
            }

            v116 = 0;
            if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v42);
            }

            v43 = v117;
            v117 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v42);
            }

            v44 = v118;
            v118 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v42);
            }

            v45 = *(v30 + 4);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              WTF::String::utf8();
              v47 = v114 ? v114 + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v47;
              _os_log_impl(&dword_1C79C0000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v46 = v114;
              v114 = 0;
              if (v46)
              {
                if (*v46 == 1)
                {
                  v46 = WTF::fastFree(v46, v29);
                  if (*v30)
                  {
LABEL_78:
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
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v108);
                              v121 = 0;
                              WTF::String::String(&v122, " settling chained promise ");
                              v123 = 0;
                              WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(v124, v24);
                              v114 = 0;
                              v115 = 0;
                              v55 = WTF::fastMalloc(0x30);
                              LODWORD(v115) = 3;
                              v114 = v55;
                              v56 = HIDWORD(v115);
                              v57 = v55 + 16 * HIDWORD(v115);
                              *v57 = buf;
                              v58 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v56 = HIDWORD(v115);
                                v55 = v114;
                              }

                              *(v57 + 1) = v58;
                              v59 = v56 + 1;
                              HIDWORD(v115) = v59;
                              v60 = v55 + 16 * v59;
                              *v60 = v121;
                              v61 = v122;
                              if (v122)
                              {
                                atomic_fetch_add_explicit(v122, 2u, memory_order_relaxed);
                                v59 = HIDWORD(v115);
                                v55 = v114;
                              }

                              *(v60 + 1) = v61;
                              v62 = v59 + 1;
                              HIDWORD(v115) = v62;
                              v63 = v55 + 16 * v62;
                              *v63 = v123;
                              v64 = v124[0];
                              if (v124[0])
                              {
                                atomic_fetch_add_explicit(v124[0], 2u, memory_order_relaxed);
                                v62 = HIDWORD(v115);
                              }

                              *(v63 + 1) = v64;
                              HIDWORD(v115) = v62 + 1;
                              (*(*v54 + 16))(v54, v30, 4, &v114);
                              v65 = v114;
                              if (HIDWORD(v115))
                              {
                                v66 = 16 * HIDWORD(v115);
                                v67 = (v114 + 8);
                                do
                                {
                                  v68 = *v67;
                                  *v67 = 0;
                                  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v68, v29);
                                  }

                                  v67 += 2;
                                  v66 -= 16;
                                }

                                while (v66);
                                v65 = v114;
                              }

                              if (v65)
                              {
                                v114 = 0;
                                LODWORD(v115) = 0;
                                WTF::fastFree(v65, v29);
                              }

                              v69 = v124[0];
                              v124[0] = 0;
                              if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v69, v29);
                              }

                              v70 = v122;
                              v122 = 0;
                              if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v70, v29);
                              }

                              v71 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v71, v29);
                              }

                              ++v52;
                            }

                            while (v52 != v53);
                          }

                          v72 = 1;
                          v21 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v72, 0, memory_order_release, memory_order_relaxed);
                          v23 = (v104 + 40 * v103);
                          if (v72 != 1)
                          {
                            WTF::Lock::unlockSlow(v21);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_110:
                  v73 = v119;
                  v119 = 0;
                  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v73, v29);
                  }

                  goto LABEL_113;
                }

                --*v46;
              }
            }

            if (*v30)
            {
              goto LABEL_78;
            }

            goto LABEL_110;
          }
        }

        else if (!v35)
        {
          v40 = 1;
          goto LABEL_60;
        }

        v40 = (*(v35 + 16) >> 2) & 1;
        goto LABEL_60;
      }

LABEL_113:
      v74 = *(v24 + 72);
      v75 = *(a1 + 72);
      if (v74 != 255 || v75 != 255)
      {
        switch(v75)
        {
          case 255:
            if (*(v24 + 72) > 1u)
            {
              if (v74 == 2)
              {
                v79 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v79)
                {
                  (*(*v79 + 8))(v79);
                }
              }
            }

            else if (*(v24 + 72))
            {
              if (!*(v24 + 64))
              {
                v76 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v76)
                {
                  if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v76, v29);
                  }
                }
              }

              *(v24 + 64) = -1;
              v77 = -1;
              goto LABEL_167;
            }

            v77 = -1;
LABEL_167:
            *(v24 + 72) = v77;
            break;
          case 2:
            if (*(v24 + 72) <= 1u)
            {
              if (*(v24 + 72))
              {
                if (!*(v24 + 64))
                {
                  v80 = *(v24 + 56);
                  *(v24 + 56) = 0;
                  if (v80)
                  {
                    if (atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v80, v29);
                    }
                  }
                }

                *(v24 + 64) = -1;
              }

LABEL_157:
              v85 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v24 + 56) = v85;
              v77 = 2;
              goto LABEL_167;
            }

            if (v74 == 255)
            {
              goto LABEL_157;
            }

            v87 = *(a1 + 56);
            *(a1 + 56) = 0;
            v88 = *(v24 + 56);
            *(v24 + 56) = v87;
            if (v88)
            {
              (*(*v88 + 8))(v88);
            }

            break;
          case 1:
            if (*(v24 + 72) > 1u)
            {
              if (v74 == 2)
              {
                v82 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v82)
                {
                  (*(*v82 + 8))(v82);
                }
              }

LABEL_153:
              *(v24 + 56) = 0;
              *(v24 + 64) = -1;
              v83 = *(a1 + 64);
              if (v83 != 255)
              {
                if (*(a1 + 64))
                {
                  *(v24 + 56) = *(a1 + 56);
                }

                else
                {
                  v84 = *(a1 + 56);
                  *(a1 + 56) = 0;
                  *(v24 + 56) = v84;
                }

                *(v24 + 64) = v83;
              }

              v77 = 1;
              goto LABEL_167;
            }

            if (!*(v24 + 72))
            {
              goto LABEL_153;
            }

            LOBYTE(v114) = 0;
            LOBYTE(v115) = -1;
            v78 = *(a1 + 64);
            if (*(a1 + 64))
            {
              if (v78 == 255)
              {
                LOBYTE(buf) = 0;
              }

              else
              {
                LOBYTE(v114) = *(a1 + 56);
                LOBYTE(v115) = v78;
                LOBYTE(buf) = v114;
              }
            }

            else
            {
              v93 = *(a1 + 56);
              *(a1 + 56) = 0;
              LOBYTE(v115) = 0;
              v114 = 0;
              *&buf = v93;
            }

            BYTE8(buf) = v78;
            mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=(&v114, (v24 + 56));
            mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=(v24 + 56, &buf);
            if (!BYTE8(buf))
            {
              v95 = buf;
              if (buf)
              {
                if (atomic_fetch_add_explicit(buf, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v95, v94);
                }
              }
            }

            if (!v115)
            {
              v96 = v114;
              v114 = 0;
              if (v96)
              {
                if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v96, v94);
                }
              }
            }

            break;
          default:
            if (*(v24 + 72) > 1u)
            {
              if (v74 == 2)
              {
                v86 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v86)
                {
                  (*(*v86 + 8))(v86);
                }
              }

              *(v24 + 72) = 0;
            }

            else if (*(v24 + 72))
            {
              if (!*(v24 + 64))
              {
                v81 = *(v24 + 56);
                *(v24 + 56) = 0;
                if (v81)
                {
                  if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v81, v29);
                  }
                }
              }

              *(v24 + 64) = -1;
              *(v24 + 72) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v24, &v112);
      v89 = v113;
      if (v113 == 1)
      {
        v90 = v112;
        atomic_compare_exchange_strong_explicit(v112, &v89, 0, memory_order_release, memory_order_relaxed);
        if (v89 != 1)
        {
          break;
        }
      }

      v91 = (v24 + 8);
      add = atomic_fetch_add((v24 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_184;
      }

LABEL_171:
      WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v109);
      v22 = (v22 + 40);
      if (v22 == v23)
      {
        goto LABEL_185;
      }
    }

    WTF::Lock::unlockSlow(v90);
    v91 = (v24 + 8);
    add = atomic_fetch_add((v24 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_171;
    }

LABEL_184:
    atomic_store(add, v91);
    (*(*v24 + 16))(v24);
    WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v109);
    v22 = (v22 + 40);
  }

  while (v22 != v23);
LABEL_185:
  v20 = v104;
  v97 = 40 * v103;
  v98 = v104;
  do
  {
    v98 = WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v98) + 5;
    v97 -= 40;
  }

  while (v97);
LABEL_187:
  if (v20)
  {
    WTF::fastFree(v20, v5);
  }

  result = v105;
  if (v106)
  {
    v99 = 8 * v106;
    do
    {
      v100 = *result;
      *result = 0;
      if (v100 && atomic_fetch_add(v100 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v100 + 2);
        v101 = result;
        (*(*v100 + 8))(v100);
        result = v101;
      }

      result += 8;
      v99 -= 8;
    }

    while (v99);
    result = v105;
  }

  if (&v107 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AB9CC0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  if (!*(v11 - 136))
  {
    v13 = *(v11 - 144);
    *(v11 - 144) = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong_explicit(*v10, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v15);
  _Unwind_Resume(a1);
}

void sub_1C7AB9D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::Lock *a31, char a32, WTF *a33, int a34)
{
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34 + 2);
      (*(*v34 + 16))(v34);
    }
  }

  WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a26);
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v36);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v37);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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

    return WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

mpark *WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *result, _BYTE *a2)
{
  v2 = 0;
  v3 = a2 + 48;
  atomic_compare_exchange_strong_explicit(a2 + 48, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (a2[72] == 1)
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
  if (v8[72] != 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  *result = 0;
  *(result + 8) = -1;
  v4 = a2[64];
  if (v4 != 255)
  {
    if (a2[64])
    {
      *result = a2[56];
    }

    else
    {
      v5 = *(a2 + 7);
      *(a2 + 7) = 0;
      *result = v5;
    }

    *(result + 8) = v4;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
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
              WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
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

void sub_1C7ABA878(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
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

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472C178;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472C178;
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

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v24, (v2 + 24));
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
    v8 = *(v1 + 72);
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

      goto LABEL_23;
    }
  }

  else
  {
    v8 = *(v1 + 72);
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
      if (*(v10 + 72) == 2)
      {
        goto LABEL_14;
      }
    }

    else if (*(v10 + 72) == 2)
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
      if (!v25)
      {
        v15 = v24;
        v24 = 0;
        if (v15)
        {
          if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }
        }
      }

      v25 = -1;
      return (*(*v12 + 8))(v12);
    }

LABEL_39:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_23:
  v19 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 72) != 1)
    {
      goto LABEL_39;
    }
  }

  else if (*(v10 + 72) != 1)
  {
    goto LABEL_39;
  }

  LOBYTE(v24) = 0;
  v25 = -1;
  v20 = *(v10 + 64);
  if (v20 != 255)
  {
    if (*(v10 + 64))
    {
      LOBYTE(v24) = *(v10 + 56);
    }

    else
    {
      v21 = *(v10 + 56);
      *(v10 + 56) = 0;
      v24 = v21;
    }

    v25 = v20;
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  result = (*(*v9 + 24))(v9, v10, &v24);
  if (!v25)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

void sub_1C7ABB094(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (!a10 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WTF::String,WebCore::DOMCacheEngine::Error>::operator=(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 8);
  v3 = a2[8];
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      if (!a2[8])
      {
        v4 = *a2;
        *a2 = 0;
        *result = v4;
        *(result + 8) = 0;
        return result;
      }

      goto LABEL_21;
    }
  }

  else if (v3 == 255)
  {
    if (!*(result + 8))
    {
      v5 = *result;
      *result = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v6 = result;
          WTF::StringImpl::destroy(v5, a2);
          result = v6;
        }
      }
    }

    *(result + 8) = -1;
  }

  else
  {
    if (a2[8])
    {
      if (*(result + 8))
      {
        if (v2 == 1)
        {
          *result = *a2;
          return result;
        }
      }

      else
      {
        v8 = *result;
        *result = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v9 = result;
          v10 = a2;
          WTF::StringImpl::destroy(v8, a2);
          a2 = v10;
          result = v9;
        }
      }

LABEL_21:
      *result = *a2;
      *(result + 8) = 1;
      return result;
    }

    v7 = *a2;
    *a2 = 0;
    if (v2)
    {
      *result = v7;
      *(result + 8) = 0;
    }

    else
    {
      v11 = *result;
      *result = v7;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v12 = result;
        WTF::StringImpl::destroy(v11, a2);
        return v12;
      }
    }
  }

  return result;
}

void WebCore::EmptyBadgeClient::~EmptyBadgeClient(WebCore::EmptyBadgeClient *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::EmptyBadgeClient::~EmptyBadgeClient(WebCore::EmptyBadgeClient *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebCore::DummyStorageProvider::~DummyStorageProvider(WebCore::DummyStorageProvider *this, WTF::StringImpl *a2)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = this;
    WTF::StringImpl::destroy(v2, a2);
    this = v3;
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }
  }
}

{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v3 = this;
    WTF::StringImpl::destroy(v2, a2);
    this = v3;
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    v5 = this;
    (*(*v4 + 8))(v4);
    this = v5;
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebCore::DummySpeechRecognitionProvider::~DummySpeechRecognitionProvider(WebCore::DummySpeechRecognitionProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (v1[2] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[2];
    }
  }
}

uint64_t WebCore::ApplicationCacheStorage::create(WebCore::ApplicationCacheStorage *this, const WTF::String *a2, const WTF::String *a3)
{
  v4 = WTF::fastMalloc(0x88);
  result = MEMORY[0x1CCA668F0](v4, MEMORY[0x1E696EBA8], MEMORY[0x1E696EBA8]);
  *this = v4;
  return result;
}

WebCore::ApplicationCacheStorage **WTF::Ref<WebCore::ApplicationCacheStorage,WTF::RawPtrTraits<WebCore::ApplicationCacheStorage>,WTF::DefaultRefDerefTraits<WebCore::ApplicationCacheStorage>>::~Ref(WebCore::ApplicationCacheStorage **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      WebCore::ApplicationCacheStorage::~ApplicationCacheStorage(v2, a2);
      WTF::fastFree(v4, v5);
      return v3;
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

WTF::StringImpl *std::__call_once_proxy[abi:sn200100]<std::tuple<webApplicationCacheStorage(void)::$_0 &&>>()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!v1)
  {
    v1 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  }

  MEMORY[0x1CCA63A40](&v10, [v0 _webkit_localCacheDirectoryWithBundleIdentifier:v1]);
  WTF::FileSystemImpl::pathByAppendingComponent();
  WebCore::SQLiteFileSystem::deleteDatabaseFile(&v9, v2);
  WTF::FileSystemImpl::pathByAppendingComponent();
  WTF::FileSystemImpl::deleteNonEmptyDirectory(&v8, v3);
  v5 = v8;
  v8 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_1C7ABB618(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ApplicationCacheStorage::~ApplicationCacheStorage(WebCore::ApplicationCacheStorage *this, WTF::StringImpl *a2)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 16);
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 15);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  MEMORY[0x1CCA64F20](this + 56);
  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::TextIndicatorData::~TextIndicatorData(WebCore::TextIndicatorData *this, void *a2)
{
  v3 = *(this + 12);
  if ((v3 & 0x8000000000000) != 0 && (v4 = (v3 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
    v5 = *(this + 11);
    *(this + 11) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(this + 11);
    *(this + 11) = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v5[4] == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --v5[4];
  }

LABEL_7:
  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
      v7 = *(this + 9);
      *(this + 9) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    --v6[4];
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (!v7)
  {
LABEL_15:
    v8 = *(this + 6);
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (v7[4] != 1)
  {
    --v7[4];
    goto LABEL_15;
  }

  (*(*v7 + 8))(v7);
  v8 = *(this + 6);
  if (v8)
  {
LABEL_16:
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v8, a2);
  }
}

double std::unique_ptr<WebViewRenderingUpdateScheduler>::reset[abi:sn200100](uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (!v2)
  {
    return result;
  }

  v3 = v2[4];
  v2[4] = 0;
  if (v3)
  {
    v4 = MEMORY[0x1CCA653D0]();
    bmalloc::api::tzoneFree(v4, v5);
  }

  v6 = v2[3];
  v2[3] = 0;
  if (v6)
  {
    v7 = MEMORY[0x1CCA653D0]();
    bmalloc::api::tzoneFree(v7, v8);
  }

  v9 = *v2;
  if (*v2)
  {
    *(v9 + 8) = 0;
    *v2 = 0;
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
      if (!*(v2 + 2))
      {
        goto LABEL_9;
      }

LABEL_13:
      result = 0.0;
      *(v2 + 1) = 0u;
      *(v2 + 2) = 0u;
      *v2 = 0u;
      return result;
    }
  }

  if (*(v2 + 2))
  {
    goto LABEL_13;
  }

LABEL_9:

  bmalloc::api::tzoneFree(v2, a2);
  return result;
}

void WebCore::UserScript::~UserScript(WebCore::UserScript *this, WTF::StringImpl *a2)
{
  v3 = *(this + 19);
  v4 = *(this + 8);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *(this + 8);
  }

  if (v4)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 15);
  v8 = *(this + 6);
  if (v7)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
    v8 = *(this + 6);
  }

  if (v8)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v8, a2);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *this;
  *this = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }
}

void WebCore::FontAttributes::~FontAttributes(WebCore::FontAttributes *this, WTF::StringImpl *a2)
{
  v3 = *(this + 17);
  v4 = *(this + 7);
  if (v3)
  {
    v5 = 24 * v3;
    v6 = (v4 + 8);
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
    v4 = *(this + 7);
  }

  if (v4)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  v8 = *(this + 3);
  if ((v8 & 0x8000000000000) != 0 && (v9 = (v8 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
    v10 = *(this + 2);
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(this + 2);
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = (v10 & 0xFFFFFFFFFFFFLL);
  if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, a2);
  }

LABEL_15:
  v12 = *(this + 1);
  if ((v12 & 0x8000000000000) != 0 && (v13 = (v12 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, a2);
    v14 = *this;
    *this = 0;
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *this;
    *this = 0;
    if (!v14)
    {
      return;
    }
  }

  if (*v14 == 1)
  {
    v15 = MEMORY[0x1CCA66FC0]();
    WTF::fastFree(v15, v16);
  }

  else
  {
    --*v14;
  }
}

uint64_t WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(uint64_t *a1, char *__s2, size_t __n)
{
  if (!__n || __s2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ABBDA8);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = -1640531527;
  v7 = *(v4 - 8);
  v8 = __n - 1;
  if (__n == 1)
  {
    goto LABEL_12;
  }

  if (__n == 2)
  {
    v9 = __s2;
  }

  else
  {
    v10 = __s2;
    v11 = v8 >> 1;
    do
    {
      v12 = v6 + *v10;
      v13 = (v12 << 16) ^ (v10[1] << 11);
      v6 = (v13 ^ v12) + ((v13 ^ v12) >> 11);
      v10 += 2;
      --v11;
    }

    while (v11);
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }

    v9 = &__s2[2 * (v8 >> 1)];
  }

  v6 = ((v6 + *v9) ^ ((v6 + *v9) << 11)) + (((v6 + *v9) ^ ((v6 + *v9) << 11)) >> 17);
LABEL_12:
  v14 = (v6 ^ (8 * v6)) + ((v6 ^ (8 * v6)) >> 5);
  v15 = (v14 ^ (4 * v14)) + ((v14 ^ (4 * v14)) >> 15);
  if (v15 == v15 << 10)
  {
    v16 = 0x800000;
  }

  else
  {
    v16 = (v15 << 10) ^ v15;
  }

  v17 = v16 & v7;
  v18 = v4 + 24 * (v16 & v7);
  v19 = *(v18 + 8);
  if (!v19)
  {
    return 0;
  }

  v20 = 1;
  while (v19 != __n || *v18 == -1 || memcmp(*v18, __s2, __n))
  {
    v17 = (v17 + v20) & v7;
    v18 = v4 + 24 * v17;
    v19 = *(v18 + 8);
    ++v20;
    if (!v19)
    {
      return 0;
    }
  }

  return v18;
}

void *WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_0,void>::~CallableWrapper(void *result, void *a2)
{
  v2 = result[1];
  *result = &unk_1F472C1C8;
  result[1] = 0;
  if (v2)
  {
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      v4 = result;
      WTF::fastFree(v2, a2);
      return v4;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472C1C8;
  *(a1 + 1) = 0;
  if (v3 && (add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3);
    v6 = a1;
    WTF::fastFree(v3, a2);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_0,void>::call(uint64_t a1)
{
  WebThreadLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = 1;
      v5 = objc_autoreleasePoolPush();
      [*(v3 + 16) _updateRendering];
      objc_autoreleasePoolPop(v5);
      if ((*(v3 + 42) & 1) == 0)
      {
        v6 = *(v3 + 16);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = ___ZN31WebViewRenderingUpdateScheduler24registerCACommitHandlersEv_block_invoke;
        v9[3] = &unk_1E82C7608;
        v9[4] = v6;
        [MEMORY[0x1E6979518] addCommitHandler:v9 forPhase:0];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = ___ZN31WebViewRenderingUpdateScheduler24registerCACommitHandlersEv_block_invoke_2;
        v8[3] = &unk_1E82C7608;
        v8[4] = v6;
        [MEMORY[0x1E6979518] addCommitHandler:v8 forPhase:2];
        *(v3 + 42) = 1;
      }

      if ((*(v3 + 41) & 1) == 0)
      {
        WebCore::RunLoopObserver::invalidate(*(v3 + 24));
      }

      *(v3 + 40) = v4;
      v7 = *(v3 + 8);
      if (v7)
      {
        *(v3 + 8) = v7 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void sub_1C7ABC03C(_Unwind_Exception *a1)
{
  *(v1 + 40) = v2;
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 8) = v3 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void *WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_1,void>::~CallableWrapper(void *result, void *a2)
{
  v2 = result[1];
  *result = &unk_1F472C1F0;
  result[1] = 0;
  if (v2)
  {
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      v4 = result;
      WTF::fastFree(v2, a2);
      return v4;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472C1F0;
  *(a1 + 1) = 0;
  if (v3 && (add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
  {
    v7 = v2;
    atomic_store(add, v3);
    v6 = a1;
    WTF::fastFree(v3, a2);
    a1 = v6;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebViewRenderingUpdateScheduler::WebViewRenderingUpdateScheduler(WebView *)::$_1,void>::call(uint64_t a1)
{
  WebThreadLock();
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 8);
      v4 = objc_autoreleasePoolPush();
      [*(v3 + 16) _didCompleteRenderingFrame];
      WebCore::RunLoopObserver::invalidate(*(v3 + 32));
      objc_autoreleasePoolPop(v4);
      v5 = *(v3 + 8);
      if (v5)
      {
        *(v3 + 8) = v5 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void sub_1C7ABC1F4(_Unwind_Exception *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WebScriptWorld *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = result + 16;
  *(result + 8) = a2 - 1;
  *(result + 12) = a2;
  *result = 0;
  *(result + 4) = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
            v14 = *(v11 + 1);
            if (!v14)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v13 = 0;
            v14 = *(v11 + 1);
            if (!v14)
            {
LABEL_26:
              result = 92;
              __break(0xC471u);
              return result;
            }
          }

          v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v13 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v12 + 16 * v18);
            v18 = (v18 + v19++) & v13;
          }

          while (v21);
          v22 = (v12 + 16 * v20);
          *v10 = 0;
          *v22 = v11;
          v23 = *v10;
          v22[1] = v10[1];
          *v10 = 0;
          if (v23)
          {
            if (*v23 == 1)
            {
              WTF::fastFree(v23, v8);
            }

            else
            {
              --*v23;
            }
          }
        }

        else
        {
          *v10 = 0;
        }
      }

      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::Ref<WebCore::GeolocationError,WTF::RawPtrTraits<WebCore::GeolocationError>,WTF::DefaultRefDerefTraits<WebCore::GeolocationError>>::~Ref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      v4 = *(v2 + 1);
      *(v2 + 1) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      if (*v2 == 1)
      {
        WTF::fastFree(v2, a2);
        return v3;
      }

      else
      {
        result = 191;
        __break(0xC471u);
      }
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

void WebCore::DummySpeechRecognitionProvider::~DummySpeechRecognitionProvider(WebCore::DummySpeechRecognitionProvider *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (v3[2] != 1)
    {
      --v3[2];

      goto LABEL_5;
    }

    v4 = this;
    (*(*v3 + 8))(v3);
    this = v4;
  }

LABEL_5:
  bmalloc::api::tzoneFree(this, a2);
}

void *WebCore::DummySpeechRecognitionProvider::speechRecognitionConnection(WebCore::DummySpeechRecognitionProvider *this)
{
  result = *(this + 1);
  if (!result)
  {
    result = WTF::fastMalloc(0x10);
    *result = &unk_1F472C268;
    result[1] = 1;
    v3 = *(this + 1);
    *(this + 1) = result;
    if (v3)
    {
      if (v3[2] == 1)
      {
        (*(*v3 + 8))(v3);
        return *(this + 1);
      }

      else
      {
        --v3[2];
      }
    }
  }

  return result;
}

void WebCore::DummySpeechRecognitionProvider::DummySpeechRecognitionConnection::~DummySpeechRecognitionConnection(WebCore::DummySpeechRecognitionProvider::DummySpeechRecognitionConnection *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::DummySpeechRecognitionProvider::DummySpeechRecognitionConnection::~DummySpeechRecognitionConnection(WebCore::DummySpeechRecognitionProvider::DummySpeechRecognitionConnection *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebCore::DummyStorageProvider::storageConnection(WebCore::DummyStorageProvider *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F472C2F0;
  v3[1] = 1;
  v4 = *(this + 1);
  *(this + 1) = v3;
  if (!v4 || atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return *(this + 1);
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 8))(v4);
  return *(this + 1);
}

uint64_t WebCore::DummyStorageProvider::ensureMediaKeysStorageDirectoryForOrigin@<X0>(uint64_t this@<X0>, const WebCore::SecurityOriginData *a2@<X1>, WTF::FileSystemImpl *a3@<X8>)
{
  v4 = *(this + 16);
  if (v4 && *(v4 + 4))
  {
    WebCore::SecurityOriginData::databaseIdentifier(&v8, a2);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    return WTF::FileSystemImpl::makeAllDirectories(a3, v6);
  }

  else
  {
    v5 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *a3 = v5;
  }

  return this;
}

void sub_1C7ABC930(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebCore::DummyStorageProvider::setMediaKeysStorageDirectory(WebCore::DummyStorageProvider *this, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  result = *(this + 2);
  *(this + 2) = v3;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

uint64_t WebCore::DummyStorageProvider::DummyStorageConnection::getPersisted(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebCore::DummyStorageProvider::DummyStorageConnection::persist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

unsigned int *WebCore::DummyStorageProvider::DummyStorageConnection::fileSystemGetDirectory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[0] = 6;
  v7 = 0;
  v8 = 1;
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, v6);
  result = (*(*v3 + 8))(v3);
  if (v8 != 255)
  {
    result = v7;
    v7 = 0;
    if (v8)
    {
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }

    else if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1C7ABCC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  WebCore::ExceptionOr<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::FileSystemStorageConnection,WTF::RawPtrTraits<WebCore::FileSystemStorageConnection>,WTF::DefaultRefDerefTraits<WebCore::FileSystemStorageConnection>>>>::~ExceptionOr(va, v4);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WebCore::DummyStorageProvider::DummyStorageConnection::getEstimate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6[0] = 6;
  v7 = 0;
  v8 = 1;
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, v6);
  result = (*(*v3 + 8))(v3);
  if (v8)
  {
    if (v8 != 255)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void sub_1C7ABCD34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, v4);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ExceptionOr<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::FileSystemStorageConnection,WTF::RawPtrTraits<WebCore::FileSystemStorageConnection>,WTF::DefaultRefDerefTraits<WebCore::FileSystemStorageConnection>>>>::~ExceptionOr(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 16);
  if (v2 == 255)
  {
    goto LABEL_6;
  }

  v3 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v4 = result;
        WTF::StringImpl::destroy(v3, a2);
        result = v4;
      }
    }

    goto LABEL_6;
  }

  if (!v3 || atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
LABEL_6:
    *(result + 16) = -1;
    return result;
  }

  atomic_store(1u, v3 + 2);
  v5 = result;
  (*(*v3 + 8))(v3);
  result = v5;
  *(v5 + 16) = -1;
  return result;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v2 = MEMORY[0x1CCA673C0](result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ64__WebView_WebPrivate__willEnterBackgroundWithCompletionHandler__EUb_E3__2vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F472C388;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ64__WebView_WebPrivate__willEnterBackgroundWithCompletionHandler__EUb_E3__2vJEED0Ev(const void **a1)
{
  *a1 = &unk_1F472C388;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

void sub_1C7ABD1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12)
  {
    if (a12 != 255)
    {
      WebCore::RemoteFrameGeometryTransformer::~RemoteFrameGeometryTransformer(&a9);
    }
  }

  _Unwind_Resume(exception_object);
}

WebCore::EditingStyle *WTF::RefCounted<WebCore::EditingStyle>::deref(WebCore::EditingStyle *result)
{
  if (*result == 1)
  {
    WebCore::EditingStyle::~EditingStyle(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

unsigned int *WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(unsigned int *result, unint64_t a2, id **a3, char a4)
{
  v4 = result;
  *result = 0;
  *(result + 1) = 0;
  if (!a2)
  {
LABEL_16:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, v4[3]);
    return v4;
  }

  if (!(a2 >> 29))
  {
    v8 = WTF::fastMalloc((8 * a2));
    v4[2] = a2;
    *v4 = v8;
    if (a4)
    {
      v9 = 0;
      do
      {
        v10 = [**a3 objectAtIndexedSubscript:{v9, v25}];
        WTF::makeVectorElement(&v25, 0, v10, v11);
        if (v26 != 1)
        {
          break;
        }

        v13 = v4[3];
        v14 = *v4;
        v15 = v25;
        v25 = 0;
        *(v14 + 8 * v13) = v15;
        v4[3] = v13 + 1;
        v16 = v25;
        v25 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v12);
          }
        }

        ++v9;
      }

      while (a2 != v9);
    }

    else
    {
      v17 = 0;
      do
      {
        v18 = [**a3 objectAtIndexedSubscript:{v17, v25}];
        WTF::makeVectorElement(&v25, 0, v18, v19);
        if (v26)
        {
          v21 = v4[3];
          v22 = *v4;
          v23 = v25;
          v25 = 0;
          *(v22 + 8 * v21) = v23;
          v4[3] = v21 + 1;
          v24 = v25;
          v25 = 0;
          if (v24)
          {
            if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v20);
            }
          }
        }

        ++v17;
      }

      while (a2 != v17);
    }

    goto LABEL_16;
  }

  __break(0xC471u);
  return result;
}

void sub_1C7ABD380(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, WTF::StringImpl *a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = *result;
    if (v4 > a2)
    {
      v6 = (v5 + 8 * a2);
      v7 = 8 * v4 - 8 * a2;
      do
      {
        result = *v6;
        *v6 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
      v3[3] = a2;
      v5 = *v3;
      LODWORD(v4) = a2;
    }

    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>::hash<WTF::String>(*v13);
          v18 = 0;
          do
          {
            v19 = v17 & v16;
            v17 = ++v18 + v19;
          }

          while (*(v15 + 8 * v19));
          v20 = (v15 + 8 * v19);
          *v13 = 0;
          *v20 = v14;
          v21 = *v13;
          *v13 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v10);
          }

          if (v13 == a3)
          {
            v12 = v20;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>::hash<WTF::String>(uint64_t a1)
{
  v1 = -1640531527;
  v2 = *(a1 + 8);
  v3 = *(a1 + 4);
  if ((*(a1 + 16) & 4) != 0)
  {
    if (v3 >= 2)
    {
      v12 = 0;
      do
      {
        v13 = v1 + *(MEMORY[0x1E696EBB8] + *(v2 + v12));
        v14 = (v13 << 16) ^ (*(MEMORY[0x1E696EBB8] + *(v2 + v12 + 1)) << 11) ^ v13;
        v1 = v14 + (v14 >> 11);
        v15 = v12 + 3;
        v12 += 2;
      }

      while (v15 < v3);
    }

    if (v3)
    {
      v11 = *(MEMORY[0x1E696EBB8] + *(v2 + v3 - 1));
      goto LABEL_12;
    }
  }

  else
  {
    if (v3 >= 2)
    {
      v4 = (v2 + 2);
      for (i = 1; i < v3; i += 2)
      {
        v6 = *(v4 - 1) | (32 * (*(v4 - 1) - 65 < 0x1A));
        v7 = *v4;
        v4 += 2;
        v8 = v1 + v6;
        v9 = ((((v7 - 65) < 0x1A) << 16) | (v7 << 11)) ^ (v8 << 16);
        v1 = (v9 ^ v8) + ((v9 ^ v8) >> 11);
      }
    }

    if (v3)
    {
      v10 = *(v2 + 2 * v3 - 2);
      v11 = v10 | (32 * ((v10 - 65) < 0x1A));
LABEL_12:
      v1 = ((v1 + v11) ^ ((v1 + v11) << 11)) + (((v1 + v11) ^ ((v1 + v11) << 11)) >> 17);
    }
  }

  v16 = (v1 ^ (8 * v1)) + ((v1 ^ (8 * v1)) >> 5);
  v17 = (v16 ^ (4 * v16)) + ((v16 ^ (4 * v16)) >> 15);
  v18 = (v17 ^ (v17 << 10)) & 0xFFFFFF;
  if (v18)
  {
    return v18;
  }

  else
  {
    return 0x800000;
  }
}

BOOL WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((*(a1 + 16) & 4) != 0)
  {
    if ((v3 & 4) != 0)
    {
      if (!v2)
      {
        return 1;
      }

      if (*(MEMORY[0x1E696EBB8] + *v4) != *(MEMORY[0x1E696EBB8] + *v5))
      {
        return 0;
      }

      v16 = 1;
      do
      {
        v11 = v16;
        if (v2 == v16)
        {
          break;
        }

        v17 = *(MEMORY[0x1E696EBB8] + v4[v16]);
        v18 = *(MEMORY[0x1E696EBB8] + v5[v16++]);
      }

      while (v17 == v18);
    }

    else
    {
      if (!v2)
      {
        return 1;
      }

      if ((*v5 | (32 * (*v5 - 65 < 0x1A))) != *(MEMORY[0x1E696EBB8] + *v4))
      {
        return 0;
      }

      v10 = 1;
      do
      {
        v11 = v10;
        if (v2 == v10)
        {
          break;
        }

        v12 = *(MEMORY[0x1E696EBB8] + v4[v10]);
        v13 = *&v5[2 * v10] | (32 * (*&v5[2 * v10] - 65 < 0x1A));
        ++v10;
      }

      while (v13 == v12);
    }

    return v11 >= v2;
  }

  if ((v3 & 4) != 0)
  {
    if (!v2)
    {
      return 1;
    }

    if ((*v4 | (32 * (*v4 - 65 < 0x1A))) != *(MEMORY[0x1E696EBB8] + *v5))
    {
      return 0;
    }

    v14 = 1;
    do
    {
      v11 = v14;
      if (v2 == v14)
      {
        break;
      }

      v15 = *&v4[2 * v14] | (32 * (*&v4[2 * v14] - 65 < 0x1A));
      ++v14;
    }

    while (v15 == *(MEMORY[0x1E696EBB8] + v5[v11]));
    return v11 >= v2;
  }

  if (!v2)
  {
    return 1;
  }

  if ((*v4 | (32 * (*v4 - 65 < 0x1A))) != (*v5 | (32 * (*v5 - 65 < 0x1A))))
  {
    return 0;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (v2 == v6)
    {
      break;
    }

    v8 = *&v4[2 * v6] | (32 * (*&v4[2 * v6] - 65 < 0x1A));
    ++v6;
  }

  while (v8 == (*&v5[2 * v7] | (32 * (*&v5[2 * v7] - 65 < 0x1A))));
  return v7 >= v2;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ABDB30);
  }

  v6 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a3;
  v9 = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>::hash<WTF::String>(*a3);
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v9 & v7;
    v14 = (v6 + 8 * (v9 & v7));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v6 + 8 * v13);
      goto LABEL_8;
    }

    if (!v15)
    {
      break;
    }

    result = WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(v15, v8);
    if (result)
    {
      v17 = 0;
      v18 = v6 + 8 * *(v6 - 4);
      goto LABEL_29;
    }

LABEL_8:
    v9 = i + v13;
  }

  if (v11)
  {
    *v11 = 0;
    --*(*a2 - 16);
    v8 = *a3;
    v14 = v11;
  }

  *a3 = 0;
  result = *v14;
  *v14 = v8;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v23 <= 2 * v22)
    {
LABEL_26:
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v14);
      v14 = result;
      v19 = *a2;
      if (*a2)
      {
        goto LABEL_27;
      }

LABEL_23:
      v23 = 0;
    }
  }

  else
  {
    v21 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (3 * v23 <= 4 * v22)
    {
      if (v23)
      {
        goto LABEL_26;
      }

      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v14);
      v14 = result;
      v19 = *a2;
      if (!*a2)
      {
        goto LABEL_23;
      }

LABEL_27:
      v23 = *(v19 - 4);
    }
  }

  v18 = v19 + 8 * v23;
  v17 = 1;
LABEL_29:
  *a1 = v14;
  *(a1 + 8) = v18;
  *(a1 + 16) = v17;
  return result;
}

WebCore::TextResourceDecoder **WTF::Ref<WebCore::TextResourceDecoder,WTF::RawPtrTraits<WebCore::TextResourceDecoder>,WTF::DefaultRefDerefTraits<WebCore::TextResourceDecoder>>::~Ref(WebCore::TextResourceDecoder **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebCore::TextResourceDecoder::~TextResourceDecoder(v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

_DWORD *WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_6;
          }

LABEL_10:

          goto LABEL_6;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_10;
        }
      }

LABEL_6:
      if (++v9 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  if (v4)
  {
LABEL_21:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

unint64_t WTF::Vector<WTF::RetainPtr<WebVideoFullscreenController>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 8 * v6 <= a3)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (!(v9 >> 29))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((8 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = v11;
        v14 = 8 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          *v15 = 0;
          *v13 = v16;
          v17 = *v15;
          *v15 = 0;
          if (v17)
          {
          }

          ++v13;
          v15 = (v15 + 8);
          v14 -= 8;
        }

        while (v14);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return v3;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x1C7ABDFE8);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >> 29)
  {
    goto LABEL_42;
  }

  v20 = a3 - v5;
  if (v19 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v19;
  }

  v23 = WTF::fastMalloc((8 * v21));
  v24 = 0;
  *(a1 + 8) = v21;
  *a1 = v23;
  v25 = 8 * v6;
  do
  {
    v26 = *(v5 + v24);
    *(v5 + v24) = 0;
    *(v23 + v24) = v26;
    v27 = *(v5 + v24);
    *(v5 + v24) = 0;
    if (v27)
    {
    }

    v24 += 8;
  }

  while (v25 != v24);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v22);
  }

  return *a1 + v20;
}

WTF *WTF::Vector<WebCore::DictationAlternative,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, WTF *this)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > this || *a1 + 24 * v6 <= this)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (v9 < 0xAAAAAAB)
    {
      v10 = 16;
      if (v9 > 0x10)
      {
        v10 = v9;
      }

      v11 = 24 * v10;
      v12 = WTF::fastMalloc((24 * v10));
      *(a1 + 8) = v11 / 0x18;
      *a1 = v12;
      if (v6)
      {
        v14 = 24 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          *(v12 + 16) = *(v15 + 2);
          *v12 = v16;
          v12 += 24;
          v15 = (v15 + 24);
          v14 -= 24;
        }

        while (v14);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v13);
      }

      return this;
    }

LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x1C7ABE1CCLL);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >= 0xAAAAAAB)
  {
    goto LABEL_36;
  }

  v20 = (this - v5);
  v21 = 16;
  if (v19 > 0x10)
  {
    v21 = v19;
  }

  v22 = 24 * v21;
  v23 = WTF::fastMalloc((24 * v21));
  v25 = 0;
  *(a1 + 8) = v22 / 0x18;
  *a1 = v23;
  do
  {
    v26 = v23 + v25;
    v27 = *(v5 + v25);
    *(v26 + 16) = *(v5 + v25 + 16);
    *v26 = v27;
    v25 += 24;
  }

  while (24 * v6 != v25);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v24);
  }

  return &v20[*a1];
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebInstallMemoryPressureHandler::$_0 &&>>(WTF::MemoryPressureHandler *a1)
{
  v1 = WTF::MemoryPressureHandler::singleton(a1);
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F472C400;
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return MEMORY[0x1EEDCB0D8](v1);
}

void WebAlternativeTextClient::~WebAlternativeTextClient(WebAlternativeTextClient *this, void *a2)
{
  if (*(this + 2))
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

void *WebAlternativeTextClient::dictationAlternatives@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *(a1 + 16);
  if (result)
  {
    return [result _dictationAlternatives:a2];
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1C7ABED74(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a12)
  {
    if (a12[2] == 1)
    {
      (*(*a12 + 8))(a12);
    }

    else
    {
      --a12[2];
    }
  }

  if (a11)
  {
    if (a11[2] == 1)
    {
      (*(*a11 + 8))(a11);
      WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v32);
      WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a31, v33);
      _Unwind_Resume(a1);
    }

    --a11[2];
    WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
    WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a31, v34);
    _Unwind_Resume(a1);
  }

  WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a31, v35);
  _Unwind_Resume(a1);
}

void sub_1C7ABF04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  if (a11)
  {
    if (a11[2] == 1)
    {
      (*(*a11 + 8))(a11);
      _Unwind_Resume(exception_object);
    }

    --a11[2];
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C7ABF2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  objc_begin_catch(exception_object);

  objc_end_catch();
  return 0;
}

void sub_1C7ABF4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ABF6A0(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1C7ABF8EC(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C7ABF9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (v6[2] == 1)
        {
          (*(*v6 + 8))(v6);
        }

        else
        {
          --v6[2];
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
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

  return a1;
}

void sub_1C7AC00E0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref(a9 + 1, a2);
  }

  WebCore::ResourceRequest::~ResourceRequest(&a14, a2);
  _Unwind_Resume(a1);
}

float WebChromeClient::pageRect(id *this)
{
  [objc_loadWeak(this + 2) frame];
  v6.origin.x = v1;
  v6.origin.y = v2;
  v6.size.width = v3;
  v6.size.height = v4;
  WebCore::FloatRect::FloatRect(&v7, &v6);
  return v7;
}

uint64_t WebChromeClient::focus(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewFocus:Weak];
}

uint64_t WebChromeClient::unfocus(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewUnfocus:Weak];
}

id WebChromeClient::focusedElementChanged(id this, WebCore::Element *a2)
{
  if (a2)
  {
    if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      v2 = this;
      this = WebCore::HTMLInputElement::isText(a2);
      if (this)
      {
        Weak = objc_loadWeak((v2 + 16));
        v5 = kit(a2);
        v6 = *(*(*(a2 + 6) + 8) + 552);
        if (v6 && (v7 = *(v6 + 8)) != 0 && (v8 = *(*(v7 + 208) + 16), ((*(*v8 + 1032))(v8) & 1) == 0))
        {
          v9 = v8[3];
        }

        else
        {
          v9 = 0;
        }

        return CallFormDelegate(Weak, sel_didFocusTextField_inFrame_, v5, v9);
      }
    }
  }

  return this;
}

id WebChromeClient::createWindow@<X0>(uint64_t a1@<X0>, WebCore::LocalFrame *a2@<X1>, uint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  [objc_loadWeak((a1 + 16)) UIDelegate];
  v10 = *(a2 + 28);
  if (v10)
  {
    *(v10 + 28) += 2;
    v11 = *(v10 + 2088);
    if (v11)
    {
      v12 = *(*(v11 + 1) + 8);
      if (!v12)
      {
        goto LABEL_100;
      }

      *(v12 + 28) += 2;
      if (WebCore::DocumentFullscreen::fullscreenElement(v11))
      {
        WebCore::DocumentFullscreen::fullyExitFullscreen(v11);
      }

      v13 = *(*(v11 + 1) + 8);
      if (!v13)
      {
LABEL_100:
        __break(0xC471u);
        JUMPOUT(0x1C7AC0B3CLL);
      }

      if (*(v13 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v13);
        v14 = *(v10 + 28) - 2;
        if (*(v10 + 28) != 2)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }

      *(v13 + 7) -= 2;
    }

    v14 = *(v10 + 28) - 2;
    if (*(v10 + 28) != 2)
    {
LABEL_10:
      *(v10 + 28) = v14;
      goto LABEL_11;
    }

LABEL_27:
    WebCore::Node::removedLastRef(v10);
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_12;
    }

LABEL_28:
    if (a4[53] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      Weak = objc_loadWeak((a1 + 16));
      v19 = sel_webView_createWebViewModalDialogWithRequest_;
    }

    else
    {
      Weak = objc_loadWeak((a1 + 16));
      v19 = sel_webView_createWebViewWithRequest_;
    }

    result = CallUIDelegate(Weak, v19, 0);
    goto LABEL_73;
  }

LABEL_11:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = MEMORY[0x1E696AD98];
  if ((*a4 & 1) == 0 && (a4[8] & 1) == 0 && (a4[16] & 1) == 0 && (a4[24] & 1) == 0 && (a4[32] & 1) == 0 && (a4[37] & 1) == 0 && (a4[39] & 1) == 0 && (a4[41] & 1) == 0 && (a4[43] & 1) == 0 && (a4[45] & 1) == 0 && (a4[47] & 1) == 0 && a4[49] != 1)
  {
    goto LABEL_99;
  }

  if (a4[37] == 1)
  {
    v17 = a4[36];
  }

  else if ((a4[45] == 1 && (a4[44] & 1) != 0 || a4[43] == 1 && a4[42] == 1) && a4[39] == 1 && a4[38] == 1 && (a4[49] != 1 || a4[48] == 1) && a4[47] == 1 && a4[46] == 1 && a4[41] == 1)
  {
    v17 = a4[40] ^ 1;
  }

  else
  {
    v17 = 1;
  }

  while (1)
  {
    v21 = [(objc_object *)v16 numberWithBool:v17 & 1];
    v16 = -[objc_object initWithObjectsAndKeys:](v15, "initWithObjectsAndKeys:", v21, @"wantsPopup", [MEMORY[0x1E696AD98] numberWithBool:*a4], @"hasAdditionalFeatures", 0);
    v15 = v16;
    if (a4[8] == 1)
    {
      LODWORD(v22) = *(a4 + 1);
      v16 = -[objc_object setObject:forKey:](v16, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v22], @"x");
    }

    if (a4[16] == 1)
    {
      LODWORD(v22) = *(a4 + 3);
      v16 = -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v22], @"y");
    }

    if (a4[24] == 1)
    {
      LODWORD(v22) = *(a4 + 5);
      v16 = -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v22], @"width");
    }

    if (a4[32] == 1)
    {
      LODWORD(v22) = *(a4 + 7);
      v16 = -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v22], @"height");
    }

    if (a4[37] != 1)
    {
      break;
    }

    if (a4[53])
    {
      -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[52]], @"popup");
      break;
    }

    __break(1u);
LABEL_99:
    v17 = 0;
  }

  if (a4[39] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[38]], @"menuBarVisible");
  }

  if (a4[41] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[40]], @"statusBarVisible");
  }

  if (a4[43] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[42]], @"toolBarVisible");
  }

  if (a4[47] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[46]], @"scrollbarsVisible");
  }

  if (a4[49] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[48]], @"resizable");
  }

  if (a4[51] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[50]], @"fullscreen");
  }

  if (a4[53] == 1)
  {
    -[objc_object setObject:forKey:](v15, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:a4[52]], @"dialog");
  }

  v23 = objc_loadWeak((a1 + 16));
  result = CallUIDelegate(v23, sel_webView_createWebViewWithRequest_windowFeatures_, 0, v15);
  if (v15)
  {
    v24 = result;

    result = v24;
  }

LABEL_73:
  if (result && (result = [result page], (v25 = v38) != 0))
  {
    ++v38[2];
    *a5 = v25;
    if ((a4[55] != 1 || (a4[54] & 1) == 0) && (a4[57] != 1 || (a4[56] & 1) == 0))
    {
      v26 = objc_loadWeak((a1 + 16));
      if (v26)
      {
        [v26 page];
        v26 = v36;
      }

      WebCore::Page::protectedStorageNamespaceProvider(&v38, v26);
      v27 = v38;
      v28 = objc_loadWeak((a1 + 16));
      if (v28)
      {
        [v28 page];
        v29 = v35;
      }

      else
      {
        v29 = 0;
      }

      (*(*v27 + 24))(v27, v29, v25);
      v30 = v38;
      v38 = 0;
      if (v30)
      {
        if (v30[2] == 1)
        {
          (*(*v30 + 8))(v30);
        }

        else
        {
          --v30[2];
        }
      }

      WebCore::Frame::setOpenerForWebKitLegacy();
      WebCore::Page::applyWindowFeatures();
    }

    v31 = WebCore::LocalFrame::effectiveSandboxFlags(a2);
    (*(**(v25 + 176) + 128))(*(v25 + 176), (v31 & ((v31 << 6) >> 15)), 0);
    WebCore::Chrome::show(*(v25 + 56));
    v33 = *a3;
    if (*a3)
    {
      if ((*(v33 + 16) & 0x10) != 0)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      else
      {
        WTF::AtomStringImpl::addSlowCase(&v38, v33, v32);
        v33 = v38;
      }
    }

    v37 = v33;
    WebCore::FrameTree::setSpecifiedName();
    result = v37;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v37, v34);
      }
    }
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void sub_1C7AC0B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16)
{
  *v16 = 0;
  WTF::RefCounted<WebCore::Page>::deref(v17);
  _Unwind_Resume(a1);
}

void sub_1C7AC0C60(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::show(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewShow:Weak];
}

id WebChromeClient::runModal(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return CallUIDelegate(Weak, sel_webViewRunModal_);
}

uint64_t WebChromeClient::setToolbarsVisible(id *this, uint64_t a2)
{
  v4 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v4 webView:Weak setToolbarsVisible:a2];
}

uint64_t WebChromeClient::toolbarsVisible(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return CallUIDelegateReturningBoolean(0, Weak, sel_webViewAreToolbarsVisible_);
}

uint64_t WebChromeClient::setStatusbarVisible(id *this, uint64_t a2)
{
  v4 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v4 webView:Weak setStatusBarVisible:a2];
}

uint64_t WebChromeClient::statusbarVisible(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return CallUIDelegateReturningBoolean(0, Weak, sel_webViewIsStatusBarVisible_);
}

uint64_t WebChromeClient::setScrollbarsVisible(id *this, uint64_t a2)
{
  v3 = [objc_msgSend(objc_loadWeak(this + 2) "mainFrame")];

  return [v3 setAllowsScrolling:a2];
}

uint64_t WebChromeClient::scrollbarsVisible(id *this)
{
  v1 = [objc_msgSend(objc_loadWeak(this + 2) "mainFrame")];

  return [v1 allowsScrolling];
}

uint64_t WebChromeClient::setResizable(id *this, uint64_t a2)
{
  v4 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v4 webView:Weak setResizable:a2];
}

uint64_t WebChromeClient::addMessageToConsole(uint64_t a1, int a2, int a3, atomic_uint **a4, uint64_t a5, uint64_t a6, atomic_uint **a7)
{
  v30[6] = *MEMORY[0x1E69E9840];
  result = [objc_loadWeak((a1 + 16)) _allowsMessaging];
  if (result)
  {
    result = [objc_loadWeak((a1 + 16)) _UIKitDelegate];
    if (result)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        switch(a2)
        {
          case 0:
            v15 = WebConsoleMessageXMLMessageSource;
            break;
          case 1:
            goto LABEL_8;
          case 2:
            v15 = WebConsoleMessageNetworkMessageSource;
            break;
          case 3:
            v15 = WebConsoleMessageConsoleAPIMessageSource;
            break;
          case 4:
            v15 = WebConsoleMessageStorageMessageSource;
            break;
          case 5:
            v15 = WebConsoleMessageRenderingMessageSource;
            break;
          case 6:
            v15 = WebConsoleMessageCSSMessageSource;
            break;
          case 7:
            v15 = @"AccessibilityMessageSource";
            break;
          case 8:
            v15 = WebConsoleMessageSecurityMessageSource;
            break;
          case 9:
            v15 = WebConsoleMessageContentBlockerMessageSource;
            break;
          case 10:
            v15 = @"MediaMessageSource";
            break;
          case 11:
            v15 = @"MediaSourceMessageSource";
            break;
          case 12:
            v15 = @"WebRTCMessageSource";
            break;
          case 13:
            v15 = @"ITPDebugMessageSource";
            break;
          case 14:
            v15 = @"PrivateClickMeasurementMessageSource";
            break;
          case 15:
            v15 = @"PaymentRequestMessageSource";
            break;
          case 16:
            v15 = WebConsoleMessageOtherMessageSource;
            break;
          default:
            v15 = &stru_1F472E7E8;
            break;
        }
      }

      else
      {
        if (a2 != 1)
        {
          return result;
        }

        result = objc_opt_respondsToSelector();
        if ((result & 1) == 0)
        {
          return result;
        }

LABEL_8:
        v15 = WebConsoleMessageJSMessageSource;
      }

      v29[0] = @"message";
      v16 = *a4;
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v28, v16);
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v17);
        }
      }

      else
      {
        v28 = &stru_1F472E7E8;
        v25 = &stru_1F472E7E8;
      }

      v30[0] = v28;
      v29[1] = @"lineNumber";
      v30[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
      v29[2] = @"columnNumber";
      v30[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a6];
      v29[3] = @"sourceURL";
      v18 = *a7;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v27, v18);
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v19);
        }
      }

      else
      {
        v27 = &stru_1F472E7E8;
        v26 = &stru_1F472E7E8;
      }

      v30[3] = v27;
      v30[4] = v15;
      v29[4] = @"MessageSource";
      v29[5] = @"MessageLevel";
      v20 = &stru_1F472E7E8;
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            v20 = WebConsoleMessageWarningMessageLevel;
          }
        }

        else
        {
          v20 = WebConsoleMessageLogMessageLevel;
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            v20 = WebConsoleMessageErrorMessageLevel;
            break;
          case 4:
            v20 = WebConsoleMessageInfoMessageLevel;
            break;
          case 3:
            v20 = WebConsoleMessageDebugMessageLevel;
            break;
        }
      }

      v30[5] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];
      v22 = v27;
      v27 = 0;
      if (v22)
      {
      }

      v23 = v28;
      v28 = 0;
      if (v23)
      {
      }

      v24 = [objc_msgSend(objc_loadWeak((a1 + 16)) "_UIKitDelegateForwarder")];
      return [v24 webView:objc_loadWeak((a1 + 16)) addMessageToConsole:v21 withSource:v15];
    }
  }

  return result;
}

void sub_1C7AC12FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::runBeforeUnloadConfirmPanel(uint64_t a1, atomic_uint **a2, uint64_t a3)
{
  Weak = objc_loadWeak((a1 + 16));
  v6 = *a2;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v15, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v15 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v8 = v15;
  v9 = *(*(a3 + 208) + 16);
  if ((*(*v9 + 1032))(v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9[3];
  }

  result = CallUIDelegateReturningBoolean(1, Weak, sel_webView_runBeforeUnloadConfirmPanelWithMessage_initiatedByFrame_, v8, v10);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    v13 = result;

    return v13;
  }

  return result;
}

void sub_1C7AC14B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::closeWindow(id *this)
{
  [objc_loadWeak(this + 2) setGroupName:0];
  [objc_loadWeak(this + 2) stopLoading:0];
  Weak = objc_loadWeak(this + 2);

  return [Weak _closeWindow];
}

void WebChromeClient::runJavaScriptAlert(id *this, WebCore::LocalFrame *a2, atomic_uint **a3)
{
  [objc_loadWeak(this + 2) UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(this + 2);
    v7 = *a3;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v18, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v18 = &stru_1F472E7E8;
      v16 = &stru_1F472E7E8;
    }

    v9 = v18;
    v10 = *(*(a2 + 26) + 16);
    if ((*(*v10 + 1032))(v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = v10[3];
    }

    CallUIDelegate(Weak, sel_webView_runJavaScriptAlertPanelWithMessage_initiatedByFrame_, v9, v11);
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v12 = objc_loadWeak(this + 2);
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v18, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v18 = &stru_1F472E7E8;
      v17 = &stru_1F472E7E8;
    }

    CallUIDelegate(v12, sel_webView_runJavaScriptAlertPanelWithMessage_, v18);
  }

  v15 = v18;
  v18 = 0;
  if (v15)
  {
  }
}

void sub_1C7AC16FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::runJavaScriptConfirm(id *this, WebCore::LocalFrame *a2, atomic_uint **a3)
{
  [objc_loadWeak(this + 2) UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(this + 2);
    v7 = *a3;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v20, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v20 = &stru_1F472E7E8;
      v18 = &stru_1F472E7E8;
    }

    v9 = v20;
    v10 = *(*(a2 + 26) + 16);
    if ((*(*v10 + 1032))(v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = v10[3];
    }

    result = CallUIDelegateReturningBoolean(0, Weak, sel_webView_runJavaScriptConfirmPanelWithMessage_initiatedByFrame_, v9, v11);
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }

    v12 = objc_loadWeak(this + 2);
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v20, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v20 = &stru_1F472E7E8;
      v19 = &stru_1F472E7E8;
    }

    result = CallUIDelegateReturningBoolean(0, v12, sel_webView_runJavaScriptConfirmPanelWithMessage_, v20);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    v17 = result;

    return v17;
  }

  return result;
}

void sub_1C7AC1950(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebChromeClient::runJavaScriptPrompt(id *this, WebCore::LocalFrame *a2, atomic_uint **a3, atomic_uint **a4, WTF::StringImpl **a5)
{
  [objc_loadWeak(this + 2) UIDelegate];
  v10 = *a4;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v46, v10);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  else
  {
    v46 = &stru_1F472E7E8;
    v40 = &stru_1F472E7E8;
  }

  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(this + 2);
    v13 = *a3;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v44, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v44 = &stru_1F472E7E8;
      v41 = &stru_1F472E7E8;
    }

    v15 = v44;
    v16 = v46;
    v17 = *(*(a2 + 26) + 16);
    if ((*(*v17 + 1032))(v17))
    {
      v18 = 0;
    }

    else
    {
      v18 = v17[3];
    }

    v32 = CallUIDelegate(Weak, sel_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame_, v15, v16, v18);
    MEMORY[0x1CCA63A40](&v45, v32);
  }

  else if (objc_opt_respondsToSelector())
  {
    v19 = objc_loadWeak(this + 2);
    v20 = *a3;
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v44, v20);
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v21);
      }
    }

    else
    {
      v44 = &stru_1F472E7E8;
      v42 = &stru_1F472E7E8;
    }

    v22 = CallUIDelegate(v19, sel_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_, v44, v46);
    MEMORY[0x1CCA63A40](&v45, v22);
  }

  else
  {
    v24 = +[WebDefaultUIDelegate sharedUIDelegate];
    v25 = objc_loadWeak(this + 2);
    v26 = *a3;
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v44, v26);
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }
    }

    else
    {
      v44 = &stru_1F472E7E8;
      v43 = &stru_1F472E7E8;
    }

    v28 = v44;
    v29 = v46;
    v30 = *(*(a2 + 26) + 16);
    if ((*(*v30 + 1032))(v30))
    {
      v31 = 0;
    }

    else
    {
      v31 = v30[3];
    }

    MEMORY[0x1CCA63A40](&v45, [v24 webView:v25 runJavaScriptTextInputPanelWithPrompt:v28 defaultText:v29 initiatedByFrame:v31]);
  }

  v33 = v45;
  v45 = 0;
  v34 = *a5;
  *a5 = v33;
  if (v34)
  {
    if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v23);
    }

    v35 = v45;
    v45 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v23);
    }
  }

  v36 = v44;
  v44 = 0;
  if (v36)
  {
  }

  v37 = *a5;
  v38 = v46;
  v46 = 0;
  if (v38)
  {
  }

  return v37 != 0;
}

void sub_1C7AC1D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id WebChromeClient::scrollContainingScrollViewsToRevealRect(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_loadWeak((a1 + 16)) "mainFrame")];
  WebCore::IntRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = objc_loadWeak((a1 + 16));
  if (result)
  {
    v12 = result;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 documentView];
        [v13 convertRect:v2 fromView:{v4, v6, v8, v10}];
        [v13 scrollRectToVisible:?];
      }

      result = [v12 superview];
      v12 = result;
    }

    while (result);
  }

  return result;
}

uint64_t WebChromeClient::shouldUnavailablePluginMessageBeButton(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  [objc_loadWeak((a1 + 16)) UIDelegate];
  return objc_opt_respondsToSelector() & 1;
}

id WebChromeClient::unavailablePluginButtonClicked(uint64_t a1, WebCore::Node *a2)
{
  Weak = objc_loadWeak((a1 + 16));
  v4 = kit(a2);

  return CallUIDelegate(Weak, sel_webView_didPressMissingPluginButton_, v4);
}

void WebChromeClient::mouseDidMoveOverElement(uint64_t a1, uint64_t a2, unsigned __int8 a3, atomic_uint **a4)
{
  v12 = [[WebElementDictionary alloc] initWithHitTestResult:a2];
  [objc_loadWeak((a1 + 16)) _mouseDidMoveOverElement:v12 modifierFlags:a3];
  v7 = [objc_msgSend(objc_msgSend(objc_loadWeak((a1 + 16)) "_selectedOrMainFrame")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *a4;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v13, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v13 = &stru_1F472E7E8;
      v11 = &stru_1F472E7E8;
    }

    [v7 _setToolTip:{v13, v12}];
    v10 = v13;
    v13 = 0;
    if (v10)
    {
    }
  }

  if (v12)
  {
  }
}

void sub_1C7AC20D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  v11 = v10;
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebChromeClient::print(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 208) + 16);
  if ((*(*v3 + 1032))(v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[3];
  }

  [objc_loadWeak((a1 + 16)) UIDelegate];
  v5 = objc_opt_respondsToSelector();
  Weak = objc_loadWeak((a1 + 16));
  if (v5)
  {
    v7 = sel_webView_printFrame_;
    v8 = v4;
  }

  else
  {
    v10 = Weak;
    v8 = [(objc_object *)v4 frameView];
    Weak = v10;
    v7 = sel_webView_printFrameView_;
  }

  return CallUIDelegate(Weak, v7, v8);
}

void WebChromeClient::exceededDatabaseQuota(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v6 = [[WebSecurityOrigin alloc] _initWithWebCoreSecurityOrigin:WebCore::SecurityContext::securityOrigin((*(a2 + 224) + 208))];
  Weak = objc_loadWeak((a1 + 16));
  v8 = *(*(a2 + 208) + 16);
  if ((*(*v8 + 1032))(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[3];
  }

  v10 = *a3;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v14, v10);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  else
  {
    v14 = &stru_1F472E7E8;
    v13 = &stru_1F472E7E8;
  }

  CallUIDelegate(Weak, sel_webView_frame_exceededDatabaseQuotaForSecurityOrigin_database_, v9, v6, v14);
  v12 = v14;
  v14 = 0;
  if (v12)
  {
  }

  if (v6)
  {
  }
}

void sub_1C7AC2358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v19 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v19);
  objc_end_catch();
}

void WebChromeClient::runOpenPanel(id *this, WebCore::LocalFrame *a2, WebCore::FileChooser *a3)
{
  v4 = *(a3 + 17);
  v7 = [[WebOpenPanelResultListener alloc] initWithChooser:a3];
  [objc_loadWeak(this + 2) UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(this + 2);
    CallUIDelegate(Weak, sel_webView_runOpenPanelForFileButtonWithResultListener_allowMultipleFiles_, v7, v4);
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeak(this + 2);
    CallUIDelegate(v6, sel_webView_runOpenPanelForFileButtonWithResultListener_, v7);
  }

  else
  {
    [(WebOpenPanelResultListener *)v7 cancel];
  }

  if (v7)
  {
  }
}

void sub_1C7AC250C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v16);

  objc_end_catch();
}

WebCore::Icon *WebChromeClient::loadIconForFiles(uint64_t a1)
{
  (*(*a1 + 1664))(&v4);
  WebCore::FileIconLoader::iconLoaded();
  result = v4;
  v4 = 0;
  if (result)
  {
    if (*result == 1)
    {
      WebCore::Icon::~Icon(result);
      return WTF::fastFree(v2, v3);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_1C7AC2614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Icon *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::Icon>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::makeFirstResponder(id *this, WAKResponder *a2)
{
  [objc_loadWeak(this + 2) _pushPerformingProgrammaticFocus];
  v4 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  [v4 webView:objc_loadWeak(this + 2) makeFirstResponder:a2];
  return [objc_loadWeak(this + 2) _popPerformingProgrammaticFocus];
}

uint64_t WebChromeClient::enterVideoFullscreenForVideoElement(WebChromeClient *this, WebCore::HTMLVideoElement *a2, uint64_t a3)
{
  if (*(this + 8) == 1)
  {
    return WebCore::HTMLMediaElement::didBecomeFullscreenElement(a2);
  }

  v4 = a2;
  return [objc_loadWeak(this + 2) _enterVideoFullscreenForVideoElement:&v4 mode:a3];
}

uint64_t WebChromeClient::exitVideoFullscreenForVideoElement(uint64_t a1, WebCore::HTMLMediaElement *this, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    WebCore::HTMLMediaElement::didStopBeingFullscreenElement(this);
  }

  else
  {
    [objc_loadWeak((a1 + 16)) _exitVideoFullscreen];
  }

  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4, 1);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebChromeClient::exitVideoFullscreenToModeWithoutAnimation(id *this, WebCore::HTMLVideoElement *a2)
{
  if (*(this + 8) == 1)
  {
    return WebCore::HTMLMediaElement::didStopBeingFullscreenElement(a2);
  }

  else
  {
    return [objc_loadWeak(this + 2) _exitVideoFullscreen];
  }
}

uint64_t WebChromeClient::supportsFullScreenForElement(id *this, const WebCore::Element *a2, char a3)
{
  [objc_loadWeak(this + 2) UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  Weak = objc_loadWeak(this + 2);
  v7 = kit(a2);

  return CallUIDelegateReturningBoolean(0, Weak, sel_webView_supportsFullScreenForElement_withKeyboard_, v7, a3);
}

void WebChromeClient::enterFullScreenForElement(uint64_t a1, WebCore::Node *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  [objc_loadWeak((a1 + 16)) UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [WebKitFullScreenListener alloc];
    v10 = *a5;
    *a5 = 0;
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F472CC90;
    v11[1] = v10;
    v16 = v11;
    v12 = [(WebKitFullScreenListener *)v9 initWithElement:a2 initialCompletionHandler:a4 finalCompletionHandler:&v16];
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    Weak = objc_loadWeak((a1 + 16));
    v15 = kit(a2);
    CallUIDelegate(Weak, sel_webView_enterFullScreenForElement_listener_, v15, v12);
    if (v12)
    {
    }
  }
}

void sub_1C7AC2CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WebChromeClient::exitFullScreenForElement(uint64_t a1, WebCore::Node *a2, uint64_t *a3)
{
  [objc_loadWeak((a1 + 16)) UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [WebKitFullScreenListener alloc];
    v7 = *a3;
    *a3 = 0;
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F472CCB8;
    v8[1] = v7;
    v14 = 0;
    v15 = v8;
    v9 = [(WebKitFullScreenListener *)v6 initWithElement:a2 initialCompletionHandler:&v15 finalCompletionHandler:&v14];
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    Weak = objc_loadWeak((a1 + 16));
    v13 = kit(a2);
    CallUIDelegate(Weak, sel_webView_exitFullScreenForElement_listener_, v13, v9);
    if (v9)
    {
    }
  }
}

void sub_1C7AC2EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClient::createBarcodeDetector@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E69E2540])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2540], a1);
  }

  else
  {
    NonCompact = WebCore::ShapeDetection::BarcodeDetectorImpl::operatorNewSlow(0x20);
  }

  v5 = NonCompact;
  result = MEMORY[0x1CCA64FF0](NonCompact, a1);
  *a2 = v5;
  return result;
}

uint64_t WebChromeClient::createFaceDetector@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E69E2530])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2530], a1);
  }

  else
  {
    NonCompact = WebCore::ShapeDetection::FaceDetectorImpl::operatorNewSlow(0x10);
  }

  v4 = NonCompact;
  result = WebCore::ShapeDetection::FaceDetectorImpl::FaceDetectorImpl();
  *a2 = v4;
  return result;
}

uint64_t WebChromeClient::createTextDetector@<X0>(void *a1@<X1>, WebCore::ShapeDetection::TextDetectorImpl **a2@<X8>)
{
  if (*MEMORY[0x1E69E2538])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2538], a1);
  }

  else
  {
    NonCompact = WebCore::ShapeDetection::TextDetectorImpl::operatorNewSlow(0x10);
  }

  v5 = NonCompact;
  result = WebCore::ShapeDetection::TextDetectorImpl::TextDetectorImpl(NonCompact);
  *a2 = v5;
  return result;
}

uint64_t WebChromeClient::registerBlobPathForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebChromeClient::requestCookieConsent(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2, 0);
  v3 = *(*v2 + 8);

  return v3(v2);
}

WTF *WebCore::ChromeClient::showContactPicker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LOBYTE(v9) = 0;
  v12 = 0;
  v3 = *a3;
  *a3 = 0;
  (*(*v3 + 16))(v3, &v9);
  result = (*(*v3 + 8))(v3);
  if (v12 == 1)
  {
    if (v11)
    {
      v6 = v9;
      v7 = 48 * v11;
      do
      {
        WebCore::ContactInfo::~ContactInfo(v6, v5);
        v6 = (v8 + 48);
        v7 -= 48;
      }

      while (v7);
    }

    result = v9;
    if (v9)
    {
      v9 = 0;
      v10 = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_1C7AC3494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  std::optional<WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(va, v4);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WebCore::ChromeClient::showDigitalCredentialsPicker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7[0] = 6;
  v9 = 1;
  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4, v7);
  result = (*(*v4 + 8))(v4);
  if (v9 != 255)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void sub_1C7AC35A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(va, v4);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ChromeClient::dismissDigitalCredentialsPicker(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2, 0);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WebCore::ChromeClient::resolveAccessibilityHitTestForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  v5 = *a4;
  *a4 = 0;
  v9 = v4;
  (*(*v5 + 16))(v5, &v9);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  return (*(*v5 + 8))(v5);
}

void sub_1C7AC3858(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

__n128 WebCore::ChromeClient::applyLinkDecorationFilteringWithResult@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = 0;
  return result;
}

__n128 WebCore::ChromeClient::allowedQueryParametersForAdvancedPrivacyProtections@<Q0>(const URL *a1@<X1>, uint64_t a2@<X8>)
{
  m_ptr = a1->m_string.m_impl.m_ptr;
  if (a1->m_string.m_impl.m_ptr)
  {
    atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  }

  *a2 = m_ptr;
  *(a2 + 8) = *(a1 + 8);
  result = *&a1->m_hostEnd;
  *(a2 + 24) = result;
  return result;
}

uint64_t WebCore::ChromeClient::hasStorageAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  *a5 = 0;
  (*(*v5 + 16))(v5, 0);
  v6 = *(*v5 + 8);

  return v6(v5);
}

WTF::StringImpl *WebCore::ChromeClient::requestStorageAccess(uint64_t a1, WTF::StringImpl **a2, WTF::StringImpl **a3, uint64_t a4, char a5, uint64_t *a6)
{
  v11 = 0;
  v12 = a5;
  v6 = *a3;
  *a3 = 0;
  v7 = *a2;
  *a2 = 0;
  v13 = v6;
  v14 = v7;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a6, &v11);
  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void sub_1C7AC3A8C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::SocketStreamError::~SocketStreamError(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ChromeClient::shouldAllowDeviceOrientationAndMotionAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 1);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void WebCore::ChromeClient::requestTextRecognition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v6 = 0;
    *a4 = 0;
    (*(*v4 + 16))(v4, &v6);
    (*(*v4 + 8))(v4);
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      if (*(v5 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }
}

void sub_1C7AC3C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

uint64_t WebCore::ChromeClient::showMediaControlsContextMenu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 0);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebCore::ChromeClient::startApplePayAMSUISession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, &v6);
  return (*(*v4 + 8))(v4);
}

uint64_t WebCore::ChromeClient::getImageBufferResourceLimitsForTesting(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v4[0] = 0;
  v4[64] = 0;
  (*(*v2 + 16))(v2, v4);
  return (*(*v2 + 8))(v2);
}

uint64_t WebCore::ChromeClient::callAfterPendingSyntheticClick(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2, 0);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t std::optional<WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 12);
    if (v3)
    {
      v4 = *a1;
      v5 = 48 * v3;
      do
      {
        WebCore::ContactInfo::~ContactInfo(v4, a2);
        v4 = (v6 + 48);
        v5 -= 48;
      }

      while (v5);
    }

    v7 = *a1;
    if (*a1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v7, a2);
    }
  }

  return a1;
}

void WebCore::ContactInfo::~ContactInfo(WebCore::ContactInfo *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  v4 = *(this + 4);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *(this + 4);
  }

  if (v4)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 7);
  v8 = *(this + 2);
  if (v7)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
    v8 = *(this + 2);
  }

  if (v8)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v8, a2);
  }

  v11 = *(this + 3);
  v12 = *this;
  if (v11)
  {
    v13 = 8 * v11;
    do
    {
      v14 = *v12;
      *v12 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      v12 = (v12 + 8);
      v13 -= 8;
    }

    while (v13);
    v12 = *this;
  }

  if (v12)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v12, a2);
  }
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) != 255)
  {
    v2 = *(result + 8);
    *(result + 8) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = result;
        WTF::StringImpl::destroy(v2, a2);
        result = v3;
      }
    }
  }

  *(result + 16) = -1;
  return result;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(uint64_t *a1, __int16 *a2)
{
  v2 = *a1;
  *a1 = 0;
  v8 = *a2;
  v9 = *(a2 + 2);
  v3 = *(a2 + 4);
  *(a2 + 4) = 0u;
  *v10 = v3;
  (*(*v2 + 16))(v2, &v8);
  v5 = v10[1];
  v10[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return (*(*v2 + 8))(v2);
}

void sub_1C7AC430C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  WebCore::SocketStreamError::~SocketStreamError(&a12, a2);
  WebCore::SocketStreamError::~SocketStreamError(&a9, v14);
  (*(*v12 + 8))(v12);
  _Unwind_Resume(a1);
}

uint64_t WebCore::DocumentFullscreen::deref(uint64_t this)
{
  if (this)
  {
    if (*(this + 28) == 2)
    {
      return WebCore::Node::removedLastRef(this);
    }

    else
    {
      *(this + 28) -= 2;
    }
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

_DWORD *WTF::RefCounted<WebCore::Page>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x1CCA673C0](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WebCore::Icon *WTF::RefCounted<WebCore::Icon>::deref(WebCore::Icon *result)
{
  if (*result == 1)
  {
    WebCore::Icon::~Icon(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebChromeClient::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472CC90;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClient::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472CC90;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClient::enterFullScreenForElement(WebCore::Element &,unsigned int,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void>)> &&,WTF::CompletionHandler<BOOL ()(BOOL)> &&)::$_0,void,BOOL>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebChromeClient::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ExceptionOr<void>>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472CCB8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClient::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ExceptionOr<void>>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472CCB8;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClient::exitFullScreenForElement(WebCore::Element *,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ExceptionOr<void>>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v4 + 16))(v4);
  result = (*(*v4 + 8))(v4);
  if (v3)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v2, v6);
  }

  return result;
}

void sub_1C7AC4774(_Unwind_Exception *a1)
{
  v4 = v3;
  (*(*v2 + 8))(v2);
  if (v4)
  {
    v7 = v1 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v1, v6);
  }

  _Unwind_Resume(a1);
}

uint64_t WebChromeClientIOS::setWindowRect(id *this, const WebCore::FloatRect *a2)
{
  v3 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);
  WebCore::FloatRect::operator CGRect();

  return [v3 webView:Weak setFrame:?];
}

float WebChromeClientIOS::windowRect(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  [v2 webViewFrame:objc_loadWeak(this + 2)];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  WebCore::enclosingIntRect(v9, v7);
  WebCore::FloatRect::FloatRect();
  return v10;
}

uint64_t WebChromeClientIOS::focus(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewFocus:Weak];
}

uint64_t WebChromeClientIOS::runJavaScriptAlert(id *this, WebCore::LocalFrame *a2, atomic_uint **a3)
{
  WebThreadLockPushModal();
  v6 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);
  v8 = *a3;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v10 = v16;
  v11 = *(*(a2 + 26) + 16);
  if ((*(*v11 + 1032))(v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11[3];
  }

  [v6 webView:Weak runJavaScriptAlertPanelWithMessage:v10 initiatedByFrame:v12];
  v13 = v16;
  v16 = 0;
  if (v13)
  {
  }

  return WebThreadLockPopModal();
}

void sub_1C7AC4A18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebChromeClientIOS::runJavaScriptConfirm(id *this, WebCore::LocalFrame *a2, atomic_uint **a3)
{
  WebThreadLockPushModal();
  v6 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);
  v8 = *a3;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v16 = &stru_1F472E7E8;
  }

  v10 = v17;
  v11 = *(*(a2 + 26) + 16);
  if ((*(*v11 + 1032))(v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11[3];
  }

  v13 = [v6 webView:Weak runJavaScriptConfirmPanelWithMessage:v10 initiatedByFrame:v12];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
  }

  WebThreadLockPopModal();
  return v13;
}

void sub_1C7AC4B78(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebChromeClientIOS::runJavaScriptPrompt(id *this, WebCore::LocalFrame *a2, atomic_uint **a3, atomic_uint **a4, WTF::StringImpl **a5)
{
  WebThreadLockPushModal();
  v10 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);
  v12 = *a3;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v30, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }

    v14 = v30;
    v15 = *a4;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_22:
    v29 = &stru_1F472E7E8;
    v28 = &stru_1F472E7E8;
    goto LABEL_7;
  }

  v30 = &stru_1F472E7E8;
  v27 = &stru_1F472E7E8;
  v14 = &stru_1F472E7E8;
  v15 = *a4;
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_5:
  atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v29, v15);
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v16);
  }

LABEL_7:
  v17 = v29;
  v18 = *(*(a2 + 26) + 16);
  if ((*(*v18 + 1032))(v18))
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3];
  }

  MEMORY[0x1CCA63A40](&v31, [v10 webView:Weak runJavaScriptTextInputPanelWithPrompt:v14 defaultText:v17 initiatedByFrame:v19]);
  v21 = v31;
  v31 = 0;
  v22 = *a5;
  *a5 = v21;
  if (v22)
  {
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v20);
    }

    v23 = v31;
    v31 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v20);
    }
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
  }

  v25 = v30;
  v30 = 0;
  if (v25)
  {
  }

  WebThreadLockPopModal();
  return *a5 != 0;
}

void sub_1C7AC4DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (!a11)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WebChromeClientIOS::runOpenPanel(id *this, WebCore::LocalFrame *a2, WebCore::FileChooser *a3)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 17);
  v6 = [[WebOpenPanelResultListener alloc] initWithChooser:a3];
  v7 = *(a3 + 72);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  v20[0] = @"WebOpenPanelConfigurationAllowMultipleFilesKey";
  v21[0] = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v20[1] = @"WebOpenPanelConfigurationMimeTypesKey";
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a3 + 24, &v16);
  v21[1] = v16;
  v20[2] = @"WebOpenPanelConfigurationMediaCaptureTypeKey";
  v21[2] = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v10 = v16;
  v16 = 0;
  if (v10)
  {
  }

  IsCurrent = WebThreadIsCurrent();
  if (IsCurrent)
  {
    WTF::RunLoop::mainSingleton(IsCurrent);
    v16 = this;
    v17 = v6;
    v18 = v9;
    if (v9)
    {
      v12 = v9;
    }

    v13 = WTF::fastMalloc(0x20);
    *v13 = &unk_1F472D4F0;
    v13[1] = this;
    v13[2] = v6;
    v13[3] = v9;
    v17 = 0;
    v18 = 0;
    v19 = v13;
    WTF::RunLoop::dispatch();
    v14 = v19;
    v19 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  else
  {
    v15 = [objc_loadWeak(this + 2) _UIKitDelegateForwarder];
    [v15 webView:objc_loadWeak(this + 2) runOpenPanelForFileButtonWithResultListener:v6 configuration:v9];
    if (v6)
    {
    }
  }
}

void sub_1C7AC5010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 12)];
  *a2 = v4;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = v4;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      WTF::makeNSArrayElement(&v11, v8, v5);
      if (v11)
      {
        [v7 addObject:?];
        v10 = v11;
        v11 = 0;
        if (v10)
        {
        }
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_1C7AC514C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    *v10 = 0;
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v10 = 0;
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  _Unwind_Resume(exception_object);
}