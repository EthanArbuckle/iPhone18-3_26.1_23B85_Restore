unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B436598 & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x118uLL);
      pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::Tf_NoticeRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A0E9B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A0EBDA4((i + 184));
      sub_29A0EB484(i + 128);
      sub_29A0EB4E8(i + 80);
      v3 = (i + 48);
      sub_29A0EBD50(&v3);
      v2 = sub_29A0EB570(i);
      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

uint64_t sub_29A0E9CEC(uint64_t a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(*(a1 + 8), *a1);
    *a1 = 0;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::Tf_NoticeRegistry(pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 20) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 65) = 0;
  *(this + 28) = 1065353216;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0;
  *(this + 22) = 0;
  sub_29A0EC1FC(this + 23);
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance, this))
  {
    v4[0] = "tf/instantiateSingleton.h";
    v4[1] = "SetInstanceConstructed";
    v4[2] = 54;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v2);
  }

  return this;
}

void sub_29A0E9E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_29A0EBDA4((v16 + 184));
  sub_29A0EB484(v18);
  sub_29A0EB4E8(v17);
  a16 = (v16 + 48);
  sub_29A0EBD50(&a16);
  sub_29A0EB570(v16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_VerifyFailedCast(pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *this, const std::type_info *a2, const pxrInternal__aapl__pxrReserved__::TfNotice *a3, const pxrInternal__aapl__pxrReserved__::TfNotice *a4)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*(*a3 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), v25);
  if (!a4)
  {
    v19 = "tf/noticeRegistry.cpp";
    v20 = "_VerifyFailedCast";
    v21 = 85;
    v22 = "void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_VerifyFailedCast(const type_info &, const TfNotice &, const TfNotice *)";
    v23 = 0;
    v24 = 4;
    v8 = v26;
    v9 = v25[0];
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a2->__type_name & 0x7FFFFFFFFFFFFFFFLL), __p);
    v11 = v25;
    if (v8 >= 0)
    {
      v12 = v25;
    }

    else
    {
      v12 = v9;
    }

    if (v18 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v26 < 0)
    {
      v11 = v25[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v19, "All attempts to cast notice of type '%s' to type '%s' failed.  One possibility is that '%s' has no non-inlined virtual functions and this system's C++ ABI is non-standard.  Verify that class '%s'has at least one non-inline virtual function.\n", v10, v12, v13, v11, v11);
  }

  sub_29A0EB5BC(&v19, this + 72);
  if (sub_29A0EC378(this + 10, v25))
  {
    v7 = v19;
    if (v19)
    {
      __dmb(0xBu);
      *v7 = 0;
    }
  }

  else
  {
    sub_29A0EC530(this + 80, v25, v25);
    v15 = v19;
    if (v19)
    {
      __dmb(0xBu);
      *v15 = 0;
    }

    v19 = "tf/noticeRegistry.cpp";
    v20 = "_VerifyFailedCast";
    v21 = 77;
    v22 = "void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_VerifyFailedCast(const type_info &, const TfNotice &, const TfNotice *)";
    v23 = 0;
    v16 = v25;
    if (v26 < 0)
    {
      v16 = v25[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "Special handling of notice type '%s' invoked.\nMost likely, this class is missing a non-inlined virtual destructor.\nPlease request that someone modify class '%s' accordingly.", v14, v16, v16);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_29A0EA008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_InsertProbe(uint64_t a1, void *a2)
{
  sub_29A0EB5BC(&v7, a1 + 120);
  result = sub_29B28CBCC(a2);
  if (v5 & 1 | result)
  {
    result = sub_29A0EC8D8(a1 + 128, a2, a2);
  }

  *(a1 + 168) = *(a1 + 152) != 0;
  v6 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A0EA0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_RemoveProbe(uint64_t a1, uint64_t a2)
{
  sub_29A0EB5BC(&v6, a1 + 120);
  result = sub_29A0ECC10((a1 + 128), a2);
  *(a1 + 168) = *(a1 + 152) != 0;
  v5 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  return result;
}

void sub_29A0EA150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BeginSend(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5[1];
  v11 = *a5;
  v12 = v5;
  while (v11 != v12)
  {
    v6 = sub_29A0EA214(&v11, a2, a3);
    v7 = sub_29B28CBCC(v6);
    if (v8 & 1 | v7)
    {
      v10 = sub_29A0EA214(&v11, v8, v9);
      sub_29A0EA294(v10);
    }

    sub_29A0EA2E4(&v11);
  }
}

uint64_t sub_29A0EA214(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void sub_29A0EA294(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B28CD14();
}

void *sub_29A0EA2E4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_EndSend(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v5 != v3)
  {
    return sub_29B28CD60(&v5, &v6, a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BeginDelivery(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = a7[1];
  v13 = *a7;
  v14 = v7;
  while (v13 != v14)
  {
    v8 = sub_29A0EA214(&v13, a2, a3);
    v9 = sub_29B28CBCC(v8);
    if (v10 & 1 | v9)
    {
      v12 = sub_29A0EA214(&v13, v10, v11);
      sub_29A0EA294(v12);
    }

    sub_29A0EA2E4(&v13);
  }
}

void *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_EndDelivery(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v5 != v3)
  {
    return sub_29B28CDE0(&v5, &v6, a3);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Register@<X0>(pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *this@<X0>, pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase *a2@<X1>, char **a3@<X8>)
{
  sub_29A0ECEEC(&v21, "Tf", "Tf_NoticeRegistry::_Register");
  v6 = (*(*a2 + 24))(a2);
  v20 = v6;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v14);
  if (v14 == v6)
  {
    v14 = "tf/noticeRegistry.cpp";
    v15 = "_Register";
    v16 = 164;
    v17 = "TfNotice::Key pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Register(TfNotice::_DelivererBase *)";
    v18 = 0;
    v19 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v14, "notice type is undefined in the TfType system", v7);
  }

  sub_29A0EB5BC(&v14, this + 41);
  ++*(this + 11);
  v8 = v14;
  if (v14)
  {
    __dmb(0xBu);
    *v8 = 0;
  }

  v9 = sub_29A0EA6B8(this, &v20);
  v10 = (*(*a2 + 40))(a2);
  sub_29A0EA784(this, v9, v10, a2);
  sub_29A0EB5BC(&v14, this + 41);
  --*(this + 11);
  v11 = v14;
  if (v14)
  {
    __dmb(0xBu);
    *v11 = 0;
  }

  result = sub_29A0ECF60(&v14, a2);
  v13 = v15;
  *a3 = v14;
  a3[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    result = v15;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }

  return result;
}

void *sub_29A0EA6B8(void *a1, void *a2)
{
  sub_29A0EB5BC(&v8, (a1 + 5));
  v4 = sub_29A0EB63C(a1, a2);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = operator new(0x48uLL);
    sub_29A0EB708(v5);
    v9 = a2;
    sub_29A0EB864(a1, a2, &unk_29B4D6118, &v9)[3] = v5;
  }

  v6 = v8;
  if (v8)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return v5;
}

void sub_29A0EA758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _BYTE *a9)
{
  operator delete(v9);
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void *sub_29A0EA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  sub_29A0EB5BC(&v12, a2);
  if (a3)
  {
    v14 = &v13;
    v7 = sub_29A0EBA9C(a2 + 32, &v13, &unk_29B4D6118, &v14) + 3;
  }

  else
  {
    v7 = (a2 + 8);
  }

  *(a4 + 16) = v7;
  result = operator new(0x18uLL);
  result[2] = a4;
  v9 = v7[1];
  v10 = v7[2];
  *result = v7;
  result[1] = v9;
  *v9 = result;
  v7[1] = result;
  v7[2] = v10 + 1;
  *(a4 + 24) = result;
  v11 = v12;
  if (v12)
  {
    __dmb(0xBu);
    *v11 = 0;
  }

  return result;
}

void sub_29A0EA834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (a10)
  {
    __dmb(0xBu);
    *a10 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Revoke(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0EB5BC(&v7, a1 + 41);
  if (*(a1 + 44))
  {
    sub_29A0EA964(a2);
  }

  result = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_FreeDeliverer(v4, a2);
  v6 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A0EA910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_FreeDeliverer(uint64_t a1, uint64_t a2)
{
  result = sub_29B28CC2C(a2);
  if (v4 & 1 | result)
  {
    sub_29B28CE60(a2);
  }

  return result;
}

void sub_29A0EA964(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B28CF10();
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Send(pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *this, const pxrInternal__aapl__pxrReserved__::TfNotice *a2, const pxrInternal__aapl__pxrReserved__::TfType *a3, const pxrInternal__aapl__pxrReserved__::TfWeakBase *a4, uint64_t a5, const std::type_info *a6)
{
  if (atomic_load(this + 22))
  {
    LOBYTE(v43) = 0;
    if (*sub_29A0ED084(this + 23, &v43))
    {
      return 0;
    }
  }

  sub_29A0EB5BC(&v43, this + 41);
  ++*(this + 11);
  v14 = v43;
  if (v43)
  {
    __dmb(0xBu);
    *v14 = 0;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (*(this + 168) == 1)
  {
    sub_29A0EB5BC(v46, this + 120);
    v15 = sub_29A0EAD04(&v43, *(this + 19));
    v41 = *(this + 18);
    v42 = 0;
    while (v41 != v42)
    {
      v18 = sub_29A0EADC0(&v41, v16, v17);
      v19 = sub_29B28CBCC(v18);
      if (v20 & 1 | v19)
      {
        v22 = sub_29A0EADC0(&v41, v20, v21);
        sub_29A0EAE44(&v43, v22);
      }

      v15 = sub_29A0EAE9C(&v41);
    }

    v23 = v43 != v44;
    if (v43 != v44)
    {
      pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BeginSend(v15, a2, a4, a6, &v43);
    }

    v24 = v46[0];
    if (v46[0])
    {
      __dmb(0xBu);
      *v24 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v13 = 0;
  v40 = *a3;
  do
  {
    v25 = sub_29A0EAF1C(this, &v40);
    if (v25)
    {
      if (a4)
      {
        v46[0] = sub_29A0EB154(this, v25, a4);
        v46[1] = v26;
        v13 += pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Deliver(this, a2, a3, a4, a5, a6, &v43, v46);
      }

      sub_29A0EB5BC(v46, v25);
      v27 = v25[2];
      v28 = v46[0];
      if (v46[0])
      {
        __dmb(0xBu);
        *v28 = 0;
      }

      v41 = v25 + 1;
      v42 = v27;
      v13 += pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Deliver(this, a2, a3, a4, a5, a6, &v43, &v41);
    }

    NBaseTypes = pxrInternal__aapl__pxrReserved__::TfType::GetNBaseTypes(&v40, &v40, 1uLL);
    if (NBaseTypes != 1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BadTypeFatalMsg(NBaseTypes, &v40, *(*a2 - 8));
    }

    Root = pxrInternal__aapl__pxrReserved__::TfType::GetRoot(NBaseTypes);
  }

  while (v40 != *Root);
  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_EndSend(Root, &v43, v31);
  }

  v32 = sub_29A0EB5BC(v46, this + 41);
  v33 = *(this + 11);
  if (v33 == 1)
  {
    v34 = *(this + 6);
    v35 = *(this + 7);
    if (v34 == v35)
    {
      v33 = 1;
    }

    else
    {
      v36 = 0;
      v37 = (v35 - v34) >> 4;
      do
      {
        v32 = pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_FreeDeliverer(v32, *(this + 6) + v36);
        v36 += 16;
        --v37;
      }

      while (v37);
      sub_29A0ED2EC(this + 48, *(this + 6));
      v33 = *(this + 11);
    }
  }

  *(this + 11) = v33 - 1;
  v38 = v46[0];
  if (v46[0])
  {
    __dmb(0xBu);
    *v38 = 0;
  }

  v46[0] = &v43;
  sub_29A0EBD50(v46);
  return v13;
}

void sub_29A0EACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  sub_29A0EBD50(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A0EAD04(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A0ED32C(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A0ED41C(&v12);
  }

  return result;
}

void sub_29A0EADAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0EADC0(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator*() [T = pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 16;
}

uint64_t sub_29A0EAE44(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A0ED488(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A0EAE9C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TfNotice::Probe>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void *sub_29A0EAF1C(void *a1, void *a2)
{
  sub_29A0EB5BC(&v6, (a1 + 5));
  result = sub_29A0EB63C(a1, a2);
  if (result)
  {
    result = result[3];
  }

  v5 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  return result;
}

void sub_29A0EAF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Deliver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = *a8;
  if (*a8)
  {
    v9 = a8[1];
    if (v8 != v9)
    {
      v15 = 0;
      while (1)
      {
        v16 = *(v9 + 16);
        if (*(v16 + 32) != 1)
        {
          goto LABEL_9;
        }

        if ((atomic_fetch_add_explicit((v16 + 36), 1u, memory_order_release) & 0x80000000) != 0)
        {
          break;
        }

        v17 = (*(*v16 + 16))(v16, a2, a3, a4, a5, a6, a7);
        atomic_fetch_add_explicit((v16 + 36), 0xFFFFFFFF, memory_order_release);
        if (!v17)
        {
          goto LABEL_9;
        }

        v15 = (v15 + 1);
LABEL_13:
        v9 = *(v9 + 8);
        if (v9 == v8)
        {
          return v15;
        }
      }

      atomic_fetch_add_explicit((v16 + 36), 0xFFFFFFFF, memory_order_release);
LABEL_9:
      sub_29A0EB5BC(&v24, a1 + 41);
      if ((*(v16 + 33) & 1) == 0)
      {
        *(v16 + 32) = 256;
        sub_29A0ECF60(&v22, v16);
        sub_29A0EB3B0((a1 + 48), &v22);
        sub_29B28CF5C(&v23);
      }

      v18 = v24;
      if (v24)
      {
        __dmb(0xBu);
        *v18 = 0;
      }

      goto LABEL_13;
    }
  }

  return 0;
}

void sub_29A0EB0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, _BYTE *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a12 + 8))(a12);
  }

  if (a13)
  {
    __dmb(0xBu);
    *a13 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0EB154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  sub_29A0EB5BC(&v7, a2);
  v4 = sub_29A0EB63C((a2 + 32), &v8);
  if (v4)
  {
    result = v4 + 3;
  }

  else
  {
    result = 0;
  }

  v6 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A0EB1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (a10)
  {
    __dmb(0xBu);
    *a10 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BadTypeFatalMsg(pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry *this, const pxrInternal__aapl__pxrReserved__::TfType *a2, const std::type_info *a3)
{
  pxrInternal__aapl__pxrReserved__::TfType::GetBaseTypes(a2, &v25);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v16);
  if (*a2 == v16)
  {
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a3->__type_name & 0x7FFFFFFFFFFFFFFFLL), __p);
    if (v22 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Class %s (derived from TfNotice) is undefined in the TfType system", v9, v10, v11);
    v23 = v16;
    v24 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v25 == v26)
    {
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
      if (*(TypeName + 23) >= 0)
      {
        v15 = TypeName;
      }

      else
      {
        v15 = *TypeName;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("TfNotice type '%s' has NO base types;\nthis should be impossible.", v13, v14, v15);
    }

    else
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a2);
      if (*(v5 + 23) >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("TfNotice type '%s' has multiple base types;\nit must have a unique parent in the TfType system", v6, v7, v8);
    }

    v23 = v16;
    v24 = v17;
  }

  *&v16 = "tf/noticeRegistry.cpp";
  *(&v16 + 1) = "_BadTypeFatalMsg";
  v17 = 353;
  v18 = "void pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BadTypeFatalMsg(const TfType &, const std::type_info &)";
  v19 = 0;
  v20 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v16, &v23);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_29A0EB35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 40);
  if (v23)
  {
    *(v21 - 32) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0EB3B0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A0ED5A4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = (v3 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  a1[1] = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_IncrementBlockCount(atomic_ullong *this)
{
  atomic_fetch_add(this + 22, 1uLL);
  v2 = 0;
  result = sub_29A0ED084(this + 23, &v2);
  ++*result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_DecrementBlockCount(atomic_ullong *this)
{
  atomic_fetch_add(this + 22, 0xFFFFFFFFFFFFFFFFLL);
  v2 = 0;
  result = sub_29A0ED084(this + 23, &v2);
  --*result;
  return result;
}

uint64_t sub_29A0EB484(uint64_t a1)
{
  sub_29A0EB4C0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0EB4C0(int a1, void **__p)
{
  if (__p)
  {
    sub_29B28CFAC(__p);
  }
}

uint64_t sub_29A0EB4E8(uint64_t a1)
{
  sub_29A0EB524(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0EB524(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A0EB570(uint64_t a1)
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

uint64_t sub_29A0EB5BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  v3 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v4 = 1 << (8 * (a2 & 3));
  v5 = ~(255 << (8 * (a2 & 3)));
LABEL_2:
  v6 = *v3 & v5;
  while (1)
  {
    v7 = v6;
    atomic_compare_exchange_strong(v3, &v7, v6 | v4);
    if (v7 == v6)
    {
      return a1;
    }

    if (*v3 != v6)
    {
      sched_yield();
      goto LABEL_2;
    }
  }
}

void *sub_29A0EB63C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

uint64_t sub_29A0EB708(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  sub_29A019AA0(a1 + 32, 0);
  return a1;
}

void sub_29A0EB764(_Unwind_Exception *a1)
{
  sub_29A0EB780(v1 + 32);
  sub_29A0EB800(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0EB780(uint64_t a1)
{
  sub_29A0EB7BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0EB7BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A0EB800(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A0EB800(void *result)
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

void *sub_29A0EB864(uint64_t a1, void *a2, uint64_t a3, void **a4)
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

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v7;
  i[2] = **a4;
  i[3] = 0;
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

void *sub_29A0EBA9C(uint64_t a1, void *a2, uint64_t a3, void **a4)
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
  i[3] = i + 3;
  i[4] = i + 3;
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

void sub_29A0EBCDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0EBCF4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A0EBCF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0EB800(v2 + 3);
    }

    operator delete(v2);
  }
}

void sub_29A0EBD50(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A0ED2EC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A0EBDA4(void *a1)
{
  *a1 = &unk_2A203F650;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A0EBFB0(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

uint64_t sub_29A0EBE40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  __dmb(0xBu);
  while (v2)
  {
    v3 = *v2;
    __dmb(0xBu);
    v1[1] = v3;
    result = (*(*v1 + 16))(v1);
    v2 = v1[1];
    __dmb(0xBu);
  }

  __dmb(0xBu);
  v1[2] = 0;
  return result;
}

uint64_t sub_29A0EBEC4(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 8) = 1;
  return v5;
}

void sub_29A0EBF88(void *a1)
{
  v1 = sub_29A0EBDA4(a1);

  operator delete(v1);
}

unint64_t *sub_29A0EBFB0(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

tbb::internal *sub_29A0EC010(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  if (a3 > a4)
  {
    v7 = a2 - 1;
    do
    {
      v8 = v7[v4];
      v7[v4] = 0;
      if (v8 >= 0x40)
      {
        tbb::internal::NFS_Free(v8, a2);
      }

      --v4;
    }

    while (v4 > a4);
    v4 = a4;
  }

  result = *a2;
  if (*a2 >= 0x40uLL)
  {
    for (; v4; --v4)
    {
      a2[v4 - 1] = 0;
    }

    return tbb::internal::NFS_Free(result, a2);
  }

  return result;
}

uint64_t tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (result + (a2 << 7) - 120);
    do
    {
      if (*v2 == 1)
      {
        *v2 = 0;
      }

      v2 -= 128;
      --a2;
    }

    while (a2);
  }

  return result;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

unint64_t sub_29A0EC0EC(unint64_t a1)
{
  v1 = a1 | 1;
  if (HIDWORD(a1))
  {
    v1 = HIDWORD(a1);
  }

  if (v1 >= 0x10000)
  {
    v2 = (32 * (HIDWORD(a1) != 0)) | 0x10;
  }

  else
  {
    v2 = 32 * (HIDWORD(a1) != 0);
  }

  if (v1 >= 0x10000)
  {
    v1 >>= 16;
  }

  if (v1 >= 0x100)
  {
    v2 |= 8uLL;
    v1 >>= 8;
  }

  if (v1 >= 0x10)
  {
    v2 |= 4uLL;
    v1 >>= 4;
  }

  if (v1 >= 4)
  {
    v2 += 2;
    v1 >>= 2;
  }

  return ((v1 >> 1) & 1) + v2;
}

uint64_t sub_29A0EC164(uint64_t a1, char *a2, char *a3, char *a4)
{
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v5)
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v8;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a3, v8);
      if (a4[23] >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(v10, *a1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void *sub_29A0EC1FC(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A203F650;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A203F710;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A0EC368;
  return a1;
}

void *sub_29A0EC2C8()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A203F710;
  return result;
}

uint64_t sub_29A0EC300(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

const void **sub_29A0EC378(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v15 = 0;
  v16 = 0;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v15, a2, v5);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = bswap64(0x9E3779B97F4A7C55 * v15);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v7 == v13)
    {
      if (sub_29A0EC4B8(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL sub_29A0EC4B8(uint64_t a1, const void **a2, const void **a3)
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

const void **sub_29A0EC530(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
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

  sub_29A0EC7CC(a1, v9, a3, &v27);
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

void sub_29A0EC7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0EC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x28uLL);
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

  *(a4 + 16) = 1;
  return result;
}

void sub_29A0EC858(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A0EC874(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_29A0EC8D8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a2));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          v14 = sub_29A0ECB5C((i + 2));
          if (v14 == sub_29A0ECB5C(a2))
          {
            return i;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v7;
  v15 = a3[1];
  i[2] = *a3;
  i[3] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
  }

  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v8 || (v17 * v8) < v16)
  {
    v18 = 1;
    if (v8 >= 3)
    {
      v18 = (v8 & (v8 - 1)) != 0;
    }

    v19 = v18 | (2 * v8);
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
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    *i = *v23;
LABEL_40:
    *v23 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v22 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v24 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v24 >= v8)
      {
        v24 %= v8;
      }
    }

    else
    {
      v24 &= v8 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

uint64_t sub_29A0ECB5C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29A0ECBB4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29B28D020(__p);
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_29A0ECC10(void *a1, uint64_t a2)
{
  result = sub_29A0ECC48(a1, a2);
  if (result)
  {
    sub_29A0ECD64(a1, result);
    return 1;
  }

  return result;
}

void *sub_29A0ECC48(void *a1, uint64_t a2)
{
  v4 = sub_29A0ECB5C(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * v4);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = v6 & (*&v5 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = sub_29A0ECB5C((v11 + 2));
        if (v13 == sub_29A0ECB5C(a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_29A0ECD64(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29A0ECBB4(&v6, v3);
  }

  return v2;
}

void *sub_29A0ECDB0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_29A0ECEEC(uint64_t a1, char *a2, char *a3)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v6;
    *(a1 + 8) = 2 * (v6 != 0);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a3, v6);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void *sub_29A0ECF60(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A0ECFBC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A0ECFD4@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    result = operator new(0x10uLL);
    v5 = 0;
    result[2] = 1;
    *result = &unk_2A2040618;
    *(result + 6) = 0;
    *(result + 14) = 1;
    atomic_compare_exchange_strong(a1, &v5, result);
    if (v5)
    {
      (*(*result + 8))(result);
      result = v5;
    }
  }

  *a2 = result;
  atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A0ED084(atomic_ullong *a1, _BYTE *a2)
{
  id_v3 = tbb::internal::thread_get_id_v3();
  v5 = id_v3;
  v6 = id_v3 ^ (id_v3 >> 3);
  v7 = a1[1];
  __dmb(0xBu);
  if (!v7)
  {
LABEL_7:
    *a2 = 0;
    v13 = (**a1)(a1);
    v14 = atomic_fetch_add(a1 + 2, 1uLL) + 1;
    v15 = a1[1];
    __dmb(0xBu);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v14 <= (1 << v16) >> 1)
      {
LABEL_24:
        v23 = a1[1];
        __dmb(0xBu);
        v24 = *(v23 + 8);
        v25 = ~(-1 << v24);
        v26 = v6 >> -v24;
        v27 = v23 + 16;
        while (1)
        {
          v28 = (v27 + 16 * v26);
          if (!*v28)
          {
            break;
          }

LABEL_28:
          v26 = (v26 + 1) & v25;
        }

        while (1)
        {
          v29 = 0;
          atomic_compare_exchange_strong(v28, &v29, v5);
          if (!v29)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v28, 0, memory_order_relaxed))
          {
            goto LABEL_28;
          }
        }

        v28[1] = v13;
        return v13;
      }
    }

    else
    {
      v16 = 2;
    }

    v18 = v16 - 1;
    do
    {
      v19 = 1 << v18++;
    }

    while (v14 > v19);
    v20 = (*(*a1 + 8))(a1, (16 << v18) + 16);
    v20[1] = v18;
    bzero(v20 + 2, 16 << v18);
    while (1)
    {
      *v20 = v15;
      while (1)
      {
        v21 = v15;
        atomic_compare_exchange_strong(a1 + 1, &v21, v20);
        if (v21 == v15)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(a1 + 1, 0, memory_order_relaxed);
        if (add_explicit != v15)
        {
          goto LABEL_21;
        }
      }

      add_explicit = v15;
LABEL_21:
      if (v15 == add_explicit)
      {
        goto LABEL_24;
      }

      v15 = add_explicit;
      if (*(add_explicit + 8) >= v18)
      {
        (*(*a1 + 16))(a1, v20, (16 << v20[1]) + 16);
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    v9 = v6 >> -v8;
    v10 = v7 + 2;
    v11 = v7[2 * v9 + 2];
    if (v11)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v12 = ~(-1 << v8);
  while (id_v3 != v11)
  {
    v9 = (v9 + 1) & v12;
    v11 = v10[2 * v9];
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v17 = a1[1];
  __dmb(0xBu);
  *a2 = 1;
  v13 = v10[2 * v9 + 1];
  if (v7 != v17)
  {
    goto LABEL_24;
  }

  return v13;
}

void sub_29A0ED2EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != a2)
  {
    sub_29B28D130();
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29A0ED32C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v4 += 16;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B28D194();
    }
  }

  return sub_29A0ED3B0(v6);
}

uint64_t sub_29A0ED3B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0ED3E8(a1);
  }

  return a1;
}

void sub_29A0ED3E8(uint64_t a1)
{
  if (**(a1 + 16) != **(a1 + 8))
  {
    sub_29B28D130();
  }
}

uint64_t sub_29A0ED41C(uint64_t a1)
{
  sub_29A0ED454(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A0ED454(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  result = *(a1 + 16);
  if (result != a2)
  {
    return sub_29B28D1FC(result, v4, a2);
  }

  return result;
}

uint64_t sub_29A0ED488(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[16 * v7];
  v10 = *a2;
  *v9 = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1u, memory_order_relaxed);
  }

  *&v19 = v9 + 16;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A0ED32C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0ED41C(&v17);
  return v16;
}

void sub_29A0ED590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0ED5A4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  v17 = &v8[16 * v2];
  *(&v18 + 1) = &v8[16 * v7];
  v9 = v17;
  *v17 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = &v8[16 * v2 + *a1 - v10];
  sub_29A0ED6B0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A0ED41C(&v16);
  return v15;
}

void sub_29A0ED69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0ED6B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v4 += 16;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B28D194();
    }
  }

  return sub_29A0ED734(v6);
}

uint64_t sub_29A0ED734(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0ED3E8(a1);
  }

  return a1;
}

void sub_29A0ED7B8(uint64_t a1@<X8>)
{

  pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError(v1, ((a1 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL));
}

void sub_29A0ED7D8()
{
  v1 = j__strrchr(v0, 47);

  FunctionLite::substringFromPreviousDelim(v0, v1, 0x2F);
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData *pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData::TfUnicodeXidStartFlagData(pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData *this)
{
  bzero(this, 0x22000uLL);
  for (i = 0; i != 5944; i += 8)
  {
    v3 = *&aA_4[i];
    v4 = *&aA_4[i + 4];
    while (v3 <= v4)
    {
      *(this + ((v3 >> 3) & 0x1FFFFFF8)) |= 1 << v3;
      ++v3;
    }
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData *pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData::TfUnicodeXidContinueFlagData(pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData *this)
{
  bzero(this, 0x22000uLL);
  for (i = 0; i != 10784; i += 8)
  {
    v3 = *(&unk_29B437DFC + i);
    v4 = *(&unk_29B437DFC + i + 4);
    while (v3 <= v4)
    {
      *(this + ((v3 >> 3) & 0x1FFFFFF8)) |= 1 << v3;
      ++v3;
    }
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData *pxrInternal__aapl__pxrReserved__::TfUnicodeGetXidStartFlagData(pxrInternal__aapl__pxrReserved__ *this)
{
  result = atomic_load(&qword_2A153EF38);
  if (!result)
  {
    return sub_29A0ED960(&qword_2A153EF38);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData *pxrInternal__aapl__pxrReserved__::TfUnicodeGetXidContinueFlagData(pxrInternal__aapl__pxrReserved__ *this)
{
  result = atomic_load(&qword_2A153EF40);
  if (!result)
  {
    return sub_29A0ED9AC(&qword_2A153EF40);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData *sub_29A0ED960(atomic_ullong *a1)
{
  v2 = operator new(0x22000uLL);
  result = pxrInternal__aapl__pxrReserved__::TfUnicodeXidStartFlagData::TfUnicodeXidStartFlagData(v2);
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, result);
  if (v4)
  {
    operator delete(result);
    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData *sub_29A0ED9AC(atomic_ullong *a1)
{
  v2 = operator new(0x22000uLL);
  result = pxrInternal__aapl__pxrReserved__::TfUnicodeXidContinueFlagData::TfUnicodeXidContinueFlagData(v2);
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, result);
  if (v4)
  {
    operator delete(result);
    return atomic_load(a1);
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::TfAtomicOfstreamWrapper(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 64) = 0;
  v4 = MEMORY[0x29EDC9560] + 64;
  *(__dst + 58) = MEMORY[0x29EDC9560] + 64;
  v5 = *(MEMORY[0x29EDC9520] + 16);
  v6 = *(MEMORY[0x29EDC9520] + 8);
  *(__dst + 6) = v6;
  *&__dst[*(v6 - 24) + 48] = v5;
  v7 = &__dst[*(*(__dst + 6) - 24) + 48];
  std::ios_base::init(v7, __dst + 56);
  v8 = MEMORY[0x29EDC9560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(__dst + 6) = v8;
  *(__dst + 58) = v4;
  MEMORY[0x29C2C1D10](__dst + 56);
  return __dst;
}

void sub_29A0EDE0C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::~TfAtomicOfstreamWrapper(pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper *this)
{
  pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::Cancel(this, 0);
  v2 = MEMORY[0x29EDC9520];
  v3 = *MEMORY[0x29EDC9520];
  *(this + 6) = *MEMORY[0x29EDC9520];
  *(this + *(v3 - 24) + 48) = *(v2 + 24);
  MEMORY[0x29C2C1D20](this + 56);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](this + 464);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::Cancel(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176))
  {
    if (!std::filebuf::close())
    {
      v4 = (a1 + 48 + *(*(a1 + 48) - 24));
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }

    v5 = (a1 + 24);
    v6 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v6 = *v5;
    }

    if (!unlink(v6) || *__error() == 2)
    {
      return 1;
    }

    if (a2)
    {
      if (*(a1 + 47) < 0)
      {
        v5 = *v5;
      }

      v8 = __error();
      pxrInternal__aapl__pxrReserved__::ArchStrerror(*v8, __p);
      if (v13 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unable to remove temporary file '%s': %s", v9, v10, v5, v11);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v14;
      *(a2 + 16) = v15;
      HIBYTE(v15) = 0;
      LOBYTE(v14) = 0;
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (a2)
  {
    MEMORY[0x29C2C1A60](a2, "Buffer is not open");
  }

  return 0;
}

void sub_29A0EE09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::Open(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176))
  {
    if (a2)
    {
      MEMORY[0x29C2C1A60](a2, "Stream is already open");
    }

    return 0;
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v18;
  }

  v6 = (a1 + 24);
  v7 = pxrInternal__aapl__pxrReserved__::Tf_CreateSiblingTempFile(&__p, a1, (a1 + 24), v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 == -1)
  {
    goto LABEL_25;
  }

  close(v7);
  std::ofstream::open();
  v8 = *(a1 + 48 + *(*(a1 + 48) - 24) + 32) & 5;
  v3 = v8 == 0;
  if (a2 && v8)
  {
    if (*(a1 + 47) < 0)
    {
      v6 = *v6;
    }

    pxrInternal__aapl__pxrReserved__::ArchStrerror(v13);
    if (v14 >= 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unable to open '%s' for writing: %s", v9, v10, v6, v11);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v15;
    *(a2 + 16) = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

LABEL_25:
    v3 = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return v3;
}

void sub_29A0EE264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfAtomicOfstreamWrapper::Commit(const std::__fs::filesystem::path *a1, _BOOL8 a2)
{
  v2 = a2;
  if (a1[7].__pn_.__r_.__value_.__l.__size_)
  {
    if (!std::filebuf::close())
    {
      v4 = (&a1[2] + *(a1[2].__pn_.__r_.__value_.__r.__words[0] - 24));
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }

    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    if (v2)
    {
      v5 = v2;
    }

    else
    {
      v5 = __p;
    }

    v2 = pxrInternal__aapl__pxrReserved__::Tf_AtomicRenameFileOver(a1 + 1, a1, v5);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a2)
  {
    MEMORY[0x29C2C1A60](a2, "Stream is not open");
    return 0;
  }

  return v2;
}

void sub_29A0EE36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfBigRWMutex *pxrInternal__aapl__pxrReserved__::TfBigRWMutex::TfBigRWMutex(pxrInternal__aapl__pxrReserved__::TfBigRWMutex *this)
{
  v2 = operator new[](0x800uLL);
  bzero(v2, 0x800uLL);
  *this = v2;
  *(this + 8) = 0;
  return this;
}

{
  v2 = operator new[](0x800uLL);
  bzero(v2, 0x800uLL);
  *this = v2;
  *(this + 8) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_AcquireReadContended(uint64_t this, int a2)
{
  v2 = this;
  v3 = a2;
  while (1)
  {
    while (1)
    {
      v4 = atomic_load((v2 + 8));
      if ((v4 & 1) == 0)
      {
        break;
      }

      this = sched_yield();
    }

    v5 = (*v2 + (v3 << 7));
    if ((atomic_fetch_add(v5, 2u) & 1) == 0)
    {
      break;
    }

    atomic_fetch_add(v5, 0xFFFFFFFE);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_AcquireWrite(pxrInternal__aapl__pxrReserved__::TfBigRWMutex *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = this + 8;
  while ((atomic_exchange(v2, 1u) & 1) != 0)
  {
    do
    {
      sched_yield();
      v2 = this + 8;
      v3 = atomic_load(this + 8);
    }

    while ((v3 & 1) != 0);
  }

  v4 = 0;
  memset(v9, 0, sizeof(v9));
  v5 = 1;
  do
  {
    result = sub_29A0EE548((*this + (v4 << 7)), *(v9 + v4));
    *(v9 + v4) = result;
    v7 = v5 & (result == 2);
    v8 = v4 == 15;
    if (v4 == 15)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }

    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 &= result == 2;
    }
  }

  while (!v8 || !v7);
  return result;
}

void sub_29A0EE53C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A0EE548(unsigned int *a1, int a2)
{
  if (a2 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TfSpinRWMutex::_WaitForReaders(a1);
    return 2;
  }

  else if (a2)
  {
    return 2;
  }

  else
  {
    v2 = atomic_fetch_or(a1, 1u);
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_ReleaseWrite(unsigned __int8 *this)
{
  v1 = 0;
  atomic_store(0, this + 8);
  v2 = *this;
  do
  {
    atomic_fetch_and((v2 + v1), 0xFFFFFFFE);
    v1 += 128;
  }

  while (v1 != 2048);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBits::_CountNumSet(pxrInternal__aapl__pxrReserved__::TfBits *this)
{
  v2 = sub_29A0EE690(this);
  v3 = *(this + 3);
  if (v3 == -1)
  {
    v3 = sub_29B28D2B0(this, *this - 1);
    *(this + 3) = v3;
  }

  v4 = 0;
  if (v2 < *this && (v3 >> 6) - (v2 >> 6) != -1)
  {
    v4 = 0;
    v5 = (*(this + 5) + 8 * (v2 >> 6));
    v6 = ~(v3 >> 6) + (v2 >> 6);
    do
    {
      v9 = *v5++;
      v4 += sub_29A0EF2AC(&v9, 0, 0x40uLL);
    }

    while (!__CFADD__(v6++, 1));
  }

  return v4;
}

unint64_t sub_29A0EE690(pxrInternal__aapl__pxrReserved__::TfBits *this)
{
  result = *(this + 2);
  if (result == -1)
  {
    if (!*this || (**(this + 5) & 1) != 0)
    {
      result = 0;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfBits::_FindNextSet(this, 0, 0);
    }

    *(this + 2) = result;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfBits::_FindNextSet(pxrInternal__aapl__pxrReserved__::TfBits *this, unint64_t a2, unint64_t a3)
{
  v3 = a2 >> 6;
  v4 = *(this + 4);
  if (a2 >> 6 >= v4)
  {
    return *this;
  }

  for (i = -64 * v3; ; i -= 64)
  {
    v6 = *(*(this + 5) + 8 * v3);
    if (v6)
    {
      if (a3 <= 0x3F)
      {
        break;
      }
    }

LABEL_7:
    a3 = 0;
    if (++v3 == v4)
    {
      return *this;
    }
  }

  while (((v6 >> a3) & 1) == 0)
  {
    if (++a3 == 64)
    {
      goto LABEL_7;
    }
  }

  if (a3 - i >= *this)
  {
    return *this;
  }

  else
  {
    return a3 - i;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBits::_FindPrevSet(pxrInternal__aapl__pxrReserved__::TfBits *this, unint64_t a2, int a3)
{
  if ((a2 & 0x2000000000) != 0)
  {
    return *this;
  }

  v3 = (a2 >> 6) & 0x7FFFFFFF;
  v4 = (a2 >> 6) << 6;
  while (1)
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      if ((a3 & 0x80000000) == 0)
      {
        break;
      }
    }

LABEL_9:
    v4 -= 64;
    a3 = 63;
    v7 = v3-- <= 0;
    if (v7)
    {
      return *this;
    }
  }

  v6 = a3 + v4;
  while (((v5 >> a3) & 1) == 0)
  {
    --v6;
    v7 = a3-- <= 0;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return v6;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfBits::_FindNextUnset(pxrInternal__aapl__pxrReserved__::TfBits *this, unint64_t a2, unint64_t a3)
{
  v3 = a2 >> 6;
  v4 = *(this + 4);
  if (a2 >> 6 >= v4)
  {
    return *this;
  }

  for (i = -64 * v3; ; i -= 64)
  {
    v6 = *(*(this + 5) + 8 * v3);
    if (v6 != -1 && a3 <= 0x3F)
    {
      break;
    }

LABEL_7:
    a3 = 0;
    if (++v3 == v4)
    {
      return *this;
    }
  }

  while (((v6 >> a3) & 1) != 0)
  {
    if (++a3 == 64)
    {
      goto LABEL_7;
    }
  }

  if (a3 - i >= *this)
  {
    return *this;
  }

  else
  {
    return a3 - i;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::TfBits::GetHash(pxrInternal__aapl__pxrReserved__::TfBits *this)
{
  v2 = sub_29A0EE690(this);
  v3 = *(this + 3);
  if (v3 == -1)
  {
    v3 = sub_29B28D2B0(this, *this - 1);
    *(this + 3) = v3;
  }

  if (v2 != *this)
  {
    return pxrInternal__aapl__pxrReserved__::ArchHash((*(this + 5) + 8 * (v2 >> 6)), (8 * ((v3 >> 6) - (v2 >> 6)) + 8), v2);
  }

  return v2;
}

BOOL pxrInternal__aapl__pxrReserved__::TfBits::operator==(pxrInternal__aapl__pxrReserved__::TfBits *this, pxrInternal__aapl__pxrReserved__::TfBits *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = *this;
  if (*this != *a2)
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 != -1)
  {
    v6 = *(a2 + 1);
    if (v6 != -1)
    {
      if (v5 == v6)
      {
        result = 1;
        if (!v5 || v5 == v4)
        {
          return result;
        }

        goto LABEL_8;
      }

      return 0;
    }
  }

LABEL_8:
  v8 = sub_29A0EE690(this);
  v9 = *(this + 3);
  if (v9 == -1)
  {
    v9 = sub_29B28D2B0(this, *this - 1);
    *(this + 3) = v9;
  }

  v10 = sub_29A0EE690(a2);
  v11 = *(a2 + 3);
  if (v11 == -1)
  {
    v11 = sub_29B28D2B0(a2, *a2 - 1);
    *(a2 + 3) = v11;
  }

  result = 0;
  if (v8 == v10 && v9 == v11)
  {
    if (v8 == *this || (v9 >> 6) - (v8 >> 6) == -1)
    {
      return 1;
    }

    else
    {
      v12 = (*(a2 + 5) + 8 * (v8 >> 6));
      v13 = (*(this + 5) + 8 * (v8 >> 6));
      v14 = (v8 >> 6) - (v9 >> 6);
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v12++;
        result = v15 == v17;
      }

      while (v15 == v17 && v14++ != 0);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfBits *pxrInternal__aapl__pxrReserved__::TfBits::operator&=(pxrInternal__aapl__pxrReserved__::TfBits *this, pxrInternal__aapl__pxrReserved__::TfBits *a2, char *a3)
{
  if (this != a2)
  {
    if (*this != *a2)
    {
      sub_29B28D2EC(&v13, a2, a3);
    }

    v5 = sub_29A0EE690(this);
    v6 = *(this + 3);
    if (v6 == -1)
    {
      v6 = sub_29B28D2B0(this, *this - 1);
      *(this + 3) = v6;
    }

    if (v5 < *this)
    {
      if ((v6 >> 6) - (v5 >> 6) != -1)
      {
        v8 = (*(a2 + 5) + 8 * (v5 >> 6));
        v9 = (*(this + 5) + 8 * (v5 >> 6));
        v10 = ~(v6 >> 6) + (v5 >> 6);
        do
        {
          v11 = *v8++;
          *v9++ &= v11;
        }

        while (!__CFADD__(v10++, 1));
      }

      *(this + 1) = -1;
      *(this + 2) = sub_29B28D274(this, v5);
      *(this + 3) = sub_29B28D2B0(this, v6);
    }
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::TfBits *pxrInternal__aapl__pxrReserved__::TfBits::operator|=(pxrInternal__aapl__pxrReserved__::TfBits *this, pxrInternal__aapl__pxrReserved__::TfBits *a2)
{
  if (*this == *a2 || (sub_29B28D344(v5) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::TfBits::_Or(this, a2);
  }

  return this;
}

const pxrInternal__aapl__pxrReserved__::TfBits *pxrInternal__aapl__pxrReserved__::TfBits::_Or(const pxrInternal__aapl__pxrReserved__::TfBits *this, const pxrInternal__aapl__pxrReserved__::TfBits *a2)
{
  if (this != a2)
  {
    v3 = this;
    this = sub_29A0EE690(a2);
    if (this < *a2)
    {
      v4 = this;
      v5 = *(a2 + 3);
      if (v5 == -1)
      {
        v5 = sub_29B28D2B0(a2, *a2 - 1);
        *(a2 + 3) = v5;
      }

      v6 = sub_29A0EE690(v3);
      this = *(v3 + 3);
      if (this == -1)
      {
        this = sub_29B28D2B0(v3, *v3 - 1);
        *(v3 + 3) = this;
      }

      if (v6 >= v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      if (this <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = this;
      }

      if (this >= *v3)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v9 != this || *(v3 + 1) != v9 - v7 + 1 || v6 > v4)
      {
        if ((v5 >> 6) - (v4 >> 6) != -1)
        {
          v12 = (*(a2 + 5) + 8 * (v4 >> 6));
          v13 = (*(v3 + 5) + 8 * (v4 >> 6));
          v14 = ~(v5 >> 6) + (v4 >> 6);
          do
          {
            v15 = *v12++;
            *v13++ |= v15;
          }

          while (!__CFADD__(v14++, 1));
        }

        *(v3 + 1) = -1;
        *(v3 + 2) = v7;
        *(v3 + 3) = v9;
      }
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBits::OrSubset(pxrInternal__aapl__pxrReserved__::TfBits *this, const pxrInternal__aapl__pxrReserved__::TfBits *a2)
{
  if (*this >= *a2)
  {
    return pxrInternal__aapl__pxrReserved__::TfBits::_Or(this, a2);
  }

  result = sub_29B28D390(v5);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::TfBits::_Or(this, a2);
  }

  return result;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfBits::operator^=(unint64_t *a1, pxrInternal__aapl__pxrReserved__::TfBits *a2, char *a3)
{
  if (*a1 != *a2)
  {
    sub_29B28D3DC(&v17, a2, a3);
  }

  v5 = sub_29A0EE690(a1);
  v6 = sub_29A0EE690(a2);
  v7 = *a1;
  if (v6 < *a1)
  {
    if (v5 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    if (v5 >= v7)
    {
      v10 = *(a2 + 3);
      if (v10 == -1)
      {
        v10 = sub_29B28D2B0(a2, *a2 - 1);
        *(a2 + 3) = v10;
      }
    }

    else
    {
      v10 = a1[3];
      if (v10 == -1)
      {
        v10 = sub_29B28D2B0(a1, v7 - 1);
        a1[3] = v10;
      }

      v11 = *(a2 + 3);
      if (v11 == -1)
      {
        v11 = sub_29B28D2B0(a2, *a2 - 1);
        *(a2 + 3) = v11;
      }

      if (v10 <= v11)
      {
        v10 = v11;
      }
    }

    if ((v10 >> 6) - (v9 >> 6) != -1)
    {
      v12 = (*(a2 + 5) + 8 * (v9 >> 6));
      v13 = (a1[5] + 8 * (v9 >> 6));
      v14 = ~(v10 >> 6) + (v9 >> 6);
      do
      {
        v15 = *v12++;
        *v13++ ^= v15;
      }

      while (!__CFADD__(v14++, 1));
    }

    a1[1] = -1;
    a1[2] = sub_29B28D274(a1, v9);
    a1[3] = sub_29B28D2B0(a1, v10);
  }

  return a1;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfBits::operator-=(unint64_t *a1, pxrInternal__aapl__pxrReserved__::TfBits *a2, char *a3)
{
  if (*a1 != *a2)
  {
    sub_29B28D434(&v19, a2, a3);
  }

  v5 = sub_29A0EE690(a1);
  v6 = a1[3];
  if (v6 == -1)
  {
    v6 = sub_29B28D2B0(a1, *a1 - 1);
    a1[3] = v6;
  }

  v7 = sub_29A0EE690(a2);
  v8 = v7;
  if (v5 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(a2 + 3);
  if (v10 == -1)
  {
    v10 = sub_29B28D2B0(a2, *a2 - 1);
    *(a2 + 3) = v10;
  }

  if (v6 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v5 < *a1 && v8 < *a1 && v9 <= v11)
  {
    v13 = v11 >> 6;
    if ((v11 >> 6) - (v9 >> 6) != -1)
    {
      v14 = (*(a2 + 5) + 8 * (v9 >> 6));
      v15 = (a1[5] + 8 * (v9 >> 6));
      v16 = ~v13 + (v9 >> 6);
      do
      {
        v17 = *v14++;
        *v15++ &= ~v17;
      }

      while (!__CFADD__(v16++, 1));
    }

    a1[1] = -1;
    a1[2] = sub_29B28D274(a1, v5);
    a1[3] = sub_29B28D2B0(a1, v6);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TfBits *pxrInternal__aapl__pxrReserved__::TfBits::Complement(pxrInternal__aapl__pxrReserved__::TfBits *this, uint64_t a2, char *a3)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(this + 5);
    do
    {
      *v5 = ~*v5;
      ++v5;
      --v4;
    }

    while (v4);
  }

  pxrInternal__aapl__pxrReserved__::TfBits::_ClearTrailingBits(this, a2, a3);
  v6 = *(this + 1);
  if (v6 != -1)
  {
    *(this + 1) = *this - v6;
  }

  *(this + 2) = -1;
  *(this + 3) = -1;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::TfBits::_ClearTrailingBits(void *this, uint64_t a2, char *a3)
{
  v5 = this[4];
  if (v5 && (*this & 0x3FLL) != 0)
  {
    v6 = *this - (v5 << 6);
    if (v6 <= 0xFFFFFFFFFFFFFFC0)
    {
      v7[6] = v3;
      v7[7] = v4;
      sub_29B28D48C(v7, a2, a3);
    }

    *(this[5] + 8 * v5 - 8) &= ~(-1 << v6);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::TfBits::GetAsStringLeftToRight(pxrInternal__aapl__pxrReserved__::TfBits *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*this)
  {
    v5 = 0;
    do
    {
      if (sub_29A0EF160(this, v5, a2))
      {
        v6 = 49;
      }

      else
      {
        v6 = 48;
      }

      std::string::push_back(a3, v6);
      ++v5;
    }

    while (v5 < *this);
  }
}

void sub_29A0EF144(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0EF160(unint64_t *a1, unint64_t a2, char *a3)
{
  if (*a1 <= a2)
  {
    v6[6] = v3;
    v6[7] = v4;
    sub_29B28D4E4(v6, a2, a3);
  }

  return (*(a1[5] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
}

void pxrInternal__aapl__pxrReserved__::TfBits::GetAsStringRightToLeft(pxrInternal__aapl__pxrReserved__::TfBits *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  for (i = *this - 1; (i & 0x8000000000000000) == 0; --i)
  {
    if (sub_29A0EF160(this, i, a2))
    {
      v7 = 49;
    }

    else
    {
      v7 = 48;
    }

    std::string::push_back(a3, v7);
  }
}

void sub_29A0EF208(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::TfBits *this, char *a3)
{
  pxrInternal__aapl__pxrReserved__::TfBits::GetAsStringLeftToRight(this, a3, &__p);
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

  sub_29A00911C(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29A0EF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0EF2AC(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::TfCompressedBits *pxrInternal__aapl__pxrReserved__::TfCompressedBits::TfCompressedBits(pxrInternal__aapl__pxrReserved__::TfCompressedBits *this, const pxrInternal__aapl__pxrReserved__::TfBits *a2, char *a3)
{
  *this = this + 8;
  *(this + 4) = 6;
  v4 = *a2;
  *(this + 10) = *a2;
  if (v4)
  {
    v6 = sub_29A0EF160(a2, 0, a3);
    *(this + 44) = v6;
    if (*a2)
    {
      v7 = 0;
      do
      {
        if (v6)
        {
          v8 = sub_29B28D53C(a2, v7 + 1);
        }

        else
        {
          v8 = sub_29B28D274(a2, v7 + 1);
        }

        v9 = v8;
        v10 = *(this + 9);
        if (v10 >= *(this + 8))
        {
          sub_29A0EFECC(this);
          v10 = *(this + 9);
        }

        *(*this + 4 * v10) = v9 - v7;
        ++*(this + 9);
        v6 ^= 1u;
        v7 = v9;
      }

      while (v9 < *a2);
    }
  }

  else
  {
    *(this + 44) = 0;
    *(this + 2) = 0;
    *(this + 9) = 1;
  }

  return this;
}

void sub_29A0EF444(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1 != v2)
  {
    if (v4)
    {
      operator delete[](v4);
    }

    *v1 = v2;
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfCompressedBits::GetHash(pxrInternal__aapl__pxrReserved__::TfCompressedBits *this)
{
  if (!*(this + 10))
  {
    return 0;
  }

  v1 = *(this + 9);
  return pxrInternal__aapl__pxrReserved__::ArchHash64(*this, (4 * v1), bswap64(0x9E3779B97F4A7C55 * (v1 + ((*(this + 44) + v1 + (*(this + 44) + v1) * (*(this + 44) + v1)) >> 1))));
}

void pxrInternal__aapl__pxrReserved__::TfCompressedBits::GetAsStringLeftToRight(pxrInternal__aapl__pxrReserved__::TfCompressedBits *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 9);
  if (v3)
  {
    v5 = 0;
    v6 = *(this + 44);
    v7 = *this;
    do
    {
      if (*(v7 + 4 * v5))
      {
        v8 = 0;
        do
        {
          std::string::push_back(a2, v6 + 48);
          ++v8;
          v7 = *this;
        }

        while (v8 < *(*this + 4 * v5));
        v3 = *(this + 9);
      }

      v6 = 1 - v6;
      ++v5;
    }

    while (v5 < v3);
  }
}

void sub_29A0EF55C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfCompressedBits::GetAsStringRightToLeft(pxrInternal__aapl__pxrReserved__::TfCompressedBits *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 9);
  v4 = (v3 - 1);
  if (v3 - 1 >= 0)
  {
    if (v3)
    {
      v6 = *(this + 44);
    }

    else
    {
      v6 = 1 - *(this + 44);
    }

    v7 = *this;
    do
    {
      if (*(v7 + 4 * v4))
      {
        v8 = 0;
        do
        {
          std::string::push_back(a2, v6 + 48);
          ++v8;
          v7 = *this;
        }

        while (v8 < *(*this + 4 * v4));
      }

      v6 = 1 - v6;
    }

    while (v4-- > 0);
  }
}

void sub_29A0EF628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::TfCompressedBits::GetAsRLEString@<D0>(unsigned int **this@<X0>, const char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  memset(&v32, 0, sizeof(v32));
  v5 = *(this + 10);
  if (v5)
  {
    if (v5 > 4)
    {
      v8 = *(this + 44);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", a2, a3, *(this + 44));
      v9 = std::string::append(&v30, "x");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v11, v12, **this);
      if ((v29 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v14 = v29;
      }

      else
      {
        v14 = __p[1];
      }

      v15 = std::string::append(&v31, v13, v14);
      v16 = v15->__r_.__value_.__r.__words[0];
      v33[0] = v15->__r_.__value_.__l.__size_;
      *(v33 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
      v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      *(&v32.__r_.__value_.__r.__words[1] + 7) = *(v33 + 7);
      v32.__r_.__value_.__r.__words[0] = v16;
      v32.__r_.__value_.__l.__size_ = v33[0];
      *(&v32.__r_.__value_.__s + 23) = v17;
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (*(this + 9) >= 2u)
      {
        v18 = v8;
        v19 = 1;
        do
        {
          std::string::push_back(&v32, 45);
          v18 = 1 - v18;
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v20, v21, v18);
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v31;
          }

          else
          {
            v22 = v31.__r_.__value_.__r.__words[0];
          }

          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v31.__r_.__value_.__l.__size_;
          }

          std::string::append(&v32, v22, size);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          std::string::push_back(&v32, 120);
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v24, v25, (*this)[v19]);
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v31;
          }

          else
          {
            v26 = v31.__r_.__value_.__r.__words[0];
          }

          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v31.__r_.__value_.__l.__size_;
          }

          std::string::append(&v32, v26, v27);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          ++v19;
        }

        while (v19 < *(this + 9));
      }

      result = *&v32.__r_.__value_.__l.__data_;
      *a4 = v32;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfCompressedBits::GetAsStringLeftToRight(this, a4);
    }
  }

  else
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  return result;
}

void sub_29A0EF8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfCompressedBits::FromString(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  *(a2 + 32) = 0x100000006;
  *(a2 + 40) = 0;
  *(a2 + 44) = 0;
  LOWORD(v23) = 11640;
  LODWORD(__p) = 0;
  sub_29A0EFF3C(&v27, 1uLL, &__p);
  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      if (v8 - 48 > 9)
      {
        if (v8 > 0x20 || ((1 << v8) & 0x100002600) == 0)
        {
          if (v8 != *(&v24[-2] + v7))
          {
            v28 = v27;
            break;
          }

          LODWORD(__p) = 0;
          sub_29A00D250(&v27, &__p);
          v7 = ~v7 & 1;
        }
      }

      else
      {
        *(v28 - 1) = v8 + 10 * *(v28 - 1) - 48;
      }

      ++v5;
      --v6;
    }

    while (v6);
  }

  v10 = v27;
  if (v27 == v28)
  {
    goto LABEL_65;
  }

  if (((v28 - v27) & 4) != 0)
  {
    v23 = v24;
    *v25 = 0x100000006;
    *&v25[8] = 0;
    v26 = 0;
    v24[0] = 0;
  }

  else
  {
    v11 = 0;
    __p = v30;
    v31 = 0x100000006;
    v32 = 0;
    v33 = 0;
    v30[0] = 0;
    while (1)
    {
      v12 = &v10[4 * v11];
      v13 = *(v12 + 1);
      if (*v12 > 1u || v13 == 0)
      {
        break;
      }

      sub_29A0F0050(&__p, v13, *v12 != 0);
      v11 += 2;
      v10 = v27;
      if (v11 >= (v28 - v27) >> 2)
      {
        sub_29A0F0100(&v23, &__p);
        goto LABEL_31;
      }
    }

    v23 = v24;
    *v25 = 0x100000006;
    *&v25[8] = 0;
    v26 = 0;
    v24[0] = 0;
LABEL_31:
    if (__p != v30 && __p != 0)
    {
      operator delete[](__p);
    }
  }

  if (&v23 != a2)
  {
    *(a2 + 40) = *&v25[8];
    *(a2 + 44) = v26;
    sub_29A0F018C(&v23, a2);
    v26 = 0;
    *&v25[4] = 0;
  }

  if (v23 != v24 && v23)
  {
    operator delete[](v23);
  }

  if (*(a2 + 40))
  {
    goto LABEL_64;
  }

  __p = v30;
  v31 = 0x100000006;
  v32 = 0;
  v33 = 0;
  v30[0] = 0;
  v16 = *(a1 + 1);
  if ((a1[23] & 0x80u) == 0)
  {
    v17 = a1[23];
  }

  else
  {
    a1 = *a1;
    v17 = v16;
  }

  if (!v17)
  {
LABEL_53:
    sub_29A0F0100(&v23, &__p);
    goto LABEL_54;
  }

  while (1)
  {
    v18 = *a1;
    if ((v18 & 0xFE) != 0x30)
    {
      break;
    }

    sub_29A0F0050(&__p, 1, v18 != 48);
LABEL_52:
    ++a1;
    if (!--v17)
    {
      goto LABEL_53;
    }
  }

  v19 = v18 > 0x20;
  v20 = (1 << v18) & 0x100002600;
  if (!v19 && v20 != 0)
  {
    goto LABEL_52;
  }

  v23 = v24;
  *v25 = 0x100000006;
  *&v25[8] = 0;
  v26 = 0;
  v24[0] = 0;
LABEL_54:
  if (__p != v30 && __p != 0)
  {
    operator delete[](__p);
  }

  if (&v23 != a2)
  {
    *(a2 + 40) = *&v25[8];
    *(a2 + 44) = v26;
    sub_29A0F018C(&v23, a2);
    v26 = 0;
    *&v25[4] = 0;
  }

  if (v23 != v24 && v23)
  {
    operator delete[](v23);
  }

LABEL_64:
  v10 = v27;
LABEL_65:
  if (v10)
  {
    v28 = v10;
    operator delete(v10);
  }
}

void sub_29A0EFCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p != (v21 + 8) && __p)
  {
    operator delete[](__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v23 = *v19;
  if (*v19 != v20)
  {
    if (v23)
    {
      operator delete[](v23);
    }

    *v19 = v20;
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfCompressedBits::Decompress(pxrInternal__aapl__pxrReserved__::TfCompressedBits *this, void **a2)
{
  sub_29A0EFE34(a2, *(this + 10));
  bzero(a2[5], 8 * a2[4]);
  a2[1] = 0;
  v5 = *a2;
  a2[2] = *a2;
  a2[3] = v5;
  v6 = *(this + 9);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(this + 44) == 1;
    do
    {
      v10 = *(*this + 4 * v8);
      if (v10)
      {
        do
        {
          if (v9)
          {
            sub_29A0F0220(a2, v7, v4);
          }

          else
          {
            sub_29A0F02CC(a2, v7, v4);
          }

          ++v7;
          --v10;
        }

        while (v10);
        v6 = *(this + 9);
      }

      v9 ^= 1u;
      ++v8;
    }

    while (v8 < v6);
  }
}

void sub_29A0EFE34(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (v4)
  {
    if (*a1 == a2)
    {
      return;
    }

    if (a1[4] >= 2uLL)
    {
      operator delete[](v4);
    }
  }

  *a1 = a2;
  a1[1] = -1;
  a1[2] = -1;
  a1[3] = -1;
  v5 = (a2 + 63) >> 6;
  a1[4] = v5;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = a1 + 6;
    }

    else
    {
      v6 = operator new[](8 * v5);
    }

    a1[5] = v6;
    v6[v5 - 1] = 0;
  }

  else
  {
    a1[5] = 0;
  }
}

void sub_29A0EFECC(uint64_t a1)
{
  v2 = 2 * *(a1 + 32);
  *(a1 + 32) = v2;
  v3 = operator new[](4 * v2);
  v4 = *a1;
  memcpy(v3, *a1, 4 * *(a1 + 36));
  if (v4 != (a1 + 8) && v4 != 0)
  {
    operator delete[](v4);
  }

  *a1 = v3;
}

void *sub_29A0EFF3C(void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B430070)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433E10)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_29A0F0034(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0F0050(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2;
    if (*(a1 + 40))
    {
      v5 = *(a1 + 36);
      if (((v5 & 1) != *(a1 + 44)) == a3)
      {
        if (v5 >= *(a1 + 32))
        {
          sub_29A0EFECC(a1);
          v5 = *(a1 + 36);
        }

        *(*a1 + 4 * v5) = v3;
        ++*(a1 + 36);
      }

      else
      {
        *(*a1 + 4 * (v5 - 1)) += a2;
      }

      v3 += *(a1 + 40);
    }

    else
    {
      **a1 = a2;
      *(a1 + 44) = a3;
    }

    *(a1 + 40) = v3;
  }
}

uint64_t sub_29A0F0100(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 8;
  *(a1 + 32) = 6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  sub_29A0F018C(a2, a1);
  *(a2 + 44) = 0;
  *(a2 + 36) = 0;
  return a1;
}

void sub_29A0F0168(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1 != v2)
  {
    if (v4)
    {
      operator delete[](v4);
    }

    *v1 = v2;
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0F018C(char **a1, char **a2)
{
  a2[4] = a1[4];
  v4 = *a2;
  v5 = (a2 + 1);
  if (*a2 == (a2 + 1))
  {
    v5 = *a2;
  }

  else
  {
    if (v4)
    {
      operator delete[](v4);
    }

    *a2 = v5;
  }

  v6 = *a1;
  if (*a1 == (a1 + 1))
  {
    for (i = 0; i != 24; i += 4)
    {
      *&v5[i] = *&v6[i];
    }
  }

  else
  {
    *a2 = v6;
    *a1 = (a1 + 1);
    *(a1 + 8) = 6;
  }
}

unint64_t *sub_29A0F0220(unint64_t *result, unint64_t a2, char *a3)
{
  v3 = *result;
  if (*result <= a2)
  {
    sub_29B28D574(v8, a2, a3);
  }

  v4 = result[5];
  if ((*(v4 + 8 * (a2 >> 6)) & (1 << a2)) == 0)
  {
    v5 = result[1];
    if (v5 != -1 && v5 >= v3)
    {
      sub_29B28D5CC(v8, a2, a3);
    }

    if (v5 != -1)
    {
      atomic_fetch_add_explicit(result + 1, 1uLL, memory_order_relaxed);
    }

    if (result[2] > a2)
    {
      result[2] = a2;
    }

    v7 = result[3];
    if (v7 < a2 || v7 == v3)
    {
      result[3] = a2;
    }

    *(v4 + 8 * (a2 >> 6)) |= 1 << a2;
  }

  return result;
}

unint64_t *sub_29A0F02CC(unint64_t *result, unint64_t a2, char *a3)
{
  if (*result <= a2)
  {
    sub_29B28D624(v5, a2, a3);
  }

  v3 = result[5];
  if ((*(v3 + 8 * (a2 >> 6)) & (1 << a2)) != 0)
  {
    v4 = result[1];
    if (!v4)
    {
      sub_29B28D67C(v5, a2, a3);
    }

    if (v4 != -1)
    {
      atomic_fetch_add_explicit(result + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    }

    if (result[2] == a2)
    {
      result[2] = -1;
    }

    if (result[3] == a2)
    {
      result[3] = -1;
    }

    *(v3 + 8 * (a2 >> 6)) ^= 1 << a2;
  }

  return result;
}

unint64_t sub_29A0F0370(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__22Tf_DebugSymbolRegistryE" & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(byte_2A14F61F8, 1u))
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
      v8 = operator new(0x68uLL);
      sub_29A0F21E4(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, byte_2A14F61F8);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A0F0530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::TimedScopeHelper<true>::TimedScopeHelper(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = a2;
  if (a2)
  {
    va_copy(v11, va);
    pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&v9, this, va, this);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v4);
    }

    *v4 = v9;
    *(v4 + 16) = v10;
    v5 = v4;
    if (*(a1 + 31) < 0)
    {
      v5 = *v4;
    }

    sub_29A0F1628();
    v6 = atomic_load(&qword_2A153EF50);
    v7 = atomic_load(&dword_2A153EF48);
    fprintf(v6, "%*s%s --{\n", 2 * v7, "", v5);
    atomic_fetch_add(&dword_2A153EF48, 1u);
    *(a1 + 40) = mach_absolute_time();
  }

  return a1;
}

{
  va_start(va, this);
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = a2;
  if (a2)
  {
    va_copy(v11, va);
    pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&v9, this, va, this);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v4);
    }

    *v4 = v9;
    *(v4 + 16) = v10;
    v5 = v4;
    if (*(a1 + 31) < 0)
    {
      v5 = *v4;
    }

    sub_29A0F1628();
    v6 = atomic_load(&qword_2A153EF50);
    v7 = atomic_load(&dword_2A153EF48);
    fprintf(v6, "%*s%s --{\n", 2 * v7, "", v5);
    atomic_fetch_add(&dword_2A153EF48, 1u);
    *(a1 + 40) = mach_absolute_time();
  }

  return a1;
}

void sub_29A0F0688(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::_ScopedOutput(pxrInternal__aapl__pxrReserved__::TfDebug *this, const char *a2, const char *a3)
{
  v4 = this;
  sub_29A0F1628();
  v5 = atomic_load(&qword_2A153EF50);
  if (v4)
  {
    v6 = atomic_load(&dword_2A153EF48);
    result = fprintf(v5, "%*s%s --{\n", 2 * v6, "", a2);
    atomic_fetch_add(&dword_2A153EF48, 1u);
  }

  else
  {
    atomic_fetch_add(&dword_2A153EF48, 0xFFFFFFFF);
    v8 = atomic_load(&dword_2A153EF48);
    return fprintf(v5, "%*s}-- %s\n", 2 * v8, "", a2);
  }

  return result;
}

void sub_29A0F0838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::TimedScopeHelper<true>::~TimedScopeHelper(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (mach_absolute_time() - *(a1 + 40) + *(a1 + 32));
    *(a1 + 32) = v2;
    ++*(a1 + 48);
    v3 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v3 = *v3;
    }

    v4 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(v2);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %.3f ms", v5, v6, v3, v4 * 1000.0);
    sub_29A0F1628();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v8 = atomic_load(&qword_2A153EF50);
    atomic_fetch_add(&dword_2A153EF48, 0xFFFFFFFF);
    v9 = atomic_load(&dword_2A153EF48);
    fprintf(v8, "%*s}-- %s\n", 2 * v9, "", p_p);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfDebug::SetDebugSymbolsByName(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = atomic_load(&qword_2A14F61F0);
  if (!v6)
  {
    v6 = sub_29A0F0370(&qword_2A14F61F0);
  }

  if (a2)
  {
    v7 = "";
  }

  else
  {
    v7 = "-";
  }

  sub_29A008E78(&v13, v7);
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

  v11 = std::string::append(&v13, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v15 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  sub_29A0F0AA4(v6, __p, a3);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F0AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29A0F20E0(2))
  {
    sub_29A008E78(v37, "_SetByPattern");
    sub_29A008E78(&__p, "void pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry::_SetByPattern(std::string, std::vector<std::string> *)");
    pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(v37, &__p, &v39);
    v6 = std::string::append(&v39, ": pattern = ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::string::append(&v40, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v41, "\n");
    v42 = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v42);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  if (*(a2 + 23) < 0)
  {
    v15 = *(a2 + 8);
    if (!v15)
    {
      return;
    }

    if (v15 != 1)
    {
      goto LABEL_28;
    }

    v14 = *a2;
LABEL_27:
    if (*v14 == 45)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!*(a2 + 23))
  {
    return;
  }

  v14 = a2;
  if (*(a2 + 23) == 1)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_29A0EB5BC(&v39, a1);
  v16 = *(a1 + 32);
  if (v16 != (a1 + 40))
  {
    v17 = 0;
    do
    {
      v18 = (v16 + 4);
      v19 = (v16 + 4);
      if (*(v16 + 55) < 0)
      {
        v19 = *v18;
      }

      v20 = sub_29A0F2740(v19, a2, 1);
      if (v20)
      {
        if (a3)
        {
          sub_29A070BA0(a3);
        }

        v42.__r_.__value_.__r.__words[0] = (v16 + 4);
        v21 = v20 & 0x100;
        *(sub_29A0F28EC((a1 + 8), v16 + 4, &unk_29B4D6118, &v42) + 56) = BYTE1(v21);
        if (v21)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        v23 = v16[7];
        if (v23 != v16 + 8)
        {
          do
          {
            atomic_store(v22, v23[4]);
            v24 = v23[1];
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = v23[2];
                v26 = *v25 == v23;
                v23 = v25;
              }

              while (!v26);
            }

            v23 = v25;
          }

          while (v25 != v16 + 8);
        }

        if (sub_29A0F20E0(2))
        {
          sub_29A008E78(&v41, "_SetByPattern");
          sub_29A008E78(&v40, "void pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry::_SetByPattern(std::string, std::vector<std::string> *)");
          pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(&v41, &v40, &v42);
          v29 = &v42;
          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v42.__r_.__value_.__r.__words[0];
          }

          if (*(v16 + 55) < 0)
          {
            v18 = *v18;
          }

          v30 = "true";
          if (!v21)
          {
            v30 = "false";
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: set %s %s\n", v27, v28, v29, v18, v30);
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }
        }

        v17 = 1;
      }

      v31 = v16[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v16[2];
          v26 = *v32 == v16;
          v16 = v32;
        }

        while (!v26);
      }

      v16 = v32;
    }

    while (v32 != (a1 + 40));
    if (v17)
    {
      v33 = atomic_load(byte_2A153EF4C);
      if (v33)
      {
        v34 = v39.__r_.__value_.__r.__words[0];
        __dmb(0xBu);
        *v34 = 0;
        v39.__r_.__value_.__r.__words[0] = 0;
        v42.__r_.__value_.__r.__words[0] = &unk_2A203F8D0;
        pxrInternal__aapl__pxrReserved__::TfNotice::Send(&v42);
        pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(&v42);
      }
    }
  }

  v35 = v39.__r_.__value_.__r.__words[0];
  if (v39.__r_.__value_.__r.__words[0])
  {
    __dmb(0xBu);
    *v35 = 0;
  }
}

void sub_29A0F0E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, _BYTE *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice((v42 - 112));
  if (a24)
  {
    __dmb(0xBu);
    *a24 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::IsDebugSymbolNameEnabled(char *a1)
{
  v2 = atomic_load(&qword_2A14F61F0);
  if (!v2)
  {
    v2 = sub_29A0F0370(&qword_2A14F61F0);
  }

  return sub_29A0F0FF4(v2, a1);
}

uint64_t sub_29A0F0FF4(uint64_t a1, char *a2)
{
  sub_29A0EB5BC(&v7, a1);
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  result = sub_29A0F2A2C(a1, v4);
  v6 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A0F1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::GetDebugSymbolDescriptions(std::string *a1@<X8>)
{
  v3 = atomic_load(&qword_2A14F61F0);
  if (!v3)
  {
    v3 = sub_29A0F0370(&qword_2A14F61F0);
  }

  sub_29A0F10B8(v3, a1);
}

void sub_29A0F10B8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_29A0EB5BC(&v29, a1);
  v4 = *(a1 + 56);
  if (v4 != (a1 + 64))
  {
    do
    {
      v5 = v4 + 4;
      v6 = *(v4 + 55);
      if ((v6 & 0x8000000000000000) != 0)
      {
        v6 = v4[5];
        if (v6 >= 0x19)
        {
          v5 = *v5;
LABEL_23:
          v14 = operator new(0x20uLL);
          v17 = v14;
          memset(v14, 32, 25);
          v18 = v4 + 7;
          if (*(v4 + 79) < 0)
          {
            v18 = *v18;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s:\n%s  %s\n", v15, v16, v5, v14, v18);
          if ((v28 & 0x80u) == 0)
          {
            v19 = __b;
          }

          else
          {
            v19 = __b[0];
          }

          if ((v28 & 0x80u) == 0)
          {
            v20 = v28;
          }

          else
          {
            v20 = __b[1];
          }

          std::string::append(a2, v19, v20);
          if (v28 < 0)
          {
            operator delete(__b[0]);
          }

          v13 = v17;
          goto LABEL_34;
        }
      }

      else if (v6 >= 0x19)
      {
        goto LABEL_23;
      }

      sub_29A00944C(__b, 25 - v6, 32);
      if (*(v4 + 55) < 0)
      {
        v5 = *v5;
      }

      v9 = __b[0];
      if ((v28 & 0x80u) == 0)
      {
        v9 = __b;
      }

      v10 = v4 + 7;
      if (*(v4 + 79) < 0)
      {
        v10 = *v10;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s%s: %s\n", v7, v8, v5, v9, v10);
      if ((v26 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v12 = v26;
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a2, v11, v12);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v13 = __b[0];
LABEL_34:
      operator delete(v13);
LABEL_35:
      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v23 = *v22 == v4;
          v4 = v22;
        }

        while (!v23);
      }

      v4 = v22;
    }

    while (v22 != (a1 + 64));
  }

  v24 = v29;
  if (v29)
  {
    __dmb(0xBu);
    *v24 = 0;
  }
}

void sub_29A0F12C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  if (*(v25 + 23) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(exception_object);
}

const void **pxrInternal__aapl__pxrReserved__::TfDebug::GetDebugSymbolNames@<X0>(uint64_t a1@<X8>)
{
  v3 = atomic_load(&qword_2A14F61F0);
  if (!v3)
  {
    v3 = sub_29A0F0370(&qword_2A14F61F0);
  }

  return sub_29A0F139C(v3, a1);
}

const void **sub_29A0F139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A0EB5BC(&v6, a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_29A0925E4(a2, *(a1 + 48));
  if (*(a1 + 32) != a1 + 40)
  {
    sub_29A070BA0(a2);
  }

  v5 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  return result;
}

void sub_29A0F1454(_Unwind_Exception *a1, uint64_t a2, _BYTE *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  if (a3)
  {
    __dmb(0xBu);
    *a3 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::GetDebugSymbolDescription@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&qword_2A14F61F0);
  if (!v4)
  {
    v4 = sub_29A0F0370(&qword_2A14F61F0);
  }

  return sub_29A0F14D8(v4, a1, a2);
}

uint64_t sub_29A0F14D8@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0EB5BC(&v9, a1);
  result = sub_29A01BCCC(a1 + 56, a2);
  if (a1 + 64 == result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else if (*(result + 79) < 0)
  {
    result = sub_29A008D14(a3, *(result + 56), *(result + 64));
  }

  else
  {
    v7 = *(result + 56);
    *(a3 + 16) = *(result + 72);
    *a3 = v7;
  }

  v8 = v9;
  if (v9)
  {
    __dmb(0xBu);
    *v8 = 0;
  }

  return result;
}

void sub_29A0F1578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::SetOutputFile(pxrInternal__aapl__pxrReserved__::TfDebug *this, __sFILE *a2)
{
  if (*MEMORY[0x29EDCA620] == this || *MEMORY[0x29EDCA610] == this)
  {
    sub_29A0F1628();
    atomic_store(this, &qword_2A153EF50);
  }

  else
  {
    v4[0] = "tf/debug.cpp";
    v4[1] = "SetOutputFile";
    v4[2] = 381;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::TfDebug::SetOutputFile(FILE *)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "TfDebug output must go to either stdout or stderr");
  }
}

void sub_29A0F1628()
{
  if ((atomic_load_explicit(&qword_2A153EF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF58))
  {
    sub_29A008E78(v4, "TF_DEBUG_OUTPUT_FILE");
    sub_29A008E78(__p, "");
    pxrInternal__aapl__pxrReserved__::TfGetenv(v4, __p, v6);
    v0 = sub_29A0F2648(v6, "stderr");
    v1 = MEMORY[0x29EDCA610];
    if (!v0)
    {
      v1 = MEMORY[0x29EDCA620];
    }

    qword_2A153EF50 = *v1;
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }

    __cxa_guard_release(&qword_2A153EF58);
  }
}

void sub_29A0F1710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_guard_abort(&qword_2A153EF58);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::_SetNode(void *a1, char *a2, int a3)
{
  v6 = atomic_load(&qword_2A14F61F0);
  if (!v6)
  {
    v6 = sub_29A0F0370(&qword_2A14F61F0);
  }

  sub_29A0F17C0(v6, a1, a2, a3);
}

void sub_29A0F17C0(uint64_t a1, void *a2, char *a3, int a4)
{
  sub_29A0EB5BC(&v19, a1);
  sub_29A008E78(__p, a3);
  v20 = __p;
  v8 = sub_29A0F2AE0((a1 + 32), __p, &unk_29B4D6118, &v20);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a2;
  sub_29A0F2BE4(v8 + 7, __p, __p);
  v9 = v8[7];
  if (v9 != v8 + 8)
  {
    if (a4)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    do
    {
      atomic_store(v10, v9[4]);
      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != v8 + 8);
  }

  sub_29A008E78(__p, a3);
  v20 = __p;
  *(sub_29A0F2CA0((a1 + 8), __p, &unk_29B4D6118, &v20) + 56) = a4;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = atomic_load(byte_2A153EF4C);
  if (v14)
  {
    v15 = v19;
    __dmb(0xBu);
    *v15 = 0;
    v19 = 0;
    __p[0] = &unk_2A203F8D0;
    pxrInternal__aapl__pxrReserved__::TfNotice::Send(__p);
    pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(__p);
  }

  v16 = v19;
  if (v19)
  {
    __dmb(0xBu);
    *v16 = 0;
  }
}

void sub_29A0F1968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, _BYTE *a16)
{
  pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(&__p);
  v17 = a16;
  if (a16)
  {
    __dmb(0xBu);
    *v17 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode(void *a1, char *a2)
{
  v4 = atomic_load(&qword_2A14F61F0);
  if (!v4)
  {
    v4 = sub_29A0F0370(&qword_2A14F61F0);
  }

  return sub_29A0F1A10(v4, a1, a2);
}

uint64_t sub_29A0F1A10(uint64_t a1, void *a2, char *a3)
{
  sub_29A0EB5BC(&v16, a1);
  sub_29A008E78(__p, a3);
  v17 = __p;
  v6 = sub_29A0F2AE0((a1 + 32), __p, &unk_29B4D6118, &v17);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a2;
  sub_29A0F2BE4(v6 + 7, __p, __p);
  result = sub_29A0F2A2C(a1, a3);
  v8 = v6[7];
  if (v8 != v6 + 8)
  {
    if (result)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    do
    {
      atomic_store(v9, v8[4]);
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v6 + 8);
  }

  v13 = v16;
  if (v16)
  {
    __dmb(0xBu);
    *v13 = 0;
  }

  return result;
}

void sub_29A0F1B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, _BYTE *a16)
{
  if (a16)
  {
    __dmb(0xBu);
    *a16 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(uint64_t a1)
{
  sub_29A0F1628();
  v2 = atomic_load(&qword_2A153EF50);
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  fputs(v3, v2);

  return fflush(v2);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(pxrInternal__aapl__pxrReserved__::TfDebug::Helper *this, const char *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v5, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(__p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F1C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(uint64_t a1, char *a2, char *a3)
{
  sub_29A008E78(v14, a2);
  if (!a3)
  {
    *&__p = "tf/debug.cpp";
    *(&__p + 1) = "_RegisterDebugSymbolImpl";
    v10 = 447;
    v11 = "static void pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(_Node *, const char *, const char *)";
    v12 = 0;
    v13 = 4;
    if (v15 >= 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v14[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&__p, "description argument for '%s' is NULL", v5, v7);
  }

  if (!*a3)
  {
    *&__p = "tf/debug.cpp";
    *(&__p + 1) = "_RegisterDebugSymbolImpl";
    v10 = 451;
    v11 = "static void pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(_Node *, const char *, const char *)";
    v12 = 0;
    v13 = 4;
    v6 = v14;
    if (v15 < 0)
    {
      v6 = v14[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&__p, "description argument for '%s' is empty -- add description!", v5, v6);
  }

  v8 = atomic_load(&qword_2A14F61F0);
  if (!v8)
  {
    v8 = sub_29A0F0370(&qword_2A14F61F0);
  }

  sub_29A008E78(&__p, a3);
  sub_29A0F1DC4(v8, v14, a1, &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29A0F1D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0F1DC4(uint64_t a1, std::string::size_type a2, uint64_t a3, __int128 *a4)
{
  v28 = a3;
  if (sub_29A0F20E0(2))
  {
    sub_29A008E78(v26, "_Register");
    sub_29A008E78(&v25, "void pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry::_Register(const std::string &, TfDebug::_Node *, const std::string &)");
    pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(v26, &v25, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: %s\n", v7, v8, p_p, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  sub_29A0EB5BC(v26, a1);
  sub_29A0F2D3C((a1 + 56), a2, a2, a4);
  if ((v12 & 1) == 0)
  {
    v13 = v26[0];
    __dmb(0xBu);
    *v13 = 0;
    v26[0] = 0;
    __p.__r_.__value_.__r.__words[0] = "tf/debug.cpp";
    __p.__r_.__value_.__l.__size_ = "_Register";
    __p.__r_.__value_.__r.__words[2] = 122;
    v22 = "void pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry::_Register(const std::string &, TfDebug::_Node *, const std::string &)";
    v23 = 0;
    v24 = 4;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&__p, "[TF_DEBUG_ENVIRONMENT_SYMBOL] multiple debug symbol definitions for '%s'.  This is usually due to software misconfiguration, such as multiple versions of the same shared library loaded simultaneously in the process.  Please check your build configuration.", v11, v14);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v15 = sub_29A0F2ED0((a1 + 32), a2, &unk_29B4D6118, &__p);
  sub_29A0F2BE4(v15 + 7, &v28, &v28);
  if (v16)
  {
    v17 = atomic_load(byte_2A153EF4C);
    if (v17)
    {
      v18 = v26[0];
      __dmb(0xBu);
      *v18 = 0;
      v26[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfType::TfType(&__p);
      if (*v19 != __p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__r.__words[0] = &unk_2A203F8D0;
        pxrInternal__aapl__pxrReserved__::TfNotice::Send(&__p);
        pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(&__p);
      }
    }
  }

  v20 = v26[0];
  if (v26[0])
  {
    __dmb(0xBu);
    *v20 = 0;
  }
}

void sub_29A0F1FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(&__p);
  v28 = *(v26 - 64);
  if (v28)
  {
    __dmb(0xBu);
    *v28 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDebug::_ComplainAboutInvalidSymbol(pxrInternal__aapl__pxrReserved__::TfDebug *this, const char *a2)
{
  v2[0] = "tf/debug.cpp";
  v2[1] = "_ComplainAboutInvalidSymbol";
  v2[2] = 462;
  v2[3] = "static void pxrInternal__aapl__pxrReserved__::TfDebug::_ComplainAboutInvalidSymbol(const char *)";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "TF_DEBUG_ENVIRONMENT_SYMBOL(): symbol '%s' invalid.  (Check the TF_DEBUG_CODES() macro.)", this);
}

unint64_t sub_29A0F20C0()
{
  if (!atomic_load(&qword_2A14F61F0))
  {
    return sub_29A0F0370(&qword_2A14F61F0);
  }

  return result;
}

BOOL sub_29A0F20E0(int a1)
{
  v2 = (sub_29A0E98EC() + 4 * a1);
  v3 = atomic_load(v2);
  if (!v3)
  {
    sub_29B28D6D4(a1, v2, &v5);
    v3 = v5;
  }

  return v3 == 2;
}

void sub_29A0F2134(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A0F2134(a1, *a2);
    sub_29A0F2134(a1, a2[1]);
    sub_29A0F2190((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A0F2190(uint64_t a1)
{
  sub_29A082B84(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unint64_t sub_29A0F21E4(unint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v2 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29A008E78(v14, "TF_DEBUG");
  sub_29A008E78(&v13, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v14, &v13, &__p);
  pxrInternal__aapl__pxrReserved__::TfStringTokenize(&__p, " \t\n", &v18);
  sub_29A095FDC(v2);
  *(a1 + 80) = v18;
  v17 = &v18;
  memset(&v18, 0, sizeof(v18));
  sub_29A012C90(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (sub_29A0F25A8(*(a1 + 80), *(a1 + 88), "help") != *(a1 + 88))
  {
    puts("Valid options for the TF_DEBUG environment variable are:\n\n      help               display this help message and exit\n      SYM1 [... SYMn]    enable SYM1 through SYMn for debugging\n\nTo disable a symbol for debugging, prepend a '-'; to match all symbols\nbeginning with a prefix, use 'PREFIX*' (this is the only matching supported).\nNote that the order of processing matters.  For example, setting TF_DEBUG to\n\n      STAF_* SIC_* -SIC_REGISTRY_ENUMS GPT_IK\n\nenables debugging for any symbol in STAF, all symbols in SIC except for\nSIC_REGISTRY_ENUMS and the symbol GPT_IK.");
    exit(0);
  }

  if (atomic_exchange(&qword_2A14F61F0, a1))
  {
    v18.__r_.__value_.__r.__words[0] = "tf/instantiateSingleton.h";
    v18.__r_.__value_.__l.__size_ = "SetInstanceConstructed";
    v18.__r_.__value_.__r.__words[2] = 54;
    v19 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry]";
    v20 = 0;
    v21 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v18, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v3);
  }

  v4 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 8, "TF_DEBUG_REGISTRY", "debug the TfDebug registry");
  v5 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5, "TF_DISCOVERY_TERSE", "coarse grain debugging of TfRegistryManager");
  v6 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v6 + 4, "TF_DISCOVERY_DETAILED", "detailed debugging of TfRegistryManager");
  v7 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v7 + 12, "TF_DLOPEN", "show files opened by TfDlopen");
  v8 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v8 + 16, "TF_DLCLOSE", "show files closed by TfDlclose");
  v9 = sub_29A0F20E0(2);
  if (v9)
  {
    sub_29A008E78(v14, "Tf_DebugSymbolRegistry");
    sub_29A008E78(&v13, "pxrInternal__aapl__pxrReserved__::Tf_DebugSymbolRegistry::Tf_DebugSymbolRegistry()");
    pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(v14, &v13, &__p);
    v10 = std::string::append(&__p, "\n");
    v18 = *v10;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v9 = pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  atomic_store(1u, byte_2A153EF4C);
  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v9);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A203F8B0);
  return a1;
}

void sub_29A0F24F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_29A012C90(&a21);
  sub_29A01752C(v35, *v38);
  sub_29A0F2134(v34, *v37);
  sub_29A019EE8(v33, *v36);
  _Unwind_Resume(a1);
}

const void **sub_29A0F25A8(const void **a1, const void **a2, char *__s)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = strlen(__s);
    do
    {
      v7 = *(v3 + 23);
      if (v7 < 0)
      {
        if (v6 == v3[1])
        {
          if (v6 == -1)
          {
            sub_29A0F26CC();
          }

          v8 = *v3;
LABEL_9:
          if (!memcmp(v8, __s, v6))
          {
            return v3;
          }
        }
      }

      else
      {
        v8 = v3;
        if (v6 == v7)
        {
          goto LABEL_9;
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return v3;
}

BOOL sub_29A0F2648(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_29A0F26CC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_29A0F26E4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_299FF7E18(exception, a1);
  __cxa_throw(exception, off_29F294A28, MEMORY[0x29EDC9350]);
}

uint64_t sub_29A0F2740(char *__s2, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 24 * a3;
    while (1)
    {
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&__p, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        __p.__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_33;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_34;
        }

        p_p = &__p;
      }

      v11 = p_p->__r_.__value_.__s.__data_[0];
      if (v11 == 45)
      {
        std::string::erase(&__p, 0, 1uLL);
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if ((v9 & 0x80) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
LABEL_17:
          v13 = size - 1;
          if ((v9 & 0x80) != 0)
          {
            v14 = __p.__r_.__value_.__r.__words[0];
            if (*(__p.__r_.__value_.__r.__words[0] + v13) != 42)
            {
              goto LABEL_29;
            }

            v15 = __p.__r_.__value_.__l.__size_;
LABEL_22:
            std::string::erase(&__p, v15 - 1, 0xFFFFFFFFFFFFFFFFLL);
            LOBYTE(v9) = *(&__p.__r_.__value_.__s + 23);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = &__p;
            }

            else
            {
              v16 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v17 = __p.__r_.__value_.__l.__size_;
            }

            v18 = strncmp(__s2, v16, v17);
          }

          else
          {
            v14 = &__p;
            if (__p.__r_.__value_.__s.__data_[v13] == 42)
            {
              v15 = v9;
              goto LABEL_22;
            }

LABEL_29:
            v18 = strcmp(v14, __s2);
          }

          if (!v18)
          {
            v6 = 1;
            v5 = v11 != 45;
          }

          if ((v9 & 0x80) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_34;
      }

      if (v9)
      {
        size = v9;
        goto LABEL_17;
      }

LABEL_34:
      a2 = (a2 + 24);
      v7 -= 24;
      if (!v7)
      {
        return v6 | (v5 << 8);
      }
    }
  }

  v6 = 0;
  v5 = 0;
  return v6 | (v5 << 8);
}

void sub_29A0F28D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A0F28EC(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A0F2984(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A0F2984@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[56] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A0F2A10(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0F2A2C(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  v4 = sub_29A01BCCC(a1 + 8, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 16 == v4)
  {
    v5 = (sub_29A0F2740(a2, *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3)) >> 8) & 1;
  }

  else
  {
    LOBYTE(v5) = *(v4 + 56);
  }

  return v5 & 1;
}

void sub_29A0F2AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A0F2AE0(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x50uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 9) = 0;
    *(v7 + 8) = 0;
    *(v7 + 7) = v7 + 4;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

void sub_29A0F2B88(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0F2190(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A0F2BE4(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x28uLL);
    v10[4] = *a3;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

_OWORD *sub_29A0F2CA0(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 56) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A0F2D3C(char *a1, const void **a2, __int128 *a3, __int128 *a4)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29A0F2DC4(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

char *sub_29A0F2DC4@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char **a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29A0F2E38(v8 + 32, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29A0F2E38(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_29A0F2EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A0F2ED0(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A0F2F68(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A0F2F68@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[8] = 0;
  v7[9] = 0;
  v7[7] = v7 + 8;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29A0F3000()
{
  v1 = nullsub_15;
  v1 = nullsub_16;
}

void pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice::~TfDebugSymbolsChangedNotice(pxrInternal__aapl__pxrReserved__::TfDebugSymbolsChangedNotice *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::TfDebugSymbolEnableChangedNotice::~TfDebugSymbolEnableChangedNotice(pxrInternal__aapl__pxrReserved__::TfDebugSymbolEnableChangedNotice *this)
{
  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);

  operator delete(v1);
}

void sub_29A0F30FC()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 1, "TF_DIAGNOSTIC_CODING_ERROR_TYPE", "Coding Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 2, "TF_DIAGNOSTIC_FATAL_CODING_ERROR_TYPE", "Fatal Coding Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 3, "TF_DIAGNOSTIC_RUNTIME_ERROR_TYPE", "Runtime Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 4, "TF_DIAGNOSTIC_FATAL_ERROR_TYPE", "Fatal Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 5, "TF_DIAGNOSTIC_NONFATAL_ERROR_TYPE", "Error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 6, "TF_DIAGNOSTIC_WARNING_TYPE", "Warning");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 7, "TF_DIAGNOSTIC_STATUS_TYPE", "Status");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F930, 8, "TF_APPLICATION_EXIT_TYPE", "Application Exit");
}

char *pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat(pxrInternal__aapl__pxrReserved__ *this, const char *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v8, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__s1, this, va, a3);
  if ((v7 & 0x80000000) == 0)
  {
    return strdup(__s1);
  }

  v4 = __s1[0];
  v3 = strdup(__s1[0]);
  operator delete(v4);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(uint64_t a1, const std::string::value_type *a2, std::string::value_type *a3)
{
  sub_29A008E78(&v18, "Failed verification: ' ");
  v6 = std::string::append(&v18, a2);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v15 = *(&v6->__r_.__value_.__l + 2);
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(__p, " '");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    std::string::append(&v19, " -- ");
    std::string::append(&v19, a3);
    free(a3);
  }

LABEL_8:
  sub_29A008E78(__p, "TF_FATAL_VERIFY");
  v10 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
  v11 = v10;
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
LABEL_10:
    v12 = *(a1 + 16);
    *__p = *a1;
    v15 = v12;
    v16 = *(a1 + 32);
    v17 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, &v19);
    goto LABEL_13;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(a1, 1, &v19);
LABEL_13:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A0F33E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_TerminateHandler(pxrInternal__aapl__pxrReserved__ *this)
{
  sub_29A008E78(v2, "<unknown reason>");
  sub_29A008E78(v1, "<unknown type>");
  std::set_terminate(sub_29A0F3B7C);
  __cxa_rethrow();
}

void sub_29A0F3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0F3B7C(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/diagnostic.cpp";
  v3[1] = "_BadThrowHandler";
  v3[2] = 98;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::_BadThrowHandler()";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "std::terminate() called without a current exception", a3);
}

void pxrInternal__aapl__pxrReserved__::TfSetProgramNameForErrors(char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArchSetProgramNameForErrors(a1, a2);
}

void *pxrInternal__aapl__pxrReserved__::TfGetProgramNameForErrors@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  ProgramNameForErrors = pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(this);

  return sub_29A008E78(a2, ProgramNameForErrors);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfInstallTerminateAndCrashHandlers(pxrInternal__aapl__pxrReserved__ *this)
{
  std::set_terminate(pxrInternal__aapl__pxrReserved__::Tf_TerminateHandler);
  v2.__sigaction_u.__sa_handler = sub_29A0F3CC4;
  *&v2.sa_mask = 0x4000000688;
  sigaction(11, &v2, 0);
  sigaction(10, &v2, 0);
  sigaction(8, &v2, 0);
  sigaction(6, &v2, 0);
  return sigaction(4, &v2, 0);
}

void sub_29A0F3CC4(int a1)
{
  if ((a1 - 4) > 7)
  {
    v2 = "unknown signal";
  }

  else
  {
    v2 = off_29F295330[a1 - 4];
  }

  pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::Tf_ScopeDescriptionStackReportLock(&v4);
  pxrInternal__aapl__pxrReserved__::ArchLogFatalProcessState(v2, 0, v4, v3);
  pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::~Tf_ScopeDescriptionStackReportLock(&v4);
  fflush(*MEMORY[0x29EDCA620]);
  fflush(*MEMORY[0x29EDCA610]);
  _exit(a1 + 128);
}

void sub_29A0F3D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::~Tf_ScopeDescriptionStackReportLock(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDiagnosticBase::TfDiagnosticBase(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *__str, void (**a7)(uint64_t), char a8)
{
  v14 = *a5;
  v15 = a5[1];
  *(a1 + 32) = *(a5 + 4);
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x29EDC94D0];
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  v16 = a1 + 80;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  std::string::operator=((a1 + 40), __str);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(a2, a3, &v19);
  if (*(a1 + 103) < 0)
  {
    operator delete(*v16);
  }

  *v16 = v19;
  *(v16 + 16) = v20;
  sub_29A0F3EE8((a1 + 104), a7);
  *(a1 + 144) = a8;
  v17 = *(a1 + 103);
  if (v17 < 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_7;
    }
  }

  else if (!*(a1 + 103))
  {
LABEL_7:
    if (a4)
    {
      sub_29A008E78(&v19, a4);
      if ((*(a1 + 103) & 0x80) == 0)
      {
LABEL_10:
        *v16 = v19;
        *(v16 + 16) = v20;
        return a1;
      }
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_10;
      }
    }

    operator delete(*v16);
    goto LABEL_10;
  }

  return a1;
}

void sub_29A0F3EAC(_Unwind_Exception *a1)
{
  sub_29A0F40F0((v1 + 104));
  if (*(v1 + 103) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_29A0F3EE8(unint64_t *a1, void (**a2)(uint64_t))
{
  v4[8] = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  v4[1] = 0;
  if (*a2)
  {
    (*a2)(1);
  }

  if (v4 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v4, 0, 0);
  }

  sub_29A0F40F0(v4);
  return a1;
}

void sub_29A0F4018(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::TfDiagnosticBase::IsFatal(pxrInternal__aapl__pxrReserved__::TfDiagnosticBase *this)
{
  v1 = *(this + 18);
  v2 = v1 > 8;
  v3 = (1 << v1) & 0x114;
  return !v2 && v3 != 0 && strcmp((*(*(this + 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485CB8 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
}

uint64_t (**sub_29A0F40F0(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a2, v6, __p);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(v11, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F41BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = &unk_2A203F930;
  v4 = a2;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(a1, &v3, a3);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v7, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, this);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v7, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, this);
  v8 = &unk_2A203F930;
  v9 = a2;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(a1, &v8, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a2, v6, __p);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16[0] = 0;
  v16[1] = 0;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostQuietly(v11, a3, v16);
  sub_29A0F40F0(v16);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F43EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_29A0F40F0((v15 - 88));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(uint64_t a1, uint64_t *a2, void (**a3)(uint64_t, void, void, void, void), uint64_t *a4)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a2, v8, __p);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18[0] = 0;
  v18[1] = 0;
  if (*a3)
  {
    (*a3)(1, a3, v18, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostQuietly(v13, a4, v18);
  sub_29A0F40F0(v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F450C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v7, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, this);
  pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F45A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(uint64_t a1, uint64_t *a2, char *a3, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v9, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostQuietlyErrorHelper(a1, a2, a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), uint64_t *a3, uint64_t *a4)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a3, v8, __p);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18[0] = 0;
  v18[1] = 0;
  if (*a2)
  {
    (*a2)(1, a2, v18, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostWithInfo(v13, a4, v18);
  sub_29A0F40F0(v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), char *a3, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v9, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(a1, a2, a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F47EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, std::string *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A203F930, 6, __p);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v10 = &unk_2A203F930;
  v11 = 6;
  v12 = v4;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(v8, a2);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F48A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, pxrInternal__aapl__pxrReserved__ *this, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v5, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, uint64_t *a2, std::string *a3)
{
  v5 = *a2;
  v6 = a2[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a2, v6, __p);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(v11, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F49D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, int a2, std::string *a3)
{
  v3 = qword_2A203F930;
  v4 = a2;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(a1, &v3, a3);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v6, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, this);
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v6, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, this);
  v7 = qword_2A203F930;
  v8 = a2;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(a1, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), uint64_t *a3, std::string *a4)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a3, v8, __p);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18[0] = 0;
  v18[1] = 0;
  if (*a2)
  {
    (*a2)(1, a2, v18, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::PostWithInfo(v13, a4, v18);
  sub_29A0F40F0(v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), char *a3, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v8, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(a1, a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, std::string *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, 7, __p);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v10 = qword_2A203F930;
  v11 = 7;
  v12 = v4;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(v8, a2);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, pxrInternal__aapl__pxrReserved__ *this, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v5, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, uint64_t *a2, std::string *a3)
{
  v5 = *a2;
  v6 = a2[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a2, v6, __p);
  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(v11, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F4EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v6, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, this);
  pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F4F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), uint64_t *a3, std::string *a4)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(*a3, v8, __p);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18[0] = 0;
  v18[1] = 0;
  if (*a2)
  {
    (*a2)(1, a2, v18, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::PostWithInfo(v13, a4, v18);
  sub_29A0F40F0(v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F5040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(uint64_t a1, void (**a2)(uint64_t, void, void, void, void), char *a3, pxrInternal__aapl__pxrReserved__ *this, ...)
{
  va_start(va, this);
  va_copy(v8, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, this, va, a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(a1, a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F50E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueError(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v17, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v10);
  if (v11 >= 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v10[0];
  }

  v7 = *(this + 1);
  v12[0] = *this;
  v12[1] = v7;
  v13 = *(this + 4);
  v14 = qword_2A203F930;
  v15 = v4;
  v16 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, a2, v17, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(v12, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_29A0F51C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v10, va);
  v3 = *(this + 10);
  v4 = *(this + 1);
  v6[0] = *this;
  v6[1] = v4;
  v7 = *(this + 4);
  v8 = &unk_2A203F930;
  v9 = v3;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(v5, a2, va, a3);
  sub_29A0F5278(v6, v5);
  __break(1u);
}

void sub_29A0F525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0F5278(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0F5A58();
  v5 = pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostFatal(v4, a1, *(a1 + 40), *(a1 + 48), a2);
  return pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(v5, v6);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v16, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v9);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = *(this + 1);
  v11[0] = *this;
  v11[1] = v7;
  v12 = *(this + 4);
  v13 = qword_2A203F930;
  v14 = v4;
  v15 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, v16, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A0F5368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueStatus(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v16, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v9);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = *(this + 1);
  v11[0] = *this;
  v11[1] = v7;
  v12 = *(this + 4);
  v13 = qword_2A203F930;
  v14 = v4;
  v15 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, v16, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A0F5460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueError(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, __p);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  v11 = qword_2A203F930;
  v12 = v4;
  v13 = v5;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(v9, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F5530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v8 = &unk_2A203F930;
  v9 = v2;
  v4 = sub_29A0F5278(v6, a2);
  return pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(v4);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 40);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, __p);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  v11 = qword_2A203F930;
  v12 = v4;
  v13 = v5;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(v9, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F5620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueStatus(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 40);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, __p);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  v11 = qword_2A203F930;
  v12 = v4;
  v13 = v5;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(v9, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F56D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v17, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v10);
  if (v11 >= 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v10[0];
  }

  v7 = *(this + 1);
  v12[0] = *this;
  v12[1] = v7;
  v13 = *(this + 4);
  v14 = qword_2A203F930;
  v15 = v4;
  v16 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, a2, v17, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(v12, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_29A0F57B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v10, va);
  v3 = *(this + 10);
  v4 = *(this + 1);
  v6[0] = *this;
  v6[1] = v4;
  v7 = *(this + 4);
  v8 = &unk_2A203F930;
  v9 = v3;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(v5, a2, va, a3);
  sub_29A0F5278(v6, v5);
  __break(1u);
}

void sub_29A0F584C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueWarning(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v16, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v9);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = *(this + 1);
  v11[0] = *this;
  v11[1] = v7;
  v12 = *(this + 4);
  v13 = qword_2A203F930;
  v14 = v4;
  v15 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, v16, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A0F592C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueStatus(pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper *this, pxrInternal__aapl__pxrReserved__ *a2, ...)
{
  va_start(va, a2);
  va_copy(v16, va);
  v4 = *(this + 10);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A203F930, v4, v9);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = *(this + 1);
  v11[0] = *this;
  v11[1] = v7;
  v12 = *(this + 4);
  v13 = qword_2A203F930;
  v14 = v4;
  v15 = v6;
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, v16, v5);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A0F5A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A0F5A58()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__15TfDiagnosticMgrE" & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr*> &)::isInitializing, 1u))
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
      v8 = operator new(0x1C8uLL);
      pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::TfDiagnosticMgr(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A0F5C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::DeleteInstance()
{
  for (result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance); result; result = v1)
  {
    v1 = result;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance, &v1, 0);
    if (v1 == result)
    {
      v2 = *(*result + 8);

      return v2();
    }

    sched_yield();
  }

  return result;
}

void sub_29A0F5DE0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F998, 0, "TF_LOG_STACK_TRACE_ON_ERROR", 0);
  v0 = sub_29A0F83E0();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "TF_LOG_STACK_TRACE_ON_ERROR", "log stack traces for all errors");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F998, 1, "TF_LOG_STACK_TRACE_ON_WARNING", 0);
  v1 = sub_29A0F83E0();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "TF_LOG_STACK_TRACE_ON_WARNING", "log stack traces for all warnings");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F998, 2, "TF_ERROR_MARK_TRACKING", 0);
  v2 = sub_29A0F83E0();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "TF_ERROR_MARK_TRACKING", "capture stack traces at TfErrorMark ctor/dtor, enable TfReportActiveMarks debugging API.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F998, 3, "TF_PRINT_ALL_POSTED_ERRORS_TO_STDERR", 0);
  v3 = sub_29A0F83E0() + 12;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3, "TF_PRINT_ALL_POSTED_ERRORS_TO_STDERR", "print all posted errors immediately, meaning that even errors that are expected and handled will be printed, producing possibly confusing output");
}

pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::TfDiagnosticMgr(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this)
{
  *(this + 1) = 0;
  *this = &unk_2A203F950;
  sub_29A0F8AA0(this + 2);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  sub_29A0F8D18(this + 19);
  sub_29A0F8F94(this + 31);
  v6[0] = 0;
  v2 = sub_29A0F8748(this + 43, v6);
  *(this + 448) = 0;
  atomic_store(0, this + 18);
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance, this))
  {
    v6[0] = "tf/instantiateSingleton.h";
    v6[1] = "SetInstanceConstructed";
    v6[2] = 54;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v3);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v2);
  return this;
}

void sub_29A0F6004(_Unwind_Exception *a1)
{
  sub_29A0F9564((v2 + 248));
  sub_29A0F9340((v4 + 40));
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 120) = v6;
    operator delete(v6);
  }

  sub_29A0F9218(v3);
  sub_29A0F6078(v1, v7);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A0F6078(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    *(v3 + 14) = 0;
    if (*(v3 + 13) == 1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::Invoke2(v3, a2);
    }

    if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::~TfDiagnosticMgr(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this)
{
  *this = &unk_2A203F950;
  sub_29A0F96F8(this + 43);
  sub_29A0F9564(this + 31);
  sub_29A0F9340(this + 19);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  sub_29A0F9218(this + 2);
  sub_29A0F6078(this + 1, v3);
}

{
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::~TfDiagnosticMgr(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::AddDelegate(void *this, pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::Delegate *a2)
{
  v5 = a2;
  if (a2)
  {
    v2 = this;
    v4 = 1;
    v3 = this + 17;
    tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 17);
    sub_29A0A71C8((v2 + 14), &v5);
    return sub_29A0F845C(&v3);
  }

  return this;
}

void sub_29A0F61F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::RemoveDelegate(void *this, pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::Delegate *a2)
{
  if (a2)
  {
    v3 = this;
    v8 = 1;
    v7 = this + 17;
    tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 17);
    v5 = *(v3 + 112);
    v4 = *(v3 + 120);
    if (v5 != v4)
    {
      while (*v5 != a2)
      {
        if (++v5 == v4)
        {
          return sub_29A0F845C(&v7);
        }
      }

      if (v5 != v4)
      {
        v6 = v5 + 1;
        if (v5 + 1 != v4)
        {
          do
          {
            if (*v6 != a2)
            {
              *v5++ = *v6;
            }

            ++v6;
          }

          while (v6 != v4);
          v4 = *(v3 + 120);
        }
      }
    }

    if (v5 != v4)
    {
      *(v3 + 120) = v5;
    }

    return sub_29A0F845C(&v7);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::AppendError(atomic_ullong *a1, __int128 *a2)
{
  v9 = 0;
  if (*sub_29A0F84F8((a1 + 43), &v9))
  {
    v10 = 0;
    v4 = sub_29A0ED084(a1 + 19, &v10);
    v5 = sub_29A0F97D4(v4, 0, 0, a2);
    v6 = *v4;
    *v5 = *v4;
    v5[1] = v4;
    *(v6 + 8) = v5;
    *v4 = v5;
    ++v4[2];
    add = atomic_fetch_add(a1 + 18, 1uLL);
    v8 = *v4;
    *(v8 + 152) = add;
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_AppendErrorsToLogText(a1, v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_ReportError(a1, a2);
  }
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_ReportError(atomic_ullong *a1, uint64_t a2)
{
  LOBYTE(v12) = 0;
  v4 = sub_29A0ED084(a1 + 2, &v12);
  if ((*v4 & 1) == 0)
  {
    v5 = v4;
    *v4 = 1;
    LOBYTE(v13) = 0;
    v12 = a1 + 17;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(a1 + 17);
    v6 = a1[14];
    v7 = a1[15];
    if (v6 == v7)
    {
      sub_29A0F845C(&v12);
    }

    else
    {
      do
      {
        if (*v6)
        {
          (*(**v6 + 16))(*v6, a2);
        }

        ++v6;
      }

      while (v6 != v7);
      v9 = a1[14];
      v8 = a1[15];
      sub_29A0F845C(&v12);
      if (v9 != v8)
      {
        goto LABEL_11;
      }
    }

    if ((*(a2 + 144) & 1) == 0)
    {
      v10 = *MEMORY[0x29EDCA610];
      v11 = *(a2 + 72);
      v12 = *(a2 + 64);
      v13 = v11;
      sub_29A0F6898(v10, &v12, a2, (a2 + 40));
    }

LABEL_11:
    *v5 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_AppendErrorsToLogText(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = sub_29A0ED084((a1 + 248), &v6);
  v7 = 0;
  v5 = sub_29A0ED084((a1 + 152), &v7);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText::_AppendAndPublishImpl(v4, 0, a2, v5);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_SpliceErrors(atomic_ullong *a1, void *a2)
{
  v14 = 0;
  if (*sub_29A0F84F8((a1 + 43), &v14))
  {
    add = atomic_fetch_add(a1 + 18, a2[2]);
    for (i = a2[1]; i != a2; i = i[1])
    {
      i[19] = add++;
    }

    v15 = 0;
    v6 = sub_29A0ED084(a1 + 19, &v15);
    v7 = a2[1];
    v8 = a2[2];
    if (v8)
    {
      v9 = *a2;
      v10 = *(*a2 + 8);
      v11 = *v7;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = *v6;
      *(v12 + 8) = v7;
      *v7 = v12;
      *v6 = v9;
      *(v9 + 8) = v6;
      v6[2] += v8;
      a2[2] = 0;
    }

    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_AppendErrorsToLogText(a1, v7);
  }

  else
  {
    for (j = a2[1]; j != a2; j = j[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_ReportError(a1, (j + 2));
    }
  }
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (**a7)(void, void, void, void, void), unsigned __int8 a8)
{
  v27[6] = *MEMORY[0x29EDCA608];
  v18 = a2;
  v19 = a3;
  v16 = sub_29A0F20E0(8);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::ArchDebuggerTrap(v16);
  }

  if (sub_29A0F6834(0))
  {
    sub_29A0F6898(*MEMORY[0x29EDCA610], &v18, a5, a6);
    sub_29A008E78(__p, "ERROR");
    pxrInternal__aapl__pxrReserved__::TfLogStackTrace(__p, 0);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (sub_29A0F6834(3))
  {
    sub_29A0F6898(*MEMORY[0x29EDCA610], &v18, a5, a6);
  }

  v17 = *(a1 + 448);
  v20[0] = 0;
  v20[1] = 0;
  if (*a7)
  {
    (*a7)(1, a7, v20, 0, 0);
  }

  (pxrInternal__aapl__pxrReserved__::TfError::TfError)(__p, a2, a3, a4, a5, a6, v20, (v17 | a8) != 0, v18, v19);
  sub_29A0F40F0(v20);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::AppendError(a1, __p);
  sub_29A0F40F0(v27);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }
}