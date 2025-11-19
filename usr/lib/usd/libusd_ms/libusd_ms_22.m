void sub_29A1025F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::TfGetenvDouble(const char *a1, double a2)
{
  pxrInternal__aapl__pxrReserved__::ArchGetEnv(a1, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    a2 = std::stod(&__str, 0);
    v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v4 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_29A102688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3)
{
  result = pxrInternal__aapl__pxrReserved__::ArchHash64(a2, a3, *this);
  *this = result;
  *(this + 8) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHashCString::operator()(int a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v3 = strlen(__s);
  return pxrInternal__aapl__pxrReserved__::ArchHash(__s, v3);
}

std::string *pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::_MatchString::_MatchString(std::string *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&__dst->__r_.__value_.__l.__data_ = v3;
  }

  LOWORD(__dst[1].__r_.__value_.__l.__data_) = 1;
  v4 = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = __dst->__r_.__value_.__l.__size_;
    if (!size)
    {
      return __dst;
    }
  }

  else
  {
    if (!*(&__dst->__r_.__value_.__s + 23))
    {
      return __dst;
    }

    size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  }

  v6 = size - 1;
  if ((v4 & 0x80000000) != 0)
  {
    if (*(__dst->__r_.__value_.__r.__words[0] + v6) != 42)
    {
      goto LABEL_16;
    }

    __dst[1].__r_.__value_.__s.__data_[1] = 1;
    v4 = __dst->__r_.__value_.__l.__size_;
LABEL_13:
    std::string::resize(__dst, v4 - 1, 0);
    if ((SHIBYTE(__dst->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&__dst->__r_.__value_.__s + 23))
      {
        return __dst;
      }

      goto LABEL_15;
    }

LABEL_16:
    if (!__dst->__r_.__value_.__l.__size_)
    {
      return __dst;
    }

    v7 = *__dst->__r_.__value_.__l.__data_;
    goto LABEL_18;
  }

  if (__dst->__r_.__value_.__s.__data_[v6] == 42)
  {
    __dst[1].__r_.__value_.__s.__data_[1] = 1;
    goto LABEL_13;
  }

LABEL_15:
  v7 = __dst->__r_.__value_.__s.__data_[0];
LABEL_18:
  if (v7 == 45)
  {
    __dst[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_21:
    std::string::erase(__dst, 0, 1uLL);
    return __dst;
  }

  if (v7 == 43)
  {
    goto LABEL_21;
  }

  return __dst;
}

void sub_29A10287C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Tf_MallocTagStringMatchTable(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Tf_MallocTagStringMatchTable(void *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::SetMatchList(a1, a2);
  return a1;
}

void sub_29A1028EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10C99C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::SetMatchList(uint64_t a1, unsigned __int8 *a2)
{
  sub_29A102A5C(a1);
  pxrInternal__aapl__pxrReserved__::TfStringTokenize(a2, ",\t\n", v16);
  v14 = v16[0];
  v15 = v16[1];
  while (v14 != v15)
  {
    v6 = sub_29A102AAC(&v14, v4, v5);
    pxrInternal__aapl__pxrReserved__::TfStringTrim(" ", v6, &v11);
    pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::_MatchString::_MatchString(&__p, &v11);
    v7 = *(a1 + 8);
    if (v7 >= *(a1 + 16))
    {
      v9 = sub_29A10C9F0(a1, &__p);
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(a1 + 8) = v9;
      if (v10 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v8 = *&__p.__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v7 = v8;
      memset(&__p, 0, sizeof(__p));
      *(v7 + 24) = v13;
      *(a1 + 8) = v7 + 32;
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    sub_29A102B2C(&v14);
  }

  __p.__r_.__value_.__r.__words[0] = v16;
  sub_29A012C90(&__p);
}

void sub_29A102A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  __p = (v20 - 40);
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void sub_29A102A5C(void ***a1)
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

uint64_t sub_29A102AAC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::string>>::operator*() [T = std::vector<std::string>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A102B2C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::string>>::operator++() [T = std::vector<std::string>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match(pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable *this, const char *a2)
{
  v2 = *this;
  v14 = *(this + 1);
  v15 = v14;
  v16 = v2;
  v17 = v2;
  while (v15 != v17)
  {
    v4 = *(*(sub_29A102CD4(&v14) + 8) - 7);
    v5 = *(sub_29A102CD4(&v14) + 8);
    v6 = (v5 - 32);
    if (v4 == 1)
    {
      if (*(v5 - 9) < 0)
      {
        v6 = *v6;
      }

      v7 = *v6;
      if (!*v6)
      {
LABEL_19:
        v12 = *(*(sub_29A102CD4(&v14) + 8) - 8);
        return v12 & 1;
      }

      v8 = v6 + 1;
      while (v7 == *a2)
      {
        ++a2;
        v9 = *v8++;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v10 = strlen(a2);
      v11 = *(v5 - 9);
      if (v11 < 0)
      {
        if (v10 != *(v5 - 24))
        {
          goto LABEL_17;
        }

        if (v10 == -1)
        {
          sub_29A0F26CC();
        }

        v6 = *v6;
      }

      else if (v10 != v11)
      {
        goto LABEL_17;
      }

      if (!memcmp(v6, a2, v10))
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    sub_29A102D10(&v14);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_29A102CD4(uint64_t result)
{
  if (*(result + 8) == *(result + 24))
  {
    sub_29B28DA1C();
  }

  return result;
}

uint64_t sub_29A102D10(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::_MatchString>, true>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::_MatchString>, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 - 32;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_GetStackTrace(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  __src[64] = *MEMORY[0x29EDCA608];
  StackFrames = pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(0x40, a2, __src, a4);
  return sub_29A00CB24(a3, __src, &__src[StackFrames], StackFrames);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_SetTraceNames(uint64_t a1, unsigned __int8 *a2)
{
  sub_29A107FD8(&v12, 0);
  pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::SetMatchList(a1 + 1816, a2);
  for (result = sub_29A102EF8(a1 + 624, v8); v9 != v11 || v8[0] != v10; result = sub_29A102FAC(v8))
  {
    sub_29A102F68(v8);
    if (pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((a1 + 1816), **(v9 + 24)))
    {
      sub_29A102F68(v8);
      v6 = *(v9 + 24);
      v7 = *(v6 + 16) | 1;
    }

    else
    {
      sub_29A102F68(v8);
      v6 = *(v9 + 24);
      v7 = *(v6 + 16) & 0xFFFFFFFE;
    }

    *(v6 + 16) = v7;
  }

  *v12 = 0;
  return result;
}

uint64_t sub_29A102EF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 544);
  v5 = result + 528;
  v8 = result;
  v9 = 0;
  v10 = result + 528;
  v11 = v4;
  if (v4 <= 0x3F)
  {
    result = sub_29A10CE74(&v8);
    v7 = v8;
    v6 = v9;
    v5 = v10;
    v4 = v11;
  }

  else
  {
    v6 = 0;
    v7 = result;
  }

  *a2 = v7;
  a2[1] = v6;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v2;
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  return result;
}

void *sub_29A102F68(void *result)
{
  if (result[3] == result[7] && *result == result[4])
  {
    sub_29B28DA68();
  }

  return result;
}

void *sub_29A102FAC(void *a1)
{
  v2 = a1[3];
  if (v2 == a1[7] && *a1 == a1[4])
  {
    v6[0] = "tf/iterator.h";
    v6[1] = "operator++";
    v6[2] = 233;
    v6[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<tbb::interface5::concurrent_hash_map<const char *, pxrInternal__aapl__pxrReserved__::Tf_MallocCallSite *, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_HashEqCStr>>::operator++() [T = tbb::interface5::concurrent_hash_map<const char *, pxrInternal__aapl__pxrReserved__::Tf_MallocCallSite *, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_HashEqCStr>, Reverse = false]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "iterator exhausted");
  }

  else
  {
    v4 = *v2;
    a1[3] = v4;
    if (!v4)
    {
      sub_29A10CE74(a1);
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_MatchesTraceName(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((a1 + 1816), a2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_CaptureStackOrDebug(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __src[64] = *MEMORY[0x29EDCA608];
  v13 = a3;
  v4 = *(*a2 + 16);
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_29A103164(result + 230, &v10, &v13);
    v7 = v12;
    StackFrames = pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(0x40, 3, __src, v8);
    sub_29A00CB24(v7 + 3, __src, &__src[StackFrames], StackFrames);
    v7[6] = a4;
    v7[7] = 1;
    v12 = 0;
    result = sub_29A0F845C(&v10);
    v4 = *(*a2 + 16);
  }

  if ((v4 & 2) != 0)
  {
    return sub_29A1031E4(result);
  }

  return result;
}

uint64_t sub_29A103164(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A10CEF8(a1, 1, a3, 0, a2, 1, sub_29A10D1F0, 0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_ReleaseStackOrDebug(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(*a2 + 16);
  if (v3)
  {
    result = sub_29A103250(result + 230, &v5);
    v3 = *(*a2 + 16);
  }

  if ((v3 & 2) != 0)
  {
    return sub_29A1031E4(result);
  }

  return result;
}

uint64_t sub_29A103250(uint64_t *a1, void *a2)
{
  v4 = *a2 ^ (*a2 >> 3);
  v5 = *a1;
  __dmb(0xBu);
  while (2)
  {
    sub_29A10D3EC(&v12, a1, v5 & v4, 0);
    while (1)
    {
      v6 = (v14 + 16);
      while (1)
      {
        v7 = v6;
        v6 = *v6;
        if (v6 < 0x40)
        {
          break;
        }

        if (*a2 == v6[2])
        {
          goto LABEL_8;
        }
      }

      if (!v6)
      {
        break;
      }

LABEL_8:
      if (v13 & 1) != 0 || (v13 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v12)))
      {
        *v7 = *v6;
        atomic_fetch_add(a1 + 65, 0xFFFFFFFFFFFFFFFFLL);
        sub_29A0F845C(&v12);
        v10 = 1;
        v13 = 1;
        v12 = (v6 + 1);
        tbb::spin_rw_mutex_v3::internal_acquire_writer(v6 + 1);
        sub_29A0F845C(&v12);
        sub_29A10CDE4(a1, v6);
        return v10;
      }

      v8 = *a1;
      __dmb(0xBu);
      if (v5 != v8)
      {
        v9 = sub_29A108BB8(a1, v4, v5, v8);
        v5 = v8;
        if (v9)
        {
          goto LABEL_15;
        }
      }
    }

    v8 = *a1;
    __dmb(0xBu);
    if (v5 != v8 && sub_29A108BB8(a1, v4, v5, v8))
    {
LABEL_15:
      sub_29A0F845C(&v12);
      v5 = v8;
      continue;
    }

    break;
  }

  sub_29A0F845C(&v12);
  return 0;
}

void sub_29A1033C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_SetDebugNames(uint64_t a1, unsigned __int8 *a2)
{
  sub_29A107FD8(&v12, 0);
  pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::SetMatchList(a1 + 1792, a2);
  for (result = sub_29A102EF8(a1 + 624, v8); v9 != v11 || v8[0] != v10; result = sub_29A102FAC(v8))
  {
    sub_29A102F68(v8);
    if (pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((a1 + 1792), **(v9 + 24)))
    {
      sub_29A102F68(v8);
      v6 = *(v9 + 24);
      v7 = *(v6 + 16) | 2;
    }

    else
    {
      sub_29A102F68(v8);
      v6 = *(v9 + 24);
      v7 = *(v6 + 16) & 0xFFFFFFFD;
    }

    *(v6 + 16) = v7;
  }

  *v12 = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_MatchesDebugName(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((a1 + 1792), a2);
}

void pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_BuildUniqueMallocStacks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2360);
  __dmb(0xBu);
  if (v2)
  {
    *__p = 0u;
    *v32 = 0u;
    v33 = 1065353216;
    sub_29A10D684(v27, a1 + 1840);
    v25 = v32;
    if (*(&v28 + 1) != v30 || v27[0] != v29)
    {
      sub_29A103D04(v27);
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }

    v4 = v32[1];
    if (v32[1])
    {
      if (v32[1] >> 61)
      {
        sub_29A00C9A4();
      }

      v5 = operator new(8 * v32[1]);
      v4 = v5 + 8 * v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v32[0];
    if (v32[0])
    {
      v7 = v5;
      do
      {
        v8 = v6 + 5;
        if (v5 >= v4)
        {
          v9 = v5 - v7;
          v10 = (v5 - v7) >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            sub_29A00C9A4();
          }

          if ((v4 - v7) >> 2 > v11)
          {
            v11 = (v4 - v7) >> 2;
          }

          if (v4 - v7 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (v12 >> 61)
            {
              sub_29A00C8B8();
            }

            v13 = operator new(8 * v12);
          }

          else
          {
            v13 = 0;
          }

          v14 = &v13->i8[8 * v10];
          v4 = v13 + 8 * v12;
          *v14 = v8;
          v5 = (v14 + 8);
          memcpy(v13, v7, v9);
          if (v7)
          {
            operator delete(v7);
          }

          v7 = v13;
        }

        else
        {
          v5->i64[0] = v8;
          v5 = (v5 + 8);
        }

        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v7 = v5;
    }

    v15 = 126 - 2 * __clz((v5 - v7) >> 3);
    v27[0] = sub_29A103DE0;
    if (v5 == v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_29A10D758(v7, v5, v27, v16, 1);
    sub_29A103DF4((a2 + 96), (v5 - v7) >> 3);
    if (v5 != v7)
    {
      v17 = v5;
      do
      {
        v19 = v17[-1].i64[1];
        v17 = (v17 - 8);
        v18 = v19;
        v29 = 0;
        *v27 = 0u;
        v28 = 0u;
        sub_29A103ED0((a2 + 96), v27);
        if (v27[0])
        {
          v27[1] = v27[0];
          operator delete(v27[0]);
        }

        v20 = *(a2 + 104);
        if (v20 - 40 != *v18)
        {
          sub_29A00CB24((v20 - 40), **v18, *(*v18 + 8), (*(*v18 + 8) - **v18) >> 3);
        }

        *(v20 - 16) = *(v18 + 8);
        if (v5 == v7)
        {
          v27[0] = "tf/iterator.h";
          v27[1] = "operator++";
          *&v28 = 233;
          *(&v28 + 1) = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<const pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_MallocStackData *>, true>::operator++() [T = std::vector<const pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_MallocStackData *>, Reverse = true]";
          LOBYTE(v29) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v27, 1, "iterator exhausted", v25);
          v17 = v5;
        }

        v5 = v17;
      }

      while (v17 != v7);
    }

    if (v7)
    {
      operator delete(v7);
    }

    v21 = v32[0];
    if (v32[0])
    {
      do
      {
        v22 = *v21;
        v23 = v21[2];
        if (v23)
        {
          v21[3] = v23;
          operator delete(v23);
        }

        operator delete(v21);
        v21 = v22;
      }

      while (v22);
    }

    v24 = __p[0];
    __p[0] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }
}

void *sub_29A103D04(void *result)
{
  if (result[3] == result[7] && *result == result[4])
  {
    sub_29B28DAB4();
  }

  return result;
}

void *sub_29A103D48(void *a1)
{
  v2 = a1[3];
  if (v2 == a1[7] && *a1 == a1[4])
  {
    v6[0] = "tf/iterator.h";
    v6[1] = "operator++";
    v6[2] = 233;
    v6[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<tbb::interface5::concurrent_hash_map<const void *, pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>>::operator++() [T = tbb::interface5::concurrent_hash_map<const void *, pxrInternal__aapl__pxrReserved__::TfMallocTag::CallStackInfo>, Reverse = false]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "iterator exhausted");
  }

  else
  {
    v4 = *v2;
    a1[3] = v4;
    if (!v4)
    {
      sub_29A10CE74(a1);
    }
  }

  return a1;
}

uint64_t *sub_29A103DF4(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x666666666666667)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A10E224(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[40 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A10E26C(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A10E3B8(&v12);
  }

  return result;
}

void sub_29A103EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10E3B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A103ED0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A10E450(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A103F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_BuildPathNodeChildrenTable@<X0>(pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData *this@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29A10E598(a2, 0, 0.0, 0.5);
  v5 = this + 1208;
  v6 = *(this + 219);
  v10[0] = this + 1208;
  v10[1] = 0;
  v10[2] = this + 1736;
  v11 = v6;
  if (v6 <= 0x3F)
  {
    result = sub_29A10CE74(v10);
    v6 = v11;
    v7 = v10[0];
  }

  else
  {
    v7 = this + 1208;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == v5;
  }

  if (!v8)
  {
    do
    {
      do
      {
        v12 = v6 + 2;
        v9 = sub_29A10E814(a2, v6 + 2, &unk_29B4D6118, &v12);
        sub_29A0A71C8(v9 + 16, v6 + 4);
        v6 = *v6;
        v11 = v6;
      }

      while (v6);
      result = sub_29A10CE74(v10);
      v6 = v11;
    }

    while (v11 || v10[0] != v5);
  }

  return result;
}

void sub_29A104094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 8);
  sub_29A108030(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_MallocPathNode::_BuildTree(void **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  *&v17[0] = a1;
  if (sub_29A10EE28(a2, v17))
  {
    v21 = a1;
    v8 = sub_29A10EF04(a2, &v21);
    v19 = 0;
    v20 = 0;
    v18 = 0;
    sub_29A10EF44(&v18, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 3);
    v9 = v19 - v18;
  }

  else
  {
    v9 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  sub_29A104314(a3 + 6, v9);
  v10 = atomic_load(a1 + 1);
  *a3 = v10;
  a3[1] = v10;
  v11 = atomic_load(a1 + 2);
  a3[2] = v11;
  MEMORY[0x29C2C1A60](a3 + 3, **a1);
  v12 = v18;
  v13 = v19;
  if (v18 != v19)
  {
    do
    {
      v14 = *v12;
      if (a4 && (v15 = atomic_load((v14 + 24)), (v15 & 1) != 0))
      {
        memset(&v17[1] + 8, 0, 48);
        pxrInternal__aapl__pxrReserved__::Tf_MallocPathNode::_BuildTree(v14, a2, v17, 1);
        a3[1] += *(&v17[0] + 1);
        if (*&v17[3] != *(&v17[3] + 1))
        {
          sub_29A10F13C(a3 + 6, a3[7], *&v17[3], *(&v17[3] + 1), 0x8E38E38E38E38E39 * ((*(&v17[3] + 1) - *&v17[3]) >> 3));
        }

        *a3 += *&v17[0];
        v21 = &v17[3];
        sub_29A108138(&v21);
        if (SHIBYTE(v17[2]) < 0)
        {
          operator delete(*(&v17[1] + 1));
        }
      }

      else
      {
        memset(v17, 0, 72);
        sub_29A104448((a3 + 6), v17);
        v21 = &v17[3];
        sub_29A108138(&v21);
        if (SHIBYTE(v17[2]) < 0)
        {
          operator delete(*(&v17[1] + 1));
        }

        v16 = (a3[7] - 72);
        pxrInternal__aapl__pxrReserved__::Tf_MallocPathNode::_BuildTree(v14, a2, v16, a4);
        *a3 += *v16;
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = v18;
  }

  if (v12)
  {
    v19 = v12;
    operator delete(v12);
  }
}

void sub_29A1042DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A104314(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x38E38E38E38E38FLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A09C03C(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = v4 + 72 * v6;
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29A10EFC0(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A10F0BC(&v12);
  }

  return result;
}

void sub_29A1043E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10F0BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1043FC(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_29A108138(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_29A104448(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A10F578(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::SetDebugMatchList(uint64_t result)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v1)
  {
    v2 = result;
    v3 = qword_2A153F018;
    v4 = -1;
    sub_29A10818C(&v3);
    pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_SetDebugNames(qword_2A153F018, v2);
    return sub_29A104D64(&v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::SetCapturedMallocStacksMatchList(uint64_t result)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v1)
  {
    v2 = result;
    v3 = qword_2A153F018;
    v4 = -1;
    sub_29A10818C(&v3);
    pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_SetTraceNames(qword_2A153F018, v2);
    return sub_29A104D64(&v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::GetCapturedMallocStacks@<X0>(void *a1@<X8>)
{
  v49 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v3)
  {
    sub_29A10F6F8(&v11, "Tf", "TfMallocTag::GetCapturedMallocStacks");
    *(&v47[0] + 1) = 0;
    *&v48 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    __dmb(0xBu);
    v13 = 0;
    __dmb(0xBu);
    v46 = 0;
    memset(v47, 0, sizeof(v47));
    v48 = 0u;
    *&v14 = v47;
    __dmb(0xBu);
    v13 = 1;
    v6 = qword_2A153F018;
    v7 = -1;
    sub_29A10818C(&v6);
    if (&v13 != (qword_2A153F018 + 1840))
    {
      sub_29A10F76C(&v13, (qword_2A153F018 + 1840));
    }

    sub_29A104D64(&v6);
    sub_29A10D684(&v6, &v13);
    if (v8 != v10 || v6 != v9)
    {
      sub_29A103D04(&v6);
      sub_29A104810(a1);
    }

    result = sub_29A10CD18(&v13);
    if (v11)
    {
      return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
    }
  }

  return result;
}

void sub_29A1047A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29A104810(void *a1)
{
  if (a1[1] < a1[2])
  {
    sub_29A10F800(a1);
  }

  sub_29A10F854(a1);
}

uint64_t sub_29A104880(uint64_t a1)
{
  if (*a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1 == 0;
  }

  if (!v4)
  {
    v5 = *(a1 + 16);
    if (*(a1 + 8) == v5)
    {
      v6 = (qword_2A153F018 + 16);
    }

    else
    {
      v6 = (v5 - 8);
    }

    v7 = *v6;
    v13 = qword_2A153F018;
    v14 = -1;
    sub_29A1081D8(&v13);
    v8 = qword_2A153F018;
    v17 = v1;
    sub_29A107FD8(&v16, 0);
    if (*(*v7 + 16))
    {
      pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_CaptureStackOrDebug(v8, v7, v1, v2);
    }

    *&v15 = v2;
    *(&v15 + 1) = v7;
    sub_29A108268(v8 + 5, v3 - 33, &v17, &v15);
    atomic_fetch_add_explicit(v7 + 1, v2, memory_order_relaxed);
    v10 = *v7;
    v9 = v7 + 2;
    atomic_fetch_add_explicit((v10 + 8), v2, memory_order_relaxed);
    v11 = atomic_fetch_add_explicit(v8 + 3, v2, memory_order_relaxed) + v2;
    if (v11 <= v8[4])
    {
      v11 = v8[4];
    }

    v8[4] = v11;
    atomic_fetch_add(v9, 1uLL);
    *v16 = 0;
    sub_29A104D64(&v13);
  }

  return v1;
}

void sub_29A104974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  *a14 = 0;
  sub_29A104D64(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfMallocTag::_ReallocWrapper(pxrInternal__aapl__pxrReserved__::TfMallocTag *this, pxrInternal__aapl__pxrReserved__::TfMallocTag *a2, const void *a3, const void *a4)
{
  if (!this)
  {

    pxrInternal__aapl__pxrReserved__::TfMallocTag::_MallocWrapper(a2, a2, a3);
  }

  sub_29B28D858();
}

uint64_t sub_29A1049F4(uint64_t a1)
{
  if (*a1)
  {
    v4 = off_2A153F028;

    return v4(v2, v1);
  }

  else
  {
    v17 = qword_2A153F018;
    v18 = -1;
    sub_29A1081D8(&v17);
    sub_29A104B78(qword_2A153F018, v2);
    v7 = (off_2A153F028)(v2, v1);
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = qword_2A153F018;
      if (v9 == v10)
      {
        v12 = (qword_2A153F018 + 16);
      }

      else
      {
        v12 = (v10 - 8);
      }

      v13 = *v12;
      v21 = v7;
      sub_29A107FD8(&v20, 0);
      if (*(*v13 + 16))
      {
        pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_CaptureStackOrDebug(v11, v13, v8, v1);
      }

      *&v19 = v1;
      *(&v19 + 1) = v13;
      sub_29A108268(v11 + 5, v3 - 33, &v21, &v19);
      atomic_fetch_add_explicit(v13 + 1, v1, memory_order_relaxed);
      v15 = *v13;
      v14 = v13 + 2;
      atomic_fetch_add_explicit((v15 + 8), v1, memory_order_relaxed);
      v16 = atomic_fetch_add_explicit(v11 + 3, v1, memory_order_relaxed) + v1;
      if (v16 <= v11[4])
      {
        v16 = v11[4];
      }

      v11[4] = v16;
      atomic_fetch_add(v14, 1uLL);
      *v20 = 0;
    }

    sub_29A104D64(&v17);
    return v8;
  }
}

void sub_29A104B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  *a14 = 0;
  sub_29A104D64(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A104B78(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  sub_29A107FD8(&v14, 0);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (sub_29A108C14(a1 + 5, &v11, &v15))
  {
    v4 = *(v13 + 24);
    v3 = *(v13 + 32);
    sub_29A108C94(a1 + 5, &v11);
    if (v13)
    {
      v5 = v11;
      v11 = 0;
      if (v12 == 1)
      {
LABEL_4:
        v6 = *v5;
        v7 = *v5 & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v8 = v6;
          atomic_compare_exchange_strong(v5, &v8, v7);
          if (v8 == v6)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v5, 0, memory_order_relaxed) != v6)
          {
            sched_yield();
            goto LABEL_4;
          }
        }
      }

      else
      {
        atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFCLL);
      }

      v13 = 0;
    }

    v9 = *v3;
    if (*(*v3 + 16))
    {
      pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_ReleaseStackOrDebug(a1, v3, v15);
      v9 = *v3;
    }

    atomic_fetch_add_explicit(v3 + 1, -v4, memory_order_relaxed);
    atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v9 + 8), -v4, memory_order_relaxed);
    atomic_fetch_add_explicit(a1 + 3, -v4, memory_order_relaxed);
  }

  v13 = 0;
  result = sub_29A0F845C(&v11);
  *v14 = 0;
  return result;
}

void sub_29A104CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  *a13 = 0;
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::_FreeWrapper(uint64_t this, void *a2, const void *a3)
{
  if (this)
  {
    sub_29B28DB00();
  }

  return this;
}

void sub_29A104CF8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  if (a1)
  {
    a9 = qword_2A153F018;
    a10 = -1;
    sub_29A1081D8(&a9);
    sub_29A104B78(qword_2A153F018, v10);
    sub_29A104D64(&a9);
    off_2A153F038(v10);
    sub_29A104D64(&a9);
  }

  JUMPOUT(0x29A104CE0);
}

uint64_t sub_29A104D64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != -1)
  {
    if (v1 == -2)
    {
      return sub_29A108DE4(a1);
    }

    else
    {
      return sub_29A108E30(a1);
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::Initialize(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A153EFA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EFA8))
  {
    byte_2A153EFA0 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Initialize(a1);
    __cxa_guard_release(&qword_2A153EFA8);
  }

  return byte_2A153EFA0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::_Initialize(uint64_t a1)
{
  if (qword_2A153F018)
  {
    sub_29B28DB48(v7);
  }

  v2 = operator new(0x978uLL);
  sub_29A10984C(v2);
  qword_2A153F018 = v2;
  v3 = sub_29A108E70(v2 + 78, "__root");
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = v3;
  v5 = qword_2A153F018;
  *(v4 + 24) = 0;
  *(v5 + 16) = v4;
  atomic_store(1u, pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  sub_29A107FD8(v7, 0);
  result = pxrInternal__aapl__pxrReserved__::ArchMallocHook::Initialize(&off_2A153F020, pxrInternal__aapl__pxrReserved__::TfMallocTag::_MallocWrapper, pxrInternal__aapl__pxrReserved__::TfMallocTag::_ReallocWrapper, pxrInternal__aapl__pxrReserved__::TfMallocTag::_MemalignWrapper, pxrInternal__aapl__pxrReserved__::TfMallocTag::_FreeWrapper, a1);
  *v7[0] = 0;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TfMallocTag::GetCallTree(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  sub_29A102A5C(a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (*(a1 + 71) < 0)
  {
    **(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 71) = 0;
  }

  sub_29A10C928(a1 + 72, *(a1 + 72));
  v4 = qword_2A153F018;
  if (qword_2A153F018)
  {
    sub_29A107FD8(&v21, 0);
    v19 = v4;
    v20 = -1;
    sub_29A10818C(&v19);
    v5 = *(v4 + 2);
    pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_BuildPathNodeChildrenTable(v4, &v22);
    pxrInternal__aapl__pxrReserved__::Tf_MallocPathNode::_BuildTree(v5, &v22, (a1 + 24), a2);
    v15[0] = v23;
    sub_29A108030(v15);
    v25[1] = 0;
    *&v26 = 0;
    memset(v23, 0, sizeof(v23));
    __dmb(0xBu);
    v22 = 0;
    __dmb(0xBu);
    v24 = 0;
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v23[0] = v25;
    __dmb(0xBu);
    v22 = 1;
    sub_29A105268(a1 + 24, &v22);
    v6 = v24;
    __dmb(0xBu);
    sub_29A105300(a1, v6);
    sub_29A102EF8(&v22, v15);
    while (v16 != v18 || v15[0] != v17)
    {
      sub_29A102F68(v15);
      sub_29A008E78(__p, **(v16 + 24));
      sub_29A102F68(v15);
      v8 = atomic_load((*(v16 + 24) + 8));
      v14 = v8;
      sub_29A1053BC(a1, __p);
      sub_29A102F68(v15);
      v9 = *(v16 + 24);
      if (v9)
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          operator delete[](v10);
        }

        operator delete(v9);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A102FAC(v15);
    }

    pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_BuildUniqueMallocStacks(v4, a1);
    sub_29A1053FC(&v22);
    sub_29A104D64(&v19);
    *v21 = 0;
  }

  return v4 != 0;
}

void sub_29A1051D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

atomic_ullong *sub_29A105268(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_29B28DBF0(&v11);
  }

  if (!a2)
  {
    sub_29B28DB9C(&v11);
  }

  v4 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v4 = *v4;
  }

  result = sub_29A108E70(a2, v4);
  atomic_fetch_add(result + 1, *(a1 + 8));
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v8;
  v12 = v9;
  while (v8 != v9)
  {
    v10 = sub_29A109010(&v11, v6, v7);
    sub_29A105268(v10, a2);
    result = sub_29A109090(&v11);
    v8 = v11;
    v9 = v12;
  }

  return result;
}

void *sub_29A105300(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (a2 >> 59)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A10CB10(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[2 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29A10F984(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A10CC84(&v12);
  }

  return result;
}

void sub_29A1053A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10CC84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1053BC(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A10FAE8(a1, a2);
  }

  else
  {
    sub_29A10FA78(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

unint64_t *sub_29A1053FC(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v4 = sub_29A0EC0EC(v2);
  for (i = a1 + 1; ; i[v4--] = 0)
  {
    v6 = 0;
    v7 = i[v4];
    v8 = v4 <= 1 ? 1 : v4;
    do
    {
      v9 = v7 + 24 * v6;
      while (1)
      {
        v10 = *(v9 + 16);
        if (v10 <= 0x3F)
        {
          break;
        }

        *(v9 + 16) = *v10;
        tbb::internal::deallocate_via_handler_v3(v10, v3);
      }

      ++v6;
    }

    while (!(v6 >> v8));
    if (v4 < 8 && v4 != 1)
    {
      break;
    }

    tbb::internal::deallocate_via_handler_v3(i[v4], v3);
LABEL_14:
    ;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  __dmb(0xBu);
  *a1 = 1;
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::GetTotalBytes(pxrInternal__aapl__pxrReserved__::TfMallocTag *this)
{
  if (qword_2A153F018)
  {
    return atomic_load((qword_2A153F018 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::GetMaxTotalBytes(pxrInternal__aapl__pxrReserved__::TfMallocTag *this)
{
  if (qword_2A153F018)
  {
    return atomic_load((qword_2A153F018 + 32));
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(char *a1, _DWORD *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v3 = a2;
  if (!a2)
  {
    sub_29B28D858();
  }

  sub_29A107FD8(&v12, a2);
  v10 = qword_2A153F018;
  v11 = -1;
  sub_29A1081D8(&v10);
  v4 = sub_29A108E70((qword_2A153F018 + 624), a1);
  v5 = v3[2];
  if (v3[1] == v5)
  {
    v6 = (qword_2A153F018 + 16);
  }

  else
  {
    v6 = (v5 - 8);
  }

  v7 = sub_29A10567C(qword_2A153F018, *v6, v4);
  sub_29A104D64(&v10);
  v14 = v7;
  v15 = v4;
  sub_29A10A0CC(v3 + 4, &v15, &v15);
  if ((v8 & 1) == 0)
  {
    atomic_store(1u, v7 + 24);
    v13 = 0;
    sub_29A0A71C8((v3 + 1), &v13);
  }

  sub_29A0A71C8((v3 + 1), &v14);
  sub_29A104D64(&v10);
  *v12 = 0;
  return v3;
}

void sub_29A10564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  sub_29A104D64(&a9);
  *a11 = 0;
  _Unwind_Resume(a1);
}

void *sub_29A10567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (sub_29A109A90((a1 + 1208), 0, &v12, &v9, 0, 0))
  {
    v5 = *(v11 + 32);
  }

  else
  {
    v11 = 0;
    sub_29A0F845C(&v9);
    v5 = operator new(0x20uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = a3;
    *(v5 + 24) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v6 = tbb::internal::allocate_via_handler_v3(0x28);
    *v6 = 0;
    v6[1] = 0;
    *(v6 + 1) = v12;
    v6[4] = v5;
    if (!sub_29A109A90((a1 + 1208), 1, v6 + 2, &v9, 1, v6))
    {
      v7 = *(v11 + 32);
      v11 = 0;
      sub_29A0F845C(&v9);
      operator delete(v5);
      return v7;
    }
  }

  v11 = 0;
  sub_29A0F845C(&v9);
  return v5;
}

void sub_29A105788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(uint64_t result, void *a2)
{
  v3 = result;
  if (!a2)
  {
    sub_29B28D858();
  }

  if (result)
  {
    do
    {
      v5 = a2[1];
      v4 = a2[2];
      v6 = *(v4 - 8);
      a2[2] = v4 - 8;
      if (v5 == v4 - 8 || (v8 = *(v4 - 16), v7 = v4 - 16, v8))
      {
        result = sub_29A10A960(a2 + 4, v6, bswap64(0x9E3779B97F4A7C55 * *v6));
      }

      else
      {
        a2[2] = v7;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29A105848()
{
  if (!v0)
  {
    JUMPOUT(0x29A105834);
  }

  JUMPOUT(0x29A1057E0);
}

void pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::GetPrettyPrintString(const std::string *a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v8 = operator new(0x58uLL);
  v94.__r_.__value_.__r.__words[0] = v8;
  *&v94.__r_.__value_.__r.__words[1] = xmmword_29B43B8B0;
  *&v9 = 0x2D2D2D2D2D2D2D2DLL;
  *(&v9 + 1) = 0x2D2D2D2D2D2D2D2DLL;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v8[4] = v9;
  *(v8 + 80) = 0;
  v10 = std::string::insert(&v94, 0, "\n");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v95, "\n");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v83 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v83 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v83 >= 0)
  {
    v15 = HIBYTE(v83);
  }

  else
  {
    v15 = __p[1];
  }

  std::string::append(a4, v14, v15);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\nMalloc Tag Report\n\n\n", v16, v17);
  if (v83 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v83 >= 0)
  {
    v19 = HIBYTE(v83);
  }

  else
  {
    v19 = __p[1];
  }

  std::string::append(a4, v18, v19);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_2A153F018)
  {
    v22 = atomic_load((qword_2A153F018 + 24));
  }

  else
  {
    v22 = 0;
  }

  sub_29A10AA98(v22, v20, v21, &v95);
  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v95;
  }

  else
  {
    v25 = v95.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Total bytes = %s\n\n\n", v23, v24, v25);
  if (v83 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v83 >= 0)
  {
    v27 = HIBYTE(v83);
  }

  else
  {
    v27 = __p[1];
  }

  std::string::append(a4, v26, v27);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if ((a2 & 0xFFFFFFFD) == 0)
  {
    v95.__r_.__value_.__r.__words[0] = 0;
    v30 = sub_29A106284(a4, a1 + 1, 0, 0, 0, &v95, a3);
    if (v95.__r_.__value_.__r.__words[0] >= a3)
    {
      v31 = qword_2A153F018;
      if (qword_2A153F018)
      {
        v31 = atomic_load((qword_2A153F018 + 24));
      }

      if (v30 != v31)
      {
        v32 = qword_2A153F018;
        if (qword_2A153F018)
        {
          v32 = atomic_load((qword_2A153F018 + 24));
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("\nWARNING: limit of %zu nodes visted, but only %zu bytes of %zu accounted for.  Running with a larger maxPrintedNodes will produce more accurate results.\n", v28, v29, a3, v30, v32);
        if (v83 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        if (v83 >= 0)
        {
          v34 = HIBYTE(v83);
        }

        else
        {
          v34 = __p[1];
        }

        std::string::append(a4, v33, v34);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if ((a2 - 1) <= 1)
  {
    v81 = a1[1].__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n\nCall Sites\n\n", v28, v29);
    if (v83 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    if (v83 >= 0)
    {
      v36 = HIBYTE(v83);
    }

    else
    {
      v36 = __p[1];
    }

    std::string::append(a4, v35, v36);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(__p[0]);
    }

    *&v95.__r_.__value_.__r.__words[1] = 0uLL;
    v95.__r_.__value_.__r.__words[0] = &v95.__r_.__value_.__l.__size_;
    size = a1->__r_.__value_.__l.__size_;
    __p[0] = a1->__r_.__value_.__l.__data_;
    __p[1] = size;
    while (__p[0] != __p[1])
    {
      v40 = *sub_29A10ACC4(__p);
      v41 = *sub_29A10ACC4(__p);
      v94.__r_.__value_.__r.__words[0] = *(v40 + 24);
      v94.__r_.__value_.__l.__size_ = v41;
      sub_29A10AE64(&v95, &v94, &v94);
      sub_29A10ACFC(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%%-%lds %%%lds %%%lds\n", v37, v38, 72, 15, 15);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v94;
    }

    else
    {
      v44 = v94.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf(v44, v42, v43, "NAME", "BYTES", "%ROOT");
    if (v83 >= 0)
    {
      v45 = __p;
    }

    else
    {
      v45 = __p[0];
    }

    if (v83 >= 0)
    {
      v46 = HIBYTE(v83);
    }

    else
    {
      v46 = __p[1];
    }

    std::string::append(a4, v45, v46);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(__p[0]);
    }

    v47 = operator new(0x50uLL);
    v89.__r_.__value_.__r.__words[0] = v47;
    *&v89.__r_.__value_.__r.__words[1] = xmmword_29B43B8C0;
    *&v48 = 0x2D2D2D2D2D2D2D2DLL;
    *(&v48 + 1) = 0x2D2D2D2D2D2D2D2DLL;
    *v47 = v48;
    *(v47 + 1) = v48;
    *(v47 + 2) = v48;
    *(v47 + 3) = v48;
    strcpy(v47 + 64, "--------");
    std::string::push_back(&v89, 32);
    v90 = v89;
    memset(&v89, 0, sizeof(v89));
    v88 = 15;
    strcpy(__s, "---------------");
    v49 = std::string::append(&v90, __s, 0xFuLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    std::string::push_back(&v91, 32);
    v92 = v91;
    memset(&v91, 0, sizeof(v91));
    v86 = 15;
    strcpy(v85, "---------------");
    v51 = std::string::append(&v92, v85, 0xFuLL);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v93.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v93.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v93, "\n\n");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v83 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v83 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    if (v83 >= 0)
    {
      v56 = HIBYTE(v83);
    }

    else
    {
      v56 = __p[1];
    }

    std::string::append(a4, v55, v56);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v88 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    __p[0] = &v95.__r_.__value_.__r.__words[1];
    __p[1] = &v95.__r_.__value_.__r.__words[1];
    v83 = v95.__r_.__value_.__r.__words[0];
    v84 = v95.__r_.__value_.__r.__words[0];
    v57 = v81;
    while (__p[1] != v84)
    {
      v58 = *(sub_29A10AD7C(__p) + 8);
      v59 = *v58;
      if (*v58)
      {
        do
        {
          v60 = v59;
          v59 = v59[1];
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v58[2];
          v61 = *v60 == v58;
          v58 = v60;
        }

        while (v61);
      }

      v62 = v60[4];
      v65 = *(sub_29A10AD7C(__p) + 8);
      v66 = *v65;
      if (*v65)
      {
        do
        {
          v67 = v66;
          v66 = v66[1];
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v65[2];
          v61 = *v67 == v65;
          v65 = v67;
        }

        while (v61);
      }

      v68 = v67[5];
      memset(&v93, 0, sizeof(v93));
      if (v81)
      {
        if (v62 * 100.0 / v57 < 0.1)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%.1f%%", v63, v64, v62 * 100.0 / v57);
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        v93 = v92;
      }

      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &v94;
      }

      else
      {
        v69 = v94.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string(&v91, v68, 0, 0x48uLL, &v90);
      v70 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
      v71 = v91.__r_.__value_.__r.__words[0];
      sub_29A10AA98(v62, v72, v73, &v90);
      if (v70 >= 0)
      {
        v76 = &v91;
      }

      else
      {
        v76 = v71;
      }

      v77 = v90.__r_.__value_.__r.__words[0];
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v90;
      }

      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &v93;
      }

      else
      {
        v78 = v93.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf(v69, v74, v75, v76, v77, v78);
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v92;
      }

      else
      {
        v79 = v92.__r_.__value_.__r.__words[0];
      }

      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = v92.__r_.__value_.__l.__size_;
      }

      std::string::append(a4, v79, v80);
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      sub_29A10ADB8(__p);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    sub_29A082B84(&v95, v95.__r_.__value_.__l.__size_);
  }
}

void sub_29A106038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 + 23) < 0)
  {
    operator delete(*v58);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A106284(std::string *a1, const std::string *a2, char *a3, unint64_t a4, size_t a5, unint64_t *a6, unint64_t a7)
{
  v11 = a3;
  if (!a5)
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%-72s %15s%15s %5s %5s %5s\n", a2, a3, "TAGNAME", "BytesIncl", "BytesExcl", "%Prnt", "% Exc", "%Totl");
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v63;
    }

    else
    {
      v14 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v14, size);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    v16 = operator new(0x50uLL);
    *&v17 = 0x2D2D2D2D2D2D2D2DLL;
    *(&v17 + 1) = 0x2D2D2D2D2D2D2D2DLL;
    *v16 = v17;
    *(v16 + 1) = v17;
    *(v16 + 2) = v17;
    *(v16 + 3) = v17;
    strcpy(v16 + 64, "--------");
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%-72s %12s%12s %5s %5s %5s\n\n", v18, v19, v16, " --------------", " --------------", "-----", "-----", "-----");
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v63;
    }

    else
    {
      v20 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v63.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v20, v21);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    operator delete(v16);
    v11 = a2->__r_.__value_.__r.__words[0];
  }

  if (*a6 >= a7)
  {
    return 0;
  }

  ++*a6;
  sub_29A00944C(&__b, a5, 32);
  std::string::basic_string(&v61, a2 + 1, 0, 72 - a5, &__p);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v61;
  }

  else
  {
    v22 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v61.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&__b, v22, v23);
  v26 = *&v24->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v26;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  v27 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  v28 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v63.__r_.__value_.__r.__words[1];
  }

  v29 = (72 - v27);
  if (v29 >= 1)
  {
    sub_29A00944C(&__b, v29, 32);
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__r_.__value_.__r.__words[0];
    }

    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = __b.__r_.__value_.__l.__size_;
    }

    std::string::append(&v63, p_b, v31);
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }

    v28 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  v58 = a4;
  if (v28 >= 0)
  {
    v32 = &v63;
  }

  else
  {
    v32 = v63.__r_.__value_.__r.__words[0];
  }

  sub_29A10AA98(a2->__r_.__value_.__r.__words[0], v29, v25, &v61);
  v33 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  v34 = v61.__r_.__value_.__r.__words[0];
  sub_29A10AA98(a2->__r_.__value_.__l.__size_, v35, v36, &__p);
  v39 = &v61;
  if (v33 < 0)
  {
    v39 = v34;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s %15s%15s ", v37, v38, v32, v39, p_p);
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &__b;
  }

  else
  {
    v41 = __b.__r_.__value_.__r.__words[0];
  }

  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __b.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v41, v42);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  memset(&__b, 0, sizeof(__b));
  memset(&v61, 0, sizeof(v61));
  memset(&__p, 0, sizeof(__p));
  if (v58)
  {
    v45 = a2->__r_.__value_.__r.__words[0];
    v46 = (v45 / v58) * 100.0;
    if (v46 > 0.5)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(" %.0f%%", v43, v44, v46);
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      __b = v59;
      v45 = a2->__r_.__value_.__r.__words[0];
    }

    v47 = a2->__r_.__value_.__l.__size_;
    v48 = (v47 / v45) * 100.0;
    if (v48 > 0.5)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(" %.0f%%", v43, v44, v48);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v61 = v59;
      v47 = a2->__r_.__value_.__l.__size_;
    }

    v49 = (v47 / v11) * 100.0;
    if (v49 > 0.5)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(" %.0f%%", v43, v44, v49);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v59;
    }
  }

  if (!a5)
  {
    v50 = (100 * a2->__r_.__value_.__l.__size_) / v11;
    if (v50 > 0.5)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf(" %.0f%%", v43, v44, v50);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v59;
    }
  }

  v51 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = __b.__r_.__value_.__r.__words[0];
  }

  v52 = &v61;
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v52 = v61.__r_.__value_.__r.__words[0];
  }

  v53 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v53 = __p.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%5s %5s %5s\n", v43, v44, v51, v52, v53);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v59;
  }

  else
  {
    v54 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v59.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v54, v55);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  for (i = a2[2].__r_.__value_.__l.__data_; i != a2[2].__r_.__value_.__l.__size_; i += 72)
  {
    sub_29A106284(a1, i, v11, a2->__r_.__value_.__r.__words[0], a5 + 1, a6, a7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_29A106878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::Report(const std::string *a1, void *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::Report(a1, a2, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1069E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::Report(const std::string *a1, void *a2, uint64_t a3)
{
  v6 = sub_29A00911C(a2, "\n", 1);
  sub_29A10715C();
  if (byte_2A153F00F >= 0)
  {
    v7 = &qword_2A153EFF8;
  }

  else
  {
    v7 = qword_2A153EFF8;
  }

  if (byte_2A153F00F >= 0)
  {
    v8 = byte_2A153F00F;
  }

  else
  {
    v8 = qword_2A153F000;
  }

  v9 = sub_29A00911C(v6, v7, v8);
  sub_29A00911C(v9, "\n", 1);
  sub_29A00911C(a2, "      inclusive       exclusive\n", 32);
  sub_29A10720C(a2, &a1[1], 0, a3);
  v101 = a1;
  pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::GetPrettyPrintString(a1, 1, 0x186A0uLL, &v109);
  if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v109;
  }

  else
  {
    v10 = v109.__r_.__value_.__r.__words[0];
  }

  if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v109.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v109.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(a2, v10, size);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  data = a1[4].__r_.__value_.__l.__data_;
  v12 = a1[4].__r_.__value_.__l.__size_;
  if (data != v12)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - data) >> 3);
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = (data + 32);
    do
    {
      v22 = *(v21 - 1);
      v14 += v22;
      v15 += *v21;
      if (v16 >= 0x64)
      {
        v22 = 0;
      }

      v18 += v22;
      if (v16 >= 0x64)
      {
        v23 = 0;
      }

      else
      {
        v23 = *v21;
      }

      v17 += v23;
      ++v16;
      v21 += 5;
    }

    while (v20 != v16);
    if (v19 >= 0x64)
    {
      v24 = 100;
    }

    else
    {
      v24 = v19;
    }

    v25 = sub_29A00911C(a2, "\n\n\n", 3);
    v26 = sub_29A00911C(v25, "Captured Malloc Stacks\n", 23);
    v27 = sub_29A00911C(v26, "\n", 1);
    v28 = sub_29A00911C(v27, "Number of unique captured malloc stacks:          ", 50);
    sub_29A10AA98(0xCCCCCCCCCCCCCCCDLL * ((v101[4].__r_.__value_.__l.__size_ - v101[4].__r_.__value_.__r.__words[0]) >> 3), v29, v30, &v109);
    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v109;
    }

    else
    {
      v31 = v109.__r_.__value_.__r.__words[0];
    }

    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v109.__r_.__value_.__l.__size_;
    }

    v33 = sub_29A00911C(v28, v31, v32);
    v34 = sub_29A00911C(v33, "\n", 1);
    v35 = sub_29A00911C(v34, "Total allocated memory by captured mallocs:       ", 50);
    sub_29A10AA98(v14, v36, v37, &v108);
    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v108;
    }

    else
    {
      v38 = v108.__r_.__value_.__r.__words[0];
    }

    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v108.__r_.__value_.__l.__size_;
    }

    v40 = sub_29A00911C(v35, v38, v39);
    v41 = sub_29A00911C(v40, "\n", 1);
    v42 = sub_29A00911C(v41, "Total number of allocations by captured mallocs:  ", 50);
    sub_29A10AA98(v15, v43, v44, &v107);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v107;
    }

    else
    {
      v45 = v107.__r_.__value_.__r.__words[0];
    }

    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v107.__r_.__value_.__l.__size_;
    }

    v47 = sub_29A00911C(v42, v45, v46);
    v48 = sub_29A00911C(v47, "\n", 1);
    v49 = sub_29A00911C(v48, "\n", 1);
    v50 = sub_29A00911C(v49, "Number of captured malloc stacks in report:       ", 50);
    sub_29A10AA98(v24, v51, v52, &v106);
    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v106;
    }

    else
    {
      v53 = v106.__r_.__value_.__r.__words[0];
    }

    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v106.__r_.__value_.__l.__size_;
    }

    v55 = sub_29A00911C(v50, v53, v54);
    v56 = sub_29A00911C(v55, "\n", 1);
    v57 = sub_29A00911C(v56, "Allocated memory by mallocs in report:            ", 50);
    sub_29A10AA98(v18, v58, v59, &v105);
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v105;
    }

    else
    {
      v60 = v105.__r_.__value_.__r.__words[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v105.__r_.__value_.__l.__size_;
    }

    v62 = sub_29A00911C(v57, v60, v61);
    v63 = sub_29A00911C(v62, "\n", 1);
    v64 = sub_29A00911C(v63, "Number of allocations by mallocs in report:       ", 50);
    sub_29A10AA98(v17, v65, v66, &v104);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v104;
    }

    else
    {
      v67 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v104.__r_.__value_.__l.__size_;
    }

    v69 = sub_29A00911C(v64, v67, v68);
    v70 = sub_29A00911C(v69, "\n", 1);
    v71 = sub_29A00911C(v70, "Percentage of allocated memory covered by report: ", 50);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%.1f%%", v72, v73, v18 * 100.0 / v14);
    if ((v103 & 0x80u) == 0)
    {
      v74 = __p;
    }

    else
    {
      v74 = __p[0];
    }

    if ((v103 & 0x80u) == 0)
    {
      v75 = v103;
    }

    else
    {
      v75 = __p[1];
    }

    v76 = sub_29A00911C(v71, v74, v75);
    sub_29A00911C(v76, "\n\n", 2);
    if (v103 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    v77 = 0;
    v78 = 0;
    if (v24 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v24;
    }

    do
    {
      v80 = v101[4].__r_.__value_.__l.__data_;
      v81 = operator new(0x68uLL);
      *&v82 = 0x2D2D2D2D2D2D2D2DLL;
      *(&v82 + 1) = 0x2D2D2D2D2D2D2D2DLL;
      *v81 = v82;
      *(v81 + 1) = v82;
      *(v81 + 2) = v82;
      *(v81 + 3) = v82;
      *(v81 + 4) = v82;
      *(v81 + 5) = v82;
      strcpy(v81 + 96, "----");
      v83 = sub_29A00911C(a2, v81, 100);
      v84 = sub_29A00911C(v83, "\n", 1);
      v85 = sub_29A00911C(v84, "Captured malloc stack #", 23);
      v86 = MEMORY[0x29C2C1F00](v85, v78);
      v87 = sub_29A00911C(v86, "\n", 1);
      v88 = sub_29A00911C(v87, "Size:            ", 17);
      sub_29A10AA98(*&v80[v77 + 24], v89, v90, &v109);
      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v109;
      }

      else
      {
        v91 = v109.__r_.__value_.__r.__words[0];
      }

      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v92 = v109.__r_.__value_.__l.__size_;
      }

      v93 = sub_29A00911C(v88, v91, v92);
      v94 = sub_29A00911C(v93, "\n", 1);
      v95 = sub_29A00911C(v94, "Num allocations: ", 17);
      sub_29A10AA98(*&v80[v77 + 32], v96, v97, &v108);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &v108;
      }

      else
      {
        v98 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v99 = v108.__r_.__value_.__l.__size_;
      }

      v100 = sub_29A00911C(v95, v98, v99);
      sub_29A00911C(v100, "\n", 1);
      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      operator delete(v81);
      pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames(a2, &v80[v77], 0);
      ++v78;
      v77 += 40;
    }

    while (v79 != v78);
  }
}

void sub_29A107050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A10715C()
{
  if ((atomic_load_explicit(&qword_2A153F010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153F010))
  {
    sub_29A008E78(&qword_2A153EFF8, "Tree view  ==============");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A153EFF8, &dword_299FE7000);

    __cxa_guard_release(&qword_2A153F010);
  }
}

void sub_29A10720C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    return;
  }

  sub_29A00944C(__b, 2 * a3, 32);
  v10 = a3 + 1;
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = v10 >> 1;
    do
    {
      v13 = __b[0];
      if ((v45 & 0x80u) == 0)
      {
        v13 = __b;
      }

      *(v13 + v11) = 124;
      v11 += 4;
      --v12;
    }

    while (v12);
  }

  sub_29A10AA98(*a2, v8, v9, &v41);
  v14 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  v15 = v41.__r_.__value_.__r.__words[0];
  sub_29A10AA98(*(a2 + 8), v16, v17, &v40);
  v20 = &v41;
  if (v14 < 0)
  {
    v20 = v15;
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  else
  {
    v21 = v40.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%13s B %13s B %7ld samples    ", v18, v19, v20, v21, *(a2 + 16));
  if (v43 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v43 >= 0)
  {
    v23 = HIBYTE(v43);
  }

  else
  {
    v23 = *(&__p + 1);
  }

  sub_29A00911C(a1, p_p, v23);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if ((v45 & 0x80u) == 0)
  {
    v24 = __b;
  }

  else
  {
    v24 = __b[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v25 = v45;
  }

  else
  {
    v25 = __b[1];
  }

  v26 = sub_29A00911C(a1, v24, v25);
  if (!a4)
  {
    goto LABEL_33;
  }

  v27 = *(a4 + 23);
  if (v27 < 0)
  {
    if (*(a4 + 8))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!*(a4 + 23))
  {
LABEL_33:
    a4 = a2 + 24;
    LOBYTE(v27) = *(a2 + 47);
  }

LABEL_34:
  if ((v27 & 0x80u) == 0)
  {
    v28 = a4;
  }

  else
  {
    v28 = *a4;
  }

  if ((v27 & 0x80u) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a4 + 8);
  }

  v30 = sub_29A00911C(v26, v28, v29);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  __p = 0uLL;
  v43 = 0;
  sub_29A08AF9C(&__p, 0x8E38E38E38E38E39 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  v34 = *(a2 + 56);
  v41.__r_.__value_.__r.__words[0] = *(a2 + 48);
  v41.__r_.__value_.__l.__size_ = v34;
  while (v41.__r_.__value_.__r.__words[0] != v41.__r_.__value_.__l.__size_)
  {
    v40.__r_.__value_.__r.__words[0] = sub_29A10AF20(&v41, v32, v33);
    sub_29A0A71C8(&__p, &v40);
    sub_29A10AFA0(&v41);
  }

  v35 = 126 - 2 * __clz((*(&__p + 1) - __p) >> 3);
  v41.__r_.__value_.__r.__words[0] = sub_29A10B020;
  if (*(&__p + 1) == __p)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  sub_29A10B194(__p, *(&__p + 1), &v41, v36, 1);
  *&v41.__r_.__value_.__l.__data_ = __p;
  while (v41.__r_.__value_.__r.__words[0] != v41.__r_.__value_.__l.__size_)
  {
    v39 = sub_29A10B094(&v41, v37, v38);
    sub_29A10720C(a1, *v39, v10, 0);
    sub_29A10B114(&v41);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v45 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_29A107540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::LoadReport(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&qword_2A153EFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EFF0))
  {
    sub_29A0CD6B0(&unk_2A153EFB0, " *([\\d].*) B *([\\d].*) B *([\\d].*) samples    ([ |]*)(.*)", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A153EFB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A153EFF0);
  }

  v64[0].__locale_ = 0;
  v64[1].__locale_ = 0;
  __p[0] = 0;
  sub_29A008E78(&__p[1], "root");
  v66 = 0uLL;
  v67 = 0;
  v4 = (a1 + 24);
  *(a1 + 24) = *&v64[0].__locale_;
  *(a1 + 40) = __p[0];
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = *&__p[1];
  *(a1 + 64) = __p[3];
  HIBYTE(__p[3]) = 0;
  LOBYTE(__p[1]) = 0;
  sub_29A10C428((a1 + 72));
  *(a1 + 72) = v66;
  *(a1 + 88) = v67;
  v67 = 0;
  v66 = 0uLL;
  v54.__r_.__value_.__r.__words[0] = &v66;
  sub_29A108138(&v54);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  v64[0].__locale_ = (a1 + 24);
  sub_29A10FC24(v74, v64);
  v5 = 0;
  memset(&v73, 0, sizeof(v73));
  v6 = MEMORY[0x29EDC93D0];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v7 = std::locale::use_facet(v64, v6);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(v64);
    v9 = sub_29A0DE07C(a2, &v73, v8);
    if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &v73, v64);
      if (SHIBYTE(__p[0]) < 0)
      {
        locale = v64[1].__locale_;
        operator delete(v64[0].__locale_);
        if (!locale)
        {
          goto LABEL_37;
        }

LABEL_11:
        v66 = 0uLL;
        LOBYTE(v67) = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *&v64[0].__locale_ = 0u;
        *__p = 0u;
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v73;
        }

        else
        {
          v10 = v73.__r_.__value_.__r.__words[0];
        }

        *(&__p[1] + 1) = 0uLL;
        v11 = strlen(v10);
        if (sub_29A0D5434(&unk_2A153EFB0, v10, v10 + v11, v64, 4160) && (v70 & 1) == 0)
        {
          v12 = v64[0].__locale_;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v64[1].__locale_ - v64[0].__locale_) >> 3);
          if (v13 <= 1)
          {
            v14 = v64;
          }

          else
          {
            v14 = v64[0].__locale_;
          }

          if (v14[40] == 1)
          {
            if (v13 <= 1)
            {
              v12 = v64;
            }

            sub_29A0D2BE0(__dst, *(v12 + 3), *(v12 + 4), *(v12 + 4) - *(v12 + 3));
          }

          else
          {
            __dst[0] = 0;
            __dst[1] = 0;
            v63 = 0;
          }

          sub_29A008E78(v60, ",");
          sub_29A008E78(v58, "");
          pxrInternal__aapl__pxrReserved__::TfStringReplace(__dst, v60, v58, &v54);
          v21 = pxrInternal__aapl__pxrReserved__::TfStringToULong(&v54, 0, v20);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          if (SHIBYTE(v63) < 0)
          {
            operator delete(__dst[0]);
          }

          v22 = 0xAAAAAAAAAAAAAAABLL * ((v64[1].__locale_ - v64[0].__locale_) >> 3);
          v23 = (v64[0].__locale_ + 64);
          if (v22 <= 2)
          {
            v23 = &__p[3];
          }

          if (*v23 == 1)
          {
            v24 = v22 > 2;
            v25 = &__p[1];
            if (v24)
            {
              v25 = (v64[0].__locale_ + 48);
            }

            v26 = (v64[0].__locale_ + 56);
            if (!v24)
            {
              v26 = &__p[2];
            }

            sub_29A0D2BE0(__dst, *v25, *v26, *v26 - *v25);
          }

          else
          {
            __dst[0] = 0;
            __dst[1] = 0;
            v63 = 0;
          }

          sub_29A008E78(v60, ",");
          sub_29A008E78(v58, "");
          pxrInternal__aapl__pxrReserved__::TfStringReplace(__dst, v60, v58, &v54);
          v29 = pxrInternal__aapl__pxrReserved__::TfStringToULong(&v54, 0, v27);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          if (SHIBYTE(v63) < 0)
          {
            operator delete(__dst[0]);
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v64[1].__locale_ - v64[0].__locale_) >> 3);
          v31 = (v64[0].__locale_ + 88);
          if (v30 <= 3)
          {
            v31 = &__p[3];
          }

          if (*v31 == 1)
          {
            v32 = v30 > 3;
            v33 = &__p[1];
            if (v32)
            {
              v33 = (v64[0].__locale_ + 72);
            }

            v34 = (v64[0].__locale_ + 80);
            if (!v32)
            {
              v34 = &__p[2];
            }

            sub_29A0D2BE0(&v54, *v33, *v34, *v34 - *v33);
          }

          else
          {
            memset(&v54, 0, sizeof(v54));
          }

          v35 = pxrInternal__aapl__pxrReserved__::TfStringToULong(&v54, 0, v28);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v36 = 0xAAAAAAAAAAAAAAABLL * ((v64[1].__locale_ - v64[0].__locale_) >> 3);
          v37 = (v64[0].__locale_ + 112);
          if (v36 <= 4)
          {
            v37 = &__p[3];
          }

          if (*v37 == 1)
          {
            v38 = (v64[0].__locale_ + 96);
            if (v36 <= 4)
            {
              v38 = &__p[1];
            }

            v39 = *v38;
            v40 = (v64[0].__locale_ + 104);
            if (v36 <= 4)
            {
              v40 = &__p[2];
            }

            v41 = (*v40 - v39) / 2 + 1;
          }

          else
          {
            v41 = 1;
          }

          v42 = (v64[0].__locale_ + 136);
          if (v36 <= 5)
          {
            v42 = &__p[3];
          }

          if (*v42 == 1)
          {
            v43 = v36 > 5;
            v44 = &__p[1];
            if (v43)
            {
              v44 = (v64[0].__locale_ + 120);
            }

            v45 = (v64[0].__locale_ + 128);
            if (!v43)
            {
              v45 = &__p[2];
            }

            sub_29A0D2BE0(__dst, *v44, *v45, *v45 - *v44);
          }

          else
          {
            __dst[0] = 0;
            __dst[1] = 0;
            v63 = 0;
          }

          while (*(&v75 + 1) > v41)
          {
            --*(&v75 + 1);
            sub_29A10FFEC(v74, 1);
          }

          v46 = *(*(*(&v74[0] + 1) + (((*(&v75 + 1) + v75 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v75 + 1) + v75 - 1) & 0x1FF));
          v54.__r_.__value_.__r.__words[0] = v21;
          v54.__r_.__value_.__l.__size_ = v29;
          v54.__r_.__value_.__r.__words[2] = v35;
          if (SHIBYTE(v63) < 0)
          {
            sub_29A008D14(&v55, __dst[0], __dst[1]);
          }

          else
          {
            v55 = *__dst;
            v56 = v63;
          }

          memset(v57, 0, sizeof(v57));
          sub_29A104448(v46 + 48, &v54);
          v60[0] = v57;
          sub_29A108138(v60);
          if (SHIBYTE(v56) < 0)
          {
            operator delete(v55);
          }

          v54.__r_.__value_.__r.__words[0] = *(v46 + 56) - 72;
          sub_29A10FC24(v74, &v54);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        if (v64[0].__locale_)
        {
          v64[1] = v64[0];
          operator delete(v64[0].__locale_);
        }

        v5 = 1;
      }

      else
      {
        if (HIBYTE(__p[0]))
        {
          goto LABEL_11;
        }

LABEL_37:
        memset(__p, 0, sizeof(__p));
        *&v64[0].__locale_ = 0u;
        sub_29A10FE60(v74, v64);
        sub_29A10C468(v64);
        v64[0].__locale_ = (a1 + 24);
        sub_29A10FC24(v74, v64);
        v5 = 0;
      }
    }

    else
    {
      sub_29A10715C();
      v5 = 0;
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v73.__r_.__value_.__l.__size_;
      }

      v16 = byte_2A153F00F;
      if (byte_2A153F00F < 0)
      {
        v16 = qword_2A153F000;
      }

      if (size == v16)
      {
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v73;
        }

        else
        {
          v17 = v73.__r_.__value_.__r.__words[0];
        }

        if (byte_2A153F00F >= 0)
        {
          v18 = &qword_2A153EFF8;
        }

        else
        {
          v18 = qword_2A153EFF8;
        }

        v5 = memcmp(v17, v18, size) == 0;
      }
    }
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v48 = *(a1 + 72);
  v47 = *(a1 + 80);
  if (v47 - v48 == 72)
  {
    v49 = *v48;
    __p[0] = *(v48 + 2);
    *&v64[0].__locale_ = v49;
    if (*(v48 + 47) < 0)
    {
      sub_29A008D14(&__p[1], *(v48 + 3), *(v48 + 4));
    }

    else
    {
      v50 = *(v48 + 24);
      __p[3] = *(v48 + 5);
      *&__p[1] = v50;
    }

    v66 = 0uLL;
    v67 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>();
  }

  if (v48 != v47)
  {
    v51 = *v4;
    do
    {
      v52 = *v48;
      v48 = (v48 + 72);
      v51 += v52;
      *v4 = v51;
    }

    while (v48 != v47);
  }

  sub_29A10C468(v74);
  return 1;
}

void *sub_29A107FD8(void *result, _DWORD *a2)
{
  if (!a2)
  {
    sub_29B28D858();
  }

  *result = a2;
  if (*a2)
  {
    sub_29B28DC44(v2);
  }

  *a2 = 1;
  return result;
}

void sub_29A108030(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A108084(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A108084(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
    if (*(i - 36) != -1)
    {
      v5 = *(i - 24);
      if (v5)
      {
        *(i - 16) = v5;
        operator delete(v5);
      }

      *(i - 36) = -1;
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29A1080F0(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }

    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A108138(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A10C928(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A10818C(uint64_t a1)
{
  if (*(a1 + 8) != -1)
  {
    sub_29B28DC98(v3);
  }

  result = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_AcquireWrite(*a1);
  *(a1 + 8) = -2;
  return result;
}

uint64_t sub_29A1081D8(uint64_t a1)
{
  if (*(a1 + 8) != -1)
  {
    sub_29B28DCEC(v6);
  }

  result = *a1;
  v3 = ((0x779B97F4A7C55 * a1) >> 48) & 0xF;
  v4 = atomic_load((result + 8));
  if (v4)
  {
    goto LABEL_7;
  }

  v5 = (*result + (v3 << 7));
  if (atomic_fetch_add(v5, 2u))
  {
    atomic_fetch_add(v5, 0xFFFFFFFE);
LABEL_7:
    result = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_AcquireReadContended(result, (((0x779B97F4A7C55 * a1) >> 32) >> 16) & 0xF);
  }

  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_29A108268(uint64_t *a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v7 = (a1 + 72);
  v8 = tbb::internal::allocate_via_handler_v3(0x28);
  v11[1] = v7;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0u;
  *v8 = 0u;
  *(v8 + 16) = *a3;
  *(v8 + 24) = *a4;
  v11[0] = 0;
  sub_29A10861C(v11, v9);
  return sub_29A10831C(a1, 1, (v8 + 16), 0, 0, 0, sub_29A108614, v8);
}

uint64_t sub_29A10831C(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, void *, uint64_t), void *a8)
{
  v13 = 0;
  v14 = *a3 ^ (*a3 >> 3);
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A108904(&v31, a1, v15 & v14, 0);
    v16 = (v33 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && *a3 != v16[2]);
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v31;
            v31 = 0;
            if (v32 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v31);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29A10877C(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v31);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v31);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v32 & 1) == 0)
  {
    v32 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v31) & 1) == 0)
    {
      v16 = (v33 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (*a3 == v16[2])
        {
          if (v32 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v31, 3uLL);
          v32 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v33, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v31);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    tbb::internal::deallocate_via_handler_v3(v18, v26);
  }

  return v17;
}

void sub_29A1085F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A10861C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29A108650(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = atomic_fetch_add((a1 + 520), 1uLL) + 1;
  *a3 = *(a2 + 16);
  *(a2 + 16) = a3;
  if (v4 < a4)
  {
    return 0;
  }

  v5 = a4 + 1;
  if (a4 == -1)
  {
    v6 = -1;
  }

  else
  {
    v7 = HIDWORD(v5) != 0;
    if (HIDWORD(v5))
    {
      v5 >>= 32;
    }

    if (v5 >= 0x10000)
    {
      v8 = (32 * v7) | 0x10;
    }

    else
    {
      v8 = 32 * v7;
    }

    if (v5 >= 0x10000)
    {
      v5 >>= 16;
    }

    if (v5 >= 0x100)
    {
      v8 |= 8uLL;
      v5 >>= 8;
    }

    if (v5 >= 0x10)
    {
      v8 |= 4uLL;
      v5 >>= 4;
    }

    if (v5 >= 4)
    {
      v8 += 2;
      v5 >>= 2;
    }

    v6 = ((v5 >> 1) & 1) + v8;
  }

  if (*(a1 + 8 + 8 * v6))
  {
    return 0;
  }

  v9 = (a1 + 8 + 8 * v6);
  while (1)
  {
    v10 = 0;
    atomic_compare_exchange_strong(v9, &v10, 2uLL);
    if (!v10)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_29A10872C(uint64_t a1, atomic_ullong *this, int a3)
{
  *(a1 + 8) = a3;
  if (a3)
  {
    if (!tbb::spin_rw_mutex_v3::internal_try_acquire_writer(this))
    {
      return 0;
    }
  }

  else
  {
    result = tbb::spin_rw_mutex_v3::internal_try_acquire_reader(this);
    if (!result)
    {
      return result;
    }
  }

  *a1 = this;
  return 1;
}

void sub_29A10877C(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A108904(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29A108A30(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29A108A30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A108904(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((((v12[2] >> 3) ^ v12[2]) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3FuLL)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29A108BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A108BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((a4 ^ a3) & a2) == 0)
  {
    return 0;
  }

  v4 = a3 + 1;
  do
  {
    v5 = (v4 & a2) == 0;
    v4 *= 2;
  }

  while (v5);
  v6 = *(sub_29A1089E0(a1, (v4 - 1) & a2) + 16);
  __dmb(0xBu);
  return v6 != 3;
}

uint64_t sub_29A108C14(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A10831C(a1, 0, a3, 0, a2, 0, sub_29A108614, 0);
}

BOOL sub_29A108C94(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A108904(v13, a1, v6 & v5, 1);
    v7 = (v13[2] + 16);
    do
    {
      v8 = v7;
      v7 = *v7;
      if (v7)
      {
        v9 = v7 == v4;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
    if (v7)
    {
      break;
    }

    v10 = *a1;
    __dmb(0xBu);
    if (v6 == v10 || !sub_29A108BB8(a1, v5, v6, v10))
    {
      if (*(a2 + 16))
      {
        sub_29A0F8494(a2);
        *(a2 + 16) = 0;
      }

      sub_29A0F845C(v13);
      return v7 != 0;
    }

    sub_29A0F845C(v13);
    v6 = v10;
  }

  *v8 = *v4;
  atomic_fetch_add(a1 + 65, 0xFFFFFFFFFFFFFFFFLL);
  sub_29A0F845C(v13);
  if ((*(a2 + 8) & 1) == 0)
  {
    *(a2 + 8) = 1;
    tbb::spin_rw_mutex_v3::internal_upgrade(*a2);
  }

  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  tbb::internal::deallocate_via_handler_v3(v4, v11);
  return v7 != 0;
}

void sub_29A108DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29A108DE4(uint64_t a1)
{
  if (*(a1 + 8) != -2)
  {
    sub_29B28DD40(v3);
  }

  result = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::_ReleaseWrite(*a1);
  *(a1 + 8) = -1;
  return result;
}

uint64_t sub_29A108E30(uint64_t result)
{
  v3 = *(result + 8);
  if ((v3 & 0x80000000) != 0)
  {
    v4[6] = v1;
    v4[7] = v2;
    sub_29B28DD94(v4);
  }

  atomic_fetch_add((**result + (v3 << 7)), 0xFFFFFFFE);
  *(result + 8) = -1;
  return result;
}

void *sub_29A108E70(uint64_t *a1, char *a2)
{
  v14 = a2;
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (sub_29A109110(a1, 0, &v14, &__p, 0, 0))
  {
    v4 = *(v13 + 24);
    v13 = 0;
    sub_29A0F845C(&__p);
  }

  else
  {
    v13 = 0;
    sub_29A0F845C(&__p);
    v5 = operator new(0x18uLL);
    sub_29A008E78(&__p, a2);
    sub_29A109718(v5, &__p);
    v10 = v5;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    v6 = *v5;
    v7 = tbb::internal::allocate_via_handler_v3(0x20);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    if (sub_29A109110(a1, 1, (v7 + 16), &__p, 1, v7))
    {
      v4 = v10;
      v10 = 0;
    }

    else
    {
      v4 = *(v13 + 24);
    }

    v13 = 0;
    sub_29A0F845C(&__p);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      sub_29A109800(&v10, v8);
    }
  }

  return v4;
}

void sub_29A108FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A109010(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A109090(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 72;
  }

  return a1;
}

uint64_t sub_29A109110(uint64_t *a1, int a2, char **a3, uint64_t a4, int a5, void *a6)
{
  v11 = pxrInternal__aapl__pxrReserved__::TfHashCString::operator()(&v45, *a3);
  v12 = 0;
  v13 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A109504(&v45, a1, v13 & v11);
    v14 = v47 + 16;
    v15 = *a3;
    do
    {
      v14 = *v14;
    }

    while (v14 >= 0x40 && strcmp(v15, *(v14 + 16)));
    if (a2)
    {
      break;
    }

    if (v14)
    {
      v16 = 1;
LABEL_10:
      v17 = a6;
      if (!a4)
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    v24 = *a1;
    __dmb(0xBu);
    if (v13 == v24 || !sub_29A108BB8(a1, v11, v13, v24))
    {
      sub_29A0F845C(&v45);
      return 0;
    }

LABEL_29:
    sub_29A0F845C(&v45);
    v13 = v24;
  }

  if (v14)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_10;
  }

  if ((v46 & 1) == 0)
  {
    v46 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v45) & 1) == 0)
    {
      v14 = v47 + 16;
      v25 = *a3;
      while (1)
      {
        v14 = *v14;
        if (v14 < 0x40)
        {
          break;
        }

        if (!strcmp(v25, *(v14 + 16)))
        {
          if (v46 != 1)
          {
            goto LABEL_7;
          }

          v16 = 0;
          atomic_fetch_add(v45, 3uLL);
          v46 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v24 = *a1;
  __dmb(0xBu);
  if (v13 != v24)
  {
    if (!sub_29A108BB8(a1, v11, v13, v24))
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v24 = v13;
LABEL_31:
  v12 = sub_29A108650(a1, v47, a6, v24);
  v17 = 0;
  v16 = 1;
  v14 = a6;
  if (!a4)
  {
LABEL_55:
    sub_29A0F845C(&v45);
    if (!v12)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

LABEL_11:
  if ((sub_29A10872C(a4, (v14 + 8), a5) & 1) == 0)
  {
    sched_yield();
    v18 = 2;
    while ((sub_29A10872C(a4, (v14 + 8), a5) & 1) == 0)
    {
      sched_yield();
      v19 = v18 < 16;
      v18 *= 2;
      if (!v19)
      {
        v20 = v45;
        v45 = 0;
        if (v46 == 1)
        {
LABEL_16:
          v21 = *v20;
          v22 = *v20 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v23 = v21;
            atomic_compare_exchange_strong(v20, &v23, v22);
            if (v23 == v21)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v20, 0, memory_order_relaxed) != v21)
            {
              sched_yield();
              goto LABEL_16;
            }
          }
        }

        else
        {
          atomic_fetch_add(v20, 0xFFFFFFFFFFFFFFFCLL);
        }

        sched_yield();
        v24 = *a1;
        __dmb(0xBu);
        a6 = v17;
        goto LABEL_29;
      }
    }
  }

  sub_29A0F845C(&v45);
  *(a4 + 16) = v14;
  *(a4 + 24) = v11;
  if (v12)
  {
LABEL_39:
    if (v12 < 8)
    {
      v31 = tbb::internal::allocate_via_handler_v3(0x17D0);
      v32 = (v31 + 16);
      v33 = 254;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 3;
        v32 += 3;
        --v33;
      }

      while (v33);
      v34 = 0;
      v35 = v31 - 48;
      v36 = xmmword_29B43B8D0;
      v37 = a1 + 3;
      v38 = vdupq_n_s64(7uLL);
      v39 = vdupq_n_s64(1uLL);
      v40 = vdupq_n_s64(2uLL);
      v30 = 255;
      do
      {
        v41 = vorrq_s8(vdupq_n_s64(v34), xmmword_29B430070);
        v42 = vshlq_u64(v39, v36);
        if (vmovn_s64(vcgtq_u64(v38, v41)).u8[0])
        {
          *(v37 - 1) = v35 + 24 * v42.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v41)).i32[1])
        {
          *v37 = v35 + 24 * v42.i64[1];
        }

        v34 += 2;
        v36 = vaddq_s64(v36, v40);
        v37 += 2;
      }

      while (v34 != 8);
    }

    else
    {
      v27 = tbb::internal::allocate_via_handler_v3((24 << v12));
      v28 = 1 << v12;
      v29 = (v27 + 16);
      do
      {
        *(v29 - 1) = 0;
        *v29 = 3;
        v29 += 3;
        --v28;
      }

      while (v28);
      a1[v12 + 1] = v27;
      v30 = (2 << v12) - 1;
    }

    __dmb(0xBu);
    *a1 = v30;
  }

LABEL_52:
  if (v17)
  {
    tbb::internal::deallocate_via_handler_v3(v17, v26);
  }

  return v16;
}

uint64_t sub_29A109504(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v6;
  v7 = *(v6 + 16);
  __dmb(0xBu);
  if (v7 == 3 && (v8 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v8)))
  {
    *a1 = v8;
    v9 = *(a1 + 16);
    if (*(v9 + 16) == 3)
    {
      __dmb(0xBu);
      *(v9 + 16) = 0;
      if (a3)
      {
        v10 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          v10 = a3;
        }

        v11 = 32 * (HIDWORD(a3) != 0);
        if (v10 >= 0x10000)
        {
          v10 >>= 16;
          v11 = (32 * (HIDWORD(a3) != 0)) | 0x10;
        }

        if (v10 >= 0x100)
        {
          v10 >>= 8;
          v11 |= 8u;
        }

        if (v10 >= 0x10)
        {
          v10 >>= 4;
          v11 |= 4u;
        }

        v12 = v10 >= 4;
        if (v10 >= 4)
        {
          LODWORD(v10) = v10 >> 2;
        }

        v13 = (v10 >> 1) & 1;
        if (v12)
        {
          v11 += 2;
        }

        v14 = v13 + v11;
      }

      else
      {
        v14 = -1;
      }

      v17 = ~(-1 << v14);
      sub_29A109504(&v21, a2, v17 & a3);
      v18 = (v23 + 16);
      v19 = *(v23 + 16);
      __dmb(0xBu);
      if (v19 >= 0x40)
      {
        v20 = (2 * v17) | 1;
        while ((pxrInternal__aapl__pxrReserved__::TfHashCString::operator()(&v24, *(v19 + 16)) & v20) == a3)
        {
          if (v22 & 1) != 0 || (v22 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v21)))
          {
            *v18 = *v19;
            *v19 = *(v9 + 16);
            *(v9 + 16) = v19;
LABEL_29:
            v19 = *v18;
            if (*v18 <= 0x3F)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v18 = (v23 + 16);
            v19 = *(v23 + 16);
            __dmb(0xBu);
            if (v19 < 0x40)
            {
              goto LABEL_32;
            }
          }
        }

        v18 = v19;
        goto LABEL_29;
      }

LABEL_32:
      sub_29A0F845C(&v21);
    }
  }

  else
  {
    v15 = (*(a1 + 16) + 8);
    *(a1 + 8) = 0;
    *a1 = v15;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v15);
  }

  return a1;
}

uint64_t sub_29A109718(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = strlen(v4);
  v6 = operator new[](v5 + 1);
  bzero(v6, v5 + 1);
  *a1 = v6;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((qword_2A153F018 + 1792), v7);
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = pxrInternal__aapl__pxrReserved__::Tf_MallocTagStringMatchTable::Match((qword_2A153F018 + 1816), v9);
  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 16) = v11 | v10;
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  strcpy(*a1, v12);
  return a1;
}

void sub_29A1097E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A109800(int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    *__p = 0;
    if (v3)
    {
      operator delete[](v3);
    }

    operator delete(__p);
  }
}

double sub_29A10984C(pxrInternal__aapl__pxrReserved__::TfBigRWMutex *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfBigRWMutex::TfBigRWMutex(a1);
  *(v1 + 72) = 0;
  *(v1 + 75) = 0;
  result = 0.0;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 26) = 0u;
  *(v1 + 27) = 0u;
  *(v1 + 28) = 0u;
  *(v1 + 29) = 0u;
  *(v1 + 30) = 0u;
  *(v1 + 31) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 33) = 0u;
  *(v1 + 34) = 0u;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  __dmb(0xBu);
  *(v1 + 5) = 0;
  __dmb(0xBu);
  *(v1 + 70) = 0;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0u;
  *(v1 + 6) = v1 + 568;
  __dmb(0xBu);
  *(v1 + 5) = 1;
  *(v1 + 145) = 0;
  *(v1 + 148) = 0;
  *(v1 + 632) = 0u;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0u;
  *(v1 + 680) = 0u;
  *(v1 + 696) = 0u;
  *(v1 + 712) = 0u;
  *(v1 + 728) = 0u;
  *(v1 + 744) = 0u;
  *(v1 + 760) = 0u;
  *(v1 + 776) = 0u;
  *(v1 + 792) = 0u;
  *(v1 + 808) = 0u;
  *(v1 + 824) = 0u;
  *(v1 + 840) = 0u;
  *(v1 + 856) = 0u;
  *(v1 + 872) = 0u;
  *(v1 + 888) = 0u;
  *(v1 + 904) = 0u;
  *(v1 + 920) = 0u;
  *(v1 + 936) = 0u;
  *(v1 + 952) = 0u;
  *(v1 + 968) = 0u;
  *(v1 + 984) = 0u;
  *(v1 + 1000) = 0u;
  *(v1 + 1016) = 0u;
  *(v1 + 1032) = 0u;
  *(v1 + 1048) = 0u;
  *(v1 + 1064) = 0u;
  *(v1 + 1080) = 0u;
  *(v1 + 1096) = 0u;
  *(v1 + 1112) = 0u;
  *(v1 + 1128) = 0u;
  __dmb(0xBu);
  *(v1 + 78) = 0;
  __dmb(0xBu);
  *(v1 + 143) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 73) = 0u;
  *(v1 + 74) = 0u;
  *(v1 + 79) = v1 + 1152;
  __dmb(0xBu);
  *(v1 + 78) = 1;
  *(v1 + 218) = 0;
  *(v1 + 221) = 0;
  *(v1 + 76) = 0u;
  *(v1 + 77) = 0u;
  *(v1 + 78) = 0u;
  *(v1 + 79) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 81) = 0u;
  *(v1 + 82) = 0u;
  *(v1 + 83) = 0u;
  *(v1 + 84) = 0u;
  *(v1 + 85) = 0u;
  *(v1 + 86) = 0u;
  *(v1 + 87) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 90) = 0u;
  *(v1 + 91) = 0u;
  *(v1 + 92) = 0u;
  *(v1 + 93) = 0u;
  *(v1 + 94) = 0u;
  *(v1 + 95) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 97) = 0u;
  *(v1 + 98) = 0u;
  *(v1 + 99) = 0u;
  *(v1 + 100) = 0u;
  *(v1 + 101) = 0u;
  *(v1 + 102) = 0u;
  *(v1 + 103) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 105) = 0u;
  *(v1 + 106) = 0u;
  *(v1 + 107) = 0u;
  __dmb(0xBu);
  *(v1 + 151) = 0;
  __dmb(0xBu);
  *(v1 + 216) = 0;
  *(v1 + 1736) = 0u;
  *(v1 + 1752) = 0u;
  *(v1 + 1768) = 0u;
  *(v1 + 152) = v1 + 1736;
  __dmb(0xBu);
  *(v1 + 151) = 1;
  *(v1 + 297) = 0;
  *(v1 + 300) = 0;
  *(v1 + 1848) = 0u;
  *(v1 + 1864) = 0u;
  *(v1 + 1880) = 0u;
  *(v1 + 1896) = 0u;
  *(v1 + 1912) = 0u;
  *(v1 + 1928) = 0u;
  *(v1 + 1944) = 0u;
  *(v1 + 1960) = 0u;
  *(v1 + 1976) = 0u;
  *(v1 + 1992) = 0u;
  *(v1 + 2008) = 0u;
  *(v1 + 2024) = 0u;
  *(v1 + 2040) = 0u;
  *(v1 + 2056) = 0u;
  *(v1 + 2072) = 0u;
  *(v1 + 2088) = 0u;
  *(v1 + 2104) = 0u;
  *(v1 + 2120) = 0u;
  *(v1 + 2136) = 0u;
  *(v1 + 2152) = 0u;
  *(v1 + 2168) = 0u;
  *(v1 + 2184) = 0u;
  *(v1 + 2200) = 0u;
  *(v1 + 2216) = 0u;
  *(v1 + 2232) = 0u;
  *(v1 + 2248) = 0u;
  *(v1 + 2264) = 0u;
  *(v1 + 2280) = 0u;
  *(v1 + 2296) = 0u;
  *(v1 + 2312) = 0u;
  *(v1 + 2328) = 0u;
  *(v1 + 2344) = 0u;
  *(v1 + 114) = 0u;
  *(v1 + 113) = 0u;
  *(v1 + 112) = 0u;
  __dmb(0xBu);
  *(v1 + 230) = 0;
  __dmb(0xBu);
  *(v1 + 295) = 0;
  *(v1 + 148) = 0u;
  *(v1 + 149) = 0u;
  *(v1 + 150) = 0u;
  *(v1 + 231) = v1 + 2368;
  __dmb(0xBu);
  *(v1 + 230) = 1;
  return result;
}

uint64_t sub_29A109A90(uint64_t *a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v11 = 0;
  v12 = bswap64(0x9E3779B97F4A7C55 * (a3[1] + ((a3[1] + *a3 + (a3[1] + *a3) * (a3[1] + *a3)) >> 1)));
  v13 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A109E9C(&v45, a1, v13 & v12);
    v14 = (v47 + 16);
    do
    {
      v14 = *v14;
      if (v14 < 0x40)
      {
        break;
      }
    }

    while (*a3 != v14[2] || a3[1] != v14[3]);
    if (a2)
    {
      break;
    }

    if (v14)
    {
      v16 = 1;
LABEL_14:
      v17 = a6;
      if (!a4)
      {
        goto LABEL_63;
      }

      goto LABEL_15;
    }

    v24 = *a1;
    __dmb(0xBu);
    if (v13 == v24 || !sub_29A108BB8(a1, v12, v13, v24))
    {
      sub_29A0F845C(&v45);
      return 0;
    }

LABEL_33:
    sub_29A0F845C(&v45);
    v13 = v24;
  }

  if (v14)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_14;
  }

  if ((v46 & 1) == 0)
  {
    v46 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v45) & 1) == 0)
    {
      v14 = (v47 + 16);
      while (1)
      {
        v14 = *v14;
        if (v14 < 0x40)
        {
          break;
        }

        if (*a3 == v14[2] && a3[1] == v14[3])
        {
          if (v46 != 1)
          {
            goto LABEL_11;
          }

          v16 = 0;
          atomic_fetch_add(v45, 3uLL);
          v46 = 0;
          goto LABEL_14;
        }
      }
    }
  }

  v24 = *a1;
  __dmb(0xBu);
  if (v13 != v24)
  {
    if (!sub_29A108BB8(a1, v12, v13, v24))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v24 = v13;
LABEL_35:
  v11 = sub_29A108650(a1, v47, a6, v24);
  v17 = 0;
  v16 = 1;
  v14 = a6;
  if (!a4)
  {
LABEL_63:
    sub_29A0F845C(&v45);
    if (!v11)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_15:
  if ((sub_29A10872C(a4, v14 + 1, a5) & 1) == 0)
  {
    sched_yield();
    v18 = 2;
    while ((sub_29A10872C(a4, v14 + 1, a5) & 1) == 0)
    {
      sched_yield();
      v19 = v18 < 16;
      v18 *= 2;
      if (!v19)
      {
        v20 = v45;
        v45 = 0;
        if (v46 == 1)
        {
LABEL_20:
          v21 = *v20;
          v22 = *v20 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v23 = v21;
            atomic_compare_exchange_strong(v20, &v23, v22);
            if (v23 == v21)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v20, 0, memory_order_relaxed) != v21)
            {
              sched_yield();
              goto LABEL_20;
            }
          }
        }

        else
        {
          atomic_fetch_add(v20, 0xFFFFFFFFFFFFFFFCLL);
        }

        sched_yield();
        v24 = *a1;
        __dmb(0xBu);
        a6 = v17;
        goto LABEL_33;
      }
    }
  }

  sub_29A0F845C(&v45);
  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  if (v11)
  {
LABEL_47:
    if (v11 < 8)
    {
      v31 = tbb::internal::allocate_via_handler_v3(0x17D0);
      v32 = (v31 + 16);
      v33 = 254;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 3;
        v32 += 3;
        --v33;
      }

      while (v33);
      v34 = 0;
      v35 = v31 - 48;
      v36 = xmmword_29B43B8D0;
      v37 = a1 + 3;
      v38 = vdupq_n_s64(7uLL);
      v39 = vdupq_n_s64(1uLL);
      v40 = vdupq_n_s64(2uLL);
      v30 = 255;
      do
      {
        v41 = vorrq_s8(vdupq_n_s64(v34), xmmword_29B430070);
        v42 = vshlq_u64(v39, v36);
        if (vmovn_s64(vcgtq_u64(v38, v41)).u8[0])
        {
          *(v37 - 1) = v35 + 24 * v42.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v41)).i32[1])
        {
          *v37 = v35 + 24 * v42.i64[1];
        }

        v34 += 2;
        v36 = vaddq_s64(v36, v40);
        v37 += 2;
      }

      while (v34 != 8);
    }

    else
    {
      v27 = tbb::internal::allocate_via_handler_v3((24 << v11));
      v28 = 1 << v11;
      v29 = (v27 + 16);
      do
      {
        *(v29 - 1) = 0;
        *v29 = 3;
        v29 += 3;
        --v28;
      }

      while (v28);
      a1[v11 + 1] = v27;
      v30 = (2 << v11) - 1;
    }

    __dmb(0xBu);
    *a1 = v30;
  }

LABEL_60:
  if (v17)
  {
    tbb::internal::deallocate_via_handler_v3(v17, v26);
  }

  return v16;
}

uint64_t sub_29A109E9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v6;
  v7 = *(v6 + 16);
  __dmb(0xBu);
  if (v7 == 3 && (v8 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v8)))
  {
    *a1 = v8;
    v9 = *(a1 + 16);
    if (*(v9 + 16) == 3)
    {
      __dmb(0xBu);
      *(v9 + 16) = 0;
      if (a3)
      {
        v10 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          v10 = a3;
        }

        v11 = 32 * (HIDWORD(a3) != 0);
        if (v10 >= 0x10000)
        {
          v10 >>= 16;
          v11 = (32 * (HIDWORD(a3) != 0)) | 0x10;
        }

        if (v10 >= 0x100)
        {
          v10 >>= 8;
          v11 |= 8u;
        }

        if (v10 >= 0x10)
        {
          v10 >>= 4;
          v11 |= 4u;
        }

        v12 = v10 >= 4;
        if (v10 >= 4)
        {
          LODWORD(v10) = v10 >> 2;
        }

        v13 = (v10 >> 1) & 1;
        if (v12)
        {
          v11 += 2;
        }

        v14 = v13 + v11;
      }

      else
      {
        v14 = -1;
      }

      v17 = ~(-1 << v14);
      sub_29A109E9C(&v21, a2, v17 & a3);
      v18 = (v23 + 16);
      v19 = *(v23 + 16);
      __dmb(0xBu);
      if (v19 >= 0x40)
      {
        v20 = (2 * v17) | 1;
        while ((bswap64(0x9E3779B97F4A7C55 * (v19[3] + ((v19[3] + v19[2] + (v19[3] + v19[2]) * (v19[3] + v19[2])) >> 1))) & v20) == a3)
        {
          if (v22 & 1) != 0 || (v22 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v21)))
          {
            *v18 = *v19;
            *v19 = *(v9 + 16);
            *(v9 + 16) = v19;
LABEL_29:
            v19 = *v18;
            if (*v18 <= 0x3FuLL)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v18 = (v23 + 16);
            v19 = *(v23 + 16);
            __dmb(0xBu);
            if (v19 < 0x40)
            {
              goto LABEL_32;
            }
          }
        }

        v18 = v19;
        goto LABEL_29;
      }

LABEL_32:
      sub_29A0F845C(&v21);
    }
  }

  else
  {
    v15 = (*(a1 + 16) + 8);
    *(a1 + 8) = 0;
    *a1 = v15;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v15);
  }

  return a1;
}

void sub_29A10A0A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  sub_29A0F845C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10A0CC(uint64_t *a1, void *a2, void *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while (*(result + 8) != *a2)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A10A22C(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4] + 16 * v8;
      if (*(v12 + 4) == -1)
      {
        *(v12 + 8) = *a3;
        *v12 = v5;
        *(v12 + 4) = v10;
      }

      else
      {
        v13 = *a3;
        sub_29A10A890(a1, v8, v10, v5, &v13);
      }

      ++a1[6];
      return a1[4] + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A10A22C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A10A300(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A10A300(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A10A300(uint64_t a1, unint64_t a2)
{
  sub_29A10A558(&v15, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v5 = v16[4];
  v6 = v15;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v7 = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1));
    }

    else
    {
      v7 = *v3;
    }

    v8 = 0;
    for (i = v7; ; i = v10 + 1)
    {
      v10 = i & v6;
      v11 = v16[3] + 16 * v10;
      v12 = *(v11 + 4);
      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v13 = *(v3 + 1);
      if (v12 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v11 + 8);
      *(v11 + 8) = v13;
      *(v11 + 4) = v8;
      v14 = *v11;
      *v11 = v7;
      v8 = v12;
      LODWORD(v7) = v14;
LABEL_11:
      ++v8;
    }

    *(v11 + 8) = v13;
    *v11 = v7;
    *(v11 + 4) = v8;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v16[5] = *(a1 + 48);
  sub_29A10A4B4(&v15, a1);
  v17 = v16;
  sub_29A10A834(&v17);
}

uint64_t sub_29A10A428(void *a1)
{
  if ((*a1 - 0x4000000000000000) <= 0xBFFFFFFFFFFFFFFELL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_299FF7E84(exception, "The hash table exceeds its maximum size.");
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  return 2 * *a1 + 2;
}

float sub_29A10A4B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *a2 = v2;
  a2[1] = v3;
  v5 = a1[2];
  a1[2] = a2[2];
  a2[2] = v5;
  v6 = a1[3];
  a1[3] = a2[3];
  a2[3] = v6;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[5];
  a1[4] = a2[4];
  a1[5] = v9;
  a2[4] = v7;
  a2[5] = v8;
  v10 = a1[6];
  a1[6] = a2[6];
  a2[6] = v10;
  v11 = a1[7];
  a1[7] = a2[7];
  a2[7] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v12;
  result = *(a1 + 17);
  *(a1 + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  LOBYTE(v11) = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  LOBYTE(v11) = *(a1 + 73);
  *(a1 + 73) = *(a2 + 73);
  *(a2 + 73) = v11;
  return result;
}

uint64_t sub_29A10A558(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A10A7AC(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A10A774();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A10A690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10A834(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29A10A6B8(unint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 0x8000000000000001)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_299FF7E84(exception, "The hash table exceeds its maximum size.");
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v2)
  {
    v3 = v2 - 1;
    if ((v2 & (v2 - 1)) != 0)
    {
      v4 = 1;
      do
      {
        v3 |= v3 >> v4;
        v5 = v4 >= 0x20;
        v4 *= 2;
      }

      while (!v5);
      v2 = v3 + 1;
    }

    *a2 = v2;
    v6 = v2 - 1;
  }

  else
  {
    v6 = 0;
  }

  *result = v6;
  return result;
}

void *sub_29A10A774()
{
  if ((atomic_load_explicit(&qword_2A14F6250, memory_order_acquire) & 1) == 0)
  {
    sub_29B28DDE8();
  }

  return &unk_2A14F6240;
}

void *sub_29A10A7AC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 16;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A10A834(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i -= 16)
    {
      if (*(i - 6) != -1)
      {
        *(i - 6) = -1;
      }
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

uint64_t sub_29A10A878(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    *(result + 4) = -1;
  }

  return result;
}

uint64_t *sub_29A10A890(uint64_t *result, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = result[4] + 16 * a2;
  v6 = *a5;
  *a5 = *(v5 + 8);
  *(v5 + 8) = v6;
  v7 = *(v5 + 4);
  *(v5 + 4) = a3;
  v8 = *v5;
  *v5 = a4;
  v9 = *result;
  v10 = (a2 + 1) & *result;
  v11 = v7 + 1;
  v12 = result[4];
  v13 = (v12 + 16 * v10);
  v15 = v13 + 1;
  for (i = *(v13 + 2); i != 0xFFFF; i = *(v13 + 2))
  {
    if (v11 <= i)
    {
      i = v11;
    }

    else
    {
      if (v11 > 0x2000)
      {
        *(result + 72) = 1;
      }

      v16 = *a5;
      *a5 = *(v13 + 1);
      *(v13 + 1) = v16;
      *v15 = v11;
      v17 = *v13;
      *v13 = v8;
      v12 = result[4];
      v8 = v17;
    }

    v10 = (v10 + 1) & v9;
    v11 = i + 1;
    v13 = (v12 + 16 * v10);
    v15 = v13 + 1;
  }

  *(v13 + 1) = *a5;
  *v13 = v8;
  *(v13 + 2) = v11;
  return result;
}

uint64_t sub_29A10A960(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = *a1 & a3;
  v6 = v4 + 16 * v5;
  if (*(v6 + 4) < 0)
  {
LABEL_5:
    v9 = a1[5];
    v6 = v4 + 16 * v9;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = *a2;
    while (*(v6 + 8) != v8)
    {
      v7 = (v7 + 1);
      v5 = (v5 + 1) & *a1;
      v6 = v4 + 16 * v5;
      if (v7 > *(v6 + 4))
      {
        goto LABEL_5;
      }
    }

    v9 = a1[5];
  }

  if (v6 == v4 + 16 * v9)
  {
    return 0;
  }

  sub_29A10A9F0(a1, v6);
  return 1;
}

uint64_t *sub_29A10A9F0(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    *(a2 + 4) = -1;
  }

  --result[6];
  v2 = result[4];
  v3 = (a2 - v2) >> 4;
  v4 = *result;
  v5 = (v3 + 1) & *result;
  v6 = (v2 + 16 * v5);
  v7 = *(v6 + 2);
  if (v7 >= 1)
  {
    do
    {
      v8 = v2 + 16 * v3;
      v3 = v5;
      v9 = v7 - 1;
      v10 = *v6;
      *(v8 + 8) = *(v6 + 1);
      *v8 = v10;
      *(v8 + 4) = v9;
      v2 = result[4];
      v11 = v2 + 16 * v3;
      v13 = *(v11 + 4);
      v12 = (v11 + 4);
      if (v13 != -1)
      {
        *v12 = -1;
      }

      v5 = (v3 + 1) & v4;
      v6 = (v2 + 16 * v5);
      v7 = *(v6 + 2);
    }

    while (v7 > 0);
  }

  *(result + 73) = 1;
  return result;
}

void sub_29A10AA98(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%ld", a2, a3, a1);
  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v12 = p_p;
  v13 = &p_p[v7];
  while (v12 != v13)
  {
    v9 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v9 = v15;
    }

    if (v7 % 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >= v9;
    }

    if (!v10)
    {
      std::string::push_back(a4, 44);
    }

    v11 = sub_29A10ABC4(&v12, v5, v6);
    std::string::push_back(a4, *v11);
    --v7;
    sub_29A10AC44(&v12);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A10AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A10ABC4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::string>::operator*() [T = std::string, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A10AC44(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::string>::operator++() [T = std::string, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    ++*a1;
  }

  return a1;
}

void *sub_29A10ACC4(void *result)
{
  if (*result == result[1])
  {
    sub_29B28DE54();
  }

  return result;
}

void *sub_29A10ACFC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::CallSite>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

uint64_t sub_29A10AD7C(uint64_t result)
{
  if (*(result + 8) == *(result + 24))
  {
    sub_29B28DEA0();
  }

  return result;
}

uint64_t sub_29A10ADB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<unsigned long, const std::string *>, true>::operator++() [T = std::map<unsigned long, const std::string *>, Reverse = true]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = *v2;
    if (*v2)
    {
      do
      {
        v4 = v3;
        v3 = v3[1];
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (v5);
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t *sub_29A10AE64(uint64_t **a1, unint64_t *a2, uint64_t *a3)
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
    v10 = operator new(0x30uLL);
    v11 = a3[1];
    v10[4] = *a3;
    v10[5] = v11;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t sub_29A10AF20(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A10AFA0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 72;
  }

  return a1;
}

BOOL sub_29A10B020(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v2 = a2 + 24;
  v3 = v4;
  v5 = *(v2 + 23);
  v8 = *(a1 + 24);
  v6 = a1 + 24;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  if (v9 < 0)
  {
    v6 = v7;
  }

  if (v5 >= 0)
  {
    v11 = *(v2 + 23);
  }

  else
  {
    v11 = *(v2 + 8);
  }

  if (v5 < 0)
  {
    v2 = v3;
  }

  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v6, v2, v12);
  if (v13)
  {
    return v13 < 0;
  }

  else
  {
    return v10 < v11;
  }
}

uint64_t sub_29A10B094(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<const pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode *>>::operator*() [T = std::vector<const pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode *>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A10B114(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<const pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode *>>::operator++() [T = std::vector<const pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode *>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t sub_29A10B194(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_29A10B9D8(v9, a2, a3);
      }

      else
      {

        return sub_29A10BAA0(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_29A10C064(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_29A10BB3C(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = sub_29A10BC4C(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = sub_29A10BD68(v8, v49, a3);
    v9 = (v49 + 1);
    result = sub_29A10BD68(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = sub_29A10B194(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_29A10B884(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_29A10B884(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_29A10B884(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_29A10B9D8(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_29A10BAA0(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_29A10BB3C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_29A10BC4C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_29A10BD68(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_29A10B884(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_29A10B884(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_29A10C064(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29A10C1B0(a1, a4, v8, v11--);
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
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_29A10C1B0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_29A10C2D8(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_29A10C384(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A10C1B0(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *sub_29A10C2D8(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_29A10C384(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_29A10C428(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A10C928(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29A10C468(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_29A0D6E48(a1);
}

char *sub_29A10C514(void *a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    sub_29A00C9A4();
  }

  result = sub_29A09C03C(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[72 * v4];
  return result;
}

uint64_t sub_29A10C564(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v5 = *a2;
    *(a4 + 16) = *(a2 + 2);
    *a4 = v5;
    if (*(a2 + 47) < 0)
    {
      sub_29A008D14((a4 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v6 = *(a2 + 24);
      *(a4 + 40) = *(a2 + 5);
      *(a4 + 24) = v6;
    }

    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode*>();
  }

  v9 = 1;
  sub_29A10C68C(v8);
  return a4;
}

uint64_t sub_29A10C68C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10C6C4(a1);
  }

  return a1;
}

uint64_t sub_29A10C6C4(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode,0>();
  }

  return result;
}

void sub_29A10C718(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29A10C428(a1);
    if (a4 > 0x38E38E38E38E38ELL)
    {
      sub_29A00C9A4();
    }

    v8 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
    if (v8 <= a4)
    {
      v8 = a4;
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    sub_29A10C514(a1, v9);
    v10 = sub_29A10C564(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v11 = a1[1] - *a1;
  if (0x8E38E38E38E38E39 * (v11 >> 3) < a4)
  {
    sub_29A10C874(&v14, a2, a2 + v11);
    v10 = sub_29A10C564(a1, (a2 + v11), a3, a1[1]);
LABEL_11:
    a1[1] = v10;
    return;
  }

  sub_29A10C874(&v13, a2, a3);
  sub_29A10C928(a1, v12);
}

__int128 **sub_29A10C874(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 7;
  do
  {
    v7 = v6 - 7;
    v8 = *(v6 - 7);
    *(a4 + 16) = *(v6 - 5);
    *a4 = v8;
    std::string::operator=((a4 + 24), (v6 - 4));
    if (a4 != v6 - 7)
    {
      sub_29A10C718((a4 + 48), *(v6 - 1), *v6, 0x8E38E38E38E38E39 * ((*v6 - *(v6 - 1)) >> 3));
    }

    a4 += 72;
    v6 += 9;
  }

  while (v7 + 9 != v5);
  return v5;
}

void sub_29A10C928(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      v7 = v5;
      sub_29A108138(&v7);
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
      }

      v6 = v5 - 48;
      v5 -= 72;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_29A10C99C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A102A5C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A10C9F0(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[2 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[2 * v7];
  v10 = *a2;
  *(v9 + 2) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v9 + 12) = *(a2 + 12);
  *&v19 = v9 + 2;
  v11 = *(a1 + 8);
  v12 = v9 + *a1 - v11;
  sub_29A10CB48(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A10CC84(&v17);
  return v16;
}

void sub_29A10CAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A10CC84(va);
  _Unwind_Resume(a1);
}

void *sub_29A10CB10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    sub_29A00C8B8();
  }

  return operator new(32 * a2);
}

uint64_t sub_29A10CB48(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(a4 + 24) = *(v6 + 12);
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

  return sub_29A10CC04(v9);
}

uint64_t sub_29A10CC04(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void sub_29A10CC3C(uint64_t a1)
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

uint64_t sub_29A10CC84(uint64_t a1)
{
  sub_29A10CCBC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A10CCBC(uint64_t a1, void **a2)
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

uint64_t sub_29A10CD18(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29A10CDE4(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3F);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29A10CE20(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29A10CDE4(int a1, tbb::internal *this)
{
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29A10CE20(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

uint64_t sub_29A10CE74(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8) - 1;
  while (1)
  {
    v3 = v2;
    v4 = v2 + 2;
    v5 = **v1;
    __dmb(0xBu);
    if (v4 > v5)
    {
      break;
    }

    if ((v4 & v3) != 0)
    {
      result = v1[2] + 24;
    }

    else
    {
      result = sub_29A1089E0(*v1, v4);
    }

    v6 = *(result + 16);
    v1[2] = result;
    v1[3] = v6;
    v2 = v3 + 1;
    if (v6 > 0x3F)
    {
      goto LABEL_9;
    }
  }

  v1[2] = 0;
  v1[3] = 0;
LABEL_9:
  v1[1] = v3 + 2;
  return result;
}

uint64_t sub_29A10CEF8(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, void *, uint64_t), tbb::internal *a8)
{
  v13 = 0;
  v14 = *a3 ^ (*a3 >> 3);
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A10D3EC(&v30, a1, v15 & v14, 0);
    v16 = (v32 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && *a3 != *(v16 + 2));
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v30;
            v30 = 0;
            if (v31 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v30);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29A10D264(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v30);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v30);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v31 & 1) == 0)
  {
    v31 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v30) & 1) == 0)
    {
      v16 = (v32 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (*a3 == *(v16 + 2))
        {
          if (v31 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v30, 3uLL);
          v31 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v32, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v30);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    sub_29A10CDE4(a1, v18);
  }

  return v17;
}

void sub_29A10D1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10D1F0(uint64_t a1, void *a2)
{
  v4 = tbb::internal::allocate_via_handler_v3(0x40);
  v7[1] = a1;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 16) = *a2;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  v7[0] = 0;
  sub_29A10D650(v7, v5);
  return v4;
}

void sub_29A10D264(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A10D3EC(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29A10D4C8(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29A10D4C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A10D3EC(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((((v12[2] >> 3) ^ v12[2]) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3FuLL)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29A10D63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A10D650(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29A10D684(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2 + 528;
  v5 = *(a2 + 544);
  v9 = a2;
  v10 = 0;
  v11 = a2 + 528;
  v12 = v5;
  if (v5 <= 0x3F)
  {
    sub_29A10CE74(&v9);
    v7 = v9;
    v6 = v10;
    v4 = v11;
    v5 = v12;
  }

  else
  {
    v6 = 0;
    v7 = a2;
  }

  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_29A10D704(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[2];
      if (v3)
      {
        v2[3] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29A10D758(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v122 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v76 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v76;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->u64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v85 = *v83;
            v84 = v83[1];
            v83 = v79;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v83;
              v87 = v82;
              while (1)
              {
                *(&v10->i64[1] + v87) = *(v10->i64 + v87);
                if (!v87)
                {
                  break;
                }

                result = (*a3)(v86, *(&v10->i64[-1] + v87));
                v87 -= 8;
                if ((result & 1) == 0)
                {
                  v88 = (&v10->i64[1] + v87);
                  goto LABEL_127;
                }
              }

              v88 = v10;
LABEL_127:
              *v88 = v86;
            }

            v79 = (v83 + 1);
            v82 += 8;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v117 = v9->i64[0];
          v116 = v9->i64[1];
          v9 = v79;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v9->i64[0];
            v119 = v9;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v79 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = (v11 - 2) >> 1;
        v123 = v89;
        do
        {
          v90 = v89;
          if (v123 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v9->i64[v91];
            if (2 * v89 + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v9->i64[v90];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v94 = *v93;
              do
              {
                v95 = v92;
                *v93 = *v92;
                if (v123 < v91)
                {
                  break;
                }

                v96 = (2 * v91) | 1;
                v92 = &v9->i64[v96];
                v97 = 2 * v91 + 2;
                if (v97 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v96 = v97;
                }

                result = (*a3)(*v92, v94);
                v93 = v95;
                v91 = v96;
              }

              while (!result);
              *v95 = v94;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v98 = v122;
        do
        {
          v99 = v98;
          v100 = 0;
          v124 = v9->i64[0];
          v101 = v9;
          do
          {
            v102 = &v101[v100];
            v103 = v102 + 1;
            v104 = (2 * v100) | 1;
            v105 = 2 * v100 + 2;
            if (v105 >= v11)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v107 = v102[2];
              v106 = v102 + 2;
              result = (*a3)(*(v106 - 1), v107);
              if (result)
              {
                v103 = v106;
                v100 = v105;
              }

              else
              {
                v100 = v104;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v100 <= ((v11 - 2) >> 1));
          v98 = v99 - 1;
          if (v103 == v99 - 1)
          {
            *v103 = v124;
          }

          else
          {
            *v103 = *v98;
            *v98 = v124;
            v108 = (v103 - v9 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &v9->i64[v110 >> 1];
              result = (*a3)(*v112, *v103);
              if (result)
              {
                v113 = *v103;
                do
                {
                  v114 = v112;
                  *v103 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v9->i64[v111];
                  result = (*a3)(*v112, v113);
                  v103 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = (*a3)();
      v43 = v9->i64[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v45;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v46 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v46)
      {
        v45 = v9->i64[v33];
        v9->i64[v12] = v45;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v45;
      }
    }

LABEL_54:
    v47 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v47;
LABEL_55:
    --a4;
    v48 = v9->i64[0];
    if (a5 & 1) != 0 || (v49 = (*a3)(v9[-1].i64[1], v9->i64[0]), v48 = v9->i64[0], (v49))
    {
      v50 = 0;
      do
      {
        v51 = (*a3)(v9->i64[++v50], v48);
      }

      while ((v51 & 1) != 0);
      v52 = (v9 + v50 * 8);
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (((*a3)(v55, v48) & 1) == 0);
      }

      else
      {
        do
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (!(*a3)(v54, v48));
      }

      if (v52 >= v53)
      {
        v61 = (v52 - 8);
      }

      else
      {
        v56 = &v9->i64[v50];
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v59 = v56[1];
            ++v56;
          }

          while (((*a3)(v59, v48) & 1) != 0);
          do
          {
            v60 = *--v57;
          }

          while (!(*a3)(v60, v48));
        }

        while (v56 < v57);
        v61 = (v56 - 1);
        a2 = v122;
      }

      if (v61 != v9)
      {
        v9->i64[0] = v61->i64[0];
      }

      v61->i64[0] = v48;
      if (v52 < v53)
      {
        goto LABEL_78;
      }

      v62 = sub_29A10BD68(v9, v61, a3);
      v10 = &v61->u64[1];
      result = sub_29A10BD68(&v61->i64[1], a2, a3);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_78:
        result = sub_29A10D758(v9, v61, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v61->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v48, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v9->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = (*a3)(v48, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v48, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v48;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return sub_29A10B884(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      sub_29A10B884(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}