tlv *___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_65(uint64_t a1, qmi::MessageBase *this)
{
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v9 = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_2_66;
  v10 = &__block_descriptor_tmp_68;
  v11 = v3;
  result = qmi::MessageBase::findTlvValue(this);
  if (result)
  {
    v6 = result;
    v7 = v5;
    v13 = result;
    memset(v12, 170, sizeof(v12));
    tlv::parseV<awd::tlv::abm::MetricDataEndExt>(&v13, v5, v12);
    if (v13)
    {
      return (v9)(v8, v12);
    }

    else
    {
      return (*MEMORY[0x29EDC91A8])(*this, 83, v6, v7);
    }
  }

  return result;
}

uint64_t tlv::parseV<awd::tlv::abm::MetricDataEndExt>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 20) = -1431655766;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 14) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), v6, 4);
  *(a3 + 12) = *(v5 + 3);
  tlv::throwIfNotEnoughBytes((v5 + 16), v6, 4);
  *(a3 + 16) = *(v5 + 4);
  result = tlv::throwIfNotEnoughBytes((v5 + 20), v6, 2);
  *(a3 + 20) = *(v5 + 10);
  *a1 = (v5 + 22);
  return result;
}

void sub_296ECFE98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

void ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_2_66(uint64_t a1, unsigned __int8 *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 3);
    v5 = *(a2 + 4);
    v7 = *a2;
    v8 = *(a2 + 1);
    *buf = 67109888;
    *&buf[4] = v7;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v5;
    HIWORD(v25) = 1024;
    v26 = v6;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v8;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Got finish submission from BB: appid=0x%x, componentid=0x%x, triggerid=0x%x, submissionid=0x%x", buf, 0x1Au);
  }

  v11 = *(v3 + 72);
  v10 = v3 + 72;
  v9 = v11;
  if (v11)
  {
    v12 = *a2;
    v13 = v10;
    do
    {
      v14 = *(v9 + 32);
      v15 = v14 >= v12;
      v16 = v14 < v12;
      if (v15)
      {
        v13 = v9;
      }

      v9 = *(v9 + 8 * v16);
    }

    while (v9);
    if (v13 != v10 && *(v13 + 32) <= v12)
    {
      v17 = *(v13 + 40);
      v18 = *(v13 + 48);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v19 = *(a2 + 1);
        v20 = *(a2 + 3);
        v21 = *(a2 + 4);
        *buf = 0;
        v25 = __PAIR64__(v19, v21);
        v26 = v20;
        v27 = 0xAAAAAA00AAAA0000;
        v28 = -1431655936;
        v22 = *(a2 + 10);
        awd::AppContext::operator()();
      }

      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm16MetricSubmission10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296ED0144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_5(uint64_t a1, qmi::MessageBase *this)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v7 = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_6;
  v8 = &__block_descriptor_tmp_63_1;
  v9 = v2;
  TlvValue = qmi::MessageBase::findTlvValue(this);
  if (TlvValue)
  {
    v15 = 0;
    v16 = 0;
    v13 = 0xAAAAAAAAAAAA0000;
    __p = 0;
    v11 = 0;
    v12 = 0;
    *buf = 0;
    awd::tlv::abm::parseField(TlvValue, TlvValue + v4, buf);
    v7(v6, buf);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, " Error on metric submission indication", buf, 2u);
    }
  }
}

void sub_296ED02F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_296ED0314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a19)
  {
    JUMPOUT(0x296ED0264);
  }

  JUMPOUT(0x296ED025CLL);
}

void sub_296ED032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!a19)
  {
    JUMPOUT(0x296ED030CLL);
  }

  JUMPOUT(0x296ED0304);
}

char *awd::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), a2, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), a2, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), a2, 4);
  *(a3 + 12) = *(v5 + 3);
  tlv::throwIfNotEnoughBytes((v5 + 16), a2, 4);
  *(a3 + 16) = *(v5 + 4);
  tlv::throwIfNotEnoughBytes((v5 + 20), a2, 4);
  *(a3 + 20) = *(v5 + 5);
  tlv::throwIfNotEnoughBytes((v5 + 24), a2, 2);
  *(a3 + 24) = *(v5 + 12);
  tlv::throwIfNotEnoughBytes((v5 + 26), a2, 2);
  v6 = *(v5 + 13);
  v5 = (v5 + 28);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 32), v5, v5 + v6, v6);
  return v5 + v6;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), a2, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), a2, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), a2, 1);
  *(a3 + 12) = *(v5 + 12);
  tlv::throwIfNotEnoughBytes((v5 + 13), a2, 1);
  *(a3 + 13) = *(v5 + 13);
  tlv::throwIfNotEnoughBytes((v5 + 14), a2, 2);
  v6 = *(v5 + 7);
  v5 = (v5 + 16);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 16), v5, v5 + v6, v6);
  return v5 + v6;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), a2, 1);
  *(a3 + 1) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 2), a2, 2);
  v6 = *(v5 + 1);
  v5 = (v5 + 4);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 8), v5, v5 + v6, v6);
  return v5 + v6;
}

{
  v5 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), a2, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), a2, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), a2, 4);
  *(a3 + 12) = *(v5 + 3);
  tlv::throwIfNotEnoughBytes((v5 + 16), a2, 2);
  *(a3 + 16) = *(v5 + 8);
  tlv::throwIfNotEnoughBytes((v5 + 18), a2, 2);
  v6 = *(v5 + 9);
  v5 = (v5 + 20);
  tlv::throwIfNotEnoughBytes(v5, a2, v6);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 24), v5, v5 + v6, v6);
  return v5 + v6;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v8;
    if (v15 - v8 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v21 = v8 + v20;
      goto LABEL_29;
    }

    v17 = &__src[v16];
    if (v15 == v8)
    {
      v18 = result[1];
      v19 = v18;
      if (v17 == a3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = memmove(*result, __src, v16);
      v18 = v6[1];
      v19 = v18;
      if (v17 == a3)
      {
        goto LABEL_28;
      }
    }

    v22 = &a3[v8] - &__src[v15];
    if (v22 >= 0x20)
    {
      v19 = v18;
      if (v8 + v18 - &__src[v15] >= 0x20)
      {
        v17 += v22 & 0xFFFFFFFFFFFFFFE0;
        v19 = (v18 + (v22 & 0xFFFFFFFFFFFFFFE0));
        v23 = (v18 + 16);
        v24 = &__src[v15 - v8 + 16];
        v25 = v22 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v26 = *v24;
          *(v23 - 1) = *(v24 - 1);
          *v23 = v26;
          v23 += 2;
          v24 += 32;
          v25 -= 32;
        }

        while (v25);
        if (v22 == (v22 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v27 = *v17++;
      *v19++ = v27;
    }

    while (v17 != a3);
LABEL_28:
    v21 = v19;
LABEL_29:
    v6[1] = v21;
    return result;
  }

  if (v8)
  {
    result[1] = v8;
    v9 = v8;
    v10 = a4;
    operator delete(v9);
    a4 = v10;
    v7 = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = 2 * v7;
  if (2 * v7 <= a4)
  {
    v11 = a4;
  }

  if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  result = operator new(v12);
  v13 = result;
  *v6 = result;
  v6[1] = result;
  v6[2] = result + v12;
  if (__src != a3)
  {
    v14 = a3 - __src;
    result = memcpy(result, __src, v14);
    v13 += v14;
  }

  v6[1] = v13;
  return result;
}

void ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_6(uint64_t a1, unsigned __int8 *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 4);
    v6 = *a2;
    v7 = *(a2 + 1);
    *buf = 67109632;
    *v27 = v6;
    *&v27[4] = 1024;
    *&v27[6] = v5;
    *&v27[10] = 1024;
    v28 = v7;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Got metric submission from BB: appid=%d, metricid=0x%x, submissionid=0x%x", buf, 0x14u);
  }

  v10 = *(v3 + 72);
  v9 = v3 + 72;
  v8 = v10;
  if (v10)
  {
    v11 = *a2;
    v12 = v9;
    do
    {
      v13 = *(v8 + 32);
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v8;
      }

      v8 = *(v8 + 8 * v15);
    }

    while (v8);
    if (v12 != v9 && *(v12 + 32) <= v11)
    {
      v17 = *(v12 + 40);
      v16 = *(v12 + 48);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v18 = *(a2 + 1);
        v19 = *(a2 + 3);
        *buf = *(a2 + 2);
        *v27 = *(a2 + 2);
        *&v27[8] = v18;
        v28 = v19;
        v29 = -1431699456;
        v30 = -1431655936;
        v31 = -1431655936;
        v20 = *(a2 + 12);
        __p = 0;
        v22 = *(a2 + 4);
        v21 = *(a2 + 5);
        v23 = v21 - v22;
        if (v21 != v22)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          __p = operator new(v21 - v22);
          memcpy(__p, v22, v23);
        }

        awd::AppContext::operator()();
        if (__p)
        {
          operator delete(__p);
        }
      }

      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_296ED0840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm13SubmitTrigger10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296ED0940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_70(uint64_t a1, qmi::MessageBase *this)
{
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v11 = ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_2_71;
  v12 = &__block_descriptor_tmp_73_0;
  v13 = v3;
  TlvValue = qmi::MessageBase::findTlvValue(this);
  if (!TlvValue)
  {
    goto LABEL_6;
  }

  v6 = TlvValue;
  v7 = v5;
  v16 = TlvValue;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v8;
  v15 = v8;
  tlv::parseV<awd::tlv::abm::SubmitTriggerExt>(&v16, v5, buf);
  if (v16)
  {
    v11(v10, buf);
    return;
  }

  if (((*MEMORY[0x29EDC91A8])(*this, 84, v6, v7) & 1) == 0)
  {
LABEL_6:
    v9 = *(v3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v9, OS_LOG_TYPE_ERROR, "Error on trigger submission indication", buf, 2u);
    }
  }
}

uint64_t tlv::parseV<awd::tlv::abm::SubmitTriggerExt>@<X0>(tlv **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = xmmword_296FC3510;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4);
  *a3 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4);
  *(a3 + 4) = *(v5 + 1);
  tlv::throwIfNotEnoughBytes((v5 + 8), v6, 4);
  *(a3 + 8) = *(v5 + 2);
  tlv::throwIfNotEnoughBytes((v5 + 12), v6, 4);
  *(a3 + 12) = *(v5 + 3);
  tlv::throwIfNotEnoughBytes((v5 + 16), v6, 4);
  *(a3 + 16) = *(v5 + 4);
  result = tlv::throwIfNotEnoughBytes((v5 + 20), v6, 8);
  *(a3 + 24) = *(v5 + 20);
  *a1 = (v5 + 28);
  return result;
}

void sub_296ED0BB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3awd3abm19MetricSubmissionEnd10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296ED0CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZZN3awd19QMIAwdCommandDriver4initEvENK3__0clEv_block_invoke_2_71(uint64_t a1, unsigned __int8 *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a2 + 3);
    v18 = *(a2 + 4);
    v20 = *a2;
    v21 = *(a2 + 1);
    v22 = *(a2 + 2);
    v23 = *(a2 + 3);
    *buf = 67110400;
    v27 = v20;
    LOWORD(v28) = 1024;
    *(&v28 + 2) = v18;
    HIWORD(v28) = 1024;
    v29 = v19;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v21;
    HIWORD(v30) = 1024;
    v31 = v22;
    v32 = 2048;
    v33 = v23;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Got trigger submission from BB: appid=%d, cid=0x%x, trid=0x%x, sid=0x%x, profid=0x%x, %lld", buf, 0x2Au);
    v24 = *(v3 + 72);
    v6 = v3 + 72;
    v5 = v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *(v3 + 72);
    v6 = v3 + 72;
    v5 = v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v8 = *a2;
  v9 = v6;
  do
  {
    v10 = *(v5 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v5;
    }

    v5 = *(v5 + 8 * v12);
  }

  while (v5);
  if (v9 != v6 && *(v9 + 32) <= v8)
  {
    v13 = *(v9 + 40);
    v14 = *(v9 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      v15 = *(a2 + 1);
      v17 = *(a2 + 3);
      v16 = *(a2 + 4);
      *buf = *(a2 + 2);
      v27 = 0;
      v28 = __PAIR64__(v15, v16);
      v29 = v17;
      v30 = 0xAAAAAA00AAAA0000;
      v31 = -1431655936;
      awd::AppContext::operator()();
    }

    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_18:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_296ED0EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::TDSCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::TDSCDMABandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 20, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED0FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED0FB8);
  }

  JUMPOUT(0x296ED0FB0);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9WWANState10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296ED10B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_4(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v175 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v174 = Mutable;
    v175 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v174 = 0;
  }

  v176 = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTEBandInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_362_0;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *MEMORY[0x29EDC87E8];
  v183 = *MEMORY[0x29EDC87E8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v10 = TlvValue;
  if (TlvValue)
  {
    v11 = v9;
    v184[0] = TlvValue;
    v177[0] = tlv::parseV<coex::tlv::abm::LTEBandInformation>(v184, v9);
    v177[1] = v12;
    if (v184[0])
    {
      v180(&v178, v177);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v10, v11);
    }
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v173 = v6;
    CFRetain(v6);
  }

  else
  {
    v173 = 0;
  }

  v176 = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm17LTETDDInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_366;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v13 = *MEMORY[0x29EDC87D0];
  v183 = *MEMORY[0x29EDC87D0];
  v14 = qmi::MessageBase::findTlvValue(a2);
  v16 = v14;
  if (v14)
  {
    v17 = v15;
    v184[0] = v14;
    memset(v177, 170, 20);
    tlv::parseV<coex::tlv::abm::LTETDDInformation>(v184, v15, v177);
    if (v184[0])
    {
      v180(&v178, v177);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 17, v16, v17);
    }
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v172 = v6;
    CFRetain(v6);
  }

  else
  {
    v172 = 0;
  }

  v177[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12LTEOffPeriodENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_370;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v151 = *MEMORY[0x29EDC86F0];
  v183 = *MEMORY[0x29EDC86F0];
  v18 = qmi::MessageBase::findTlvValue(a2);
  v26 = v18;
  if (v18)
  {
    tlv::throwIfNotEnoughBytes(v18, v18 + v19, 4);
    LODWORD(v184[0]) = *v26;
    v180(&v178, v184);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v171 = v6;
    CFRetain(v6);
  }

  else
  {
    v171 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTEBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_373_0;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v27 = *MEMORY[0x29EDC88D0];
  v183 = *MEMORY[0x29EDC88D0];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTEBandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTEBandInformationSet const&)>(a2, v177, v20, v21, v22, v23, v24, v25, v116, v127, v139);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v170 = v6;
    CFRetain(v6);
  }

  else
  {
    v170 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25TDSCDMABandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_376;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v183 = *MEMORY[0x29EDC89D8];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::TDSCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::TDSCDMABandInformationSet const&)>(a2, v177, v28, v29, v30, v31, v32, v33, v117, v128, v140);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v169 = v6;
    CFRetain(v6);
  }

  else
  {
    v169 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21GSMBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_379;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v40 = *MEMORY[0x29EDC88B0];
  v183 = *MEMORY[0x29EDC88B0];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSMBandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSMBandInformationSet const&)>(a2, v177, v34, v35, v36, v37, v38, v39, v118, v129, v141);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v168 = v6;
    CFRetain(v6);
  }

  else
  {
    v168 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22ONEXBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_382_0;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v183 = *MEMORY[0x29EDC8910];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::ONEXBandInformationSet,void({block_pointer}&)(coex::tlv::abm::ONEXBandInformationSet const&)>(a2, v177, v41, v42, v43, v44, v45, v46, v119, v130, v142);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v167 = v6;
    CFRetain(v6);
  }

  else
  {
    v167 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21HDRBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_385_0;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v183 = *MEMORY[0x29EDC88C0];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::HDRBandInformationSet,void({block_pointer}&)(coex::tlv::abm::HDRBandInformationSet const&)>(a2, v177, v47, v48, v49, v50, v51, v52, v120, v131, v143);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v166 = v6;
    CFRetain(v6);
  }

  else
  {
    v166 = 0;
  }

  v150 = v13;
  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm23WCDMABandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_388;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v59 = *MEMORY[0x29EDC8968];
  v183 = *MEMORY[0x29EDC8968];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMABandInformationSet const&)>(a2, v177, v53, v54, v55, v56, v57, v58, v121, v132, v144);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v165 = v6;
    CFRetain(v6);
  }

  else
  {
    v165 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24LTECarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_391;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v60 = *MEMORY[0x29EDC8988];
  v183 = *MEMORY[0x29EDC8988];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTECarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTECarrierInformationSet const&)>(a2, v177);
  if (v182)
  {
    CFRelease(v182);
  }

  v149 = v27;
  if (v6)
  {
    CFRelease(v6);
    v164 = v6;
    CFRetain(v6);
  }

  else
  {
    v164 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21NGCBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_394;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v67 = *MEMORY[0x29EDC88E0];
  v183 = *MEMORY[0x29EDC88E0];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCBandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCBandInformationSet const&)>(a2, v177, v61, v62, v63, v64, v65, v66, v122, v133, v60);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
    v163 = v6;
    CFRetain(v6);
  }

  else
  {
    v163 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24NGCCarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_397;
  v182 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v134 = *MEMORY[0x29EDC8990];
  v183 = *MEMORY[0x29EDC8990];
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCCarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCCarrierInformationSet const&)>(a2, v177);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (CFDictionaryGetCount(v6))
  {
    v178 = 0;
    v68 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v69 = v68;
    if (v68)
    {
      v178 = v68;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v68, *MEMORY[0x29EDC8790], v6);
    if (v69 && (v70 = CFGetTypeID(v69), v70 == CFDictionaryGetTypeID()))
    {
      v162 = v69;
      CFRetain(v69);
      v71 = v69;
    }

    else
    {
      v71 = 0;
      v162 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v3, &v162, 0);
    if (v71)
    {
      CFRelease(v71);
    }

    if (v69)
    {
      CFRelease(v69);
    }

    v6 = v175;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v175 = 0;
  v72 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v79 = v72;
  if (v72)
  {
    v175 = v72;
    v161 = v72;
    CFRetain(v72);
  }

  else
  {
    v161 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22GSM2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_400;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v40;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSM2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSM2BandInformationSet const&)>(a2, v177, v73, v74, v75, v76, v77, v78, v123, v134, v145);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v160 = v79;
    CFRetain(v79);
  }

  else
  {
    v160 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24WCDMA2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_403;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v59;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMA2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMA2BandInformationSet const&)>(a2, v177, v80, v81, v82, v83, v84, v85, v124, v135, v146);
  if (v182)
  {
    CFRelease(v182);
  }

  v86 = v4;
  if (v79)
  {
    CFRelease(v79);
    v87 = v3;
    v159 = v79;
    CFRetain(v79);
  }

  else
  {
    v87 = v3;
    v159 = 0;
  }

  v176 = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm19LTE2BandInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_407;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v7;
  v88 = qmi::MessageBase::findTlvValue(a2);
  v90 = v88;
  if (v88)
  {
    v91 = v89;
    v184[0] = v88;
    v177[0] = tlv::parseV<coex::tlv::abm::LTE2BandInformation>(v184, v89);
    v177[1] = v92;
    if (v184[0])
    {
      v180(&v178, v177);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 29, v90, v91);
    }
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v158 = v79;
    CFRetain(v79);
  }

  else
  {
    v158 = 0;
  }

  v176 = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTE2TDDInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_411;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v150;
  v93 = qmi::MessageBase::findTlvValue(a2);
  v95 = v93;
  if (v93)
  {
    v96 = v94;
    v184[0] = v93;
    memset(v177, 170, 20);
    tlv::parseV<coex::tlv::abm::LTE2TDDInformation>(v184, v94, v177);
    if (v184[0])
    {
      v180(&v178, v177);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 30, v95, v96);
    }
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v157 = v79;
    CFRetain(v79);
  }

  else
  {
    v157 = 0;
  }

  v177[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm13LTE2OffPeriodENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_415;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v151;
  v97 = qmi::MessageBase::findTlvValue(a2);
  v105 = v97;
  if (v97)
  {
    tlv::throwIfNotEnoughBytes(v97, v97 + v98, 4);
    LODWORD(v184[0]) = *v105;
    v180(&v178, v184);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v156 = v79;
    CFRetain(v79);
  }

  else
  {
    v156 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTE2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_418;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v149;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2BandInformationSet const&)>(a2, v177, v99, v100, v101, v102, v103, v104, v125, v136, v147);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v155 = v79;
    CFRetain(v79);
  }

  else
  {
    v155 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25LTE2CarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_421;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v148;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2CarrierInformationSet const&)>(a2, v177);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v154 = v79;
    CFRetain(v79);
  }

  else
  {
    v154 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22NGC2BandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_424;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v67;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2BandInformationSet const&)>(a2, v177, v106, v107, v108, v109, v110, v111, v126, v137, v148);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
    v153 = v79;
    CFRetain(v79);
  }

  else
  {
    v153 = 0;
  }

  v184[0] = 0;
  v178 = MEMORY[0x29EDCA5F8];
  v179 = 1174405120;
  v180 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25NGC2CarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v181 = &__block_descriptor_tmp_427;
  v182 = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  v183 = v138;
  v177[0] = &v178;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2CarrierInformationSet const&)>(a2, v177);
  if (v182)
  {
    CFRelease(v182);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (CFDictionaryGetCount(v79))
  {
    v178 = 0;
    v112 = CFDictionaryCreateMutable(v86, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v113 = v112;
    if (v112)
    {
      v178 = v112;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v112, *MEMORY[0x29EDC8790], v79);
    if (v113 && (v114 = CFGetTypeID(v113), v114 == CFDictionaryGetTypeID()))
    {
      v152 = v113;
      CFRetain(v113);
      v115 = v113;
    }

    else
    {
      v115 = 0;
      v152 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v87, &v152, 1);
    if (v115)
    {
      CFRelease(v115);
    }

    if (v113)
    {
      CFRelease(v113);
    }

    v79 = v175;
  }

  if (v79)
  {
    CFRelease(v79);
  }
}

void sub_296ED2180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v7 - 160));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v7 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2310(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 18, v2, v3);
  JUMPOUT(0x296ED140CLL);
}

void sub_296ED2364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v8 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v9 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v9 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v9 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v10 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v10 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED23BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v10 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v11 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v11 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED23E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v11 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v12 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v12 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v15 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v16 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v16 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v16 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v17 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v17 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v26 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v27 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a26);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v28 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a27);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v28 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED24C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v28 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v29 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a28);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v29 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v29 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a29);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v31 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a30);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v31 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v31 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v32 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a31);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v32 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v32 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v33 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v33 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED25A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v33 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v34 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v34 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v34 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v35 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a34);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v35 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED25FC(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 160));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v12 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v13 - 184));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v13 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v35 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v36 - 184));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a35);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v36 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED2698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v13 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v14 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v14 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED26C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v14 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v15 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v15 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v36 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v37 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a36);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v37 - 200));
  _Unwind_Resume(a1);
}

void sub_296ED271C(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v2 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 208));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 200));
  _Unwind_Resume(a1);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::LTEBandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTEBandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 19, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED2808);
  }

  JUMPOUT(0x296ED2800);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::GSMBandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSMBandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 21, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED28F8);
  }

  JUMPOUT(0x296ED28F0);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::ONEXBandInformationSet,void({block_pointer}&)(coex::tlv::abm::ONEXBandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 22, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED29E8);
  }

  JUMPOUT(0x296ED29E0);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::HDRBandInformationSet,void({block_pointer}&)(coex::tlv::abm::HDRBandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 23, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED2AD8);
  }

  JUMPOUT(0x296ED2AD0);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMABandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 24, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED2BC8);
  }

  JUMPOUT(0x296ED2BC0);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::LTECarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTECarrierInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v6 = TlvValue;
    v7 = v5;
    v10 = TlvValue;
    memset(__p, 170, sizeof(__p));
    tlv::parseV<coex::tlv::abm::LTECarrierInformationSet>(&v10, v5, __p);
    v8 = v10;
    if (v10)
    {
      (*(*a2 + 16))();
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v8)
    {
      (*MEMORY[0x29EDC91A8])(*a1, 28, v6, v7);
    }
  }
}

void sub_296ED2CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::NGCBandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCBandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 34, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED2DA4);
  }

  JUMPOUT(0x296ED2D9CLL);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::NGCCarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCCarrierInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v6 = TlvValue;
    v7 = v5;
    v10 = TlvValue;
    memset(__p, 170, sizeof(__p));
    tlv::parseV<coex::tlv::abm::NGCCarrierInformationSet>(&v10, v5, __p);
    v8 = v10;
    if (v10)
    {
      (*(*a2 + 16))();
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v8)
    {
      (*MEMORY[0x29EDC91A8])(*a1, 35, v6, v7);
    }
  }
}

void sub_296ED2EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::GSM2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSM2BandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 25, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED2FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED2F80);
  }

  JUMPOUT(0x296ED2F78);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMA2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMA2BandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 27, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED3070);
  }

  JUMPOUT(0x296ED3068);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2BandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 32, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED3180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED3160);
  }

  JUMPOUT(0x296ED3158);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2CarrierInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v6 = TlvValue;
    v7 = v5;
    v10 = TlvValue;
    memset(__p, 170, sizeof(__p));
    tlv::parseV<coex::tlv::abm::LTE2CarrierInformationSet>(&v10, v5, __p);
    v8 = v10;
    if (v10)
    {
      (*(*a2 + 16))();
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v8)
    {
      (*MEMORY[0x29EDC91A8])(*a1, 33, v6, v7);
    }
  }
}

void sub_296ED3260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2BandInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v15 = TlvValue;
    __p = 0;
    v20 = 0;
    v16 = v14;
    v21 = 0;
    if (coex::tlv::abm::parseField(TlvValue, TlvValue + v14, &__p))
    {
      (*(*a2 + 16))();
      v17 = 0;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = 1;
      v18 = __p;
      if (!__p)
      {
LABEL_5:
        if (v17)
        {
          (*MEMORY[0x29EDC91A8])(*a1, 37, v15, v16);
        }

        return;
      }
    }

    v20 = v18;
    operator delete(v18);
    goto LABEL_5;
  }
}

void sub_296ED335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x296ED333CLL);
  }

  JUMPOUT(0x296ED3334);
}

void qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2CarrierInformationSet const&)>(qmi::MessageBase *a1, uint64_t a2)
{
  TlvValue = qmi::MessageBase::findTlvValue(a1);
  if (TlvValue)
  {
    v6 = TlvValue;
    v7 = v5;
    v10 = TlvValue;
    memset(__p, 170, sizeof(__p));
    tlv::parseV<coex::tlv::abm::NGC2CarrierInformationSet>(&v10, v5, __p);
    v8 = v10;
    if (v10)
    {
      (*(*a2 + 16))();
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v8)
    {
      (*MEMORY[0x29EDC91A8])(*a1, 38, v6, v7);
    }
  }
}

void sub_296ED343C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::cf::insert<__CFString const*,__CFNumber const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED34D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296ED34FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

unint64_t tlv::parseV<coex::tlv::abm::LTEBandInformation>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 4);
  v6 = *(v3 + 1);
  tlv::throwIfNotEnoughBytes((v3 + 8), v4, 4);
  v7 = *(v3 + 2);
  tlv::throwIfNotEnoughBytes((v3 + 12), v4, 4);
  v8 = v7 | (*(v3 + 3) << 32);
  *a1 = (v3 + 16);
  return v5 | (v6 << 32);
}

void sub_296ED35C8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296ED35A8);
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTEBandInformationENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int *a2)
{
  coex::convert(&cf, a2);
  ctu::cf::insert<__CFString const*,__CFDictionary *>(*(a1 + 32), *(a1 + 40), cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED3624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void coex::convert(CFMutableDictionaryRef *a1, unsigned int *a2)
{
  *a1 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    *a1 = Mutable;
  }

  coex::convert(&v8, a2);
  v6 = v8;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v5, *MEMORY[0x29EDC87E0], v8);
  if (v6)
  {
    CFRelease(v6);
  }

  coex::convert(&v8, a2 + 2);
  v7 = v8;
  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v5, *MEMORY[0x29EDC87C8], v8);
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296ED3710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

void coex::convert(__CFDictionary **a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  valuePtr = *a2;
  v5 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  valuePtr = a2[1];
  v6 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (Mutable)
  {
    valuePtr = Mutable;
  }

  ctu::cf::insert<__CFString const*,__CFNumber const*>(Mutable, *MEMORY[0x29EDC8778], v5);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(v8, *MEMORY[0x29EDC8658], v6);
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFDictionaryGetTypeID())
    {
      *a1 = v8;
      CFRetain(v8);
    }

    else
    {
      *a1 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    *a1 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC86D0], *a2, v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8690], a2[1], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8770], a2[2], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8650], a2[3], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8640], a2[4], v4);
  if (Mutable)
  {
    v6 = CFGetTypeID(Mutable);
    if (v6 == CFDictionaryGetTypeID())
    {
      *a1 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *a1 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_296ED38BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, const void *a12)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFDictionary *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED3998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296ED39BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFData const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED3A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296ED3A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFArray const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED3B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296ED3B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void tlv::parseV<coex::tlv::abm::LTECarrierInformationSet>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<coex::tlv::abm::LTECarrierInformation>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v8 = coex::tlv::abm::parseField(v8, v6, v10);
        v10 += 40;
      }

      while (v10 != v11);
    }
  }

  *a1 = v8;
}

void sub_296ED3BD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296ED3BC0);
}

void sub_296ED3BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ctu::cf::insert<__CFString const*,__CFDictionary const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296ED3C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296ED3CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void std::vector<coex::tlv::abm::BandInfoSet>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::vector<coex::tlv::abm::LTECarrierInformation>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(16 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 16 * a2;
    bzero(&v11[16 * (v6 >> 4)], 16 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[16 * (v6 >> 4) + v13];
    *(a1 + 16) = &v11[16 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

char *coex::tlv::abm::parseField(tlv *a1, const unsigned __int8 *a2, void *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 4;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfoSet>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  if (v9 == v10)
  {
    return v7;
  }

  v14 = v9 + 1;
  do
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *(v14 - 2) = *v7;
    v15 = v14 - 1;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    *(v14 - 1) = *(v7 + 1);
    v16 = v7 + 8;
    tlv::throwIfNotEnoughBytes((v7 + 8), a2, 8);
    if ((a2 - (v7 + 8)) >= 8)
    {
      *v14 = *(v7 + 1);
      v16 = v7 + 16;
    }

    v14 += 2;
    v7 = v16;
  }

  while (v15 + 2 != v10);
  return v16;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    v9[1] = *(v7 + 1);
    v7 += 8;
    v9 += 2;
  }

  return v7;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v7 = a1 + 1;
  v6 = v8;
  v9 = *a3;
  v10 = a3[1];
  v11 = (v10 - *a3) >> 3;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (v8 <= v11)
  {
    if (!v12)
    {
      v10 = &v9[2 * v6];
      a3[1] = v10;
    }
  }

  else
  {
    std::vector<coex::tlv::abm::BandInfo>::__append(a3, v13);
    v9 = *a3;
    v10 = a3[1];
  }

  while (v9 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 4);
    *v9 = *v7;
    tlv::throwIfNotEnoughBytes((v7 + 4), a2, 4);
    v9[1] = *(v7 + 1);
    v7 += 8;
    v9 += 2;
  }

  return v7;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 8);
  *a3 = *a1;
  return a1 + 8;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTEBandInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296ED3F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void coex::convert(__CFArray **a1, unsigned int **a2)
{
  v4 = (a2[1] - *a2) >> 4;
  if (v4 < 0)
  {
    goto LABEL_24;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], v4, MEMORY[0x29EDB9000]);
  v22 = a1;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = *MEMORY[0x29EDC8778];
    v10 = *MEMORY[0x29EDC8658];
    v11 = *MEMORY[0x29EDC8720];
    do
    {
      v12 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      valuePtr = *v7;
      v13 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
      ctu::cf::insert<__CFString const*,__CFNumber const*>(v12, v9, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      valuePtr = v7[1];
      v14 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
      ctu::cf::insert<__CFString const*,__CFNumber const*>(v12, v10, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *(v7 + 1);
      valuePtr = 0;
      v16 = operator new(8uLL);
      *v16 = v15;
      v17 = CFDataCreate(v5, v16, 8);
      v18 = v17;
      if (v17)
      {
        valuePtr = v17;
      }

      operator delete(v16);
      ctu::cf::insert<__CFString const*,__CFData const*>(v12, v11, v18);
      if (v18)
      {
        CFRelease(v18);
      }

      if (v12)
      {
        v19 = CFGetTypeID(v12);
        if (v19 == CFDictionaryGetTypeID())
        {
          cf = v12;
          CFRetain(v12);
          v20 = v12;
        }

        else
        {
          v20 = 0;
          cf = 0;
        }

        CFRelease(v12);
      }

      else
      {
        v20 = 0;
        cf = 0;
      }

      CFArrayAppendValue(Mutable, v20);
      if (cf)
      {
        CFRelease(cf);
      }

      v7 += 4;
    }

    while (v7 != v8);
  }

  a1 = v22;
  if (!Mutable)
  {
LABEL_24:
    *a1 = 0;
  }

  else
  {
    v21 = CFGetTypeID(Mutable);
    if (v21 == CFArrayGetTypeID())
    {
      *v22 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *v22 = 0;
    }

    CFRelease(Mutable);
  }
}

{
  v3 = a2[1] - *a2;
  if (v3 < 0)
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3), MEMORY[0x29EDB9000]);
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    valuePtr = *v7;
    v9 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }

    v7 += 10;
  }

  if (Mutable)
  {
    v10 = CFGetTypeID(Mutable);
    if (v10 == CFArrayGetTypeID())
    {
      *a1 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *a1 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
LABEL_10:
    *a1 = 0;
  }
}

{
  v3 = a2[1] - *a2;
  if (v3 < 0)
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0x6DB6DB6DB6DB6DB7 * (v3 >> 2), MEMORY[0x29EDB9000]);
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    valuePtr = *v7;
    v9 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }

    v7 += 7;
  }

  if (Mutable)
  {
    v10 = CFGetTypeID(Mutable);
    if (v10 == CFArrayGetTypeID())
    {
      *a1 = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *a1 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
LABEL_10:
    *a1 = 0;
  }
}

void sub_296ED41D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296ED4200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296ED4270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296ED428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3__4EEvtOT_EUlNS2_16SubscriptionTypeERK13QMIServiceMsgE_NS_9allocatorISE_EEFvSA_SD_EEclEOSA_SD_(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, 24);
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v12, __p[0]);
    qmi::MessageBase::validateMsgId(v12);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v12);
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v4;
    _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Received frequency report indication for type %d ", __p, 8u);
  }

  __p[0] = v12[0];
  __p[1] = v12[1];
  __p[2] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  qmi::MessageBase::validateMsgId(__p);
  v14[0] = __p[0];
  v14[1] = __p[1];
  v14[2] = __p[2];
  if (__p[2])
  {
    atomic_fetch_add_explicit(__p[2] + 1, 1uLL, memory_order_relaxed);
  }

  qmi::MessageBase::validateMsgId(v14);
  qmi::MessageBase::~MessageBase(__p);
  if (v4 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v4 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  desense::QMICommandDriver::processFrequencyInd_sync(v7, v10, v14);
  qmi::MessageBase::~MessageBase(v14);
  qmi::MessageBase::~MessageBase(v12);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_296ED4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void desense::QMICommandDriver::processFrequencyInd_sync(uint64_t a1, int a2, qmi::MessageBase *this)
{
  v360 = *MEMORY[0x29EDCA608];
  v311 = 0;
  v312 = &v311;
  v313 = 0x4002000000;
  v314 = __Block_byref_object_copy__1;
  v315 = __Block_byref_object_dispose__1;
  v316 = &v316;
  v317 = &v316;
  v318 = 0;
  v303 = 0;
  v304 = &v303;
  v305 = 0x4002000000;
  v306 = __Block_byref_object_copy__1;
  v307 = __Block_byref_object_dispose__1;
  v308 = &v308;
  v309 = &v308;
  v310 = 0;
  v295 = 0;
  v296 = &v295;
  v297 = 0x4002000000;
  v298 = __Block_byref_object_copy__1;
  v299 = __Block_byref_object_dispose__1;
  v300 = &v300;
  v301 = &v300;
  v302 = 0;
  v287 = 0;
  v288 = &v287;
  v289 = 0x4002000000;
  v290 = __Block_byref_object_copy__1;
  v291 = __Block_byref_object_dispose__1;
  v292 = &v292;
  v293 = &v292;
  v294 = 0;
  v279 = 0;
  v280 = &v279;
  v281 = 0x4002000000;
  v282 = __Block_byref_object_copy__1;
  v283 = __Block_byref_object_dispose__1;
  v284 = &v284;
  v285 = &v284;
  v286 = 0;
  v271 = 0;
  v272 = &v271;
  v273 = 0x4002000000;
  v274 = __Block_byref_object_copy__1;
  v275 = __Block_byref_object_dispose__1;
  v276 = &v276;
  v277 = &v276;
  v278 = 0;
  v267 = 0;
  v268 = &v267;
  v269 = 0x2000000000;
  v270 = 0;
  v263[0] = MEMORY[0x29EDCA5F8];
  v263[1] = 0x40000000;
  v264 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke;
  v265 = &unk_29EE5E2A8;
  v266 = &v267;
  TlvValue = qmi::MessageBase::findTlvValue(this);
  v7 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 1);
    __p[0] = *v7;
    v264(v263, __p);
  }

  if ((*(v268 + 6) | 2) == 2)
  {
    v258[0] = MEMORY[0x29EDCA5F8];
    v258[1] = 0x40000000;
    v259 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_2;
    v260 = &unk_29EE5E2D0;
    v262 = a1;
    v261 = &v311;
    v8 = qmi::MessageBase::findTlvValue(this);
    v10 = v8;
    if (v8)
    {
      v11 = v9;
      *&v331 = v8;
      memset(__p, 170, 24);
      tlv::parseV<nas::tlv::abm::BBCampUplinkFreqList>(&v331, v9, __p);
      v12 = v331;
      if (v331)
      {
        v259(v258, __p);
      }

      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (!v12)
      {
        (*MEMORY[0x29EDC91A8])(*this, 189, v10, v11);
      }
    }
  }

  v253[0] = MEMORY[0x29EDCA5F8];
  v253[1] = 0x40000000;
  v254 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_3;
  v255 = &unk_29EE5E2F8;
  v256 = &v271;
  v257 = a1;
  v13 = qmi::MessageBase::findTlvValue(this);
  v15 = v13;
  if (v13)
  {
    *&__p[8] = 0xAAAAAAAAAAAAAAAALL;
    v16 = v14;
    tlv::throwIfNotEnoughBytes(v13, v13 + v14, 8);
    v17 = *v15;
    tlv::throwIfNotEnoughBytes((v15 + 8), &v15[v16], 4);
    v18 = *(v15 + 2);
    *__p = v17;
    *&__p[8] = v18;
    v254(v253, __p);
  }

  v248[0] = MEMORY[0x29EDCA5F8];
  v248[1] = 0x40000000;
  v249 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_4;
  v250 = &unk_29EE5E320;
  v251 = &v295;
  v252 = a1;
  v19 = qmi::MessageBase::findTlvValue(this);
  v21 = v19;
  if (v19)
  {
    v22 = v20;
    *&v331 = v19;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::BBHoppingList>(&v331, v20, __p);
    v23 = v331;
    if (v331)
    {
      v249(v248, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v23)
    {
      (*MEMORY[0x29EDC91A8])(*this, 180, v21, v22);
    }
  }

  v243[0] = MEMORY[0x29EDCA5F8];
  v243[1] = 0x40000000;
  v244 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_5;
  v245 = &unk_29EE5E348;
  v246 = &v287;
  v247 = a1;
  v24 = qmi::MessageBase::findTlvValue(this);
  v26 = v24;
  if (v24)
  {
    v27 = v25;
    *&v331 = v24;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::BBNeighborList>(&v331, v25, __p);
    v28 = v331;
    if (v331)
    {
      v244(v243, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v28)
    {
      (*MEMORY[0x29EDC91A8])(*this, 181, v26, v27);
    }
  }

  v238[0] = MEMORY[0x29EDCA5F8];
  v238[1] = 0x40000000;
  v239 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_6;
  v240 = &unk_29EE5E370;
  v241 = &v279;
  v242 = a1;
  v29 = qmi::MessageBase::findTlvValue(this);
  v31 = v29;
  if (v29)
  {
    v32 = v30;
    *&v331 = v29;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::BBHRPLMNList>(&v331, v30, __p);
    v33 = v331;
    if (v331)
    {
      v239(v238, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v33)
    {
      (*MEMORY[0x29EDC91A8])(*this, 182, v31, v32);
    }
  }

  v233[0] = MEMORY[0x29EDCA5F8];
  v233[1] = 0x40000000;
  v234 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_7;
  v235 = &unk_29EE5E398;
  v236 = &v271;
  v237 = a1;
  v34 = qmi::MessageBase::findTlvValue(this);
  v36 = v34;
  if (v34)
  {
    *&__p[8] = 0xAAAAAAAAAAAAAAAALL;
    v37 = v35;
    tlv::throwIfNotEnoughBytes(v34, v34 + v35, 8);
    v38 = *v36;
    tlv::throwIfNotEnoughBytes((v36 + 8), &v36[v37], 4);
    v39 = *(v36 + 2);
    *__p = v38;
    *&__p[8] = v39;
    v234(v233, __p);
  }

  v228[0] = MEMORY[0x29EDCA5F8];
  v228[1] = 0x40000000;
  v229 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_8;
  v230 = &unk_29EE5E3C0;
  v231 = &v287;
  v232 = a1;
  v40 = qmi::MessageBase::findTlvValue(this);
  v42 = v40;
  if (v40)
  {
    v43 = v41;
    *&v331 = v40;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::BBNeighborSecondList>(&v331, v41, __p);
    v44 = v331;
    if (v331)
    {
      v229(v228, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v44)
    {
      (*MEMORY[0x29EDC91A8])(*this, 186, v42, v43);
    }
  }

  v223[0] = MEMORY[0x29EDCA5F8];
  v223[1] = 0x40000000;
  v224 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_9;
  v225 = &unk_29EE5E3E8;
  v226 = &v271;
  v227 = a1;
  v45 = qmi::MessageBase::findTlvValue(this);
  v47 = v45;
  if (v45)
  {
    v48 = v46;
    *&v331 = v45;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::DLSCellFrequencyList>(&v331, v46, __p);
    v49 = v331;
    if (v331)
    {
      v224(v223, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v49)
    {
      (*MEMORY[0x29EDC91A8])(*this, 188, v47, v48);
    }
  }

  v218[0] = MEMORY[0x29EDCA5F8];
  v218[1] = 0x40000000;
  v219 = ___ZN7desense16QMICommandDriver24processFrequencyInd_syncEN4coex5SubIdERKN3nas3abm17SetFreqReportMode7RespIndE_block_invoke_10;
  v220 = &unk_29EE5E410;
  v221 = &v303;
  v222 = a1;
  v50 = qmi::MessageBase::findTlvValue(this);
  v52 = v50;
  if (v50)
  {
    v53 = v51;
    *&v331 = v50;
    memset(__p, 170, 24);
    tlv::parseV<nas::tlv::abm::BBSearchFreqList>(&v331, v51, __p);
    v54 = v331;
    if (v331)
    {
      v219(v218, __p);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v54)
    {
      (*MEMORY[0x29EDC91A8])(*this, 190, v52, v53);
    }
  }

  v216 = 0;
  v217 = 0;
  v215 = &v216;
  v55 = v312;
  v56 = operator new(0x40uLL);
  v57 = &v216;
  v56[4] = *MEMORY[0x29EDC9118];
  v56[5] = (v56 + 5);
  v56[6] = (v56 + 5);
  v56[7] = 0;
  *v56 = 0;
  v56[1] = 0;
  v56[2] = &v216;
  v215 = v56;
  v216 = v56;
  *(v56 + 24) = 1;
  v217 = 1;
  if (v56 != v55)
  {
    std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v56 + 5, v56 + 5, v55[6], (v55 + 5));
    v56 = v216;
    v58 = v304;
    v59 = *MEMORY[0x29EDC9110];
    v60 = &v216;
    v61 = &v216;
    if (v216)
    {
      goto LABEL_62;
    }

LABEL_67:
    v63 = operator new(0x40uLL);
    v63[4] = v59;
    v63[5] = (v63 + 5);
    v63[6] = (v63 + 5);
    v63[7] = 0;
    *v63 = 0;
    v63[1] = 0;
    v63[2] = v61;
    *v60 = v63;
    if (*v215)
    {
      v215 = *v215;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v216, v63);
    ++v217;
    if (v63 == v58)
    {
      goto LABEL_86;
    }

LABEL_72:
    v64 = v63 + 5;
    v65 = (v58 + 5);
    v66 = v58[6];
    v67 = v63[6];
    v68 = v66 == v58 + 5 || v67 == v64;
    if (!v68)
    {
      do
      {
        v67[2] = *(v66 + 16);
        *(v67 + 6) = *(v66 + 24);
        v66 = *(v66 + 8);
        v67 = v67[1];
      }

      while (v66 != v65 && v67 != v64);
    }

    if (v67 == v64)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v63 + 5, v63 + 5, v66, v65);
    }

    else
    {
      v70 = *(v63[5] + 8);
      v71 = *v67;
      *(v71 + 8) = v70;
      *v70 = v71;
      do
      {
        v72 = v67[1];
        --v63[7];
        operator delete(v67);
        v67 = v72;
      }

      while (v72 != v64);
    }

    goto LABEL_86;
  }

  v58 = v304;
  v59 = *MEMORY[0x29EDC9110];
  while (1)
  {
LABEL_62:
    while (1)
    {
      v61 = v56;
      v62 = v56[4];
      if (v59 >= v62)
      {
        break;
      }

      v56 = *v56;
      if (!*v61)
      {
        v60 = v61;
        goto LABEL_67;
      }
    }

    if (v62 >= v59)
    {
      break;
    }

    v56 = v56[1];
    if (!v56)
    {
      v60 = v61 + 1;
      goto LABEL_67;
    }
  }

  v63 = v56;
  if (v56 != v58)
  {
    goto LABEL_72;
  }

LABEL_86:
  v73 = v296;
  v74 = v216;
  v75 = *MEMORY[0x29EDC9120];
  v76 = &v216;
  v77 = &v216;
  if (!v216)
  {
LABEL_93:
    v79 = operator new(0x40uLL);
    v79[4] = v75;
    v79[5] = (v79 + 5);
    v79[6] = (v79 + 5);
    v79[7] = 0;
    *v79 = 0;
    v79[1] = 0;
    v79[2] = v77;
    *v76 = v79;
    if (*v215)
    {
      v215 = *v215;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v216, v79);
    ++v217;
    if (v79 == v73)
    {
      goto LABEL_112;
    }

LABEL_98:
    v80 = v79 + 5;
    v81 = (v73 + 5);
    v82 = v73[6];
    v83 = v79[6];
    if (v82 != v73 + 5 && v83 != v80)
    {
      do
      {
        v83[2] = *(v82 + 16);
        *(v83 + 6) = *(v82 + 24);
        v82 = *(v82 + 8);
        v83 = v83[1];
      }

      while (v82 != v81 && v83 != v80);
    }

    if (v83 == v80)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v79 + 5, v79 + 5, v82, v81);
    }

    else
    {
      v86 = *(v79[5] + 8);
      v87 = *v83;
      *(v87 + 8) = v86;
      *v86 = v87;
      do
      {
        v88 = v83[1];
        --v79[7];
        operator delete(v83);
        v83 = v88;
      }

      while (v88 != v80);
    }

    goto LABEL_112;
  }

  while (1)
  {
    while (1)
    {
      v77 = v74;
      v78 = v74[4];
      if (v75 >= v78)
      {
        break;
      }

      v74 = *v77;
      v76 = v77;
      if (!*v77)
      {
        goto LABEL_93;
      }
    }

    if (v78 >= v75)
    {
      break;
    }

    v74 = v77[1];
    if (!v74)
    {
      v76 = v77 + 1;
      goto LABEL_93;
    }
  }

  v79 = v77;
  if (v77 != v296)
  {
    goto LABEL_98;
  }

LABEL_112:
  v89 = v288;
  v90 = v216;
  v91 = *MEMORY[0x29EDC9130];
  v92 = &v216;
  v93 = &v216;
  if (!v216)
  {
LABEL_119:
    v95 = operator new(0x40uLL);
    v95[4] = v91;
    v95[5] = (v95 + 5);
    v95[6] = (v95 + 5);
    v95[7] = 0;
    *v95 = 0;
    v95[1] = 0;
    v95[2] = v93;
    *v92 = v95;
    if (*v215)
    {
      v215 = *v215;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v216, v95);
    ++v217;
    if (v95 == v89)
    {
      goto LABEL_138;
    }

LABEL_124:
    v96 = v95 + 5;
    v97 = (v89 + 5);
    v98 = v89[6];
    v99 = v95[6];
    if (v98 != v89 + 5 && v99 != v96)
    {
      do
      {
        v99[2] = *(v98 + 16);
        *(v99 + 6) = *(v98 + 24);
        v98 = *(v98 + 8);
        v99 = v99[1];
      }

      while (v98 != v97 && v99 != v96);
    }

    if (v99 == v96)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v95 + 5, v95 + 5, v98, v97);
    }

    else
    {
      v102 = *(v95[5] + 8);
      v103 = *v99;
      *(v103 + 8) = v102;
      *v102 = v103;
      do
      {
        v104 = v99[1];
        --v95[7];
        operator delete(v99);
        v99 = v104;
      }

      while (v104 != v96);
    }

    goto LABEL_138;
  }

  while (1)
  {
    while (1)
    {
      v93 = v90;
      v94 = v90[4];
      if (v91 >= v94)
      {
        break;
      }

      v90 = *v93;
      v92 = v93;
      if (!*v93)
      {
        goto LABEL_119;
      }
    }

    if (v94 >= v91)
    {
      break;
    }

    v90 = v93[1];
    if (!v90)
    {
      v92 = v93 + 1;
      goto LABEL_119;
    }
  }

  v95 = v93;
  if (v93 != v288)
  {
    goto LABEL_124;
  }

LABEL_138:
  v105 = v280;
  v106 = v216;
  v107 = *MEMORY[0x29EDC9108];
  v108 = &v216;
  v109 = &v216;
  if (!v216)
  {
LABEL_145:
    v111 = operator new(0x40uLL);
    v111[4] = v107;
    v111[5] = (v111 + 5);
    v111[6] = (v111 + 5);
    v111[7] = 0;
    *v111 = 0;
    v111[1] = 0;
    v111[2] = v109;
    *v108 = v111;
    if (*v215)
    {
      v215 = *v215;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v216, v111);
    ++v217;
    if (v111 == v105)
    {
      goto LABEL_164;
    }

LABEL_150:
    v112 = v111 + 5;
    v113 = (v105 + 5);
    v114 = v105[6];
    v115 = v111[6];
    if (v114 != v105 + 5 && v115 != v112)
    {
      do
      {
        v115[2] = *(v114 + 16);
        *(v115 + 6) = *(v114 + 24);
        v114 = *(v114 + 8);
        v115 = v115[1];
      }

      while (v114 != v113 && v115 != v112);
    }

    if (v115 == v112)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v111 + 5, v111 + 5, v114, v113);
    }

    else
    {
      v118 = *(v111[5] + 8);
      v119 = *v115;
      *(v119 + 8) = v118;
      *v118 = v119;
      do
      {
        v120 = v115[1];
        --v111[7];
        operator delete(v115);
        v115 = v120;
      }

      while (v120 != v112);
    }

    goto LABEL_164;
  }

  while (1)
  {
    while (1)
    {
      v109 = v106;
      v110 = v106[4];
      if (v107 >= v110)
      {
        break;
      }

      v106 = *v109;
      v108 = v109;
      if (!*v109)
      {
        goto LABEL_145;
      }
    }

    if (v110 >= v107)
    {
      break;
    }

    v106 = v109[1];
    if (!v106)
    {
      v108 = v109 + 1;
      goto LABEL_145;
    }
  }

  v111 = v109;
  if (v109 != v280)
  {
    goto LABEL_150;
  }

LABEL_164:
  v121 = v272;
  v122 = v216;
  v123 = *MEMORY[0x29EDC9128];
  v124 = &v216;
  if (!v216)
  {
LABEL_171:
    v126 = operator new(0x40uLL);
    v126[4] = v123;
    v126[5] = (v126 + 5);
    v126[6] = (v126 + 5);
    v126[7] = 0;
    *v126 = 0;
    v126[1] = 0;
    v126[2] = v124;
    *v57 = v126;
    if (*v215)
    {
      v215 = *v215;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v216, v126);
    ++v217;
    if (v126 == v121)
    {
      goto LABEL_190;
    }

LABEL_176:
    v127 = v126 + 5;
    v128 = (v121 + 5);
    v129 = v121[6];
    v130 = v126[6];
    if (v129 != v121 + 5 && v130 != v127)
    {
      do
      {
        v130[2] = *(v129 + 16);
        *(v130 + 6) = *(v129 + 24);
        v129 = *(v129 + 8);
        v130 = v130[1];
      }

      while (v129 != v128 && v130 != v127);
    }

    if (v130 == v127)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v126 + 5, v126 + 5, v129, v128);
    }

    else
    {
      v133 = *(v126[5] + 8);
      v134 = *v130;
      *(v134 + 8) = v133;
      *v133 = v134;
      do
      {
        v135 = v130[1];
        --v126[7];
        operator delete(v130);
        v130 = v135;
      }

      while (v135 != v127);
    }

    goto LABEL_190;
  }

  while (1)
  {
    while (1)
    {
      v124 = v122;
      v125 = v122[4];
      if (v123 >= v125)
      {
        break;
      }

      v122 = *v124;
      v57 = v124;
      if (!*v124)
      {
        goto LABEL_171;
      }
    }

    if (v125 >= v123)
    {
      break;
    }

    v122 = v124[1];
    if (!v122)
    {
      v57 = v124 + 1;
      goto LABEL_171;
    }
  }

  v126 = v124;
  if (v124 != v272)
  {
    goto LABEL_176;
  }

LABEL_190:
  v136 = *(a1 + 40);
  v137 = os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT);
  v138 = v272;
  if (v137)
  {
    v139 = v312[7];
    v140 = v304[7];
    v141 = v296[7];
    v142 = v288[7];
    v143 = v280[7];
    v144 = v272[7];
    *__p = 134219264;
    *&__p[4] = v139;
    *&__p[12] = 2048;
    *&__p[14] = v140;
    *&__p[22] = 2048;
    *&__p[24] = v141;
    *v340 = 2048;
    *&v340[2] = v142;
    *&v340[10] = 2048;
    *&v340[12] = v143;
    *&v340[20] = 2048;
    *&v340[22] = v144;
    _os_log_impl(&dword_296ECF000, v136, OS_LOG_TYPE_DEFAULT, "#I Frequency list sizes %lu, %lu, %lu, %lu, %lu, %lu", __p, 0x3Eu);
    v138 = v272;
  }

  for (i = v138[6]; i != (v138 + 5); i = i[1])
  {
    v146 = *(a1 + 40);
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
    {
      v147 = i[2];
      v148 = *(i + 6);
      *__p = 134218240;
      *&__p[4] = v147;
      *&__p[12] = 1024;
      *&__p[14] = v148;
      _os_log_debug_impl(&dword_296ECF000, v146, OS_LOG_TYPE_DEBUG, "#D Dl Addloop:frequency (%llu), bandwidth (%u)", __p, 0x12u);
      v138 = v272;
    }
  }

  if (v217)
  {
    v149 = *(a1 + 40);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109120;
      *&__p[4] = a2;
      _os_log_impl(&dword_296ECF000, v149, OS_LOG_TYPE_DEFAULT, "#I Sending frequency report for SubId=%d", __p, 8u);
    }

    v214[0] = 0;
    v214[1] = 0;
    v213 = v214;
    v150 = v215;
    if (v215 == &v216)
    {
      v151 = *(a1 + 80);
      v321 = 0;
      v320 = 0;
      v319 = &v320;
    }

    else
    {
      do
      {
        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v213, v214, v150[4], v150 + 4);
        v152 = v150[1];
        if (v152)
        {
          do
          {
            v153 = v152;
            v152 = *v152;
          }

          while (v152);
        }

        else
        {
          do
          {
            v153 = v150[2];
            v68 = *v153 == v150;
            v150 = v153;
          }

          while (!v68);
        }

        v150 = v153;
      }

      while (v153 != &v216);
      v154 = v213;
      v151 = *(a1 + 80);
      v321 = 0;
      v320 = 0;
      v319 = &v320;
      if (v213 != v214)
      {
        do
        {
          std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v319, &v320, v154[4], v154 + 4);
          v162 = v154[1];
          if (v162)
          {
            do
            {
              v163 = v162;
              v162 = *v162;
            }

            while (v162);
          }

          else
          {
            do
            {
              v163 = v154[2];
              v68 = *v163 == v154;
              v154 = v163;
            }

            while (!v68);
          }

          v154 = v163;
        }

        while (v163 != v214);
      }
    }

    v330 = a2;
    v329 = 0;
    v328 = 0;
    *&v155 = 0xAAAAAAAAAAAAAAAALL;
    *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v346 = v155;
    v345 = v155;
    v344 = v155;
    v343 = v155;
    v342 = v155;
    v341 = v155;
    *&v340[16] = v155;
    *v340 = v155;
    *&__p[16] = v155;
    *__p = v155;
    v156 = *(v151 + 24);
    v347[0] = 10;
    v347[1] = __p;
    v348[0] = 0;
    v348[1] = v156;
    pthread_mutex_lock(v156);
    v157 = *(v151 + 8);
    if (!v157)
    {
      v159 = *v151;
      goto LABEL_229;
    }

    explicit = atomic_load_explicit(v157 + 2, memory_order_acquire);
    v159 = *v151;
    if (explicit != 1)
    {
LABEL_227:
      v157 = *(v151 + 8);
      if (v157)
      {
        atomic_fetch_add_explicit(v157 + 2, 1u, memory_order_relaxed);
      }

LABEL_229:
      v165 = v329;
      v328 = v159;
      v329 = v157;
      if (v165)
      {
        if (atomic_fetch_add(v165 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v165 + 16))(v165);
          if (atomic_fetch_add(v165 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v165 + 24))(v165);
          }
        }
      }

      pthread_mutex_unlock(v348[1]);
      v166 = v347[1];
      if (v347[1])
      {
        if (v348[0] > 0)
        {
          v210 = v347[1] + 16 * v348[0];
          do
          {
            v211 = *(v210 - 1);
            if (v211)
            {
              if (atomic_fetch_add(v211 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v211 + 16))(v211);
                if (atomic_fetch_add(v211 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v211 + 24))(v211);
                }
              }
            }

            v210 -= 16;
          }

          while (v210 > v166);
        }

        if (v347[0] >= 0xB)
        {
          operator delete(v347[1]);
        }
      }

      *&v167 = 0xAAAAAAAAAAAAAAAALL;
      *(&v167 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v351 = v167;
      v350 = v167;
      v349 = v167;
      *v348 = v167;
      *v347 = v167;
      v346 = v167;
      v345 = v167;
      v344 = v167;
      v343 = v167;
      v342 = v167;
      v341 = v167;
      *&v340[16] = v167;
      *v340 = v167;
      *__p = v167;
      *&__p[16] = v167;
      __p[0] = 0;
      v352 = 0xAAAAAAAAAAAAAAAALL;
      v353 = 10;
      v354 = &__p[8];
      v355 = 0;
      v356 = &v319;
      v357 = &v330;
      v359 = 0;
      v358 = 0;
      v168 = v328;
      v169 = *v328;
      v325 = __p;
      v326 = v151;
      v327 = v169;
      *&v323 = *(v169 + 8);
      *(&v323 + 1) = v169;
      *&v324 = __p;
      *(&v324 + 1) = v169;
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v323);
      v322[0] = *v168;
      v322[1] = v322[0];
      v322[2] = __p;
      v322[3] = v322[0];
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v322);
      v331 = v323;
      v332 = v324;
      v170 = v322[0];
      v171 = v323;
      if (v323 == v322[0])
      {
        if (HIDWORD(v358) <= v358)
        {
          goto LABEL_262;
        }
      }

      else
      {
        v172 = v332;
        v173 = *v332;
        do
        {
          if ((v173 & 1) == 0)
          {
            v174 = *(*(v171 + 16) + 32);
            v175 = *(v172 + 272);
            v334 = 0;
            v335 = 0;
            v333 = &v334;
            v178 = *v175;
            v176 = v175 + 1;
            v177 = v178;
            if (v178 != v176)
            {
              do
              {
                std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v333, &v334, v177[4], v177 + 4);
                v182 = v177[1];
                if (v182)
                {
                  do
                  {
                    v183 = v182;
                    v182 = *v182;
                  }

                  while (v182);
                }

                else
                {
                  do
                  {
                    v183 = v177[2];
                    v68 = *v183 == v177;
                    v177 = v183;
                  }

                  while (!v68);
                }

                v177 = v183;
              }

              while (v183 != v176);
            }

            v179 = *(v174 + 24);
            if (!v179)
            {
              std::runtime_error::runtime_error(&v338, "call to empty boost::function");
              v338.__vftable = &unk_2A1E17188;
              boost::throw_exception<boost::bad_function_call>(&v338);
            }

            v180 = **(v172 + 280);
            v181 = *((v179 & 0xFFFFFFFFFFFFFFFELL) + 8);
            v336 = v333;
            v337[0] = v334;
            v337[1] = v335;
            if (v335)
            {
              v334[2] = v337;
              v333 = &v334;
              v334 = 0;
              v335 = 0;
            }

            else
            {
              v336 = v337;
            }

            v181(v174 + 32, &v336, v180);
            std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v337[0]);
            std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v334);
            if ((*v172 & 1) == 0)
            {
              *v172 = 1;
            }
          }

          *&v331 = *(v171 + 8);
          boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v331);
          v172 = v332;
          if (*v332 == 1)
          {
            *v332 = 0;
          }

          v173 = 0;
          v171 = v331;
        }

        while (v331 != v170);
        if (*(v325 + 73) <= *(v325 + 72))
        {
          goto LABEL_262;
        }
      }

      boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v326, v327);
LABEL_262:
      boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>>::~slot_call_iterator_cache(__p);
      v184 = v329;
      if (v329)
      {
        if (atomic_fetch_add(v329 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v184 + 16))(v184);
          if (atomic_fetch_add(v184 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v184 + 24))(v184);
          }
        }
      }

      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v320);
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v214[0]);
      goto LABEL_267;
    }

    v160 = *v159;
    v161 = *(v151 + 16);
    if (v161 == *v159)
    {
      v161 = *(v160 + 8);
      *&v331 = v161;
      if (v160 == v161)
      {
LABEL_226:
        *(v151 + 16) = v161;
        goto LABEL_227;
      }
    }

    else
    {
      *&v331 = *(v151 + 16);
    }

    v164 = v161[2];
    if (*(v164 + 24))
    {
      v161 = v161[1];
    }

    else
    {
      v161 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v160, (v164 + 64), &v331);
      v159 = *v151;
    }

    goto LABEL_226;
  }

LABEL_267:
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v216);
  _Block_object_dispose(&v267, 8);
  _Block_object_dispose(&v271, 8);
  if (v278)
  {
    v185 = v277;
    v186 = *(v276 + 8);
    v187 = *v277;
    *(v187 + 8) = v186;
    *v186 = v187;
    v278 = 0;
    if (v185 != &v276)
    {
      do
      {
        v188 = v185[1];
        operator delete(v185);
        v185 = v188;
      }

      while (v188 != &v276);
    }
  }

  _Block_object_dispose(&v279, 8);
  if (v286)
  {
    v189 = v285;
    v190 = *(v284 + 8);
    v191 = *v285;
    *(v191 + 8) = v190;
    *v190 = v191;
    v286 = 0;
    if (v189 != &v284)
    {
      do
      {
        v192 = v189[1];
        operator delete(v189);
        v189 = v192;
      }

      while (v192 != &v284);
    }
  }

  _Block_object_dispose(&v287, 8);
  if (v294)
  {
    v193 = v293;
    v194 = *(v292 + 8);
    v195 = *v293;
    *(v195 + 8) = v194;
    *v194 = v195;
    v294 = 0;
    if (v193 != &v292)
    {
      do
      {
        v196 = v193[1];
        operator delete(v193);
        v193 = v196;
      }

      while (v196 != &v292);
    }
  }

  _Block_object_dispose(&v295, 8);
  if (v302)
  {
    v197 = v301;
    v198 = *(v300 + 8);
    v199 = *v301;
    *(v199 + 8) = v198;
    *v198 = v199;
    v302 = 0;
    if (v197 != &v300)
    {
      do
      {
        v200 = v197[1];
        operator delete(v197);
        v197 = v200;
      }

      while (v200 != &v300);
    }
  }

  _Block_object_dispose(&v303, 8);
  if (v310)
  {
    v201 = v309;
    v202 = *(v308 + 8);
    v203 = *v309;
    *(v203 + 8) = v202;
    *v202 = v203;
    v310 = 0;
    if (v201 != &v308)
    {
      do
      {
        v204 = v201[1];
        operator delete(v201);
        v201 = v204;
      }

      while (v204 != &v308);
    }
  }

  _Block_object_dispose(&v311, 8);
  if (v318)
  {
    v205 = v317;
    v206 = *(v316 + 8);
    v207 = *v317;
    *(v207 + 8) = v206;
    *v206 = v207;
    v318 = 0;
    if (v205 != &v316)
    {
      do
      {
        v208 = v205[1];
        operator delete(v205);
        v205 = v208;
      }

      while (v208 != &v316);
    }
  }

  v209 = *MEMORY[0x29EDCA608];
}

void sub_296ED6060(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

void desense::QMICommandDriver::addSingleFrequencyToMap_sync(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t *a5)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v8 = a3 >> 1;
    v9 = a5[1];
    if (v9 != a5)
    {
      while (*(v9 + 16) != a2)
      {
        v9 = *(v9 + 8);
        if (v9 == a5)
        {
          goto LABEL_8;
        }
      }
    }

    if (v9 == a5 || (v10 = *(v9 + 24), v8 > v10))
    {
LABEL_8:
      v12 = operator new(0x20uLL);
      v12[1] = a5;
      v12[2] = a2;
      *(v12 + 6) = v8;
      v13 = *a5;
      *v12 = *a5;
      *(v13 + 8) = v12;
      *a5 = v12;
      v14 = a5[2] + 1;
      a5[2] = v14;
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134218752;
        v23 = a2;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = a4;
        v28 = 2048;
        v29 = v14;
        _os_log_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEFAULT, "#I Adding Frequency: %llu, Bandwidth: %u, Priority: %d Size %lu", &v22, 0x22u);
        v16 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v22 = 134218240;
        v23 = a2;
        v24 = 1024;
        v25 = v10;
        _os_log_debug_impl(&dword_296ECF000, v19, OS_LOG_TYPE_DEBUG, "#D Duplicated frequency (%llu), keeping higher bandwidth (%u)", &v22, 0x12u);
        v21 = *MEMORY[0x29EDCA608];
        return;
      }
    }
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_296ECF000, v17, OS_LOG_TYPE_ERROR, "Given report structure is NULL!", &v22, 2u);
      v18 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void std::vector<nas::tlv::abm::BBFreqItem>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::vector<nas::tlv::abm::BBFreqItem>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(16 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 16 * a2;
    bzero(&v11[16 * (v6 >> 4)], 16 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[16 * (v6 >> 4) + v13];
    *(a1 + 16) = &v11[16 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear(void *result)
{
  v1 = result[32];
  if (v1)
  {
    v2 = result;
    v3 = result[32];
    if (-24 * v1 < 0)
    {
      v4 = result[31] + 24 * v1;
      v5 = result[31];
      v6 = v4;
      do
      {
        v7 = *(v6 - 24);
        v6 -= 24;
        if (v7 == v7 >> 31)
        {
          v8 = *(v4 - 8);
          if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
          {
            result = (*(*v8 + 16))(v8);
            if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
            {
              result = (*(*v8 + 24))(v8);
            }
          }
        }

        else
        {
          result = *(v4 - 16);
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v4 = v6;
      }

      while (v6 > v5);
      v3 = v2[32];
    }

    v2[32] = v3 - v1;
  }

  return result;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_296ED6854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[32];
  if (v4 == a1[30])
  {
    if (v4 == -1)
    {
      v6 = a1[31];
      v7 = -1;
    }

    else
    {
      if (4 * v4 <= (v4 + 1))
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 4 * v4;
      }

      v6 = a1;
      if (v5 >= 0xB)
      {
        if (v5 >= 0xAAAAAAAAAAAAAABLL)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v6 = operator new(24 * v5);
      }

      std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(a1[31], a1[31] + 24 * v4, v6);
      boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(a1);
      a1[30] = v5;
      a1[31] = v6;
      v7 = a1[32];
    }

    v8 = v6 + 24 * v7;
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[31] + 24 * v4;
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
LABEL_15:
      result = (*(*result + 16))(result);
      *(v8 + 8) = result;
      goto LABEL_16;
    }
  }

  v10 = *(a2 + 16);
  *(v8 + 8) = result;
  *(v8 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

LABEL_16:
  *v8 = *a2 ^ (*a2 >> 31);
  ++a1[32];
  return result;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void coex::QMICommandDriver::sendStateUpdate_sync(uint64_t a1, const void **a2, int a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_62;
  }

  v7 = *(a1 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) || (*buf = 67109378, *&buf[4] = a3, *&buf[8] = 2112, *&buf[10] = v3, _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Update for SubId=%d -> %@", buf, 0x12u), (v3 = *a2) != 0))
  {
    CFRetain(v3);
    v8 = *(a1 + 96);
    v42 = v3;
    CFRetain(v3);
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 96);
    v42 = 0;
    v9 = 1;
  }

  v51 = a3;
  v49 = 0;
  v50 = 0;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v10;
  v65 = v10;
  v62 = v10;
  v63 = v10;
  v60 = v10;
  v61 = v10;
  v58 = v10;
  v59 = v10;
  *buf = v10;
  *&buf[16] = v10;
  v11 = *(v8 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v67[0] = 0;
  v67[1] = v11;
  pthread_mutex_lock(v11);
  v12 = *(v8 + 8);
  if (!v12)
  {
    v14 = *v8;
    goto LABEL_18;
  }

  explicit = atomic_load_explicit(v12 + 2, memory_order_acquire);
  v14 = *v8;
  if (explicit == 1)
  {
    v15 = *v14;
    v16 = *(v8 + 16);
    if (v16 == *v14)
    {
      v16 = *(v15 + 8);
      *&v52 = v16;
      if (v15 == v16)
      {
LABEL_15:
        *(v8 + 16) = v16;
        goto LABEL_16;
      }
    }

    else
    {
      *&v52 = *(v8 + 16);
    }

    v17 = v16[2];
    if (*(v17 + 24))
    {
      v16 = v16[1];
    }

    else
    {
      v16 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v15, (v17 + 64), &v52);
      v14 = *v8;
    }

    goto LABEL_15;
  }

LABEL_16:
  v12 = *(v8 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
  }

LABEL_18:
  v18 = v50;
  v49 = v14;
  v50 = v12;
  if (v18)
  {
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
      if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v18 + 24))(v18);
      }
    }
  }

  pthread_mutex_unlock(v67[1]);
  v19 = __p[1];
  if (__p[1])
  {
    if (v67[0] > 0)
    {
      v40 = __p[1] + 16 * v67[0];
      do
      {
        v41 = *(v40 - 1);
        if (v41)
        {
          if (atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v41 + 16))(v41);
            if (atomic_fetch_add(v41 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v41 + 24))(v41);
            }
          }
        }

        v40 -= 16;
      }

      while (v40 > v19);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v20;
  v70 = v20;
  *v67 = v20;
  v68 = v20;
  v65 = v20;
  *__p = v20;
  v63 = v20;
  v64 = v20;
  v61 = v20;
  v62 = v20;
  v59 = v20;
  v60 = v20;
  *&buf[16] = v20;
  v58 = v20;
  *buf = v20;
  buf[0] = 0;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v72 = 10;
  v73 = &buf[8];
  v74 = 0;
  v75 = &v42;
  v76 = &v51;
  v77 = 0;
  v78 = 0;
  v21 = v49;
  v22 = *v49;
  v46 = buf;
  v47 = v8;
  v48 = v22;
  *&v44 = *(v22 + 8);
  *(&v44 + 1) = v22;
  *&v45 = buf;
  *(&v45 + 1) = v22;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v44);
  v43[0] = *v21;
  v43[1] = v43[0];
  v43[2] = buf;
  v43[3] = v43[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v43);
  v52 = v44;
  v53 = v45;
  v23 = v43[0];
  v24 = v44;
  if (v44 == v43[0])
  {
    if (HIDWORD(v77) <= v77)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v25 = v53;
    if ((*v53 & 1) == 0)
    {
      v26 = *(*(v44 + 16) + 32);
      v27 = **(v53 + 272);
      v54 = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      v28 = *(v26 + 24);
      if (!v28)
      {
        std::runtime_error::runtime_error(&v56, "call to empty boost::function");
        v56.__vftable = &unk_2A1E17188;
        boost::throw_exception<boost::bad_function_call>(&v56);
      }

      v29 = **(v25 + 280);
      v30 = *((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
      v54 = 0;
      cf = v27;
      v30(v26 + 32, &cf, v29);
      if (cf)
      {
        CFRelease(cf);
      }

      if ((*v25 & 1) == 0)
      {
        *v25 = 1;
      }
    }

    *&v52 = *(v24 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v52);
    v31 = v53;
    if (*v53 == 1)
    {
      *v53 = 0;
    }

    for (i = v52; v52 != v23; i = v52)
    {
      v33 = *(*(i + 16) + 32);
      v34 = **(v31 + 272);
      v54 = v34;
      if (v34)
      {
        CFRetain(v34);
      }

      v35 = *(v33 + 24);
      if (!v35)
      {
        std::runtime_error::runtime_error(&v56, "call to empty boost::function");
        v56.__vftable = &unk_2A1E17188;
        boost::throw_exception<boost::bad_function_call>(&v56);
      }

      v36 = **(v31 + 280);
      v37 = *((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
      v54 = 0;
      cf = v34;
      v37(v33 + 32, &cf, v36);
      if (cf)
      {
        CFRelease(cf);
      }

      if ((*v31 & 1) == 0)
      {
        *v31 = 1;
      }

      *&v52 = *(i + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v52);
      v31 = v53;
      if (*v53 == 1)
      {
        *v53 = 0;
      }
    }

    if (*(v46 + 73) <= *(v46 + 72))
    {
      goto LABEL_54;
    }
  }

  boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v47, v48);
LABEL_54:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(buf);
  v38 = v50;
  if (v50)
  {
    if (atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v38 + 16))(v38);
      if (atomic_fetch_add(v38 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v38 + 24))(v38);
      }
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(v3);
  }

LABEL_62:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_296ED7380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, __int16 a30, char a31, char a32, std::runtime_error a33)
{
  std::runtime_error::~runtime_error(&a33);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a29);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v37);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(&v39);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v38);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v36);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v35);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a25 + 16));
  __cxa_rethrow();
}

void sub_296ED7404(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v6);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(&v8);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v7);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v5);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v4);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296ED73D4);
}

void sub_296ED7464(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296ED74A0);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 292);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 288);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 296);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 296) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 296);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 296) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 296);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 296) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296ED7A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296ED7A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 296);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 296), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296ED7CD0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<coex::tlv::abm::LTECarrierInformation>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v12);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + a2;
    if (v7 > 0x666666666666666)
    {
      std::vector<coex::tlv::abm::LTECarrierInformation>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(40 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * (v6 >> 3)];
    v14 = &v11[40 * v9];
    v15 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v13, v15);
    v16 = &v13[v15];
    v17 = &v13[-v6];
    memcpy(v17, v5, v6);
    *a1 = v17;
    *(a1 + 8) = v16;
    *(a1 + 16) = v14;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t coex::tlv::abm::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 8);
  *(a3 + 8) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 16) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  *(a3 + 20) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 4);
  *(a3 + 24) = *(a1 + 20);
  tlv::throwIfNotEnoughBytes((a1 + 24), a2, 4);
  *(a3 + 28) = *(a1 + 24);
  tlv::throwIfNotEnoughBytes((a1 + 28), a2, 4);
  *(a3 + 32) = *(a1 + 28);
  tlv::throwIfNotEnoughBytes((a1 + 32), a2, 1);
  *(a3 + 36) = *(a1 + 32);
  return a1 + 33;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 2);
  *(a3 + 20) = *(a1 + 20);
  tlv::throwIfNotEnoughBytes((a1 + 22), a2, 2);
  *(a3 + 22) = *(a1 + 22);
  tlv::throwIfNotEnoughBytes((a1 + 24), a2, 2);
  *(a3 + 24) = *(a1 + 24);
  return a1 + 26;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  v6 = a1 + 8;
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 8);
  if (&a2[-a1 - 8] >= 8)
  {
    *(a3 + 8) = *(a1 + 8);
    return a1 + 16;
  }

  return v6;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  *(a3 + 12) = *(a1 + 12);
  v6 = a1 + 16;
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 8);
  if (&a2[-a1 - 16] >= 8)
  {
    *(a3 + 16) = *(a1 + 16);
    return a1 + 24;
  }

  return v6;
}

void ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24LTECarrierInformationSetENS_3abm9WWANState10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke(uint64_t a1, unsigned int **a2)
{
  coex::convert(&v4, a2);
  v3 = v4;
  ctu::cf::insert<__CFString const*,__CFArray const*>(*(a1 + 32), *(a1 + 40), v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296ED7FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296ED811C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296ED8134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296ED8150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::sendTransparentMessageReq_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v97 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v71 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v71;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Sending Coex transparent message: %@", &aBlock, 0xCu);
  }

  v92[0] = 0xAAAAAAAAAAAAAAAALL;
  v92[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v92, *a2);
  v72 = a1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90 = v6;
  v91 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v90);
  v7 = ctu::cf::map_adapter::copyCFArrayRef(v92, *MEMORY[0x29EDC8AB8]);
  v8 = v7;
  v89 = v7;
  if (v7)
  {
    v9 = *(&v90 + 1);
    v10 = v91;
    v11 = *(&v90 + 1);
    v77 = v7;
    if (*(&v90 + 1) != v91)
    {
      v11 = *(&v90 + 1);
      while (*(*v11 + 8) != 16)
      {
        if (++v11 == v91)
        {
          goto LABEL_12;
        }
      }
    }

    if (v11 == v91)
    {
LABEL_12:
      v14 = operator new(0x28uLL);
      v14[8] = 16;
      *v14 = &unk_2A1E1E688;
      *(v14 + 2) = 0;
      v79 = v14 + 16;
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      if (v10 >= *(&v91 + 1))
      {
        v16 = v10 - v9;
        v17 = (v10 - v9) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = *(&v91 + 1) - v9;
        if ((*(&v91 + 1) - v9) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        if (v20)
        {
          if (v20 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = v14;
          v22 = operator new(8 * v20);
          v14 = v21;
          v8 = v77;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v14;
        v15 = v23 + 8;
        memcpy(v22, v9, v16);
        *(&v90 + 1) = v22;
        *&v91 = v15;
        *(&v91 + 1) = &v22[8 * v20];
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v10 = v14;
        v15 = v10 + 8;
      }

      *&v91 = v15;
    }

    else
    {
      v12 = ***v11;
      if (!v13)
      {
        __cxa_bad_cast();
      }

      v79 = v13 + 16;
    }

    Count = CFArrayGetCount(v8);
    v25 = Count;
    if (Count >= 1)
    {
      v26 = 0;
      v76 = *MEMORY[0x29EDC8930];
      v74 = Count;
      v75 = *MEMORY[0x29EDC8A48];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v26);
        v28 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v29 = CFGetTypeID(ValueAtIndex);
          if (v29 == CFDictionaryGetTypeID())
          {
            break;
          }
        }

LABEL_30:
        if (++v26 == v25)
        {
          goto LABEL_89;
        }
      }

      v92[3] = v28;
      CFRetain(v28);
      v84 = 0xAAAAAAAAAAAAAAAALL;
      v85 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v84, v28);
      Int = ctu::cf::map_adapter::getInt(&v84, v76);
      v31 = ctu::cf::map_adapter::copyCFArrayRef(&v84, v75);
      v32 = v31;
      v92[2] = v31;
      v78 = Int;
      if (v31 && (v33 = CFArrayGetCount(v31), v33 >= 1))
      {
        __src = 0;
        v34 = 0;
        v35 = 0;
        for (i = 0; i != v33; ++i)
        {
          LODWORD(aBlock) = 0;
          v37 = CFArrayGetValueAtIndex(v32, i);
          v38 = v37;
          if (v37)
          {
            v39 = CFGetTypeID(v37);
            if (v39 == CFNumberGetTypeID())
            {
              if (ctu::cf::assign(&aBlock, v38, v40))
              {
                if (v34 < v35)
                {
                  *v34++ = aBlock;
                }

                else
                {
                  v41 = v34 - __src;
                  v42 = v34 - __src + 1;
                  if (v42 < 0)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v43 = v35 - __src;
                  if (2 * (v35 - __src) > v42)
                  {
                    v42 = 2 * v43;
                  }

                  if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v44 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v44)
                  {
                    v45 = operator new(v44);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v35 = &v45[v44];
                  v45[v41] = aBlock;
                  v34 = &v45[v41 + 1];
                  memcpy(v45, __src, v41);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v45;
                }
              }
            }
          }
        }
      }

      else
      {
        __src = 0;
        v34 = 0;
      }

      v47 = v79[1];
      v46 = v79[2];
      if (v47 < v46)
      {
        *v47 = v78;
        v47[1] = 0;
        v47[2] = 0;
        v47[3] = 0;
        v48 = __src;
        v49 = v34 - __src;
        v8 = v77;
        if (v49)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v50 = operator new(v49);
          v47[1] = v50;
          v47[2] = v50;
          v51 = &v50[v49];
          v47[3] = &v50[v49];
          memcpy(v50, __src, v49);
          v47[2] = v51;
        }

        v79[1] = v47 + 4;
        v79[1] = v47 + 4;
        if (!v32)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      v52 = *v79;
      v53 = (v47 - *v79) >> 5;
      v54 = v53 + 1;
      if ((v53 + 1) >> 59)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v55 = v46 - v52;
      if (v55 >> 4 > v54)
      {
        v54 = v55 >> 4;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFE0)
      {
        v56 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      v96 = v79;
      if (v56)
      {
        if (v56 >> 59)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v57 = operator new(32 * v56);
      }

      else
      {
        v57 = 0;
      }

      v58 = &v57[32 * v53];
      *&aBlock = v57;
      *(&aBlock + 1) = v58;
      v59 = &v57[32 * v56];
      v94 = v58;
      v95 = v59;
      *v58 = v78;
      *(v58 + 1) = 0;
      *(v58 + 2) = 0;
      *(v58 + 3) = 0;
      v60 = v34 - __src;
      if (v60)
      {
        if ((v60 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v61 = operator new(v60);
        *(v58 + 1) = v61;
        *(v58 + 2) = v61;
        v62 = &v61[v60];
        *(v58 + 3) = &v61[v60];
        memcpy(v61, __src, v60);
        *(v58 + 2) = v62;
      }

      if (v52 == v47)
      {
        v66 = v58 + 32;
        *v79 = v57;
        v79[1] = v58 + 32;
        v79[2] = v59;
        if (v52)
        {
LABEL_82:
          operator delete(v52);
        }
      }

      else
      {
        v63 = v52;
        v64 = v57;
        do
        {
          *v64 = *v63;
          *(v64 + 8) = *(v63 + 1);
          *(v64 + 3) = v63[3];
          v63[1] = 0;
          v63[2] = 0;
          v63[3] = 0;
          v63 += 4;
          v64 += 32;
        }

        while (v63 != v47);
        do
        {
          v65 = v52[1];
          if (v65)
          {
            v52[2] = v65;
            operator delete(v65);
          }

          v52 += 4;
        }

        while (v52 != v47);
        v52 = *v79;
        v66 = v58 + 32;
        *v79 = v57;
        v79[1] = v58 + 32;
        v79[2] = v59;
        if (v52)
        {
          goto LABEL_82;
        }
      }

      v8 = v77;
      v48 = __src;
      v79[1] = v66;
      if (!v32)
      {
LABEL_85:
        v25 = v74;
        if (v48)
        {
          operator delete(v48);
        }

        MEMORY[0x29C268420](&v84);
        CFRelease(v28);
        goto LABEL_30;
      }

LABEL_84:
      CFRelease(v32);
      goto LABEL_85;
    }
  }

LABEL_89:
  v84 = v72 + 136;
  v85 = QMIServiceMsg::create();
  v86 = 25000;
  v87 = 0;
  v88 = 0;
  v81[0] = MEMORY[0x29EDCA5F8];
  v81[1] = 1174405120;
  v81[2] = ___ZN4coex16QMICommandDriver30sendTransparentMessageReq_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v81[3] = &__block_descriptor_tmp_298_0;
  v81[4] = v72;
  v67 = *a3;
  if (*a3)
  {
    v67 = _Block_copy(v67);
  }

  v68 = *(a3 + 8);
  v82 = v67;
  object = v68;
  if (v68)
  {
    dispatch_retain(v68);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v94 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm25SendTransparentMessageReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v95 = &unk_29EE60310;
  v96 = v81;
  v88 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v88)
  {
    _Block_release(v88);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v82)
  {
    _Block_release(v82);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v90);
  result = MEMORY[0x29C268420](v92);
  v70 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296ED8944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::TransparentMessageInformationSet>::~TlvWrapper(void *__p)
{
  *__p = &unk_2A1E1E688;
  v2 = __p[2];
  if (v2)
  {
    v3 = __p[3];
    v4 = __p[2];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = __p[2];
    }

    __p[3] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

void ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1D270;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE48c35_ZTSN4coex13CommandDriver8CallbackE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = a2[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[7];
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void coex::QMICommandDriver::set_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v8 = dispatch_group_create();
  v9 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v9);
  }

  v190[0] = 0;
  v190[1] = v190;
  v190[2] = 0x3802000000;
  v190[3] = __Block_byref_object_copy__7;
  v190[4] = __Block_byref_object_dispose__7;
  v191 = 0xAAAAAAAAAAAAAAAALL;
  v192 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *a4;
  if (*a4)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a4 + 8);
  v191 = v10;
  v192 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v188 = 0xAAAAAAAAAAAAAAAALL;
  v189 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex16QMICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  aBlock[3] = &unk_2A1E1C030;
  v187 = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v187);
  }

  aBlock[4] = v190;
  v12 = _Block_copy(aBlock);
  v13 = *(a1 + 24);
  if (v13)
  {
    dispatch_retain(*(a1 + 24));
  }

  if (v12)
  {
    v14 = _Block_copy(v12);
    v188 = v14;
    v189 = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = 0;
  v188 = 0;
  v189 = v13;
  if (v13)
  {
LABEL_13:
    dispatch_retain(v13);
    dispatch_release(v13);
  }

LABEL_14:
  if (v12)
  {
    _Block_release(v12);
  }

  v185[0] = 0xAAAAAAAAAAAAAAAALL;
  v185[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = ctu::cf::dict_adapter::dict_adapter(v185, *a2);
  v16 = (*v185[0])(v15, *MEMORY[0x29EDC8920]);
  v17 = v16;
  if (v16)
  {
    v18 = CFGetTypeID(v16);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(v17);
    if (v18 == TypeID)
    {
      goto LABEL_20;
    }
  }

  v20 = (*v185[0])(v185, *MEMORY[0x29EDC87B0]);
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    v23 = CFDictionaryGetTypeID();
    CFRelease(v21);
    if (v22 == v23)
    {
LABEL_20:
      v24 = *a2;
      v184 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v14)
      {
        v25 = _Block_copy(v14);
        v182 = v25;
        v183 = v13;
        if (!v13)
        {
LABEL_25:
          coex::QMICommandDriver::setWLANState_sync(a1, &v184, &v182);
          if (v13)
          {
            dispatch_release(v13);
          }

          if (v25)
          {
            _Block_release(v25);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v25 = 0;
        v182 = 0;
        v183 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      dispatch_retain(v13);
      goto LABEL_25;
    }
  }

LABEL_31:
  v26 = (*v185[0])(v185, *MEMORY[0x29EDC8688]);
  v27 = v26;
  if (!v26)
  {
    goto LABEL_41;
  }

  v28 = CFGetTypeID(v26);
  v29 = CFDictionaryGetTypeID();
  CFRelease(v27);
  if (v28 != v29)
  {
    goto LABEL_41;
  }

  v181 = v27;
  CFRetain(v27);
  if (!v14)
  {
    v30 = 0;
    v179 = 0;
    v180 = v13;
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v30 = _Block_copy(v14);
  v179 = v30;
  v180 = v13;
  if (v13)
  {
LABEL_35:
    dispatch_retain(v13);
  }

LABEL_36:
  coex::QMICommandDriver::setPolicy_sync(a1, &v181, &v179);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  CFRelease(v27);
LABEL_41:
  v31 = (*v185[0])(v185, *MEMORY[0x29EDC86F8]);
  v32 = v31;
  if (!v31)
  {
    goto LABEL_51;
  }

  v33 = CFGetTypeID(v31);
  v34 = CFDictionaryGetTypeID();
  CFRelease(v32);
  if (v33 != v34)
  {
    goto LABEL_51;
  }

  v178 = v32;
  CFRetain(v32);
  if (!v14)
  {
    v35 = 0;
    v176 = 0;
    v177 = v13;
    if (!v13)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v35 = _Block_copy(v14);
  v176 = v35;
  v177 = v13;
  if (v13)
  {
LABEL_45:
    dispatch_retain(v13);
  }

LABEL_46:
  coex::QMICommandDriver::setBLER_sync(a1, &v178, &v176);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  CFRelease(v32);
LABEL_51:
  v36 = (*v185[0])(v185, *MEMORY[0x29EDC8708]);
  v37 = v36;
  if (!v36)
  {
    goto LABEL_61;
  }

  v38 = CFGetTypeID(v36);
  v39 = CFDictionaryGetTypeID();
  CFRelease(v37);
  if (v38 != v39)
  {
    goto LABEL_61;
  }

  v175 = v37;
  CFRetain(v37);
  if (!v14)
  {
    v40 = 0;
    v173 = 0;
    v174 = v13;
    if (!v13)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v40 = _Block_copy(v14);
  v173 = v40;
  v174 = v13;
  if (v13)
  {
LABEL_55:
    dispatch_retain(v13);
  }

LABEL_56:
  coex::QMICommandDriver::setSINR_sync(a1, &v175, &v173);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  CFRelease(v37);
LABEL_61:
  v41 = (*v185[0])(v185, *MEMORY[0x29EDC8760]);
  v42 = v41;
  if (!v41)
  {
    goto LABEL_71;
  }

  v43 = CFGetTypeID(v41);
  v44 = CFDictionaryGetTypeID();
  CFRelease(v42);
  if (v43 != v44)
  {
    goto LABEL_71;
  }

  v172 = v42;
  CFRetain(v42);
  if (!v14)
  {
    v45 = 0;
    v170 = 0;
    v171 = v13;
    if (!v13)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v45 = _Block_copy(v14);
  v170 = v45;
  v171 = v13;
  if (v13)
  {
LABEL_65:
    dispatch_retain(v13);
  }

LABEL_66:
  coex::QMICommandDriver::setBandFilterInfo_sync(a1, &v172, a3, &v170);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v45)
  {
    _Block_release(v45);
  }

  CFRelease(v42);
LABEL_71:
  v46 = (*v185[0])(v185, *MEMORY[0x29EDC88F0]);
  v47 = v46;
  if (!v46)
  {
    goto LABEL_81;
  }

  v48 = CFGetTypeID(v46);
  v49 = CFDictionaryGetTypeID();
  CFRelease(v47);
  if (v48 != v49)
  {
    goto LABEL_81;
  }

  v169 = v47;
  CFRetain(v47);
  if (!v14)
  {
    v50 = 0;
    v167 = 0;
    v168 = v13;
    if (!v13)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v50 = _Block_copy(v14);
  v167 = v50;
  v168 = v13;
  if (v13)
  {
LABEL_75:
    dispatch_retain(v13);
  }

LABEL_76:
  coex::QMICommandDriver::setScanFreqBandFilter_sync(a1, &v169, a3, &v167);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  CFRelease(v47);
LABEL_81:
  v51 = (*v185[0])(v185, *MEMORY[0x29EDC8740]);
  v52 = v51;
  if (!v51)
  {
    goto LABEL_91;
  }

  v53 = CFGetTypeID(v51);
  v54 = CFDictionaryGetTypeID();
  CFRelease(v52);
  if (v53 != v54)
  {
    goto LABEL_91;
  }

  v166 = v52;
  v55 = CFRetain(v52);
  if (!v14)
  {
    v57 = 0;
    v164 = 0;
    v165 = v13;
    if (!v13)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v55 = _Block_copy(v14);
  v57 = v55;
  v164 = v55;
  v165 = v13;
  if (v13)
  {
LABEL_85:
    dispatch_retain(v13);
  }

LABEL_86:
  coex::QMICommandDriver::setWiFiStatus_sync(v55, v56, &v164);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v57)
  {
    _Block_release(v57);
  }

  CFRelease(v52);
LABEL_91:
  v58 = (*v185[0])(v185, *MEMORY[0x29EDC8700]);
  v59 = v58;
  if (!v58)
  {
    goto LABEL_101;
  }

  v60 = CFGetTypeID(v58);
  v61 = CFDictionaryGetTypeID();
  CFRelease(v59);
  if (v60 != v61)
  {
    goto LABEL_101;
  }

  v163 = v59;
  CFRetain(v59);
  if (!v14)
  {
    v63 = 0;
    v161 = 0;
    v162 = v13;
    if (!v13)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v63 = _Block_copy(v14);
  v161 = v63;
  v162 = v13;
  if (v13)
  {
LABEL_95:
    dispatch_retain(v13);
  }

LABEL_96:
  coex::QMICommandDriver::setLAAConfig_sync(a1, &v163, v62, &v161);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v63)
  {
    _Block_release(v63);
  }

  CFRelease(v59);
LABEL_101:
  v64 = (*v185[0])(v185, *MEMORY[0x29EDC8800]);
  v65 = v64;
  if (!v64)
  {
    goto LABEL_111;
  }

  v66 = CFGetTypeID(v64);
  v67 = CFDictionaryGetTypeID();
  CFRelease(v65);
  if (v66 != v67)
  {
    goto LABEL_111;
  }

  v160 = v65;
  CFRetain(v65);
  if (!v14)
  {
    v68 = 0;
    v158 = 0;
    v159 = v13;
    if (!v13)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v68 = _Block_copy(v14);
  v158 = v68;
  v159 = v13;
  if (v13)
  {
LABEL_105:
    dispatch_retain(v13);
  }

LABEL_106:
  coex::QMICommandDriver::setTimeShareConfig_sync(a1, &v160, &v158);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v68)
  {
    _Block_release(v68);
  }

  CFRelease(v65);
LABEL_111:
  v69 = (*v185[0])(v185, *MEMORY[0x29EDC8798]);
  v70 = v69;
  if (v69)
  {
    v71 = CFGetTypeID(v69);
    v72 = CFDictionaryGetTypeID();
    CFRelease(v70);
    if (v71 == v72)
    {
      v157 = v70;
      CFRetain(v70);
      if (v14)
      {
        v14 = _Block_copy(v14);
      }

      v156[0] = v14;
      v156[1] = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      coex::QMICommandDriver::setWCI2TxAntMap_sync(a1, &v157, v156);
      if (v13)
      {
        dispatch_release(v13);
      }

      if (v14)
      {
        _Block_release(v14);
      }

      CFRelease(v70);
    }
  }

  v73 = (*v185[0])(v185, *MEMORY[0x29EDC8758]);
  v74 = v73;
  if (v73)
  {
    v75 = CFGetTypeID(v73);
    v76 = CFDictionaryGetTypeID();
    CFRelease(v74);
    if (v75 == v76)
    {
      v155 = v74;
      CFRetain(v74);
      if (v188)
      {
        v77 = _Block_copy(v188);
        v78 = v189;
        v153 = v77;
        v154 = v189;
        if (!v189)
        {
LABEL_127:
          coex::QMICommandDriver::setAntBlocking_sync(a1, &v155, &v153);
          if (v78)
          {
            dispatch_release(v78);
          }

          if (v77)
          {
            _Block_release(v77);
          }

          CFRelease(v74);
          goto LABEL_132;
        }
      }

      else
      {
        v77 = 0;
        v78 = v189;
        v153 = 0;
        v154 = v189;
        if (!v189)
        {
          goto LABEL_127;
        }
      }

      dispatch_retain(v78);
      goto LABEL_127;
    }
  }

LABEL_132:
  v79 = (*v185[0])(v185, *MEMORY[0x29EDC8880]);
  v80 = v79;
  if (!v79)
  {
    goto LABEL_142;
  }

  v81 = CFGetTypeID(v79);
  v82 = CFDictionaryGetTypeID();
  CFRelease(v80);
  if (v81 != v82)
  {
    goto LABEL_142;
  }

  v152 = v80;
  CFRetain(v80);
  if (!v188)
  {
    v83 = 0;
    v84 = v189;
    v150 = 0;
    v151 = v189;
    if (!v189)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  v83 = _Block_copy(v188);
  v84 = v189;
  v150 = v83;
  v151 = v189;
  if (v189)
  {
LABEL_136:
    dispatch_retain(v84);
  }

LABEL_137:
  coex::QMICommandDriver::setClientAntBlocking_sync(a1, &v152, &v150);
  if (v84)
  {
    dispatch_release(v84);
  }

  if (v83)
  {
    _Block_release(v83);
  }

  CFRelease(v80);
LABEL_142:
  v85 = (*v185[0])(v185, *MEMORY[0x29EDC8A58]);
  v86 = v85;
  if (!v85)
  {
    goto LABEL_152;
  }

  v87 = CFGetTypeID(v85);
  v88 = CFDictionaryGetTypeID();
  CFRelease(v86);
  if (v87 != v88)
  {
    goto LABEL_152;
  }

  v149 = v86;
  CFRetain(v86);
  if (!v188)
  {
    v89 = 0;
    v90 = v189;
    v147 = 0;
    v148 = v189;
    if (!v189)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  v89 = _Block_copy(v188);
  v90 = v189;
  v147 = v89;
  v148 = v189;
  if (v189)
  {
LABEL_146:
    dispatch_retain(v90);
  }

LABEL_147:
  coex::QMICommandDriver::setClientAntBlockingExtended_sync(a1, &v149, &v147);
  if (v90)
  {
    dispatch_release(v90);
  }

  if (v89)
  {
    _Block_release(v89);
  }

  CFRelease(v86);
LABEL_152:
  v91 = (*v185[0])(v185, *MEMORY[0x29EDC89D0]);
  v92 = v91;
  if (!v91)
  {
    goto LABEL_162;
  }

  v93 = CFGetTypeID(v91);
  v94 = CFDictionaryGetTypeID();
  CFRelease(v92);
  if (v93 != v94)
  {
    goto LABEL_162;
  }

  v146 = v92;
  CFRetain(v92);
  if (!v188)
  {
    v95 = 0;
    v96 = v189;
    v144 = 0;
    v145 = v189;
    if (!v189)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v95 = _Block_copy(v188);
  v96 = v189;
  v144 = v95;
  v145 = v189;
  if (v189)
  {
LABEL_156:
    dispatch_retain(v96);
  }

LABEL_157:
  coex::QMICommandDriver::sendTransparentMessageReq_sync(a1, &v146, &v144);
  if (v96)
  {
    dispatch_release(v96);
  }

  if (v95)
  {
    _Block_release(v95);
  }

  CFRelease(v92);
LABEL_162:
  v97 = (*v185[0])(v185, *MEMORY[0x29EDC8808]);
  v98 = v97;
  if (!v97)
  {
    goto LABEL_172;
  }

  v99 = CFGetTypeID(v97);
  v100 = CFDictionaryGetTypeID();
  CFRelease(v98);
  if (v99 != v100)
  {
    goto LABEL_172;
  }

  v143 = v98;
  CFRetain(v98);
  if (!v188)
  {
    v101 = 0;
    v102 = v189;
    v141 = 0;
    v142 = v189;
    if (!v189)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  v101 = _Block_copy(v188);
  v102 = v189;
  v141 = v101;
  v142 = v189;
  if (v189)
  {
LABEL_166:
    dispatch_retain(v102);
  }

LABEL_167:
  coex::QMICommandDriver::setTriggerAntennaBlocking_sync(a1, &v143, &v141);
  if (v102)
  {
    dispatch_release(v102);
  }

  if (v101)
  {
    _Block_release(v101);
  }

  CFRelease(v98);
LABEL_172:
  v103 = (*v185[0])(v185, *MEMORY[0x29EDC8678]);
  v104 = v103;
  if (!v103)
  {
    goto LABEL_182;
  }

  v105 = CFGetTypeID(v103);
  v106 = CFDictionaryGetTypeID();
  CFRelease(v104);
  if (v105 != v106)
  {
    goto LABEL_182;
  }

  v140 = v104;
  CFRetain(v104);
  if (!v188)
  {
    v107 = 0;
    v108 = v189;
    v138 = 0;
    v139 = v189;
    if (!v189)
    {
      goto LABEL_177;
    }

    goto LABEL_176;
  }

  v107 = _Block_copy(v188);
  v108 = v189;
  v138 = v107;
  v139 = v189;
  if (v189)
  {
LABEL_176:
    dispatch_retain(v108);
  }

LABEL_177:
  coex::QMICommandDriver::setCC1_sync(a1, &v140, &v138);
  if (v108)
  {
    dispatch_release(v108);
  }

  if (v107)
  {
    _Block_release(v107);
  }

  CFRelease(v104);
LABEL_182:
  v109 = (*v185[0])(v185, *MEMORY[0x29EDC8680]);
  v110 = v109;
  if (!v109)
  {
    goto LABEL_192;
  }

  v111 = CFGetTypeID(v109);
  v112 = CFDictionaryGetTypeID();
  CFRelease(v110);
  if (v111 != v112)
  {
    goto LABEL_192;
  }

  v137 = v110;
  CFRetain(v110);
  if (!v188)
  {
    v113 = 0;
    v114 = v189;
    v135 = 0;
    v136 = v189;
    if (!v189)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  v113 = _Block_copy(v188);
  v114 = v189;
  v135 = v113;
  v136 = v189;
  if (v189)
  {
LABEL_186:
    dispatch_retain(v114);
  }

LABEL_187:
  coex::QMICommandDriver::setCC2_sync(a1, &v137, &v135);
  if (v114)
  {
    dispatch_release(v114);
  }

  if (v113)
  {
    _Block_release(v113);
  }

  CFRelease(v110);
LABEL_192:
  v115 = (*v185[0])(v185, *MEMORY[0x29EDC88E8]);
  v116 = v115;
  if (!v115)
  {
    goto LABEL_202;
  }

  v117 = CFGetTypeID(v115);
  v118 = CFDictionaryGetTypeID();
  CFRelease(v116);
  if (v117 != v118)
  {
    goto LABEL_202;
  }

  v134 = v116;
  CFRetain(v116);
  if (!v188)
  {
    v119 = 0;
    v120 = v189;
    v132 = 0;
    v133 = v189;
    if (!v189)
    {
      goto LABEL_197;
    }

    goto LABEL_196;
  }

  v119 = _Block_copy(v188);
  v120 = v189;
  v132 = v119;
  v133 = v189;
  if (v189)
  {
LABEL_196:
    dispatch_retain(v120);
  }

LABEL_197:
  coex::QMICommandDriver::setLaaGpioThrottle_sync(a1, &v134, &v132);
  if (v120)
  {
    dispatch_release(v120);
  }

  if (v119)
  {
    _Block_release(v119);
  }

  CFRelease(v116);
LABEL_202:
  v121 = (*v185[0])(v185, *MEMORY[0x29EDC87A8]);
  v122 = v121;
  if (!v121)
  {
    goto LABEL_212;
  }

  v123 = CFGetTypeID(v121);
  v124 = CFDictionaryGetTypeID();
  CFRelease(v122);
  if (v123 != v124)
  {
    goto LABEL_212;
  }

  v131 = v122;
  CFRetain(v122);
  if (!v188)
  {
    v125 = 0;
    v126 = v189;
    v129 = 0;
    v130 = v189;
    if (!v189)
    {
      goto LABEL_207;
    }

    goto LABEL_206;
  }

  v125 = _Block_copy(v188);
  v126 = v189;
  v129 = v125;
  v130 = v189;
  if (v189)
  {
LABEL_206:
    dispatch_retain(v126);
  }

LABEL_207:
  coex::QMICommandDriver::setGnssParams_sync(a1, &v131, &v129);
  if (v126)
  {
    dispatch_release(v126);
  }

  if (v125)
  {
    _Block_release(v125);
  }

  CFRelease(v122);
LABEL_212:
  v127 = *(a1 + 24);
  v128[0] = MEMORY[0x29EDCA5F8];
  v128[1] = 0x40000000;
  v128[2] = ___ZN4coex16QMICommandDriver8set_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_31;
  v128[3] = &unk_29EE5FA58;
  v128[4] = v190;
  dispatch_group_notify(v9, v127, v128);
  MEMORY[0x29C268420](v185);
  if (v189)
  {
    dispatch_release(v189);
  }

  if (v188)
  {
    _Block_release(v188);
  }

  if (v187)
  {
    dispatch_group_leave(v187);
    if (v187)
    {
      dispatch_release(v187);
    }
  }

  _Block_object_dispose(v190, 8);
  if (v192)
  {
    dispatch_release(v192);
  }

  if (v191)
  {
    _Block_release(v191);
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }
}

void sub_296EDA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  MEMORY[0x29C268420](v8 - 224);
  coex::CommandDriver::Callback::~Callback((v8 - 160));
  v10 = *(v8 - 168);
  if (v10)
  {
    dispatch_group_leave(v10);
    v11 = *(v8 - 168);
    if (v11)
    {
      dispatch_release(v11);
    }
  }

  _Block_object_dispose((v8 - 144), 8);
  coex::CommandDriver::Callback::~Callback((v7 + 40));
  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
    dispatch_release(v6);
  }

  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::set(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4coex16QMICommandDriver3setEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v10[3] = &__block_descriptor_tmp_21_2;
  v7 = *a2;
  v10[4] = a1;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = a3;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver3setEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = *(a1 + 56);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = *(a1 + 56);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  coex::QMICommandDriver::set_sync(v3, &v10, v4, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_296EDA4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void *__Block_byref_object_copy__1(void *result, void *a2)
{
  result[5] = result + 5;
  result[6] = result + 5;
  result[7] = 0;
  v2 = a2[7];
  if (v2)
  {
    v4 = a2[5];
    v3 = a2[6];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[5];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[5] = v4;
    *(v4 + 8) = result + 5;
    result[7] = v2;
    a2[7] = 0;
  }

  return result;
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  *(a1 + 200) = 0;
  v5 = MEMORY[0x29EDC9538];
  *(a1 + 152) = MEMORY[0x29EDC95B8] + 16;
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  *(a1 + 40) = v7;
  *(a1 + 40 + *(v7 - 24)) = v6;
  v8 = (a1 + 40 + *(*(a1 + 40) - 24));
  v9 = (a2 + 40 + *(*(a2 + 40) - 24));
  std::ios_base::move(v8, v9);
  v8[1].__vftable = v9[1].__vftable;
  v9[1].__vftable = 0;
  v8[1].__fmtflags_ = v9[1].__fmtflags_;
  *(a1 + 40) = MEMORY[0x29EDC95A8] + 24;
  *(a1 + 152) = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 48) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C268DF0](a1 + 56);
  *(a1 + 112) = 0;
  v10 = (a1 + 112);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 48) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = *(a2 + 144);
  v11 = (a2 + 112);
  if (*(a2 + 135) >= 0)
  {
    v12 = a2 + 112;
  }

  else
  {
    v12 = *(a2 + 112);
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = v13 - v12;
    v15 = *(a2 + 72) - v12;
    v16 = *(a2 + 80) - v12;
    v17 = *(a2 + 88);
    if (v17)
    {
LABEL_6:
      v18 = v17 - v12;
      v19 = *(a2 + 96) - v12;
      v20 = *(a2 + 104) - v12;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = -1;
    v15 = -1;
    v14 = -1;
    v17 = *(a2 + 88);
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v18 = -1;
  v19 = -1;
  v20 = -1;
LABEL_9:
  v21 = *(a2 + 136);
  v22 = v21 - v12;
  if (!v21)
  {
    v22 = -1;
  }

  v23 = *v11;
  *(a1 + 128) = *(a2 + 128);
  *v10 = v23;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  v24 = a1 + 112;
  if (*(a1 + 135) < 0)
  {
    v24 = *v10;
  }

  if (v14 != -1)
  {
    *(a1 + 64) = v24 + v14;
    *(a1 + 72) = v24 + v15;
    *(a1 + 80) = v24 + v16;
  }

  if (v18 != -1)
  {
    *(a1 + 104) = v24 + v20;
    *(a1 + 88) = v24 + v18;
    *(a1 + 96) = v24 + v18 + v19;
  }

  v25 = v24 + v22;
  if (v22 == -1)
  {
    v25 = 0;
  }

  *(a1 + 136) = v25;
  if (*(a2 + 135) < 0)
  {
    v11 = *(a2 + 112);
  }

  *(a2 + 64) = v11;
  *(a2 + 72) = v11;
  *(a2 + 80) = v11;
  *(a2 + 88) = v11;
  *(a2 + 96) = v11;
  *(a2 + 104) = v11;
  *(a2 + 136) = v11;
  std::locale::locale(&v26, (a2 + 56));
  (*(*(a1 + 48) + 16))(a1 + 48, &v26);
  v27.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::locale::locale(&v27, (a1 + 56));
  std::locale::operator=((a1 + 56), &v26);
  std::locale::~locale(&v27);
  std::locale::~locale(&v26);
  *(v4 + *(*v4 - 24) + 40) = a1 + 48;
}

void sub_296EDA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  if (*(v10 + 135) < 0)
  {
    operator delete(*v13);
  }

  *v11 = v12;
  std::locale::~locale((v10 + 56));
  std::ostream::~ostream();
  MEMORY[0x29C268E60](v9);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void *__Block_byref_object_copy__6(void *result, void *a2)
{
  result[5] = result + 5;
  result[6] = result + 5;
  result[7] = 0;
  v2 = a2[7];
  if (v2)
  {
    v4 = a2[5];
    v3 = a2[6];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[5];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[5] = v4;
    *(v4 + 8) = result + 5;
    result[7] = v2;
    a2[7] = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4coex13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void coex::QMICommandDriver::setPolicy_sync(uint64_t a1, const void **a2, uint64_t a3)
{
  v143 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v99 = *a2;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v99;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting policy with: %@", &buf, 0xCu);
  }

  v136[0] = 0;
  v136[1] = 0;
  v135 = v136;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v139 = 0x4802000000;
  v140 = __Block_byref_object_copy__79;
  v141 = __Block_byref_object_dispose__80;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v142[0] = v7;
  v142[1] = v7;
  qmi::MutableMessageBase::MutableMessageBase(v142);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  aBlock[3] = &unk_29EE5FBE0;
  aBlock[4] = &buf;
  v8 = _Block_copy(aBlock);
  v137[0] = MEMORY[0x29EDC8600];
  v9 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8600], v137);
  v10 = v9[5];
  v9[5] = v8;
  if (v10)
  {
    _Block_release(v10);
  }

  v133[0] = MEMORY[0x29EDCA5F8];
  v133[1] = 0x40000000;
  v133[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_85;
  v133[3] = &unk_29EE5FC08;
  v133[4] = &buf;
  v11 = _Block_copy(v133);
  v137[0] = MEMORY[0x29EDC8750];
  v12 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8750], v137);
  v13 = v12[5];
  v12[5] = v11;
  if (v13)
  {
    _Block_release(v13);
  }

  v132[0] = MEMORY[0x29EDCA5F8];
  v132[1] = 0x40000000;
  v132[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_92;
  v132[3] = &unk_29EE5FC30;
  v132[4] = &buf;
  v14 = _Block_copy(v132);
  v137[0] = MEMORY[0x29EDC86E0];
  v15 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC86E0], v137);
  v16 = v15[5];
  v15[5] = v14;
  if (v16)
  {
    _Block_release(v16);
  }

  v131[0] = MEMORY[0x29EDCA5F8];
  v131[1] = 0x40000000;
  v131[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_99;
  v131[3] = &unk_29EE5FC58;
  v131[4] = &buf;
  v17 = _Block_copy(v131);
  v137[0] = MEMORY[0x29EDC8AD0];
  v18 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8AD0], v137);
  v19 = v18[5];
  v18[5] = v17;
  if (v19)
  {
    _Block_release(v19);
  }

  v130[0] = MEMORY[0x29EDCA5F8];
  v130[1] = 0x40000000;
  v130[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_106;
  v130[3] = &unk_29EE5FC80;
  v130[4] = &buf;
  v20 = _Block_copy(v130);
  v137[0] = MEMORY[0x29EDC89A0];
  v21 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC89A0], v137);
  v22 = v21[5];
  v21[5] = v20;
  if (v22)
  {
    _Block_release(v22);
  }

  v129[0] = MEMORY[0x29EDCA5F8];
  v129[1] = 0x40000000;
  v129[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_113;
  v129[3] = &unk_29EE5FCA8;
  v129[4] = &buf;
  v23 = _Block_copy(v129);
  v137[0] = MEMORY[0x29EDC8628];
  v24 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8628], v137);
  v25 = v24[5];
  v24[5] = v23;
  if (v25)
  {
    _Block_release(v25);
  }

  v128[0] = MEMORY[0x29EDCA5F8];
  v128[1] = 0x40000000;
  v128[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_120;
  v128[3] = &unk_29EE5FCD0;
  v128[4] = &buf;
  v26 = _Block_copy(v128);
  v137[0] = MEMORY[0x29EDC88F8];
  v27 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC88F8], v137);
  v28 = v27[5];
  v27[5] = v26;
  if (v28)
  {
    _Block_release(v28);
  }

  v127[0] = MEMORY[0x29EDCA5F8];
  v127[1] = 0x40000000;
  v127[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_127;
  v127[3] = &unk_29EE5FCF8;
  v127[4] = &buf;
  v29 = _Block_copy(v127);
  v137[0] = MEMORY[0x29EDC87B8];
  v30 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC87B8], v137);
  v31 = v30[5];
  v30[5] = v29;
  if (v31)
  {
    _Block_release(v31);
  }

  v126[0] = MEMORY[0x29EDCA5F8];
  v126[1] = 0x40000000;
  v126[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_134;
  v126[3] = &unk_29EE5FD20;
  v126[4] = &buf;
  v32 = _Block_copy(v126);
  v137[0] = MEMORY[0x29EDC88D8];
  v33 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC88D8], v137);
  v34 = v33[5];
  v33[5] = v32;
  if (v34)
  {
    _Block_release(v34);
  }

  v125[0] = MEMORY[0x29EDCA5F8];
  v125[1] = 0x40000000;
  v125[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_141;
  v125[3] = &unk_29EE5FD48;
  v125[4] = &buf;
  v35 = _Block_copy(v125);
  v137[0] = MEMORY[0x29EDC8730];
  v36 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8730], v137);
  v37 = v36[5];
  v36[5] = v35;
  if (v37)
  {
    _Block_release(v37);
  }

  v124[0] = MEMORY[0x29EDCA5F8];
  v124[1] = 0x40000000;
  v124[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_148;
  v124[3] = &unk_29EE5FD70;
  v124[4] = &buf;
  v38 = _Block_copy(v124);
  v137[0] = MEMORY[0x29EDC8830];
  v39 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8830], v137);
  v40 = v39[5];
  v39[5] = v38;
  if (v40)
  {
    _Block_release(v40);
  }

  v123[0] = MEMORY[0x29EDCA5F8];
  v123[1] = 0x40000000;
  v123[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_155;
  v123[3] = &unk_29EE5FD98;
  v123[4] = &buf;
  v41 = _Block_copy(v123);
  v137[0] = MEMORY[0x29EDC8978];
  v42 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8978], v137);
  v43 = v42[5];
  v42[5] = v41;
  if (v43)
  {
    _Block_release(v43);
  }

  v122[0] = MEMORY[0x29EDCA5F8];
  v122[1] = 0x40000000;
  v122[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_162;
  v122[3] = &unk_29EE5FDC0;
  v122[4] = &buf;
  v44 = _Block_copy(v122);
  v137[0] = MEMORY[0x29EDC8A70];
  v45 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8A70], v137);
  v46 = v45[5];
  v45[5] = v44;
  if (v46)
  {
    _Block_release(v46);
  }

  v121[0] = MEMORY[0x29EDCA5F8];
  v121[1] = 0x40000000;
  v121[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_169;
  v121[3] = &unk_29EE5FDE8;
  v121[4] = &buf;
  v47 = _Block_copy(v121);
  v137[0] = MEMORY[0x29EDC8A98];
  v48 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8A98], v137);
  v49 = v48[5];
  v48[5] = v47;
  if (v49)
  {
    _Block_release(v49);
  }

  v120[0] = MEMORY[0x29EDCA5F8];
  v120[1] = 0x40000000;
  v120[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_176;
  v120[3] = &unk_29EE5FE10;
  v120[4] = &buf;
  v50 = _Block_copy(v120);
  v137[0] = MEMORY[0x29EDC89C8];
  v51 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC89C8], v137);
  v52 = v51[5];
  v51[5] = v50;
  if (v52)
  {
    _Block_release(v52);
  }

  v53 = _Block_copy(&__block_literal_global_2);
  v137[0] = MEMORY[0x29EDC89F8];
  v54 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC89F8], v137);
  v55 = v54[5];
  v54[5] = v53;
  if (v55)
  {
    _Block_release(v55);
  }

  v119[0] = MEMORY[0x29EDCA5F8];
  v119[1] = 0x40000000;
  v119[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_2_185;
  v119[3] = &unk_29EE5FE58;
  v119[4] = &buf;
  v56 = _Block_copy(v119);
  v137[0] = MEMORY[0x29EDC86D8];
  v57 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC86D8], v137);
  v58 = v57[5];
  v57[5] = v56;
  if (v58)
  {
    _Block_release(v58);
  }

  v118[0] = MEMORY[0x29EDCA5F8];
  v118[1] = 0x40000000;
  v118[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_191;
  v118[3] = &unk_29EE5FE80;
  v118[4] = &buf;
  v59 = _Block_copy(v118);
  v137[0] = MEMORY[0x29EDC8638];
  v60 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8638], v137);
  v61 = v60[5];
  v60[5] = v59;
  if (v61)
  {
    _Block_release(v61);
  }

  v117[0] = MEMORY[0x29EDCA5F8];
  v117[1] = 0x40000000;
  v117[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_198;
  v117[3] = &unk_29EE5FEA8;
  v117[4] = &buf;
  v62 = _Block_copy(v117);
  v137[0] = MEMORY[0x29EDC8710];
  v63 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8710], v137);
  v64 = v63[5];
  v63[5] = v62;
  if (v64)
  {
    _Block_release(v64);
  }

  v116[0] = MEMORY[0x29EDCA5F8];
  v116[1] = 0x40000000;
  v116[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_205;
  v116[3] = &unk_29EE5FED0;
  v116[4] = &buf;
  v65 = _Block_copy(v116);
  v137[0] = MEMORY[0x29EDC8AD8];
  v66 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8AD8], v137);
  v67 = v66[5];
  v66[5] = v65;
  if (v67)
  {
    _Block_release(v67);
  }

  v115[0] = MEMORY[0x29EDCA5F8];
  v115[1] = 0x40000000;
  v115[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_212;
  v115[3] = &unk_29EE5FEF8;
  v115[4] = &buf;
  v68 = _Block_copy(v115);
  v137[0] = MEMORY[0x29EDC8A38];
  v69 = std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v135, MEMORY[0x29EDC8A38], v137);
  v70 = v69[5];
  v69[5] = v68;
  if (v70)
  {
    _Block_release(v70);
  }

  v101 = a1;
  v71 = *a2;
  v113 = v71;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  if (v71)
  {
    CFRetain(v71);
  }

  v111 = 0;
  v112 = 0;
  v110 = &v111;
  v72 = v135;
  if (v135 != v136)
  {
    do
    {
      v77 = v111;
      if (v110 == &v111)
      {
        v79 = &v111;
      }

      else
      {
        v78 = &v111;
        if (v111)
        {
          do
          {
            v79 = v77;
            v77 = v77[1];
          }

          while (v77);
        }

        else
        {
          do
          {
            v79 = v78[2];
            v80 = *v79 == v78;
            v78 = v79;
          }

          while (v80);
        }

        v81 = CFStringCompare(v79[4], v72[4], 0);
        v77 = v111;
        if ((v81 & 0x8000000000000000) == 0)
        {
          v82 = &v111;
          v83 = &v111;
          if (!v111)
          {
            goto LABEL_72;
          }

          v82 = &v111;
          while (1)
          {
            while (1)
            {
              v83 = v77;
              if ((CFStringCompare(v72[4], v77[4], 0) & 0x8000000000000000) == 0)
              {
                break;
              }

              v77 = *v83;
              v82 = v83;
              if (!*v83)
              {
                goto LABEL_72;
              }
            }

            if ((CFStringCompare(v83[4], v72[4], 0) & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

            v82 = v83 + 1;
            v77 = v83[1];
            if (!v77)
            {
              goto LABEL_72;
            }
          }
        }
      }

      v82 = &v111;
      v83 = &v111;
      if (!v77)
      {
        goto LABEL_72;
      }

      v82 = v79 + 1;
      v83 = v79;
LABEL_69:
      if (*v82)
      {
        v84 = v72[1];
        if (!v84)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

LABEL_72:
      v85 = operator new(0x30uLL);
      v85[4] = v72[4];
      v86 = v72[5];
      if (v86)
      {
        v86 = _Block_copy(v86);
      }

      v85[5] = v86;
      *v85 = 0;
      v85[1] = 0;
      v85[2] = v83;
      *v82 = v85;
      if (*v110)
      {
        v110 = *v110;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v111, v85);
      ++v112;
      v84 = v72[1];
      if (!v84)
      {
        do
        {
LABEL_79:
          v87 = v72[2];
          v80 = *v87 == v72;
          v72 = v87;
        }

        while (!v80);
        goto LABEL_52;
      }

      do
      {
LABEL_77:
        v87 = v84;
        v84 = *v84;
      }

      while (v84);
LABEL_52:
      v72 = v87;
    }

    while (v87 != v136);
  }

  Count = CFDictionaryGetCount(v71);
  v74 = Count;
  if ((Count & 0x8000000000000000) != 0)
  {
    v114 = 0;
    v88 = v101;
  }

  else
  {
    if (Count)
    {
      if (Count >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v75 = operator new(8 * Count);
      bzero(v75, 8 * v74);
      v76 = operator new(8 * v74);
      bzero(v76, 8 * v74);
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v100 = a3;
    CFDictionaryGetKeysAndValues(v71, v75, v76);
    if (v74)
    {
      for (i = 0; i != v74; ++i)
      {
        v90 = *(v75 + i);
        v91 = *(v76 + i);
        v105 = v91;
        if (v91)
        {
          CFRetain(v91);
        }

        v92 = v111;
        if (v111)
        {
          v93 = &v111;
          do
          {
            v94 = CFStringCompare(v92[4], v90, 0);
            if (v94 >= kCFCompareEqualTo)
            {
              v93 = v92;
            }

            v92 = *(v92 + ((v94 >> 60) & 8));
          }

          while (v92);
          if (v93 != &v111 && (CFStringCompare(v90, v93[4], 0) & 0x8000000000000000) == 0)
          {
            v95 = v93[5];
            v137[0] = v91;
            if (v91)
            {
              CFRetain(v91);
            }

            (v95[2])(v95, v137);
            if (v137[0])
            {
              CFRelease(v137[0]);
            }
          }
        }

        if (v91)
        {
          CFRelease(v91);
        }
      }
    }

    v114 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    a3 = v100;
    v88 = v101;
    if (v75)
    {
      operator delete(v75);
    }
  }

  std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(v111);
  if (v71)
  {
    CFRelease(v71);
  }

  v105 = (v88 + 136);
  v106 = QMIServiceMsg::create();
  v107 = 25000;
  v108 = 0;
  v109 = 0;
  v102[0] = MEMORY[0x29EDCA5F8];
  v102[1] = 1174405120;
  v102[2] = ___ZN4coex16QMICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_219;
  v102[3] = &__block_descriptor_tmp_223;
  v102[4] = v88;
  v96 = *a3;
  if (*a3)
  {
    v96 = _Block_copy(v96);
  }

  v97 = *(a3 + 8);
  v103 = v96;
  object = v97;
  if (v97)
  {
    dispatch_retain(v97);
  }

  v137[0] = MEMORY[0x29EDCA5F8];
  v137[1] = 0x40000000;
  v137[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetPolicy8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v137[3] = &unk_29EE60130;
  v137[4] = v102;
  v109 = _Block_copy(v137);
  qmi::Client::send();
  if (v109)
  {
    _Block_release(v109);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v103)
  {
    _Block_release(v103);
  }

  _Block_object_dispose(&buf, 8);
  qmi::MutableMessageBase::~MutableMessageBase(v142);
  std::__tree<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>,coex::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<void const>)>>>>::destroy(v136[0]);
  v98 = *MEMORY[0x29EDCA608];
}