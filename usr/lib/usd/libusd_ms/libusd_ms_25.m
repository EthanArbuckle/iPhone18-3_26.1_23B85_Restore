unint64_t *sub_29A1245A0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_29A124714(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          sub_29A124714(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = sub_29A124860(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          sub_29A1248EC(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 4);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A124714(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v13 = a4[1];
          if (v8[1] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
        }

        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 16 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v12 >= v18 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v14 = v8;
LABEL_14:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

void *sub_29A124860(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_29A1248EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v9 = *(a2 - 8);
      if (v6[1] >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v6[1];
    if (v4 >= 2)
    {
      while (1)
      {
        v11 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v10 = (result + 16 * v5);
        v12 = *v10;
        if (*v10 >= v8)
        {
          if (v8 < v12)
          {
            break;
          }

          v13 = v10[1];
          if (v13 >= v9)
          {
            break;
          }
        }

        else
        {
          v13 = v10[1];
        }

        *v6 = v12;
        v6[1] = v13;
        v6 = (result + 16 * v5);
        if (v11 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v10 = v6;
LABEL_11:
    *v10 = v8;
    v10[1] = v9;
  }

  return result;
}

unint64_t *sub_29A124994(unint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A124A1C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A1249FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

unint64_t *sub_29A124A1C(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t *a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = a2;
  v6 = 0;
  result = a4;
  do
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(result, v5);
    v5 = (v5 + 24);
    result = v8 + 1;
    v6 -= 8;
  }

  while (v5 != a3);
  return result;
}

void sub_29A124A80(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      v4 = *(v1 - 8 + v3);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 -= 8;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

void sub_29A124AB0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43C395 & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry*> &)::isInitializing, 1u))
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
      v6 = operator new(0xD0uLL);
      pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry::Tf_TypeRegistry(v6);
      v8 = atomic_load(a1);
      if (v8)
      {
        if (v6 != v8)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "race detected setting singleton instance", v7);
        }
      }

      else if (atomic_exchange(a1, v6))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v7, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry*> &)::isInitializing);
  }

  v9 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v9;
}

void sub_29A124CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::SetInstanceConstructed(unint64_t result)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance, result))
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    v9 = v4;
    v5 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", v5, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A0EB4E8((i + 18));
      sub_29A0EB570((i + 13));
      sub_29A12975C((i + 8));
      sub_29A0EB4E8((i + 3));
      v2 = *i;
      *i = 0;
      if (v2)
      {
        operator delete[](v2);
      }

      operator delete(i);
      return;
    }

    sched_yield();
  }
}

pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry *pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry::Tf_TypeRegistry(pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::TfBigRWMutex(this);
  *(v2 + 24) = 0u;
  v3 = v2 + 24;
  *(v2 + 40) = 0u;
  *(v2 + 14) = 1065353216;
  sub_29A129D08(v2 + 64);
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4 = (this + 184);
  *(this + 200) = 0;
  sub_29A008E78(&__p, "TfType::_Root");
  *(this + 24) = sub_29A125104(this, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p.__vftable);
  }

  sub_29A008E78(&__p, "TfType::_Unknown");
  v5 = sub_29A125104(this, &__p);
  *v4 = v5;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p.__vftable);
    v5 = *v4;
  }

  __p.__vftable = v5;
  atomic_store(qword_2A20404A0, v5 + 5);
  *(v5 + 6) = 0;
  *(v5 + 120) = 0;
  sub_29A128F94((v3 + 40), qword_2A20404A0, &__p);
  atomic_store(pthread_self(), this + 2);
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance, this))
  {
    __p.__vftable = "tf/instantiateSingleton.h";
    __p.__type_name = "SetInstanceConstructed";
    v11 = 54;
    v12 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&__p, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v6);
  }

  v15 = nullsub_31;
  *(this + 200) = 1;
  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v7);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A20405C0);
  atomic_store(0, this + 2);
  return this;
}

void *sub_29A125104(uint64_t a1, __int128 *a2)
{
  v4 = operator new(0xF8uLL);
  sub_29A128F1C(v4, a2);
  v6 = a2;
  sub_29A0FBDAC(a1 + 24, a2, &unk_29B4D6118, &v6)[5] = v4;
  return v4;
}

uint64_t sub_29A125188(uint64_t a1)
{
  sub_29A0EB4E8(a1 + 80);
  sub_29A0EB570(a1 + 40);

  return sub_29A12975C(a1);
}

pxrInternal__aapl__pxrReserved__::TfType *pxrInternal__aapl__pxrReserved__::TfType::TfType(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  *this = *(v2 + 184);
  return this;
}

{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  *this = *(v2 + 184);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetRoot(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  return *(v1 + 192);
}

const void *pxrInternal__aapl__pxrReserved__::TfType::FindByName(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v3 = *(v2 + 192);

  return pxrInternal__aapl__pxrReserved__::TfType::FindDerivedByName(v3, a1);
}

const void *pxrInternal__aapl__pxrReserved__::TfType::FindDerivedByName(uint64_t *a1, uint64_t a2)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*a1 != *(v5 + 184))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v34 = *(v6 + 184);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    __p[0] = v7;
    LODWORD(__p[1]) = -1;
    sub_29A1081D8(__p);
    v8 = *a1;
    v9 = *(*a1 + 232);
    if (v9)
    {
      v10 = sub_29A0EC378(v9, a2);
      if (v10)
      {
        v2 = v10[5];
        v34 = v2;
        v11 = 1;
        goto LABEL_20;
      }

      v8 = *a1;
    }

    if (*(v8 + 152) == 1 && (v13 = sub_29A0EC378((v8 + 112), a2)) != 0 && v13[5])
    {
      v11 = 0;
      v34 = v13[5];
    }

    else
    {
      v11 = 0;
    }

LABEL_20:
    sub_29A104D64(__p);
    if ((v11 & 1) == 0)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
      if (!v14)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
      }

      if (v34 == *(v14 + 184))
      {
        v15 = atomic_load(v7 + 2);
        if (v15 && v15 != pthread_self())
        {
          while (atomic_load(v7 + 2))
          {
            sched_yield();
          }
        }

        __p[0] = v7;
        LODWORD(__p[1]) = -1;
        sub_29A1081D8(__p);
        v16 = sub_29A0EC378(v7 + 3, a2);
        if (v16)
        {
          v17 = v16[5];
        }

        else
        {
          v17 = 0;
        }

        sub_29A104D64(__p);
        if (v17)
        {
          v34 = v17;
          if ((pxrInternal__aapl__pxrReserved__::TfType::IsA(&v34, *a1) & 1) == 0)
          {
            v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
            if (!v19)
            {
              pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
            }

            v34 = *(v19 + 184);
          }
        }

        sub_29A104D64(__p);
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
      if (!v20)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
      }

      v2 = v34;
      if (v34 != *(v20 + 184))
      {
        v32 = v7;
        v33 = -1;
        sub_29A10818C(&v32);
        v22 = (*a1 + 232);
        v21 = *v22;
        if (!*v22)
        {
          v23 = operator new(0x28uLL);
          *v23 = 0u;
          v23[1] = 0u;
          *(v23 + 8) = 1065353216;
          sub_29A019AA0(v23, 0);
          sub_29A12581C(v22, v23);
          v21 = *(*a1 + 232);
        }

        if (*(a2 + 23) < 0)
        {
          sub_29A008D14(v26, *a2, *(a2 + 8));
        }

        else
        {
          *v26 = *a2;
          v27 = *(a2 + 16);
        }

        *__p = *v26;
        v24 = v27;
        v26[0] = 0;
        v26[1] = 0;
        v27 = 0;
        v28 = v2;
        v30 = v24;
        v31 = v2;
        sub_29A129DB0(v21, __p, __p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        sub_29A104D64(&v32);
      }
    }

    return v2;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  return *(v12 + 184);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetUnknownType(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  return *(v1 + 184);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::IsA(char *a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*(v4 + 184) == a2)
  {
    v10 = "tf/type.cpp";
    v11 = "IsA";
    v12 = 802;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::TfType::IsA(TfType) const";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 3, "IsA() was given an Unknown base type.  This probably means the attempt to look up the base type failed.  (Note: to explicitly check if a type is unknown, use IsUnknown() instead.)");
    return 0;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*a1 == *(v5 + 184))
  {
    return 0;
  }

  if (*a1 == a2)
  {
    return 1;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (**(v6 + 192) == a2)
  {
    return 1;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v10 = v7;
  LODWORD(v11) = -1;
  sub_29A1081D8(&v10);
  if (*(a2 + 80) == *(a2 + 88))
  {
    IsAImplNoLock = 0;
  }

  else
  {
    IsAImplNoLock = pxrInternal__aapl__pxrReserved__::TfType::_IsAImplNoLock(a1, a2);
  }

  sub_29A104D64(&v10);
  return IsAImplNoLock;
}

void sub_29A12581C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A0EB4E8(v3);

    operator delete(v4);
  }
}

const void *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(pxrInternal__aapl__pxrReserved__::TfType *this, const std::type_info *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v4 = atomic_load(v3 + 2);
  if (v4 && v4 != pthread_self())
  {
    while (atomic_load(v3 + 2))
    {
      sched_yield();
    }
  }

  v13 = v3;
  v14 = -1;
  sub_29A1081D8(&v13);
  __p[0] = this;
  v5 = sub_29A0EB63C(v3 + 13, __p);
  if (v5)
  {
    v6 = (v5[3] + 72);
    goto LABEL_7;
  }

  sub_29A008E78(__p, (*(this + 1) & 0x7FFFFFFFFFFFFFFFLL));
  v10 = sub_29A0EC378(v3 + 18, __p);
  if (v10)
  {
    v6 = (v10[5] + 72);
  }

  else
  {
    v6 = 0;
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_16:
      sub_29A127E54(&v13, v11, v12);
      sub_29A008E78(__p, (*(this + 1) & 0x7FFFFFFFFFFFFFFFLL));
      sub_29A129200((v3 + 8), this, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_7:
      v7 = *v6;
      if (*v6)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v6)
  {
    goto LABEL_16;
  }

  sub_29A104D64(&v13);
  pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(this, __p);
  v7 = pxrInternal__aapl__pxrReserved__::TfType::FindByName(__p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_8:
  sub_29A104D64(&v13);
  return v7;
}

void sub_29A1259D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_29A104D64(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName@<X0>(pxrInternal__aapl__pxrReserved__::TfType *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A0ECEEC(&v25, "Tf", "TfType::GetCanonicalTypeName");
  if ((atomic_load_explicit(&qword_2A173F178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F178))
  {
    v16 = operator new(0x28uLL);
    *v16 = 0u;
    v16[1] = 0u;
    *(v16 + 8) = 1065353216;
    qword_2A173F170 = v16;
    __cxa_guard_release(&qword_2A173F178);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v23 = v5;
  v24 = -1;
  sub_29A1081D8(&v23);
  v6 = qword_2A173F170;
  sub_29A008E78(__p, (*(this + 1) & 0x7FFFFFFFFFFFFFFFLL));
  v7 = sub_29A12A600(v6, __p);
  v10 = v7;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
LABEL_6:
      if (*(v10 + 63) < 0)
      {
        sub_29A008D14(a2, v10[5], v10[6]);
      }

      else
      {
        v11 = *(v10 + 5);
        *(a2 + 16) = v10[7];
        *a2 = v11;
      }

      goto LABEL_19;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  sub_29A127E54(&v23, v8, v9);
  v12 = qword_2A173F170;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), v17);
  sub_29A008E78(__p, (*(this + 1) & 0x7FFFFFFFFFFFFFFFLL));
  *v21 = *v17;
  v22 = v18;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v13 = sub_29A12ABB4(v12, __p, __p);
  if (*(v13 + 63) < 0)
  {
    sub_29A008D14(a2, v13[5], v13[6]);
  }

  else
  {
    v14 = *(v13 + 5);
    *(a2 + 16) = v13[7];
    *a2 = v14;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

LABEL_19:
  result = sub_29A104D64(&v23);
  if (v25)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return result;
}

void sub_29A125C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2A173F178);
  sub_29A0E9CEC(v21 - 48);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfType::GetTypeNameCopy@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 31) < 0)
  {
    return sub_29A008D14(a2, *(v2 + 8), *(v2 + 16));
  }

  v3 = *(v2 + 8);
  *(a2 + 16) = *(v2 + 24);
  *a2 = v3;
  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v1 = atomic_load((*this + 40));
  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x29EDC9500];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetAliases@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v7 = v5;
  v8 = -1;
  sub_29A1081D8(&v7);
  if (*(*a1 + 200) == 1 && sub_29A0EB63C((*a1 + 160), &v9))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_29A104D64(&v7);
}

void sub_29A125DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetBaseTypes@<X0>(pxrInternal__aapl__pxrReserved__::TfType *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v7 = v4;
  v8 = -1;
  sub_29A1081D8(&v7);
  v5 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_29A12A0FC(a2, *(v5 + 56), *(v5 + 64), (*(v5 + 64) - *(v5 + 56)) >> 3);
  return sub_29A104D64(&v7);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfType::GetNBaseTypes(pxrInternal__aapl__pxrReserved__::TfType *this, pxrInternal__aapl__pxrReserved__::TfType *a2, unint64_t a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v12 = v6;
  v13 = -1;
  sub_29A1081D8(&v12);
  v7 = *(*this + 56);
  v8 = *(*this + 64);
  v9 = (v8 - v7) >> 3;
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = (v8 - v7) >> 3;
  }

  if (v10)
  {
    memmove(a2, v7, 8 * v10);
  }

  sub_29A104D64(&v12);
  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetDirectlyDerivedTypes@<X0>(pxrInternal__aapl__pxrReserved__::TfType *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v7 = v4;
  v8 = -1;
  sub_29A1081D8(&v7);
  v5 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_29A12A0FC(a2, *(v5 + 80), *(v5 + 88), (*(v5 + 88) - *(v5 + 80)) >> 3);
  return sub_29A104D64(&v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetAllDerivedTypes(uint64_t *a1, uint64_t **a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v11 = v4;
  v12 = -1;
  sub_29A1081D8(&v11);
  v5 = *a1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_29A12A0FC(&v8, *(v5 + 80), *(v5 + 88), (*(v5 + 88) - *(v5 + 80)) >> 3);
  while (v8 != v9)
  {
    v7 = *(v9 - 1);
    v9 -= 8;
    sub_29A12A178(&v8, v9, *(v7 + 80), *(v7 + 88), (*(v7 + 88) - *(v7 + 80)) >> 3);
    sub_29A0F2BE4(a2, &v7, &v7);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return sub_29A104D64(&v11);
}

void pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(pxrInternal__aapl__pxrReserved__::TfType *a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*a1 == *(v4 + 184))
  {
    v64 = "tf/type.cpp";
    v65 = "GetAllAncestorTypes";
    v66 = 704;
    v67 = "void pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(vector<TfType> *) const";
    LOBYTE(v68) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 1, "Cannot ask for ancestor types of Unknown type");
    return;
  }

  pxrInternal__aapl__pxrReserved__::TfType::GetBaseTypes(a1, &__p);
  v5 = v60 - __p;
  v6 = (v60 - __p) >> 3;
  if (v6 <= 1)
  {
    sub_29A0A71C8(a2, a1);
    if (v5 == 8)
    {
      pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(__p, a2);
    }

    goto LABEL_76;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_29A1266C8(&v56, v6 + 2);
  v7 = v57;
  if (v57 >= v58)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    if (0x5555555555555556 * ((v58 - v56) >> 3) > v10)
    {
      v10 = 0x5555555555555556 * ((v58 - v56) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v58 - v56) >> 3) >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v68 = &v56;
    if (v11)
    {
      v12 = sub_29A012C48(&v56, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v9];
    v14 = &v12[24 * v11];
    v8 = v13 + 24;
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    v15 = &v13[-(v57 - v56)];
    memcpy(v15, v56, v57 - v56);
    v16 = v56;
    v17 = v58;
    v56 = v15;
    v57 = v8;
    v58 = v14;
    v66 = v16;
    v67 = v17;
    v64 = v16;
    v65 = v16;
    sub_29A0C2DF8(&v64);
  }

  else
  {
    v8 = v57 + 24;
    *v57 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
  }

  v57 = v8;
  sub_29A0A71C8((v8 - 24), a1);
  sub_29A126784(&v56, &__p);
  v55 = a1;
  v61 = __p;
  v62 = v60;
  while (v61 != v62)
  {
    v18 = v57;
    if (v57 >= v58)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
      v21 = v20 + 1;
      if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_29A00C9A4();
      }

      if (0x5555555555555556 * ((v58 - v56) >> 3) > v21)
      {
        v21 = 0x5555555555555556 * ((v58 - v56) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v58 - v56) >> 3) >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v21;
      }

      v68 = &v56;
      if (v22)
      {
        v23 = sub_29A012C48(&v56, v22);
      }

      else
      {
        v23 = 0;
      }

      v24 = &v23[24 * v20];
      v25 = &v23[24 * v22];
      v19 = v24 + 24;
      *v24 = 0;
      *(v24 + 1) = 0;
      *(v24 + 2) = 0;
      v26 = &v24[-(v57 - v56)];
      memcpy(v26, v56, v57 - v56);
      v27 = v56;
      v28 = v58;
      v56 = v26;
      v57 = v19;
      v58 = v25;
      v66 = v27;
      v67 = v28;
      v64 = v27;
      v65 = v27;
      sub_29A0C2DF8(&v64);
    }

    else
    {
      v19 = v57 + 24;
      *v57 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
    }

    v57 = v19;
    v29 = sub_29A1267C4(&v61);
    pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(*v29, v19 - 24);
    sub_29A1267EC(&v61);
  }

  while (2)
  {
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v30)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v63 = *(v30 + 184);
    v64 = v56;
    v65 = v57;
    if (v56 == v57)
    {
      v43 = 1;
      goto LABEL_60;
    }

    v31 = 0;
    while (1)
    {
      v32 = sub_29A1297DC(&v64);
      if (**v32 != *(*v32 + 8))
      {
        break;
      }

LABEL_56:
      sub_29A129804(&v64);
      if (v64 == v65)
      {
        v43 = v31 ^ 1;
        goto LABEL_60;
      }
    }

    v33 = ***sub_29A1297DC(&v64);
    v34 = v56;
    v35 = v57;
    v61 = v56;
    v62 = v57;
    v63 = v33;
    while (v34 != v35)
    {
      v36 = sub_29A1297DC(&v61);
      if (*(*v36 + 8) - **v36 >= 9uLL)
      {
        v37 = **sub_29A1297DC(&v61);
        v38 = sub_29A1297DC(&v61);
        v39 = (v37 + 8);
        v40 = *(*v38 + 8);
        if (v39 != v40)
        {
          while (*v39 != v63)
          {
            if (++v39 == v40)
            {
              v39 = *(*v38 + 8);
              break;
            }
          }
        }

        if (v39 != *(*sub_29A1297DC(&v61) + 8))
        {
          v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
          if (!v41)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
          }

          v63 = *(v41 + 184);
          break;
        }
      }

      sub_29A129804(&v61);
      v34 = v61;
      v35 = v62;
    }

    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v42)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    if (v63 == *(v42 + 184))
    {
      v31 = 1;
      goto LABEL_56;
    }

    v43 = 0;
LABEL_60:
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v44)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    if (v63 != *(v44 + 184))
    {
      sub_29A0A71C8(a2, &v63);
      v45 = v56;
      v46 = v57;
      v64 = v56;
      v65 = v57;
      while (v45 != v46)
      {
        v47 = sub_29A1297DC(&v64);
        if (**v47 != *(*v47 + 8))
        {
          v48 = sub_29A1297DC(&v64);
          if (***v48 == v63)
          {
            v49 = *sub_29A1297DC(&v64);
            v50 = sub_29A1297DC(&v64);
            v51 = **v50;
            v52 = *(v49 + 8);
            v53 = v52 - (v51 + 8);
            if (v52 != v51 + 8)
            {
              memmove(**v50, v51 + 8, v52 - (v51 + 8));
            }

            *(v49 + 8) = &v51[v53];
          }
        }

        sub_29A129804(&v64);
        v45 = v64;
        v46 = v65;
      }

      continue;
    }

    break;
  }

  if ((v43 & 1) == 0)
  {
    v64 = "tf/type.cpp";
    v65 = "GetAllAncestorTypes";
    v66 = 751;
    v67 = "void pxrInternal__aapl__pxrReserved__::TfType::GetAllAncestorTypes(vector<TfType> *) const";
    LOBYTE(v68) = 0;
    v54 = (*v55 + 8);
    if (*(*v55 + 31) < 0)
    {
      v54 = *v54;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 1, "Cannot resolve ancestor classes for '%s' because the inheritance hierarchy is inconsistent.  Please check that multiply-inherited types are inherited in the same order throughout the inherited hierarchy.", v54);
  }

  v64 = &v56;
  sub_29A0C25EC(&v64);
LABEL_76:
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_29A12666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  a21 = &a12;
  sub_29A0C25EC(&a21);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_29A1266C8(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
    v8 = v2[1] - *v2;
    v9 = &v4[v3 - v8];
    memcpy(v9, *v2, v8);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return sub_29A0C2DF8(v12);
  }

  return result;
}

void *sub_29A126784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A12A3F8(a1, a2);
  }

  else
  {
    sub_29A12A3A4(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29A1267C4(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E590();
  }

  return result;
}

void *sub_29A1267EC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfType>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfType>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::_IsAImplNoLock(char *a1, uint64_t a2)
{
  do
  {
    v4 = *a1;
    if (*a1 == a2)
    {
      return 1;
    }

    a1 = *(v4 + 56);
    v5 = *(v4 + 64);
  }

  while (v5 - a1 == 8);
  if (v5 == a1)
  {
    return 0;
  }

  v6 = ((v5 - a1) >> 3) - 1;
  do
  {
    v7 = v6;
    result = pxrInternal__aapl__pxrReserved__::TfType::_IsAImplNoLock(a1, a2);
    if (result)
    {
      break;
    }

    v6 = v7 - 1;
    a1 += 8;
  }

  while (v7);
  return result;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfType::Declare(__int128 *a1)
{
  sub_29A0ECEEC(&v11, "Tf", "TfType::Declare");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v3 = *pxrInternal__aapl__pxrReserved__::TfType::FindDerivedByName(*(v2 + 192), a1);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*(v4 + 184) == v3)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v9 = v5;
    v10 = -1;
    sub_29A10818C(&v9);
    v3 = sub_29A125104(v5, a1);
    if (atomic_load(v3 + 5))
    {
      v13[0] = "tf/type.cpp";
      v13[1] = "Declare";
      v13[2] = 833;
      v13[3] = "static const TfType &pxrInternal__aapl__pxrReserved__::TfType::Declare(const string &)";
      v14 = 0;
      v15 = 4;
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v13, "Failed axiom: ' %s '", v6, "!t._info->IsDefined()");
    }

    sub_29A104D64(&v9);
  }

  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return v3;
}

void sub_29A126A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfType::Declare(__int128 *a1, char **a2, uint64_t a3)
{
  sub_29A0ECEEC(&v42, "Tf", "TfType::Declare");
  *&__p = "tf/type.cpp";
  *(&__p + 1) = "Declare";
  v37 = 844;
  v38 = "static const TfType &pxrInternal__aapl__pxrReserved__::TfType::Declare(const string &, const vector<TfType> &, DefinitionCallback)";
  v39 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v41, a1, &__p);
  v5 = pxrInternal__aapl__pxrReserved__::TfType::Declare(a1);
  v7 = v5;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    while (*v8 != *v5)
    {
      v8 += 8;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 != v9)
  {
    *&__p = "tf/type.cpp";
    *(&__p + 1) = "Declare";
    v37 = 856;
    v38 = "static const TfType &pxrInternal__aapl__pxrReserved__::TfType::Declare(const string &, const vector<TfType> &, DefinitionCallback)";
    v39 = 0;
    v40 = 4;
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&__p, "TfType '%s' declares itself as a base.", v6, v10);
  }

LABEL_10:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v31 = v11;
  v32 = -1;
  sub_29A10818C(&v31);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v15 = *v7;
  if (*v7 == *(v14 + 184))
  {
    goto LABEL_26;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v15 = *v7;
  if (*v7 == **(v16 + 192))
  {
LABEL_26:
    v21 = (v15 + 8);
    if (*(v15 + 31) < 0)
    {
      v21 = *v21;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot declare the type '%s'", v12, v13, v21);
    sub_29A091654(&v33, &__p);
    goto LABEL_29;
  }

  v17 = *a2;
  v18 = a2[1];
  if (*a2 == v18)
  {
    goto LABEL_39;
  }

  v19 = *(v15 + 56);
  if (*(v15 + 64) - v19 == 8)
  {
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v20)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    if (*v19 == **(v20 + 192))
    {
      v29 = (*v7 + 8);
      if (*(*v7 + 31) < 0)
      {
        v29 = *v29;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Type '%s' has been declared to have 0 bases, and therefore inherits directly from the root type.  Cannot add bases.", v12, v13, v29);
      sub_29A091654(&v33, &__p);
      goto LABEL_29;
    }

    v17 = *a2;
    v18 = a2[1];
  }

  if (v17 == v18)
  {
LABEL_39:
    if (*(v15 + 56) == *(v15 + 64))
    {
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
      }

      sub_29A12A528(&__p, 1uLL, *(v27 + 192));
      pxrInternal__aapl__pxrReserved__::TfType::_AddBasesNoLock(v7, &__p, &v33);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfType::_AddBasesNoLock(v7, a2, &v33);
  }

  if (a3)
  {
    if (*(*v7 + 32))
    {
      if (*(a1 + 23) >= 0)
      {
        v28 = a1;
      }

      else
      {
        v28 = *a1;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("TfType '%s' has already had its definitionCallback set; ignoring 2nd declaration", v12, v13, v28);
      sub_29A091654(&v33, &__p);
LABEL_29:
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p);
      }

      v22 = 1;
      v23 = 1;
      goto LABEL_32;
    }

    *(*v7 + 32) = a3;
  }

  if (*(v11 + 200) == 1)
  {
    v22 = 1;
    v23 = 0;
    if ((*(*v7 + 242) & 1) == 0)
    {
      *(*v7 + 242) = 1;
      v22 = 0;
    }
  }

  else
  {
    v23 = 0;
    v22 = 1;
  }

LABEL_32:
  sub_29A104D64(&v31);
  if (((v22 | v23) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfTypeWasDeclaredNotice::TfTypeWasDeclaredNotice(&__p, *v7);
    pxrInternal__aapl__pxrReserved__::TfNotice::Send(&__p);
    pxrInternal__aapl__pxrReserved__::TfTypeWasDeclaredNotice::~TfTypeWasDeclaredNotice(&__p);
  }

  v24 = v33;
  for (i = v34; v24 != i; v24 += 3)
  {
    *&__p = "tf/type.cpp";
    *(&__p + 1) = "Declare";
    v37 = 923;
    v38 = "static const TfType &pxrInternal__aapl__pxrReserved__::TfType::Declare(const string &, const vector<TfType> &, DefinitionCallback)";
    v39 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, v24);
  }

  *&__p = &v33;
  sub_29A012C90(&__p);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v41);
  if (v42)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v43, v42);
  }

  return v7;
}

void sub_29A126E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_29A104D64(&a11);
  __p = &a13;
  sub_29A012C90(&__p);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a25);
  sub_29A0E9CEC(v25 - 104);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfType::_AddBasesNoLock(void *a1, char **a2, char *a3)
{
  v3 = a3;
  i = a1;
  v6 = *a1;
  v7 = *a2;
  v8 = *(*a1 + 56);
  v45 = *(*a1 + 64);
  if (v8 == v45)
  {
    v36 = *(*a1 + 56);
  }

  else
  {
    v44 = *a1;
    do
    {
      v10 = *a2;
      v9 = a2[1];
      v11 = *a2;
      if (*a2 != v9)
      {
        v11 = *a2;
        while (*v11 != *v8)
        {
          v11 += 8;
          if (v11 == v9)
          {
            goto LABEL_50;
          }
        }
      }

      if (v11 == v9)
      {
LABEL_50:
        memset(&v49, 0, sizeof(v49));
        while (v10 != v9)
        {
          size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v49.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v29 = ", ";
          }

          else
          {
            v29 = "";
          }

          std::string::append(&v49, v29);
          v30 = *(*v10 + 31);
          if (v30 >= 0)
          {
            v31 = (*v10 + 8);
          }

          else
          {
            v31 = *(*v10 + 8);
          }

          if (v30 >= 0)
          {
            v32 = *(*v10 + 31);
          }

          else
          {
            v32 = *(*v10 + 16);
          }

          std::string::append(&v49, v31, v32);
          v10 += 8;
        }

        v33 = (*i + 8);
        if (*(*i + 31) < 0)
        {
          v33 = *v33;
        }

        v34 = (*v8 + 8);
        if (*(*v8 + 31) < 0)
        {
          v34 = *v34;
        }

        v35 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v49.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("TfType '%s' was previously declared to have '%s' as a base, but a subsequent declaration does not include this as a base.  The newly given bases were: (%s).  If this is a type declared in a plugin, check that the plugin metadata is correct.", a2, a3, v33, v34, v35);
        sub_29A091654(v3, &v48);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v11 < v7)
        {
          v12 = v3;
          memset(&v49, 0, sizeof(v49));
          memset(&v48, 0, sizeof(v48));
          v13 = *(v44 + 56);
          v14 = *(v44 + 64);
          if (v13 != v14)
          {
            do
            {
              v15 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
              if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v15 = v49.__r_.__value_.__l.__size_;
              }

              if (v15)
              {
                v16 = ", ";
              }

              else
              {
                v16 = "";
              }

              std::string::append(&v49, v16);
              v17 = *(*v13 + 31);
              if (v17 >= 0)
              {
                v18 = (*v13 + 8);
              }

              else
              {
                v18 = *(*v13 + 8);
              }

              if (v17 >= 0)
              {
                v19 = *(*v13 + 31);
              }

              else
              {
                v19 = *(*v13 + 16);
              }

              std::string::append(&v49, v18, v19);
              v13 += 8;
            }

            while (v13 != v14);
            v10 = *a2;
            v9 = a2[1];
          }

          v3 = v12;
          for (i = a1; v10 != v9; v10 += 8)
          {
            v20 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = v48.__r_.__value_.__l.__size_;
            }

            if (v20)
            {
              v21 = ", ";
            }

            else
            {
              v21 = "";
            }

            std::string::append(&v48, v21);
            v22 = *(*v10 + 31);
            if (v22 >= 0)
            {
              v23 = (*v10 + 8);
            }

            else
            {
              v23 = *(*v10 + 8);
            }

            if (v22 >= 0)
            {
              v24 = *(*v10 + 31);
            }

            else
            {
              v24 = *(*v10 + 16);
            }

            std::string::append(&v48, v23, v24);
          }

          v25 = (*a1 + 8);
          if (*(*a1 + 31) < 0)
          {
            v25 = *v25;
          }

          v26 = v49.__r_.__value_.__r.__words[0];
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v49;
          }

          v27 = &v48;
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v48.__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("Specified base type order differs for %s: had (%s), now (%s).  If this is a type declared in a plugin, check that the plugin metadata is correct.", a2, a3, v25, v26, v27);
          sub_29A091654(v3, &__p);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v48.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
          }
        }

        v7 = v11;
      }

      v8 += 8;
    }

    while (v8 != v45);
    v7 = *a2;
    v6 = v44;
    v8 = *(v44 + 56);
    v36 = *(v44 + 64);
  }

  v37 = a2[1];
  if (v37 - v7 > (v36 - v8))
  {
    for (; v7 != v37; v7 += 8)
    {
      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
      if (!v38)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
      }

      v39 = *v7;
      if (*v7 == *(v38 + 184))
      {
        sub_29A008E78(&v49, "Specified base type is unknown, skipping.");
        sub_29A091654(v3, &v49);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v40 = *(v6 + 56);
        v41 = *(v6 + 64);
        if (v40 != v41)
        {
          while (*v40 != v39)
          {
            if (++v40 == v41)
            {
              goto LABEL_87;
            }
          }
        }

        if (v40 == v41)
        {
LABEL_87:
          sub_29A0A71C8(v39 + 80, i);
        }
      }
    }

    v42 = (*i + 56);
    if (v42 != a2)
    {
      sub_29A00CB24(v42, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }
}

void sub_29A127354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::_DefineCppType(pxrInternal__aapl__pxrReserved__::TfType *this, std::type_info *a2, uint64_t a3, char a4, char a5)
{
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v17 = v10;
  v18 = -1;
  sub_29A10818C(&v17);
  if (atomic_load((*this + 40)))
  {
    sub_29A104D64(&v17);
    v15[0] = "tf/type.cpp";
    v15[1] = "_DefineCppType";
    v15[2] = 957;
    v15[3] = "void pxrInternal__aapl__pxrReserved__::TfType::_DefineCppType(const std::type_info &, size_t, BOOL, BOOL) const";
    v16 = 0;
    v12 = (*this + 8);
    if (*(*this + 31) < 0)
    {
      v12 = *v12;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "TfType '%s' already has a defined C++ type; cannot redefine", v12);
  }

  else
  {
    v13 = *this;
    v15[0] = v13;
    atomic_store(a2, (v13 + 40));
    *(v13 + 48) = a3;
    *(v13 + 240) = a4;
    *(v13 + 241) = a5;
    sub_29A128F94(v10 + 64, a2, v15);
  }

  return sub_29A104D64(&v17);
}

void sub_29A1274D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::_AddCppCastFunc(pxrInternal__aapl__pxrReserved__::TfType *this, const std::type_info *a2, void *(*a3)(void *, BOOL))
{
  v9 = a3;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v7 = v5;
  v8 = -1;
  sub_29A10818C(&v7);
  sub_29A127588(*this, a2, &v9);
  return sub_29A104D64(&v7);
}

void sub_29A127570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

void sub_29A127588(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 208);
  v6 = (a1 + 208);
  if (*(a1 + 216) == v5)
  {
LABEL_5:
    v10 = *a3;
    *&v11 = a2;
    *(&v11 + 1) = v10;
    sub_29A03A998(v6, &v11);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (!sub_29A00E9CC(a2, *(v5 + v8)))
    {
      ++v9;
      v5 = *(a1 + 208);
      v8 += 16;
      if (v9 >= (*(a1 + 216) - v5) >> 4)
      {
        goto LABEL_5;
      }
    }

    *(*v6 + v8 + 8) = *a3;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::CastToAncestor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*a1 == *(v6 + 184))
  {
    return 0;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*(v7 + 184) == a2)
  {
    return 0;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v24 = v8;
  v25 = -1;
  sub_29A1081D8(&v24);
  v9 = *a1;
  if (v9 == a2)
  {
    v10 = a3;
  }

  else
  {
    v11 = MEMORY[0x29EDC9500];
    while (1)
    {
      v12 = *(v9 + 56);
      v13 = *(v9 + 64);
      if (v13 - v12 != 8)
      {
        break;
      }

      v14 = atomic_load((*v12 + 40));
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v11;
      }

      v16 = sub_29A127818(v9, v15);
      if (!v16)
      {
        goto LABEL_28;
      }

      a3 = (*v16)(a3, 1);
      v9 = **(v9 + 56);
      v10 = a3;
      if (v9 == a2)
      {
        goto LABEL_29;
      }
    }

    if (v13 == v12)
    {
LABEL_28:
      v10 = 0;
      goto LABEL_29;
    }

    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = atomic_load((*(v12 + 8 * v18) + 40));
      v20 = v19 ? v19 : v11;
      v21 = sub_29A127818(v9, v20);
      if (v21)
      {
        v22 = (*v21)(a3, 1);
        v10 = pxrInternal__aapl__pxrReserved__::TfType::CastToAncestor(*(v9 + 56) + v17, a2, v22);
        if (v10)
        {
          break;
        }
      }

      ++v18;
      v12 = *(v9 + 56);
      v17 += 8;
      if (v18 >= (*(v9 + 64) - v12) >> 3)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  sub_29A104D64(&v24);
  return v10;
}

uint64_t sub_29A127818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 4;
  v5 = *(a2 + 8);
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  for (i = v2 + 8; strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (*(*(i - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL)); i += 16)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  return i;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfType::CastFromAncestor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = &pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*a1 == *(v7 + 184))
  {
    return 0;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  if (*(v8 + 184) == a2)
  {
    return 0;
  }

  if (*a1 != a2)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v9)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v22 = v9;
    v23 = -1;
    sub_29A1081D8(&v22);
    v10 = *(*a1 + 64);
    v20 = *(*a1 + 56);
    v21 = v10;
    v11 = MEMORY[0x29EDC9500];
    while (1)
    {
      v12 = v20;
      v13 = v21;
      if (v20 == v21)
      {
        break;
      }

      v14 = sub_29A127A24(&v20);
      v6 = pxrInternal__aapl__pxrReserved__::TfType::CastFromAncestor(*v14, a2, a3);
      if (v6)
      {
        v15 = *a1;
        v16 = atomic_load((**sub_29A127A24(&v20) + 40));
        v17 = v16 ? v16 : v11;
        v18 = sub_29A127818(v15, v17);
        if (v18)
        {
          v6 = (*v18)(v6, 0);
          break;
        }
      }

      sub_29A127A4C(&v20);
    }

    sub_29A104D64(&v22);
    if (v12 == v13)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return a3;
}

void sub_29A1279FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

void *sub_29A127A24(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E5E8();
  }

  return result;
}

void *sub_29A127A4C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfType>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfType>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfType::SetFactory(uint64_t *a1, uint64_t *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = *a1;
  if (*a1 == *(v4 + 184))
  {
    goto LABEL_13;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = *a1;
  if (*a1 == **(v6 + 192))
  {
LABEL_13:
    v15 = "tf/type.cpp";
    v16 = "SetFactory";
    v17 = 1125;
    v18 = "void pxrInternal__aapl__pxrReserved__::TfType::SetFactory(std::unique_ptr<FactoryBase>) const";
    v19 = 0;
    v10 = (v5 + 8);
    if (*(v5 + 31) < 0)
    {
      v10 = *v10;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Cannot set factory of %s\n", v10);
  }

  else
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v13 = v7;
    v14 = -1;
    sub_29A10818C(&v13);
    v8 = *a1;
    if (*(*a1 + 104))
    {
      sub_29A104D64(&v13);
      v15 = "tf/type.cpp";
      v16 = "SetFactory";
      v17 = 1133;
      v18 = "void pxrInternal__aapl__pxrReserved__::TfType::SetFactory(std::unique_ptr<FactoryBase>) const";
      v19 = 0;
      v9 = (*a1 + 8);
      if (*(*a1 + 31) < 0)
      {
        v9 = *v9;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Cannot change the factory of %s\n", v9);
    }

    else
    {
      v11 = *a2;
      *a2 = 0;
      v12 = *(v8 + 104);
      *(v8 + 104) = v11;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    sub_29A104D64(&v13);
  }
}

void sub_29A127C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A104D64(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v3 = *this;
  if (*this == *(v2 + 184))
  {
    goto LABEL_10;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v3 = *this;
  if (*this == **(v4 + 192))
  {
LABEL_10:
    v9 = "tf/type.cpp";
    v10 = "_GetFactory";
    v11 = 1144;
    v12 = "TfType::FactoryBase *pxrInternal__aapl__pxrReserved__::TfType::_GetFactory() const";
    v13 = 0;
    v7 = (v3 + 8);
    if (*(v3 + 31) < 0)
    {
      v7 = *v7;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Cannot manufacture type %s", v7);
    return 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfType::_ExecuteDefinitionCallback(this);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
    }

    v9 = v5;
    LODWORD(v10) = -1;
    sub_29A1081D8(&v9);
    v6 = *(*this + 104);
    sub_29A104D64(&v9);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::_ExecuteDefinitionCallback(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = v2;
  v6 = -1;
  sub_29A1081D8(&v5);
  v3 = *(*this + 32);
  if (v3)
  {
    sub_29A104D64(&v5);
    v3(*this);
  }

  return sub_29A104D64(&v5);
}

uint64_t sub_29A127E54(uint64_t a1, uint64_t a2, char *a3)
{
  if ((*(a1 + 8) & 0x80000000) != 0)
  {
    sub_29B28E640(&v5, a2, a3);
  }

  sub_29A104D64(a1);
  sub_29A10818C(a1);
  return 0;
}

void pxrInternal__aapl__pxrReserved__::TfType::AddAlias(char **a1, uint64_t a2, unsigned __int8 *a3)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v9 = v6;
  LODWORD(v10) = -1;
  sub_29A10818C(&v9);
  sub_29A127FCC(v6, a2, *a1, a3, &__p);
  sub_29A104D64(&v9);
  v7 = HIBYTE(v16);
  v8 = HIBYTE(v16);
  if (v16 < 0)
  {
    v7 = v15;
  }

  if (v7)
  {
    v9 = "tf/type.cpp";
    v10 = "AddAlias";
    v11 = 1209;
    v12 = "void pxrInternal__aapl__pxrReserved__::TfType::AddAlias(TfType, const string &) const";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, &__p);
    v8 = HIBYTE(v16);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A127F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A127FCC(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, uint64_t a5)
{
  v27 = a3;
  if (*(a2 + 152) == 1 && (v10 = sub_29A0FC520((a2 + 112), a4)) != 0)
  {
    v14 = v10[5];
    if (v14 == a3)
    {
      return result;
    }

    if ((a4[23] & 0x80u) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v16 = *v16;
    }

    v17 = v14 + 8;
    if (v14[31] < 0)
    {
      v17 = *v17;
    }

    v18 = a3 + 8;
    if (a3[31] < 0)
    {
      v18 = *v18;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot set alias '%s' under '%s', because it is already set to '%s', not '%s'.", v11, v12, v15, v16, v17, v18);
  }

  else
  {
    v19 = sub_29A0FC520((a1 + 24), a4);
    if (!v19 || !pxrInternal__aapl__pxrReserved__::TfType::_IsAImplNoLock(v19[5], *a2))
    {
      if ((*(a2 + 152) & 1) == 0)
      {
        LODWORD(v25) = 0;
        sub_29A129888(a2 + 112, &v25);
      }

      *&v25 = a4;
      sub_29A0FBDAC(a2 + 112, a4, &unk_29B4D6118, &v25)[5] = a3;
      if ((*(a2 + 200) & 1) == 0)
      {
        LODWORD(v25) = 0;
        sub_29A1298DC(a2 + 160, &v25);
      }

      *&v25 = &v27;
      v24 = sub_29A129A60(a2 + 160, &v27, &unk_29B4D6118, &v25);
      sub_29A070BA0((v24 + 3));
    }

    if ((a4[23] & 0x80u) == 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    v23 = (a2 + 8);
    if (*(a2 + 31) < 0)
    {
      v23 = *v23;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("There already is a type named '%s' derived from base type '%s'; cannot create an alias of the same name.", v20, v21, v22, v23);
  }

  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  result = *&v25;
  *a5 = v25;
  *(a5 + 16) = v26;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::IsEnumType(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = v2;
  v6 = -1;
  sub_29A1081D8(&v5);
  v3 = *(*this + 241);
  sub_29A104D64(&v5);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::IsPlainOldDataType(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = v2;
  v6 = -1;
  sub_29A1081D8(&v5);
  v3 = *(*this + 240);
  sub_29A104D64(&v5);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(pxrInternal__aapl__pxrReserved__::TfType *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = v2;
  v6 = -1;
  sub_29A1081D8(&v5);
  v3 = *(*this + 48);
  sub_29A104D64(&v5);
  return v3;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfType::_DeclareImpl(pxrInternal__aapl__pxrReserved__::TfType *this, const std::type_info *a2, const std::type_info **a3)
{
  sub_29A0ECEEC(&v14, "Tf", "TfType::Declare");
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_29A08AF9C(&v11, a3);
  for (; a3; a3 = (a3 - 1))
  {
    pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(a2->__vftable, __p);
    v6 = pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
    sub_29A0A71C8(&v11, v6);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    a2 = (a2 + 8);
  }

  pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(this, __p);
  v7 = pxrInternal__aapl__pxrReserved__::TfType::Declare(__p, &v11, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v7;
}

void sub_29A1283DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_29A0E9CEC(&a18);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(pxrInternal__aapl__pxrReserved__::TfType *this, const std::type_info *a2, const std::type_info **a3, const std::type_info **a4, uint64_t a5, char a6, char a7)
{
  sub_29A0ECEEC(&v16, "Tf", "TfType::Define");
  v14 = pxrInternal__aapl__pxrReserved__::TfType::_DeclareImpl(this, a2, a4);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineCppType(v14, this, a5, a6, a7);
  for (; a4; a4 = (a4 - 1))
  {
    pxrInternal__aapl__pxrReserved__::TfType::_AddCppCastFunc(v14, a2->__vftable, *a3++);
    a2 = (a2 + 8);
  }

  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v17, v16);
  }

  return v14;
}

uint64_t *sub_29A128510()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC9500], 0, 0, 0, 0, 0, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94A8], 0, 0, 0, 1, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94B0], 0, 0, 0, 1, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94A0], 0, 0, 0, 1, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94C8], 0, 0, 0, 1, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94F0], 0, 0, 0, 2, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94F8], 0, 0, 0, 2, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94D0], 0, 0, 0, 4, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94D8], 0, 0, 0, 4, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94E0], 0, 0, 0, 8, 1, 0);
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94E8], 0, 0, 0, 8, 1, 0);
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v2 = **(v1 + 192);
  sub_29A008E78(__p, "size_t");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v2, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC9508], 0, 0, 0, 8, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC9510], 0, 0, 0, 8, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94C0], 0, 0, 0, 4, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(MEMORY[0x29EDC94B8], 0, 0, 0, 8, 1, 0);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A203B0F8, 0, 0, 0, 24, 0, 0);
  v3 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20404E0, 0, 0, 0, 24, 0, 0);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v5 = **(v4 + 192);
  sub_29A008E78(__p, "vector<BOOL>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v3, v5, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20404F0, 0, 0, 0, 24, 0, 0);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v8 = **(v7 + 192);
  sub_29A008E78(__p, "vector<char>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v6, v8, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040500, 0, 0, 0, 24, 0, 0);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v11 = **(v10 + 192);
  sub_29A008E78(__p, "vector<unsigned char>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v9, v11, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040510, 0, 0, 0, 24, 0, 0);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v14 = **(v13 + 192);
  sub_29A008E78(__p, "vector<short>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v12, v14, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040520, 0, 0, 0, 24, 0, 0);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v17 = **(v16 + 192);
  sub_29A008E78(__p, "vector<unsigned short>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v15, v17, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040530, 0, 0, 0, 24, 0, 0);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v19)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v20 = **(v19 + 192);
  sub_29A008E78(__p, "vector<int>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v18, v20, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040540, 0, 0, 0, 24, 0, 0);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v23 = **(v22 + 192);
  sub_29A008E78(__p, "vector<unsigned int>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v21, v23, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040550, 0, 0, 0, 24, 0, 0);
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v25)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v26 = **(v25 + 192);
  sub_29A008E78(__p, "vector<long>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v24, v26, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v47 = *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040560, 0, 0, 0, 24, 0, 0);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v27)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v28 = **(v27 + 192);
  sub_29A008E78(__p, "vector<unsigned long>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v47, v28, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v29)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v30 = **(v29 + 192);
  sub_29A008E78(__p, "vector<size_t>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v47, v30, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040570, 0, 0, 0, 24, 0, 0);
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v32)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v33 = **(v32 + 192);
  sub_29A008E78(__p, "vector<long long>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v31, v33, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040580, 0, 0, 0, 24, 0, 0);
  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v35)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v36 = **(v35 + 192);
  sub_29A008E78(__p, "vector<unsigned long long>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v34, v36, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v37 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040590, 0, 0, 0, 24, 0, 0);
  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v38)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v39 = **(v38 + 192);
  sub_29A008E78(__p, "vector<float>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v37, v39, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v40 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20405A0, 0, 0, 0, 24, 0, 0);
  v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v41)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v42 = **(v41 + 192);
  sub_29A008E78(__p, "vector<double>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v40, v42, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v43 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20405B0, 0, 0, 0, 24, 0, 0);
  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_instance);
  if (!v44)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TypeRegistry>::_CreateInstance();
  }

  v45 = **(v44 + 192);
  sub_29A008E78(__p, "vector<string>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v43, v45, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20405C0, 0, 0, 0, 8, 0, 0);
}

void sub_29A128EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 31);
  v3 = *(*a2 + 16);
  if ((v2 & 0x80u) == 0)
  {
    v4 = *a2 + 8;
  }

  else
  {
    v4 = *(*a2 + 8);
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sub_29A00911C(a1, v4, v5);
}

{
  v3 = sub_29A00911C(a1, "[(", 2);
  v4 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v4;
  v18[2] = *(a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, v18);
  v6 = sub_29A00911C(v5, ") (", 3);
  v7 = *(a2 + 128);
  v17[4] = *(a2 + 112);
  v17[5] = v7;
  v8 = *(a2 + 160);
  v17[6] = *(a2 + 144);
  v17[7] = v8;
  v9 = *(a2 + 64);
  v17[0] = *(a2 + 48);
  v17[1] = v9;
  v10 = *(a2 + 96);
  v17[2] = *(a2 + 80);
  v17[3] = v10;
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v6, v17);
  v12 = sub_29A00911C(v11, ") ", 2);
  if (*(a2 + 305))
  {
    v13 = "true";
  }

  else
  {
    v13 = "false";
  }

  if (*(a2 + 305))
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = sub_29A00911C(v12, v13, v14);
  v19 = 93;
  return sub_29A00911C(v15, &v19, 1);
}

{
  v3 = *(a2 + 16);
  v4 = *(a2 + 20);
  v5 = *(a2 + 24);
  LOBYTE(__p[0]) = 40;
  v6 = sub_29A00911C(a1, __p, 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, v3);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v4);
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v5);
  v12 = sub_29A00911C(v11, ", ", 2);
  v13 = *(a2 + 8);
  v22 = *a2;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::GfColorSpace::GetName(&v22, &v24);
  if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v24 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v16 = *EmptyString;
    v26 = EmptyString[2];
    *__dst = v16;
  }

  v28 = v26;
  *__p = *__dst;
  __dst[1] = 0;
  v26 = 0;
  __dst[0] = 0;
  if (v28 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v28 >= 0)
  {
    v18 = HIBYTE(v28);
  }

  else
  {
    v18 = __p[1];
  }

  v19 = sub_29A00911C(v12, v17, v18);
  v29 = 41;
  v20 = sub_29A00911C(v19, &v29, 1);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return v20;
}

{
  if (*(a2 + 8))
  {
    v4 = "[";
  }

  else
  {
    v4 = "(";
  }

  sub_29A00911C(a1, v4, 1);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(a1, *a2);
  sub_29A00911C(v5, ", ", 2);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, *(a2 + 16));
  if (*(a2 + 24))
  {
    v6 = "]";
  }

  else
  {
    v6 = ")";
  }

  sub_29A00911C(a1, v6, 1);
  return a1;
}

{
  LOBYTE(v14.f64[0]) = 40;
  v3 = sub_29A00911C(a1, &v14, 1);
  v4 = sub_29A00911C(v3, "point:", 6);
  v5 = *(a2 + 40) * 0.0 + *(a2 + 16);
  v14 = vaddq_f64(vmulq_f64(*(a2 + 24), 0), *a2);
  v15 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v4, v14.f64);
  LOBYTE(v12) = 32;
  v7 = sub_29A00911C(v6, &v12, 1);
  v8 = sub_29A00911C(v7, "direction:", 10);
  v9 = *(a2 + 40);
  v12 = *(a2 + 24);
  v13 = v9;
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v8, &v12);
  v16 = 41;
  return sub_29A00911C(v10, &v16, 1);
}

{
  LOBYTE(v17.f64[0]) = 40;
  v3 = sub_29A00911C(a1, &v17, 1);
  v4 = sub_29A00911C(v3, "point 1:", 8);
  v5 = *(a2 + 48) * 0.0;
  v6 = v5 * *(a2 + 40) + *(a2 + 16);
  v17 = vaddq_f64(vmulq_n_f64(*(a2 + 24), v5), *a2);
  v18 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v4, v17.f64);
  LOBYTE(v15.f64[0]) = 32;
  v8 = sub_29A00911C(v7, &v15, 1);
  v9 = sub_29A00911C(v8, "point 2:", 8);
  v10 = *(a2 + 24);
  v11.f64[0] = *(a2 + 48);
  v10.f64[1] = v11.f64[0];
  v11.f64[1] = *(a2 + 32);
  v12 = v11.f64[0] * *(a2 + 40) + *(a2 + 16);
  v15 = vaddq_f64(vmulq_f64(v10, v11), *a2);
  v16 = v12;
  v13 = pxrInternal__aapl__pxrReserved__::operator<<(v9, v15.f64);
  v19 = 41;
  return sub_29A00911C(v13, &v19, 1);
}

{
  LOBYTE(v9) = 40;
  v3 = sub_29A00911C(a1, &v9, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, " + ", 3);
  v6 = *(a2 + 24);
  v9 = *(a2 + 8);
  v10 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v5, &v9);
  v11 = 41;
  return sub_29A00911C(v7, &v11, 1);
}

{
  v9 = 64;
  v3 = sub_29A00911C(a1, &v9, 1);
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
    v6 = *(a2 + 8);
  }

  v7 = sub_29A00911C(v3, v5, v6);
  v10 = 64;
  return sub_29A00911C(v7, &v10, 1);
}

{
  memset(v9, 0, sizeof(v9));
  v3 = *a2;
  v4 = *(a2 + 8);
  while (v3 != v4)
  {
    sub_29A386980(v3);
    sub_29A091654(v9, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 += 5;
  }

  pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", v9, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = sub_29A00911C(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v9;
  sub_29A012C90(&__p);
  return v7;
}

{
  v3 = sub_29A00911C(a1, "SdfPayload(", 11);
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
    v6 = *(a2 + 8);
  }

  v7 = sub_29A00911C(v3, v5, v6);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 24));
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (a2 + 32));

  return sub_29A00911C(v11, ")", 1);
}

{
  v3 = sub_29A00911C(a1, "SdfReference(", 13);
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
    v6 = *(a2 + 8);
  }

  v7 = sub_29A00911C(v3, v5, v6);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 24));
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (a2 + 32));
  v12 = sub_29A00911C(v11, ", ", 2);
  v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, (a2 + 48));

  return sub_29A00911C(v13, ")", 1);
}

{
  v3 = sub_29A00911C(a1, "<< ", 3);
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
    v6 = *(a2 + 8);
  }

  v7 = sub_29A00911C(v3, v5, v6);

  return sub_29A00911C(v7, " >>", 3);
}

{
  v4 = sub_29B2A0EDC(a2);
  if (v5 & 1 | v4)
  {
    sub_29A419260(a2);
  }

  return sub_29A00911C(a1, "@<expired>@", 11);
}

{
  sub_29A4765DC(a1, a2);

  return pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatIdentifier(a1);
}

{
  v3 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v4 = sub_29A00911C(v3, "<", 1);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, (a2 + 80));

  return sub_29A00911C(v5, ">", 1);
}

{
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, (a2 + 16));
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, (a2 + 32));
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (a2 + 48));
  pxrInternal__aapl__pxrReserved__::operator<<(v7, (a2 + 64));
  std::ostream::operator<<();
  v8 = std::ostream::operator<<();
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 84));
  v10 = MEMORY[0x29C2C1EA0](v9, *(a2 + 97));
  v11 = MEMORY[0x29C2C1EA0](v10, *(a2 + 98));
  MEMORY[0x29C2C1ED0](v11, *(a2 + 100));
  std::ostream::operator<<();
  v12 = std::ostream::operator<<();
  v13 = MEMORY[0x29C2C1ED0](v12, *(a2 + 112));
  v14 = MEMORY[0x29C2C1ED0](v13, *(a2 + 116));
  v15 = pxrInternal__aapl__pxrReserved__::operator<<(v14, (a2 + 120));
  v16 = MEMORY[0x29C2C1EA0](v15, *(a2 + 96));
  v17 = MEMORY[0x29C2C1EA0](v16, *(a2 + 272));
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, a2 + 280);
  v19 = pxrInternal__aapl__pxrReserved__::operator<<(v18, (a2 + 328));
  v20 = *(a2 + 359);
  if (v20 >= 0)
  {
    v21 = a2 + 336;
  }

  else
  {
    v21 = *(a2 + 336);
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 359);
  }

  else
  {
    v22 = *(a2 + 344);
  }

  v23 = sub_29A00911C(v19, v21, v22);
  v27 = *(a2 + 392);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v23, (a2 + 360), &v27, sub_29A19EA20);
  pxrInternal__aapl__pxrReserved__::operator<<(v23, (a2 + 400));
  v25 = *(a2 + 248);
  v24 = *(a2 + 256);
  while (v25 != v24)
  {
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v25);
    v25 += 16;
  }

  return a1;
}

{
  sub_29A00911C(a1, "HgiGraphicsCmdsDesc: {", 22);
  v4 = *a2;
  v5 = *(a2 + 8);
  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
    v4 += 20;
  }

  if (*(a2 + 112) != *(a2 + 104))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = sub_29A00911C(a1, "colorTexture", 12);
      v9 = MEMORY[0x29C2C1F00](v8, v7);
      sub_29A00911C(v9, " ", 1);
      v10 = sub_29A00911C(a1, "dimensions:", 11);
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(*(a2 + 104) + v6));
      v12 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (Descriptor + 52));
      sub_29A00911C(v12, ", ", 2);
      ++v7;
      v6 += 16;
    }

    while (v7 < (*(a2 + 112) - *(a2 + 104)) >> 4);
  }

  if (*(a2 + 136) != *(a2 + 128))
  {
    v13 = 0;
    do
    {
      v14 = sub_29A00911C(a1, "colorResolveTexture", 19);
      v15 = MEMORY[0x29C2C1F00](v14, v13);
      sub_29A00911C(v15, ", ", 2);
      ++v13;
    }

    while (v13 < (*(a2 + 136) - *(a2 + 128)) >> 4);
  }

  if (*(a2 + 152))
  {
    pxrInternal__aapl__pxrReserved__::operator<<(a1, (a2 + 24));
    sub_29A00911C(a1, "depthTexture ", 13);
    v16 = sub_29A00911C(a1, "dimensions:", 11);
    v17 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(a2 + 152));
    pxrInternal__aapl__pxrReserved__::operator<<(v16, (v17 + 52));
  }

  if (*(a2 + 168))
  {
    sub_29A00911C(a1, "depthResolveTexture", 19);
  }

  sub_29A00911C(a1, "}", 1);
  return a1;
}

{
  pxrInternal__aapl__pxrReserved__::operator<<(a1, *(a2 + 8));
  return a1;
}

{
  sub_29A00911C(a1, "{ ", 2);
  if (*(a2 + 452) >= 9u)
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a2 + 448);
  if (v5)
  {
    v6 = 0;
    v7 = 56 * v5;
    do
    {
      if (v6)
      {
        sub_29A00911C(a1, ", ", 2);
      }

      pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      v4 = (v4 + 56);
      v6 = 1;
      v7 -= 56;
    }

    while (v7);
  }

  sub_29A00911C(a1, " }", 2);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "RenderProduct: \n", 16);
  v5 = sub_29A00911C(v4, "    productPath : ", 18);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2);
  v7 = sub_29A00911C(v6, "    resolution : ", 17);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, (a2 + 24));
  v9 = sub_29A00911C(v8, "    namespacedSettings: ", 24);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, (a2 + 112));
  sub_29A00911C(v10, "    renderVars: \n", 17);
  if (*(a2 + 40) != *(a2 + 32))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = sub_29A00911C(a1, "        [", 9);
      v14 = MEMORY[0x29C2C1F00](v13, v12);
      v15 = sub_29A00911C(v14, "] ", 2);
      pxrInternal__aapl__pxrReserved__::operator<<(v15, (*(a2 + 32) + v11));
      ++v12;
      v11 += 56;
    }

    while (v12 < 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  return a1;
}

{
  sub_29A00911C(a1, "[", 1);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      sub_29A00911C(v6, ", ", 2);
      ++v4;
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "HdStBufferArrayRegistry ", 24);
  v5 = MEMORY[0x29C2C1E80](v4, a2);
  sub_29A00911C(v5, " :\n", 3);
  v6 = *(a2 + 32);
  if (v6)
  {
    do
    {
      if (v6[19])
      {
        break;
      }

      v6 = *v6;
    }

    while (v6);
    v18 = v6;
    v19 = a2 + 16;
    v20 = 0;
    v21 = a2 + 16;
    if (v6)
    {
      do
      {
        v7 = sub_29A00911C(a1, "  _Entry aggrId = ", 18);
        v8 = sub_29AE3DC7C(&v18);
        v9 = MEMORY[0x29C2C1F00](v7, *(*v8 + 8));
        sub_29A00911C(v9, ": \n", 3);
        v10 = sub_29AE3DC7C(&v18);
        v11 = *v10 + 16;
        v16 = *(*v10 + 24);
        v17 = v11;
        if (v16 != v11)
        {
          v12 = 0;
          do
          {
            v13 = sub_29A00911C(a1, "HdBufferArray ", 14);
            v14 = MEMORY[0x29C2C1F00](v13, v12);
            sub_29A00911C(v14, "\n", 1);
            ++v12;
            sub_29AE3DCD8(&v16);
          }

          while (v16 != v17);
        }

        sub_29AE3DD5C(&v18);
      }

      while (v18 != v20 || v19 != v21);
    }
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "HdStResourceRegistry ", 21);
  v5 = MEMORY[0x29C2C1E80](v4, a2);
  sub_29A00911C(v5, " :\n", 3);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 344);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 904);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 1464);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 2024);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 2584);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "AovInputTask Params: (...) ", 27);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, " ", 1);
  pxrInternal__aapl__pxrReserved__::operator<<(v6, (a2 + 8));
  return a1;
}

{
  sub_29A00911C(a1, "BoundingBoxTask Params: (...) { ", 32);
  if (*(a2 + 16) != *(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = sub_29A00911C(a1, "BBox", 4);
      v7 = MEMORY[0x29C2C1F00](v6, v5);
      v8 = sub_29A00911C(v7, " ", 1);
      v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, *(a2 + 8) + v4);
      sub_29A00911C(v9, ", ", 2);
      ++v5;
      v4 += 312;
    }

    while (v5 < 0x6F96F96F96F96F97 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  v10 = pxrInternal__aapl__pxrReserved__::operator<<(a1, (a2 + 32));
  sub_29A00911C(v10, " ", 1);
  v11 = std::ostream::operator<<();
  sub_29A00911C(v11, " }", 2);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "ColorCorrectionTask Params: (...) ", 34);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = *(a2 + 31);
  if (v7 >= 0)
  {
    v8 = a2 + 8;
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v10 = sub_29A00911C(v6, v8, v9);
  v11 = sub_29A00911C(v10, " ", 1);
  v12 = *(a2 + 55);
  if (v12 >= 0)
  {
    v13 = a2 + 32;
  }

  else
  {
    v13 = *(a2 + 32);
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = *(a2 + 40);
  }

  v15 = sub_29A00911C(v11, v13, v14);
  v16 = sub_29A00911C(v15, " ", 1);
  v17 = *(a2 + 79);
  if (v17 >= 0)
  {
    v18 = a2 + 56;
  }

  else
  {
    v18 = *(a2 + 56);
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 79);
  }

  else
  {
    v19 = *(a2 + 64);
  }

  v20 = sub_29A00911C(v16, v18, v19);
  v21 = sub_29A00911C(v20, " ", 1);
  v24 = *(a2 + 80);
  v23 = a2 + 80;
  v22 = v24;
  v25 = *(v23 + 23);
  if (v25 >= 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v22;
  }

  if (v25 >= 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = *(v23 + 8);
  }

  v28 = sub_29A00911C(v21, v26, v27);
  v29 = sub_29A00911C(v28, " ", 1);
  v30 = MEMORY[0x29C2C1ED0](v29, *(v23 + 24));
  v31 = sub_29A00911C(v30, " ", 1);
  pxrInternal__aapl__pxrReserved__::operator<<(v31, (v23 + 32));
  return a1;
}

{
  v4 = sub_29A00911C(a1, "HdxDrawTargetTaskParams: (...) \n", 32);
  v5 = sub_29A00911C(v4, "         overrideColor           = ", 35);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2);
  v7 = sub_29A00911C(v6, "\n", 1);
  v8 = sub_29A00911C(v7, "         wireframeColor          = ", 35);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 16));
  v10 = sub_29A00911C(v9, "\n", 1);
  v11 = sub_29A00911C(v10, "         enableLighting          = ", 35);
  v12 = MEMORY[0x29C2C1EA0](v11, *(a2 + 32));
  v13 = sub_29A00911C(v12, "\n", 1);
  sub_29A00911C(v13, "         alphaThreshold          = ", 35);
  v14 = std::ostream::operator<<();
  v15 = sub_29A00911C(v14, "\n", 1);
  v16 = sub_29A00911C(v15, "         depthBiasUseDefault     = ", 35);
  v17 = MEMORY[0x29C2C1EA0](v16, *(a2 + 40));
  v18 = sub_29A00911C(v17, "\n", 1);
  v19 = sub_29A00911C(v18, "         depthBiasEnable         = ", 35);
  v20 = MEMORY[0x29C2C1EA0](v19, *(a2 + 41));
  v21 = sub_29A00911C(v20, "\n", 1);
  sub_29A00911C(v21, "         depthBiasConstantFactor = ", 35);
  v22 = std::ostream::operator<<();
  v23 = sub_29A00911C(v22, "\n", 1);
  v24 = sub_29A00911C(v23, "         depthFunc               = ", 35);
  v25 = MEMORY[0x29C2C1ED0](v24, *(a2 + 52));
  v26 = sub_29A00911C(v25, "\n", 1);
  v27 = sub_29A00911C(v26, "         cullStyle               = ", 35);
  v28 = MEMORY[0x29C2C1ED0](v27, *(a2 + 60));
  sub_29A00911C(v28, "\n", 1);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "Delegate: <", 11);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, "> ", 2);
  v7 = sub_29A00911C(v6, "Object: <", 9);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, (a2 + 8));
  v9 = sub_29A00911C(v8, "> ", 2);
  v10 = sub_29A00911C(v9, "LegacyInstancer: <", 18);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (a2 + 16));
  v12 = sub_29A00911C(v11, "> ", 2);
  v13 = sub_29A00911C(v12, "LegacyInstanceId: [", 19);
  v14 = MEMORY[0x29C2C1ED0](v13, *(a2 + 24));
  v15 = sub_29A00911C(v14, "] ", 2);
  v16 = sub_29A00911C(v15, "Element: [", 10);
  v17 = MEMORY[0x29C2C1ED0](v16, *(a2 + 28));
  v18 = sub_29A00911C(v17, "] ", 2);
  v19 = sub_29A00911C(v18, "Edge: [", 7);
  v20 = MEMORY[0x29C2C1ED0](v19, *(a2 + 32));
  v21 = sub_29A00911C(v20, "] ", 2);
  v22 = sub_29A00911C(v21, "Point: [", 8);
  v23 = MEMORY[0x29C2C1ED0](v22, *(a2 + 36));
  v24 = sub_29A00911C(v23, "] ", 2);
  v25 = sub_29A00911C(v24, "HitPoint: ", 10);
  v26 = pxrInternal__aapl__pxrReserved__::operator<<(v25, (a2 + 40));
  v27 = sub_29A00911C(v26, " ", 1);
  v28 = sub_29A00911C(v27, "HitNormal: ", 11);
  v29 = pxrInternal__aapl__pxrReserved__::operator<<(v28, (a2 + 64));
  v30 = sub_29A00911C(v29, " ", 1);
  sub_29A00911C(v30, "Depth: ", 7);
  std::ostream::operator<<();
  return a1;
}

{
  v4 = *(a2 + 344);
  v6 = v4 && (v5 = (*(*v4 + 56))(v4, &unk_2A207E278)) != 0 && *v5 != 0;
  v7 = sub_29A00911C(a1, "PickTask Context Params: (...) ", 31);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2);
  v9 = sub_29A00911C(v8, " ", 1);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, (a2 + 16));
  v11 = sub_29A00911C(v10, " ", 1);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, (a2 + 24));
  v13 = sub_29A00911C(v12, " ", 1);
  v14 = MEMORY[0x29C2C1EA0](v13, *(a2 + 32));
  v15 = sub_29A00911C(v14, " ", 1);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, (a2 + 40));
  v17 = sub_29A00911C(v16, " ", 1);
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, (a2 + 168));
  v19 = sub_29A00911C(v18, " ", 1);
  v20 = MEMORY[0x29C2C1EA0](v19, v6);
  v21 = sub_29A00911C(v20, " ", 1);
  v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, (a2 + 352));
  v23 = sub_29A00911C(v22, " ", 1);
  MEMORY[0x29C2C1E80](v23, *(a2 + 464));
  v24 = *(a2 + 296);
  for (i = *(a2 + 304); v24 != i; v24 += 4)
  {
    v26 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v24);
    sub_29A00911C(v26, " ", 1);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "PickFromRenderBufferTask Params: (...) ", 39);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (a2 + 8));
  v8 = sub_29A00911C(v7, " ", 1);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 16));
  v10 = sub_29A00911C(v9, " ", 1);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (a2 + 24));
  v12 = sub_29A00911C(v11, " ", 1);
  v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, (a2 + 32));
  v14 = sub_29A00911C(v13, " ", 1);
  pxrInternal__aapl__pxrReserved__::operator<<(v14, (a2 + 40));
  return a1;
}

{
  v4 = sub_29A00911C(a1, "RenderTask Params: (...) ", 25);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (a2 + 16));
  v8 = sub_29A00911C(v7, " ", 1);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 32));
  sub_29A00911C(v9, " ", 1);
  v10 = std::ostream::operator<<();
  v11 = sub_29A00911C(v10, " ", 1);
  v12 = MEMORY[0x29C2C1EA0](v11, *(a2 + 52));
  v13 = sub_29A00911C(v12, " ", 1);
  v14 = MEMORY[0x29C2C1EA0](v13, *(a2 + 53));
  sub_29A00911C(v14, " ", 1);
  v15 = std::ostream::operator<<();
  v16 = sub_29A00911C(v15, " ", 1);
  v17 = MEMORY[0x29C2C1EA0](v16, *(a2 + 60));
  v18 = sub_29A00911C(v17, " ", 1);
  v19 = MEMORY[0x29C2C1EA0](v18, *(a2 + 61));
  v20 = sub_29A00911C(v19, " ", 1);
  v21 = pxrInternal__aapl__pxrReserved__::operator<<(v20, (a2 + 64));
  v22 = sub_29A00911C(v21, " ", 1);
  v23 = pxrInternal__aapl__pxrReserved__::operator<<(v22, (a2 + 80));
  sub_29A00911C(v23, " ", 1);
  v24 = std::ostream::operator<<();
  v25 = sub_29A00911C(v24, " ", 1);
  v26 = MEMORY[0x29C2C1EA0](v25, *(a2 + 152));
  v27 = sub_29A00911C(v26, " ", 1);
  v28 = MEMORY[0x29C2C1EA0](v27, *(a2 + 153));
  sub_29A00911C(v28, " ", 1);
  v29 = std::ostream::operator<<();
  sub_29A00911C(v29, " ", 1);
  v30 = std::ostream::operator<<();
  v31 = sub_29A00911C(v30, " ", 1);
  v32 = MEMORY[0x29C2C1ED0](v31, *(a2 + 164));
  v33 = sub_29A00911C(v32, " ", 1);
  v34 = MEMORY[0x29C2C1EA0](v33, *(a2 + 168));
  v35 = sub_29A00911C(v34, " ", 1);
  v36 = MEMORY[0x29C2C1ED0](v35, *(a2 + 172));
  v37 = sub_29A00911C(v36, " ", 1);
  v38 = MEMORY[0x29C2C1ED0](v37, *(a2 + 176));
  v39 = sub_29A00911C(v38, " ", 1);
  v40 = MEMORY[0x29C2C1ED0](v39, *(a2 + 180));
  v41 = sub_29A00911C(v40, " ", 1);
  v42 = MEMORY[0x29C2C1ED0](v41, *(a2 + 184));
  v43 = sub_29A00911C(v42, " ", 1);
  v44 = MEMORY[0x29C2C1ED0](v43, *(a2 + 188));
  v45 = sub_29A00911C(v44, " ", 1);
  v46 = MEMORY[0x29C2C1ED0](v45, *(a2 + 192));
  v47 = sub_29A00911C(v46, " ", 1);
  v48 = MEMORY[0x29C2C1EA0](v47, *(a2 + 196));
  v49 = sub_29A00911C(v48, " ", 1);
  v50 = MEMORY[0x29C2C1ED0](v49, *(a2 + 200));
  v51 = sub_29A00911C(v50, " ", 1);
  v52 = MEMORY[0x29C2C1ED0](v51, *(a2 + 204));
  v53 = sub_29A00911C(v52, " ", 1);
  v54 = MEMORY[0x29C2C1ED0](v53, *(a2 + 208));
  v55 = sub_29A00911C(v54, " ", 1);
  v56 = MEMORY[0x29C2C1ED0](v55, *(a2 + 212));
  v57 = sub_29A00911C(v56, " ", 1);
  v58 = MEMORY[0x29C2C1ED0](v57, *(a2 + 216));
  v59 = sub_29A00911C(v58, " ", 1);
  v60 = MEMORY[0x29C2C1ED0](v59, *(a2 + 220));
  v61 = sub_29A00911C(v60, " ", 1);
  v62 = pxrInternal__aapl__pxrReserved__::operator<<(v61, (a2 + 224));
  v63 = sub_29A00911C(v62, " ", 1);
  v64 = MEMORY[0x29C2C1EA0](v63, *(a2 + 240));
  v65 = sub_29A00911C(v64, " ", 1);
  v66 = MEMORY[0x29C2C1EA0](v65, *(a2 + 241));
  v67 = sub_29A00911C(v66, "", 0);
  v68 = MEMORY[0x29C2C1EA0](v67, *(a2 + 242));
  v69 = sub_29A00911C(v68, "", 0);
  v70 = MEMORY[0x29C2C1EA0](v69, *(a2 + 243));
  v71 = sub_29A00911C(v70, "", 0);
  v72 = pxrInternal__aapl__pxrReserved__::operator<<(v71, (a2 + 244));
  v73 = sub_29A00911C(v72, " ", 1);
  v74 = pxrInternal__aapl__pxrReserved__::operator<<(v73, (a2 + 252));
  v75 = sub_29A00911C(v74, " ", 1);
  v76 = pxrInternal__aapl__pxrReserved__::operator<<(v75, (a2 + 268));
  sub_29A00911C(v76, " ", 1);
  v77 = std::ostream::operator<<();
  v78 = sub_29A00911C(v77, " ", 1);
  v79 = pxrInternal__aapl__pxrReserved__::operator<<(v78, (a2 + 288));
  v80 = sub_29A00911C(v79, " ", 1);
  v81 = MEMORY[0x29C2C1ED0](v80, *(a2 + 320));
  sub_29A00911C(v81, " ", 1);
  v82 = *(a2 + 104);
  for (i = *(a2 + 112); v82 != i; v82 += 10)
  {
    v84 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v82);
    sub_29A00911C(v84, " ", 1);
  }

  v85 = *(a2 + 128);
  for (j = *(a2 + 136); v85 != j; v85 += 10)
  {
    v87 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v85);
    sub_29A00911C(v87, " (input) ", 9);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "ShadowTask Params: (...) ", 25);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (a2 + 16));
  v8 = sub_29A00911C(v7, " ", 1);
  v9 = MEMORY[0x29C2C1EA0](v8, *(a2 + 32));
  v10 = sub_29A00911C(v9, " ", 1);
  v11 = MEMORY[0x29C2C1EA0](v10, *(a2 + 33));
  sub_29A00911C(v11, " ", 1);
  v12 = std::ostream::operator<<();
  v13 = sub_29A00911C(v12, " ", 1);
  v14 = MEMORY[0x29C2C1EA0](v13, *(a2 + 40));
  sub_29A00911C(v14, " ", 1);
  v15 = std::ostream::operator<<();
  sub_29A00911C(v15, " ", 1);
  v16 = std::ostream::operator<<();
  v17 = sub_29A00911C(v16, " ", 1);
  v18 = MEMORY[0x29C2C1ED0](v17, *(a2 + 52));
  v19 = sub_29A00911C(v18, " ", 1);
  v20 = MEMORY[0x29C2C1ED0](v19, *(a2 + 56));
  sub_29A00911C(v20, " ", 1);
  return a1;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v5 = sub_29A00911C(v4, " ", 1);
  v6 = MEMORY[0x29C2C1EA0](v5, *(a2 + 56));
  sub_29A00911C(v6, " ", 1);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v16 = v9;
  v17 = v10;
  while (v9 != v10)
  {
    v11 = sub_29A1FAB78(&v16, v7, v8);
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v11);
    sub_29A1FABF8(&v16);
    v9 = v16;
    v10 = v17;
  }

  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v16 = v12;
  v17 = v13;
  while (v12 != v13)
  {
    v14 = sub_29A1FAB78(&v16, v7, v8);
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v14);
    sub_29A1FABF8(&v16);
    v12 = v16;
    v13 = v17;
  }

  return a1;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v5 = sub_29A00911C(v4, " ", 1);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, (a2 + 8));
  v7 = sub_29A00911C(v6, " ", 1);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, (a2 + 16));
  sub_29A00911C(v8, " ", 1);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  while (v9 != v10)
  {
    pxrInternal__aapl__pxrReserved__::operator<<(a1, v9++);
  }

  return a1;
}

uint64_t sub_29A128F1C(uint64_t a1, __int128 *a2)
{
  *a1 = a1;
  v3 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 239) = 0;
  return a1;
}

void sub_29A128F94(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_29A129060(a1, a2);
  if (v6)
  {
    *v6 = *a3;
  }

  else
  {
    sub_29A008E78(&__p, (a2[1] & 0x7FFFFFFFFFFFFFFFLL));
    sub_29A12910C(a1, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, (a2[1] & 0x7FFFFFFFFFFFFFFFLL));
    sub_29A129200(a1, a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A129040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A129060(uint64_t a1, void *a2)
{
  __p[0] = a2;
  v4 = sub_29A113AE0((a1 + 40), __p);
  if (v4)
  {
    return v4[3] + 72;
  }

  sub_29A008E78(__p, (a2[1] & 0x7FFFFFFFFFFFFFFFLL));
  v6 = sub_29A0EC378((a1 + 80), __p);
  if (v6)
  {
    v5 = v6[5] + 72;
  }

  else
  {
    v5 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A1290F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A12910C(uint64_t a1, std::string *a2, void *a3)
{
  result = sub_29A0FC520((a1 + 80), a2);
  if (result)
  {
    *(result[5] + 72) = *a3;
  }

  else
  {
    v9 = a2;
    v7 = sub_29A12925C(a1, a2, &unk_29B4D6118, &v9);
    std::string::operator=((v7 + 11), a2);
    v7[14] = *a3;
    v9 = a2;
    sub_29A0FBDAC(a1 + 80, a2, &unk_29B4D6118, &v9)[5] = v7 + 5;
    result = sub_29A1179F4((v7 + 8), 0, 0, a2);
    result[1] = v7 + 8;
    v8 = v7[8];
    *result = v8;
    v8[1] = result;
    v7[8] = result;
    v7[10] = v7[10] + 1;
  }

  return result;
}

const void **sub_29A129200(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  result = sub_29A0FC520((a1 + 80), a3);
  if (result)
  {
    v6 = result[5];

    return sub_29A1296BC(a1, a2, v6);
  }

  return result;
}

const void **sub_29A12925C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A129504(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A1294EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1295F8(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29A129504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x78uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v10 = *a3;
  result = sub_29A129588(v8 + 16, &v10);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29A129588(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 12) = 0;
  *(__dst + 3) = __dst + 24;
  *(__dst + 4) = __dst + 24;
  *(__dst + 5) = 0;
  *(__dst + 6) = __dst + 48;
  *(__dst + 7) = __dst + 48;
  *(__dst + 4) = 0u;
  *(__dst + 5) = 0u;
  return __dst;
}

void sub_29A1295F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A129654(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A129654(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_29A116F64((a1 + 48));
  sub_29A0EB800((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_29A1296BC(uint64_t a1, void *a2, uint64_t *a3)
{
  v9 = a2;
  result = sub_29A0EB63C((a1 + 40), &v9);
  if (!result)
  {
    v8 = a2;
    v9 = &v8;
    sub_29A0EB864(a1 + 40, &v8, &unk_29B4D6118, &v9)[3] = a3;
    result = operator new(0x18uLL);
    result[1] = a3;
    result[2] = a2;
    v7 = *a3;
    *result = *a3;
    *(v7 + 8) = result;
    *a3 = result;
    ++a3[2];
  }

  return result;
}

uint64_t sub_29A12975C(uint64_t a1)
{
  sub_29A129798(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A129798(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A129654((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A1297DC(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E698();
  }

  return result;
}

void *sub_29A129804(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::vector<pxrInternal__aapl__pxrReserved__::TfType>>>::operator++() [T = std::vector<std::vector<pxrInternal__aapl__pxrReserved__::TfType>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t sub_29A129888(uint64_t a1, int *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A0EB4E8(a1);
    *(a1 + 40) = 0;
  }

  sub_29A129930(a1, a2);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_29A1298DC(uint64_t a1, int *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_29A129980(a1);
    *(a1 + 40) = 0;
  }

  sub_29A129A10(a1, a2);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_29A129930(uint64_t a1, int *a2)
{
  v3 = *a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, v3);
  return a1;
}

uint64_t sub_29A129980(uint64_t a1)
{
  sub_29A1299BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1299BC(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_29A012C90(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A129A10(uint64_t a1, int *a2)
{
  v3 = *a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, v3);
  return a1;
}

void *sub_29A129A60(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v7;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *i = *v20;
LABEL_38:
    *v20 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v19 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v21 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A129CB8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_29A012C90(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A129D08(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, 0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  sub_29A019AA0(a1 + 80, 0);
  return a1;
}

void sub_29A129D7C(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_29A0EB4E8(v4);
  sub_29A0EB570(v2);
  sub_29A12975C(v1);
  _Unwind_Resume(a1);
}

const void **sub_29A129DB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a2;
  v27 = 0;
  v28 = 0;
  v7 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v8 = a2[23];
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v27, a2, v8);
  v9 = bswap64(0x9E3779B97F4A7C55 * v27);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v3 = v9;
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, v5))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A12A04C(a1, v9, a3, &v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    i = v27;
    *v27 = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v3) = a1 + 16;
    i = v27;
    if (*v27)
    {
      v25 = *(*v27 + 1);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27;
      i = v27;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A12A028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A12A04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *a3, *(a3 + 8));
  }

  else
  {
    *(result + 1) = *a3;
    result[4] = *(a3 + 16);
  }

  v9[5] = *(a3 + 24);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A12A0E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A12A0FC(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A12A15C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A12A178(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      v17 = sub_29A00C9BC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[8 * v16];
    v35 = 8 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 8;
      v35 -= 8;
    }

    while (v35);
    v38 = &v17[8 * v15];
    memcpy(&v34[8 * a5], v5, *(a1 + 8) - v5);
    v39 = *a1;
    v40 = &v34[8 * a5 + *(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v41 = v5 - v39;
    v42 = &v34[-(v5 - v39)];
    memcpy(v42, v39, v41);
    v43 = *a1;
    *a1 = v42;
    *(a1 + 8) = v40;
    *(a1 + 16) = v38;
    if (v43)
    {
      operator delete(v43);
    }

    return v34;
  }

  v18 = v10 - __dst;
  v19 = (v10 - __dst) >> 3;
  if (v19 >= a5)
  {
    v30 = &__dst[8 * a5];
    v31 = (v10 - 8 * a5);
    v32 = *(a1 + 8);
    while (v31 < v10)
    {
      v33 = *v31++;
      *v32++ = v33;
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v30);
    }

    v29 = 8 * a5;
    v27 = v5;
    v28 = v7;
    goto LABEL_29;
  }

  v21 = a4 - &__src[v18];
  if (a4 != &__src[v18])
  {
    memmove(*(a1 + 8), &__src[v18], a4 - &__src[v18]);
  }

  v22 = (v10 + v21);
  *(a1 + 8) = v10 + v21;
  if (v19 >= 1)
  {
    v23 = &v5[8 * a5];
    v24 = v10 + v21;
    if (&v22[-8 * a5] < v10)
    {
      v25 = &v5[a4];
      v26 = &v5[a4 + -8 * a5];
      do
      {
        *(v25 - v7) = *(v26 - v7);
        v26 += 8;
        v25 += 8;
      }

      while (v26 - v7 < v10);
      v24 = v25 - v7;
    }

    *(a1 + 8) = v24;
    if (v22 != v23)
    {
      memmove(&v5[8 * a5], v5, v22 - v23);
    }

    if (v10 != v5)
    {
      v27 = v5;
      v28 = v7;
      v29 = v10 - v5;
LABEL_29:
      memmove(v27, v28, v29);
    }
  }

  return v5;
}

void *sub_29A12A3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_29A12A0FC(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_29A12A3F8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  v17 = v8;
  v18 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  sub_29A12A0FC(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v9 = v17 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_29A0C2DF8(&v15);
  return v9;
}

void sub_29A12A514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0C2DF8(va);
  _Unwind_Resume(a1);
}

void *sub_29A12A528(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_29B430070)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_29A12A5E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29A12A600(void *a1, const void **a2)
{
  v4 = sub_29A12A708(&v14, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_29A0EC4B8(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t sub_29A12A708(uint64_t a1, uint64_t a2)
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

  return sub_29A12A748(&v5, a2, v3);
}

unint64_t sub_29A12A748(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_29A12AAF4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_29A12AA48(a2, a3);
  }

  else
  {
    return sub_29A12A950(a2, a3);
  }
}

unint64_t sub_29A12A950(_DWORD *a1, unint64_t a2)
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

unint64_t sub_29A12AA48(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_29A12AAF4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

const void **sub_29A12ABB4(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(v26, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A12AE0C(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A12ADF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29A12AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  result = sub_29A12AE7C(v8 + 16, a3);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29A12AE7C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29A12AEF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A12AF10(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A00B454(v2 + 16);
    }

    operator delete(v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::TfTypeWasDeclaredNotice::TfTypeWasDeclaredNotice(void *result, uint64_t a2)
{
  *result = &unk_2A20405E0;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2A20405E0;
  result[1] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfTypeWasDeclaredNotice::~TfTypeWasDeclaredNotice(pxrInternal__aapl__pxrReserved__::TfTypeWasDeclaredNotice *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, unsigned int a2)
{
  v3 = a2;
  v4 = a1;
  if (a2 < 0x80)
  {
    v10 = a2;
    v5 = &v10;
LABEL_5:
    sub_29A00911C(v4, v5, 1);
    return v4;
  }

  if (a2 < 0x800)
  {
    v11 = (a2 >> 6) | 0xC0;
    sub_29A00911C(a1, &v11, 1);
    v12 = v3 & 0x3F | 0x80;
    v5 = &v12;
    goto LABEL_5;
  }

  v7 = 0;
  for (i = a2; i >= 0x10000; i = 65533)
  {
    if (HIWORD(i) <= 0x10u)
    {
      v16 = (v3 >> 18) | 0xF0;
      sub_29A00911C(a1, &v16, 1);
      v17 = (v3 >> 12) & 0x3F | 0x80;
      sub_29A00911C(v4, &v17, 1);
      v18 = (v3 >> 6) & 0x3F | 0x80;
      sub_29A00911C(v4, &v18, 1);
      v19 = v3 & 0x3F | 0x80;
      v9 = &v19;
      goto LABEL_15;
    }

    if ((v7 & 1) == 0)
    {
      v2 = a1;
    }

    v3 = 65533;
    v7 = 1;
  }

  v13 = (v3 >> 12) | 0xE0;
  sub_29A00911C(a1, &v13, 1);
  v14 = (v3 >> 6) & 0x3F | 0x80;
  sub_29A00911C(v4, &v14, 1);
  v15 = v3 & 0x3F | 0x80;
  v9 = &v15;
LABEL_15:
  sub_29A00911C(v4, v9, 1);
  if (v7)
  {
    return v2;
  }

  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfUtf8CodePointIterator::_GetCodePoint(char **this)
{
  v1 = *this;
  v2 = this[1];
  if (*this >= v2)
  {
    v5 = 0;
  }

  else
  {
    v3 = *v1;
    if ((*v1 & 0x80000000) == 0)
    {
      if (v2 - v1 >= 1)
      {
        return *v1;
      }

      else
      {
        return 65533;
      }
    }

    if ((v3 & 0xE0) == 0xC0)
    {
      v5 = 2;
    }

    else if ((v3 & 0xF0) == 0xE0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4 * ((v3 & 0xF8) == 240);
    }
  }

  if (v2 - v1 < v5)
  {
    return 65533;
  }

  if (v5 != 4)
  {
    if (v5 != 3)
    {
      if (v5 == 2)
      {
        v6 = *v1;
        if ((v6 - 224) >= 0xFFFFFFE2)
        {
          v7 = v1[1];
          if (v7 <= -65)
          {
            return v7 & 0x3F | ((v6 & 0x1F) << 6);
          }
        }
      }

      return 65533;
    }

    v8 = *v1;
    v9 = v1[1];
    v10 = v1[2];
    if (v8 == 224)
    {
      result = 65533;
      if ((v9 - 192) < 0xFFFFFFE0)
      {
        return result;
      }
    }

    else if ((v8 - 225) < 0xC || (v8 & 0xFE) == 0xEE)
    {
      result = 65533;
      if (v9 > -65)
      {
        return result;
      }
    }

    else
    {
      if (v8 != 237)
      {
        return 65533;
      }

      result = 65533;
      if (v9 > -97)
      {
        return result;
      }
    }

    if (v10 > -65)
    {
      return result;
    }

    v13 = (v8 & 0xF) << 12;
    return v13 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
  }

  v11 = *v1;
  v12 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  if (v11 == 240)
  {
    result = 65533;
    if ((v12 - 192) < 0xFFFFFFD0)
    {
      return result;
    }
  }

  else if ((v11 - 241) > 2)
  {
    if (v11 != 244)
    {
      return 65533;
    }

    result = 65533;
    if (v12 > -113)
    {
      return result;
    }
  }

  else
  {
    result = 65533;
    if (v12 > -65)
    {
      return result;
    }
  }

  if (v9 <= -65 && v10 <= -65)
  {
    v13 = ((v11 & 7) << 18) | ((v12 & 0x3F) << 12);
    return v13 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = this;
  XidStartFlagData = pxrInternal__aapl__pxrReserved__::TfUnicodeGetXidStartFlagData(this);
  if (HIWORD(v1) > 0x10u)
  {
    return 0;
  }

  else
  {
    return (*(XidStartFlagData + ((v1 >> 3) & 0x1FFFFFF8)) >> v1) & 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = this;
  XidContinueFlagData = pxrInternal__aapl__pxrReserved__::TfUnicodeGetXidContinueFlagData(this);
  if (HIWORD(v1) > 0x10u)
  {
    return 0;
  }

  else
  {
    return (*(XidContinueFlagData + ((v1 >> 3) & 0x1FFFFFF8)) >> v1) & 1;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_Remnant::~Tf_Remnant(pxrInternal__aapl__pxrReserved__::Tf_Remnant *this, const void *a2)
{
  *this = &unk_2A2040618;
  if (*(this + 12) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::Invoke(this, a2);
  }

  pxrInternal__aapl__pxrReserved__::TfSimpleRefBase::~TfSimpleRefBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::Tf_Remnant::~Tf_Remnant(this, a2);

  operator delete(v2);
}

void sub_29A12B4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28E6F0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A12B538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28E6F0(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A12B560(float *a1, float *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = *a1;
      if (*a1)
      {
        v2 = *a2;
        if (*a2)
        {
          for (i = 0; i != 9; ++i)
          {
            if (vabds_f32(a1[i + 14], a2[i + 14]) > 0.00001)
            {
              return 0;
            }
          }

          if (vabds_f32(a1[10], a2[10]) > 0.001)
          {
            return 0;
          }

          return vabds_f32(a1[11], a2[11]) <= 0.001;
        }
      }
    }
  }

  return v2;
}

void sub_29A12B5F0(uint64_t a1)
{
  if (a1 && *(a1 + 88) == 0.0)
  {
    v2 = *(a1 + 40);
    v3 = 1.0;
    if (v2 == 1.0)
    {
      *(a1 + 48) = 1315859240;
    }

    else
    {
      v4 = *(a1 + 44);
      if (v4 <= 0.0)
      {
        *(a1 + 48) = 0;
      }

      else
      {
        *(a1 + 48) = v4 / (v2 + -1.0);
        v5 = logf((v4 * v2) / (((v2 + (v2 * v4)) + -1.0) - v4));
        v3 = (v4 / expf(v2 * v5)) / (v2 + -1.0);
      }
    }

    *(a1 + 52) = v3;
    v6 = *(a1 + 32);
    if (v6 != 0.0)
    {
      v7 = *(a1 + 8);
      v19 = *(a1 + 12);
      v8 = *(a1 + 16);
      v9 = *(a1 + 20);
      v11 = *(a1 + 24);
      v10 = *(a1 + 28);
      v20[0] = v7;
      v12 = *(a1 + 36);
      v13 = v6 / v12;
      v21 = 0u;
      v22 = 0u;
      v14 = v12 / v12;
      v23 = 0.0;
      v20[1] = v8;
      v20[2] = v11;
      v20[3] = v19;
      v20[4] = v9;
      v20[5] = v10;
      v20[6] = (1.0 - v7) - v19;
      v20[7] = (1.0 - v8) - v9;
      v20[8] = (1.0 - v11) - v10;
      v15 = ((1.0 - v6) - v12) / v12;
      sub_29A12BBF4(v20, &v21);
      v16 = ((v14 * *(&v21 + 1)) + (*&v21 * v13)) + (*(&v21 + 2) * v15);
      v17 = ((v14 * *&v22) + (*(&v21 + 3) * v13)) + (*(&v22 + 1) * v15);
      v18 = ((v14 * *(&v22 + 3)) + (*(&v22 + 2) * v13)) + (v23 * v15);
      *(a1 + 56) = v7 * v16;
      *(a1 + 60) = v8 * v17;
      *(a1 + 64) = v11 * v18;
      *(a1 + 68) = v19 * v16;
      *(a1 + 72) = v9 * v17;
      *(a1 + 76) = v10 * v18;
      *(a1 + 80) = ((1.0 - v7) - v19) * v16;
      *(a1 + 84) = ((1.0 - v8) - v9) * v17;
      *(a1 + 88) = ((1.0 - v11) - v10) * v18;
    }
  }
}

_OWORD *sub_29A12B7BC(__int128 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = calloc(1uLL, 0x60uLL);
  v3 = a1[2];
  v4 = *a1;
  v2[1] = a1[1];
  v2[2] = v3;
  *v2 = v4;
  *v2 = strdup(*a1);
  sub_29A12B5F0(v2);
  return v2;
}

char *sub_29A12B820(uint64_t a1, BOOL *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = calloc(1uLL, 0x60uLL);
  *v4 = strdup(*a1);
  *(v4 + 5) = *(a1 + 44);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  *(v4 + 56) = *(a1 + 8);
  *(v4 + 72) = v6;
  *(v4 + 22) = v5;
  sub_29A12B5F0(v4);
  v7 = sub_29A12BA30(v4, 1.0, 1.0, 1.0);
  v9 = v8;
  v11 = v10 + (v7 + v8);
  v12 = -1.0;
  v13 = -1.0;
  v14 = 0.0;
  if (v11 != 0.0)
  {
    v14 = v7 / v11;
    v13 = v9 + -1.0;
    v9 = v9 / v11;
  }

  v38 = v13;
  v39 = v14;
  v15 = sub_29A12BA30(v4, 1.0, 0.0, 0.0);
  v17 = v16;
  v19 = v18;
  v20 = sub_29A12BA30(v4, 0.0, 1.0, 0.0);
  v22 = v21;
  v24 = v23;
  v25 = sub_29A12BA30(v4, 0.0, 0.0, 1.0);
  v28 = v19 + (v15 + v17);
  v29 = 0.0;
  if (v28 != 0.0)
  {
    v29 = v15 / v28;
    v12 = v17 + -1.0;
    v17 = v17 / v28;
  }

  v30 = v24 + (v20 + v22);
  v31 = 0.0;
  v32 = -1.0;
  v33 = -1.0;
  v34 = 0.0;
  if (v30 != 0.0)
  {
    v34 = v20 / v30;
    v33 = v22 + -1.0;
    v22 = v22 / v30;
  }

  v35 = v27 + (v25 + v26);
  if (v35 != 0.0)
  {
    v31 = v25 / v35;
    v32 = v26 + -1.0;
    v26 = v26 / v35;
  }

  if (a2)
  {
    v36 = 0;
    if (fabsf(v12) < 0.001 && fabsf(v33) < 0.001 && fabsf(v32) < 0.001)
    {
      v36 = fabsf(v38) < 0.001;
    }

    *a2 = v36;
  }

  *(v4 + 2) = v29;
  *(v4 + 3) = v17;
  *(v4 + 4) = v34;
  *(v4 + 5) = v22;
  *(v4 + 6) = v31;
  *(v4 + 7) = v26;
  *(v4 + 8) = v39;
  *(v4 + 9) = v9;
  return v4;
}

float sub_29A12BA30(float *a1, float a2, float a3, float a4)
{
  if (!a1)
  {
    return 0.0;
  }

  v7 = a1[12];
  if (v7 <= a2)
  {
    v8 = powf((a2 + a1[11]) / (a1[11] + 1.0), a1[10]);
  }

  else
  {
    v8 = a2 / a1[13];
  }

  if (v7 <= a3)
  {
    v10 = powf((a3 + a1[11]) / (a1[11] + 1.0), a1[10]);
  }

  else
  {
    v10 = a3 / a1[13];
  }

  if (v7 <= a4)
  {
    v11 = powf((a4 + a1[11]) / (a1[11] + 1.0), a1[10]);
  }

  else
  {
    v11 = a4 / a1[13];
  }

  return ((v10 * a1[15]) + (a1[14] * v8)) + (a1[16] * v11);
}

float sub_29A12BB4C(float a1, float a2, float a3)
{
  v3 = a3 + (a1 + a2);
  result = 0.0;
  if (v3 != 0.0)
  {
    return a2;
  }

  return result;
}

void sub_29A12BB84(void **a1)
{
  if (a1)
  {
    v2 = &unk_2A14F6268;
    v3 = 14;
    while (1)
    {
      v2 += 12;
      if (v2 == a1)
      {
        break;
      }

      if (!--v3)
      {
        free(*a1);

        free(a1);
        return;
      }
    }
  }
}

float sub_29A12BBF4@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = (v4 * v2) - (v3 * v5);
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = (v9 * v5) - (v4 * v11);
  v13 = 1.0 / (((*a1 * v7) - (v10 * ((v9 * v2) - (v3 * v11)))) + (v6 * v12));
  *a2 = v7 * v13;
  a2[1] = ((v3 * v11) - (v9 * v2)) * v13;
  a2[6] = ((v10 * v3) - (v6 * v4)) * v13;
  a2[7] = ((v6 * v9) - (v8 * v3)) * v13;
  a2[2] = v12 * v13;
  a2[3] = ((v6 * v5) - (v10 * v2)) * v13;
  a2[4] = ((v8 * v2) - (v6 * v11)) * v13;
  a2[5] = ((v10 * v11) - (v8 * v5)) * v13;
  result = ((v8 * v4) - (v10 * v9)) * v13;
  a2[8] = result;
  return result;
}

float32x2_t sub_29A12BCA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>, int32x4_t a7@<Q3>, int32x4_t a8@<Q4>, int8x16_t a9@<Q5>)
{
  a4.i32[0] = *a2;
  a7.i32[0] = *a1;
  a8.i32[0] = *(a1 + 4);
  a6.i32[0] = *(a2 + 12);
  a5.i32[0] = *(a2 + 24);
  a9.i32[0] = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  v14 = a8;
  *&v14.i32[1] = v12;
  v15 = vzip1q_s32(v14, v14);
  v15.i32[2] = a8.i32[0];
  v16 = a7;
  *&v16.i32[1] = v11;
  v17 = vzip1q_s32(v16, v16);
  v17.i32[2] = *a1;
  v18 = a9;
  *&v18.i32[1] = v13;
  v19 = vzip1q_s32(v18, v18);
  v19.i32[2] = a9.i32[0];
  a9.i64[0] = *(a2 + 4);
  v9.i64[0] = *(a2 + 16);
  v10.i64[0] = *(a2 + 28);
  v20 = vextq_s8(vextq_s8(a6, a6, 4uLL), v9, 0xCuLL);
  v20.i32[3] = v20.i32[0];
  v21 = vmulq_f32(v20, v15);
  v22 = vextq_s8(vextq_s8(a4, a4, 4uLL), a9, 0xCuLL);
  v22.i32[3] = v22.i32[0];
  v23 = vextq_s8(vextq_s8(a5, a5, 4uLL), v10, 0xCuLL);
  v23.i32[3] = v23.i32[0];
  *a3 = vmlaq_f32(vmlaq_f32(v21, v22, v17), v23, v19);
  *(a3 + 16) = vmla_n_f32(vmla_n_f32(vmul_n_f32(*v9.i8, v12), *a9.i8, v11), *v10.i8, v13);
  v19.i32[0] = *(a1 + 24);
  v17.i32[0] = *(a1 + 28);
  v24 = (*a6.i32 * v17.f32[0]) + (v19.f32[0] * *a4.i32);
  v25 = *(a1 + 32);
  *(a3 + 24) = v24 + (v25 * *a5.i32);
  result = vmla_n_f32(vmla_n_f32(vmul_n_f32(*v9.i8, v17.f32[0]), *a9.i8, v19.f32[0]), *v10.i8, v25);
  *(a3 + 28) = result;
  return result;
}

float sub_29A12BD6C(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  if (a1 && a2)
  {
    v36 = 0.0;
    v34 = 0u;
    v35 = 0u;
    v10 = *(a2 + 72);
    v32[0] = *(a2 + 56);
    v32[1] = v10;
    v33 = *(a2 + 88);
    v11 = *(a1 + 72);
    v37[0] = *(a1 + 56);
    v37[1] = v11;
    v38 = *(a1 + 88);
    *v12.i32 = sub_29A12BBF4(v37, v31);
    sub_29A12BCA8(v32, v31, &v34, v12, v13, v14, v15, v16, v17);
    v18 = *(a2 + 48);
    if (v18 <= a3)
    {
      v19 = powf((a3 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
    }

    else
    {
      v19 = a3 / *(a2 + 52);
    }

    if (v18 <= a4)
    {
      v20 = powf((a4 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
    }

    else
    {
      v20 = a4 / *(a2 + 52);
    }

    if (v18 <= a5)
    {
      v21 = powf((a5 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
    }

    else
    {
      v21 = a5 / *(a2 + 52);
    }

    v22 = ((v20 * *(&v34 + 1)) + (*&v34 * v19)) + (*(&v34 + 2) * v21);
    v23 = ((v20 * *&v35) + (*(&v34 + 3) * v19)) + (*(&v35 + 1) * v21);
    v24 = (v20 * *(&v35 + 3)) + (*(&v35 + 2) * v19);
    v25 = v36;
    v26 = *(a1 + 52);
    v27 = *(a1 + 48) / v26;
    if (v27 <= v22)
    {
      v28 = *(a1 + 44);
      a3 = -(v28 - ((v28 + 1.0) * powf(v22, 1.0 / *(a1 + 40))));
    }

    else
    {
      a3 = v22 * v26;
    }

    v29 = v24 + (v25 * v21);
    if (v27 <= v23)
    {
      powf(v23, 1.0 / *(a1 + 40));
    }

    if (v27 <= v29)
    {
      powf(v29, 1.0 / *(a1 + 40));
    }
  }

  return a3;
}

void sub_29A12BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v52 = 0.0;
        v50 = 0u;
        v51 = 0u;
        v8 = *(a2 + 72);
        v48[0] = *(a2 + 56);
        v48[1] = v8;
        v49 = *(a2 + 88);
        v9 = *(a1 + 72);
        v53[0] = *(a1 + 56);
        v53[1] = v9;
        v54 = *(a1 + 88);
        *v10.i32 = sub_29A12BBF4(v53, v47);
        sub_29A12BCA8(v48, v47, &v50, v10, v11, v12, v13, v14, v15);
        if (a4)
        {
          v16 = (a3 + 8);
          v17 = a4;
          do
          {
            v18 = *(v16 - 2);
            v19 = *(v16 - 1);
            v20 = *v16;
            v21 = *(a2 + 48);
            if (v21 <= v18)
            {
              v22 = powf((v18 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v22 = v18 / *(a2 + 52);
            }

            if (v21 <= v19)
            {
              v23 = powf((v19 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v23 = v19 / *(a2 + 52);
            }

            if (v21 <= v20)
            {
              v24 = powf((v20 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v24 = v20 / *(a2 + 52);
            }

            *(v16 - 2) = v22;
            *(v16 - 1) = v23;
            *v16 = v24;
            v16 += 3;
            --v17;
          }

          while (v17);
          v25 = v50;
          v26 = v51;
          v27 = (a3 + 8);
          v28 = a4;
          v29 = v52;
          do
          {
            v30 = *(v27 - 2);
            v31 = *(v27 - 1);
            v32 = ((v31 * *(&v25 + 1)) + (*&v25 * v30)) + (*(&v25 + 2) * *v27);
            v33 = ((v31 * *&v26) + (*(&v25 + 3) * v30)) + (*(&v26 + 1) * *v27);
            v34 = ((v31 * *(&v26 + 3)) + (*(&v26 + 2) * v30)) + (v29 * *v27);
            *(v27 - 2) = v32;
            *(v27 - 1) = v33;
            *v27 = v34;
            v27 += 3;
            --v28;
          }

          while (v28);
          v35 = (a3 + 8);
          do
          {
            v36 = *(v35 - 2);
            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = *(a1 + 52);
            v40 = *(a1 + 48) / v39;
            if (v40 <= v36)
            {
              v42 = *(a1 + 44);
              v41 = -(v42 - ((v42 + 1.0) * powf(v36, 1.0 / *(a1 + 40))));
            }

            else
            {
              v41 = v36 * v39;
            }

            if (v40 <= v37)
            {
              v44 = *(a1 + 44);
              v43 = -(v44 - ((v44 + 1.0) * powf(v37, 1.0 / *(a1 + 40))));
            }

            else
            {
              v43 = v37 * v39;
            }

            if (v40 <= v38)
            {
              v46 = *(a1 + 44);
              v45 = -(v46 - ((v46 + 1.0) * powf(v38, 1.0 / *(a1 + 40))));
            }

            else
            {
              v45 = v38 * v39;
            }

            *(v35 - 2) = v41;
            *(v35 - 1) = v43;
            *v35 = v45;
            v35 += 3;
            --a4;
          }

          while (a4);
        }
      }
    }
  }
}

void sub_29A12C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v52 = 0.0;
        v50 = 0u;
        v51 = 0u;
        v8 = *(a2 + 72);
        v48[0] = *(a2 + 56);
        v48[1] = v8;
        v49 = *(a2 + 88);
        v9 = *(a1 + 72);
        v53[0] = *(a1 + 56);
        v53[1] = v9;
        v54 = *(a1 + 88);
        *v10.i32 = sub_29A12BBF4(v53, v47);
        sub_29A12BCA8(v48, v47, &v50, v10, v11, v12, v13, v14, v15);
        if (a4)
        {
          v16 = (a3 + 8);
          v17 = a4;
          do
          {
            v18 = *(v16 - 2);
            v19 = *(v16 - 1);
            v20 = *v16;
            v21 = *(a2 + 48);
            if (v21 <= v18)
            {
              v22 = powf((v18 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v22 = v18 / *(a2 + 52);
            }

            if (v21 <= v19)
            {
              v23 = powf((v19 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v23 = v19 / *(a2 + 52);
            }

            if (v21 <= v20)
            {
              v24 = powf((v20 + *(a2 + 44)) / (*(a2 + 44) + 1.0), *(a2 + 40));
            }

            else
            {
              v24 = v20 / *(a2 + 52);
            }

            *(v16 - 2) = v22;
            *(v16 - 1) = v23;
            *v16 = v24;
            v16 += 4;
            --v17;
          }

          while (v17);
          v25 = v50;
          v26 = v51;
          v27 = (a3 + 8);
          v28 = a4;
          v29 = v52;
          do
          {
            v30 = *(v27 - 2);
            v31 = *(v27 - 1);
            v32 = ((v31 * *(&v25 + 1)) + (*&v25 * v30)) + (*(&v25 + 2) * *v27);
            v33 = ((v31 * *&v26) + (*(&v25 + 3) * v30)) + (*(&v26 + 1) * *v27);
            v34 = ((v31 * *(&v26 + 3)) + (*(&v26 + 2) * v30)) + (v29 * *v27);
            *(v27 - 2) = v32;
            *(v27 - 1) = v33;
            *v27 = v34;
            v27 += 4;
            --v28;
          }

          while (v28);
          v35 = (a3 + 8);
          do
          {
            v36 = *(v35 - 2);
            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = *(a1 + 52);
            v40 = *(a1 + 48) / v39;
            if (v40 <= v36)
            {
              v42 = *(a1 + 44);
              v41 = -(v42 - ((v42 + 1.0) * powf(v36, 1.0 / *(a1 + 40))));
            }

            else
            {
              v41 = v36 * v39;
            }

            if (v40 <= v37)
            {
              v44 = *(a1 + 44);
              v43 = -(v44 - ((v44 + 1.0) * powf(v37, 1.0 / *(a1 + 40))));
            }

            else
            {
              v43 = v37 * v39;
            }

            if (v40 <= v38)
            {
              v46 = *(a1 + 44);
              v45 = -(v46 - ((v46 + 1.0) * powf(v38, 1.0 / *(a1 + 40))));
            }

            else
            {
              v45 = v38 * v39;
            }

            *(v35 - 2) = v41;
            *(v35 - 1) = v43;
            *v35 = v45;
            v35 += 4;
            --a4;
          }

          while (a4);
        }
      }
    }
  }
}

float sub_29A12C468(uint64_t a1, float a2, float a3, float a4)
{
  if (!a1)
  {
    return 0.0;
  }

  v21 = 0.0;
  v19 = 0u;
  v20 = 0u;
  v8 = *(a1 + 72);
  v22[0] = *(a1 + 56);
  v22[1] = v8;
  v23 = *(a1 + 88);
  sub_29A12BBF4(v22, &v19);
  v9 = ((a3 * *(&v19 + 1)) + (*&v19 * a2)) + (*(&v19 + 2) * a4);
  v10 = ((a3 * *&v20) + (*(&v19 + 3) * a2)) + (*(&v20 + 1) * a4);
  v11 = (a3 * *(&v20 + 3)) + (*(&v20 + 2) * a2);
  v12 = v21;
  v13 = *(a1 + 52);
  v14 = *(a1 + 48) / v13;
  if (v14 <= v9)
  {
    v16 = *(a1 + 44);
    v15 = -(v16 - ((v16 + 1.0) * powf(v9, 1.0 / *(a1 + 40))));
  }

  else
  {
    v15 = v9 * v13;
  }

  v17 = v11 + (v12 * a4);
  if (v14 <= v10)
  {
    powf(v10, 1.0 / *(a1 + 40));
  }

  if (v14 <= v17)
  {
    powf(v17, 1.0 / *(a1 + 40));
  }

  return v15;
}

const char **sub_29A12C5C4(char *__s1)
{
  if (!__s1)
  {
    return 0;
  }

  v2 = &off_2A14F62C8;
  v3 = 14;
  while (strcmp(__s1, *v2))
  {
    v2 += 12;
    if (!--v3)
    {
      return 0;
    }
  }

  sub_29A12B5F0(v2);
  return v2;
}

uint64_t sub_29A12C62C(float *a1, _OWORD *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a1[8] == 0.0)
    {
      return 0;
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 2);
      a2[1] = *(a1 + 1);
      a2[2] = v5;
      *a2 = v4;
      return 1;
    }
  }

  return result;
}

__n128 sub_29A12C668(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    *a2 = *a1;
    *(a2 + 44) = *(a1 + 40);
    result = *(a1 + 56);
    v4 = *(a1 + 72);
    *(a2 + 40) = *(a1 + 88);
    *(a2 + 24) = v4;
    *(a2 + 8) = result;
  }

  return result;
}

float sub_29A12C6A8(uint64_t a1, _DWORD *a2, float *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      *a2 = *(a1 + 48);
      result = *(a1 + 52);
      *a3 = result;
    }
  }

  return result;
}

void sub_29A12C7B4(uint64_t a1, float a2, float a3, float a4)
{
  fabsf(sub_29A12C468(a1, (a2 * a3) / a4, a2, (a2 * ((1.0 - a3) - a4)) / a4));
  __asm
  {
    FMOV            V5.2S, #-1.0
    FMOV            V5.2S, #1.0
  }
}

double *pxrInternal__aapl__pxrReserved__::GfBBox3d::_SetMatrices(pxrInternal__aapl__pxrReserved__::GfBBox3d *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v16 = 0.0;
  *(this + 304) = 0;
  v3 = *(a2 + 3);
  v5 = *a2;
  v4 = *(a2 + 1);
  *(this + 5) = *(a2 + 2);
  *(this + 6) = v3;
  *(this + 3) = v5;
  *(this + 4) = v4;
  v6 = *(a2 + 7);
  v8 = *(a2 + 4);
  v7 = *(a2 + 5);
  *(this + 9) = *(a2 + 6);
  *(this + 10) = v6;
  *(this + 7) = v8;
  *(this + 8) = v7;
  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(a2, &v16, 1.0e-13, v15);
  v10 = v15[5];
  *(this + 15) = v15[4];
  *(this + 16) = v10;
  v11 = v15[7];
  *(this + 17) = v15[6];
  *(this + 18) = v11;
  v12 = v15[1];
  *(this + 11) = v15[0];
  *(this + 12) = v12;
  v13 = fabs(v16);
  v14 = v15[3];
  *(this + 13) = v15[2];
  *(this + 14) = v14;
  if (v13 <= 1.0e-13)
  {
    *(this + 304) = 1;
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(this + 176, 1.0);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfBBox3d::GetVolume(pxrInternal__aapl__pxrReserved__::GfBBox3d *this)
{
  v1 = *(this + 3);
  if (*this <= v1 && (v2 = *(this + 1), v3 = *(this + 4), v2 <= v3) && (v4 = *(this + 2), v5 = *(this + 5), v4 <= v5))
  {
    return fabs((v5 - v4) * ((v3 - v2) * ((v1 - *this) * pxrInternal__aapl__pxrReserved__::GfMatrix4d::_GetDeterminant3((this + 48), 0, 1, 2, 0, 1, 2))));
  }

  else
  {
    return 0.0;
  }
}

double pxrInternal__aapl__pxrReserved__::GfBBox3d::ComputeAlignedRange@<D0>(pxrInternal__aapl__pxrReserved__::GfBBox3d *this@<X0>, uint64_t a2@<X8>)
{
  if (*this <= *(this + 3) && *(this + 1) <= *(this + 4) && *(this + 2) <= *(this + 5))
  {
    v4 = 0;
    v5 = this + 48;
    v6 = *(this + 19);
    v7 = *(this + 20);
    *&v19 = *(this + 18);
    *(&v19 + 1) = v6;
    v20 = v7;
    *&v17 = v19;
    *(&v17 + 1) = v6;
    v18 = v7;
    do
    {
      v8 = 0;
      v9 = *(&v17 + v4);
      v10 = *(&v19 + v4);
      v11 = this;
      do
      {
        v12 = *&v5[v8];
        v13 = *v11 * v12;
        v14 = v12 * v11[3];
        if (v13 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        if (v13 >= v14)
        {
          v14 = v13;
        }

        v10 = v15 + v10;
        v9 = v14 + v9;
        v8 += 32;
        ++v11;
      }

      while (v8 != 96);
      *(&v19 + v4) = v10;
      *(&v17 + v4++) = v9;
      v5 += 8;
    }

    while (v4 != 3);
    *a2 = v19;
    *(a2 + 16) = v20;
    *&v3 = v17;
    *(a2 + 24) = v17;
    *(a2 + 40) = v18;
  }

  else
  {
    v2 = *(this + 1);
    *a2 = *this;
    *(a2 + 16) = v2;
    v3 = *(this + 2);
    *(a2 + 32) = v3;
  }

  return *&v3;
}

void *pxrInternal__aapl__pxrReserved__::GfBBox3d::Combine@<X0>(pxrInternal__aapl__pxrReserved__::GfBBox3d *this@<X0>, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A12D048(a3);
  if (*this <= *(this + 3) && *(this + 1) <= *(this + 4) && *(this + 2) <= *(this + 5))
  {
    if (*a2 > *(a2 + 3) || *(a2 + 1) > *(a2 + 4) || *(a2 + 2) > *(a2 + 5))
    {
      v7 = a3;
      v8 = this;
      goto LABEL_5;
    }

    if (*(this + 304) == 1)
    {
      if (*(a2 + 304))
      {
        pxrInternal__aapl__pxrReserved__::GfBBox3d::ComputeAlignedRange(this, &v21);
        pxrInternal__aapl__pxrReserved__::GfBBox3d::ComputeAlignedRange(a2, &v24);
        *&v10.f64[0] = v25.i64[0];
        *&v10.f64[1] = v22.i64[1];
        *&v11.f64[0] = v22.i64[0];
        *&v11.f64[1] = v25.i64[1];
        v27[0] = vbslq_s8(vcgtq_f64(v21, v24), v24, v21);
        v27[1] = vbslq_s8(vcgtq_f64(v11, v10), v25, v22);
        v27[2] = vbslq_s8(vcgtq_f64(v26, v23), v26, v23);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v28, 1.0);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v29, 1.0);
        v29[64] = 0;
LABEL_17:
        v8 = v27;
LABEL_27:
        v7 = a3;
        goto LABEL_5;
      }

      v12 = a2;
      v13 = this;
    }

    else
    {
      if (!*(a2 + 304))
      {
        pxrInternal__aapl__pxrReserved__::GfBBox3d::_CombineInOrder(this, a2, v27);
        pxrInternal__aapl__pxrReserved__::GfBBox3d::_CombineInOrder(a2, this, &v21);
        Volume = pxrInternal__aapl__pxrReserved__::GfBBox3d::GetVolume(v27);
        v15 = pxrInternal__aapl__pxrReserved__::GfBBox3d::GetVolume(&v21);
        v16 = Volume < v15;
        if (Volume >= v15)
        {
          v17 = Volume;
        }

        else
        {
          v17 = v15;
        }

        v18 = fmax(fabs(v17) * 0.000001, 1.0e-10);
        v19 = vabdd_f64(Volume, v15);
        if (!v16 && v19 > v18)
        {
          v8 = &v21;
        }

        else
        {
          v8 = v27;
        }

        goto LABEL_27;
      }

      v12 = this;
      v13 = a2;
    }

    pxrInternal__aapl__pxrReserved__::GfBBox3d::_CombineInOrder(v12, v13, v27);
    goto LABEL_17;
  }

  v7 = a3;
  v8 = a2;
LABEL_5:
  result = memcpy(v7, v8, 0x132uLL);
  *(a3 + 305) = (*(this + 305) | *(a2 + 305)) & 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfBBox3d::_CombineInOrder@<X0>(pxrInternal__aapl__pxrReserved__::GfBBox3d *this@<X0>, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2@<X1>, void *a3@<X8>)
{
  sub_29A12D048(v28);
  v7 = *(a2 + 1);
  v28[0] = *a2;
  v28[1] = v7;
  v8 = *(a2 + 3);
  v28[2] = *(a2 + 2);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 6);
  v24 = *(a2 + 7);
  v25 = v9;
  v12 = *(a2 + 10);
  v26 = v10;
  v27 = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v20 = v8;
  v21 = v13;
  v22 = v14;
  v23 = v11;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v20, this + 22);
  v28[7] = v24;
  v28[8] = v25;
  v28[9] = v26;
  v28[10] = v27;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v23;
  v15 = *(this + 8);
  v24 = *(this + 7);
  v25 = v15;
  v16 = *(this + 10);
  v26 = *(this + 9);
  v27 = v16;
  v17 = *(this + 4);
  v20 = *(this + 3);
  v21 = v17;
  v18 = *(this + 6);
  v22 = *(this + 5);
  v23 = v18;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v20, a2 + 22);
  v28[15] = v24;
  v28[16] = v25;
  v28[17] = v26;
  v28[18] = v27;
  v28[11] = v20;
  v28[12] = v21;
  v28[13] = v22;
  v28[14] = v23;
  pxrInternal__aapl__pxrReserved__::GfBBox3d::ComputeAlignedRange(v28, &v20);
  memcpy(a3, this, 0x138uLL);
  return sub_29A12CDFC(a3, &v20);
}

uint64_t sub_29A12CDFC(uint64_t result, uint64_t a2)
{
  if (*a2 < *result)
  {
    *result = *a2;
  }

  v2 = *(a2 + 8);
  if (v2 < *(result + 8))
  {
    *(result + 8) = v2;
  }

  v3 = *(a2 + 16);
  if (v3 < *(result + 16))
  {
    *(result + 16) = v3;
  }

  v4 = *(a2 + 24);
  if (v4 > *(result + 24))
  {
    *(result + 24) = v4;
  }

  v5 = *(a2 + 32);
  if (v5 > *(result + 32))
  {
    *(result + 32) = v5;
  }

  v6 = *(a2 + 40);
  if (v6 > *(result + 40))
  {
    *(result + 40) = v6;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfBBox3d::ComputeCentroid(pxrInternal__aapl__pxrReserved__::GfBBox3d *this)
{
  v1 = (*(this + 5) + *(this + 2)) * 0.5;
  __asm { FMOV            V2.2D, #0.5 }

  v8 = vmulq_f64(vaddq_f64(*(this + 24), *this), _Q2);
  v9 = v1;
  return sub_29A12CECC(this + 6, v8.f64);
}

double sub_29A12CECC(double *a1, double *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a1[12] + *a2 * *a1 + v2 * a1[4] + v3 * a1[8];
  v5 = a1[15] + *a2 * a1[3] + v2 * a1[7] + v3 * a1[11];
  v6 = 1.0 / v5;
  if (v5 == 0.0)
  {
    v6 = 1.0;
  }

  return v4 * v6;
}

uint64_t sub_29A12D048(uint64_t a1)
{
  *a1 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a1 + 16) = xmmword_29B43C5A0;
  *(a1 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 48, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 176, 1.0);
  *(a1 + 304) = 0;
  return a1;
}

void sub_29A12D0B0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040660, 0, "GfCamera::Perspective", "perspective");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040660, 1, "GfCamera::Orthographic", "orthographic");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040670, 0, "GfCamera::FOVHorizontal", "FOVHorizontal");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040670, 1, "GfCamera::FOVVertical", "FOVVertical");
}

void pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(uint64_t a1, __int128 *a2, int a3, void *a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v14;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 128) = a3;
  *(a1 + 132) = a5;
  *(a1 + 136) = a6;
  *(a1 + 140) = a7;
  *(a1 + 144) = a8;
  *(a1 + 148) = a9;
  *(a1 + 152) = *a4;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
}

{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v14;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 128) = a3;
  *(a1 + 132) = a5;
  *(a1 + 136) = a6;
  *(a1 + 140) = a7;
  *(a1 + 144) = a8;
  *(a1 + 148) = a9;
  *(a1 + 152) = *a4;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
}

__n128 pxrInternal__aapl__pxrReserved__::GfCamera::SetTransform(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GfCamera::SetPerspectiveFromAspectRatioAndFieldOfView(uint64_t a1, int a2, float a3, float a4, float a5)
{
  *(a1 + 128) = 0;
  v8 = a5;
  v9 = a3;
  v10 = a3 == 0.0;
  v11 = 1.0;
  if (!v10)
  {
    v11 = v9;
  }

  v12 = v8 / v11;
  *(a1 + 132) = a5;
  *(a1 + 136) = v12;
  v13 = tan(a4 * 0.0174532925 * 0.5);
  if (v13 == 0.0)
  {
    v14 = 50.0;
  }

  else
  {
    if (a2)
    {
      v15 = v12;
    }

    else
    {
      v15 = a5;
    }

    v14 = v15 * 0.1 / (v13 + v13) / 0.1;
  }

  *(a1 + 148) = v14;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfCamera::SetOrthographicFromAspectRatioAndSize(uint64_t result, int a2, float a3, float a4)
{
  *(result + 128) = 1;
  *(result + 148) = 1112014848;
  v4 = a4 / 0.1;
  if (a2)
  {
    *(result + 132) = v4 * a3;
    *(result + 136) = v4;
  }

  else
  {
    *(result + 132) = v4;
    if (a3 <= 0.0)
    {
      *(result + 136) = v4;
    }

    else
    {
      *(result + 136) = v4 / a3;
    }
  }

  return result;
}

float pxrInternal__aapl__pxrReserved__::GfCamera::SetFromViewAndProjectionMatrix(pxrInternal__aapl__pxrReserved__::GfCamera *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, float64x2_t *a3, float a4)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(a2, 0, 0.0, &v29);
  v8 = v34;
  *(this + 4) = v33;
  *(this + 5) = v8;
  v9 = v36;
  *(this + 6) = v35;
  *(this + 7) = v9;
  v10 = v30;
  *this = v29;
  *(this + 1) = v10;
  v11 = v32;
  *(this + 2) = v31;
  *(this + 3) = v11;
  *(this + 37) = a4;
  v12 = a3[5].f64[1];
  if (v12 >= -0.5)
  {
    if (fabs(v12) >= 0.000001)
    {
      *&v29 = "gf/camera.cpp";
      *(&v29 + 1) = "SetFromViewAndProjectionMatrix";
      *&v30 = 201;
      *(&v30 + 1) = "void pxrInternal__aapl__pxrReserved__::GfCamera::SetFromViewAndProjectionMatrix(const GfMatrix4d &, const GfMatrix4d &, const float)";
      LOBYTE(v31) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v29, "GfCamera: Given projection matrix does not appear to be valid orthographic matrix.", v7);
    }

    *(this + 32) = 1;
    v23 = *a3;
    v23.f64[1] = a3[2].f64[1];
    __asm { FMOV            V1.2D, #20.0 }

    *&v23.f64[0] = vcvt_f32_f64(vdivq_f64(_Q1, v23));
    *(this + 132) = v23.f64[0];
    __asm { FMOV            V1.2D, #-0.5 }

    *(this + 140) = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*&v23.f64[0]), _Q1), a3[6]));
    _Q1.f64[0] = 1.0 / a3[5].f64[0];
    v26 = _Q1.f64[0] * a3[7].f64[0];
    v21 = _Q1.f64[0] + v26;
    v22 = v26 - _Q1.f64[0];
  }

  else
  {
    if (fabs(v12 + 1.0) >= 0.000001)
    {
      *&v29 = "gf/camera.cpp";
      *(&v29 + 1) = "SetFromViewAndProjectionMatrix";
      *&v30 = 179;
      *(&v30 + 1) = "void pxrInternal__aapl__pxrReserved__::GfCamera::SetFromViewAndProjectionMatrix(const GfMatrix4d &, const GfMatrix4d &, const float)";
      LOBYTE(v31) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v29, "GfCamera: Given projection matrix does not appear to be valid perspective matrix.", v7);
    }

    *(this + 32) = 0;
    v13 = *a3;
    v13.f64[1] = a3[2].f64[1];
    v14 = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64((a4 + a4)), 0), v13));
    *(this + 132) = v14;
    __asm { FMOV            V1.2D, #0.5 }

    *(this + 140) = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v14), _Q1), a3[4]));
    _Q1.f64[0] = a3[7].f64[0];
    v20 = a3[5].f64[0];
    v21 = _Q1.f64[0] / (v20 + -1.0);
    v22 = _Q1.f64[0] / (v20 + 1.0);
  }

  result = v21;
  v28 = v22;
  *(this + 38) = result;
  *(this + 39) = v28;
  return result;
}

char **pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingPlanes(uint64_t a1, char **a2)
{
  result = (a1 + 160);
  if (result != a2)
  {
    return sub_29A12D958(result, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform@<Q0>(pxrInternal__aapl__pxrReserved__::GfCamera *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 5);
  *(a2 + 64) = *(this + 4);
  *(a2 + 80) = v2;
  v3 = *(this + 7);
  *(a2 + 96) = *(this + 6);
  *(a2 + 112) = v3;
  v4 = *(this + 1);
  *a2 = *this;
  *(a2 + 16) = v4;
  result = *(this + 2);
  v6 = *(this + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfCamera::GetAspectRatio(pxrInternal__aapl__pxrReserved__::GfCamera *this)
{
  v1 = *(this + 34);
  result = 0.0;
  if (v1 != 0.0)
  {
    return *(this + 33) / v1;
  }

  return result;
}

float pxrInternal__aapl__pxrReserved__::GfCamera::GetFieldOfView(uint64_t a1, int a2)
{
  v2 = 136;
  if (!a2)
  {
    v2 = 132;
  }

  v3 = atan(*(a1 + v2) * 0.1 / ((*(a1 + 148) + *(a1 + 148)) * 0.1));
  *&v3 = v3 + v3;
  return *&v3 * 57.2957795;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfCamera::GetFrustum@<X0>(pxrInternal__aapl__pxrReserved__::GfCamera *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vcvtq_f64_f32(vmul_f32(*(this + 132), 0x3F0000003F000000));
  v5 = vcvtq_f64_f32(*(this + 140));
  v6 = vsubq_f64(v5, v4);
  v7 = vaddq_f64(v4, v5);
  v8 = vdupq_n_s64(0x3FB999999999999AuLL);
  v9 = vmulq_f64(v6, v8);
  v10 = vmulq_f64(v7, v8);
  v19 = v9;
  v20 = v10;
  v11 = *(this + 32);
  if (v11 != 1)
  {
    v12 = *(this + 37);
    if (v12 != 0.0)
    {
      v13 = 1.0 / (v12 * 0.1);
      v14 = vdup_n_s32(v13 > 0.0);
      v15.i64[0] = v14.u32[0];
      v15.i64[1] = v14.u32[1];
      v16 = vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL));
      v19 = vmulq_n_f64(vbslq_s8(v16, v9, v10), v13);
      v20 = vmulq_n_f64(vbslq_s8(v16, v10, v9), v13);
    }
  }

  v18 = vcvtq_f64_f32(*(this + 152));
  return pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(a2, this, &v19, &v18, v11 != 1, 5.0);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfCamera::operator==(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(a1, a2);
  if (result)
  {
    if (*(a1 + 128) != *(a2 + 128) || *(a1 + 132) != *(a2 + 132) || *(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140) || *(a1 + 144) != *(a2 + 144) || *(a1 + 148) != *(a2 + 148) || *(a1 + 152) != *(a2 + 152) || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }

    result = sub_29A12D8C0((a1 + 160), a2 + 160);
    if (!result)
    {
      return result;
    }

    return *(a1 + 184) == *(a2 + 184) && *(a1 + 188) == *(a2 + 188);
  }

  return result;
}

uint64_t sub_29A12D8C0(float **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3])
    {
      return 0;
    }

    v3 += 4;
    v4 += 4;
  }

  return 1;
}

void *sub_29A12D958(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 4)
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

    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0D0518(v7, v11);
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

void sub_29A12DC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::GfColor *pxrInternal__aapl__pxrReserved__::GfColor::GfColor(pxrInternal__aapl__pxrReserved__::GfColor *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::GfColorSpaceNames);
  if (!v2)
  {
    v2 = sub_29A12DF94(&pxrInternal__aapl__pxrReserved__::GfColorSpaceNames);
  }

  pxrInternal__aapl__pxrReserved__::GfColorSpace::GfColorSpace(&v6, (v2 + 72));
  v3 = v7;
  *this = v6;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v7;
    *(this + 2) = 0;
    *(this + 6) = 0;
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
  }

  return this;
}

{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::GfColorSpaceNames);
  if (!v2)
  {
    v2 = sub_29A12DF94(&pxrInternal__aapl__pxrReserved__::GfColorSpaceNames);
  }

  pxrInternal__aapl__pxrReserved__::GfColorSpace::GfColorSpace(&v6, (v2 + 72));
  v3 = v7;
  *this = v6;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v7;
    *(this + 2) = 0;
    *(this + 6) = 0;
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfColor::GfColor(uint64_t result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfColor::GfColor(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = a3[1];
  *result = *a3;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 16) = v4;
  return result;
}

{
  v3 = a3[1];
  *result = *a3;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 16) = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfColor::GfColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  *a1 = *a3;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  *(a1 + 16) = sub_29A12BD6C(*v5, **a2, *(a2 + 16), *(a2 + 20), *(a2 + 24));
  *(a1 + 20) = v6;
  *(a1 + 24) = v7;
  return a1;
}

void sub_29A12DED0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GfColor::SetFromPlanckianLocus(uint64_t **this, float a2, float a3)
{
  sub_29A12C6C8();
  sub_29A12C7B4(**this, v4, v5, v6);
  *(this + 4) = v7;
  *(this + 5) = v8;
  *(this + 6) = v9;
}

float pxrInternal__aapl__pxrReserved__::GfColor::_GetChromaticity(pxrInternal__aapl__pxrReserved__::GfColor *this)
{
  v1 = sub_29A12BA30(**this, *(this + 4), *(this + 5), *(this + 6));
  sub_29A12BB4C(v1, v2, v3);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::GfColor::_SetFromChromaticity(uint64_t a1, float *a2)
{
  sub_29A12C7B4(**a1, 1.0, *a2, a2[1]);
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
}

pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType *sub_29A12DF94(atomic_ullong *a1)
{
  result = sub_29A12DFDC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType::~GfColorSpaceNames_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType *sub_29A12DFDC()
{
  v0 = operator new(0xA0uLL);
  pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType::GfColorSpaceNames_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType::~GfColorSpaceNames_StaticTokenType(pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType *this)
{
  v18 = (this + 136);
  sub_29A124AB0(&v18);
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 15);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 14);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 13);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 12);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 11);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 10);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 9);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 8);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 7);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 5);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 3);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 2);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 1);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType *pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType::GfColorSpaceNames_StaticTokenType(pxrInternal__aapl__pxrReserved__::GfColorSpaceNames_StaticTokenType *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lin_ciexyzd65_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "data", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "raw", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "unknown", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "lin_adobergb_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "lin_ap0_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "lin_ap1_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "lin_displayp3_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "lin_rec2020_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "lin_rec709_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "g18_rec709_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "g22_adobergb_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "g22_ap1_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "g22_rec709_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "srgb_p3d65_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "srgb_rec709_scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "srgb_ap1_scene", 0);
  v3 = (this + 136);
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v37 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v38 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v39 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v40 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  sub_29A12EF7C(v3, &v24, &v41, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v22 = *(&v24 + i);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A12E6F8(_Unwind_Exception *a1)
{
  v3 = 128;
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
      v5 = v1[16];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[15];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[14];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[13];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[12];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[11];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[10];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[9];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[8];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[7];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[6];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[5];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[4];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[3];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[2];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfColorSpace::IsValid(pxrInternal__aapl__pxrReserved__::GfColorSpace *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  if (EmptyString[23] < 0)
  {
    EmptyString = *EmptyString;
  }

  return sub_29A12C5C4(EmptyString) != 0;
}

pxrInternal__aapl__pxrReserved__::GfColorSpace *pxrInternal__aapl__pxrReserved__::GfColorSpace::GfColorSpace(pxrInternal__aapl__pxrReserved__::GfColorSpace *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = operator new(8uLL);
  *v4 = 0;
  v5 = sub_29A12EFF4(this, v4);
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (EmptyString[23] < 0)
  {
    EmptyString = *EmptyString;
  }

  v7 = sub_29A12C5C4(EmptyString);
  **this = v7;
  if (!v7)
  {
    if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(0);
    }

    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    v10 = v8;
    v13 = 1065353216;
    v11 = xmmword_29B43C6B8;
    v12 = unk_29B43C6C8;
    v14 = 1065353216;
    **this = sub_29A12B820(&v10, 0);
  }

  return this;
}

void sub_29A12EA20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::GfColorSpace::GfColorSpace(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, float a7, float a8)
{
  v16 = operator new(8uLL);
  *v16 = 0;
  v17 = sub_29A12EFF4(a1, v16);
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v21 = EmptyString;
  *&v19 = *a3;
  *(&v19 + 1) = *a4;
  v22 = v19;
  *&v19 = *a5;
  *(&v19 + 1) = *a6;
  v23 = v19;
  v24 = a7;
  v25 = a8;
  **a1 = sub_29A12B7BC(&v21);
  return a1;
}

void sub_29A12EB14(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::GfColorSpace *pxrInternal__aapl__pxrReserved__::GfColorSpace::GfColorSpace(pxrInternal__aapl__pxrReserved__::GfColorSpace *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a3, float a4, float a5)
{
  v10 = operator new(8uLL);
  *v10 = 0;
  v11 = sub_29A12EFF4(this, v10);
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v15 = EmptyString;
  v13 = *(a3 + 1);
  v16 = *a3;
  v17 = v13;
  v18 = *(a3 + 8);
  v19 = a4;
  v20 = a5;
  **this = sub_29A12B820(&v15, 0);
  return this;
}

void sub_29A12EBE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GfColorSpace::ConvertRGBSpan(uint64_t **a1, uint64_t **a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 3 && 3 * (a4 / 3) == a4)
  {
    v6 = **a2;
    v7 = **a1;

    sub_29A12BF88(v6, v7, a3, (a4 / 3));
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v8[0] = "gf/colorSpace.cpp";
    v8[1] = "ConvertRGBSpan";
    v8[2] = 109;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::GfColorSpace::ConvertRGBSpan(const GfColorSpace &, TfSpan<float>) const";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "RGB array size must be a multiple of 3");
  }
}

void pxrInternal__aapl__pxrReserved__::GfColorSpace::ConvertRGBASpan(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 4 || (a4 & 3) != 0)
  {
    v11 = v4;
    v12 = v5;
    v9[0] = "gf/colorSpace.cpp";
    v9[1] = "ConvertRGBASpan";
    v9[2] = 122;
    v9[3] = "void pxrInternal__aapl__pxrReserved__::GfColorSpace::ConvertRGBASpan(const GfColorSpace &, TfSpan<float>) const";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "RGBA array size must be a multiple of 4");
  }

  else
  {
    v6 = **a2;
    v7 = **a1;
    v8 = (a4 >> 2);

    sub_29A12C1F8(v6, v7, a3, v8);
  }
}

void pxrInternal__aapl__pxrReserved__::GfColorSpace::Convert(const pxrInternal__aapl__pxrReserved__::GfColorSpace *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, pxrInternal__aapl__pxrReserved__::GfColor *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfColor::GfColor(&v6, a3, a2);
  pxrInternal__aapl__pxrReserved__::GfColor::GfColor(a4, &v6, a1);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A12EDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GfColorSpace::GetName(uint64_t **this@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X8>)
{
  sub_29A12C668(**this, &v4);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2, v4);
  }

  else
  {
    *a2 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::GfColorSpace::GetRGBToXYZ(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  sub_29A12C668(**this, v6);
  if (v3)
  {
    v4 = v9;
    v5 = v8;
    *a2 = v7;
    *(a2 + 16) = v5;
    *(a2 + 32) = v4;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(a2, 1.0);
  }
}

float pxrInternal__aapl__pxrReserved__::GfColorSpace::GetLinearBias(uint64_t **this)
{
  sub_29A12C668(**this, v3);
  result = v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

float pxrInternal__aapl__pxrReserved__::GfColorSpace::GetGamma(uint64_t **this)
{
  sub_29A12C668(**this, v3);
  result = v4;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

float pxrInternal__aapl__pxrReserved__::GfColorSpace::GetTransferFunctionParams(uint64_t **this)
{
  v3 = 0.0;
  v2 = 0;
  sub_29A12C6A8(**this, &v3, &v2);
  return v3;
}

int8x16_t pxrInternal__aapl__pxrReserved__::GfColorSpace::GetPrimariesAndWhitePoint@<Q0>(float ***this@<X0>, int8x16_t *a2@<X8>)
{
  if (sub_29A12C62C(**this, &v7))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  v4 = vdupq_n_s32(v3);
  result = vandq_s8(v8, v4);
  v6 = vandq_s8(v9, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_29A12EF7C(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    return sub_29A372A00(v6, a2, a3);
  }

  return result;
}

void *sub_29A12EFF4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20406B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A12F054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A12F0E8(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A12F078(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A12F0A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2040700))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A12F0E8(uint64_t a1, void ***a2)
{
  if (a2)
  {
    sub_29A12BB84(*a2);

    operator delete(a2);
  }
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfDualQuatd::GfDualQuatd(float64x2_t *this, float32x2_t *a2)
{
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v4 + 2, a2 + 2);
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v4 + 2, a2 + 2);
  return this;
}

pxrInternal__aapl__pxrReserved__::GfDualQuatd *pxrInternal__aapl__pxrReserved__::GfDualQuatd::GfDualQuatd(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2)
{
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd((v4 + 32), a2 + 4);
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd((v4 + 32), a2 + 4);
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetLength(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this)
{
  v1 = sqrt(*this * *this + *(this + 1) * *(this + 1) + *(this + 2) * *(this + 2) + *(this + 3) * *(this + 3));
  result = 0.0;
  if (v1 != 0.0)
  {
    return v1;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetNormalized(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v3 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v3;
  v4 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v4;
  pxrInternal__aapl__pxrReserved__::GfDualQuatd::Normalize(a3, a2);
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatd::Normalize(float64x2_t *this, double a2)
{
  Length = pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetLength(this);
  if (Length >= a2)
  {
    v6 = vmulq_n_f64(*this, 1.0 / Length);
    v7 = this[3];
    v8 = vmulq_n_f64(this[2], 1.0 / Length);
    v9 = vmulq_f64(v6, v8);
    v10 = vmulq_n_f64(this[1], 1.0 / Length);
    *this = v6;
    this[1] = v10;
    v11 = vmulq_n_f64(v7, 1.0 / Length);
    v12 = vmulq_f64(v10, v11);
    *&v12.f64[0] = *&vaddq_f64(vdupq_laneq_s64(v12, 1), vaddq_f64(vaddq_f64(v9, vdupq_laneq_s64(v9, 1)), v12));
    v5 = vsubq_f64(v11, vmulq_n_f64(v10, v12.f64[0]));
    this[2] = vsubq_f64(v8, vmulq_n_f64(v6, v12.f64[0]));
  }

  else
  {
    this->f64[0] = 0.0;
    this->f64[1] = 0.0;
    this[1].f64[0] = 0.0;
    this[1].f64[1] = 1.0;
    v5 = 0uLL;
    this[2] = 0u;
  }

  this[3] = v5;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetConjugate@<Q0>(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  v3 = -*(this + 2);
  v4 = *(this + 7);
  v5 = -*(this + 6);
  *a2 = vnegq_f64(*this);
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  result = vnegq_f64(*(this + 2));
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 56) = v4;
  return result;
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetInverse@<X0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = this[1].f64[0];
  v4 = this[1].f64[1];
  v5 = vaddvq_f64(vmulq_f64(v2, v2)) + v3 * v3 + v4 * v4;
  if (v5 <= 0.0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    v9 = 1.0;
  }

  else
  {
    v6 = 1.0 / v5;
    v8 = this[3].f64[0];
    v7 = this[3].f64[1];
    v9 = v4 * (1.0 / v5);
    v10 = -(v3 * v6);
    v11 = v6 * v7;
    v12 = v4 * v7;
    *(a2 + 16) = v10;
    v13 = this[2];
    v14 = vmulq_n_f64(vnegq_f64(v2), v6);
    v15 = (v6 + v6) * (vaddvq_f64(vmulq_f64(v2, v13)) + v3 * v8 + v12);
    *a2 = v14;
    *(a2 + 32) = vsubq_f64(vmulq_n_f64(vnegq_f64(v13), v6), vmulq_n_f64(v14, v15));
    *(a2 + 48) = -(v8 * v6) - v10 * v15;
    *(a2 + 56) = v11 - v9 * v15;
  }

  *(a2 + 24) = v9;
  return this;
}

__n128 pxrInternal__aapl__pxrReserved__::GfDualQuatd::SetTranslation(uint64_t a1, float64x2_t *a2)
{
  v3 = a2[1].f64[0];
  __asm { FMOV            V3.2D, #0.5 }

  v12 = vmulq_f64(*a2, _Q3);
  v13 = v3 * 0.5;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::GfQuatd::operator*=(v12.f64, a1);
  result = *v9;
  v11 = *(v9 + 16);
  *(a1 + 32) = *v9;
  *(a1 + 48) = v11;
  return result;
}

__int128 *pxrInternal__aapl__pxrReserved__::GfDualQuatd::operator*=(__int128 *a1, double *a2)
{
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  pxrInternal__aapl__pxrReserved__::GfQuatd::operator*=(&v17, a2);
  v15 = v5[1];
  v16 = *v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  pxrInternal__aapl__pxrReserved__::GfQuatd::operator*=(&v17, a2 + 4);
  v13 = v7[1];
  v14 = *v7;
  v8 = a1[3];
  v17 = a1[2];
  v18 = v8;
  pxrInternal__aapl__pxrReserved__::GfQuatd::operator*=(&v17, a2);
  v10 = vaddq_f64(v14, *v9);
  v11 = vaddq_f64(v13, v9[1]);
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v10;
  a1[3] = v11;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, __int128 *a2)
{
  LOBYTE(v11[0]) = 40;
  v3 = sub_29A00911C(a1, v11, 1);
  v4 = a2[1];
  v11[0] = *a2;
  v11[1] = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, v11);
  v6 = sub_29A00911C(v5, ", ", 2);
  v7 = a2[3];
  v10[0] = a2[2];
  v10[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, v10);
  v12 = 41;
  return sub_29A00911C(v8, &v12, 1);
}

{
  LOBYTE(v26[0]) = 91;
  v4 = sub_29A00911C(a1, v26, 1);
  v5 = *(a2 + 2);
  v27 = *a2;
  v28 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v4, &v27);
  v7 = sub_29A00911C(v6, " ", 1);
  v8 = *(a2 + 40);
  v26[0] = *(a2 + 24);
  v26[1] = v8;
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v7, v26);
  v10 = sub_29A00911C(v9, " ", 1);
  v11 = *(a2 + 72);
  v25[0] = *(a2 + 56);
  v25[1] = v11;
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v25);
  v13 = sub_29A00911C(v12, " ", 1);
  v24 = *(a2 + 88);
  v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, &v24);
  v15 = sub_29A00911C(v14, " ", 1);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, *(a2 + 13));
  v17 = sub_29A00911C(v16, " ", 1);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2040758, *(a2 + 28), __p);
  if ((v23 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = sub_29A00911C(v17, v18, v19);
  v29 = 93;
  sub_29A00911C(v20, &v29, 1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

{
  LOBYTE(v9) = 91;
  v3 = sub_29A00911C(a1, &v9, 1);
  v4 = *(a2 + 2);
  v9 = *a2;
  v10 = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v9);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, *(a2 + 3));
  v11 = 93;
  return sub_29A00911C(v7, &v11, 1);
}

{
  v2 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a2;
  v6 = v2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a1, &v4);
}

{
  LOBYTE(v12) = 91;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = *(a2 + 2);
  v12 = *a2;
  v13 = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v12);
  v6 = sub_29A00911C(v5, "...", 3);
  v7 = *(a2 + 5);
  v10 = *(a2 + 24);
  v11 = v7;
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, &v10);
  v14 = 93;
  return sub_29A00911C(v8, &v14, 1);
}

{
  LOBYTE(v12) = 91;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = *(a2 + 2);
  v12 = *a2;
  v13 = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v12);
  v6 = sub_29A00911C(v5, " >> ", 4);
  v7 = *(a2 + 5);
  v10 = *(a2 + 24);
  v11 = v7;
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, &v10);
  v14 = 93;
  return sub_29A00911C(v8, &v14, 1);
}

{
  LOBYTE(v9) = 91;
  v3 = sub_29A00911C(a1, &v9, 1);
  v4 = *(a2 + 2);
  v9 = *a2;
  v10 = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v9);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, *(a2 + 3));
  v11 = 93;
  return sub_29A00911C(v7, &v11, 1);
}

float32x4_t *pxrInternal__aapl__pxrReserved__::GfDualQuatf::GfDualQuatf(float32x4_t *this, __n128 *a2)
{
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(v4 + 1, a2 + 2);
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(v4 + 1, a2 + 2);
  return this;
}

pxrInternal__aapl__pxrReserved__::GfDualQuatf *pxrInternal__aapl__pxrReserved__::GfDualQuatf::GfDualQuatf(pxrInternal__aapl__pxrReserved__::GfDualQuatf *this, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2)
{
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf((v4 + 16), a2 + 4);
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf((v4 + 16), a2 + 4);
  return this;
}

float pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetLength(pxrInternal__aapl__pxrReserved__::GfDualQuatf *this)
{
  v1 = sqrtf((((*this * *this) + (*(this + 1) * *(this + 1))) + (*(this + 2) * *(this + 2))) + (*(this + 3) * *(this + 3)));
  result = 0.0;
  if (v1 != 0.0)
  {
    return v1;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetNormalized(pxrInternal__aapl__pxrReserved__::GfDualQuatf *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  v3 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v3;
  pxrInternal__aapl__pxrReserved__::GfDualQuatf::Normalize(a3, a2);
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatf::Normalize(float32x4_t *this, float a2)
{
  Length = pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetLength(this);
  if (Length >= a2)
  {
    v5 = vmulq_n_f32(*this, 1.0 / Length);
    v6 = vmulq_n_f32(this[1], 1.0 / Length);
    v7 = vmulq_f32(v5, v6);
    *this = v5;
    this[1] = vsubq_f32(v6, vmulq_n_f32(v5, vadd_f32(vdup_laneq_s32(v7, 3), vadd_f32(vadd_f32(*v7.i8, vdup_lane_s32(*v7.i8, 1)), *&vextq_s8(v7, v7, 8uLL))).f32[0]));
  }

  else
  {
    *this = xmmword_29B43C8B0;
    this[1].i64[0] = 0;
    this[1].i64[1] = 0;
  }
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetConjugate@<D0>(float32x2_t *this@<X0>, float32x2_t *a2@<X8>)
{
  v2 = this[1].i32[1];
  v3 = -this[1].f32[0];
  v4 = this[3].i32[1];
  v5 = -this[3].f32[0];
  *a2 = vneg_f32(*this);
  a2[1].f32[0] = v3;
  a2[1].i32[1] = v2;
  result = vneg_f32(this[2]);
  a2[2] = result;
  a2[3].f32[0] = v5;
  a2[3].i32[1] = v4;
  return result;
}

unint64_t *pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetInverse@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q1>, float32x4_t a4@<Q5>)
{
  a3.i64[0] = *this;
  v4 = this[1];
  v5 = vmul_f32(*a3.f32, *a3.f32);
  v6 = vmul_f32(v4, v4);
  v7 = vadd_f32(vadd_f32(vadd_f32(v5, vdup_lane_s32(v5, 1)), v6), vdup_lane_s32(v6, 1)).f32[0];
  if (v7 <= 0.0)
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v16 = 1.0;
    v14.i32[0] = 0;
    v15 = 0;
    v17 = 0;
  }

  else
  {
    v8 = 1.0 / v7;
    a4.i64[0] = this[2];
    v9 = this[3];
    v10 = vmul_f32(*a3.f32, *a4.f32);
    v11 = vmul_f32(v4, v9);
    v12 = (v8 + v8) * vadd_f32(vadd_f32(vadd_f32(v10, vdup_lane_s32(v10, 1)), v11), vdup_lane_s32(v11, 1)).f32[0];
    v13.i64[0] = vnegq_f32(a3).u64[0];
    v13.f32[2] = -v4.f32[0];
    v13.i32[3] = HIDWORD(this[1]);
    v14 = vmulq_n_f32(v13, v8);
    v13.i64[0] = vnegq_f32(a4).u64[0];
    v13.f32[2] = -v9.f32[0];
    v13.i32[3] = v9.i32[1];
    *(a2 + 16) = vsubq_f32(vmulq_n_f32(v13, v8), vmulq_n_f32(v14, v12));
    v15 = v14.i32[1];
    v16 = v14.f32[3];
    v17 = v14.i32[2];
  }

  *a2 = v14.i32[0];
  *(a2 + 4) = v15;
  *(a2 + 8) = v17;
  *(a2 + 12) = v16;
  return this;
}

__n128 pxrInternal__aapl__pxrReserved__::GfDualQuatf::SetTranslation(__n128 *a1, float32x2_t *a2)
{
  v3 = a2[1].f32[0];
  v6 = vmul_f32(*a2, 0x3F0000003F000000);
  v7 = v3 * 0.5;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::GfQuatf::operator*=(&v6, a1);
  result = *v4;
  a1[1] = *v4;
  return result;
}

__int128 *pxrInternal__aapl__pxrReserved__::GfDualQuatf::operator*=(__int128 *a1, float *a2)
{
  v11 = *a1;
  pxrInternal__aapl__pxrReserved__::GfQuatf::operator*=(&v11, a2);
  v10 = *v4;
  v11 = *a1;
  pxrInternal__aapl__pxrReserved__::GfQuatf::operator*=(&v11, a2 + 4);
  v9 = *v5;
  v11 = a1[1];
  pxrInternal__aapl__pxrReserved__::GfQuatf::operator*=(&v11, a2);
  v7 = vaddq_f32(v9, *v6);
  *a1 = v10;
  a1[1] = v7;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, int8x16_t *a2)
{
  v9.i8[0] = 40;
  v3 = sub_29A00911C(a1, &v9, 1);
  v9 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v9);
  v5 = sub_29A00911C(v4, ", ", 2);
  v8 = a2[1];
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, &v8);
  v10 = 41;
  return sub_29A00911C(v6, &v10, 1);
}

{
  v3 = vextq_s8(*a2, *a2, 0xCuLL);
  return pxrInternal__aapl__pxrReserved__::operator<<(a1, v3.i32);
}

pxrInternal__aapl__pxrReserved__::GfDualQuath *pxrInternal__aapl__pxrReserved__::GfDualQuath::GfDualQuath(pxrInternal__aapl__pxrReserved__::GfDualQuath *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatd *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath((v4 + 8), (a2 + 32));
  return this;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath((v4 + 8), (a2 + 32));
  return this;
}

pxrInternal__aapl__pxrReserved__::GfDualQuath *pxrInternal__aapl__pxrReserved__::GfDualQuath::GfDualQuath(pxrInternal__aapl__pxrReserved__::GfDualQuath *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatf *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath((v4 + 8), (a2 + 16));
  return this;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(this, a2);
  pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath((v4 + 8), (a2 + 16));
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::GetLength(pxrInternal__aapl__pxrReserved__::GfDualQuath *this)
{
  v6 = sub_29A12FDD4(this);
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6] == 0.0)
  {
    v5 = 0;
    sub_29A1308E8(&v7, &v5 + 1, &v5);
  }

  else
  {
    v2 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(this, this + 4)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 3)] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 7)]);
    if (v2 == 0.0)
    {
      v3 = HIWORD(LODWORD(v2));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23])
    {
      v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23] + (((LODWORD(v2) & 0x7FFFFF) + ((LODWORD(v2) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v2));
    }

    *(&v5 + 1) = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3] / pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6];
    sub_29A130A50(&v7, &v6, &v5 + 1);
  }

  return v7;
}

uint64_t sub_29A12FDD4(unsigned __int16 *a1)
{
  v1 = sqrtf(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A13085C(a1)]);
  if (v1 == 0.0)
  {
    return HIWORD(LODWORD(v1));
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23])
  {
    return pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23] + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  return pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
}