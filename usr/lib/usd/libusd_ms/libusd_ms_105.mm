void sub_29AA85BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AA85C54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA85C04(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    sub_29A36CF34(v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  }

  return a1;
}

uint64_t sub_29AA85C54(uint64_t a1)
{
  sub_29AA806E8(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29AA806E8(*a1, v2);
  }

  return a1;
}

const void **sub_29AA85CAC(uint64_t **a1, __int128 *a2)
{
  sub_29AA85D1C(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29AA85D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AA7E1E4(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29AA85D1C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29AA85D88(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AA85D88(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29A0BE2C8(__dst + 3, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  return __dst;
}

void sub_29AA85DF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AA85E10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1F9298(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC94A0];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AA85EA4, v4);
  }
}

_BYTE *sub_29AA85EA4@<X0>(void *a1@<X8>)
{
  result = operator new(1uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94A0];
  a1[1] = sub_29AA85EEC;
  a1[2] = v3;
  return result;
}

void sub_29AA85EEC(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

_WORD *sub_29AA85EF8@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29AA85F44;
  a1[2] = &stru_2A2070800;
  return result;
}

void sub_29AA85F44(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29AA85F50(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("22aaplUsdGclCodecVersion" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2070810);
}

void **sub_29AA85FD4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AA85F50(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AA86068, &stru_2A2070810);
  }
}

_DWORD *sub_29AA86068@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29AA860B0;
  a1[2] = &stru_2A2070810;
  return result;
}

void sub_29AA860B0(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29AA860BC@<X0>(const pxrInternal__aapl__pxrReserved__::VtDictionary *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x10uLL);
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v4, a1);
  atomic_store(0, v4 + 2);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

unsigned int *sub_29AA86124@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  result = operator new(0x20uLL);
  v5 = result;
  if (*(a1 + 23) < 0)
  {
    result = sub_29A008D14(result, *a1, *(a1 + 8));
  }

  else
  {
    *result = *a1;
    *(result + 2) = *(a1 + 16);
  }

  atomic_store(0, v5 + 6);
  *a2 = v5;
  atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  return result;
}

_DWORD *sub_29AA86300@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2070820 + 1;
  *a2 = *result;
  return result;
}

uint64_t sub_29AA8631C(int a1)
{
  sub_29A008864(v29);
  v2 = MEMORY[0x29EDC9528];
  v14 = a1;
  if (a1)
  {
    v3 = 0;
    v12 = *(MEMORY[0x29EDC9528] + 64);
    v13 = *MEMORY[0x29EDC9528];
    v11 = *(MEMORY[0x29EDC9528] + 72);
    while (1)
    {
      sub_29AA867C0(&v28);
      v4 = MEMORY[0x29C2C1F80](&v28);
      v26[0] = v4;
      for (i = 1; i != 624; ++i)
      {
        v4 = i + 1812433253 * (v4 ^ (v4 >> 30));
        v26[i] = v4;
      }

      v27 = 0;
      v25 = 0xFF00000000;
      v6 = sub_29AA86C40(&v25, v26, &v25);
      sub_29A008864(v19);
      *(&v22[-1].__locale_ + *(v20 - 24)) = *(&v22[-1].__locale_ + *(v20 - 24)) & 0xFFFFFFB5 | 8;
      MEMORY[0x29C2C1ED0](&v20, v6);
      std::stringbuf::str();
      if (v18 < 0)
      {
        break;
      }

      if (HIBYTE(v18) <= 1u)
      {
        goto LABEL_9;
      }

      *__p = *__src;
      v16 = v18;
LABEL_11:
      if (v16 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v16 >= 0)
      {
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = __p[1];
      }

      sub_29A00911C(&v30, v7, v8);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__src[0]);
      }

      v19[0] = v13;
      *(v19 + *(v13 - 24)) = v12;
      v20 = v11;
      v21 = MEMORY[0x29EDC9570] + 16;
      if (v23 < 0)
      {
        operator delete(v22[7].__locale_);
      }

      v21 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v22);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v24);
      std::random_device::~random_device(&v28);
      if (++v3 == v14)
      {
        goto LABEL_24;
      }
    }

    if (__src[1] >= 2)
    {
      sub_29A008D14(__p, __src[0], __src[1]);
      goto LABEL_11;
    }

LABEL_9:
    sub_29A974FC8(48, __src, __p);
    goto LABEL_11;
  }

LABEL_24:
  std::stringbuf::str();
  v29[0] = *v2;
  v9 = v2[9];
  *(v29 + *(v29[0] - 24)) = v2[8];
  v30 = v9;
  v31 = MEMORY[0x29EDC9570] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v34);
}

std::random_device *sub_29AA867C0(std::random_device *a1)
{
  sub_29A008E78(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AA86818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA86834(pxrInternal__aapl__pxrReserved__ *a1@<X0>, std::__fs::filesystem::path *a2@<X8>)
{
  TmpDir = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(a1);
  if (TmpDir)
  {
    sub_29AA3662C(&v7, &TmpDir);
    sub_29A65B7E0(&v5, "AAPLMeshCodec");
    sub_29AA33A10(&v5, &v7, &v6);
    sub_29AA8631C(16);
    __p = v3;
    sub_29AA33A10(&__p, &v6, a2);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a2->__pn_.__r_.__value_.__r.__words[0] = 0;
    a2->__pn_.__r_.__value_.__l.__size_ = 0;
    a2->__pn_.__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_29AA8692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AA869A0(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) >= 2u)
    {
      __p = *a1;
      goto LABEL_7;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1 < 2)
  {
    return 0;
  }

  sub_29A008D14(&__p, *a1, v1);
LABEL_7:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (*(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1) != 47)
    {
      goto LABEL_15;
    }

    v3 = --__p.__r_.__value_.__l.__size_;
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23) || __p.__r_.__value_.__s.__data_[SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1] != 47)
    {
      goto LABEL_15;
    }

    v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    p_p = &__p;
  }

  p_p->__r_.__value_.__s.__data_[v3] = 0;
LABEL_15:
  sub_29A8CCEB8(&v7.__pn_, &__p);
  std::__fs::filesystem::__status(&v7, 0);
  v5 = v9;
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  if (v5 && v5 != 255)
  {
    sub_29A8CCEB8(&v7.__pn_, &__p);
    std::__fs::filesystem::__status(&v7, 0);
    v2 = v9 == 2;
  }

  else
  {
    sub_29A8CCEB8(&v7.__pn_, &__p);
    v2 = std::__fs::filesystem::__create_directories(&v7, 0);
  }

  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_29AA86B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA86B60(const std::__fs::filesystem::path *a1@<X0>, std::__fs::filesystem::path *a2@<X8>)
{
  std::__fs::filesystem::__current_path(&v6, 0);
  std::__fs::filesystem::__absolute(&__p, a1, 0);
  std::__fs::filesystem::__weakly_canonical(&v5, &__p, 0);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  sub_29AA33A84(&v5, &v6, a2);
  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_29AA86BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA86C40(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_29AA86CFC(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_29AA86CFC(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_29AA86CFC(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_29AA86D9C(uint64_t a1)
{
  __p[25] = *MEMORY[0x29EDCA608];
  v2 = sub_29A2F6760((a1 + 16));
  Name = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetName(v2);
  std::string::operator=((a1 + 24), Name);
  v4 = sub_29A2F6760((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v4, __p);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(__p);
  std::string::operator=((a1 + 48), String);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
  sub_29A1DE3A4(__p);
  v6 = sub_29A2F6760((a1 + 16));
  TypeName = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetTypeName(v6, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(TypeName);
  }

  std::string::operator=((a1 + 72), EmptyString);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = sub_29A2F6760((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasVariantSetNames(v9);
}

void sub_29AA87B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  sub_29A1F1B88(&a59);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_29A6575E8(v59 - 184);
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  _Unwind_Resume(a1);
}

void *sub_29AA87EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A5CFB80(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 3);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_29AA87F78(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A293A9C(a1) & 1) == 0)
  {
    return *pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A346AB4, MEMORY[0x29EDC94D0]);
  }

  return sub_29AA8A9A4(a1);
}

void sub_29AA87FE4(uint64_t *a1@<X8>)
{
  v9[3] = *MEMORY[0x29EDCA608];
  sub_29A008E78(v3, "inputs:file");
  sub_29A008E78(v4, "inputs:ambientOcclusionTexture");
  sub_29A008E78(v5, "inputs:baseColorTexture");
  sub_29A008E78(v6, "inputs:metallicTexture");
  sub_29A008E78(v7, "inputs:normalTexture");
  sub_29A008E78(v8, "inputs:roughnessTexture");
  sub_29A008E78(v9, "inputs:emissiveTexture");
  sub_29AA8B2C4(a1, v3, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v9[i + 2]) < 0)
    {
      operator delete(v9[i]);
    }
  }
}

void sub_29AA88110(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 167);
  v4 = -168;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void **sub_29AA88174@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_29A1936C8(a1) & 1) == 0)
  {
    return sub_29B2BCFF0(a1, a2);
  }

  return sub_29AA8A9FC(a1, a2);
}

void sub_29AA881D0(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[6];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = this[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(this);
}

void sub_29AA882A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA882C0(uint64_t a1, void *a2)
{
  sub_29A014C58(&v8, a2);
  sub_29A88B8F8((a1 + 88), &v8, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  for (i = a2[34]; i != a2 + 33; i = i[1])
  {
    sub_29AA882C0(a1, i[2]);
  }

  v5 = a2 + 36;
  for (j = a2[37]; j != v5; j = j[1])
  {
    sub_29AA882C0(a1, j[2]);
  }

  return 1;
}

void sub_29AA88364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8837C(uint64_t a1)
{
  v31[9] = *MEMORY[0x29EDCA608];
  v1 = (a1 + 8);
  if (*(a1 + 8))
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = operator new(0x20uLL);
    *v3 = &unk_2A2070938;
    v3[1] = sub_29AA885D8;
    v3[2] = 0;
    v3[3] = &v22;
    v29 = v3;
    v30 = &unk_2A2063730;
    sub_29A88756C(v31, v28);
    sub_29A88773C(v28);
    v12[0] = &v30;
    memset(&v12[1], 0, 32);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v18 = 1;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 1065353216;
    v15 = 1065353216;
    v16 = 1;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdUtils_LocalizationContext::Process(v12, v1);
    sub_29A8870E4(&v22);
    v4 = v23;
    v5 = *(a1 + 112);
    v6 = *(a1 + 128);
    *(a1 + 112) = v22;
    *(a1 + 128) = v4;
    v22 = v5;
    v23 = v6;
    v7 = v25;
    v8 = *(a1 + 144);
    v9 = *(a1 + 160);
    *(a1 + 144) = v24;
    *(a1 + 160) = v7;
    v24 = v8;
    v25 = v9;
    v10 = *(a1 + 176);
    *(a1 + 176) = v26;
    v26 = v10;
    sub_29A0EB4E8(v19 + 1);
    sub_29A0EB4E8(&v13[1] + 8);
    v27 = v13;
    sub_29A012C90(&v27);
    v27 = &v12[2];
    sub_29A012C90(&v27);
    sub_29A321930();
  }

  return 1;
}

void sub_29AA8859C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  sub_29A88773C(v29 - 200);
  sub_29A8872B8(&a29);
  _Unwind_Resume(a1);
}

double sub_29AA885D8@<D0>(void *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, _OWORD *a4@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v7 == v8)
  {
    sub_29A8874B4(a1, a2, a3);
  }

  else
  {
    do
    {
      sub_29A8874B4(a1, v7, a3);
      v7 += 24;
    }

    while (v7 != v8);
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_29AA88658(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v3 = sub_29A3302A8((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(v3, __dst);
    sub_29A46D468(__dst, v17);
    if (__dst[1])
    {
      sub_29A014BEC(__dst[1]);
    }

    v4 = v17[0];
    v5 = v17[1];
    while (v4 != v5)
    {
      if (*(v4 + 23) < 0)
      {
        sub_29A008D14(__dst, *v4, *(v4 + 1));
      }

      else
      {
        v6 = *v4;
        v14 = *(v4 + 2);
        *__dst = v6;
      }

      if (SHIBYTE(v14) < 0)
      {
        sub_29A008D14(&v15, __dst[0], __dst[1]);
      }

      else
      {
        v15 = *__dst;
        v16 = v14;
      }

      sub_29AA88E5C(&v15, __p);
      sub_29A091654(&v18, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(__dst[0]);
      }

      v4 = (v4 + 24);
    }

    if (v18 != v19)
    {
      v7 = sub_29A3302A8(v1);
      pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerPaths(v7, &v18);
    }

    v8 = *(a1 + 88);
    if (v8 != a1 + 96)
    {
      v9 = sub_29A2F6760((*(v8 + 32) + 16));
      pxrInternal__aapl__pxrReserved__::SdfPrimSpec::HasReferences(v9);
    }

    __dst[0] = v17;
    sub_29A012C90(__dst);
    __dst[0] = &v18;
    sub_29A012C90(__dst);
  }

  return 1;
}

void sub_29AA88C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37)
  {
    sub_29A014BEC(a37);
  }

  __p = (v52 - 104);
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void sub_29AA88E5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    goto LABEL_4;
  }

  sub_29A008D14(a2, *a1, *(a1 + 8));
  v4 = *(a1 + 23);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    return;
  }

LABEL_5:
  sub_29A8CCEB8(&v14.__pn_, a1);
  sub_29AA81918(&v14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __dst = __p;
  }

  v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = (&__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v6 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (p_dst != v6)
  {
    do
    {
      p_dst->__r_.__value_.__s.__data_[0] = __tolower(p_dst->__r_.__value_.__s.__data_[0]);
      p_dst = (p_dst + 1);
    }

    while (p_dst != v6);
    v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    v9 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ != 3)
    {
      if (__dst.__r_.__value_.__l.__size_ == 4)
      {
        if (*__dst.__r_.__value_.__l.__data_ != 1633973109 && *__dst.__r_.__value_.__l.__data_ != 1685288238)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (__dst.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_60;
        }

        if (*__dst.__r_.__value_.__l.__data_ != 1685288238 || *(__dst.__r_.__value_.__r.__words[0] + 4) != 97)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        if (LODWORD(__dst.__r_.__value_.__l.__data_) != 1633973109 && LODWORD(__dst.__r_.__value_.__l.__data_) != 1685288238)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v5 != 5)
        {
          goto LABEL_61;
        }

        if (LODWORD(__dst.__r_.__value_.__l.__data_) != 1685288238 || __dst.__r_.__value_.__s.__data_[4] != 97)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_51;
    }

    v9 = &__dst;
  }

  if (LOWORD(v9->__r_.__value_.__l.__data_) != 29557 || v9->__r_.__value_.__s.__data_[2] != 100)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

LABEL_51:
  sub_29A65B7E0(&__p, "usdc");
  std::__fs::filesystem::path::replace_extension(&v14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__p, v14.__pn_.__r_.__value_.__l.__data_, v14.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14.__pn_;
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __p;
  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_61;
  }

LABEL_59:
  v9 = __dst.__r_.__value_.__r.__words[0];
LABEL_60:
  operator delete(v9);
LABEL_61:
  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_29AA89100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *sub_29AA89180(uint64_t *a1, void *a2, __int128 *a3)
{
  result = sub_29A348564(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v16);
    v7 = a1[1];
    v13 = *a1;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v8 = a1[1];
    v13 = *a1;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 1;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v9 = a1[1];
    v13 = *a1;
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 4;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v10 = a1[1];
    v13 = *a1;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 5;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v11 = a1[1];
    v13 = *a1;
    v14 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 2;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v12 = a1[1];
    v13 = *a1;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 3;
    sub_29AA8ADBC(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    return sub_29A1DD644(v16);
  }

  return result;
}

void sub_29AA89334(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *sub_29AA89368(uint64_t *a1, double *a2, uint64_t a3)
{
  result = sub_29A348BCC(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v16);
    v7 = a1[1];
    v13 = *a1;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v8 = a1[1];
    v13 = *a1;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 1;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v9 = a1[1];
    v13 = *a1;
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 4;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v10 = a1[1];
    v13 = *a1;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 5;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v11 = a1[1];
    v13 = *a1;
    v14 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 2;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v12 = a1[1];
    v13 = *a1;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 3;
    sub_29AA8AED4(&v13, a2, a3);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    return sub_29A1DD644(v16);
  }

  return result;
}

void sub_29AA8951C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

std::string *sub_29AA89550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29AA8AFE4(a2, 0, *(a1 + 112), *(a1 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 3));
  sub_29AA8AFE4(a2, *(a2 + 8), *(a1 + 160), *(a1 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - *(a1 + 160)) >> 3));
  return sub_29AA8AFE4(a2, *(a2 + 8), *(a1 + 136), *(a1 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 3));
}

void sub_29AA895F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA8969C(uint64_t a1)
{
  *a1 = 0;
  sub_29A008E78((a1 + 8), "");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken((a1 + 32), "");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v2)
  {
    v2 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  *(a1 + 40) = *(v2 + 2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v4 = *(v3 + 17);
  *(a1 + 48) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath((a1 + 72));
  return a1;
}

void sub_29AA89774(_Unwind_Exception *a1)
{
  v4 = *(v1 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v1);
  _Unwind_Resume(a1);
}

void sub_29AA897E0(atomic_uint **a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x150uLL);
  sub_29AA8986C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 3, (v6 + 3));
}

void *sub_29AA8986C(void *a1, atomic_uint **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20708E8;
  sub_29AA89954(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_29AA89904(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20708E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AA89954(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4)
{
  v4 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  *v5 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_29AA899DC(a2, &v6, v5);
  if (v5[1])
  {
    std::__shared_weak_count::__release_weak(v5[1]);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v6);
}

void sub_29AA899BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA899DC(uint64_t result, atomic_uint **a2, void *a3)
{
  *result = 0;
  *(result + 8) = 0;
  v3 = *a2;
  *(result + 16) = *a2;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  *(result + 232) = 0;
  *(result + 88) = 0;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 104) = result + 104;
  *(result + 112) = result + 104;
  *(result + 120) = 0;
  *(result + 128) = result + 128;
  *(result + 136) = result + 128;
  *(result + 144) = 0;
  *(result + 152) = result + 152;
  *(result + 160) = result + 152;
  *(result + 168) = 0;
  *(result + 176) = result + 176;
  *(result + 184) = result + 176;
  *(result + 192) = 0;
  *(result + 200) = result + 200;
  *(result + 208) = result + 200;
  *(result + 240) = 0;
  *(result + 216) = 0;
  *(result + 224) = result + 232;
  v4 = a3[1];
  *(result + 248) = *a3;
  *(result + 256) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 264) = result + 264;
  *(result + 272) = result + 264;
  *(result + 280) = 0;
  *(result + 288) = result + 288;
  *(result + 296) = result + 288;
  *(result + 304) = 0;
  return result;
}

uint64_t sub_29AA89A74(uint64_t a1)
{
  sub_29AA89B64((a1 + 16));
  sub_29AA89BB0((a1 + 264));
  sub_29AA89C28(a1 + 224, *(a1 + 232));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = a1 + 232;
  sub_29AA89BB0((a1 + 288));
  sub_29AA89BB0((a1 + 264));
  v2 = *(a1 + 256);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_29AA89C28(a1 + 224, *(a1 + 232));
  sub_29A116F64((a1 + 200));
  sub_29A116F64((a1 + 176));
  sub_29A116F64((a1 + 152));
  sub_29A116F64((a1 + 128));
  sub_29A116F64((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_29AA89B64(atomic_uint **a1)
{
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(a1, &v1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v1);
}

void sub_29AA89B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29AA89BB0(uint64_t *a1)
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
          sub_29A014BEC(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29AA89C28(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AA89C28(a1, *a2);
    sub_29AA89C28(a1, a2[1]);
    sub_29AA89C84((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AA89C84(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 56);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

void sub_29AA89D34(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_29A00AFCC(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_29A1149A4(v10, a2, a3);
      }

      else
      {

        sub_29A114AC8(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_29A115368(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_29A00AFCC(a3, &v10[3 * v15], v10);
      v18 = sub_29A00AFCC(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_29A00AFCC(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_29A00AFCC(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_29A00AFCC(a3, v29, (a1 + 24));
      v31 = sub_29A00AFCC(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_29A00AFCC(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_29A00AFCC(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_29A00AFCC(a3, (v41 + 24), (a1 + 48));
      v43 = sub_29A00AFCC(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_29A00AFCC(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_29A00AFCC(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_29A00AFCC(a3, v16, v29);
      v52 = sub_29A00AFCC(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_29A00AFCC(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_29A00AFCC(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_29A00AFCC(a3, v10, &v10[3 * v15]);
    v21 = sub_29A00AFCC(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_29A00AFCC(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_29A00AFCC(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_29A00AFCC(a3, (a1 - 24), a1))
    {
      v10 = sub_29A114BC8(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_29A114D5C(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_29A114EEC(a1, v54, a3);
    v10 = (v54 + 24);
    if (sub_29A114EEC(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_29AA89D34(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_29A1147C4(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_29A1147C4(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!sub_29A00AFCC(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_29A00AFCC(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_29A00AFCC(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_29A00AFCC(a3, v10 + 3, v10);
  v58 = sub_29A00AFCC(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (sub_29A00AFCC(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_29A00AFCC(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

uint64_t sub_29AA8A840(uint64_t result)
{
  if (*(result + 16) != *(result + 32))
  {
    sub_29A65777C();
  }

  return result;
}

void sub_29AA8A8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA8A8D0(_DWORD *a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    return 0;
  }

  v5 = sub_29A2F6EC4(this);
  return pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v5) == *a1;
}

BOOL sub_29AA8A920(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v7 = v2;
  v8 = v3;
  v5[0] = "sdf/listProxy.h";
  v5[1] = "equal";
  v5[2] = 255;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_Iterator<pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_GetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy, Owner = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_GetHelper]";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Comparing SdfListProxy iterators from different proxies!");
  return 0;
}

uint64_t sub_29AA8A9A4(uint64_t a1)
{
  v2 = sub_29A3F9330(a1);
  v3 = *v2;
  *v2 = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return v3;
}

uint64_t sub_29AA8A9FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_29A193B90(a1);
  v5 = *(result + 32);
  *(result + 32) = 0;
  *(a2 + 32) = v5;
  v6 = *(result + 16);
  v7 = *result;
  v8 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  v9 = *(result + 24);
  *(result + 24) = 0;
  *(a2 + 24) = v9;
  v10 = a1[1];
  if (v10 && (a1[1] & 3) != 3)
  {
    result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

uint64_t *sub_29AA8AAB0(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AA8AB48(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29AA8AB48@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29AA8ABC8(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29AA8ABC8(char *__dst, __int128 **a2)
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

  *(__dst + 24) = 0u;
  *(__dst + 17) = 0;
  *(__dst + 104) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  sub_29AA8969C((__dst + 24));
  return __dst;
}

void sub_29AA8AC38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA8AC54(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA89C84(v2 + 32);
    }

    operator delete(v2);
  }
}

__n128 sub_29AA8ACB8(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2070938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29AA8AD0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2070938;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29AA8AD44(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  return v5(v6, a2, a3, *a4);
}

uint64_t sub_29AA8AD70(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20709A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AA8ADBC(unsigned int *a1, void *a2, __int128 *a3)
{
  v5 = sub_29A5CF8A0(a1, a2);
  if (v5 == -1)
  {
    if (*a1)
    {
      v7 = (*(**a1 + 112))(*a1, a1[4]);
      v8 = 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 3);
    }

    else
    {
      v8 = 0;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A5CF9DC(a1, v8, 0, v9);
    v10 = v9;
  }

  else
  {
    v6 = v5;
    sub_29A5CFC04(v9, 1uLL, a3);
    sub_29A5CF9DC(a1, v6, 1, v9);
    v10 = v9;
  }

  sub_29A2463D0(&v10);
}

void sub_29AA8AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

void sub_29AA8AED4(unsigned int *a1, double *a2, uint64_t a3)
{
  v5 = sub_29A5B1C00(a1, a2);
  if (v5 == -1)
  {
    if (*a1)
    {
      v7 = (*(**a1 + 112))(*a1, a1[4]);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 4);
    }

    else
    {
      v8 = 0;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A5B1D34(a1, v8, 0, v9);
    v10 = v9;
  }

  else
  {
    v6 = v5;
    sub_29A4C7C24(v9, 1uLL, a3);
    sub_29A5B1D34(a1, v6, 1, v9);
    v10 = v9;
  }

  sub_29A24A5D0(&v10);
}

void sub_29AA8AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

std::string *sub_29AA8AFE4(char **a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v21 = a5;
        sub_29A095A18(a1, a2, a1[1], a2 + 24 * a5);
        v22 = &v7[v21];
        v23 = v5;
        do
        {
          std::string::operator=(v23++, v7++);
        }

        while (v7 != v22);
      }

      else
      {
        v19 = (a3 + v18);
        a1[1] = sub_29A09601C(a1, (a3 + v18), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A095A18(a1, v5, v10, &v5[a5]);
          v20 = v5;
          do
          {
            std::string::operator=(v20++, v7++);
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v35 = a1;
      if (v15)
      {
        v17 = sub_29A012C48(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v32 = v17;
      v33 = &v17[24 * v16];
      *&v34 = v33;
      *(&v34 + 1) = &v17[24 * v15];
      sub_29AA8B230(&v32, v7, a5);
      v24 = v33;
      memcpy(v34, v5, a1[1] - v5);
      v25 = *a1;
      v26 = v33;
      *&v34 = v34 + a1[1] - v5;
      a1[1] = v5;
      v27 = v5 - v25;
      v28 = &v26[-(v5 - v25)];
      memcpy(v28, v25, v27);
      v29 = *a1;
      *a1 = v28;
      v30 = a1[2];
      *(a1 + 1) = v34;
      *&v34 = v29;
      *(&v34 + 1) = v30;
      v32 = v29;
      v33 = v29;
      sub_29A01FF14(&v32);
      return v24;
    }
  }

  return v5;
}

void *sub_29AA8B230(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_29A008D14(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t *sub_29AA8B2C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      v6 = sub_29A1179F4(a1, 0, 0, a2);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      a2 += 24;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_29AA8B358(_BYTE *a1)
{
  if (a1[392] & 1) != 0 || (a1[393] & 1) != 0 || (sub_29AA84E9C((a1 + 472), "Inserts"))
  {
    sub_29AA8B3F8(a1);
    sub_29AA8B568(a1);
    return 0;
  }

  else
  {
    v3 = sub_29AABB028();
    sub_29A008E78(__p, "Invalid compression type parameter");
    sub_29AA5B750(v3, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }
}

uint64_t sub_29AA8B3F8(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  MEMORY[0x29C2C1A60](v9, "gcl");
  v11 = 10;
  v5 = "pmesh";
  if (SHIBYTE(v10) < 0)
  {
    sub_29A008D14(&__p, v9[0], v9[1]);
    v2 = v11;
  }

  else
  {
    __p = *v9;
    v7 = v10;
    v2 = 10;
  }

  v8 = v2;
  sub_29AA9E650((a1 + 56), &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2C1A60](v9, "pmc");
  v11 = 10;
  v5 = "pmc";
  if (SHIBYTE(v10) < 0)
  {
    sub_29A008D14(&__p, v9[0], v9[1]);
    v3 = v11;
  }

  else
  {
    __p = *v9;
    v7 = v10;
    v3 = 10;
  }

  v8 = v3;
  sub_29AA9E650((a1 + 56), &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return 1;
}

void sub_29AA8B528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8B568(uint64_t a1)
{
  v2 = sub_29AA8B5A8(a1);
  if (!v2)
  {
    sub_29AA8C028(a1);
    sub_29AA8C654(a1);
  }

  return v2;
}

uint64_t sub_29AA8B5A8(uint64_t a1)
{
  v2 = sub_29AA84B3C((a1 + 472), "UseTemporaryDirectory");
  if (v2)
  {
    v3 = sub_29AA84BB4((a1 + 472), "UseTemporaryDirectory");
    sub_29AA9E394((a1 + 312), v3);
LABEL_7:
    if (sub_29AA84D7C((a1 + 472), "DumpBitstreamData"))
    {
      v5 = *sub_29AA84DF4((a1 + 472), "DumpBitstreamData");
      *(a1 + 404) = v5;
      if (v5 == 1)
      {
        *(a1 + 394) = 1;
      }
    }

    if (sub_29AA84D7C((a1 + 472), "CloneStage"))
    {
      *(a1 + 410) = *sub_29AA84DF4((a1 + 472), "CloneStage");
    }

    if (sub_29AA84E9C((a1 + 472), "Inserts"))
    {
      v6 = sub_29AA84F14((a1 + 472), "Inserts");
      pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&__p, v6);
      if (sub_29AA84E9C(&__p, "MeshesInserts"))
      {
        v7 = sub_29AA84F14(&__p, "MeshesInserts");
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 480), v7);
        if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a1 + 480)))
        {
          *(a1 + 405) = 1;
        }
      }

      if (sub_29AA84E9C(&__p, "TexturesInserts"))
      {
        v8 = sub_29AA84F14(&__p, "TexturesInserts");
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 488), v8);
        if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a1 + 488)))
        {
          *(a1 + 406) = 1;
        }
      }

      sub_29A184A10(&__p, 0);
    }

    if ((*(a1 + 405) & 1) != 0 || *(a1 + 406) == 1)
    {
      *(a1 + 407) = 1;
      *(a1 + 410) = 0;
      *(a1 + 96) = 2;
      *(a1 + 760) = 0;
    }

    else if (*(a1 + 96) != 2)
    {
      goto LABEL_33;
    }

    if (!*(a1 + 464))
    {
      v9 = sub_29AABB028();
      sub_29A008E78(&__p, "Invalid input stage");
      sub_29AA5B750(v9, &__p);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      return 84;
    }

LABEL_33:
    if (sub_29AA84D7C((a1 + 472), "RestrictIOTypes"))
    {
      *(a1 + 412) = *sub_29AA84DF4((a1 + 472), "RestrictIOTypes");
    }

    *(a1 + 536) = *(a1 + 464);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
  }

  sub_29AA86834(v2, &__p);
  v4 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&__p.__pn_.__r_.__value_.__l.__data_;
  *(a1 + 328) = *(&__p.__pn_.__r_.__value_.__l + 2);
  if ((*(a1 + 335) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 320))
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 335))
  {
    goto LABEL_7;
  }

  v11 = sub_29AABB028();
  sub_29A008E78(&__p, "Unable to create temporary folder");
  sub_29AA5B750(v11, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  return 407;
}

void sub_29AA8BA64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AA8BA7C(uint64_t a1)
{
  if (*(a1 + 760) == 1)
  {
    *(a1 + 568) = 0;
  }

  v1 = *(a1 + 464);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

uint64_t sub_29AA8BDE8(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29AA9E3FC((v3 + 56));
}

void **sub_29AA8BE60(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v6 = v5;
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6 == v9 && (!v6 || v4 == v7))
  {
    v11[0] = "vt/dictionary.h";
    v11[1] = "VtDictionaryGet";
    v11[2] = 458;
    v11[3] = "const T &pxrInternal__aapl__pxrReserved__::VtDictionaryGet(const VtDictionary &, const char *) [T = pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::GclCodecUSDFormatTypes]";
    v12 = 0;
    v13 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v11, "Attempted to get value for key '%s', which is not in the dictionary.", v8, a2);
  }

  return sub_29AA9E480((v4 + 56));
}

uint64_t sub_29AA8BF08(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29A1F9040((v3 + 56));
}

void **sub_29AA8BF80(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v6 = v5;
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6 == v9 && (!v6 || v4 == v7))
  {
    v11[0] = "vt/dictionary.h";
    v11[1] = "VtDictionaryGet";
    v11[2] = 458;
    v11[3] = "const T &pxrInternal__aapl__pxrReserved__::VtDictionaryGet(const VtDictionary &, const char *) [T = unsigned char]";
    v12 = 0;
    v13 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v11, "Attempted to get value for key '%s', which is not in the dictionary.", v8, a2);
  }

  return sub_29AA9E568((v4 + 56));
}

uint64_t sub_29AA8C028(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 == 3)
  {
    if ((*(a1 + 410) & 1) == 0)
    {
      v4 = sub_29A5A70E0((a1 + 536));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v4, &__dst);
      if (__dst.__pn_.__r_.__value_.__l.__size_)
      {
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
      }

      v11.__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
    }

    v5 = sub_29A3302A8((a1 + 768));
    ResolvedPath = pxrInternal__aapl__pxrReserved__::SdfLayer::GetResolvedPath(v5);
    if (*(ResolvedPath + 23) < 0)
    {
      sub_29A008D14(&__dst, *ResolvedPath, *(ResolvedPath + 8));
    }

    else
    {
      v7 = *ResolvedPath;
      __dst.__pn_.__r_.__value_.__r.__words[2] = *(ResolvedPath + 16);
      *&__dst.__pn_.__r_.__value_.__l.__data_ = v7;
    }

    size = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    v9 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__pn_.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_29A8CCEB8(&v11, &__dst.__pn_);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      *(a1 + 120) = v11;
      v9 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    }

    if (v9 < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v2 == 2)
    {
      v3 = sub_29A5A70E0((a1 + 536));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v3, &v11);
      sub_29A1DA6E4(&v11);
    }

    std::__fs::filesystem::__status((a1 + 120), 0);
    if (__dst.__pn_.__r_.__value_.__s.__data_[0] && __dst.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      std::__fs::filesystem::__canonical(&__dst, (a1 + 120), 0);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      *(a1 + 120) = __dst;
    }
  }

  return 0;
}

void sub_29AA8C2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8C390(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_3;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_3;
  }

  MEMORY[0x29C2C1A60](a2, "root.usdc");
LABEL_3:
  sub_29A8CCEB8(&v15, a2);
  v4 = (a1 + 824);
  if (*(a1 + 847) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v15.__r_.__value_.__l.__data_;
  *(a1 + 840) = *(&v15.__r_.__value_.__l + 2);
  sub_29A8CCEB8(&v15, a2);
  v5 = (a1 + 800);
  if (*(a1 + 823) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *&v15.__r_.__value_.__l.__data_;
  *(a1 + 816) = *(&v15.__r_.__value_.__l + 2);
  sub_29AA33B6C((a1 + 800), &v15);
  if (*(a1 + 823) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *&v15.__r_.__value_.__l.__data_;
  *(a1 + 816) = *(&v15.__r_.__value_.__l + 2);
  sub_29A8CCEB8(&__p, a2);
  sub_29AA33A84(&__p, (a1 + 800), &v15);
  v6 = (a1 + 776);
  if (*(a1 + 799) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&v15.__r_.__value_.__l.__data_;
  *(a1 + 792) = *(&v15.__r_.__value_.__l + 2);
  *(&v15.__r_.__value_.__s + 23) = 0;
  v15.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 847) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 824), *(a1 + 832));
  }

  else
  {
    *&__dst.__pn_.__r_.__value_.__l.__data_ = *v4;
    __dst.__pn_.__r_.__value_.__r.__words[2] = *(a1 + 840);
  }

  sub_29AA81918(&__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = sub_29A008D14(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = __p;
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v8 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = (&v15 + HIBYTE(v15.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v9 = (v15.__r_.__value_.__r.__words[0] + v15.__r_.__value_.__l.__size_);
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v15.__r_.__value_.__r.__words[0];
  }

  if (v10 != v9)
  {
    do
    {
      v7 = __tolower(v10->__r_.__value_.__s.__data_[0]);
      v10->__r_.__value_.__s.__data_[0] = v7;
      v10 = (v10 + 1);
    }

    while (v10 != v9);
    v8 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  if (v8 < 0)
  {
    v7 = sub_29A008D14(&v12, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v15;
  }

  *(a1 + 896) = sub_29AA8CBF0(v7, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_29AA8C5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8C654(uint64_t a1)
{
  std::__fs::filesystem::__weakly_canonical(&__dst, (a1 + 144), 0);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  *(a1 + 144) = __dst;
  if (*(a1 + 143) < 0)
  {
    sub_29A008D14(&__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    __p = *(a1 + 120);
  }

  sub_29AA81918(&__p, &pn);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __dst.__pn_ = pn;
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = (&__dst + HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v2 = (__dst.__pn_.__r_.__value_.__r.__words[0] + __dst.__pn_.__r_.__value_.__l.__size_);
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  while (p_dst != v2)
  {
    p_dst->__pn_.__r_.__value_.__s.__data_[0] = __tolower(p_dst->__pn_.__r_.__value_.__s.__data_[0]);
    p_dst = (p_dst + 1);
  }

  v4 = std::string::find(&__dst.__pn_, 63, 0);
  if (v4 != -1)
  {
    LODWORD(v4) = std::string::basic_string(&pn, &__dst.__pn_, 0, v4, &__p);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    __dst.__pn_ = pn;
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    LODWORD(v4) = sub_29A008D14(&v16, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __dst;
  }

  *(a1 + 100) = sub_29AA8CBF0(v4, &v16);
  if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 167) < 0)
  {
    sub_29A008D14(&v15, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v15 = *(a1 + 144);
  }

  sub_29AA81918(&v15, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = sub_29A008D14(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    pn = __p.__pn_;
  }

  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = (&pn + HIBYTE(pn.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v6 = (pn.__r_.__value_.__r.__words[0] + pn.__r_.__value_.__l.__size_);
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_pn = &pn;
  }

  else
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  while (p_pn != v6)
  {
    v5 = __tolower(p_pn->__r_.__value_.__s.__data_[0]);
    p_pn->__r_.__value_.__s.__data_[0] = v5;
    p_pn = (p_pn + 1);
  }

  if (*(a1 + 403) == 1)
  {
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = sub_29A008D14(&v14, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = pn;
    }

    *(a1 + 104) = sub_29AA8CBF0(v5, &v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 104) = 6;
    if (*(a1 + 413) == 1)
    {
      v8 = 5;
    }

    else
    {
      if (*(a1 + 413))
      {
        goto LABEL_57;
      }

      v8 = 4;
    }

    *(a1 + 104) = v8;
  }

LABEL_57:
  if (*(a1 + 143) < 0)
  {
    sub_29A008D14(&v15, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    v15 = *(a1 + 120);
  }

  sub_29AA33B6C(&v15, &__p);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 216) = __p;
  *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
  __p.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 760) == 1)
  {
    std::string::operator=((a1 + 216), (a1 + 800));
  }

  if (*(a1 + 167) < 0)
  {
    sub_29A008D14(&v15, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v15 = *(a1 + 144);
  }

  sub_29AA33B6C(&v15, &__p);
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  *(a1 + 240) = __p;
  *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
  __p.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 100) == 2 || *(a1 + 104) == 2)
  {
    std::string::operator=((a1 + 264), (a1 + 312));
    std::string::operator=((a1 + 192), (a1 + 264));
    *(a1 + 399) = 1;
    if ((*(a1 + 394) & 1) == 0)
    {
      if (*(a1 + 335) < 0)
      {
        sub_29A008D14(v12, *(a1 + 312), *(a1 + 320));
      }

      else
      {
        *v12 = *(a1 + 312);
        v13 = *(a1 + 328);
      }

      sub_29AA869A0(v12);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    std::string::operator=((a1 + 264), (a1 + 240));
    std::string::operator=((a1 + 192), (a1 + 216));
    std::__fs::filesystem::__status((a1 + 264), 0);
    if (__p.__pn_.__r_.__value_.__s.__data_[0])
    {
      v9 = __p.__pn_.__r_.__value_.__s.__data_[0] == 255;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    *(a1 + 399) = v10;
  }

  std::string::operator=((a1 + 288), (a1 + 144));
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29AA8CB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8CBF0(int a1, void *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 5 && **a2 == 1685288238 && *(*a2 + 4) == 122)
    {
      return 2;
    }

    if (a2[1] == 4 && **a2 == 2053403509)
    {
      return 2;
    }

    if (a2[1] == 5 && **a2 == 1685288238 && *(*a2 + 4) == 97)
    {
      return 0;
    }

    if (a2[1] == 4 && **a2 == 1633973109)
    {
      return 0;
    }

    if (a2[1] == 5 && **a2 == 1685288238 && *(*a2 + 4) == 99)
    {
      return 1;
    }

    if (a2[1] != 4)
    {
      goto LABEL_42;
    }

    v10 = *a2;
LABEL_41:
    if (*v10 == 1667527541)
    {
      return 1;
    }

    goto LABEL_42;
  }

  v3 = *(a2 + 23);
  if (v3 == 4)
  {
    if (*a2 == 2053403509)
    {
      return 2;
    }

    v10 = a2;
    if (*a2 == 1633973109)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v3 == 5)
  {
    if (*a2 != 1685288238 || *(a2 + 4) != 122)
    {
      if (*a2 != 1685288238 || *(a2 + 4) != 97)
      {
        if (*a2 != 1685288238 || *(a2 + 4) != 99)
        {
          goto LABEL_42;
        }

        return 1;
      }

      return 0;
    }

    return 2;
  }

LABEL_42:
  v11 = 3;
  if (!sub_29A0F2648(a2, ".usd"))
  {
    if (sub_29A0F2648(a2, "usd"))
    {
      return 3;
    }

    else
    {
      return 9;
    }
  }

  return v11;
}

uint64_t sub_29AA8CDFC(uint64_t a1, std::string *a2)
{
  sub_29A8CCEB8(&__replacement.__pn_, a2);
  v3 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *&__replacement.__pn_.__r_.__value_.__l.__data_;
  *(a1 + 456) = *(&__replacement.__pn_.__r_.__value_.__l + 2);
  if (*(a1 + 463) < 0)
  {
    sub_29A008D14(&__p, *(a1 + 440), *(a1 + 448));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v3;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 456);
  }

  sub_29AA36000(&__p, &__replacement);
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  *(a1 + 416) = __replacement;
  *(&__replacement.__pn_.__r_.__value_.__s + 23) = 0;
  __replacement.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 396))
  {
    sub_29AA81918((a1 + 416), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__replacement, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __replacement.__pn_ = __p;
    }

    v4 = SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__replacement.__pn_.__r_.__value_.__l.__size_ != 5)
      {
        goto LABEL_27;
      }

      p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_27;
      }

      p_replacement = &__replacement;
    }

    data = p_replacement->__pn_.__r_.__value_.__l.__data_;
    v7 = p_replacement->__pn_.__r_.__value_.__s.__data_[4];
    if (data == 1685288238 && v7 == 99)
    {
      v9 = 1;
LABEL_28:
      *(a1 + 108) = v9;
      if (v4 < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      goto LABEL_30;
    }

LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

  sub_29A65B7E0(&__replacement.__pn_, ".usdc");
  std::__fs::filesystem::path::replace_extension((a1 + 416), &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  *(a1 + 108) = 1;
LABEL_30:
  sub_29AA33A10((a1 + 416), a1 + 264, &__replacement);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  *(a1 + 336) = __replacement;
  std::string::append((a1 + 336), ".aaplmeshcodec");
  std::string::operator=((a1 + 360), (a1 + 416));
  std::string::append((a1 + 360), ".aaplmeshcodec");
  if ((*(a1 + 403) & 1) == 0)
  {
    std::string::operator=((a1 + 144), (a1 + 416));
  }

  v10 = *(a1 + 104);
  if (v10 == 2)
  {
    sub_29AA33A10((a1 + 416), a1 + 264, &__replacement);
    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    result = 0;
    *(a1 + 288) = __replacement;
    return result;
  }

  if ((*(a1 + 396) & 1) == 0)
  {
    if (!v10)
    {
      v12 = 1;
      goto LABEL_44;
    }

    if (v10 == 4)
    {
      v12 = 5;
LABEL_44:
      *(a1 + 104) = v12;
    }
  }

  std::string::operator=((a1 + 336), (a1 + 144));
  std::string::append((a1 + 336), ".aaplmeshcodec");
  if (*(a1 + 403) != 1 || (*(a1 + 398) & 1) != 0)
  {
    return 0;
  }

  std::__fs::filesystem::__status((a1 + 336), 0);
  result = 0;
  if (__replacement.__pn_.__r_.__value_.__s.__data_[0] && __replacement.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    v13 = sub_29AABB028();
    if (*(a1 + 359) < 0)
    {
      sub_29A008D14(&__p, *(a1 + 336), *(a1 + 344));
    }

    else
    {
      __p = *(a1 + 336);
    }

    v14 = std::string::insert(&__p, 0, "The output folder already exists: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    __replacement.__pn_.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__replacement.__pn_.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_29AA69D84(v13, &__replacement);
    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 7;
  }

  return result;
}

void sub_29AA8D16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA8D1A4(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 56), a2);
  v5 = v4;
  if (*(v4 + 63) < 0)
  {
    sub_29A008D14(__p, v4[5], v4[6]);
  }

  else
  {
    *__p = *(v4 + 5);
    v11 = v4[7];
  }

  v12 = *(v5 + 64);
  sub_29A008E78(&v9, ".");
  if (SHIBYTE(v11) >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (SHIBYTE(v11) >= 0)
  {
    v7 = HIBYTE(v11);
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v9, v6, v7);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA8D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AA8D2A8(uint64_t a1, _BYTE *a2)
{
  if ((a2[23] & 0x8000000000000000) != 0)
  {
    if (*(a2 + 1))
    {
      goto LABEL_3;
    }
  }

  else if (a2[23])
  {
LABEL_3:
    v3 = (a1 + 72);
    while (1)
    {
      v3 = *v3;
      v4 = v3 != 0;
      if (!v3)
      {
        return v4;
      }

      v5 = *(v3 + 63);
      if (v5 >= 0)
      {
        v6 = *(v3 + 63);
      }

      else
      {
        v6 = v3[6];
      }

      v7 = a2[23];
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a2 + 1);
      }

      if (v6 == v7)
      {
        v9 = v5 >= 0 ? (v3 + 5) : v3[5];
        v10 = v8 >= 0 ? a2 : *a2;
        if (!memcmp(v9, v10, v6))
        {
          return v4;
        }
      }

      std::operator+<char>();
      v11 = v20;
      if ((v20 & 0x80u) == 0)
      {
        v12 = v20;
      }

      else
      {
        v12 = __p[1];
      }

      v13 = a2[23];
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a2 + 1);
      }

      if (v12 == v13)
      {
        if ((v20 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if (v14 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        v17 = memcmp(v15, v16, v12) == 0;
        if (v11 < 0)
        {
          goto LABEL_35;
        }

LABEL_33:
        if (v17)
        {
          return v4;
        }
      }

      else
      {
        v17 = 0;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_35:
        operator delete(__p[0]);
        if (v17)
        {
          return v4;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_29AA8D404(uint64_t a1, __int128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = (a1 + 824);
    do
    {
      if (*(v3 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v3, *(v3 + 1));
      }

      else
      {
        v7 = *v3;
        __dst.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v7;
      }

      if (*(a1 + 100) == 2 || *(a1 + 896) == 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(&v25);
        v8 = *(a1 + 760);
        if (!v8)
        {
          if (*(a1 + 143) < 0)
          {
            sub_29A008D14(&__p, *(a1 + 120), *(a1 + 128));
          }

          else
          {
            __p = *(a1 + 120);
          }

          pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(&__p, &pn);
          v9 = *&pn.__r_.__value_.__l.__data_;
          if (pn.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((pn.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          size = v25.__pn_.__r_.__value_.__l.__size_;
          *&v25.__pn_.__r_.__value_.__l.__data_ = v9;
          if (size)
          {
            sub_29A014BEC(size);
          }

          pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&pn);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v8 = *(a1 + 760);
        }

        if (v8 == 1)
        {
          std::__fs::filesystem::__status(v6, 0);
          if (__p.__r_.__value_.__s.__data_[0] == 255 || !__p.__r_.__value_.__s.__data_[0])
          {
            v11 = sub_29AABB028();
            if (*(a1 + 847) < 0)
            {
              sub_29A008D14(&pn, *(a1 + 824), *(a1 + 832));
            }

            else
            {
              pn = v6->__pn_;
            }

            v13 = std::string::insert(&pn, 0, "File not found: ");
            v14 = *&v13->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v14;
            v13->__r_.__value_.__l.__size_ = 0;
            v13->__r_.__value_.__r.__words[2] = 0;
            v13->__r_.__value_.__r.__words[0] = 0;
            sub_29AA69D84(v11, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(pn.__r_.__value_.__l.__data_);
            }

            v2 = 50;
            goto LABEL_64;
          }

          if (*(a1 + 847) < 0)
          {
            sub_29A008D14(&__p, *(a1 + 824), *(a1 + 832));
          }

          else
          {
            __p = v6->__pn_;
          }

          pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(&__p, &pn);
          v17 = *&pn.__r_.__value_.__l.__data_;
          if (pn.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((pn.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v18 = v25.__pn_.__r_.__value_.__l.__size_;
          *&v25.__pn_.__r_.__value_.__l.__data_ = v17;
          if (v18)
          {
            sub_29A014BEC(v18);
          }

          pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&pn);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(&v25, &__p);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&pn);
        v19 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&__p, &pn);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&pn.__r_.__value_.__l.__data_);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&__p.__r_.__value_.__l.__data_);
        if (v19)
        {
          v2 = 500;
LABEL_64:
          pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v25);
          v20 = 0;
          goto LABEL_70;
        }

        pxrInternal__aapl__pxrReserved__::UsdZipFile::Find(&v25, &__dst, &__p);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&pn);
        v21 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&__p, &pn);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&pn.__r_.__value_.__l.__data_);
        pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&__p.__r_.__value_.__l.__data_);
        if (v21)
        {
          v22 = sub_29AABB028();
          std::operator+<char>();
          sub_29AA69D84(v22, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v25);
      }

      else
      {
        sub_29A8CCEB8(&__p, &__dst);
        if (*(a1 + 215) < 0)
        {
          sub_29A008D14(&pn, *(a1 + 192), *(a1 + 200));
        }

        else
        {
          pn = *(a1 + 192);
        }

        if (std::__fs::filesystem::path::__root_directory(&__p).__size_)
        {
          std::string::operator=(&pn, &__p);
        }

        else
        {
          sub_29A65B7E0(&v24, "./");
          sub_29AA33A84(&__p, &v24, &v25);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v25.__pn_;
          *(&v25.__pn_.__r_.__value_.__s + 23) = 0;
          v25.__pn_.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          sub_29AA33CDC(&pn, &__p);
        }

        std::__fs::filesystem::__status(&pn, 0);
        if (v25.__pn_.__r_.__value_.__s.__data_[0] == 255 || !v25.__pn_.__r_.__value_.__s.__data_[0])
        {
          v12 = sub_29AABB028();
          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&v24, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
          }

          else
          {
            v24 = pn;
          }

          v15 = std::string::insert(&v24, 0, "File not found: ");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v25.__pn_.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v25.__pn_.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          sub_29AA69D84(v12, &v25);
          if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20 = 1;
LABEL_70:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if ((v20 & 1) == 0)
      {
        return v2;
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  return 0;
}

void sub_29AA8D8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a16);
  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA8D9C4(uint64_t a1, __int128 **a2)
{
  if (*(a1 + 104) == 2)
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  while (1)
  {
    if (*(v2 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      __dst.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v5;
    }

    memset(&__p, 0, sizeof(__p));
    sub_29A8CCEB8(&v12.__pn_, &__dst);
    if (std::__fs::filesystem::path::__root_directory(&v12).__size_)
    {
      sub_29A65B7E0(&pn, "/");
      sub_29AA33A84(&v12, &pn, &v11);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      __p = v11;
      *(&v11.__pn_.__r_.__value_.__s + 23) = 0;
      v11.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_29AA33A10(&v12, a1 + 240, &v11);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      __p = v11;
    }

    std::__fs::filesystem::__status(&__p, 0);
    if (v11.__pn_.__r_.__value_.__s.__data_[0])
    {
      if (v11.__pn_.__r_.__value_.__s.__data_[0] != 255)
      {
        break;
      }
    }

    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v2 = (v2 + 24);
    if (v2 == v3)
    {
      return 0;
    }
  }

  v7 = sub_29AABB028();
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = __p.__pn_;
  }

  v8 = std::string::insert(&pn, 0, "The output file already exists: ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v11.__pn_.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v11.__pn_.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_29AA69D84(v7, &v11);
  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 7;
}

void sub_29AA8DC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA8DC7C(_BYTE *a1)
{
  if (sub_29AA84D7C((a1 + 472), "ForceOverwrite"))
  {
    a1[398] = *sub_29AA84DF4((a1 + 472), "ForceOverwrite");
  }

  if (sub_29AA84D7C((a1 + 472), "InMemoryProcessing"))
  {
    a1[394] = *sub_29AA84DF4((a1 + 472), "InMemoryProcessing");
  }

  if (sub_29AA84D7C((a1 + 472), "PreserveUSDFormat"))
  {
    a1[396] = *sub_29AA84DF4((a1 + 472), "PreserveUSDFormat");
  }

  if (a1[409] == 1 && sub_29AA84D7C((a1 + 472), "ForceLinuxEpoch"))
  {
    a1[408] = *sub_29AA84DF4((a1 + 472), "ForceLinuxEpoch");
  }

  return 0;
}

uint64_t sub_29AA8DD6C(uint64_t a1)
{
  if (*(a1 + 412) == 1 && (*(a1 + 104) | 4) != 6)
  {
    v3 = sub_29AABB028();
    sub_29A008E78(__p, "Output type is not yet supported.");
    sub_29AA5B750(v3, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = sub_29AABB028();
    sub_29A008E78(__p, "Output type is not yet supported.");
    sub_29AA69D84(v4, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 81;
  }

  else
  {
    sub_29AA8DC7C(a1);
    result = sub_29AA8DE3C(a1);
    if (!result)
    {
      *(a1 + 402) = 1;
    }
  }

  return result;
}

uint64_t sub_29AA8DE3C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if ((v2 & 0xFFFFFFFE) == 2)
  {
LABEL_7:
    v12 = 0uLL;
    v13 = 0;
    memset(&__dst, 0, sizeof(__dst));
    memset(v10, 0, sizeof(v10));
    if ((v2 & 0xFFFFFFFE) == 2)
    {
      sub_29AA8E598(a1, 1, &v12, &__dst, v10);
    }

    if (*(a1 + 143) < 0)
    {
      sub_29A008D14(&v8, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      v8 = *(a1 + 120);
      v9 = *(a1 + 136);
    }

    v7.__r_.__value_.__s.__data_[0] = 0;
    pxrInternal__aapl__pxrReserved__::UsdUtils_ExtractExternalReferences(&v8, 1, &v12, &__dst, v10, &v7, 0);
  }

  std::__fs::filesystem::__status((a1 + 120), 0);
  if (v12 && v12 != 255)
  {
    v2 = *(a1 + 96);
    goto LABEL_7;
  }

  v3 = sub_29AABB028();
  if (*(a1 + 143) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    __dst = *(a1 + 120);
  }

  v4 = std::string::insert(&__dst, 0, "File not found: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13 = v4->__r_.__value_.__r.__words[2];
  v12 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v3, &v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 50;
}

void sub_29AA8E4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 - 160) = v24 - 136;
  sub_29A012C90((v24 - 160));
  *(v24 - 136) = v24 - 112;
  sub_29A012C90((v24 - 136));
  *(v24 - 112) = v24 - 80;
  sub_29A012C90((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_29AA8E598(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[9] = *MEMORY[0x29EDCA608];
  v25 = 0;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A2070938;
  v10[1] = sub_29AA885D8;
  v10[2] = 0;
  v10[3] = v23;
  v28 = v10;
  v29 = &unk_2A2063730;
  sub_29A88756C(v30, v27);
  sub_29A88773C(v27);
  v14[0] = &v29;
  memset(&v14[1], 0, 32);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v19 = 1;
  v20 = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  v17 = 1065353216;
  v18 = a2;
  if (*(a1 + 536) || (v11 = *(a1 + 96), v11 == 2))
  {
    v12 = sub_29A5A70E0((a1 + 536));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v12, v13);
    if (v13[1])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    v13[2] = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }

  if (v11 == 3 && *(a1 + 768))
  {
    LOBYTE(v19) = 0;
    pxrInternal__aapl__pxrReserved__::UsdUtils_LocalizationContext::Process(v14, (a1 + 768));
  }

  sub_29A8870E4(v23);
  if (a3)
  {
    sub_29A095FDC(a3);
    *a3 = v23[0];
    *(a3 + 16) = *&v23[1];
    memset(v23, 0, 24);
  }

  if (a4)
  {
    sub_29A095FDC(a4);
    *a4 = *(&v23[1] + 8);
    *(a4 + 16) = *(&v23[2] + 1);
    memset(&v23[1] + 8, 0, 24);
  }

  if (a5)
  {
    sub_29A095FDC(a5);
    *a5 = v24;
    *(a5 + 16) = v25;
    v25 = 0;
    v24 = 0uLL;
  }

  sub_29A0EB4E8(&v21[1]);
  sub_29A0EB4E8(&v15[1] + 8);
  v26 = v15;
  sub_29A012C90(&v26);
  v26 = &v14[2];
  sub_29A012C90(&v26);
  sub_29A321930();
}

uint64_t sub_29AA8E91C(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = a1 + 1120;
    v6 = a1 + 1072;
    v53 = a1 + 952;
    v54 = 1;
    while (1)
    {
      if (*(v3 + 55) < 0)
      {
        sub_29A008D14(&__dst, v3[4], v3[5]);
      }

      else
      {
        __dst = *(v3 + 4);
      }

      if (v5 != sub_29A01BCCC(a1 + 1112, &__dst.__r_.__value_.__l.__data_))
      {
        LODWORD(v7) = 3;
        goto LABEL_226;
      }

      sub_29A8CCEB8(&v61.__stashed_elem_.__pn_, &__dst);
      sub_29AA81918(&v61.__stashed_elem_, &__p);
      if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = sub_29A008D14(&v77, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v77 = *&__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
        v78 = __p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
      }

      if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }

      v9 = HIBYTE(v78);
      if (v78 >= 0)
      {
        v10 = &v77 + HIBYTE(v78);
      }

      else
      {
        v10 = (v77 + *(&v77 + 1));
      }

      if (v78 >= 0)
      {
        v11 = &v77;
      }

      else
      {
        v11 = v77;
      }

      if (v11 != v10)
      {
        do
        {
          v8 = __tolower(*v11);
          *v11++ = v8;
        }

        while (v11 != v10);
        v9 = HIBYTE(v78);
      }

      if (v9 < 0)
      {
        v8 = sub_29A008D14(&v75, v77, *(&v77 + 1));
      }

      else
      {
        v75 = v77;
        v76 = v78;
      }

      v12 = sub_29AA8CBF0(v8, &v75);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75);
      }

      if (v12 != 9)
      {
        sub_29A095658((a1 + 1112), &__dst.__r_.__value_.__l.__data_, &__dst);
      }

      v13 = sub_29A8CCEB8(&v74.__pn_, &__dst);
      std::__fs::filesystem::path::begin(&__p, v13);
      if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&stashed_elem, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        stashed_elem = __p.__stashed_elem_;
      }

      sub_29A65B7E0(&__p.__stashed_elem_.__pn_, ".");
      v80.__data_ = &__p;
      v14 = sub_29AA33B30(&stashed_elem, v80);
      v15 = v14;
      if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        if (!v15)
        {
          goto LABEL_42;
        }
      }

      else if (!v14)
      {
        goto LABEL_42;
      }

      sub_29A65B7E0(&v61.__stashed_elem_.__pn_, "./");
      sub_29AA33A84(&v74, &v61.__stashed_elem_, &__p.__stashed_elem_);
      if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__pn_.__r_.__value_.__l.__data_);
      }

      v74 = __p.__stashed_elem_;
      *(&__p.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = 0;
      __p.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }

LABEL_42:
      if (SHIBYTE(v78) < 0)
      {
        sub_29A008D14(v70, v77, *(&v77 + 1));
      }

      else
      {
        *v70 = v77;
        v71 = v78;
      }

      v16 = sub_29AA8D2A8(a1, v70);
      v17 = v16;
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70[0]);
        if (v17)
        {
          goto LABEL_217;
        }
      }

      else if (v16)
      {
        goto LABEL_217;
      }

      v18 = sub_29A5DAB7C((a1 + 1176), &__dst.__r_.__value_.__l.__data_);
      if ((*(a1 + 394) & 1) == 0)
      {
LABEL_119:
        sub_29AA33A10(&v74, a1 + 192, &v67);
        std::__fs::filesystem::__status(&v67, 0);
        if (!__p.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] || __p.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] == 255)
        {
          v33 = sub_29AABB028();
          if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&pn, v67.__pn_.__r_.__value_.__l.__data_, v67.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            pn = v67.__pn_;
          }

          v34 = std::string::insert(&pn, 0, "File ");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v36 = std::string::append(&v61.__stashed_elem_.__pn_, " not found, removed from references.");
          v37 = *&v36->__r_.__value_.__l.__data_;
          __p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
          *&__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          sub_29AA69D84(v33, &__p);
          if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(pn.__r_.__value_.__l.__data_);
          }

LABEL_214:
          v49 = 1;
          goto LABEL_215;
        }

        sub_29A8CCEB8(&__p.__stashed_elem_.__pn_, &__dst);
        sub_29AA33B6C(&__p.__stashed_elem_, &pn);
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 263) < 0)
        {
          sub_29A008D14(&v64, *(a1 + 240), *(a1 + 248));
        }

        else
        {
          v64 = *(a1 + 240);
        }

        std::__fs::filesystem::path::begin(&__p, &pn);
        while (1)
        {
          std::__fs::filesystem::path::end(&v61, &pn);
          v38 = __p.__path_ptr_ == v61.__path_ptr_ && __p.__entry_.__data_ == v61.__entry_.__data_;
          v39 = !v38;
          if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if ((v39 & 1) == 0)
          {
            break;
          }

          if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&v61, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = *&__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
            v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = __p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
          }

          sub_29AA33CDC(&v64, &v61.__stashed_elem_);
          if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&v61, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v61.__stashed_elem_ = v64;
          }

          v40 = sub_29A01BCCC(a1 + 1064, &v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (v6 == v40)
          {
            std::__fs::filesystem::__status(&v64, 0);
            if (v61.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] == 255 || !v61.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0])
            {
              if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_29A008D14(&v61, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_);
              }

              else
              {
                v61.__stashed_elem_ = v64;
              }

              sub_29AA9E938((a1 + 1064), &v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, &v61);
              if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
              }
            }
          }

          sub_29AA8FDB8(&__p, &v59);
          if (v60 < 0)
          {
            operator delete(v59);
          }
        }

        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::path::begin(&__p, &pn);
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v61, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
          if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *&v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = *&__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
          v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = __p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
        }

        sub_29A65B7E0(&__p.__stashed_elem_.__pn_, ".");
        v81.__data_ = &__p;
        v41 = sub_29AA33B30(&v61.__stashed_elem_, v81);
        v42 = v41;
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          if (!v42)
          {
            goto LABEL_179;
          }
        }

        else if (!v41)
        {
          goto LABEL_179;
        }

        sub_29A65B7E0(&__from.__pn_, "./");
        sub_29AA33A84(&pn, &__from, &__p.__stashed_elem_);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        pn = __p.__stashed_elem_.__pn_;
        *(&__p.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = 0;
        __p.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
        }

LABEL_179:
        sub_29AA33A10(&pn, a1 + 240, &__p.__stashed_elem_);
        if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(v56, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          *v56 = *&__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
          v57 = __p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
        }

        v43 = sub_29AA869A0(v56);
        v44 = v43;
        if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
          if (v43)
          {
            goto LABEL_184;
          }

LABEL_193:
          v46 = sub_29AABB028();
          if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&__to, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, __p.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            __to = __p.__stashed_elem_;
          }

          v47 = std::string::insert(&__to.__pn_, 0, "Failed to create directory: ");
          v48 = *&v47->__r_.__value_.__l.__data_;
          __from.__pn_.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&__from.__pn_.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          sub_29AA69D84(v46, &__from);
LABEL_202:
          if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__to.__pn_.__r_.__value_.__l.__data_);
          }

LABEL_206:
          if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(pn.__r_.__value_.__l.__data_);
            if (v44)
            {
              goto LABEL_214;
            }
          }

          else if (v44)
          {
            goto LABEL_214;
          }

          v49 = 0;
LABEL_215:
          if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__pn_.__r_.__value_.__l.__data_);
            if ((v49 & 1) == 0)
            {
LABEL_219:
              LODWORD(v7) = 1;
              goto LABEL_220;
            }
          }

          else if ((v49 & 1) == 0)
          {
            goto LABEL_219;
          }

LABEL_217:
          LODWORD(v7) = 0;
          goto LABEL_220;
        }

        operator delete(v56[0]);
        if (!v44)
        {
          goto LABEL_193;
        }

LABEL_184:
        sub_29AA33A10(&v74, a1 + 192, &__from);
        sub_29AA33A10(&v74, a1 + 240, &__to);
        v45 = std::__fs::filesystem::__copy_file(&__from, &__to, overwrite_existing, 0);
        if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__to.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          if (v45)
          {
            goto LABEL_188;
          }
        }

        else if (v45)
        {
LABEL_188:
          if (v53 != sub_29A01BCCC(a1 + 944, &__dst.__r_.__value_.__l.__data_))
          {
            sub_29A0DD010((a1 + 944), &__dst.__r_.__value_.__l.__data_);
          }

          sub_29AA33A10(&v74, a1 + 240, &__to);
          if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&__from, __to.__pn_.__r_.__value_.__l.__data_, __to.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            __from = __to;
          }

          sub_29AA9E938((a1 + 1064), &__from.__pn_.__r_.__value_.__l.__data_, &__from);
          goto LABEL_202;
        }

        v54 = 0;
        goto LABEL_206;
      }

      v19 = v18;
      if (*(a1 + 263) < 0)
      {
        sub_29A008D14(v68, *(a1 + 240), *(a1 + 248));
      }

      else
      {
        *v68 = *(a1 + 240);
        v69 = *(a1 + 256);
      }

      sub_29AA869A0(v68);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68[0]);
      }

      sub_29A8CCEB8(&__p.__stashed_elem_.__pn_, &__dst);
      sub_29AA33A10(&__p.__stashed_elem_, a1 + 240, &v61.__stashed_elem_);
      memset(&v67, 0, sizeof(v67));
      if (v19)
      {
        sub_29AA33B6C(&__p.__stashed_elem_, &v64);
        sub_29AA33A10(&v64, a1 + 240, &pn);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v66, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
        }

        else
        {
          v66 = pn;
        }

        sub_29AA869A0(&v66);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__pn_.__r_.__value_.__l.__data_);
        }

        v20 = sub_29A5DAB7C((a1 + 1176), &__dst.__r_.__value_.__l.__data_);
        v21 = v20[5];
        if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&pn, v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v61.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          pn = v61.__stashed_elem_.__pn_;
        }

        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_pn = &pn;
        }

        else
        {
          p_pn = pn.__r_.__value_.__r.__words[0];
        }

        v23 = fopen(p_pn, "wb");
        v7 = v23;
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
          if (!v7)
          {
            goto LABEL_109;
          }
        }

        else if (!v23)
        {
LABEL_109:
          v28 = 0;
LABEL_110:
          v32 = v67.__pn_.__r_.__value_.__r.__words[0];
          if (!v67.__pn_.__r_.__value_.__r.__words[0])
          {
            goto LABEL_112;
          }

LABEL_111:
          v67.__pn_.__r_.__value_.__l.__size_ = v32;
          operator delete(v32);
          goto LABEL_112;
        }

        sub_29A19E500((v20 + 5));
        v24 = fwrite(v20[9], 1uLL, v21, v7);
        fclose(v7);
        if (v21 == v24)
        {
          LODWORD(v7) = 0;
        }

        else
        {
LABEL_79:
          v25 = sub_29AABB028();
          std::operator+<char>();
          sub_29AA5B750(v25, &pn);
          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(pn.__r_.__value_.__l.__data_);
          }

          LODWORD(v7) = 0;
          v54 = 0;
        }

LABEL_86:
        v28 = 1;
        goto LABEL_110;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v63, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v63 = __dst;
      }

      v26 = sub_29AA8F9E4(a1, &v63.__r_.__value_.__l.__data_, &v67.__pn_.__r_.__value_.__l.__data_);
      v27 = v26;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
        if (v27)
        {
LABEL_85:
          LODWORD(v7) = 1;
          goto LABEL_86;
        }
      }

      else if (v26)
      {
        goto LABEL_85;
      }

      sub_29AA33B6C(&__p.__stashed_elem_, &v64);
      sub_29AA33A10(&v64, a1 + 240, &pn);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v62, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = pn;
      }

      sub_29AA869A0(&v62);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&pn, v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v61.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        pn = v61.__stashed_elem_.__pn_;
      }

      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &pn;
      }

      else
      {
        v29 = pn.__r_.__value_.__r.__words[0];
      }

      v30 = fopen(v29, "wb");
      v7 = v30;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
        if (!v7)
        {
          goto LABEL_109;
        }
      }

      else if (!v30)
      {
        goto LABEL_109;
      }

      v31 = fwrite(v67.__pn_.__r_.__value_.__l.__data_, 1uLL, v67.__pn_.__r_.__value_.__l.__size_ - v67.__pn_.__r_.__value_.__r.__words[0], v7);
      fclose(v7);
      v32 = v67.__pn_.__r_.__value_.__r.__words[0];
      if (v67.__pn_.__r_.__value_.__l.__size_ - v67.__pn_.__r_.__value_.__r.__words[0] != v31)
      {
        goto LABEL_79;
      }

      LODWORD(v7) = 0;
      v28 = 1;
      if (v67.__pn_.__r_.__value_.__r.__words[0])
      {
        goto LABEL_111;
      }

LABEL_112:
      if (SHIBYTE(v61.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        if ((v28 & 1) == 0)
        {
          goto LABEL_219;
        }
      }

      else if ((v28 & 1) == 0)
      {
        goto LABEL_219;
      }

      if (v7)
      {
        goto LABEL_119;
      }

LABEL_220:
      if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

LABEL_226:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v7 != 3 && v7)
      {
        break;
      }

      v50 = v3[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v3[2];
          v38 = *v51 == v3;
          v3 = v51;
        }

        while (!v38);
      }

      v3 = v51;
      if (v51 == v2)
      {
        return v54 & 1;
      }
    }
  }

  v54 = 1;
  return v54 & 1;
}

void sub_29AA8F658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (*(v74 - 217) < 0)
  {
    operator delete(*(v74 - 240));
  }

  if (*(v74 - 185) < 0)
  {
    operator delete(*(v74 - 208));
  }

  if (*(v74 - 121) < 0)
  {
    operator delete(*(v74 - 144));
  }

  if (*(v74 - 89) < 0)
  {
    operator delete(*(v74 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA8F9E4(uint64_t a1, const void **a2, char **a3)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin((a1 + 512), v34);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&__dst);
  v6 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(v34, &__dst);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&__dst.__r_.__value_.__l.__data_);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(v34);
  if (v6)
  {
    v7 = sub_29AABB028();
    if (*(a1 + 847) < 0)
    {
      sub_29A008D14(&__dst, *(a1 + 824), *(a1 + 832));
    }

    else
    {
      __dst = *(a1 + 824);
    }

    v30 = std::string::insert(&__dst, 0, "The USDZ file is empty or corrupted: ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v35 = v30->__r_.__value_.__r.__words[2];
    *v34 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, v34);
    goto LABEL_54;
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin((a1 + 512), &v37);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v36);
  v8 = 0;
  while (pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v37, &v36))
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(&v37, v34);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator->(&v37, __p);
    if ((v33 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_29A008E78(&__dst, v9);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (v11 != size || (v10 >= 0 ? (v13 = a2) : (v13 = *a2), (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_dst = &__dst) : (p_dst = __dst.__r_.__value_.__r.__words[0]), memcmp(v13, p_dst, v11)))
    {
      std::operator+<char>();
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = a2[1];
      }

      v17 = v33;
      v18 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v17 = __p[1];
      }

      if (v16 == v17)
      {
        if (v15 >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        if ((v33 & 0x80u) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        v21 = memcmp(v19, v20, v16) == 0;
        if (v18 < 0)
        {
LABEL_40:
          operator delete(__p[0]);
          if (!v21)
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v21 = 0;
        if (v33 < 0)
        {
          goto LABEL_40;
        }
      }

      if (!v21)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    v22 = v35;
    v23 = *a3;
    v24 = a3[1] - *a3;
    if (v35 <= v24)
    {
      if (v35 < v24)
      {
        a3[1] = &v23[v35];
      }
    }

    else
    {
      sub_29A1B2C78(a3, v35 - v24);
      v23 = *a3;
    }

    File = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFile(&v37);
    memcpy(v23, File, v22);
    v8 = 1;
LABEL_46:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v37);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v36);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v37);
  if (v8)
  {
    return 0;
  }

  v27 = sub_29AABB028();
  std::operator+<char>();
  v28 = std::string::append(&__dst, " from the USDZ file.");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v35 = v28->__r_.__value_.__r.__words[2];
  *v34 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  sub_29AA69D84(v27, v34);
LABEL_54:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 500;
}

void sub_29AA8FD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::path::iterator *sub_29AA8FDB8@<X0>(std::__fs::filesystem::path::iterator *this@<X0>, uint64_t a2@<X8>)
{
  if (SHIBYTE(this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(a2, this->__stashed_elem_.__pn_.__r_.__value_.__l.__data_, this->__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *a2 = *&this->__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&this->__stashed_elem_.__pn_.__r_.__value_.__l + 2);
  }

  *(a2 + 24) = *&this->__path_ptr_;
  *(a2 + 33) = *(&this->__entry_ + 1);
  return std::__fs::filesystem::path::iterator::__increment(this);
}

void sub_29AA8FE1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA8FE38(uint64_t a1, void *a2)
{
  if (*(a1 + 960) && a2[2])
  {
    sub_29A008E78(v16, "./");
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = a1 + 952;
      do
      {
        if (*(v5 + 55) < 0)
        {
          sub_29A008D14(&__p, v5[4], v5[5]);
        }

        else
        {
          __p = *(v5 + 4);
        }

        if (v7 != sub_29A01BCCC(a1 + 944, &__p.__r_.__value_.__l.__data_))
        {
          sub_29A0DD010((a1 + 944), &__p.__r_.__value_.__l.__data_);
        }

        if ((v17 & 0x80u) == 0)
        {
          v8 = v17;
        }

        else
        {
          v8 = v16[1];
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v8 == -1)
          {
LABEL_45:
            sub_29A0F26CC();
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ >= v8)
          {
            size = v8;
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (v8 == -1)
          {
            goto LABEL_45;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= v8)
          {
            size = v8;
          }

          else
          {
            size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          p_p = &__p;
        }

        if ((v17 & 0x80u) == 0)
        {
          v11 = v16;
        }

        else
        {
          v11 = v16[0];
        }

        v12 = !memcmp(p_p, v11, size) && size == v8;
        if (v12)
        {
          std::string::erase(&__p, 0, v8);
        }

        if (v7 != sub_29A01BCCC(a1 + 944, &__p.__r_.__value_.__l.__data_))
        {
          sub_29A0DD010((a1 + 944), &__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v13 = v5[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v5[2];
            v12 = *v14 == v5;
            v5 = v14;
          }

          while (!v12);
        }

        v5 = v14;
      }

      while (v14 != v4);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }
}

void sub_29AA8FFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA9002C(const void ***a1)
{
  sub_29A3479FC(v5, a1 + 121);
  sub_29AA8FE38(a1, v5);
  sub_29A019EE8(v5, v5[1]);
  sub_29A3479FC(v4, a1 + 127);
  sub_29AA8FE38(a1, v4);
  sub_29A019EE8(v4, v4[1]);
  sub_29A3479FC(v3, a1 + 124);
  sub_29AA8FE38(a1, v3);
  sub_29A019EE8(v3, v3[1]);
  sub_29A3479FC(v2, a1 + 130);
  sub_29AA8FE38(a1, v2);
  sub_29A019EE8(v2, v2[1]);
}

void sub_29AA90120(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16) && a3[2])
  {
    sub_29A008E78(v17, "./");
    v7 = *a3;
    v5 = a3 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      v8 = a2 + 8;
      do
      {
        if (*(v6 + 55) < 0)
        {
          sub_29A008D14(&__p, v6[4], v6[5]);
        }

        else
        {
          __p = *(v6 + 4);
        }

        if (v8 != sub_29A01BCCC(a2, &__p.__r_.__value_.__l.__data_))
        {
          sub_29A0DD010(a2, &__p.__r_.__value_.__l.__data_);
        }

        if ((v18 & 0x80u) == 0)
        {
          v9 = v18;
        }

        else
        {
          v9 = v17[1];
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v9 == -1)
          {
LABEL_45:
            sub_29A0F26CC();
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ >= v9)
          {
            size = v9;
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (v9 == -1)
          {
            goto LABEL_45;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= v9)
          {
            size = v9;
          }

          else
          {
            size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          p_p = &__p;
        }

        if ((v18 & 0x80u) == 0)
        {
          v12 = v17;
        }

        else
        {
          v12 = v17[0];
        }

        v13 = !memcmp(p_p, v12, size) && size == v9;
        if (v13)
        {
          std::string::erase(&__p, 0, v9);
        }

        if (v8 != sub_29A01BCCC(a2, &__p.__r_.__value_.__l.__data_))
        {
          sub_29A0DD010(a2, &__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v14 = v6[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v6[2];
            v13 = *v15 == v6;
            v6 = v15;
          }

          while (!v13);
        }

        v6 = v15;
      }

      while (v15 != v5);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

void sub_29AA902D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA90314(uint64_t a1)
{
  if (*(a1 + 403) != 1)
  {
    return 0;
  }

  std::__fs::filesystem::__status((a1 + 144), 0);
  if (!__str.__r_.__value_.__s.__data_[0] || __str.__r_.__value_.__s.__data_[0] == 255 || std::__fs::filesystem::__remove_all((a1 + 144), 0))
  {
    if (*(a1 + 104) != 2)
    {
      v2 = *(a1 + 1064);
      if (v2 != (a1 + 1072))
      {
        while (1)
        {
          if (*(v2 + 55) < 0)
          {
            sub_29A008D14(&__str, v2[4], v2[5]);
          }

          else
          {
            __str = *(v2 + 4);
          }

          sub_29A8CCEB8(&v29, &__str);
          sub_29AA33A84(&v29, (a1 + 240), &v28);
          size = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
          if ((v28.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v28.__pn_.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
LABEL_72:
            v22 = sub_29AABB028();
            std::operator+<char>();
            sub_29AA5B750(v22, &v27);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              v21 = __str.__r_.__value_.__r.__words[0];
LABEL_80:
              operator delete(v21);
            }

            return 404;
          }

          if (*(a1 + 263) < 0)
          {
            sub_29A008D14(__dst, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__dst = *(a1 + 240);
            v26 = *(a1 + 256);
          }

          if (v26 >= 0)
          {
            v4 = HIBYTE(v26);
          }

          else
          {
            v4 = __dst[1];
          }

          std::string::basic_string(&v27, &__str, 0, v4, __p);
          if (*(a1 + 263) < 0)
          {
            sub_29A008D14(__p, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__p = *(a1 + 240);
            v24 = *(a1 + 256);
          }

          v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v6 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v6 = v27.__r_.__value_.__l.__size_;
          }

          v7 = HIBYTE(v24);
          v8 = SHIBYTE(v24);
          if (v24 < 0)
          {
            v7 = __p[1];
          }

          if (v6 != v7)
          {
            break;
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v9 = &v27;
          }

          else
          {
            v9 = v27.__r_.__value_.__r.__words[0];
          }

          if (v24 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          v11 = memcmp(v9, v10, v6) != 0;
          if (v8 < 0)
          {
            goto LABEL_37;
          }

LABEL_38:
          if (v5 < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(__dst[0]);
          }

          if (v11)
          {
            goto LABEL_72;
          }

          sub_29A8CCEB8(&v27, &__str);
          std::__fs::filesystem::__status(&v27, 0);
          v12 = __dst[0];
          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          if (v12 && v12 != 255)
          {
            sub_29A8CCEB8(&v27, &__str);
            v13 = std::__fs::filesystem::__remove_all(&v27, 0);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (!v13)
            {
              goto LABEL_72;
            }
          }

          if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v14 = v2[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v2[2];
              v16 = *v15 == v2;
              v2 = v15;
            }

            while (!v16);
          }

          v2 = v15;
          if (v15 == (a1 + 1072))
          {
            return 0;
          }
        }

        v11 = 1;
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_37:
        operator delete(__p[0]);
        v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        goto LABEL_38;
      }
    }

    return 0;
  }

  v18 = sub_29AABB028();
  if (*(a1 + 167) < 0)
  {
    sub_29A008D14(&v29, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v29 = *(a1 + 144);
  }

  v19 = std::string::insert(&v29, 0, "Failed to remove: ");
  v20 = *&v19->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v18, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    v21 = v29.__r_.__value_.__r.__words[0];
    goto LABEL_80;
  }

  return 404;
}

void sub_29AA90740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA90800(uint64_t a1)
{
  if ((*(a1 + 401) & 1) != 0 || *(a1 + 402) != 1)
  {
    return 0;
  }

  if ((*(a1 + 100) == 2 || *(a1 + 104) == 2 || *(a1 + 399) == 1 && (*(a1 + 400) & 1) == 0) && (v2 = (a1 + 264), std::__fs::filesystem::__status((a1 + 264), 0), LOBYTE(__p[0])) && LOBYTE(__p[0]) != 255 && !std::__fs::filesystem::__remove_all((a1 + 264), 0))
  {
    v3 = sub_29AABB028();
    if (*(a1 + 287) < 0)
    {
      sub_29A008D14(&v7, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      *&v7.__r_.__value_.__l.__data_ = *v2;
      v7.__r_.__value_.__r.__words[2] = *(a1 + 280);
    }

    v5 = std::string::insert(&v7, 0, "Failed to remove temporary directory: ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v3, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    return 404;
  }

  else
  {
    if ((*(a1 + 400) & 1) == 0)
    {
      sub_29AA90314(a1);
    }

    result = 0;
    *(a1 + 401) = 1;
  }

  return result;
}

void sub_29AA90958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA90974(uint64_t a1, void *a2, const void **a3)
{
  v69 = *MEMORY[0x29EDCA608];
  memset(&pn, 0, sizeof(pn));
  v3 = *a2;
  v52 = a2 + 1;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  v6 = 0;
  v50 = (a1 + 264);
  v51 = a1 + 1120;
  do
  {
    if (*(v3 + 55) < 0)
    {
      sub_29A008D14(&__dst, v3[4], v3[5]);
    }

    else
    {
      __dst = *(v3 + 4);
    }

    v7 = *(a3 + 23);
    if (v7 < 0)
    {
      if (!a3[1])
      {
        goto LABEL_31;
      }
    }

    else if (!*(a3 + 23))
    {
      goto LABEL_31;
    }

    if (v7 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = a3[1];
    }

    sub_29A022DE0(&v53, v8 + 1);
    if ((v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v53;
    }

    else
    {
      v9 = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__stashed_elem_.__pn_.__r_.__value_.__l.__data_ + v8) = 47;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v53.__stashed_elem_.__pn_, p_dst, size);
    v14 = v13->__r_.__value_.__r.__words[0];
    stashed_elem.__pn_.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
    *(stashed_elem.__pn_.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst.__r_.__value_.__r.__words[0] = v14;
    __dst.__r_.__value_.__l.__size_ = stashed_elem.__pn_.__r_.__value_.__r.__words[0];
    *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(stashed_elem.__pn_.__r_.__value_.__r.__words + 7);
    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_31:
    sub_29A8CCEB8(&stashed_elem.__pn_, &__dst);
    if (v51 != sub_29A01BCCC(a1 + 1112, &__dst.__r_.__value_.__l.__data_))
    {
      goto LABEL_146;
    }

    v16 = sub_29A8CCEB8(&v63, &__dst);
    sub_29AA81918(v16, &v53);
    if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = sub_29A008D14(&v64, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v64 = *&v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_;
      v65 = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2];
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    v18 = HIBYTE(v65);
    if (v65 >= 0)
    {
      v19 = &v64 + HIBYTE(v65);
    }

    else
    {
      v19 = (v64 + *(&v64 + 1));
    }

    if (v65 >= 0)
    {
      v20 = &v64;
    }

    else
    {
      v20 = v64;
    }

    if (v20 != v19)
    {
      do
      {
        v17 = __tolower(*v20);
        *v20++ = v17;
      }

      while (v20 != v19);
      v18 = HIBYTE(v65);
    }

    if (v18 < 0)
    {
      v17 = sub_29A008D14(__p, v64, *(&v64 + 1));
    }

    else
    {
      *__p = v64;
      v62 = v65;
    }

    v21 = sub_29AA8CBF0(v17, __p);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 != 9)
    {
      sub_29A095658((a1 + 1112), &__dst.__r_.__value_.__l.__data_, &__dst);
    }

    if (*(a1 + 287) < 0)
    {
      sub_29A008D14(&v63, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      v63 = *v50;
    }

    if (SHIBYTE(v65) < 0)
    {
      sub_29A008D14(v59, v64, *(&v64 + 1));
    }

    else
    {
      *v59 = v64;
      v60 = v65;
    }

    if (sub_29AA8D2A8(a1, v59))
    {
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }
    }

    else
    {
      v22 = *(a1 + 100);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }

      if (v22 != 2)
      {
        std::string::operator=(&v63, (a1 + 216));
      }
    }

    v23 = sub_29A5DAB7C((a1 + 1176), &__dst.__r_.__value_.__l.__data_);
    v24 = v23;
    if ((*(a1 + 394) & 1) == 0)
    {
LABEL_83:
      sub_29A8CCEB8(&v58, &__dst);
      sub_29AA33A10(&v58, &v63, &v53.__stashed_elem_);
      std::__fs::filesystem::__status(&v53.__stashed_elem_, 0);
      v28 = v56.__r_.__value_.__s.__data_[0];
      if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (!v28 || v28 == 255)
      {
        if (v24)
        {
          goto LABEL_141;
        }

        v29 = sub_29AABB028();
        sub_29A8CCEB8(&v55, &__dst);
        sub_29AA33A10(&v55, &v63, &v56);
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v58, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
        }

        else
        {
          v58 = v56;
        }

        v35 = std::string::insert(&v58, 0, "File does not exist: ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        sub_29AA69D84(v29, &v53);
        if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_141;
        }

        v37 = v55.__r_.__value_.__r.__words[0];
LABEL_140:
        operator delete(v37);
LABEL_141:
        v6 = 1;
        goto LABEL_142;
      }

      sub_29A8CCEB8(&v55, &__dst);
      sub_29AA33A10(&v55, &v63, &v56);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v58, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
      }

      else
      {
        v58 = v56;
      }

      pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddFile((a1 + 528), &v58, &__dst, &v53);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      pn = v53.__stashed_elem_.__pn_;
      *(&v53.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = 0;
      v53.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      sub_29A8CCEB8(&v58, &pn);
      std::__fs::filesystem::path::begin(&v53, &stashed_elem);
      if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v56, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v56 = v53.__stashed_elem_.__pn_;
      }

      sub_29A65B7E0(&v53.__stashed_elem_.__pn_, ".");
      v70.__data_ = &v53;
      v30 = sub_29AA33B30(&v56, v70);
      v32 = v30;
      if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
        if (!v32)
        {
          goto LABEL_116;
        }
      }

      else if (!v30)
      {
LABEL_116:
        v31.__data_ = &v58;
        if (sub_29AA818DC(&stashed_elem, v31))
        {
          goto LABEL_120;
        }

        v33 = HIBYTE(pn.__r_.__value_.__r.__words[2]);
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = pn.__r_.__value_.__l.__size_;
        }

        if (!v33)
        {
LABEL_120:
          v34 = sub_29AABB028();
          if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&v55, stashed_elem.__pn_.__r_.__value_.__l.__data_, stashed_elem.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = stashed_elem.__pn_;
          }

          v38 = std::string::insert(&v55, 0, "Failed to add file: ");
          v39 = *&v38->__r_.__value_.__l.__data_;
          v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          sub_29AA69D84(v34, &v53);
          if (SHIBYTE(v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_141;
        }

        v37 = v58.__r_.__value_.__r.__words[0];
        goto LABEL_140;
      }

      sub_29A65B7E0(&v55, "./");
      sub_29AA33A84(&stashed_elem, &v55, &v53.__stashed_elem_);
      if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
      }

      stashed_elem = v53.__stashed_elem_;
      *(&v53.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = 0;
      v53.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      goto LABEL_116;
    }

    memset(&v53, 0, 24);
    if (v23)
    {
      v25 = sub_29A5DAB7C((a1 + 1176), &__dst.__r_.__value_.__l.__data_);
      v26 = v25[5];
      v27 = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0];
      if (v26 <= v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ - v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0])
      {
        if (v26 < v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ - v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0])
        {
          v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0] + v26;
        }
      }

      else
      {
        sub_29A1B2C78(&v53, v26 - (v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ - v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0]));
        v27 = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0];
      }

      sub_29A19E500((v25 + 5));
      memcpy(v27, v25[9], v26);
      pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile((a1 + 528), v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ - v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0], &__dst, *(a1 + 408), *(a1 + 408), &v58);
      if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

LABEL_78:
      operator delete(pn.__r_.__value_.__l.__data_);
LABEL_79:
      pn = v58;
      goto LABEL_80;
    }

    if (*(a1 + 100) != 2 && *(a1 + 896) != 2)
    {
      goto LABEL_187;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&v57, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = __dst;
    }

    v43 = sub_29AA8F9E4(a1, &v57.__r_.__value_.__l.__data_, &v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    v44 = v43;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
      if (!v44)
      {
LABEL_169:
        pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile((a1 + 528), v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ - v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0], &__dst, *(a1 + 408), *(a1 + 408), &v58);
        if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    else if (!v43)
    {
      goto LABEL_169;
    }

    sub_29A8CCEB8(&v56, &__dst);
    sub_29AA33A10(&v56, &v63, &v58);
    std::__fs::filesystem::__status(&v58, 0);
    v45 = v55.__r_.__value_.__s.__data_[0];
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v45 && v45 != 255)
    {
      sub_29A8CCEB8(&v54.__pn_, &__dst);
      sub_29AA33A10(&v54, &v63, &v55);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v56, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
      }

      else
      {
        v56 = v55;
      }

      pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddFile((a1 + 528), &v56, &__dst, &v58);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      pn = v58;
      *(&v58.__r_.__value_.__s + 23) = 0;
      v58.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__pn_.__r_.__value_.__l.__data_);
      }

LABEL_187:
      v6 = 1;
      goto LABEL_80;
    }

    v46 = sub_29AABB028();
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&v56, stashed_elem.__pn_.__r_.__value_.__l.__data_, stashed_elem.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = stashed_elem.__pn_;
    }

    v47 = std::string::insert(&v56, 0, "Failed to add file: ");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v46, &v58);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

LABEL_80:
    if (v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0])
    {
      v53.__stashed_elem_.__pn_.__r_.__value_.__l.__size_ = v53.__stashed_elem_.__pn_.__r_.__value_.__r.__words[0];
      operator delete(v53.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

    if (v6)
    {
      goto LABEL_83;
    }

    v6 = 0;
LABEL_142:
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

LABEL_146:
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v40 = v3[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v3[2];
        v42 = *v41 == v3;
        v3 = v41;
      }

      while (!v42);
    }

    v3 = v41;
  }

  while (v41 != v52);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29AA91458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (*(v62 - 233) < 0)
  {
    operator delete(*(v62 - 256));
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  if (*(v62 - 105) < 0)
  {
    operator delete(*(v62 - 128));
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 137) < 0)
  {
    operator delete(*(v62 - 160));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA916D0(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v45 = 0;
  v46 = 0;
  if ((sub_29AA84E9C((a1 + 496), "CompressedData") & 1) == 0)
  {
    v31 = sub_29AABB028();
    sub_29A008E78(v39, "Invalid compressedData info");
LABEL_85:
    sub_29AA5B750(v31, v39);
    if (SBYTE7(v40) < 0)
    {
      operator delete(v39[0]);
    }

    v24 = 600;
    goto LABEL_88;
  }

  v2 = sub_29AA84F14((a1 + 496), "CompressedData");
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v46, v2);
  if ((sub_29AA84E9C(&v46, "CompressedBitstreams") & 1) == 0)
  {
    v31 = sub_29AABB028();
    sub_29A008E78(v39, "Invalid compressedData info");
    goto LABEL_85;
  }

  v3 = sub_29AA84F14(&v46, "CompressedBitstreams");
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v45, v3);
  v43 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(&v45);
  v44 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(&v45);
  v33 = (a1 + 528);
  v7 = v43;
  if (v5)
  {
    v8 = v43 == v6;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  if (v44 == v5 && (v9 & 1) != 0)
  {
    sub_29A008E78(v39, "CompressedBitstreams");
    v47.__r_.__value_.__l.__size_ = &off_2A2042030;
    sub_29A187864(&v47, &v45);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v46, v39, &v47, ":");
    sub_29A186B14(&v47);
    if (SBYTE7(v40) < 0)
    {
      operator delete(v39[0]);
    }

    sub_29A008E78(v39, "CompressedData");
    v47.__r_.__value_.__l.__size_ = &off_2A2042030;
    sub_29A187864(&v47, &v46);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a1 + 496), v39, &v47, ":");
    sub_29A186B14(&v47);
    if (SBYTE7(v40) < 0)
    {
      operator delete(v39[0]);
    }

    v24 = 0;
  }

  else
  {
    if (!sub_29AA91F34(&v45, (v43 + 32)))
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
    }

    v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(&v45, (v43 + 32));
    pxrInternal__aapl__pxrReserved__::VtDictionary::end(&v45);
    v11 = sub_29A187B1C((v10 + 56));
    pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v42, v11);
    memset(&v47, 0, sizeof(v47));
    if (sub_29AA84B3C(&v42, "ReferencePath"))
    {
      v12 = sub_29AA84BB4(&v42, "ReferencePath");
      std::string::operator=(&v47, v12);
    }

    if (sub_29AA91FAC(&v42, "BitstreamData"))
    {
      v13 = sub_29AA92024(&v42, "BitstreamData");
      v14 = *(v13 + 1);
      *v39 = *v13;
      v40 = v14;
      v15 = v13[4];
      __ptr = v15;
      if (v15)
      {
        v16 = (v15 - 16);
        if (*(&v40 + 1))
        {
          v16 = *(&v40 + 1);
        }

        atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }

      v17 = v39[0];
      if (!v39[0])
      {
        v25 = sub_29AABB028();
        sub_29A008E78(&__p, "Failed to read bitstream data");
        sub_29AA5B750(v25, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v47.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v26 = sub_29AABB028();
        sub_29A008E78(&__p, "Failed to output GCL bitstream !");
        goto LABEL_42;
      }

      if ((*(a1 + 104) | 4) == 6)
      {
        if (*v33)
        {
          sub_29A19E500(v39);
          pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile(v33, __ptr, v17, &v47, *(a1 + 408), *(a1 + 408), &__p);
          v19 = __p.__r_.__value_.__l.__size_;
          v20 = __p.__r_.__value_.__r.__words[0];
          v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (!v19)
          {
            v22 = sub_29AABB028();
            sub_29A008E78(&__p, "Error when adding files to usdz: compressedGCLFiles");
            sub_29AA5B750(v22, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v21 < 0)
            {
LABEL_76:
              operator delete(v20);
            }

LABEL_78:
            pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
          }

LABEL_68:
          if ((*(a1 + 404) & 1) == 0)
          {
            sub_29A008E78(&__p, "BitstreamData");
            pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(&v42, &__p, ":");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            sub_29A008E78(&__p, "ReferencePath");
            pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(&v42, &__p, ":");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (!pxrInternal__aapl__pxrReserved__::VtDictionary::count(&v42, (v7 + 32)))
            {
              pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(&v45, (v7 + 32), ":");
            }
          }

          if (v21 < 0)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        }

        v26 = sub_29AABB028();
        sub_29A008E78(&__p, "Failed to create output USDZ object !");
LABEL_42:
        sub_29AA5B750(v26, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      if (*(a1 + 359) < 0)
      {
        sub_29A008D14(__dst, *(a1 + 336), *(a1 + 344));
      }

      else
      {
        *__dst = *(a1 + 336);
        v37 = *(a1 + 352);
      }

      sub_29AA869A0(__dst);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__dst[0]);
      }

      sub_29A8CCEB8(&__p, &v47);
      sub_29AA36000(&__p, &v34);
      sub_29AA33A10(&v34, a1 + 336, &v35);
      if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v34, v35.__pn_.__r_.__value_.__l.__data_, v35.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v34 = v35;
      }

      if ((v34.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v34;
      }

      else
      {
        v27 = v34.__pn_.__r_.__value_.__r.__words[0];
      }

      v28 = fopen(v27, "wb");
      v29 = v28;
      if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__pn_.__r_.__value_.__l.__data_);
        if (!v29)
        {
          goto LABEL_62;
        }
      }

      else if (!v28)
      {
        goto LABEL_62;
      }

      sub_29A19E500(v39);
      if (v17 == fwrite(__ptr, 1uLL, v17, v29))
      {
        fclose(v29);
        v30 = 1;
LABEL_63:
        if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v30 & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        else if ((v30 & 1) == 0)
        {
          goto LABEL_78;
        }

        v20 = 0;
        v21 = 0;
        goto LABEL_68;
      }

LABEL_62:
      v30 = 0;
      goto LABEL_63;
    }

    v23 = sub_29AABB028();
    sub_29A008E78(v39, "Invalid bitstream data parameter");
    sub_29AA5B750(v23, v39);
    if (SBYTE7(v40) < 0)
    {
      operator delete(v39[0]);
    }

    v24 = 4;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    sub_29A184A10(&v42, 0);
  }

LABEL_88:
  sub_29A184A10(&v45, 0);
  sub_29A184A10(&v46, 0);
  return v24;
}

void sub_29AA91DAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29AA91F34(uint64_t *a1, const void **a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29A185258((v3 + 56));
}

uint64_t sub_29AA91FAC(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29A19E5FC((v3 + 56));
}

void **sub_29AA92024(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v6 = v5;
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6 == v9 && (!v6 || v4 == v7))
  {
    v11[0] = "vt/dictionary.h";
    v11[1] = "VtDictionaryGet";
    v11[2] = 458;
    v11[3] = "const T &pxrInternal__aapl__pxrReserved__::VtDictionaryGet(const VtDictionary &, const char *) [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>]";
    v12 = 0;
    v13 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v11, "Attempted to get value for key '%s', which is not in the dictionary.", v8, a2);
  }

  return sub_29A19EA70((v4 + 56));
}

uint64_t sub_29AA920CC(uint64_t a1)
{
  if (*(a1 + 100) == 2)
  {
    if (sub_29AA92308(a1))
    {
      v2 = sub_29AABB028();
      sub_29A008E78(__p, "Error when extracting files from USDZ");
      sub_29AA5B750(v2, __p);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      return 500;
    }

    goto LABEL_14;
  }

  if (*(a1 + 143) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    __dst = *(a1 + 120);
  }

  v4 = sub_29AA8CDFC(a1, &__dst);
  v3 = v4;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (!*(a1 + 96))
    {
      if (*(a1 + 143) < 0)
      {
        sub_29A008D14(__p, *(a1 + 120), *(a1 + 128));
      }

      else
      {
        *__p = *(a1 + 120);
        v9 = *(a1 + 136);
      }

      pxrInternal__aapl__pxrReserved__::UsdStage::Open(__p, 0, &v7);
    }

    return 0;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_11:
  v5 = sub_29AABB028();
  sub_29A008E78(__p, "Error: Cannot write to the compression output folder.");
  sub_29AA5B750(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

uint64_t sub_29AA92308(uint64_t a1)
{
  v3 = *(a1 + 760);
  if (!v3)
  {
    if (*(a1 + 143) < 0)
    {
      sub_29A008D14(__p, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      *__p = *(a1 + 120);
      v47 = *(a1 + 136);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(__p, &__dst);
    v4 = *&__dst.__r_.__value_.__l.__data_;
    if (__dst.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((__dst.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 512) = v4;
    v5 = *(a1 + 520);
    *(a1 + 520) = *(&v4 + 1);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&__dst);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(a1 + 760);
  }

  if (v3 == 1)
  {
    v6 = (a1 + 824);
    if (*(a1 + 847) < 0)
    {
      sub_29A008D14(__p, *(a1 + 824), *(a1 + 832));
    }

    else
    {
      *__p = *v6;
      v47 = *(a1 + 840);
    }

    v7 = SHIBYTE(v47);
    v8 = __p[0];
    if (v47 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (v47 >= 0)
    {
      v10 = SHIBYTE(v47);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = (v9 + v10);
    if (v10 >= 9)
    {
      v12 = v9;
      do
      {
        v13 = memchr(v12, 109, v10 - 8);
        if (!v13)
        {
          break;
        }

        if (*v13 == 0x2F3A79726F6D656DLL && *(v13 + 8) == 47)
        {
          goto LABEL_31;
        }

        v12 = (v13 + 1);
        v10 = v11 - v12;
      }

      while (v11 - v12 > 8);
    }

    v13 = v11;
LABEL_31:
    v16 = v13 != v11 && v13 == v9;
    if (v7 < 0)
    {
      operator delete(v8);
      if (v16)
      {
        goto LABEL_39;
      }
    }

    else if (v16)
    {
LABEL_39:
      *&v45.__pn_.__r_.__value_.__l.__data_ = 0uLL;
      Instance = pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(v13);
      if (*(a1 + 847) < 0)
      {
        sub_29A008D14(&__dst, *(a1 + 824), *(a1 + 832));
      }

      else
      {
        *&__dst.__r_.__value_.__l.__data_ = *v6;
        __dst.__r_.__value_.__r.__words[2] = *(a1 + 840);
      }

      pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::FindOrOpenZipFile(Instance, &__dst, __p);
      v43.__r_.__value_.__r.__words[0] = &v45;
      v43.__r_.__value_.__l.__size_ = a1 + 512;
      sub_29A57827C(&v43, __p);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v47);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v45.__pn_.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v45.__pn_.__r_.__value_.__l.__size_);
      }

      goto LABEL_68;
    }

    std::__fs::filesystem::__status((a1 + 824), 0);
    if (LOBYTE(__p[0]) == 255 || !LOBYTE(__p[0]))
    {
      v18 = sub_29AABB028();
      if (*(a1 + 847) < 0)
      {
        sub_29A008D14(&__dst, *(a1 + 824), *(a1 + 832));
      }

      else
      {
        *&__dst.__r_.__value_.__l.__data_ = *v6;
        __dst.__r_.__value_.__r.__words[2] = *(a1 + 840);
      }

      v19 = std::string::insert(&__dst, 0, "File not found: ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v47 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      sub_29AA69D84(v18, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      return 50;
    }

    if (*(a1 + 847) < 0)
    {
      sub_29A008D14(__p, *(a1 + 824), *(a1 + 832));
    }

    else
    {
      *__p = *v6;
      v47 = *(a1 + 840);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(__p, &__dst);
    v22 = *&__dst.__r_.__value_.__l.__data_;
    if (__dst.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((__dst.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 512) = v22;
    v23 = *(a1 + 520);
    *(a1 + 520) = *(&v22 + 1);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&__dst);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_68:
  if (!*(a1 + 512))
  {
    v36 = sub_29AABB028();
    if (*(a1 + 847) < 0)
    {
      sub_29A008D14(&__dst, *(a1 + 824), *(a1 + 832));
    }

    else
    {
      __dst = *(a1 + 824);
    }

    v37 = std::string::insert(&__dst, 0, "Unable to open: ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v47 = v37->__r_.__value_.__r.__words[2];
    *__p = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    sub_29AA69D84(v36, __p);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return 500;
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin((a1 + 512), __p);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&__dst);
  v24 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(__p, &__dst);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&__dst.__r_.__value_.__l.__data_);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(__p);
  if (v24)
  {
    return 500;
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin((a1 + 512), &v49);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v48);
  v25 = 1;
  while (pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v49, &v48))
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(&v49, __p);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator->(&v49, &v45);
    if ((v45.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v45;
    }

    else
    {
      v26 = v45.__pn_.__r_.__value_.__r.__words[0];
    }

    sub_29A008E78(&__dst, v26);
    if (SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__pn_.__r_.__value_.__l.__data_);
      if ((v25 & 1) == 0)
      {
LABEL_80:
        sub_29A095658((a1 + 944), &__dst.__r_.__value_.__l.__data_, &__dst);
LABEL_88:
        if (*(a1 + 394))
        {
          goto LABEL_117;
        }

        v30 = v47;
        sub_29A8CCEB8(&v43, &__dst);
        sub_29AA33B6C(&v43, &v45);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        sub_29AA33A10(&v45, a1 + 264, &v43);
        sub_29A8CCEB8(&v41.__pn_, &__dst);
        sub_29AA33A10(&v41, a1 + 264, &v42);
        if (SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__pn_.__r_.__value_.__l.__data_);
        }

        File = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFile(&v49);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v40, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
        }

        else
        {
          v40 = v43;
        }

        sub_29AA869A0(&v40);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v41, v42.__pn_.__r_.__value_.__l.__data_, v42.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v41 = v42;
        }

        if ((v41.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v41;
        }

        else
        {
          v32 = v41.__pn_.__r_.__value_.__r.__words[0];
        }

        v33 = fopen(v32, "wb");
        v34 = v33;
        if (SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__pn_.__r_.__value_.__l.__data_);
          if (v34)
          {
            goto LABEL_106;
          }
        }

        else if (v33)
        {
LABEL_106:
          if (v30 <= fwrite(File, 1uLL, v30, v34))
          {
            fclose(v34);
            v35 = 1;
          }

          else
          {
            v35 = 0;
            v1 = 500;
          }

LABEL_111:
          if (SHIBYTE(v42.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (v35)
            {
              goto LABEL_117;
            }

LABEL_119:
            v29 = 0;
            v25 = 0;
LABEL_120:
            v21 = v1;
            goto LABEL_121;
          }

          operator delete(v45.__pn_.__r_.__value_.__l.__data_);
          if ((v35 & 1) == 0)
          {
            goto LABEL_119;
          }

LABEL_117:
          v25 = 0;
          v29 = 1;
          goto LABEL_120;
        }

        v35 = 0;
        v1 = 403;
        goto LABEL_111;
      }
    }

    else if ((v25 & 1) == 0)
    {
      goto LABEL_80;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&v44, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = __dst;
    }

    v27 = sub_29AA8CDFC(a1, &v44);
    v21 = v27;
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if (!v21)
      {
        goto LABEL_88;
      }
    }

    else if (!v27)
    {
      goto LABEL_88;
    }

    v28 = sub_29AABB028();
    sub_29A008E78(&v45, "Error: Cannot write to the compression output folder.");
    sub_29AA5B750(v28, &v45);
    if (SHIBYTE(v45.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__pn_.__r_.__value_.__l.__data_);
    }

    v29 = 0;
    v25 = 1;
LABEL_121:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (!v29)
    {
      goto LABEL_128;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v49);
    v1 = v21;
  }

  v21 = 0;
LABEL_128:
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v48);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v49);
  return v21;
}

void sub_29AA92A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA92BF4(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
    v6 = *(a1 + 232);
  }

  if (*(a1 + 100) == 2)
  {
    if (*(a1 + 143) < 0)
    {
      sub_29A008D14(&v3, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      v3 = *(a1 + 120);
      v4 = *(a1 + 136);
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(__dst);
    }

    __dst = v3;
    v6 = v4;
  }

  v2 = *(a1 + 768);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

void sub_29AA92D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA92DC0(uint64_t a1, void *a2, const void **a3, __int128 *a4)
{
  if (!sub_29A5DAB7C((a1 + 904), a3))
  {
    v7 = operator new(0xE0uLL);
    if (*(a4 + 23) < 0)
    {
      sub_29A008D14(&__dst, *a4, *(a4 + 1));
    }

    else
    {
      __dst = *a4;
      v9 = *(a4 + 2);
    }

    sub_29AA9F2A4(v7, a2);
  }

  return 0;
}

void sub_29AA93200(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29AA87FE4(&v21);
  v4 = *(a1 + 920);
  if (v4)
  {
    while (1)
    {
      ++*(a2 + 20);
      v5 = v4[5];
      v6 = *(v5 + 88);
      v7 = (v5 + 96);
      if (v6 != (v5 + 96))
      {
        break;
      }

LABEL_42:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_43;
      }
    }

    while (1)
    {
      v9 = v6[4];
      v8 = v6[5];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (v9 + 72);
      v11 = *(v9 + 95);
      if (*(v9 + 95) < 0)
      {
        if (*(v9 + 80) != 4)
        {
          goto LABEL_15;
        }

        v12 = *v10;
      }

      else
      {
        v12 = (v9 + 72);
        if (v11 != 4)
        {
          goto LABEL_12;
        }
      }

      if (*v12 == 1752393037)
      {
        ++*a2;
        v11 = *(v9 + 95);
        if ((v11 & 0x80) == 0)
        {
LABEL_12:
          if (v11 == 10)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      else if ((v11 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_15:
      if (*(v9 + 80) == 10)
      {
        v10 = *v10;
LABEL_17:
        v13 = *v10;
        v14 = *(v10 + 4);
        v15 = v13 == 0x736275536D6F6547 && v14 == 29797;
        if (v15)
        {
          ++*(a2 + 4);
        }
      }

LABEL_23:
      if (*(v9 + 96) == 1)
      {
        ++*(a2 + 8);
      }

      for (i = v22; i != &v21; i = *(i + 8))
      {
        if (*(i + 39) < 0)
        {
          sub_29A008D14(__p, *(i + 16), *(i + 24));
        }

        else
        {
          *__p = *(i + 16);
          v20 = *(i + 32);
        }

        if (v9 + 232 != sub_29A01BCCC(v9 + 224, __p))
        {
          ++*(a2 + 16);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v15 = *v18 == v6;
          v6 = v18;
        }

        while (!v15);
      }

      v6 = v18;
      if (v18 == v7)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  sub_29A116F64(&v21);
}

void sub_29AA93428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29A116F64(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA93460(uint64_t a1)
{
  v6[2] = *MEMORY[0x29EDCA608];
  sub_29A008E78(&__p, "TemporaryDirectory");
  v6[1] = &off_2A2070A00;
  sub_29AA9EE84(v6, a1 + 312);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a1 + 496), &__p, v6, ":");
  sub_29A186B14(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = *(a1 + 96);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return sub_29AA935D8(a1);
    }

    if (v2 == 3)
    {
      sub_29AA94650(a1);
    }
  }

  else if (v2 <= 1)
  {
    return sub_29AA935D8(a1);
  }

  v3 = sub_29AABB028();
  sub_29A008E78(&__p, "Unsupported compress stage type");
  sub_29AA5B750(v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 83;
}

void sub_29AA935A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29A186B14(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA935D8(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 394) == 1 && (*(a1 + 104) | 4) == 6 || (*(a1 + 392) & 1) == 0 && *(a1 + 405) != 1)
  {
    goto LABEL_25;
  }

  if (*(a1 + 359) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 336), *(a1 + 344));
  }

  else
  {
    __dst = *(a1 + 336);
    v18 = *(a1 + 352);
  }

  v2 = sub_29AA869A0(&__dst);
  v3 = v2;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else if (v2)
  {
LABEL_10:
    if ((*(a1 + 399) & 1) == 0)
    {
      if (*(a1 + 359) < 0)
      {
        sub_29A008D14(__p, *(a1 + 336), *(a1 + 344));
      }

      else
      {
        *__p = *(a1 + 336);
        v12 = *(a1 + 352);
      }

      sub_29AA9E938((a1 + 1064), __p, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_25:
    v16 = 0;
    if (sub_29AA84E9C((a1 + 472), "*"))
    {
      v7 = sub_29AA84F14((a1 + 472), "*");
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v16, v7);
    }

    *(sub_29A5A70E0((a1 + 536)) + 1266) = *(a1 + 411);
    *(a1 + 384) = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 1065353216;
    v8 = sub_29A5A70E0((a1 + 536));
    pxrInternal__aapl__pxrReserved__::UsdStage::TraverseAll(v8);
  }

  v4 = sub_29AABB028();
  if (*(a1 + 359) < 0)
  {
    sub_29A008D14(&v10, *(a1 + 336), *(a1 + 344));
  }

  else
  {
    v10 = *(a1 + 336);
  }

  v5 = std::string::insert(&v10, 0, "Failed to create directory: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_29AA69D84(v4, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return 406;
}

void sub_29AA94354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_29A0D2850(&a59);
  sub_29A5888DC(&a65);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a69);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(&a72);
  sub_29A57F434(&STACK[0x200]);
  sub_29A58BBB4(&STACK[0x220]);
  sub_29A58BBB4(&STACK[0x240]);
  sub_29A58BD10(&STACK[0x260]);
  sub_29A89AD9C(v72 - 208);
  sub_29A184A10((v72 - 168), 0);
  _Unwind_Resume(a1);
}

void sub_29AA94650(uint64_t a1)
{
  v6[6] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  if (sub_29AA84E9C((a1 + 472), "*"))
  {
    v2 = sub_29AA84F14((a1 + 472), "*");
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(v6, v2);
  }

  if (*(a1 + 239) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
  }

  if (*(a1 + 100) == 2)
  {
    if (*(a1 + 143) < 0)
    {
      sub_29A008D14(&v3, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      v3 = *(a1 + 120);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v3;
  }

  v4 = *(a1 + 768);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

uint64_t sub_29AA94FF0(uint64_t a1)
{
  v10[2] = *MEMORY[0x29EDCA608];
  if (*(a1 + 96) == 3)
  {
    v2 = sub_29AA9522C(a1);
  }

  else
  {
    v2 = sub_29AA952FC(a1);
  }

  v3 = v2;
  if ((*(a1 + 395) & 1) == 0 && *(a1 + 392) == 1)
  {
    v8 = 0;
    v9 = 0;
    if (sub_29AA84E9C((a1 + 496), "CompressedData"))
    {
      v4 = sub_29AA84F14((a1 + 496), "CompressedData");
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v9, v4);
      if (sub_29AA84E9C(&v9, "CompressedBitstreams"))
      {
        v5 = sub_29AA84F14(&v9, "CompressedBitstreams");
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v8, v5);
        if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&v8))
        {
          sub_29A008E78(&__p, "CompressedBitstreams");
          pxrInternal__aapl__pxrReserved__::VtDictionary::erase(&v9, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&__p, "CompressedData");
          v10[1] = &off_2A2042030;
          sub_29A187864(v10, &v9);
          pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a1 + 496), &__p, v10, ":");
          sub_29A186B14(v10);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&v9))
      {
        sub_29A008E78(&__p, "CompressedData");
        pxrInternal__aapl__pxrReserved__::VtDictionary::erase((a1 + 496), &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_29A184A10(&v8, 0);
    sub_29A184A10(&v9, 0);
  }

  *(a1 + 400) = v3 == 0;
  return v3;
}

void sub_29AA951CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, void **a16, __int16 a17, char a18, char a19)
{
  sub_29A186B14(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A184A10(&a15, 0);
  sub_29A184A10(&a16, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA9522C(uint64_t a1)
{
  if (*(a1 + 928))
  {
    if ((*(a1 + 104) | 4) == 6)
    {

      return sub_29AA9542C(a1);
    }

    else
    {
      v3 = sub_29AABB028();
      sub_29A008E78(__p, "Output format is not supported.");
      sub_29AA5B750(v3, __p);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }

      return 9;
    }
  }

  else
  {
    v2 = sub_29AABB028();
    sub_29A008E78(__p, "Unable to save layers");
    sub_29AA5B750(v2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    return 90;
  }
}

uint64_t sub_29AA952FC(uint64_t a1)
{
  if ((*(a1 + 397) & 1) == 0)
  {
    v2 = sub_29A3479FC(v10, (a1 + 1088));
    sub_29AA90120(v2, a1 + 1016, v10);
    sub_29A019EE8(v10, v10[1]);
    v3 = sub_29A3479FC(v9, (a1 + 1088));
    sub_29AA90120(v3, a1 + 992, v9);
    sub_29A019EE8(v9, v9[1]);
    v4 = sub_29A3479FC(v8, (a1 + 1088));
    sub_29AA90120(v4, a1 + 1040, v8);
    sub_29A019EE8(v8, v8[1]);
    v5 = sub_29A3479FC(v7, (a1 + 1088));
    sub_29AA90120(v5, a1 + 944, v7);
    sub_29A019EE8(v7, v7[1]);
  }

  if ((*(a1 + 403) & 1) == 0 && (*(a1 + 395) != 1 || *(a1 + 413) != 2))
  {
    sub_29AA95F0C(a1);
  }

  return sub_29AA957B0(a1);
}

uint64_t sub_29AA9542C(uint64_t a1)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (*(a1 + 395) == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(&v22, exception_object);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::operator=((a1 + 528), exception_object);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(exception_object);
    goto LABEL_16;
  }

  if (*(a1 + 263) < 0)
  {
    sub_29A008D14(__p, *(a1 + 240), *(a1 + 248));
  }

  else
  {
    *__p = *(a1 + 240);
    v21 = *(a1 + 256);
  }

  v2 = sub_29AA869A0(__p);
  v3 = v2;
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_11:
    v4 = sub_29AABB028();
    if (*(a1 + 263) < 0)
    {
      sub_29A008D14(&v17, *(a1 + 240), *(a1 + 248));
    }

    else
    {
      v17 = *(a1 + 240);
    }

    v11 = std::string::insert(&v17, 0, "Error when creating output USDZ folder: ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19 = v11->__r_.__value_.__r.__words[2];
    *exception_object = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v4, exception_object);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(exception_object[0]);
    }

    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v10 = v17.__r_.__value_.__r.__words[0];
    goto LABEL_30;
  }

  operator delete(__p[0]);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a1 + 167) < 0)
  {
    sub_29A008D14(exception_object, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *exception_object = *(a1 + 144);
    v19 = *(a1 + 160);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(exception_object, &v17);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::operator=((a1 + 528), &v17);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v17);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(exception_object[0]);
  }

LABEL_16:
  if (!*(a1 + 528))
  {
    v9 = sub_29AABB028();
    sub_29A008E78(exception_object, "Failed to create output USDZ object !");
    sub_29AA5B750(v9, exception_object);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
LABEL_31:
      v13 = 403;
      goto LABEL_46;
    }

    v10 = exception_object[0];
LABEL_30:
    operator delete(v10);
    goto LABEL_31;
  }

  sub_29AA9002C(a1);
  v5 = (a1 + 920);
  v6 = (a1 + 920);
  do
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_33;
    }

    v7 = v6[5];
  }

  while (*v7 != 1);
  if ((*(a1 + 396) & 1) == 0)
  {
    sub_29AA88658(v7);
  }

  v8 = sub_29AA9CF00(a1, v6 + 5);
LABEL_32:
  v13 = v8;
  if (!v8)
  {
LABEL_33:
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v14 = v5[5];
      if ((*v14 & 1) == 0)
      {
        if ((*(a1 + 396) & 1) == 0)
        {
          sub_29AA88658(v14);
        }

        v8 = sub_29AA9CF00(a1, v5 + 5);
        goto LABEL_32;
      }
    }

    v13 = sub_29AA9CC0C(a1);
    if (!v13)
    {
      if (pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::Save((a1 + 528)))
      {
        if (*(a1 + 395) == 1)
        {
          sub_29AA9D728(a1, &v22);
        }

        v13 = 0;
      }

      else
      {
        v15 = sub_29AABB028();
        sub_29A008E78(exception_object, "Error: Unable to export USDZ !");
        sub_29AA5B750(v15, exception_object);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(exception_object[0]);
        }

        v13 = 503;
      }
    }
  }

LABEL_46:
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v13;
}

void sub_29AA95794(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA957B0(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::VtDictionary::size((a1 + 504)))
  {
    v11 = 0;
    sub_29A008E78(&__dst, "CompressedBitstreams");
    v16 = &off_2A2042030;
    sub_29A187864(&v15, (a1 + 504));
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v11, &__dst, &v15, ":");
    sub_29A186B14(&v15);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__dst, "CompressedData");
    v16 = &off_2A2042030;
    sub_29A187864(&v15, &v11);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a1 + 496), &__dst, &v15, ":");
    sub_29A186B14(&v15);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_29A184A10(&v11, 0);
  }

  if ((*(a1 + 104) | 4) == 6)
  {
    if (sub_29AA96A0C(a1))
    {
      v2 = sub_29AABB028();
      sub_29A008E78(&__dst, "Error when exporting to usdz");
      sub_29AA5B750(v2, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      return 503;
    }

    else
    {
      v3 = 0;
      *(a1 + 400) = 1;
    }
  }

  else
  {
    v4 = *(a1 + 96);
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v9 = sub_29A5A70E0((a1 + 536));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v9, &v13);
        sub_29A1DA6E4(&v13);
      }

      if (v4 == 3)
      {
        v6 = sub_29A3302A8((a1 + 768));
        if (*(a1 + 311) < 0)
        {
          sub_29A008D14(&__dst, *(a1 + 288), *(a1 + 296));
        }

        else
        {
          __dst = *(a1 + 288);
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v12[0] = 0;
        v12[1] = 0;
        v11 = v12;
        pxrInternal__aapl__pxrReserved__::SdfLayer::Export(v6);
      }
    }

    else
    {
      if (!v4)
      {
        v8 = sub_29A5A70E0((a1 + 536));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v8, &v13);
        sub_29A1DA6E4(&v13);
      }

      if (v4 == 1)
      {
        v5 = sub_29A5A70E0((a1 + 536));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v5, &v13);
        sub_29A1DA6E4(&v13);
      }
    }

    v7 = sub_29AABB028();
    sub_29A008E78(&__dst, "Error when saving the stage");
    sub_29AA5B750(v7, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return 82;
  }

  return v3;
}

void sub_29AA95F0C(uint64_t a1)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v7[3] = 0;
  v7[4] = 0;
  sub_29A008E78(v7, "USDC");
  if (*(a1 + 108) == 1)
  {
    memset(&v8[3], 0, 24);
    v2 = sub_29A5A70E0((a1 + 536));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v2, v8);
    sub_29A1DA6E4(v8);
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v5 = 0;
  v3 = sub_29A5A70E0((a1 + 536));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v3, &v6);
  sub_29A1DA6E4(&v6);
}

void sub_29AA966D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void **a26, void **a27, __int16 a28, char a29, char a30)
{
  sub_29A186B14(v30 - 64);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_29A184A10(&a26, 0);
  sub_29A184A10(&a27, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA969C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AA9EF0C(a1, a2, a3);
  return a1;
}

uint64_t sub_29AA96A0C(uint64_t a1)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (*(a1 + 395) == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(&v36, __p);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::operator=((a1 + 528), __p);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(__p);
    goto LABEL_16;
  }

  if (*(a1 + 263) < 0)
  {
    sub_29A008D14(&__dst, *(a1 + 240), *(a1 + 248));
  }

  else
  {
    __dst = *(a1 + 240);
    v35 = *(a1 + 256);
  }

  v2 = sub_29AA869A0(&__dst);
  v3 = v2;
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_11:
    v4 = sub_29AABB028();
    if (*(a1 + 263) < 0)
    {
      sub_29A008D14(&v31, *(a1 + 240), *(a1 + 248));
    }

    else
    {
      v31 = *(a1 + 240);
    }

    v14 = std::string::insert(&v31, 0, "Error when creating output USDZ folder: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v33 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v4, __p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v13 = v31.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  operator delete(__dst);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a1 + 167) < 0)
  {
    sub_29A008D14(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v33 = *(a1 + 160);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(__p, &v31);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::operator=((a1 + 528), &v31);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v31);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_16:
  if (!*(a1 + 528))
  {
    v12 = sub_29AABB028();
    sub_29A008E78(__p, "Failed to create output USDZ object !");
    sub_29AA5B750(v12, __p);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
LABEL_38:
      v16 = 0;
      LOBYTE(v17) = 0;
      v18 = 403;
      goto LABEL_70;
    }

    v13 = __p[0];
LABEL_37:
    operator delete(v13);
    goto LABEL_38;
  }

  if (*(a1 + 394) != 1)
  {
    if (*(a1 + 335) < 0)
    {
      sub_29A008D14(v26, *(a1 + 312), *(a1 + 320));
    }

    else
    {
      *v26 = *(a1 + 312);
      v27 = *(a1 + 328);
    }

    sub_29AA869A0(v26);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    v19 = sub_29A5A70E0((a1 + 536));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v19, &v30);
    sub_29A1DA6E4(&v30);
  }

  v5 = *(a1 + 108);
  if (!v5)
  {
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    v20 = sub_29A5A70E0((a1 + 536));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v20, &v31);
    sub_29A1DA6E4(&v31);
  }

  if (v5 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    v6 = *(a1 + 96);
    if (v6 == 3)
    {
      v8 = sub_29A3302A8((a1 + 768));
      memset(&v31, 0, sizeof(v31));
      v28[1] = 0;
      v29 = 0;
      v28[0] = &v28[1];
      v9 = pxrInternal__aapl__pxrReserved__::SdfLayer::Export(v8, __p, &v31, v28);
      sub_29A01752C(v28, v28[1]);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        v10 = __p[0];
        v11 = __p[1];
        if (*(a1 + 439) < 0)
        {
          sub_29A008D14(v28, *(a1 + 416), *(a1 + 424));
        }

        else
        {
          *v28 = *(a1 + 416);
          v29 = *(a1 + 432);
        }

        pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile((a1 + 528), v10, v11 - v10, v28, *(a1 + 408), *(a1 + 408), &v31);
        size = v31.__r_.__value_.__l.__size_;
        v16 = v31.__r_.__value_.__r.__words[0];
        v17 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        *(&v31.__r_.__value_.__s + 23) = 0;
        v31.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        goto LABEL_51;
      }
    }

    else if (v6 == 2)
    {
      v7 = sub_29A5A70E0((a1 + 536));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v7, &v30);
      sub_29A1DA6E4(&v30);
    }

    v16 = 0;
    size = 0;
    v17 = 0;
LABEL_51:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v17 & 0x80u) == 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = size;
    }

    if (v23)
    {
      if (*(a1 + 439) < 0)
      {
        sub_29A008D14(__p, *(a1 + 416), *(a1 + 424));
      }

      else
      {
        *__p = *(a1 + 416);
        v33 = *(a1 + 432);
      }

      sub_29AA9E938((a1 + 1112), __p, __p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = sub_29AA9CC0C(a1);
    if (!v18)
    {
      if (pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::Save((a1 + 528)))
      {
        if (*(a1 + 395) == 1)
        {
          sub_29AA9D728(a1, &v36);
        }

        v18 = 0;
      }

      else
      {
        v24 = sub_29AABB028();
        sub_29A008E78(__p, "Error: Unable to export USDZ !");
        sub_29AA5B750(v24, __p);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        v18 = 503;
      }
    }

    goto LABEL_70;
  }

  v21 = sub_29AABB028();
  sub_29A008E78(__p, "Unsupported compressed file type");
  sub_29AA5B750(v21, __p);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 501;
LABEL_70:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(v16);
  }

  return v18;
}

void sub_29AA971B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 56);
  if (v39)
  {
    *(v37 - 48) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA97460(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, pxrInternal__aapl__pxrReserved__::VtDictionary *a5@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  *a5 = 0;
  sub_29A008E78(&v14, "ReferencePath");
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  v19 = &off_2A2044DD0;
  sub_29A1B01B8(&v18, __p);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, &v18, ":");
  sub_29A186B14(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v14, "CompressedBitstreamPath");
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v17 = *(a3 + 16);
  }

  v19 = &off_2A2044DD0;
  sub_29A1B01B8(&v18, __p);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, &v18, ":");
  sub_29A186B14(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v14, "SelectCodec");
  sub_29A008E78(__p, "pmc");
  v19 = &off_2A2044DD0;
  sub_29A1B01B8(&v18, __p);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, &v18, ":");
  sub_29A186B14(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v14, "CompressionLevel");
  __p[1] = &unk_2A204447B;
  LOBYTE(__p[0]) = 10;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, __p, ":");
  sub_29A186B14(__p);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v14, "UnifyIndices");
  __p[1] = &unk_2A20443C3;
  LOBYTE(__p[0]) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, __p, ":");
  sub_29A186B14(__p);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v14, "PreserveVertexOrdering");
  __p[1] = &unk_2A20443C3;
  LOBYTE(__p[0]) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, __p, ":");
  sub_29A186B14(__p);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 404) == 1)
  {
    sub_29A008E78(&v14, "DumpBitstreamData");
    __p[1] = &unk_2A20443C3;
    LOBYTE(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, __p, ":");
    sub_29A186B14(__p);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  v18 = 0;
  v10 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      if (*(v10 + 55) < 0)
      {
        sub_29A008D14(&v14, v10[4], v10[5]);
      }

      else
      {
        v14 = *(v10 + 4);
      }

      v15 = v10[7];
      __p[0] = v15;
      __p[1] = &off_2A2070AC8 + 1;
      pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v18, &v14, __p, ":");
      sub_29A186B14(__p);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != a4 + 1);
  }

  if (a4[2])
  {
    sub_29A008E78(&v14, "AttributeDescription");
    __p[1] = &off_2A2042030;
    sub_29A187864(__p, &v18);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a5, &v14, __p, ":");
    sub_29A186B14(__p);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  sub_29A184A10(&v18, 0);
}