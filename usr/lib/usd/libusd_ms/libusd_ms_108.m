uint64_t sub_29AABA88C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  v4 = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = v4;
  std::string::operator=((a1 + 80), (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  if (a1 != a2)
  {
    sub_29A36CF34((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_29AABA918(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AABA998(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AABA998(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = sub_29A42FEA8(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AABAA1C(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29AABAA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  *(result + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    result = sub_29A008D14(result + 40, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(result + 40) = *(a2 + 8);
    *(result + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
  return result;
}

void sub_29AABAAA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AABAAC4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29AABAAC4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_29AABAB28(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AABABC0(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29AABABC0@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A89C7A4(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

uint64_t **sub_29AABAC40(uint64_t **result, __int128 *a2, __int128 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v18[0] = (v8 + 4);
          v18[1] = (v8 + 7);
          sub_29AABADD0(v18, (v9 + 2));
          v10 = sub_29A0286E4(v5, v18, v17 + 4);
          sub_29A00B204(v5, v18[0], v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = *(v9 + 1);
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v17;
          if (v17)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29AABAE7C(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AABAED4(v5, a2 + 2);
      v13 = *(a2 + 1);
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
          v14 = *(a2 + 2);
          v12 = *v14 == a2;
          a2 = v14;
        }

        while (!v12);
      }

      a2 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

void sub_29AABADBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AABAE7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AABADD0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  std::string::operator=(v4, (a2 + 24));
  std::string::operator=((v4 + 24), (a2 + 48));
  std::string::operator=((v4 + 48), (a2 + 72));
  v5 = *(a2 + 100);
  *(v4 + 72) = *(a2 + 96);
  *(v4 + 76) = v5;
  std::string::operator=((v4 + 80), (a2 + 104));
  *(v4 + 104) = *(a2 + 128);
  if (v4 != a2 + 24)
  {
    sub_29A36CF34((v4 + 112), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
  }

  *(v4 + 136) = *(a2 + 160);
  return a1;
}

uint64_t sub_29AABAE7C(uint64_t a1)
{
  sub_29AA7AD68(*a1, *(a1 + 16));
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

    sub_29AA7AD68(*a1, v2);
  }

  return a1;
}

const void **sub_29AABAED4(uint64_t **a1, __int128 *a2)
{
  sub_29AABAF44(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29AABAF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AA7E058(va, 0);
  _Unwind_Resume(a1);
}

_BYTE *sub_29AABAF44@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xC8uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29AABAFB0(v6 + 32, a2);
  *(a3 + 16) = 1;
  return result;
}

_BYTE *sub_29AABAFB0(_BYTE *__dst, __int128 *a2)
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

  sub_29AA7AC00(__dst + 24, (a2 + 24));
  return __dst;
}

void sub_29AABB00C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

os_log_t *sub_29AABB028()
{
  if ((atomic_load_explicit(&qword_2A1747AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747AA8))
  {
    sub_29AABB0C8(&qword_2A1747AA0);
    __cxa_atexit(sub_29AABB0C4, &qword_2A1747AA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747AA8);
  }

  return &qword_2A1747AA0;
}

os_log_t *sub_29AABB0C8(os_log_t *a1)
{
  *a1 = 0;
  if (os_variant_has_internal_content())
  {
    *a1 = os_log_create("com.apple.usdlib", "aaplUsdGclCodec");
  }

  return a1;
}

void **sub_29AABB118(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

void sub_29AABB14C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (a1[1] == 13)
    {
      a1 = *a1;
      goto LABEL_7;
    }

LABEL_11:

    sub_29A008E78(a2, "");
    return;
  }

  if (v4 != 13)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (*a1 != 0x73736572706D6F63 || *(a1 + 5) != 0x64496E6F69737365)
  {
    goto LABEL_11;
  }

  std::to_string(&v20, 3);
  v6 = std::string::append(&v20, ".");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, 0);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v21, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ".");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v18, 1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v18.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v23, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  a2[2] = *(&v16->__r_.__value_.__l + 2);
  *a2 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_29AABB358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AABB3EC(void *a1@<X0>, void *a2@<X1>, pxrInternal__aapl__pxrReserved__::VtDictionary *a3@<X8>)
{
  *a3 = 0;
  sub_29A008E78(__p, "macOS");
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
  sub_29AABB760(v6, "0.0");
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "iOS");
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
  sub_29AABB760(v7, "0.0");
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "visionOS");
  v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
  sub_29AABB760(v8, "0.0");
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "tvOS");
  v9 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
  sub_29AABB760(v9, "0.0");
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (*a1)
  {
    sub_29A008E78(__p, "macOS");
    v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v10, "15.4");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "iOS");
    v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v11, "18.4");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "visionOS");
    v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v12, "2.4");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "tvOS");
    v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v13, "18.4");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a2)
  {
    sub_29A008E78(__p, "macOS");
    v14 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v14, "99.99");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "iOS");
    v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v15, "99.99");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "visionOS");
    v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v16, "99.99");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "tvOS");
    v17 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, __p);
    sub_29AABB760(v17, "99.99");
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_29AABB760(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29AABB7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AABB7FC(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(a1, &v31);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator*(&v31, __dst);
  v22 = __dst[0];
  v23 = SHIBYTE(v30);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(a1, &v28);
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::end(__dst);
    v6 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v28, __dst);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(__dst);
    if (!v6)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator*(&v28, &v24);
    v25 = v24;
    memset(&v24, 0, sizeof(v24));
    sub_29AA81918(&v25, __p);
    if (SHIBYTE(v27) < 0)
    {
      sub_29A008D14(__dst, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *__dst = *__p;
      v30 = v27;
    }

    if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__pn_.__r_.__value_.__l.__data_);
    }

    v7 = HIBYTE(v30);
    if (v30 >= 0)
    {
      v8 = __dst;
    }

    else
    {
      v8 = __dst[0];
    }

    if (v30 >= 0)
    {
      v9 = HIBYTE(v30);
    }

    else
    {
      v9 = __dst[1];
    }

    if (v9)
    {
      do
      {
        *v8 = __tolower(*v8);
        v8 = (v8 + 1);
        --v9;
      }

      while (v9);
      v7 = HIBYTE(v30);
    }

    if ((v7 & 0x80) != 0)
    {
      v11 = __dst[1];
      if (__dst[1] != 5)
      {
        goto LABEL_36;
      }

      v10 = __dst[0];
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_30;
      }

      v10 = __dst;
    }

    v12 = *v10;
    v13 = *(v10 + 4);
    if (v12 == 1769365806 && v13 == 102)
    {
      pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator*(&v28, __p);
      sub_29AABBC0C(a2);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = HIBYTE(v30);
      if ((v30 & 0x8000000000000000) == 0)
      {
LABEL_30:
        if (v7 != 4)
        {
          goto LABEL_40;
        }

        v15 = __dst;
        v7 = 4;
        goto LABEL_38;
      }
    }

    else if ((v7 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v11 = __dst[1];
LABEL_36:
    if (v11 != 4)
    {
      goto LABEL_45;
    }

    v15 = __dst[0];
LABEL_38:
    if (*v15 == 1668116526)
    {
      pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator*(&v28, __p);
      sub_29AABBC0C(a3);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = HIBYTE(v30);
      if ((v30 & 0x8000000000000000) == 0)
      {
LABEL_40:
        if (v7 != 5)
        {
          goto LABEL_53;
        }

        v16 = __dst;
        LOBYTE(v7) = 5;
        goto LABEL_47;
      }
    }

    else if ((v7 & 0x80) == 0)
    {
      goto LABEL_40;
    }

LABEL_45:
    if (__dst[1] != 5)
    {
      goto LABEL_52;
    }

    v16 = __dst[0];
LABEL_47:
    v17 = *v16;
    v18 = *(v16 + 4);
    if (v17 != 1685288238 || v18 != 122)
    {
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_53;
      }

LABEL_52:
      operator delete(__dst[0]);
      goto LABEL_53;
    }

    File = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFile(&v28);
    sub_29A008E78(__p, File);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(__p, &v25);
    sub_29AABB7FC(&v25, a2, a3);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v25);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v28);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v28);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v31);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  return 0;
}

void sub_29AABBB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, int a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator((v38 - 88));
  if (a12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29AABBC0C(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_13;
    }

    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = atomic_load((v3 - 16));
    if (v4 != 1)
    {
      goto LABEL_13;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(a1 + 24))
      {
        v5 = a1;
      }

      else
      {
        v5 = (v3 - 8);
      }

      v6 = *v5;
    }

    else
    {
LABEL_10:
      v6 = 0;
    }

    if (v2 != v6)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v3 + 8 * v2);
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2BD17C(a1, v2);
  }

  sub_29B2BD100(a1);
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::inspectUSDZ(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "filename");
  *(&v21 + 1) = &off_2A2044DD0;
  sub_29A1B01B8(&v21, a1);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, __p, &v21, ":");
  sub_29A186B14(&v21);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a1, v18);
  v17 = 0;
  *__p = 0u;
  v16 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_29AABB7FC(v18, __p, &v21);
  if (__p[0])
  {
    sub_29A008E78(&v14, "avif");
    v20 = off_2A2047A80;
    v5 = operator new(0x30uLL);
    v6 = v16;
    *v5 = *__p;
    *(v5 + 1) = v6;
    v7 = v17;
    *(v5 + 4) = v17;
    if (v7)
    {
      v8 = (v7 - 16);
      if (*(v5 + 3))
      {
        v8 = *(v5 + 3);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v5 + 10);
    v19 = v5;
    atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (v21)
  {
    sub_29A008E78(&v14, "mesh");
    v20 = off_2A2047A80;
    v9 = operator new(0x30uLL);
    v10 = v22;
    *v9 = v21;
    *(v9 + 1) = v10;
    v11 = v23;
    *(v9 + 4) = v23;
    if (v11)
    {
      v12 = (v11 - 16);
      if (*(v9 + 3))
      {
        v12 = *(v9 + 3);
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v9 + 10);
    v19 = v9;
    atomic_fetch_add_explicit(v9 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&v14, "minRequiredOS");
  sub_29AABB3EC(__p, &v21, &v13);
  v20 = &off_2A2042030;
  sub_29A187864(&v19, &v13);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
  sub_29A186B14(&v19);
  sub_29A184A10(&v13, 0);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29AABBF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_29A186B14(v25 - 80);
    if (a15 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AABC074(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    JUMPOUT(0x29AABBF8CLL);
  }

  JUMPOUT(0x29AABC008);
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::inspectUSDZ(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "filename");
  *(&v21 + 1) = 0;
  sub_29A3E274C(&v21, "");
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, __p, &v21, ":");
  sub_29A186B14(&v21);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a1, &v18);
  v17 = 0;
  *__p = 0u;
  v16 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_29AABB7FC(&v18, __p, &v21);
  if (__p[0])
  {
    sub_29A008E78(&v14, "avif");
    v20 = off_2A2047A80;
    v5 = operator new(0x30uLL);
    v6 = v16;
    *v5 = *__p;
    *(v5 + 1) = v6;
    v7 = v17;
    *(v5 + 4) = v17;
    if (v7)
    {
      v8 = (v7 - 16);
      if (*(v5 + 3))
      {
        v8 = *(v5 + 3);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v5 + 10);
    v19 = v5;
    atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (v21)
  {
    sub_29A008E78(&v14, "mesh");
    v20 = off_2A2047A80;
    v9 = operator new(0x30uLL);
    v10 = v22;
    *v9 = v21;
    *(v9 + 1) = v10;
    v11 = v23;
    *(v9 + 4) = v23;
    if (v11)
    {
      v12 = (v11 - 16);
      if (*(v9 + 3))
      {
        v12 = *(v9 + 3);
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v9 + 10);
    v19 = v9;
    atomic_fetch_add_explicit(v9 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
    sub_29A186B14(&v19);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&v14, "minRequiredOS");
  sub_29AABB3EC(__p, &v21, &v13);
  v20 = &off_2A2042030;
  sub_29A187864(&v19, &v13);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v14, &v19, ":");
  sub_29A186B14(&v19);
  sub_29A184A10(&v13, 0);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29AABC350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_29A186B14(v25 - 80);
    if (a15 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AABC46C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    JUMPOUT(0x29AABC384);
  }

  JUMPOUT(0x29AABC400);
}

uint64_t sub_29AABC4AC(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, pxrInternal__aapl__pxrReserved__::UsdZipFile *a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(a1, &v19);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v18);
  while (pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v19, &v18))
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator->(&v19, __p);
    v3 = v14;
    v4 = __p[0];
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(&v19, v10);
    if (v3 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = v4;
    }

    v15 = v5;
    *v16 = *v10;
    *&v16[16] = v11;
    v17 = v12;
    sub_29AABD68C(v20, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v19);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v18);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v19);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(a2, __p);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v19);
  while (1)
  {
    if (!pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(__p, &v19))
    {
      v8 = 0;
      goto LABEL_26;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator->(__p, v10);
    if ((SBYTE7(v11) & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v10[0];
    }

    sub_29A008E78(&v15, v6);
    v7 = sub_29A5DAB7C(v20, &v15);
    if ((v16[15] & 0x80000000) != 0)
    {
      operator delete(v15);
    }

    if (SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (!v7)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(__p, &v15);
    v8 = 3;
    if (*v16 != v7[6] || *&v16[8] != *(v7 + 7) || *&v16[24] != *(v7 + 36) || v16[26] != *(v7 + 74))
    {
      goto LABEL_26;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(__p);
  }

  v8 = 3;
LABEL_26:
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v19);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(__p);
  sub_29A0EB4E8(v20);
  return v8;
}

void sub_29AABC6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&a17);
  sub_29A0EB4E8(v32 - 96);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compareUSDZ(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  if (&v3[-*a1] == (a2[1] - *a2))
  {
    while (v4 != v3)
    {
      if (*v4 != *v5)
      {
        goto LABEL_5;
      }

      ++v4;
      ++v5;
    }

    return 0;
  }

  else
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a1, &v14);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(&v14, &v12);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v13);
    v6 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&v12, &v13);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v13);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v12);
    if (v6)
    {
      v7 = 4;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a2, &v12);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(&v12, &v13);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v11);
      v8 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&v13, &v11);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v11);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v13);
      if (v8)
      {
        v7 = 4;
      }

      else
      {
        v9 = sub_29AABC4AC(&v14, &v12);
        if (v9 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v9;
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v12);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v14);
  }

  return v7;
}

void sub_29AABC88C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(va);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compareUSDZ(std::string *a1, std::string *a2)
{
  v24[19] = *MEMORY[0x29EDCA608];
  sub_29A8CCEB8(&v22.__pn_, a1);
  std::__fs::filesystem::__status(&v22, 0);
  v4 = 1;
  if (v19.__pn_.__r_.__value_.__s.__data_[0] && v19.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    sub_29A8CCEB8(&v19.__pn_, a1);
    std::__fs::filesystem::__status(&v19, 0);
    v5 = !v16 || v16 == 255;
    v4 = v5;
    if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    if (v4)
    {
      return 4;
    }
  }

  else if (v4)
  {
    return 4;
  }

  sub_29A8CCEB8(&v22.__pn_, a1);
  v7 = std::__fs::filesystem::__file_size(&v22, 0);
  if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__pn_.__r_.__value_.__l.__data_);
  }

  sub_29A8CCEB8(&v22.__pn_, a2);
  v8 = std::__fs::filesystem::__file_size(&v22, 0);
  if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__pn_.__r_.__value_.__l.__data_);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = 0;
  v6 = 4;
  v15 = 0;
  if (v7 && v8)
  {
    sub_29A1B2C78(&v16, v7);
    sub_29A8CC8D8(&v22);
    v9 = MEMORY[0x29EDC9518];
    if (v23)
    {
      v10 = std::istream::read();
      if ((*(v10 + *(*v10 - 24) + 32) & 5) == 0)
      {
        sub_29A1B2C78(&__p, v8);
        sub_29A8CC8D8(&v19);
        if (v20)
        {
          v11 = std::istream::read();
          if ((*(v11 + *(*v11 - 24) + 32) & 5) == 0)
          {
            v6 = pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compareUSDZ(&v16, &__p);
          }
        }

        v19.__pn_.__r_.__value_.__r.__words[0] = *v9;
        *(v19.__pn_.__r_.__value_.__r.__words + *(v19.__pn_.__r_.__value_.__r.__words[0] - 24)) = v9[3];
        MEMORY[0x29C2C1D20](&v19.__pn_.__r_.__value_.__r.__words[2]);
        std::istream::~istream();
        MEMORY[0x29C2C4390](&v21);
      }
    }

    v22.__pn_.__r_.__value_.__r.__words[0] = *v9;
    *(v22.__pn_.__r_.__value_.__r.__words + *(v22.__pn_.__r_.__value_.__r.__words[0] - 24)) = v9[3];
    MEMORY[0x29C2C1D20](&v22.__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x29C2C4390](v24);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v6;
}

void sub_29AABCCB0(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A0DDFB0(va);
  sub_29A0DDFB0(&STACK[0x278]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a6)
  {
    operator delete(a6);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29AABCD44(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(a1, &v20);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v19);
  while (1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v20, &v19);
    if (!v3)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(&v20, v17);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator->(&v20, &__p);
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_29A008E78(v15, p_p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    v5 = v18;
    if (v18)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_29A1B2C78(&__p, v18);
      v6 = __p;
      File = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFile(&v20);
      memcpy(v6, File, v5);
      pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile(a2, __p, v13 - __p, v15, 1, 1uLL, v10);
      if (v11 < 0)
      {
        v8 = v10[1] == 0;
        operator delete(v10[0]);
      }

      else
      {
        v8 = v11 == 0;
      }

      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      if (v8)
      {
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        break;
      }
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator++(&v20);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v19);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v20);
  return !v3;
}

BOOL pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::setUSDZTimeStamps(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      return 0;
    }
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(a2 + 23))
  {
    return 0;
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a1, v8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v6);
  v3 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&v7, &v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v7);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(a2, &v7);
    v4 = sub_29AABCD44(v8, &v7);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v8);
  return v4;
}

void sub_29AABD000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(va);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(va1);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::setUSDZTimeStamps(uint64_t *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::begin(&v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v6);
  v3 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&v7, &v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v6);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v7);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(a2, &v7);
    v4 = sub_29AABCD44(&v8, &v7);
    pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v8);
  return v4;
}

void sub_29AABD0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(va);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::analyseStage(uint64_t *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = v4;
  sub_29A008E78(__p, "CloneStage");
  v7 = &unk_2A20443C3;
  LOBYTE(v6) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v5, __p, &v6, ":");
  sub_29A186B14(&v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(__p, "RestrictIOTypes");
  v7 = &unk_2A20443C3;
  LOBYTE(v6) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v5, __p, &v6, ":");
  sub_29A186B14(&v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

void sub_29AABD588(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  sub_29A186B14(&a36);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29AAA42E0(&a43);
}

const void **sub_29AABD68C(uint64_t *a1, uint64_t a2)
{
  sub_29AABD718(a1, a2, &__p);
  v3 = sub_29AA9E788(a1, __p);
  if ((v4 & 1) == 0)
  {
    v5 = __p;
    __p = 0;
    if (v5)
    {
      sub_29A0EC874(&v8, v5);
    }
  }

  return v3;
}

void sub_29AABD6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AABD718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_29A008E78(v6 + 2, *a2);
  *(v6 + 40) = *(a2 + 8);
  *(v6 + 56) = *(a2 + 24);
  *(v6 + 9) = *(a2 + 40);
  *(a3 + 16) = 1;
  result = sub_29A12A708(a1, (v6 + 16));
  *(v6 + 1) = result;
  return result;
}

void sub_29AABD7A8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0EC874(v3, v1);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin *pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin::UsdMtlxDiscoveryPlugin(pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::NdrDiscoveryPlugin(this);
  *v2 = &unk_2A2070C00;
  *(v2 + 24) = 0u;
  v3 = v2 + 24;
  v4 = v2 + 48;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  v5 = pxrInternal__aapl__pxrReserved__::UsdMtlxCustomSearchPaths(v2);
  if (v3 != v5)
  {
    sub_29A095E3C(v3, *v5, *(v5 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 1) - *v5) >> 3));
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdMtlxSearchPaths(v5);
  if (v4 != v6)
  {
    sub_29A095E3C(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
  }

  return this;
}

void sub_29AABD888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  sub_29A012C90(va);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(v2, v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin::DiscoverNodes(uint64_t *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocument(__p, &v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    sub_29A008E78(__p, "mtlx");
    sub_29A008E78(&v7, "mtlx");
    sub_29AABDE28(&v2, v4);
    sub_29AABDB60(a1, &v2, __p, v4);
    sub_29A01752C(v4, v4[1]);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::UsdMtlxStandardFileExtensions(v4);
}

void sub_29AABDA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A01752C(&a15, a16);
  sub_29A0D2850(&__p);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A403324(&a15);
  _Unwind_Resume(a1);
}

void sub_29AABDB60(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_2A1747AE0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BD1F0();
  }

  v8 = *a2;
  v9 = sub_29B1F31FC();
  sub_29AABE37C(v8, v9, &v30);
  v10 = v30;
  for (i = v31; v10 != i; v10 += 2)
  {
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v28);
    v12 = v10[1];
    v24 = *v10;
    v25 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Version = pxrInternal__aapl__pxrReserved__::UsdMtlxGetVersion(&v24, &v29);
    v27 = v13;
    v14 = (*v10 + 48);
    v15 = sub_29A01BCCC(a4, v14);
    v16 = (v15 + 56);
    if (a4 + 8 == v15)
    {
      v16 = v14;
    }

    if (*(v16 + 23) < 0)
    {
      sub_29A008D14(__p, *v16, v16[1]);
    }

    else
    {
      *__p = *v16;
      v23 = v16[2];
    }

    sub_29AABE2F0(*v10);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v21);
    v17 = atomic_load(&qword_2A1747AB0);
    if (!v17)
    {
      v17 = sub_29AABE754();
    }

    v18 = atomic_load(&qword_2A1747AB0);
    if (!v18)
    {
      v18 = sub_29AABE754();
    }

    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v20 = sub_29AABE4B8(a1, &v28, &Version, __p, &v21, v17, v18, a3, (a3 + 24));
    }

    else
    {
      sub_29AABE650(a1, v19, &v28, &Version, __p, &v21, v17, v18, a3, (a3 + 24));
      v20 = v19 + 216;
      a1[1] = v19 + 216;
    }

    a1[1] = v20;
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  __p[0] = &v30;
  sub_29A0176E4(__p);
}

void sub_29AABDD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v25 + 8) = v26;
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if ((a23 & 7) != 0)
  {
    atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a25;
  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29AABDE28(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  v2 = *a1;
  v3 = sub_29B1F31FC();
  sub_29AABE37C(v2, v3, &v35);
  v4 = v35;
  v5 = v36;
  if (v35 != v36)
  {
    v33 = v36;
    do
    {
      if (sub_29AABE8C0(*v4))
      {
        v7 = *v4;
        v6 = v4[1];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((atomic_load_explicit(&qword_2A1747AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747AD0))
        {
          sub_29A008E78(&unk_2A1747AB8, "inherit");
          __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A1747AB8, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1747AD0);
        }

        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = v7 + 48;
        v9 = v7;
        v10 = v6;
        do
        {
          v11 = sub_29A8877BC((v9 + 160), &unk_2A1747AB8);
          if (v11)
          {
            v12 = (v11 + 5);
          }

          else
          {
            v12 = sub_29B1F31FC();
          }

          v13 = *(v12 + 23);
          if (v13 < 0)
          {
            v13 = *(v12 + 1);
          }

          if (!v13)
          {
            break;
          }

          sub_29B1DA1A4(v9, &v37);
          v14 = sub_29A8877BC(v37 + 12, v12);
          if (v14)
          {
            v16 = v14[5];
            v15 = v14[6];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          if (v38)
          {
            sub_29A014BEC(v38);
          }

          if (v16)
          {
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v10)
            {
              sub_29A014BEC(v10);
            }

            v17 = *(v16 + 71);
            if ((v17 & 0x8000000000000000) != 0)
            {
              v17 = v16[7];
            }

            v18 = *(v8 + 23);
            if ((v18 & 0x8000000000000000) != 0)
            {
              v18 = *(v8 + 8);
            }

            if (v17 < v18)
            {
              v8 = (v16 + 6);
            }

            v9 = v16;
            v10 = v15;
          }

          if (v15)
          {
            sub_29A014BEC(v15);
          }
        }

        while (v16);
        v19 = sub_29A0F2D3C(a2, (v7 + 48), (v7 + 48), v8);
        if ((v20 & 1) == 0)
        {
          v21 = *(v8 + 23);
          if ((v21 & 0x8000000000000000) != 0)
          {
            v21 = *(v8 + 8);
          }

          v22 = *(v19 + 79);
          if ((v22 & 0x8000000000000000) != 0)
          {
            v22 = v19[8];
          }

          if (v21 < v22)
          {
            std::string::operator=((v19 + 7), v8);
          }
        }

        do
        {
          v23 = sub_29A8877BC((v7 + 160), &unk_2A1747AB8);
          if (v23)
          {
            v24 = (v23 + 5);
          }

          else
          {
            v24 = sub_29B1F31FC();
          }

          v25 = *(v24 + 23);
          if (v25 < 0)
          {
            v25 = *(v24 + 1);
          }

          if (!v25)
          {
            break;
          }

          sub_29B1DA1A4(v7, &v37);
          v26 = sub_29A8877BC(v37 + 12, v24);
          if (v26)
          {
            v27 = v26[5];
            v28 = v26[6];
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
          }

          if (v38)
          {
            sub_29A014BEC(v38);
          }

          if (v27)
          {
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v6)
            {
              sub_29A014BEC(v6);
            }

            v29 = sub_29A0F2D3C(a2, v27 + 6, v27 + 3, v8);
            v6 = v28;
            v7 = v27;
            if ((v30 & 1) == 0)
            {
              v31 = *(v8 + 23);
              if ((v31 & 0x8000000000000000) != 0)
              {
                v31 = *(v8 + 8);
              }

              v32 = *(v29 + 79);
              if ((v32 & 0x8000000000000000) != 0)
              {
                v32 = v29[8];
              }

              v6 = v28;
              v7 = v27;
              if (v31 < v32)
              {
                std::string::operator=((v29 + 7), v8);
                v6 = v28;
                v7 = v27;
              }
            }
          }

          if (v28)
          {
            sub_29A014BEC(v28);
          }
        }

        while (v27);
        if (v10)
        {
          sub_29A014BEC(v10);
        }

        v5 = v33;
        if (v6)
        {
          sub_29A014BEC(v6);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v37 = &v35;
  sub_29A0176E4(&v37);
}

void sub_29AABE198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  __cxa_guard_abort(&qword_2A1747AD0);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  a15 = &a12;
  sub_29A0176E4(&a15);
  sub_29A01752C(a11, *(a11 + 8));
  _Unwind_Resume(a1);
}

void sub_29AABE248()
{
  if (v1)
  {
    sub_29A014BEC(v1);
    if (!v0)
    {
      JUMPOUT(0x29AABE210);
    }

    JUMPOUT(0x29AABE208);
  }

  JUMPOUT(0x29AABE204);
}

uint64_t sub_29AABE268()
{
  v2 = nullsub_1514;
  return sub_29AABE940(v0);
}

void sub_29AABE2C8(void **a1)
{
  sub_29AABEAA4(a1);

  operator delete(v1);
}

__int128 *sub_29AABE2F0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC08[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AABE360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AABE37C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7F00(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AABE480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AABE4B8(uint64_t *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9)
{
  v9 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x12F684BDA12F684)
  {
    sub_29A00C9A4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v10)
  {
    v10 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v19 = 0x12F684BDA12F684;
  }

  else
  {
    v19 = v10;
  }

  v30 = a1;
  if (v19)
  {
    v20 = sub_29A404E8C(a1, v19);
  }

  else
  {
    v20 = 0;
  }

  v27 = v20;
  v28 = &v20[216 * v9];
  *(&v29 + 1) = &v20[216 * v19];
  sub_29AABE650(a1, v28, a2, a3, a4, a5, a6, a7, a8, a9);
  *&v29 = v28 + 216;
  v21 = a1[1];
  v22 = &v28[*a1 - v21];
  sub_29A404ED8(a1, *a1, v21, v22);
  v23 = *a1;
  *a1 = v22;
  v24 = a1[2];
  v26 = v29;
  *(a1 + 1) = v29;
  *&v29 = v23;
  *(&v29 + 1) = v24;
  v27 = v23;
  v28 = v23;
  sub_29A405050(&v27);
  return v26;
}

void sub_29AABE63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A405050(va);
  _Unwind_Resume(a1);
}

void sub_29AABE650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __int128 *a9, __int128 *a10)
{
  v15 = 0uLL;
  v16 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  __p = 0uLL;
  v12 = 0;
  v10 = 0;
  sub_29A404780(a2, a3, a4, a5, a6, a7, a8, a9, a10, &v15, v13, &__p, &v10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  sub_29A40349C(v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }
}

void sub_29AABE71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2A0010(va, va1, va2, v7 - 40);
  _Unwind_Resume(a1);
}

unint64_t sub_29AABE754()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "mtlx", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A1747AB0, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1747AB0);
  }

  return v0;
}

void sub_29AABE874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

BOOL sub_29AABE8C0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC58[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AABE924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AABE940(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2070C48;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AABE9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AABE9F0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29AABEA18@<X0>(pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin **a1@<X8>)
{
  v2 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::UsdMtlxDiscoveryPlugin::UsdMtlxDiscoveryPlugin(v2);
  *a1 = v2;
  v4 = 0;
  return sub_29AABEA74(&v4);
}

void sub_29AABEAA4(void **a1)
{
  *a1 = &unk_2A2070C00;
  v2 = a1 + 3;
  v4 = a1 + 6;
  sub_29A012C90(&v4);
  v4 = v2;
  sub_29A012C90(&v4);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(a1, v3);
}

void sub_29AABEB10()
{
  if (!atomic_load(off_2A14F8FB8))
  {
    sub_29B2BD264();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::Parse(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 119);
  v5 = v4;
  v6 = *(a1 + 104);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 104);
  }

  if (v4)
  {
    if (v5 < 0)
    {
      v13 = *(a1 + 96);
      if (v6 != 4 || *v13 != 2020373613)
      {
        sub_29A008D14(__p, v13, v6);
        goto LABEL_19;
      }
    }

    else if (v5 != 4 || *(a1 + 96) != 2020373613)
    {
      *__p = *(a1 + 96);
      v83[0] = *(a1 + 112);
LABEL_19:
      pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocument(__p, &v103);
      v12 = *(&v103 + 1);
      v11 = v103;
      v103 = 0uLL;
      if (SHIBYTE(v83[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v11)
      {
LABEL_22:
        if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
        }

        sub_29AAC0094(v11, EmptyString, &v90);
        if (!v90)
        {
          __p[0] = "usdMtlx/parser.cpp";
          __p[1] = "Parse";
          v83[0] = 594;
          v83[1] = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
          LOBYTE(v84[0]) = 0;
          v31 = *a1 & 0xFFFFFFFFFFFFFFF8;
          if (v31)
          {
            v32 = (v31 + 16);
            if (*(v31 + 39) < 0)
            {
              v32 = *v32;
            }
          }

          else
          {
            v32 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Invalid MaterialX NodeDef; unknown node name ' %s '", v15, v32);
          pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a2);
          goto LABEL_195;
        }

        __p[0] = a1;
        LOBYTE(__p[1]) = 1;
        *v83 = 0u;
        *v84 = 0u;
        v85 = 0u;
        memset(v86, 0, sizeof(v86));
        sub_29A404A70(v87, a1 + 144);
        v89[0] = 0;
        v89[1] = 0;
        v88 = v89;
        v17 = v90;
        v16 = v91;
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v17)
        {
          *&v103 = "usdMtlx/parser.cpp";
          *(&v103 + 1) = "ParseElement";
          v104 = 440;
          v105 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ParseElement(ShaderBuilder *, const mx::ConstNodeDefPtr &)";
          v106 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v103, "nodeDef", 0) & 1) == 0)
          {
LABEL_183:
            if (v16)
            {
              sub_29A014BEC(v16);
            }

            if (__p[1])
            {
              v80 = operator new(0x220uLL);
              v103 = 0uLL;
              v104 = 0;
              pxrInternal__aapl__pxrReserved__::SdrShaderNode::SdrShaderNode(v80, __p[0], __p[0] + 1, (__p[0] + 24), __p[0] + 6, v86, __p[0] + 8, v83, &v84[1], v86 + 8, v87, &v103);
              *a2 = v80;
              if (SHIBYTE(v104) < 0)
              {
                operator delete(v103);
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(__p[0], a2);
            }

            sub_29A01752C(&v88, v89[0]);
            sub_29A40349C(v87);
            *&v103 = v86 + 8;
            sub_29A405D94(&v103);
            if ((v86[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v86[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (SHIBYTE(v85) < 0)
            {
              operator delete(v84[1]);
            }

            if (SHIBYTE(v84[0]) < 0)
            {
              operator delete(v83[0]);
            }

LABEL_195:
            if (v91)
            {
              sub_29A014BEC(v91);
            }

            goto LABEL_197;
          }
        }

        v18 = (*(v17->__r_.__value_.__r.__words[0] + 64))(v17);
        sub_29B1D8ACC(v17, &v103);
        sub_29AAC0130(&v103, v18, &v102);
        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        if (!v102)
        {
          v19 = sub_29A008E78(&v103, "");
          pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocument(v19, &v101);
          sub_29AAC0130(&v101, v18, &__str);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v102 = __str.__r_.__value_.__r.__words[0];
          __str.__r_.__value_.__r.__words[0] = 0;
          if (v101.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v101.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v104) < 0)
          {
            operator delete(v103);
          }

          if (!v102)
          {
            v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeContext);
            if (!v20)
            {
              v20 = sub_29A7FB4E8(&pxrInternal__aapl__pxrReserved__::SdrNodeContext);
            }

            sub_29A166F2C(&v102, v20);
          }
        }

        sub_29A166F2C(v86, &v102);
        *&v103 = v17;
        *(&v103 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SourceURI = pxrInternal__aapl__pxrReserved__::UsdMtlxGetSourceURI(&v103);
        std::string::operator=(v83, SourceURI);
        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        std::string::operator=(&v84[1], v83);
        v22 = sub_29AABE2F0(v17);
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        if (!v23)
        {
          v23 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        }

        *&v103 = v23 + 32;
        v24 = sub_29A7D3598(v87, v23 + 4, &unk_29B4D6118, &v103);
        std::string::operator=(v24 + 1, v22);
        v25 = (*(v17->__r_.__value_.__r.__words[0] + 64))(v17);
        v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        if (!v26)
        {
          v26 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        }

        *&v103 = v26;
        v27 = sub_29A7D3598(v87, v26, &unk_29B4D6118, &v103);
        std::string::operator=(v27 + 1, v25);
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        if (!v28)
        {
          v28 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        }

        *&v103 = v17;
        *(&v103 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = atomic_load(&qword_2A1747B08);
        if (!v29)
        {
          v29 = sub_29AAC36A4();
        }

        if ((*(v29 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v30 = ((*(v29 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
        }

        sub_29AAC02A4(__p, v28 + 3, &v103, v30);
        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        if (!v33)
        {
          v33 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        }

        *&v103 = v17;
        *(&v103 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = atomic_load(&qword_2A1747B08);
        if (!v34)
        {
          v34 = sub_29AAC36A4();
        }

        if ((*(v34 + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v35 = ((*(v34 + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v35 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
        }

        sub_29AAC02A4(__p, v33 + 8, &v103, v35);
        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        if (!v36)
        {
          v36 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
        }

        *&v103 = v17;
        *(&v103 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = atomic_load(&qword_2A1747B08);
        if (!v37)
        {
          v37 = sub_29AAC36A4();
        }

        if ((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v38 = ((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v38 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
        }

        sub_29AAC02A4(__p, v36 + 1, &v103, v38);
        v39 = *(&v103 + 1);
        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        v103 = 0uLL;
        v104 = 0;
        v40 = HIBYTE(v17[2].__r_.__value_.__r.__words[2]);
        size = v17[2].__r_.__value_.__l.__size_;
        if ((v40 & 0x80u) == 0)
        {
          size = HIBYTE(v17[2].__r_.__value_.__r.__words[2]);
        }

        if (size >= 0x10)
        {
          v42 = (v40 & 0x80u) == 0 ? &v17[2] : v17[2].__r_.__value_.__r.__words[0];
          v39 = strncmp(v42, "ND_geompropvalue", 0x10uLL);
          if (!v39)
          {
            sub_29A008E78(&v101, "$geomprop");
            v39 = sub_29A091654(&v103, &v101);
            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v101.__r_.__value_.__l.__data_);
            }

            v40 = HIBYTE(v17[2].__r_.__value_.__r.__words[2]);
          }
        }

        v43 = &v17[2];
        if ((v40 & 0x80) != 0)
        {
          if (v17[2].__r_.__value_.__l.__size_ != 19)
          {
            goto LABEL_110;
          }

          v43 = v43->__words[0];
        }

        else if (v40 != 19)
        {
          goto LABEL_110;
        }

        v44 = v43->__words[0];
        v45 = v43->__words[1];
        v46 = *(&v43->__words[1] + 3);
        if (v44 == 0x6F637865745F444ELL && v45 == 0x746365765F64726FLL && v46 == 0x32726F746365765FLL)
        {
          sub_29AAC0450(v39, &v101);
          sub_29A070BA0(&v103);
        }

LABEL_110:
        v49 = sub_29B1F31FC();
        sub_29B1C5CA8(v17, v49, &v99);
        v50 = v99;
        if (v99)
        {
          v51 = sub_29B1F31FC();
          if (sub_29AAC05D4(v50, v51))
          {
            sub_29B1D7FB0(v99, &v97);
            v52 = v97;
            sub_29A008E78(&__str, "geompropvalue");
            sub_29AAC1CE8(v52, &__str, &v101);
            v81 = a2;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v54 = v101.__r_.__value_.__l.__size_;
            for (i = v101.__r_.__value_.__r.__words[0]; i != v54; i += 2)
            {
              v55 = *i;
              sub_29A008E78(&__str, "geomprop");
              sub_29AAC1E24(v55, &__str.__r_.__value_.__l.__data_, &v94);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (v94)
              {
                sub_29AAC0680(v94);
                sub_29A070BA0(&v103);
              }

              if (v95)
              {
                sub_29A014BEC(v95);
              }
            }

            __str.__r_.__value_.__r.__words[0] = &v101;
            sub_29A0176E4(&__str);
            v58 = v97;
            sub_29A008E78(&__str, "texcoord");
            sub_29AAC1CE8(v58, &__str, &v101);
            a2 = v81;
            v59 = *&v101.__r_.__value_.__l.__data_;
            v94 = &v101;
            sub_29A0176E4(&v94);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (*(&v59 + 1) != v59)
            {
              sub_29AAC0450(v60, &v101);
              sub_29A070BA0(&v103);
            }

            v61 = v97;
            sub_29A008E78(&__str, "tiledimage");
            sub_29AAC1CE8(v61, &__str, &v101);
            if (v101.__r_.__value_.__l.__size_ == v101.__r_.__value_.__r.__words[0])
            {
              v63 = v97;
              sub_29A008E78(v92, "image");
              sub_29AAC1CE8(v63, v92, &v94);
              v62 = v95 != v94;
              v107 = &v94;
              sub_29A0176E4(&v107);
              if (v93 < 0)
              {
                operator delete(v92[0]);
              }
            }

            else
            {
              v62 = 1;
            }

            v94 = &v101;
            sub_29A0176E4(&v94);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v62)
            {
              sub_29AAC0450(v64, &v101);
              sub_29A070BA0(&v103);
            }

            LOBYTE(v50) = 0;
            if (v98)
            {
              sub_29A014BEC(v98);
            }
          }

          else
          {
            LOBYTE(v50) = 0;
          }
        }

        if ((atomic_load_explicit(&qword_2A1747B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747B30))
        {
          sub_29A008E78(&unk_2A1747B18, "internalgeomprops");
          __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A1747B18, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1747B30);
        }

        v65 = sub_29A8877BC(&v17[6].__r_.__value_.__r.__words[2], &unk_2A1747B18);
        if (v65)
        {
          v66 = (v65 + 5);
        }

        else
        {
          v66 = sub_29B1F31FC();
        }

        if ((*(v66 + 23) & 0x8000000000000000) != 0)
        {
          if (!*(v66 + 1))
          {
LABEL_163:
            sub_29B1EA6E8(v17, &v101);
            v72 = v101.__r_.__value_.__l.__size_;
            for (j = v101.__r_.__value_.__r.__words[0]; j != v72; j += 2)
            {
              v73 = j[1];
              __str.__r_.__value_.__r.__words[0] = *j;
              __str.__r_.__value_.__l.__size_ = v73;
              if (v73)
              {
                atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_29AAC070C(__p, &__str, 0, &v103, v50);
              if (v73)
              {
                sub_29A014BEC(v73);
              }
            }

            __str.__r_.__value_.__r.__words[0] = &v101;
            sub_29A0176E4(&__str);
            sub_29B1EAB28(v17, &v101);
            v75 = v101.__r_.__value_.__l.__size_;
            for (k = v101.__r_.__value_.__r.__words[0]; k != v75; k += 2)
            {
              v76 = k[1];
              __str.__r_.__value_.__r.__words[0] = *k;
              __str.__r_.__value_.__l.__size_ = v76;
              if (v76)
              {
                atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_29AAC070C(__p, &__str, 1, 0, 0);
              if (v76)
              {
                sub_29A014BEC(v76);
              }
            }

            __str.__r_.__value_.__r.__words[0] = &v101;
            sub_29A0176E4(&__str);
            sub_29A11CF98("|", v103, *(&v103 + 1), &v101);
            v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
            if (!v77)
            {
              v77 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
            }

            v94 = (v77 + 48);
            v78 = sub_29A7D3598(v87, v77 + 6, &unk_29B4D6118, &v94);
            v79 = v78;
            if (SHIBYTE(v78[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78[1].__r_.__value_.__l.__data_);
            }

            v79[1] = v101;
            if (v100)
            {
              sub_29A014BEC(v100);
            }

            v101.__r_.__value_.__r.__words[0] = &v103;
            sub_29A012C90(&v101);
            if ((v102 & 7) != 0)
            {
              atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_183;
          }
        }

        else if (!*(v66 + 23))
        {
          goto LABEL_163;
        }

        pxrInternal__aapl__pxrReserved__::UsdMtlxSplitStringArray(v66, &v101);
        v68 = v101.__r_.__value_.__l.__size_;
        v67 = v101.__r_.__value_.__r.__words[0];
        if (v101.__r_.__value_.__r.__words[0] != v101.__r_.__value_.__l.__size_)
        {
          do
          {
            v69 = atomic_load(&qword_2A1747B08);
            if (!v69)
            {
              v69 = sub_29AAC36A4();
            }

            v70 = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v69 + 152), &v67->__r_.__value_.__l.__data_);
            if (v70)
            {
              sub_29AAC0450(v70, &__str);
              std::string::operator=(v67, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            ++v67;
          }

          while (v67 != v68);
          v68 = v101.__r_.__value_.__l.__size_;
          v67 = v101.__r_.__value_.__r.__words[0];
        }

        sub_29AA8AFE4(&v103, *(&v103 + 1), v67, v68, 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3));
        __str.__r_.__value_.__r.__words[0] = &v101;
        sub_29A012C90(&__str);
        goto LABEL_163;
      }

      __p[0] = "usdMtlx/parser.cpp";
      __p[1] = "Parse";
      v83[0] = 575;
      v83[1] = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
      LOBYTE(v84[0]) = 0;
      v9 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "document", 0);
      if (v9)
      {
        v11 = 0;
        goto LABEL_22;
      }

      pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a2);
LABEL_197:
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      return;
    }

    sub_29A008E78(__p, "");
    goto LABEL_19;
  }

  v8 = *(a1 + 143);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 128);
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocumentFromString((a1 + 120), __p);
    v11 = __p[0];
    v12 = __p[1];
    if (__p[0])
    {
      goto LABEL_22;
    }

    __p[0] = "usdMtlx/parser.cpp";
    __p[1] = "Parse";
    v83[0] = 581;
    v83[1] = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
    LOBYTE(v84[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Invalid mtlx source code.", v10);
    pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a2);
    goto LABEL_197;
  }

  __p[0] = "usdMtlx/parser.cpp";
  __p[1] = "Parse";
  v83[0] = 587;
  v83[1] = "virtual NdrNodeUniquePtr pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::Parse(const NdrNodeDiscoveryResult &)";
  LOBYTE(v84[0]) = 0;
  v56 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v56)
  {
    v57 = (v56 + 16);
    if (*(v56 + 39) < 0)
    {
      v57 = *v57;
    }
  }

  else
  {
    v57 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Invalid NdrNodeDiscoveryResult for identifier '%s': both resolvedUri and sourceCode fields are empty.", v6, v57);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(a1, a2);
}

void sub_29AABFA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_guard_abort(&qword_2A1747B30);
  v53 = *(v51 - 176);
  if (v53)
  {
    sub_29A014BEC(v53);
  }

  *(v51 - 224) = v51 - 136;
  sub_29A012C90((v51 - 224));
  v54 = *(v51 - 144);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  sub_29AABFDF0(&a17);
  if (a44)
  {
    sub_29A014BEC(a44);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AABFDF0(uint64_t a1)
{
  sub_29A01752C(a1 + 136, *(a1 + 144));
  sub_29A40349C(a1 + 96);
  v4 = (a1 + 72);
  sub_29A405D94(&v4);
  v2 = *(a1 + 64);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::GetDiscoveryTypes(pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747B00))
  {
    v2 = atomic_load(&qword_2A1747B08);
    if (!v2)
    {
      v2 = sub_29AAC36A4();
    }

    v3 = *v2;
    v5 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v5 = v4;
      }
    }

    qword_2A1747AE8 = 0;
    unk_2A1747AF0 = 0;
    qword_2A1747AF8 = 0;
    sub_29A12EF7C(&qword_2A1747AE8, &v5, &v6, 1uLL);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747AE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747B00);
  }

  return &qword_2A1747AE8;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin::GetSourceType(pxrInternal__aapl__pxrReserved__::UsdMtlxParserPlugin *this)
{
  v1 = atomic_load(&qword_2A1747B08);
  if (!v1)
  {
    v1 = sub_29AAC36A4();
  }

  return v1 + 8;
}

uint64_t sub_29AAC000C()
{
  v2 = nullsub_1515;
  return sub_29AAC356C(v0);
}

void sub_29AAC006C(pxrInternal__aapl__pxrReserved__::NdrParserPlugin *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::~NdrParserPlugin(a1, a2);

  operator delete(v2);
}

void sub_29AAC0094(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7F00(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29AAC0118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAC0130(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!v4)
  {
LABEL_31:
    *a3 = 0;
    return;
  }

  sub_29AAC1C4C(v4, a2, &v15);
  v5 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  sub_29A008E78(__p, "semantic");
  v6 = sub_29A8877BC((v5 + 160), __p);
  if (v6)
  {
    v7 = (v6 + 5);
  }

  else
  {
    v7 = sub_29B1F31FC();
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    if (*(v7 + 1) != 6)
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    v7 = *v7;
  }

  else if (v8 != 6)
  {
    goto LABEL_17;
  }

  v10 = *v7 == 1684105331 && *(v7 + 2) == 29285;
LABEL_18:
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_23:
    v12 = 1;
    goto LABEL_28;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_20:
  v11 = v15;
  sub_29A008E78(__p, "context");
  if (!sub_29A8877BC((v11 + 160), __p))
  {
    sub_29B1F31FC();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = 0;
LABEL_28:
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v12)
  {
    goto LABEL_31;
  }
}

void sub_29AAC026C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29AAC02A4(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  result = sub_29A8877BC((*a3 + 160), a4);
  if (result)
  {
    v7 = (result + 40);
  }

  else
  {
    result = sub_29B1F31FC();
    v7 = result;
  }

  size = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v7->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    if (!v9)
    {
      v9 = sub_29A4105FC(&pxrInternal__aapl__pxrReserved__::SdrNodeMetadata);
    }

    if ((*(v9 + 1) ^ *a2) > 7)
    {
      goto LABEL_29;
    }

    v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
    if (v10 < 0)
    {
      if (v7->__r_.__value_.__l.__size_ == 9 && *v7->__r_.__value_.__l.__data_ == 0x3265727574786574 && *(v7->__r_.__value_.__r.__words[0] + 8) == 100)
      {
        goto LABEL_31;
      }

      if (v7->__r_.__value_.__l.__size_ == 9)
      {
        v12 = v7->__r_.__value_.__r.__words[0];
LABEL_25:
        v14 = v12->__r_.__value_.__r.__words[0];
        v15 = v12->__r_.__value_.__s.__data_[8];
        if (v14 != 0x3365727574786574 || v15 != 100)
        {
          goto LABEL_29;
        }

LABEL_31:
        v19 = a2;
        v18 = sub_29A7D3598(a1 + 96, a2, &unk_29B4D6118, &v19);
        return MEMORY[0x29C2C1A60](v18 + 3, "texture");
      }
    }

    else if (v10 == 9)
    {
      v11 = v7->__r_.__value_.__r.__words[0] == 0x3265727574786574 && v7->__r_.__value_.__s.__data_[8] == 100;
      v12 = v7;
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

LABEL_29:
    v19 = a2;
    v17 = sub_29A7D3598(a1 + 96, a2, &unk_29B4D6118, &v19);
    return std::string::operator=(v17 + 1, v7);
  }

  return result;
}

void sub_29AAC0450(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747B50, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_2A1747B50);
    if (a1)
    {
      v8 = atomic_load(off_2A14F8FB8);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
      }

      if (*(v8 + 23) < 0)
      {
        sub_29A008D14(&xmmword_2A1747B38, *v8, *(v8 + 8));
      }

      else
      {
        v9 = *v8;
        unk_2A1747B48 = *(v8 + 16);
        xmmword_2A1747B38 = v9;
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1747B38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1747B50);
    }
  }

  if (byte_2A1747B4F < 0)
  {
    v3 = *(&xmmword_2A1747B38 + 1);
    if (*(&xmmword_2A1747B38 + 1))
    {
      v4 = xmmword_2A1747B38;
      goto LABEL_13;
    }
  }

  else if (byte_2A1747B4F)
  {
    *a2 = xmmword_2A1747B38;
    *(a2 + 16) = unk_2A1747B48;
    return;
  }

  PrimaryUVSetName = pxrInternal__aapl__pxrReserved__::UsdUtilsGetPrimaryUVSetName(a1);
  if ((*PrimaryUVSetName & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*PrimaryUVSetName & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(PrimaryUVSetName);
  }

  if ((*(EmptyString + 23) & 0x80000000) == 0)
  {
    v7 = *EmptyString;
    *(a2 + 16) = EmptyString[2];
    *a2 = v7;
    return;
  }

  v4 = *EmptyString;
  v3 = EmptyString[1];
LABEL_13:

  sub_29A008D14(a2, v4, v3);
}

uint64_t sub_29AAC05D4(uint64_t a1, const void **a2)
{
  sub_29B1D7FB0(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

__int128 *sub_29AAC0680(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AAC06F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAC070C(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, char a5)
{
  v165[2] = *MEMORY[0x29EDCA608];
  v155 = 0;
  v152 = 0u;
  v153 = 0u;
  v154 = 1065353216;
  memset(v150, 0, sizeof(v150));
  v151 = 1065353216;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v165[1] = 0;
  v10 = (*(**a2 + 64))();
  pxrInternal__aapl__pxrReserved__::UsdMtlxGetUsdType(v10, &v144);
  if (v145)
  {
    sub_29A166F2C(&v155, &v145);
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&v144);
    if (v146)
    {
      v12 = 0;
    }

    else
    {
      v12 = IsArray;
    }

    if (v12)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      if (!v13)
      {
        v13 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      }

      sub_29AAC2664(&v152, v13 + 8, v13 + 8, "");
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v14)
    {
      v14 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&v144, v14 + 12))
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      if (!v15)
      {
        v15 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      }

      sub_29AAC2664(&v152, v15 + 15, v15 + 15, "");
    }

    v16 = a2[1];
    *&v159 = *a2;
    *(&v159 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdMtlxGetUsdValue(&v159, a3, &v161);
    sub_29A18606C(v165, &v161);
    sub_29A186B14(&v161);
    v17 = *(&v159 + 1);
    if (*(&v159 + 1))
    {
LABEL_18:
      sub_29A014BEC(v17);
    }
  }

  else if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&v144))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v161);
    if ((v155 & 7) != 0)
    {
      atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v155 = v161.n128_u64[0];
    sub_29B1D8ACC(*a2, &v159);
    sub_29AAC1C4C(v159, v10, &v161);
    v18 = v161.n128_u64[0];
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    if (*(&v159 + 1))
    {
      sub_29A014BEC(*(&v159 + 1));
    }

    if (!v18)
    {
      v161.n128_u64[0] = "usdMtlx/parser.cpp";
      v161.n128_u64[1] = "AddProperty";
      v162 = 258;
      v163 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ShaderBuilder::AddProperty(const mx::ConstTypedElementPtr &, BOOL, NdrStringVec *, BOOL)";
      v164 = 0;
      v19 = *(v10 + 23);
      v20 = *v10;
      v21 = *a2;
      v142 = 0;
      v143 = 0;
      sub_29B1D8824(v21, &v142, &v159);
      if (v19 >= 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = v20;
      }

      if (v160 >= 0)
      {
        v24 = &v159;
      }

      else
      {
        v24 = v159;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v161, "MaterialX unrecognized type %s on %s", v22, v23, v24);
      if (SHIBYTE(v160) < 0)
      {
        operator delete(v159);
      }

      v17 = v143;
      if (v143)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v144, &v161);
    if ((v155 & 7) != 0)
    {
      atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v155 = v161.n128_u64[0];
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v25)
    {
      v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&v144, v25))
    {
      goto LABEL_45;
    }

    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v26)
    {
      v26 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(&v144, v26 + 44))
    {
LABEL_45:
      v27 = a2[1];
      *&v159 = *a2;
      *(&v159 + 1) = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::UsdMtlxGetUsdValue(&v159, a3, &v161);
      sub_29A18606C(v165, &v161);
      sub_29A186B14(&v161);
      if (*(&v159 + 1))
      {
        sub_29A014BEC(*(&v159 + 1));
      }

      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata))
      {
        sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      }

      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAliasesAsTokens(&v161);
    }
  }

  v29 = *a2;
  v30 = atomic_load(&qword_2A1747B08);
  if (!a3)
  {
    if (!v30)
    {
      v30 = sub_29AAC36A4();
    }

    if ((*(v30 + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v30 + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
    }

    v35 = sub_29A8877BC((v29 + 160), EmptyString);
    if (v35)
    {
      v36 = (v35 + 5);
    }

    else
    {
      v36 = sub_29B1F31FC();
    }

    if ((*(v36 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v36 + 1))
      {
        goto LABEL_83;
      }
    }

    else if (!*(v36 + 23))
    {
      goto LABEL_83;
    }

    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v38)
    {
      v38 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    sub_29AAC299C(&v152, v38 + 19, v38 + 19, v36);
LABEL_83:
    v39 = *a2;
    v40 = sub_29B1F31FC();
    if (!sub_29AAC1EC0(v39, v40))
    {
      goto LABEL_112;
    }

    goto LABEL_84;
  }

  if (!v30)
  {
    v30 = sub_29AAC36A4();
  }

  if ((*(v30 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = ((*(v30 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
  }

  v33 = sub_29A8877BC((v29 + 160), v31);
  if (v33)
  {
    v34 = (v33 + 5);
  }

  else
  {
    v34 = sub_29B1F31FC();
  }

  if ((*(v34 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v34 + 1))
    {
      goto LABEL_84;
    }
  }

  else if (!*(v34 + 23))
  {
    goto LABEL_84;
  }

  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  if (!v37)
  {
    v37 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
  }

  sub_29AAC299C(&v152, v37 + 18, v37 + 18, v34);
LABEL_84:
  v41 = sub_29AAC1F6C(*a2);
  v42 = v41;
  v43 = *(v41 + 23);
  if ((v43 & 0x80u) != 0)
  {
    v43 = *(v41 + 1);
  }

  if (v43)
  {
    v44 = *a2;
    v45 = *(*a2 + 232);
    if (v45)
    {
      v45 = std::__shared_weak_count::lock(v45);
      v46 = v45;
      if (v45)
      {
        v45 = *(v44 + 224);
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_29AAC1FF8(v45);
    v48 = *(v42 + 23);
    if (v48 >= 0)
    {
      v49 = *(v42 + 23);
    }

    else
    {
      v49 = *(v42 + 1);
    }

    v50 = *(v47 + 23);
    v51 = v50;
    if ((v50 & 0x80u) != 0)
    {
      v50 = *(v47 + 1);
    }

    if (v49 == v50)
    {
      if (v48 >= 0)
      {
        v52 = v42;
      }

      else
      {
        v52 = *v42;
      }

      if (v51 >= 0)
      {
        v53 = v47;
      }

      else
      {
        v53 = *v47;
      }

      v54 = memcmp(v52, v53, v49);
      if (v46)
      {
        sub_29A014BEC(v46);
      }

      if (!v54)
      {
        goto LABEL_112;
      }
    }

    else if (v46)
    {
      sub_29A014BEC(v46);
    }

    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v55)
    {
      v55 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    sub_29AAC299C(&v152, v55 + 20, v55 + 20, v42);
  }

LABEL_112:
  v56 = *a2;
  if (*(*a2 + 71) < 0)
  {
    sub_29A008D14(&__dst, v56[2].__r_.__value_.__l.__data_, v56[2].__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v56[2];
  }

  if (a4 && (a3 & 1) == 0)
  {
    v57 = *a2;
    v58 = atomic_load(&qword_2A1747B08);
    if (!v58)
    {
      v58 = sub_29AAC36A4();
    }

    if ((*(v58 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v59 = ((*(v58 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v59 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v58);
    }

    v60 = sub_29A8877BC((v57 + 160), v59);
    if (v60)
    {
      v61 = (v60 + 5);
    }

    else
    {
      v61 = sub_29B1F31FC();
    }

    if ((*(v61 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v61 + 1))
      {
        goto LABEL_135;
      }
    }

    else if (!*(v61 + 23))
    {
      goto LABEL_135;
    }

    v62 = atomic_load(&qword_2A1747B08);
    if (!v62)
    {
      v62 = sub_29AAC36A4();
    }

    v63 = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v62 + 152), v61);
    if (!v63)
    {
      sub_29A070BA0(a4);
    }

    if ((a5 & 1) == 0)
    {
      sub_29AAC0450(v63, &v161);
      sub_29A070BA0(a4);
    }
  }

LABEL_135:
  sub_29B1D7F00(*a2, &v161);
  if (v161.n128_u64[0])
  {
    v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
    if (!v64)
    {
      v64 = sub_29AAC2D70(&pxrInternal__aapl__pxrReserved__::UsdMtlxTokens);
    }

    if ((*(v64 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v65 = ((*(v64 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v65 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v64);
    }

    std::string::operator=(&__dst, v65);
  }

  if (v161.n128_u64[1])
  {
    sub_29A014BEC(v161.n128_u64[1]);
  }

  v66 = sub_29A01BCCC(a1 + 136, &__dst.__r_.__value_.__l.__data_);
  if (a1 + 144 != v66)
  {
    v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v67)
    {
      v67 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v161.n128_u64[0] = v67 + 128;
    v68 = sub_29A7D3598(&v152, v67 + 16, &unk_29B4D6118, &v161);
    std::string::operator=(v68 + 1, (v66 + 56));
  }

  if ((a3 & 1) == 0)
  {
    v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v69)
    {
      v69 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v70 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v70;
    if (v70)
    {
      atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
    }

    v71 = atomic_load(&qword_2A1747B08);
    if (!v71)
    {
      v71 = sub_29AAC36A4();
    }

    if ((*(v71 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v72 = ((*(v71 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v72 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v71);
    }

    sub_29AAC20CC(&v152, v69, &v161, v72);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v73)
    {
      v73 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v74 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v74;
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    v75 = atomic_load(&qword_2A1747B08);
    if (!v75)
    {
      v75 = sub_29AAC36A4();
    }

    if ((*(v75 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v76 = ((*(v75 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v76 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
    }

    sub_29AAC20CC(&v152, v73 + 1, &v161, v76);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v77)
    {
      v77 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    v78 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v78;
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = atomic_load(&qword_2A1747B08);
    if (!v79)
    {
      v79 = sub_29AAC36A4();
    }

    if ((*(v79 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v80 = ((*(v79 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v80 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v79);
    }

    sub_29AAC20CC(&v152, v77 + 2, &v161, v80);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v81 = atomic_load(&qword_2A1747B08);
    if (!v81)
    {
      v81 = sub_29AAC36A4();
    }

    v82 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v82;
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v81 + 96), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v83 = atomic_load(&qword_2A1747B08);
    if (!v83)
    {
      v83 = sub_29AAC36A4();
    }

    v84 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v84;
    if (v84)
    {
      atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v83 + 88), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v85 = atomic_load(&qword_2A1747B08);
    if (!v85)
    {
      v85 = sub_29AAC36A4();
    }

    v86 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v86;
    if (v86)
    {
      atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v85 + 120), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v87 = atomic_load(&qword_2A1747B08);
    if (!v87)
    {
      v87 = sub_29AAC36A4();
    }

    v88 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v88;
    if (v88)
    {
      atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v87 + 112), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v89 = atomic_load(&qword_2A1747B08);
    if (!v89)
    {
      v89 = sub_29AAC36A4();
    }

    v90 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v90;
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v89 + 128), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v91 = atomic_load(&qword_2A1747B08);
    if (!v91)
    {
      v91 = sub_29AAC36A4();
    }

    v92 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v92;
    if (v92)
    {
      atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v91 + 136), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v93 = atomic_load(&qword_2A1747B08);
    if (!v93)
    {
      v93 = sub_29AAC36A4();
    }

    v94 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v94;
    if (v94)
    {
      atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v93 + 144), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v95 = atomic_load(&qword_2A1747B08);
    if (!v95)
    {
      v95 = sub_29AAC36A4();
    }

    v96 = a2[1];
    v161.n128_u64[0] = *a2;
    v161.n128_u64[1] = v96;
    if (v96)
    {
      atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC2150(&v152, (v95 + 16), &v161);
    if (v161.n128_u64[1])
    {
      sub_29A014BEC(v161.n128_u64[1]);
    }

    v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    if (!v97)
    {
      v97 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
    }

    if (!sub_29A16039C(&v152, v97 + 1))
    {
      v107 = atomic_load(&qword_2A1747B08);
      if (!v107)
      {
        v107 = sub_29AAC36A4();
      }

      if (sub_29A16039C(&v152, (v107 + 136)))
      {
        v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
        if (!v108)
        {
          v108 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
        }

        v109 = atomic_load(&qword_2A1747B08);
        if (!v109)
        {
          v109 = sub_29AAC36A4();
        }

        *&v157 = v109 + 136;
        v110 = sub_29A7D3598(&v152, (v109 + 136), &unk_29B4D6118, &v157);
        v113 = v110 + 3;
        if (*(v110 + 47) < 0)
        {
          v113 = *v113;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unit is %s.", v111, v112, v113);
        sub_29AAC30BC(&v152, v108 + 1, v108 + 1, &v161);
        if (SHIBYTE(v162) < 0)
        {
          operator delete(v161.n128_u64[0]);
        }
      }
    }

    for (i = v153; i; i = *i)
    {
      v99 = i[2];
      *&v157 = v99;
      if ((v99 & 7) != 0 && (atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v157 = v157 & 0xFFFFFFFFFFFFFFF8;
      }

      if (*(i + 47) < 0)
      {
        sub_29A008D14(&v159, i[3], i[4]);
      }

      else
      {
        v159 = *(i + 3);
        v160 = i[5];
      }

      v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      if (!v100)
      {
        v100 = sub_29A40DE60(&pxrInternal__aapl__pxrReserved__::SdrPropertyMetadata);
      }

      v101 = *(v100 + 21);
      v102 = *(v100 + 22);
      if (v101 != v102)
      {
        while ((*v101 ^ v157) >= 8)
        {
          if (++v101 == v102)
          {
            goto LABEL_247;
          }
        }
      }

      if (v101 == v102)
      {
LABEL_247:
        sub_29AAC339C(&v161, &v157, &v159);
        sub_29A4173FC(v150, &v161, &v161);
        if (SHIBYTE(v163) < 0)
        {
          operator delete(v161.n128_u64[1]);
        }

        if ((v161.n128_u8[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v161.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (SHIBYTE(v160) < 0)
      {
        operator delete(v159);
      }

      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v104 = *a2;
    v103 = a2[1];
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v105 = atomic_load(&qword_2A1747B08);
    if (!v105)
    {
      v105 = sub_29AAC36A4();
    }

    if ((*(v105 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v106 = ((*(v105 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v106 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v105);
    }

    v114 = sub_29A8877BC((v104 + 160), v106);
    if (v114)
    {
      v115 = (v114 + 5);
    }

    else
    {
      v115 = sub_29B1F31FC();
    }

    if ((*(v115 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v115 + 1))
      {
LABEL_279:
        v116 = atomic_load(&qword_2A1747B08);
        if (!v116)
        {
          v116 = sub_29AAC36A4();
        }

        if ((*(v116 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v117 = ((*(v116 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v117 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v116);
        }

        v121 = sub_29A8877BC((v104 + 160), v117);
        if (v121)
        {
          v122 = (v121 + 5);
        }

        else
        {
          v122 = sub_29B1F31FC();
        }

        pxrInternal__aapl__pxrReserved__::UsdMtlxSplitStringArray(v115, &v161);
        pxrInternal__aapl__pxrReserved__::UsdMtlxSplitStringArray(v122, &v159);
        v123 = *(&v159 + 1);
        v124 = v159;
        if (v159 != *(&v159 + 1))
        {
          v125 = 0xAAAAAAAAAAAAAAABLL * ((*(&v159 + 1) - v159) >> 3);
          v126 = 0xAAAAAAAAAAAAAAABLL * ((v161.n128_u64[1] - v161.n128_u64[0]) >> 3);
          if (v125 != v126)
          {
            if (v125 <= v126 || (v127 = v125 / v126, v125 % v126))
            {
              do
              {
                v128 = *(v123 - 1);
                v123 -= 3;
                if (v128 < 0)
                {
                  operator delete(*v123);
                }
              }

              while (v123 != v124);
              *(&v159 + 1) = v124;
            }

            else
            {
              v134 = 0;
              v135 = 0;
              v157 = 0uLL;
              v158 = 0;
              memset(&v156, 0, sizeof(v156));
              do
              {
                if (v135 % v127)
                {
                  std::string::append(&v156, off_2A14FDF50[0]);
                  v124 = v159;
                }

                v136 = SHIBYTE(v124[v134 + 2]);
                if (v136 >= 0)
                {
                  v137 = &v124[v134];
                }

                else
                {
                  v137 = v124[v134];
                }

                if (v136 >= 0)
                {
                  v138 = HIBYTE(v124[v134 + 2]);
                }

                else
                {
                  v138 = v124[v134 + 1];
                }

                std::string::append(&v156, v137, v138);
                if (!(++v135 % v127))
                {
                  sub_29A070BA0(&v157);
                }

                v139 = *(&v159 + 1);
                v124 = v159;
                v134 += 3;
              }

              while (v135 < 0xAAAAAAAAAAAAAAABLL * ((*(&v159 + 1) - v159) >> 3));
              v159 = v157;
              v157 = __PAIR128__(v139, v124);
              v140 = v160;
              v160 = v158;
              v158 = v140;
              if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v156.__r_.__value_.__l.__data_);
              }

              v156.__r_.__value_.__r.__words[0] = &v157;
              sub_29A012C90(&v156);
            }
          }
        }

        v129 = v161.n128_u64[0];
        if (v161.n128_u64[0] != v161.n128_u64[1])
        {
          v130 = v159;
          do
          {
            *&v157 = 0;
            if (v130 != *(&v159 + 1))
            {
              pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v156);
              if ((v157 & 7) != 0)
              {
                atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v130 += 24;
              *&v157 = v156.__r_.__value_.__r.__words[0];
            }

            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v156);
            v131 = v148;
            if (v148 >= v149)
            {
              v133 = sub_29AAC3430(&v147, &v156, &v157);
            }

            else
            {
              *v148 = v156.__r_.__value_.__r.__words[0];
              v156.__r_.__value_.__r.__words[0] = 0;
              v132 = v157;
              v131[1] = v157;
              if ((v132 & 7) != 0 && (atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v131[1] &= 0xFFFFFFFFFFFFFFF8;
              }

              v133 = (v131 + 2);
            }

            v148 = v133;
            if ((v156.__r_.__value_.__s.__data_[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v157 & 7) != 0)
            {
              atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v129 += 24;
          }

          while (v129 != v161.n128_u64[1]);
        }

        *&v157 = &v159;
        sub_29A012C90(&v157);
        *&v159 = &v161;
        sub_29A012C90(&v159);
        if (!v103)
        {
          goto LABEL_286;
        }

LABEL_285:
        sub_29A014BEC(v103);
        goto LABEL_286;
      }
    }

    else if (*(v115 + 23))
    {
      goto LABEL_279;
    }

    if (!v103)
    {
      goto LABEL_286;
    }

    goto LABEL_285;
  }

LABEL_286:
  v118 = operator new(0x108uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v159);
  pxrInternal__aapl__pxrReserved__::SdrShaderProperty::SdrShaderProperty(v118, &v159, &v155, v165, a3, v146, &v152, v150, &v147);
  v161.n128_u64[0] = v118;
  sub_29AAC21F8((a1 + 72), &v161);
  v119 = v161.n128_u64[0];
  v161.n128_u64[0] = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v165);
  v161.n128_u64[0] = &v147;
  sub_29A40DADC(&v161);
  sub_29A40349C(v150);
  result = sub_29A40349C(&v152);
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AAC1968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
  }

  v46 = *(v44 - 208);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v44 - 112);
  *(v44 - 176) = &a23;
  sub_29A40DADC((v44 - 176));
  sub_29A40349C(&a26);
  sub_29A40349C(&a32);
  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AAC1C4C(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D8270(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29AAC1CD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAC1CE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7E50(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AAC1DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29AAC1E24(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7C40(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29AAC1EA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AAC1EC0(uint64_t a1, const void **a2)
{
  sub_29B1D7C40(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

__int128 *sub_29AAC1F6C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC50[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AAC1FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29AAC1FF8(uint64_t a1)
{
  sub_29A014C58(&v8, (a1 + 8));
  shared_weak_owners = v8;
  if (v8)
  {
    while (1)
    {
      v3 = sub_29AAC2CF0(shared_weak_owners);
      v1 = v8;
      if (v3)
      {
        break;
      }

      shared_weak_owners = v8[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v4 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = *(v1 + 28);
        }
      }

      else
      {
        v4 = 0;
      }

      v5 = v9;
      v8 = shared_weak_owners;
      v9 = v4;
      if (v5)
      {
        sub_29A014BEC(v5);
        shared_weak_owners = v8;
      }

      if (!shared_weak_owners)
      {
        goto LABEL_10;
      }
    }

    v1 = sub_29AAC1F6C(v8);
    v6 = 0;
  }

  else
  {
LABEL_10:
    v6 = 1;
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v6)
  {
    return sub_29B1F31FC();
  }

  return v1;
}

void sub_29AAC20B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AAC20CC(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  result = sub_29A8877BC((*a3 + 160), a4);
  if (result)
  {
    v7 = result + 5;
  }

  else
  {
    result = sub_29B1F31FC();
    v7 = result;
  }

  if ((*(v7 + 23) & 0x8000000000000000) != 0)
  {
    if (!v7[1])
    {
      return result;
    }
  }

  else if (!*(v7 + 23))
  {
    return result;
  }

  return sub_29AAC2DFC(a1, a2, a2, v7);
}

void *sub_29AAC2150(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  result = sub_29A8877BC((v5 + 160), EmptyString);
  if (result)
  {
    v8 = result + 5;
  }

  else
  {
    result = sub_29B1F31FC();
    v8 = result;
  }

  if ((*(v8 + 23) & 0x8000000000000000) != 0)
  {
    if (!v8[1])
    {
      return result;
    }
  }

  else if (!*(v8 + 23))
  {
    return result;
  }

  return sub_29AAC2DFC(a1, a2, a2, v8);
}

const void **sub_29AAC21F8(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29A7D6CCC(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *sub_29AAC22F8(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AAC2538(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAC2520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAC2538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AAC25B8((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29AAC25B8(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(a1 + 24) = EmptyString[2];
    *(a1 + 8) = v6;
  }

  return a1;
}

void *sub_29AAC2664(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AAC28A4(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAC288C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AAC28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AAC2924(v10 + 2, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t *sub_29AAC2924(uint64_t *a1, uint64_t *a2, char *__s)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A008E78(a1 + 1, __s);
  return a1;
}

void *sub_29AAC299C(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AAC2BDC(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAC2BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAC2BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AAC2C5C((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29AAC2C5C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  return a1;
}

BOOL sub_29AAC2CF0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC50[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AAC2D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType *sub_29AAC2D70(atomic_ullong *a1)
{
  result = sub_29AAC2DB8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A764EAC(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType *sub_29AAC2DB8()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdMtlxTokensType::UsdMtlxTokensType(v0);
  return v0;
}

void *sub_29AAC2DFC(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AAC303C(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAC3024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAC303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29AAC339C((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

void *sub_29AAC30BC(uint64_t a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AAC32FC(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AAC32E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29AAC32FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  v11 = *a3;
  *(v10 + 2) = *a3;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v10 + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *a4;
  *(v10 + 24) = *a4;
  *(v10 + 5) = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29AAC339C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t sub_29AAC3430(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    v10 = sub_29A017BD4(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[16 * v3];
  v19 = v10;
  v20 = v11;
  *(&v21 + 1) = &v10[16 * v9];
  *v11 = *a2;
  *a2 = 0;
  v12 = *a3;
  *(v11 + 1) = *a3;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v11 + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v21 = v11 + 16;
  v13 = *(a1 + 8);
  v14 = &v11[*a1 - v13];
  sub_29A40DC90(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A40DDD8(&v19);
  return v18;
}

void sub_29AAC3558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A40DDD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAC356C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2070CD8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AAC35F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAC361C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29AAC3644()
{
  v0 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::NdrParserPlugin::NdrParserPlugin(v0);
  *v0 = &unk_2A2070C88;
  return v0;
}

unint64_t sub_29AAC36A4()
{
  v47 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xB8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "mtlx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "defaultgeomprop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "defaultinput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "doc", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "enum", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "enumvalues", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "nodecategory", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "nodegroup", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "target", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "uifolder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "uimax", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "uimin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "uiname", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "uisoftmax", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "uisoftmin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "uistep", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "unit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "unittype", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "UV0", 0);
  v1 = v0 + 20;
  v2 = *v0;
  v27 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v28 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v29 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v30 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v31 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v32 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v33 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v34 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v35 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v36 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v37 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v38 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v39 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v40 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v41 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v42 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v43 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v44 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v45 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v46 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[21] = 0;
  v0[22] = 0;
  sub_29A12EF7C(v1, &v27, &v47, 0x14uLL);
  for (i = 152; i != -8; i -= 8)
  {
    v23 = *(&v27 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v24 = 0;
  atomic_compare_exchange_strong(&qword_2A1747B08, &v24, v0);
  if (v24)
  {
    v25 = sub_29AAC3F34(v0);
    operator delete(v25);
    return atomic_load(&qword_2A1747B08);
  }

  return v0;
}

void sub_29AAC3C78(_Unwind_Exception *a1)
{
  v4 = 152;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAC3F34(uint64_t a1)
{
  v22 = (a1 + 160);
  sub_29A124AB0(&v22);
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 144);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 136);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 128);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 120);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 112);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 104);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 96);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 88);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 80);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 72);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 64);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 56);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 48);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 40);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 32);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 24);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 16);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 8);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdMtlxStandardLibraryPaths(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1747B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747B70))
  {
    sub_29AAC41E4();
    __cxa_atexit(sub_29A1C9440, qword_2A1747B58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747B70);
  }

  return qword_2A1747B58;
}

void sub_29AAC41E4()
{
  *&v21 = *MEMORY[0x29EDCA608];
  sub_29AAC4794("PXR_MTLX_STDLIB_SEARCH_PATHS", qword_2A1747B58);
  sub_29A008E78(&v19, "");
  v0 = dyld_image_path_containing_address();
  dyld_image_header_containing_address();
  v1 = macho_dylib_install_name();
  v2 = [objc_msgSend(MEMORY[0x29EDB8E70] fileURLWithPath:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v0)), "URLByResolvingSymlinksInPath"}];
  v3 = [objc_msgSend(MEMORY[0x29EDB8E70] fileURLWithPath:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v1)), "URLByResolvingSymlinksInPath"}];
  sub_29A008E78(v17, [objc_msgSend(objc_msgSend(v2 "URLByDeletingLastPathComponent")]);
  sub_29A008E78(__p, [objc_msgSend(objc_msgSend(v3 "URLByDeletingLastPathComponent")]);
  if ((v18 & 0x80u) == 0)
  {
    v4 = v18;
  }

  else
  {
    v4 = v17[1];
  }

  v5 = &v13;
  sub_29A022DE0(&v13, v4 + 11);
  if ((v13.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v13.__pn_.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v18 & 0x80u) == 0)
    {
      v6 = v17;
    }

    else
    {
      v6 = v17[0];
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "/libraries/");
  v14 = v13;
  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = __p[1];
  }

  p_dst = &__dst;
  sub_29A022DE0(&__dst, v7 + 11);
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    memmove(p_dst, v9, v7);
  }

  strcpy(p_dst + v7, "/libraries/");
  v13 = __dst;
  std::__fs::filesystem::__status(&v14, 0);
  if (__dst.__pn_.__r_.__value_.__s.__data_[0] && __dst.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, v14.__pn_.__r_.__value_.__l.__data_, v14.__pn_.__r_.__value_.__l.__size_);
      goto LABEL_32;
    }

    *&__dst.__pn_.__r_.__value_.__l.__data_ = *&v14.__pn_.__r_.__value_.__l.__data_;
    v10 = v14.__pn_.__r_.__value_.__r.__words[2];
  }

  else
  {
    std::__fs::filesystem::__status(&v13, 0);
    if (!__dst.__pn_.__r_.__value_.__s.__data_[0] || __dst.__pn_.__r_.__value_.__s.__data_[0] == 255)
    {
      goto LABEL_35;
    }

    if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, v13.__pn_.__r_.__value_.__l.__data_, v13.__pn_.__r_.__value_.__l.__size_);
      goto LABEL_32;
    }

    *&__dst.__pn_.__r_.__value_.__l.__data_ = *&v13.__pn_.__r_.__value_.__l.__data_;
    v10 = v13.__pn_.__r_.__value_.__r.__words[2];
  }

  __dst.__pn_.__r_.__value_.__r.__words[2] = v10;
LABEL_32:
  if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__pn_.__r_.__value_.__l.__data_);
  }

  v19 = __dst;
LABEL_35:
  if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v19.__pn_.__r_.__value_.__l.__size_)
    {
      sub_29A008D14(&v20, v19.__pn_.__r_.__value_.__l.__data_, v19.__pn_.__r_.__value_.__l.__size_);
LABEL_40:
      memset(v11, 0, sizeof(v11));
      sub_29A280C48(v11, &v20, &v21, 1uLL);
      sub_29AAC4984(&__dst);
    }
  }

  else if (*(&v19.__pn_.__r_.__value_.__s + 23))
  {
    v20 = v19;
    goto LABEL_40;
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_29AAC45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  *(v43 - 128) = v42;
  sub_29A012C90((v43 - 128));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdMtlxCustomSearchPaths(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1747B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747B90))
  {
    sub_29AAC4794("PXR_MTLX_PLUGIN_SEARCH_PATHS", qword_2A1747B78);
    __cxa_atexit(sub_29A1C9440, qword_2A1747B78, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747B90);
  }

  return qword_2A1747B78;
}

void sub_29AAC4794(char *__s@<X0>, void *a2@<X8>)
{
  sub_29A008E78(v7, __s);
  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v7, __p, &__str);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_29A008E78(v7, ":");
    pxrInternal__aapl__pxrReserved__::TfStringSplit(&__str, v7, a2);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v4 < 0)
    {
LABEL_11:
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29AAC4870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *pxrInternal__aapl__pxrReserved__::UsdMtlxSearchPaths(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1747BB0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747BB0);
    if (v2)
    {
      v3 = pxrInternal__aapl__pxrReserved__::UsdMtlxCustomSearchPaths(v2);
      pxrInternal__aapl__pxrReserved__::UsdMtlxStandardLibraryPaths(v3);
      sub_29AAC4984(qword_2A1747B98);
    }
  }

  return qword_2A1747B98;
}

void sub_29AAC4984(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29AAC49FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxStandardFileExtensions(void *a1@<X8>)
{
  *&v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747BD0))
  {
    sub_29A008E78(__p, "mtlx");
    qword_2A1747BB8 = 0;
    unk_2A1747BC0 = 0;
    qword_2A1747BC8 = 0;
    sub_29A280C48(&qword_2A1747BB8, __p, &v5, 1uLL);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_29A1C9440, &qword_2A1747BB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747BD0);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29AAC4B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1747BD0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxReadDocument(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29B1C6D8C(a2, a1);
  if (pxrInternal__aapl__pxrReserved__::TfIsFile(a1, 0))
  {
    v4 = a2[1];
    v18[0] = *a2;
    v18[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AAC9330(v17, a1);
    memset(v16, 0, sizeof(v16));
    sub_29B209214(v18, v17, v16);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v15);
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v12 = *(a1 + 16);
  }

  memset(v13, 0, sizeof(v13));
  sub_29AAC4FA4(v14, __p, v13, 0);
  v19 = v13;
  sub_29AAC9380(&v19);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v15;
  v8 = atomic_load((v6 + 144));
  if (v7 >= v8)
  {
    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v15);
  }

  else
  {
    IsCleanImpl = pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v15, v6);
    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v15);
    if (!IsCleanImpl)
    {
      v10 = a2[1];
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      *a2 = 0;
      a2[1] = 0;
    }
  }
}

void sub_29AAC4FA4(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t *a3, __int16 *a4)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (__p.__r_.__value_.__r.__words[0])
  {
    (*(*__p.__r_.__value_.__l.__data_ + 24))(v19);
    v10 = v19[0];
    v9 = v19[1];
    v11 = (*(*__p.__r_.__value_.__l.__data_ + 16))(__p.__r_.__value_.__r.__words[0]);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(__p.__r_.__value_.__l.__size_);
  }

  if (v10)
  {
    sub_29A02887C(&__p, v10, v11);
    v12 = *a1;
    v13 = *(a1 + 1);
    v15[0] = v12;
    v15[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AAC53FC(v15, &__p, a2, a3, a4);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = "usdMtlx/utils.mm";
    __p.__r_.__value_.__l.__size_ = "_ReadFromAsset";
    __p.__r_.__value_.__r.__words[2] = 374;
    v17 = "void pxrInternal__aapl__pxrReserved__::_ReadFromAsset(mx::DocumentPtr, const ArResolvedPath &, const mx::FileSearchPath &, const mx::XmlReadOptions *)";
    v18 = 0;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Unable to open MaterialX document '%s'", v14);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29AAC513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocumentFromString(const std::string *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29A12A708(__p, a1);
  std::to_string(&v19, v4);
  sub_29AAC53CC();
  __p[0] = 0;
  v5 = sub_29AAC9E40(&qword_2A1747D00, &v19.__r_.__value_.__l.__data_, &v19);
  v6 = v5;
  if (v7)
  {
    sub_29B1C6D8C(&v17, v5);
    v8 = v18;
    v16[0] = v17;
    v16[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    memset(v13, 0, sizeof(v13));
    sub_29AAC53FC(v16, a1, __p, v13, 0);
    v20 = v13;
    sub_29AAC9380(&v20);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v10 = v17;
    v9 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v6[8];
    v6[7] = v10;
    v6[8] = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  v12 = v6[8];
  *a2 = v6[7];
  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_29AAC52EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  *(v24 - 56) = &a11;
  sub_29AAC9380((v24 - 56));
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    if (sub_29A4043D8(1))
    {
      (*(*v27 + 16))(v27);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("MaterialX error reading source XML: %s", v28, v29);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AAC52ACLL);
  }

  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_29AAC53CC()
{
  if ((atomic_load_explicit(&qword_2A1747CF8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BD2D0();
  }
}

uint64_t sub_29AAC53FC(uint64_t *a1, const std::string *a2, uint64_t a3, uint64_t *a4, __int16 *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v19 = *a5;
    v20 = *(a5 + 2);
    sub_29AAC9464(v21, (a5 + 4));
    memset(v22, 0, sizeof(v22));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  sub_29B2094EC(&v19);
  v23 = &unk_2A2070D48;
  v24 = a3;
  v26 = &v23;
  sub_29AAC9A20(&v23, v21);
  sub_29AAC94FC(&v23);
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B20A284(&v16, a2, a4, &v19);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v10 = a1[1];
  v14 = *a1;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v12 = 0;
  v13 = 0;
  sub_29B208AC8(&v14, &v23, &v12);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v18 = &v23;
  sub_29AAC9380(&v18);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v23 = v22;
  sub_29A012C90(&v23);
  return sub_29AAC94FC(v21);
}

void pxrInternal__aapl__pxrReserved__::UsdMtlxGetDocument(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29AAC53CC();
  *&v26 = 0;
  v4 = sub_29AAC9E40(&qword_2A1747D00, a1, a1);
  v5 = v4;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v27);
    v8 = *(a1 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a1 + 8);
    }

    if (!v8)
    {
      sub_29B1C6D8C(&v26, v7);
      v12 = v26;
      v26 = 0uLL;
      v13 = v5[8];
      *(v5 + 7) = v12;
      if (v13)
      {
        sub_29A014BEC(v13);
        v13 = *(&v26 + 1);
        if (*(&v26 + 1))
        {
          sub_29A014BEC(*(&v26 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdMtlxStandardLibraryPaths(v13);
      sub_29AAC587C();
    }

    pxrInternal__aapl__pxrReserved__::UsdMtlxReadDocument(a1, &v26);
    v9 = v26;
    v26 = 0uLL;
    v10 = v5[8];
    *(v5 + 7) = v9;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (*(&v26 + 1))
      {
        sub_29A014BEC(*(&v26 + 1));
      }
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v15 = v27;
    v16 = atomic_load((v14 + 144));
    if (v15 < v16 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v27, v14))
    {
      v17 = sub_29A0FE7E0(&v27, 0);
      for (i = sub_29A11477C(); v17 != i; v17 = v17[1])
      {
        if (sub_29A4043D8(1))
        {
          v21 = v17 + 7;
          if (*(v17 + 79) < 0)
          {
            v21 = *v21;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s\n", v19, v20, v21);
        }
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
      if (!v22)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
      }

      v23 = sub_29A0FE7E0(&v27, 0);
      LOBYTE(v26) = 0;
      v24 = sub_29A0ED084(v22 + 19, &v26);
      if (v24 != v23)
      {
        pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v22, v23, v24);
      }
    }

    v25 = v5[8];
    *a2 = v5[7];
    a2[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v27);
  }

  else
  {
    v11 = v4[8];
    *a2 = v4[7];
    a2[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AAC5850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AAC5A20()
{
  if (v0)
  {
    sub_29A014BEC();
  }

  JUMPOUT(0x29AAC5A5CLL);
}

void sub_29AAC5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A012C90(va);
  JUMPOUT(0x29AAC5A6CLL);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMtlxGetVersion(uint64_t *a1, _BYTE *a2)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v15);
  v4 = sub_29AAC5BF8(*a1);
  if (*(v4 + 23) < 0)
  {
    sub_29A008D14(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v14 = *(v4 + 2);
    *__p = v5;
  }

  v6 = HIBYTE(v14);
  if (v14 < 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    v7 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&v12, __p);
  if (v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
LABEL_13:
    *a2 = sub_29AAC5C84(*a1) ^ 1;
  }

LABEL_14:
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v9 = sub_29A0FE7E0(&v15, 0);
  LOBYTE(v12) = 0;
  v10 = sub_29A0ED084(v8 + 19, &v12);
  if (v10 != v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v8, v9, v10);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v15);
  return v7;
}

void sub_29AAC5BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a17);
  _Unwind_Resume(a1);
}

__int128 *sub_29AAC5BF8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE90[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AAC5C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29AAC5C84(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE98[0]);
  v2 = sub_29AAC9C84(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29AAC5CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdMtlxGetSourceURI(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 95);
      if (v5 < 0)
      {
        v5 = *(v4 + 80);
      }

      if (v5)
      {
        v7 = 0;
        v1 = (v4 + 72);
        if (!v3)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_29A014BEC(v3);
        goto LABEL_22;
      }

      v6 = *(v4 + 232);
      if (!v6)
      {
        break;
      }

      v1 = std::__shared_weak_count::lock(v6);
      if (!v1)
      {
        v4 = 0;
        if (!v3)
        {
          goto LABEL_11;
        }

LABEL_10:
        sub_29A014BEC(v3);
        goto LABEL_11;
      }

      v4 = *(v4 + 224);
      if (v3)
      {
        goto LABEL_10;
      }

LABEL_11:
      v3 = v1;
      if (!v4)
      {
        v7 = 1;
        v3 = v1;
        goto LABEL_20;
      }
    }

    v4 = 0;
    v1 = 0;
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_20:
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v7)
  {
    return *a1 + 72;
  }

  else
  {
    return v1;
  }
}

const void **pxrInternal__aapl__pxrReserved__::UsdMtlxGetUsdType@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v294 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747CF0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BD350();
  }

  if ((atomic_load_explicit(&qword_2A1747BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747BF0))
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(v198);
    v8 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747BD8 = v198[0];
    qword_2A1747BE0 = v8;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1747BE0 &= 0xFFFFFFFFFFFFFFF8;
      }

      dword_2A1747BE8 = 0;
      byte_2A1747BEC = 0;
      atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_release);
    }

    else
    {
      dword_2A1747BE8 = 0;
      byte_2A1747BEC = 0;
    }

    __cxa_atexit(sub_29AAC8170, &qword_2A1747BD8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747BF0);
  }

  if ((atomic_load_explicit(&qword_2A1747C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747C20))
  {
    v171 = a1;
    v170 = a2;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v10)
    {
      v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v11 = *v10;
    v197 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v12 = qword_2A1747CE8;
      v13 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v13;
      }

      v197 = v12;
    }

    v14 = v197;
    if ((v197 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v14 = v197;
      }

      else
      {
        v14 = (v197 & 0xFFFFFFFFFFFFFFF8);
      }
    }

    sub_29A008E78(v198, "BOOLean");
    v198[3] = v11;
    v198[4] = v14;
    v199 = 0;
    v200 = 1;
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v15)
    {
      v15 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v16 = *(v15 + 76);
    v196 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v17 = qword_2A1747CE8;
      v18 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 = v18;
      }

      v196 = v17;
    }

    v19 = v196;
    if ((v196 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v19 = v196;
      }

      else
      {
        v19 = v196 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v201, "color2array");
    v201[3] = v16;
    v201[4] = v19;
    v202 = 0;
    v203 = 0;
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v20)
    {
      v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v21 = *(v20 + 19);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v22)
    {
      v22 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v195 = *(v22 + 2);
    if ((v195 & 7) != 0)
    {
      v23 = *(v22 + 2);
      if ((atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v23 = v195 & 0xFFFFFFFFFFFFFFF8;
      }

      v195 = v23;
    }

    v24 = v195;
    if ((v195 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v24 = v195;
      }

      else
      {
        v24 = v195 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v204, "color2");
    v204[3] = v21;
    v204[4] = v24;
    v205 = 2;
    v206 = 0;
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v25)
    {
      v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v26 = *(v25 + 92);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v27)
    {
      v27 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v194 = *(v27 + 4);
    if ((v194 & 7) != 0)
    {
      v28 = *(v27 + 4);
      if ((atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 = v194 & 0xFFFFFFFFFFFFFFF8;
      }

      v194 = v28;
    }

    v29 = v194;
    if ((v194 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v29 = v194;
      }

      else
      {
        v29 = v194 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v207, "color3array");
    v207[3] = v26;
    v207[4] = v29;
    v208 = 0;
    v209 = 1;
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v30)
    {
      v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v31 = *(v30 + 35);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v32)
    {
      v32 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v193 = *(v32 + 4);
    if ((v193 & 7) != 0)
    {
      v33 = *(v32 + 4);
      if ((atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 = v193 & 0xFFFFFFFFFFFFFFF8;
      }

      v193 = v33;
    }

    v34 = v193;
    if ((v193 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v34 = v193;
      }

      else
      {
        v34 = v193 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v210, "color3");
    v210[3] = v31;
    v210[4] = v34;
    v211 = 0;
    v212 = 1;
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v35)
    {
      v35 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v36 = *(v35 + 95);
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v37)
    {
      v37 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v192 = *(v37 + 5);
    if ((v192 & 7) != 0)
    {
      v38 = *(v37 + 5);
      if ((atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v38 = v192 & 0xFFFFFFFFFFFFFFF8;
      }

      v192 = v38;
    }

    v39 = v192;
    if ((v192 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v39 = v192;
      }

      else
      {
        v39 = v192 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v213, "color4array");
    v213[3] = v36;
    v213[4] = v39;
    v214 = 0;
    v215 = 1;
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v40)
    {
      v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v41 = *(v40 + 38);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v42)
    {
      v42 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v191 = *(v42 + 5);
    if ((v191 & 7) != 0)
    {
      v43 = *(v42 + 5);
      if ((atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v43 = v191 & 0xFFFFFFFFFFFFFFF8;
      }

      v191 = v43;
    }

    v44 = v191;
    if ((v191 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v44 = v191;
      }

      else
      {
        v44 = v191 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v216, "color4");
    v216[3] = v41;
    v216[4] = v44;
    v217 = 0;
    v218 = 1;
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v45)
    {
      v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v46 = *(v45 + 12);
    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v47)
    {
      v47 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v190 = *(v47 + 1);
    if ((v190 & 7) != 0)
    {
      v48 = *(v47 + 1);
      if ((atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v48 = v190 & 0xFFFFFFFFFFFFFFF8;
      }

      v190 = v48;
    }

    v49 = v190;
    if ((v190 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v49 = v190;
      }

      else
      {
        v49 = v190 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v219, "filename");
    v219[3] = v46;
    v219[4] = v49;
    v220 = 0;
    v221 = 1;
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v50)
    {
      v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v51 = *(v50 + 64);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v52)
    {
      v52 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v189 = *(v52 + 2);
    if ((v189 & 7) != 0)
    {
      v53 = *(v52 + 2);
      if ((atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v53 = v189 & 0xFFFFFFFFFFFFFFF8;
      }

      v189 = v53;
    }

    v54 = v189;
    if ((v189 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v54 = v189;
      }

      else
      {
        v54 = v189 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v222, "floatarray");
    v222[3] = v51;
    v222[4] = v54;
    v223 = 0;
    v224 = 1;
    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v55)
    {
      v55 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v56 = *(v55 + 7);
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v57)
    {
      v57 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v188 = *(v57 + 2);
    if ((v188 & 7) != 0)
    {
      v58 = *(v57 + 2);
      if ((atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v58 = v188 & 0xFFFFFFFFFFFFFFF8;
      }

      v188 = v58;
    }

    v59 = v188;
    if ((v188 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v59 = v188;
      }

      else
      {
        v59 = v188 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v225, "float");
    v225[3] = v56;
    v225[4] = v59;
    v226 = 0;
    v227 = 1;
    v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v60)
    {
      v60 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v61 = *(v60 + 6);
    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v62)
    {
      v62 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v187 = *(v62 + 3);
    if ((v187 & 7) != 0)
    {
      v63 = *(v62 + 3);
      if ((atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v63 = v187 & 0xFFFFFFFFFFFFFFF8;
      }

      v187 = v63;
    }

    v64 = v187;
    if ((v187 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v64 = v187;
      }

      else
      {
        v64 = v187 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v228, "half");
    v228[3] = v61;
    v228[4] = v64;
    v229 = 0;
    v230 = 1;
    v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v65)
    {
      v65 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v66 = *(v65 + 67);
    v186 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v67 = qword_2A1747CE8;
      v68 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v67 = v68;
      }

      v186 = v67;
    }

    v69 = v186;
    if ((v186 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v69 = v186;
      }

      else
      {
        v69 = v186 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v231, "geomnamearray");
    v231[3] = v66;
    v231[4] = v69;
    v232 = 0;
    v233 = 0;
    v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v70)
    {
      v70 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v71 = *(v70 + 10);
    v185 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v72 = qword_2A1747CE8;
      v73 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v72 = v73;
      }

      v185 = v72;
    }

    v74 = v185;
    if ((v185 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v74 = v185;
      }

      else
      {
        v74 = v185 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v234, "geomname");
    v234[3] = v71;
    v234[4] = v74;
    v235 = 0;
    v236 = 0;
    v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v75)
    {
      v75 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v76 = *(v75 + 58);
    v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v77)
    {
      v77 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v184 = *v77;
    if ((*v77 & 7) != 0)
    {
      v78 = *v77;
      if ((atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v78 = v184 & 0xFFFFFFFFFFFFFFF8;
      }

      v184 = v78;
    }

    v79 = v184;
    if ((v184 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v79 = v184;
      }

      else
      {
        v79 = v184 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v237, "integerarray");
    v237[3] = v76;
    v237[4] = v79;
    v238 = 0;
    v239 = 1;
    v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v80)
    {
      v80 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v81 = *(v80 + 2);
    v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v82)
    {
      v82 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v183 = *v82;
    if ((*v82 & 7) != 0)
    {
      v83 = *v82;
      if ((atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v83 = v183 & 0xFFFFFFFFFFFFFFF8;
      }

      v183 = v83;
    }

    v84 = v183;
    if ((v183 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v84 = v183;
      }

      else
      {
        v84 = v183 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v240, "integer");
    v240[3] = v81;
    v240[4] = v84;
    v241 = 0;
    v242 = 1;
    v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v85)
    {
      v85 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v86 = *(v85 + 44);
    v182 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v87 = qword_2A1747CE8;
      v88 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v87 = v88;
      }

      v182 = v87;
    }

    v89 = v182;
    if ((v182 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v89 = v182;
      }

      else
      {
        v89 = v182 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v243, "matrix33");
    v243[3] = v86;
    v243[4] = v89;
    v244 = 0;
    v245 = 1;
    v90 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v90)
    {
      v90 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v91 = *(v90 + 45);
    v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v92)
    {
      v92 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v181 = *(v92 + 9);
    if ((v181 & 7) != 0)
    {
      v93 = *(v92 + 9);
      if ((atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v93 = v181 & 0xFFFFFFFFFFFFFFF8;
      }

      v181 = v93;
    }

    v94 = v181;
    if ((v181 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v94 = v181;
      }

      else
      {
        v94 = v181 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v246, "matrix44");
    v246[3] = v91;
    v246[4] = v94;
    v247 = 0;
    v248 = 1;
    v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v95)
    {
      v95 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v96 = *(v95 + 67);
    v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v97)
    {
      v97 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v180 = *(v97 + 1);
    if ((v180 & 7) != 0)
    {
      v98 = *(v97 + 1);
      if ((atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v98 = v180 & 0xFFFFFFFFFFFFFFF8;
      }

      v180 = v98;
    }

    v99 = v180;
    if ((v180 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v99 = v180;
      }

      else
      {
        v99 = v180 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v249, "stringarray");
    v249[3] = v96;
    v249[4] = v99;
    v250 = 0;
    v251 = 1;
    v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v100)
    {
      v100 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v101 = *(v100 + 10);
    v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v102)
    {
      v102 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v179 = *(v102 + 1);
    if ((v179 & 7) != 0)
    {
      v103 = *(v102 + 1);
      if ((atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v103 = v179 & 0xFFFFFFFFFFFFFFF8;
      }

      v179 = v103;
    }

    v104 = v179;
    if ((v179 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v104 = v179;
      }

      else
      {
        v104 = v179 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v252, "string");
    v252[3] = v101;
    v252[4] = v104;
    v253 = 0;
    v254 = 1;
    v105 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v105)
    {
      v105 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v106 = *(v105 + 11);
    v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v107)
    {
      v107 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v178 = *(v107 + 11);
    if ((v178 & 7) != 0)
    {
      v108 = *(v107 + 11);
      if ((atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v108 = v178 & 0xFFFFFFFFFFFFFFF8;
      }

      v178 = v108;
    }

    v109 = v178;
    if ((v178 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v109 = v178;
      }

      else
      {
        v109 = v178 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v255, "surfaceshader");
    v255[3] = v106;
    v255[4] = v109;
    v256 = 0;
    v257 = 1;
    v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v110)
    {
      v110 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v111 = *(v110 + 76);
    v177 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v112 = qword_2A1747CE8;
      v113 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v112 = v113;
      }

      v177 = v112;
    }

    v114 = v177;
    if ((v177 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v114 = v177;
      }

      else
      {
        v114 = v177 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v258, "vector2array");
    v258[3] = v111;
    v258[4] = v114;
    v259 = 0;
    v260 = 1;
    v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v115)
    {
      v115 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v116 = *(v115 + 19);
    v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v117)
    {
      v117 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v176 = *(v117 + 2);
    if ((v176 & 7) != 0)
    {
      v118 = *(v117 + 2);
      if ((atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v118 = v176 & 0xFFFFFFFFFFFFFFF8;
      }

      v176 = v118;
    }

    v119 = v176;
    if ((v176 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v119 = v176;
      }

      else
      {
        v119 = v176 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v261, "vector2");
    v261[3] = v116;
    v261[4] = v119;
    v262 = 2;
    v263 = 1;
    v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v120)
    {
      v120 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v121 = *(v120 + 16);
    v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v122)
    {
      v122 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v175 = *(v122 + 2);
    if ((v175 & 7) != 0)
    {
      v123 = *(v122 + 2);
      if ((atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v123 = v175 & 0xFFFFFFFFFFFFFFF8;
      }

      v175 = v123;
    }

    v124 = v175;
    if ((v175 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v124 = v175;
      }

      else
      {
        v124 = v175 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v264, "half2");
    v264[3] = v121;
    v264[4] = v124;
    v265 = 2;
    v266 = 1;
    v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v125)
    {
      v125 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v126 = *(v125 + 13);
    v127 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v127)
    {
      v127 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v174 = *v127;
    if ((*v127 & 7) != 0)
    {
      v128 = *v127;
      if ((atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v128 = v174 & 0xFFFFFFFFFFFFFFF8;
      }

      v174 = v128;
    }

    v129 = v174;
    if ((v174 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v129 = v174;
      }

      else
      {
        v129 = v174 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v267, "integer2");
    v267[3] = v126;
    v267[4] = v129;
    v268 = 2;
    v269 = 1;
    v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v130)
    {
      v130 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v131 = *(v130 + 77);
    v173 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0)
    {
      v132 = qword_2A1747CE8;
      v133 = qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v132 = v133;
      }

      v173 = v132;
    }

    v134 = v173;
    if ((v173 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v134 = v173;
      }

      else
      {
        v134 = v173 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v270, "vector3array");
    v270[3] = v131;
    v270[4] = v134;
    v271 = 0;
    v272 = 1;
    v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v135)
    {
      v135 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v136 = *(v135 + 20);
    v137 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v137)
    {
      v137 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v172 = *(v137 + 2);
    if ((v172 & 7) != 0)
    {
      v138 = *(v137 + 2);
      if ((atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v138 = v172 & 0xFFFFFFFFFFFFFFF8;
      }

      v172 = v138;
    }

    v139 = v172;
    if ((v172 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v139 = v172;
      }

      else
      {
        v139 = v172 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v273, "vector3");
    v273[3] = v136;
    v273[4] = v139;
    v274 = 3;
    v275 = 1;
    v140 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v140)
    {
      v140 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v141 = *(v140 + 17);
    v142 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v142)
    {
      v142 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v143 = *(v142 + 2);
    if ((v143 & 7) != 0 && (atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v143 &= 0xFFFFFFFFFFFFFFF8;
    }

    v144 = v143;
    if ((v143 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v144 = v143;
      }

      else
      {
        v144 = v143 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v276, "half3");
    v276[3] = v141;
    v276[4] = v144;
    v277 = 3;
    v278 = 1;
    v145 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v145)
    {
      v145 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v146 = *(v145 + 14);
    v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v147)
    {
      v147 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v148 = *v147;
    if ((*v147 & 7) != 0 && (atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v148 &= 0xFFFFFFFFFFFFFFF8;
    }

    v149 = v148;
    if ((v148 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v149 = v148;
      }

      else
      {
        v149 = v148 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v279, "integer3");
    v279[3] = v146;
    v279[4] = v149;
    v280 = 3;
    v281 = 1;
    v150 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v150)
    {
      v150 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v151 = *(v150 + 78);
    v152 = qword_2A1747CE8;
    if ((qword_2A1747CE8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A1747CE8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v152 &= 0xFFFFFFFFFFFFFFF8;
    }

    v153 = v152;
    if ((v152 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v153 = v152;
      }

      else
      {
        v153 = v152 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v282, "vector4array");
    v282[3] = v151;
    v282[4] = v153;
    v283 = 0;
    v284 = 1;
    v154 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v154)
    {
      v154 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v155 = *(v154 + 21);
    v156 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v156)
    {
      v156 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v157 = *(v156 + 2);
    if ((v157 & 7) != 0 && (atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v157 &= 0xFFFFFFFFFFFFFFF8;
    }

    v158 = v157;
    if ((v157 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v158 = v157;
      }

      else
      {
        v158 = v157 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v285, "vector4");
    v285[3] = v155;
    v285[4] = v158;
    v286 = 4;
    v287 = 1;
    v159 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v159)
    {
      v159 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v160 = *(v159 + 18);
    v161 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v161)
    {
      v161 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v162 = *(v161 + 2);
    if ((v162 & 7) != 0 && (atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v162 &= 0xFFFFFFFFFFFFFFF8;
    }

    v163 = v162;
    if ((v162 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v163 = v162;
      }

      else
      {
        v163 = v162 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v288, "half4");
    v288[3] = v160;
    v288[4] = v163;
    v289 = 4;
    v290 = 1;
    v164 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    if (!v164)
    {
      v164 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
    }

    v165 = *(v164 + 15);
    v166 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    if (!v166)
    {
      v166 = sub_29A410E50(&pxrInternal__aapl__pxrReserved__::SdrPropertyTypes);
    }

    v167 = *v166;
    if ((*v166 & 7) != 0 && (atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v167 &= 0xFFFFFFFFFFFFFFF8;
    }

    v168 = v167;
    if ((v167 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v168 = v167;
      }

      else
      {
        v168 = v167 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    sub_29A008E78(v291, "integer4");
    v291[3] = v165;
    v291[4] = v168;
    v292 = 4;
    v293 = 1;
    sub_29AAC9F58(qword_2A1747BF8, v198, 32);
    for (i = 186; i != -6; i -= 6)
    {
      sub_29AAC818C(&v198[i]);
    }

    if ((v167 & 7) != 0)
    {
      atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v162 & 7) != 0)
    {
      atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v157 & 7) != 0)
    {
      atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v152 & 7) != 0)
    {
      atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v148 & 7) != 0)
    {
      atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v143 & 7) != 0)
    {
      atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v172 & 7) != 0)
    {
      atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v173 & 7) != 0)
    {
      atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v174 & 7) != 0)
    {
      atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v175 & 7) != 0)
    {
      atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v176 & 7) != 0)
    {
      atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v177 & 7) != 0)
    {
      atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v178 & 7) != 0)
    {
      atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v179 & 7) != 0)
    {
      atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v180 & 7) != 0)
    {
      atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v181 & 7) != 0)
    {
      atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v182 & 7) != 0)
    {
      atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v183 & 7) != 0)
    {
      atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v184 & 7) != 0)
    {
      atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v185 & 7) != 0)
    {
      atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v187 & 7) != 0)
    {
      atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v188 & 7) != 0)
    {
      atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v189 & 7) != 0)
    {
      atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v190 & 7) != 0)
    {
      atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v191 & 7) != 0)
    {
      atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v192 & 7) != 0)
    {
      atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v193 & 7) != 0)
    {
      atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v194 & 7) != 0)
    {
      atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v195 & 7) != 0)
    {
      atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v196 & 7) != 0)
    {
      atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v197 & 7) != 0)
    {
      atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AAC81D8, qword_2A1747BF8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747C20);
    a2 = v170;
    a1 = v171;
  }

  result = sub_29A8877BC(qword_2A1747BF8, a1);
  v5 = (result + 5);
  if (!result)
  {
    v5 = &qword_2A1747BD8;
  }

  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 8) = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a2 + 8) = v7;
    }
  }

  *(a2 + 16) = *(v5 + 4);
  *(a2 + 20) = *(v5 + 20);
  return result;
}