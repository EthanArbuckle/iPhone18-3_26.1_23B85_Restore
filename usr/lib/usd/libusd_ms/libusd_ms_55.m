void sub_29A2E1894(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E18B8(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<''>>]", 131);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E1A3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E1A60(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<''>>>, PXR_INTERNAL_NS_pegtl::any>]", 218);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E1BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E1BE8(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<''>>, PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<''>>>, PXR_INTERNAL_NS_pegtl::any>>]", 395);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E1D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E1D70(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E1BE8(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2E1DB0(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E1A60(*a1, *(a1 + 16));
  }

  return a1;
}

void sub_29A2E1DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_29A2E1E0C(a1, v3);
}

void *sub_29A2E1E44(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEnd<''>]", 77);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

uint64_t *sub_29A2E1F38(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedString<'\\''>]", 75);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E20BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E20E0(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringBody<'\\''>]", 79);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E2264(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E2288(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringVariable, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringChars<'\\''>>]", 187);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E240C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E2430(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringChars<'\\''>]", 80);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E25B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E25D8(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>, PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>>]", 397);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2E26B0(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>, PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>>]", 397);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E281C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E2838(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E44F0(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2E2878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76.__r_.__value_.__s.__data_[0] = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v8 = (a3 + 8);
  ++*(a3 + 8);
  v9 = MEMORY[0x29C2C1F00]();
  v10 = sub_29A00911C(v9, "\x1B[36m", 5);
  v11 = sub_29A00911C(v10, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>]", 148);
  v12 = sub_29A00911C(v11, "\x1B[m", 3);
  v76.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v12, &v76, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v72[0] = a1;
  v72[1] = a2;
  v72[2] = a3;
  v73 = 1;
  v13 = *(a1 + 24);
  v74 = *(a1 + 8);
  v75 = v13;
  if (!sub_29A2E0154(a1, a3))
  {
LABEL_14:
    v37 = 0;
    v50 = v75;
    *(a1 + 8) = v74;
    *(a1 + 24) = v50;
    goto LABEL_15;
  }

  v76.__r_.__value_.__s.__data_[0] = 35;
  v14 = MEMORY[0x29EDC93C0];
  v15 = sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
  *(v15 + *(*v15 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v16 = *(a3 + 8) + 1;
  *(a3 + 8) = v16;
  v18 = MEMORY[0x29C2C1F00](v15, v16, v17);
  v19 = sub_29A00911C(v18, "\x1B[36m", 5);
  v20 = sub_29A00911C(v19, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>]", 86);
  v21 = sub_29A00911C(v20, "\x1B[m", 3);
  v76.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v21, &v76, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v22 = *(a1 + 8);
  if (v22 == *(a1 + 40) || (v23 = *v22 - 36, v23 > 0x3C) || ((1 << v23) & 0x1100000000000009) == 0)
  {
    v39 = *(a3 + 16);
    v38 = *(a3 + 24);
    v41 = *(v38 - 8);
    v38 -= 8;
    v40 = v41;
    *(a3 + 24) = v38;
    *(v14 + *(*v14 - 24) + 24) = (((v38 - v39) << 30) + 0x800000000) >> 32;
    v76.__r_.__value_.__s.__data_[0] = 32;
    v42 = sub_29A00911C(v14, &v76, 1);
    v43 = sub_29A00911C(v42, "\x1B[31m", 5);
    v44 = sub_29A00911C(v43, "failure", 7);
    sub_29A00911C(v44, "\x1B[m", 3);
    if (*v8 != v41)
    {
      v45 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v46 = MEMORY[0x29C2C1F00](v45, v40);
      v76.__r_.__value_.__s.__data_[0] = 32;
      v47 = sub_29A00911C(v46, &v76, 1);
      v48 = sub_29A00911C(v47, "\x1B[37m", 5);
      v49 = sub_29A00911C(v48, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>]", 86);
      sub_29A00911C(v49, "\x1B[m", 3);
    }

    v76.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
    sub_29A2266C8(&v76, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v76);
    if (v78 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  v24 = *(a1 + 16) + 1;
  *(a1 + 8) = v22 + 1;
  *(a1 + 16) = v24;
  ++*(a1 + 32);
  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v28 = *(v25 - 8);
  v25 -= 8;
  v27 = v28;
  *(a3 + 24) = v25;
  *(v14 + *(*v14 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
  v76.__r_.__value_.__s.__data_[0] = 32;
  v29 = sub_29A00911C(v14, &v76, 1);
  v30 = sub_29A00911C(v29, "\x1B[32m", 5);
  v31 = sub_29A00911C(v30, "success", 7);
  sub_29A00911C(v31, "\x1B[m", 3);
  if (*v8 != v28)
  {
    v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v33 = MEMORY[0x29C2C1F00](v32, v27);
    v76.__r_.__value_.__s.__data_[0] = 32;
    v34 = sub_29A00911C(v33, &v76, 1);
    v35 = sub_29A00911C(v34, "\x1B[37m", 5);
    v36 = sub_29A00911C(v35, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>]", 86);
    sub_29A00911C(v36, "\x1B[m", 3);
  }

  v76.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
  sub_29A2266C8(&v76, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v76);
  if (v78 < 0)
  {
    operator delete(__p);
  }

  v37 = 1;
LABEL_15:
  if (v73 == 1)
  {
    v73 = 0;
  }

  sub_29A2E2FD4(v72);
  v52 = *(a3 + 16);
  v51 = *(a3 + 24);
  v54 = *(v51 - 8);
  v51 -= 8;
  v53 = v54;
  *(a3 + 24) = v51;
  *(v6 + *(*v6 - 24) + 24) = (((v51 - v52) << 30) + 0x800000000) >> 32;
  if (v37)
  {
    v76.__r_.__value_.__s.__data_[0] = 32;
    v55 = sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
    v56 = sub_29A00911C(v55, "\x1B[32m", 5);
    v57 = sub_29A00911C(v56, "success", 7);
    sub_29A00911C(v57, "\x1B[m", 3);
    if (*v8 != v53)
    {
      v58 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v59 = MEMORY[0x29C2C1F00](v58, v53);
      v76.__r_.__value_.__s.__data_[0] = 32;
      v60 = sub_29A00911C(v59, &v76, 1);
      v61 = sub_29A00911C(v60, "\x1B[37m", 5);
      v62 = sub_29A00911C(v61, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>]", 148);
      sub_29A00911C(v62, "\x1B[m", 3);
    }
  }

  else
  {
    v76.__r_.__value_.__s.__data_[0] = 32;
    v63 = sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
    v64 = sub_29A00911C(v63, "\x1B[31m", 5);
    v65 = sub_29A00911C(v64, "failure", 7);
    sub_29A00911C(v65, "\x1B[m", 3);
    if (*v8 != v53)
    {
      v66 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v67 = MEMORY[0x29C2C1F00](v66, v53);
      v76.__r_.__value_.__s.__data_[0] = 32;
      v68 = sub_29A00911C(v67, &v76, 1);
      v69 = sub_29A00911C(v68, "\x1B[37m", 5);
      v70 = sub_29A00911C(v69, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>]", 148);
      sub_29A00911C(v70, "\x1B[m", 3);
    }
  }

  v76.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v76, 1);
  sub_29A2266C8(&v76, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v76);
  if (v78 < 0)
  {
    operator delete(__p);
  }

  return v37;
}

void sub_29A2E2F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v25 = a14;
  *(v23 + 8) = a13;
  *(v23 + 24) = v25;
  sub_29A2E2FD4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2E2FD4(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>]", 148);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E3158(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E317C(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>]", 219);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2E3254(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>]", 219);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E33C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E33DC(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "failure", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>]", 219);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E3548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E3564(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E4368(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2E35A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104.__r_.__value_.__s.__data_[0] = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v8 = (a3 + 8);
  ++*(a3 + 8);
  v9 = MEMORY[0x29C2C1F00]();
  v10 = sub_29A00911C(v9, "\x1B[36m", 5);
  v11 = sub_29A00911C(v10, "PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>]", 163);
  v12 = sub_29A00911C(v11, "\x1B[m", 3);
  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v12, &v104, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v98[0] = a1;
  v98[1] = a2;
  v98[2] = a3;
  v99 = 1;
  v13 = *(a1 + 24);
  v100 = *(a1 + 8);
  v101 = v13;
  v104.__r_.__value_.__s.__data_[0] = 35;
  v14 = sub_29A00911C(v6, &v104, 1);
  *(v14 + *(*v14 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v15 = *(a3 + 8) + 1;
  *(a3 + 8) = v15;
  v17 = MEMORY[0x29C2C1F00](v14, v15, v16);
  v18 = sub_29A00911C(v17, "\x1B[36m", 5);
  v19 = sub_29A00911C(v18, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>]", 132);
  v20 = sub_29A00911C(v19, "\x1B[m", 3);
  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v20, &v104, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v102[0] = a1;
  v102[1] = a2;
  v102[2] = a3;
  v103 = 1;
  if (sub_29A2DD964(a1, a3))
  {
LABEL_2:
    v21 = 1;
    goto LABEL_14;
  }

  v104.__r_.__value_.__s.__data_[0] = 35;
  v22 = MEMORY[0x29EDC93C0];
  v23 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
  *(v23 + *(*v23 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v24 = *(a3 + 8) + 1;
  *(a3 + 8) = v24;
  v26 = MEMORY[0x29C2C1F00](v23, v24, v25);
  v27 = sub_29A00911C(v26, "\x1B[36m", 5);
  v28 = sub_29A00911C(v27, "PXR_INTERNAL_NS_pegtl::one<'\\''>]", 32);
  v29 = sub_29A00911C(v28, "\x1B[m", 3);
  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v29, &v104, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v30 = *(a1 + 8);
  if (v30 != *(a1 + 40) && *v30 == 39)
  {
    v31 = *(a1 + 16) + 1;
    *(a1 + 8) = v30 + 1;
    *(a1 + 16) = v31;
    ++*(a1 + 32);
    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
    v35 = *(v32 - 8);
    v32 -= 8;
    v34 = v35;
    *(a3 + 24) = v32;
    *(v22 + *(*v22 - 24) + 24) = (((v32 - v33) << 30) + 0x800000000) >> 32;
    v104.__r_.__value_.__s.__data_[0] = 32;
    v36 = sub_29A00911C(v22, &v104, 1);
    v37 = sub_29A00911C(v36, "\x1B[32m", 5);
    v38 = sub_29A00911C(v37, "success", 7);
    sub_29A00911C(v38, "\x1B[m", 3);
    if (*v8 != v35)
    {
      v39 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v40 = MEMORY[0x29C2C1F00](v39, v34);
      v104.__r_.__value_.__s.__data_[0] = 32;
      v41 = sub_29A00911C(v40, &v104, 1);
      v42 = sub_29A00911C(v41, "\x1B[37m", 5);
      v43 = sub_29A00911C(v42, "PXR_INTERNAL_NS_pegtl::one<'\\''>]", 32);
      sub_29A00911C(v43, "\x1B[m", 3);
    }

    v104.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
    sub_29A2266C8(&v104, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v104);
    if (v106 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_2;
  }

  v45 = *(a3 + 16);
  v44 = *(a3 + 24);
  v47 = *(v44 - 8);
  v44 -= 8;
  v46 = v47;
  *(a3 + 24) = v44;
  *(v22 + *(*v22 - 24) + 24) = (((v44 - v45) << 30) + 0x800000000) >> 32;
  v104.__r_.__value_.__s.__data_[0] = 32;
  v48 = sub_29A00911C(v22, &v104, 1);
  v49 = sub_29A00911C(v48, "\x1B[31m", 5);
  v50 = sub_29A00911C(v49, "failure", 7);
  sub_29A00911C(v50, "\x1B[m", 3);
  if (*v8 != v47)
  {
    v51 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v52 = MEMORY[0x29C2C1F00](v51, v46);
    v104.__r_.__value_.__s.__data_[0] = 32;
    v53 = sub_29A00911C(v52, &v104, 1);
    v54 = sub_29A00911C(v53, "\x1B[37m", 5);
    v55 = sub_29A00911C(v54, "PXR_INTERNAL_NS_pegtl::one<'\\''>]", 32);
    sub_29A00911C(v55, "\x1B[m", 3);
  }

  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
  sub_29A2266C8(&v104, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v104);
  if (v106 < 0)
  {
    operator delete(__p);
  }

  v21 = 0;
LABEL_14:
  if (v103 == 1)
  {
    v103 = 0;
  }

  sub_29A2E41C0(v102);
  v57 = *(a3 + 16);
  v56 = *(a3 + 24);
  v59 = *(v56 - 8);
  v56 -= 8;
  v58 = v59;
  *(a3 + 24) = v56;
  *(v6 + *(*v6 - 24) + 24) = (((v56 - v57) << 30) + 0x800000000) >> 32;
  if (v21)
  {
    v104.__r_.__value_.__s.__data_[0] = 32;
    v60 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
    v61 = sub_29A00911C(v60, "\x1B[32m", 5);
    v62 = sub_29A00911C(v61, "success", 7);
    sub_29A00911C(v62, "\x1B[m", 3);
    if (*v8 != v58)
    {
      v63 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v64 = MEMORY[0x29C2C1F00](v63, v58);
      v104.__r_.__value_.__s.__data_[0] = 32;
      v65 = sub_29A00911C(v64, &v104, 1);
      v66 = sub_29A00911C(v65, "\x1B[37m", 5);
      v67 = sub_29A00911C(v66, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>]", 132);
      sub_29A00911C(v67, "\x1B[m", 3);
    }
  }

  else
  {
    v104.__r_.__value_.__s.__data_[0] = 32;
    v68 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
    v69 = sub_29A00911C(v68, "\x1B[31m", 5);
    v70 = sub_29A00911C(v69, "failure", 7);
    sub_29A00911C(v70, "\x1B[m", 3);
    if (*v8 != v58)
    {
      v71 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v72 = MEMORY[0x29C2C1F00](v71, v58);
      v104.__r_.__value_.__s.__data_[0] = 32;
      v73 = sub_29A00911C(v72, &v104, 1);
      v74 = sub_29A00911C(v73, "\x1B[37m", 5);
      v75 = sub_29A00911C(v74, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>]", 132);
      sub_29A00911C(v75, "\x1B[m", 3);
    }
  }

  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
  sub_29A2266C8(&v104, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v104);
  if (v106 < 0)
  {
    operator delete(__p);
  }

  v76 = v101;
  *(a1 + 8) = v100;
  *(a1 + 24) = v76;
  if (v99 == 1)
  {
    v99 = 0;
  }

  sub_29A2E4018(v98);
  v78 = *(a3 + 16);
  v77 = *(a3 + 24);
  v80 = *(v77 - 8);
  v77 -= 8;
  v79 = v80;
  *(a3 + 24) = v77;
  *(v6 + *(*v6 - 24) + 24) = (((v77 - v78) << 30) + 0x800000000) >> 32;
  if (v21)
  {
    v104.__r_.__value_.__s.__data_[0] = 32;
    v81 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
    v82 = sub_29A00911C(v81, "\x1B[31m", 5);
    v83 = sub_29A00911C(v82, "failure", 7);
    sub_29A00911C(v83, "\x1B[m", 3);
    if (*v8 != v79)
    {
      v84 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v85 = MEMORY[0x29C2C1F00](v84, v79);
      v104.__r_.__value_.__s.__data_[0] = 32;
      v86 = sub_29A00911C(v85, &v104, 1);
      v87 = sub_29A00911C(v86, "\x1B[37m", 5);
      v88 = sub_29A00911C(v87, "PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>]", 163);
      sub_29A00911C(v88, "\x1B[m", 3);
    }
  }

  else
  {
    v104.__r_.__value_.__s.__data_[0] = 32;
    v89 = sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
    v90 = sub_29A00911C(v89, "\x1B[32m", 5);
    v91 = sub_29A00911C(v90, "success", 7);
    sub_29A00911C(v91, "\x1B[m", 3);
    if (*v8 != v79)
    {
      v92 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v93 = MEMORY[0x29C2C1F00](v92, v79);
      v104.__r_.__value_.__s.__data_[0] = 32;
      v94 = sub_29A00911C(v93, &v104, 1);
      v95 = sub_29A00911C(v94, "\x1B[37m", 5);
      v96 = sub_29A00911C(v95, "PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>]", 163);
      sub_29A00911C(v96, "\x1B[m", 3);
    }
  }

  v104.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v104, 1);
  sub_29A2266C8(&v104, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v104);
  if (v106 < 0)
  {
    operator delete(__p);
  }

  return v21 ^ 1u;
}

void sub_29A2E3F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_29A2E41C0(&a15);
  v29 = a14;
  *(v27 + 8) = a13;
  *(v27 + 24) = v29;
  sub_29A2E4018(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2E4018(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>]", 163);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E419C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E41C0(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>]", 132);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E4344(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E4368(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>]", 219);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E44D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E44F0(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::one<'\\\\'>, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEscapedChar<'\\''>>, PXR_INTERNAL_NS_pegtl::seq<PXR_INTERNAL_NS_pegtl::not_at<PXR_INTERNAL_NS_pegtl::sor<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::VariableStart, PXR_INTERNAL_NS_pegtl::one<'\\''>>>, PXR_INTERNAL_NS_pegtl::any>>]", 397);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E465C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E4678(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E44F0(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2E46B8(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E4368(*a1, *(a1 + 16));
  }

  return a1;
}

void sub_29A2E46F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_29A2E4714(a1, v3);
}

void *sub_29A2E474C(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::QuotedStringEnd<'\\''>]", 78);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

uint64_t *sub_29A2E4840(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Integer]", 64);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E49C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E49E8(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::opt<PXR_INTERNAL_NS_pegtl::one<'-'>>]", 59);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E4B6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E4B90(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::plus<PXR_INTERNAL_NS_pegtl::digit>]", 57);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E4D14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E4D38(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "PXR_INTERNAL_NS_pegtl::digit]", 28);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2E4E10(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::digit]", 28);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E4F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E4F98(uint64_t a1, void *a2, uint64_t a3)
{
  LOBYTE(v264) = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  v8 = (a3 + 16);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v9 = (a3 + 8);
  ++*(a3 + 8);
  v10 = MEMORY[0x29C2C1F00]();
  v11 = sub_29A00911C(v10, "\x1B[36m", 5);
  v12 = sub_29A00911C(v11, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Boolean]", 64);
  v13 = sub_29A00911C(v12, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v13, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v254[0] = a1;
  v254[1] = a2;
  v254[2] = a3;
  v255 = 1;
  v14 = *(a1 + 24);
  v256 = *(a1 + 8);
  v257 = v14;
  LOBYTE(v264) = 35;
  v15 = sub_29A00911C(v6, &v264, 1);
  *(v15 + *(*v15 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v16 = *(a3 + 8) + 1;
  *(a3 + 8) = v16;
  v18 = MEMORY[0x29C2C1F00](v15, v16, v17);
  v19 = sub_29A00911C(v18, "\x1B[36m", 5);
  v20 = sub_29A00911C(v19, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanTrue]", 68);
  v21 = sub_29A00911C(v20, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v21, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v258 = a1;
  v259 = a2;
  v260 = a3;
  v261 = 1;
  LOBYTE(v264) = 35;
  v22 = sub_29A00911C(v6, &v264, 1);
  *(v22 + *(*v22 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v23 = *(a3 + 8) + 1;
  *(a3 + 8) = v23;
  v25 = MEMORY[0x29C2C1F00](v22, v23, v24);
  v26 = sub_29A00911C(v25, "\x1B[36m", 5);
  v27 = sub_29A00911C(v26, "PXR_INTERNAL_NS_pegtl::keyword<'T', 'r', 'u', 'e'>]", 50);
  v28 = sub_29A00911C(v27, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v28, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v29 = *(a1 + 24);
  v262 = *(a1 + 8);
  v263 = v29;
  if (sub_29A2D5524(a1) && (v30 = *(a1 + 24), v264 = *(a1 + 8), *__p = v30, v31 = sub_29A230978(a1), v32 = *__p, *(a1 + 8) = v264, *(a1 + 24) = v32, (v31 & 1) == 0))
  {
    v71 = *(a3 + 16);
    v70 = *(a3 + 24);
    v73 = *(v70 - 8);
    v70 -= 8;
    v72 = v73;
    *(a3 + 24) = v70;
    *(v6 + *(*v6 - 24) + 24) = (((v70 - v71) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v74 = sub_29A00911C(v6, &v264, 1);
    v75 = sub_29A00911C(v74, "\x1B[32m", 5);
    v76 = sub_29A00911C(v75, "success", 7);
    sub_29A00911C(v76, "\x1B[m", 3);
    if (*v9 != v73)
    {
      v77 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v78 = MEMORY[0x29C2C1F00](v77, v72);
      LOBYTE(v264) = 32;
      v79 = sub_29A00911C(v78, &v264, 1);
      v80 = sub_29A00911C(v79, "\x1B[37m", 5);
      v81 = sub_29A00911C(v80, "PXR_INTERNAL_NS_pegtl::keyword<'T', 'r', 'u', 'e'>]", 50);
      sub_29A00911C(v81, "\x1B[m", 3);
    }
  }

  else
  {
    v33 = v263;
    *(a1 + 8) = v262;
    *(a1 + 24) = v33;
    v35 = *(a3 + 16);
    v34 = *(a3 + 24);
    v37 = *(v34 - 8);
    v34 -= 8;
    v36 = v37;
    *(a3 + 24) = v34;
    *(v6 + *(*v6 - 24) + 24) = (((v34 - v35) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v38 = sub_29A00911C(v6, &v264, 1);
    v39 = sub_29A00911C(v38, "\x1B[31m", 5);
    v40 = sub_29A00911C(v39, "failure", 7);
    sub_29A00911C(v40, "\x1B[m", 3);
    if (*v9 != v37)
    {
      v41 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v42 = MEMORY[0x29C2C1F00](v41, v36);
      LOBYTE(v264) = 32;
      v43 = sub_29A00911C(v42, &v264, 1);
      v44 = sub_29A00911C(v43, "\x1B[37m", 5);
      v45 = sub_29A00911C(v44, "PXR_INTERNAL_NS_pegtl::keyword<'T', 'r', 'u', 'e'>]", 50);
      sub_29A00911C(v45, "\x1B[m", 3);
    }

    LOBYTE(v264) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v264);
    if (v266 < 0)
    {
      operator delete(__p[1]);
    }

    LOBYTE(v264) = 35;
    v46 = MEMORY[0x29EDC93C0];
    v47 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    *(v47 + *(*v47 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
    v48 = *(a3 + 8) + 1;
    *(a3 + 8) = v48;
    v50 = MEMORY[0x29C2C1F00](v47, v48, v49);
    v51 = sub_29A00911C(v50, "\x1B[36m", 5);
    v52 = sub_29A00911C(v51, "PXR_INTERNAL_NS_pegtl::keyword<'t', 'r', 'u', 'e'>]", 50);
    v53 = sub_29A00911C(v52, "\x1B[m", 3);
    LOBYTE(v264) = 10;
    sub_29A00911C(v53, &v264, 1);
    sub_29A018094((a3 + 16), (a3 + 8));
    if (!sub_29A2D558C(a1) || (v54 = *(a1 + 24), v264 = *(a1 + 8), *__p = v54, v55 = sub_29A230978(a1), v56 = *__p, *(a1 + 8) = v264, *(a1 + 24) = v56, (v55 & 1) != 0))
    {
      v58 = *(a3 + 16);
      v57 = *(a3 + 24);
      v60 = *(v57 - 8);
      v57 -= 8;
      v59 = v60;
      *(a3 + 24) = v57;
      *(v46 + *(*v46 - 24) + 24) = (((v57 - v58) << 30) + 0x800000000) >> 32;
      LOBYTE(v264) = 32;
      v61 = sub_29A00911C(v46, &v264, 1);
      v62 = sub_29A00911C(v61, "\x1B[31m", 5);
      v63 = sub_29A00911C(v62, "failure", 7);
      sub_29A00911C(v63, "\x1B[m", 3);
      if (*v9 != v60)
      {
        v64 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
        v65 = MEMORY[0x29C2C1F00](v64, v59);
        LOBYTE(v264) = 32;
        v66 = sub_29A00911C(v65, &v264, 1);
        v67 = sub_29A00911C(v66, "\x1B[37m", 5);
        v68 = sub_29A00911C(v67, "PXR_INTERNAL_NS_pegtl::keyword<'t', 'r', 'u', 'e'>]", 50);
        sub_29A00911C(v68, "\x1B[m", 3);
      }

      LOBYTE(v264) = 10;
      sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
      sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
      sub_29A2D7940(a3, &v264);
      if (v266 < 0)
      {
        operator delete(__p[1]);
      }

      v69 = 0;
      goto LABEL_22;
    }

    v83 = *(a3 + 16);
    v82 = *(a3 + 24);
    v85 = *(v82 - 8);
    v82 -= 8;
    v84 = v85;
    *(a3 + 24) = v82;
    *(v46 + *(*v46 - 24) + 24) = (((v82 - v83) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v86 = sub_29A00911C(v46, &v264, 1);
    v87 = sub_29A00911C(v86, "\x1B[32m", 5);
    v88 = sub_29A00911C(v87, "success", 7);
    sub_29A00911C(v88, "\x1B[m", 3);
    if (*v9 != v85)
    {
      v89 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v90 = MEMORY[0x29C2C1F00](v89, v84);
      LOBYTE(v264) = 32;
      v91 = sub_29A00911C(v90, &v264, 1);
      v92 = sub_29A00911C(v91, "\x1B[37m", 5);
      v93 = sub_29A00911C(v92, "PXR_INTERNAL_NS_pegtl::keyword<'t', 'r', 'u', 'e'>]", 50);
      sub_29A00911C(v93, "\x1B[m", 3);
    }
  }

  LOBYTE(v264) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v264);
  if (v266 < 0)
  {
    operator delete(__p[1]);
  }

  v69 = 1;
LABEL_22:
  if (v261 == 1)
  {
    v261 = 0;
  }

  sub_29A2E6ADC(&v258);
  v94 = *(a3 + 24);
  if (v69)
  {
    *(v6 + *(*v6 - 24) + 24) = (((v94 - *v8) << 30) + 0x600000000) >> 32;
    LOBYTE(v264) = 32;
    v95 = sub_29A00911C(v6, &v264, 1);
    v96 = sub_29A00911C(v95, "\x1B[1;36m", 7);
    v97 = sub_29A00911C(v96, "apply", 5);
    v98 = sub_29A00911C(v97, "\x1B[m", 3);
    LOBYTE(v264) = 10;
    sub_29A00911C(v98, &v264, 1);
    *(sub_29A2D55F4(a2) + 8) = 1;
    v100 = *(a3 + 16);
    v99 = *(a3 + 24);
    v102 = *(v99 - 8);
    v99 -= 8;
    v101 = v102;
    *(a3 + 24) = v99;
    *(v6 + *(*v6 - 24) + 24) = (((v99 - v100) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v103 = sub_29A00911C(v6, &v264, 1);
    v104 = sub_29A00911C(v103, "\x1B[32m", 5);
    v105 = sub_29A00911C(v104, "success", 7);
    sub_29A00911C(v105, "\x1B[m", 3);
    if (*v9 != v102)
    {
      v106 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v107 = MEMORY[0x29C2C1F00](v106, v101);
      LOBYTE(v264) = 32;
      v108 = sub_29A00911C(v107, &v264, 1);
      v109 = sub_29A00911C(v108, "\x1B[37m", 5);
      v110 = sub_29A00911C(v109, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanTrue]", 68);
      sub_29A00911C(v110, "\x1B[m", 3);
    }

    LOBYTE(v264) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v264);
    if (v266 < 0)
    {
      operator delete(__p[1]);
    }

    v111 = 1;
    goto LABEL_67;
  }

  v114 = *(v94 - 8);
  v112 = v94 - 8;
  v113 = v114;
  *(a3 + 24) = v112;
  *(v6 + *(*v6 - 24) + 24) = (((v112 - *(a3 + 16)) << 30) + 0x800000000) >> 32;
  LOBYTE(v264) = 32;
  v115 = sub_29A00911C(v6, &v264, 1);
  v116 = sub_29A00911C(v115, "\x1B[31m", 5);
  v117 = sub_29A00911C(v116, "failure", 7);
  sub_29A00911C(v117, "\x1B[m", 3);
  if (*v9 != v114)
  {
    v118 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v119 = MEMORY[0x29C2C1F00](v118, v113);
    LOBYTE(v264) = 32;
    v120 = sub_29A00911C(v119, &v264, 1);
    v121 = sub_29A00911C(v120, "\x1B[37m", 5);
    v122 = sub_29A00911C(v121, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanTrue]", 68);
    sub_29A00911C(v122, "\x1B[m", 3);
  }

  LOBYTE(v264) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v264);
  if (v266 < 0)
  {
    operator delete(__p[1]);
  }

  v123 = v257;
  *(a1 + 8) = v256;
  *(a1 + 24) = v123;
  v124 = *(a1 + 24);
  v256 = *(a1 + 8);
  v257 = v124;
  LOBYTE(v264) = 35;
  v125 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  *(v125 + *(*v125 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v126 = *(a3 + 8) + 1;
  *(a3 + 8) = v126;
  v128 = MEMORY[0x29C2C1F00](v125, v126, v127);
  v129 = sub_29A00911C(v128, "\x1B[36m", 5);
  v130 = sub_29A00911C(v129, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanFalse]", 69);
  v131 = sub_29A00911C(v130, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v131, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v258 = a1;
  v259 = a2;
  v260 = a3;
  v261 = 1;
  LOBYTE(v264) = 35;
  v132 = MEMORY[0x29EDC93C0];
  v133 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  *(v133 + *(*v133 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v134 = *(a3 + 8) + 1;
  *(a3 + 8) = v134;
  v136 = MEMORY[0x29C2C1F00](v133, v134, v135);
  v137 = sub_29A00911C(v136, "\x1B[36m", 5);
  v138 = sub_29A00911C(v137, "PXR_INTERNAL_NS_pegtl::keyword<'F', 'a', 'l', 's', 'e'>]", 55);
  v139 = sub_29A00911C(v138, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v139, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v140 = *(a1 + 24);
  v262 = *(a1 + 8);
  v263 = v140;
  if (sub_29A2D5754(a1))
  {
    v141 = *(a1 + 24);
    v264 = *(a1 + 8);
    *__p = v141;
    v142 = sub_29A230978(a1);
    v143 = *__p;
    *(a1 + 8) = v264;
    *(a1 + 24) = v143;
    if ((v142 & 1) == 0)
    {
      v181 = *(a3 + 16);
      v180 = *(a3 + 24);
      v183 = *(v180 - 8);
      v180 -= 8;
      v182 = v183;
      *(a3 + 24) = v180;
      *(v132 + *(*v132 - 24) + 24) = (((v180 - v181) << 30) + 0x800000000) >> 32;
      LOBYTE(v264) = 32;
      v184 = sub_29A00911C(v132, &v264, 1);
      v185 = sub_29A00911C(v184, "\x1B[32m", 5);
      v186 = sub_29A00911C(v185, "success", 7);
      sub_29A00911C(v186, "\x1B[m", 3);
      if (*v9 != v183)
      {
        v187 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
        v188 = MEMORY[0x29C2C1F00](v187, v182);
        LOBYTE(v264) = 32;
        v189 = sub_29A00911C(v188, &v264, 1);
        v190 = sub_29A00911C(v189, "\x1B[37m", 5);
        v191 = sub_29A00911C(v190, "PXR_INTERNAL_NS_pegtl::keyword<'F', 'a', 'l', 's', 'e'>]", 55);
        sub_29A00911C(v191, "\x1B[m", 3);
      }

      goto LABEL_52;
    }
  }

  v144 = v263;
  *(a1 + 8) = v262;
  *(a1 + 24) = v144;
  v146 = *(a3 + 16);
  v145 = *(a3 + 24);
  v148 = *(v145 - 8);
  v145 -= 8;
  v147 = v148;
  *(a3 + 24) = v145;
  *(v132 + *(*v132 - 24) + 24) = (((v145 - v146) << 30) + 0x800000000) >> 32;
  LOBYTE(v264) = 32;
  v149 = sub_29A00911C(v132, &v264, 1);
  v150 = sub_29A00911C(v149, "\x1B[31m", 5);
  v151 = sub_29A00911C(v150, "failure", 7);
  sub_29A00911C(v151, "\x1B[m", 3);
  if (*v9 != v148)
  {
    v152 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v153 = MEMORY[0x29C2C1F00](v152, v147);
    LOBYTE(v264) = 32;
    v154 = sub_29A00911C(v153, &v264, 1);
    v155 = sub_29A00911C(v154, "\x1B[37m", 5);
    v156 = sub_29A00911C(v155, "PXR_INTERNAL_NS_pegtl::keyword<'F', 'a', 'l', 's', 'e'>]", 55);
    sub_29A00911C(v156, "\x1B[m", 3);
  }

  LOBYTE(v264) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v264);
  if (v266 < 0)
  {
    operator delete(__p[1]);
  }

  LOBYTE(v264) = 35;
  v157 = MEMORY[0x29EDC93C0];
  v158 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  *(v158 + *(*v158 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v159 = *(a3 + 8) + 1;
  *(a3 + 8) = v159;
  v161 = MEMORY[0x29C2C1F00](v158, v159, v160);
  v162 = sub_29A00911C(v161, "\x1B[36m", 5);
  v163 = sub_29A00911C(v162, "PXR_INTERNAL_NS_pegtl::keyword<'f', 'a', 'l', 's', 'e'>]", 55);
  v164 = sub_29A00911C(v163, "\x1B[m", 3);
  LOBYTE(v264) = 10;
  sub_29A00911C(v164, &v264, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  if (sub_29A2D57C8(a1))
  {
    v165 = *(a1 + 24);
    v264 = *(a1 + 8);
    *__p = v165;
    v166 = sub_29A230978(a1);
    v167 = *__p;
    *(a1 + 8) = v264;
    *(a1 + 24) = v167;
    if ((v166 & 1) == 0)
    {
      v193 = *(a3 + 16);
      v192 = *(a3 + 24);
      v195 = *(v192 - 8);
      v192 -= 8;
      v194 = v195;
      *(a3 + 24) = v192;
      *(v157 + *(*v157 - 24) + 24) = (((v192 - v193) << 30) + 0x800000000) >> 32;
      LOBYTE(v264) = 32;
      v196 = sub_29A00911C(v157, &v264, 1);
      v197 = sub_29A00911C(v196, "\x1B[32m", 5);
      v198 = sub_29A00911C(v197, "success", 7);
      sub_29A00911C(v198, "\x1B[m", 3);
      if (*v9 != v195)
      {
        v199 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
        v200 = MEMORY[0x29C2C1F00](v199, v194);
        LOBYTE(v264) = 32;
        v201 = sub_29A00911C(v200, &v264, 1);
        v202 = sub_29A00911C(v201, "\x1B[37m", 5);
        v203 = sub_29A00911C(v202, "PXR_INTERNAL_NS_pegtl::keyword<'f', 'a', 'l', 's', 'e'>]", 55);
        sub_29A00911C(v203, "\x1B[m", 3);
      }

LABEL_52:
      LOBYTE(v264) = 10;
      sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
      sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
      sub_29A2D7940(a3, &v264);
      if (v266 < 0)
      {
        operator delete(__p[1]);
      }

      v111 = 1;
      goto LABEL_55;
    }
  }

  v169 = *(a3 + 16);
  v168 = *(a3 + 24);
  v171 = *(v168 - 8);
  v168 -= 8;
  v170 = v171;
  *(a3 + 24) = v168;
  *(v157 + *(*v157 - 24) + 24) = (((v168 - v169) << 30) + 0x800000000) >> 32;
  LOBYTE(v264) = 32;
  v172 = sub_29A00911C(v157, &v264, 1);
  v173 = sub_29A00911C(v172, "\x1B[31m", 5);
  v174 = sub_29A00911C(v173, "failure", 7);
  sub_29A00911C(v174, "\x1B[m", 3);
  if (*v9 != v171)
  {
    v175 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v176 = MEMORY[0x29C2C1F00](v175, v170);
    LOBYTE(v264) = 32;
    v177 = sub_29A00911C(v176, &v264, 1);
    v178 = sub_29A00911C(v177, "\x1B[37m", 5);
    v179 = sub_29A00911C(v178, "PXR_INTERNAL_NS_pegtl::keyword<'f', 'a', 'l', 's', 'e'>]", 55);
    sub_29A00911C(v179, "\x1B[m", 3);
  }

  LOBYTE(v264) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v264);
  if (v266 < 0)
  {
    operator delete(__p[1]);
  }

  v111 = 0;
LABEL_55:
  if (v261 == 1)
  {
    v261 = 0;
  }

  sub_29A2E6C84(&v258);
  v204 = *(a3 + 24);
  if (v111)
  {
    *(v132 + *(*v132 - 24) + 24) = (((v204 - *v8) << 30) + 0x600000000) >> 32;
    LOBYTE(v264) = 32;
    v205 = sub_29A00911C(v132, &v264, 1);
    v206 = sub_29A00911C(v205, "\x1B[1;36m", 7);
    v207 = sub_29A00911C(v206, "apply", 5);
    v208 = sub_29A00911C(v207, "\x1B[m", 3);
    LOBYTE(v264) = 10;
    sub_29A00911C(v208, &v264, 1);
    *(sub_29A2D55F4(a2) + 8) = 0;
    v210 = *(a3 + 16);
    v209 = *(a3 + 24);
    v212 = *(v209 - 8);
    v209 -= 8;
    v211 = v212;
    *(a3 + 24) = v209;
    *(v132 + *(*v132 - 24) + 24) = (((v209 - v210) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v213 = sub_29A00911C(v132, &v264, 1);
    v214 = sub_29A00911C(v213, "\x1B[32m", 5);
    v215 = sub_29A00911C(v214, "success", 7);
    sub_29A00911C(v215, "\x1B[m", 3);
    if (*v9 != v212)
    {
      v216 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v217 = MEMORY[0x29C2C1F00](v216, v211);
      LOBYTE(v264) = 32;
      v218 = sub_29A00911C(v217, &v264, 1);
      v219 = sub_29A00911C(v218, "\x1B[37m", 5);
      v220 = sub_29A00911C(v219, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanFalse]", 69);
      sub_29A00911C(v220, "\x1B[m", 3);
    }

    LOBYTE(v264) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v264);
    if (v266 < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    v223 = *(v204 - 8);
    v221 = v204 - 8;
    v222 = v223;
    *(a3 + 24) = v221;
    *(v132 + *(*v132 - 24) + 24) = (((v221 - *(a3 + 16)) << 30) + 0x800000000) >> 32;
    LOBYTE(v264) = 32;
    v224 = sub_29A00911C(v132, &v264, 1);
    v225 = sub_29A00911C(v224, "\x1B[31m", 5);
    v226 = sub_29A00911C(v225, "failure", 7);
    sub_29A00911C(v226, "\x1B[m", 3);
    if (*v9 != v223)
    {
      v227 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v228 = MEMORY[0x29C2C1F00](v227, v222);
      LOBYTE(v264) = 32;
      v229 = sub_29A00911C(v228, &v264, 1);
      v230 = sub_29A00911C(v229, "\x1B[37m", 5);
      v231 = sub_29A00911C(v230, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanFalse]", 69);
      sub_29A00911C(v231, "\x1B[m", 3);
    }

    LOBYTE(v264) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v264);
    if (v266 < 0)
    {
      operator delete(__p[1]);
    }

    v232 = v257;
    *(a1 + 8) = v256;
    *(a1 + 24) = v232;
  }

LABEL_67:
  if (v255 == 1)
  {
    v255 = 0;
  }

  sub_29A2E6934(v254);
  v234 = *(a3 + 16);
  v233 = *(a3 + 24);
  v236 = *(v233 - 8);
  v233 -= 8;
  v235 = v236;
  *(a3 + 24) = v233;
  *(v6 + *(*v6 - 24) + 24) = (((v233 - v234) << 30) + 0x800000000) >> 32;
  if (v111)
  {
    LOBYTE(v264) = 32;
    v237 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    v238 = sub_29A00911C(v237, "\x1B[32m", 5);
    v239 = sub_29A00911C(v238, "success", 7);
    sub_29A00911C(v239, "\x1B[m", 3);
    if (*v9 != v235)
    {
      v240 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v241 = MEMORY[0x29C2C1F00](v240, v235);
      LOBYTE(v264) = 32;
      v242 = sub_29A00911C(v241, &v264, 1);
      v243 = sub_29A00911C(v242, "\x1B[37m", 5);
      v244 = sub_29A00911C(v243, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Boolean]", 64);
      sub_29A00911C(v244, "\x1B[m", 3);
    }
  }

  else
  {
    LOBYTE(v264) = 32;
    v245 = sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
    v246 = sub_29A00911C(v245, "\x1B[31m", 5);
    v247 = sub_29A00911C(v246, "failure", 7);
    sub_29A00911C(v247, "\x1B[m", 3);
    if (*v9 != v235)
    {
      v248 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v249 = MEMORY[0x29C2C1F00](v248, v235);
      LOBYTE(v264) = 32;
      v250 = sub_29A00911C(v249, &v264, 1);
      v251 = sub_29A00911C(v250, "\x1B[37m", 5);
      v252 = sub_29A00911C(v251, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Boolean]", 64);
      sub_29A00911C(v252, "\x1B[m", 3);
    }
  }

  LOBYTE(v264) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v264, 1);
  sub_29A2266C8(&v264, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v264);
  if (v266 < 0)
  {
    operator delete(__p[1]);
  }

  return v111;
}

void sub_29A2E6860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_29A2E6C84(&a15);
  v33 = a14;
  *(v31 + 8) = a13;
  *(v31 + 24) = v33;
  sub_29A2E6934(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2E6934(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Boolean]", 64);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E6AB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E6ADC(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanTrue]", 68);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E6C60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E6C84(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BooleanFalse]", 69);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E6E08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2E6E2C(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::None]", 61);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E6FB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E6FD4(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Function]", 65);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2E70AC(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Function]", 65);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E7218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E7234(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "failure", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Function]", 65);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E73A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E73BC(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2EC13C(*a1, *(a1 + 16));
  }

  return a1;
}

void sub_29A2E73FC(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart>]", 177);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2E74D4(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart>]", 177);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E7640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E765C(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "failure", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart>]", 177);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E77C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E77E4(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E8944(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2E7824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = (a1 + 8);
  v46 = *(a1 + 8);
  v47 = v6;
  v48 = a1 + 8;
  v49.__r_.__value_.__s.__data_[0] = 35;
  v8 = MEMORY[0x29EDC93C0];
  v9 = sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
  *(v9 + *(*v9 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v10 = (a3 + 8);
  ++*(a3 + 8);
  v11 = MEMORY[0x29C2C1F00]();
  v12 = sub_29A00911C(v11, "\x1B[36m", 5);
  v13 = sub_29A00911C(v12, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName]", 69);
  v14 = sub_29A00911C(v13, "\x1B[m", 3);
  v49.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v14, &v49, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v15 = sub_29A267084(a1);
  if (v15)
  {
      ;
    }

    *(v8 + *(*v8 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x600000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v16 = sub_29A00911C(v8, &v49, 1);
    v17 = sub_29A00911C(v16, "\x1B[1;36m", 7);
    v18 = sub_29A00911C(v17, "apply", 5);
    v19 = sub_29A00911C(v18, "\x1B[m", 3);
    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(v19, &v49, 1);
    sub_29A2D5AD0(&v46, a1, a2);
    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v23 = *(v20 - 8);
    v20 -= 8;
    v22 = v23;
    *(a3 + 24) = v20;
    *(v8 + *(*v8 - 24) + 24) = (((v20 - v21) << 30) + 0x800000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v24 = sub_29A00911C(v8, &v49, 1);
    v25 = sub_29A00911C(v24, "\x1B[32m", 5);
    v26 = sub_29A00911C(v25, "success", 7);
    sub_29A00911C(v26, "\x1B[m", 3);
    if (*v10 != v23)
    {
      v27 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v28 = MEMORY[0x29C2C1F00](v27, v22);
      v49.__r_.__value_.__s.__data_[0] = 32;
      v29 = sub_29A00911C(v28, &v49, 1);
      v30 = sub_29A00911C(v29, "\x1B[37m", 5);
      v31 = sub_29A00911C(v30, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName]", 69);
      sub_29A00911C(v31, "\x1B[m", 3);
    }

    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
    sub_29A2266C8(&v49, v7, (a1 + 48));
    sub_29A2D7940(a3, &v49);
    if (v51 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
    v35 = *(v32 - 8);
    v32 -= 8;
    v34 = v35;
    *(a3 + 24) = v32;
    *(v8 + *(*v8 - 24) + 24) = (((v32 - v33) << 30) + 0x800000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v36 = sub_29A00911C(v8, &v49, 1);
    v37 = sub_29A00911C(v36, "\x1B[31m", 5);
    v38 = sub_29A00911C(v37, "failure", 7);
    sub_29A00911C(v38, "\x1B[m", 3);
    if (*v10 != v35)
    {
      v39 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v40 = MEMORY[0x29C2C1F00](v39, v34);
      v49.__r_.__value_.__s.__data_[0] = 32;
      v41 = sub_29A00911C(v40, &v49, 1);
      v42 = sub_29A00911C(v41, "\x1B[37m", 5);
      v43 = sub_29A00911C(v42, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName]", 69);
      sub_29A00911C(v43, "\x1B[m", 3);
    }

    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
    sub_29A2266C8(&v49, v7, (a1 + 48));
    sub_29A2D7940(a3, &v49);
    if (v51 < 0)
    {
      operator delete(__p);
    }

    v44 = v47;
    *v7 = v46;
    v7[1] = v44;
  }

  return v15;
}

void sub_29A2E7C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  *v21 = a9;
  v21[1] = a10;
  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2E7CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70.__r_.__value_.__s.__data_[0] = 35;
  v6 = sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
  *(v6 + *(*v6 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v7 = (a3 + 8);
  ++*(a3 + 8);
  v8 = MEMORY[0x29C2C1F00]();
  v9 = sub_29A00911C(v8, "\x1B[36m", 5);
  v10 = sub_29A00911C(v9, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart]", 78);
  v11 = sub_29A00911C(v10, "\x1B[m", 3);
  v70.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v11, &v70, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v68[0] = a1;
  v68[1] = a2;
  v68[2] = a3;
  v69 = 1;
    ;
  }

  v70.__r_.__value_.__s.__data_[0] = 35;
  v12 = MEMORY[0x29EDC93C0];
  v13 = sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
  *(v13 + *(*v13 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v14 = *(a3 + 8) + 1;
  *(a3 + 8) = v14;
  v16 = MEMORY[0x29C2C1F00](v13, v14, v15);
  v17 = sub_29A00911C(v16, "\x1B[36m", 5);
  v18 = sub_29A00911C(v17, "PXR_INTERNAL_NS_pegtl::one<'('>]", 31);
  v19 = sub_29A00911C(v18, "\x1B[m", 3);
  v70.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v19, &v70, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v20 = *(a1 + 8);
  if (v20 == *(a1 + 40) || *v20 != 40)
  {
    v36 = *(a3 + 16);
    v35 = *(a3 + 24);
    v38 = *(v35 - 8);
    v35 -= 8;
    v37 = v38;
    *(a3 + 24) = v35;
    *(v12 + *(*v12 - 24) + 24) = (((v35 - v36) << 30) + 0x800000000) >> 32;
    v70.__r_.__value_.__s.__data_[0] = 32;
    v39 = sub_29A00911C(v12, &v70, 1);
    v40 = sub_29A00911C(v39, "\x1B[31m", 5);
    v41 = sub_29A00911C(v40, "failure", 7);
    sub_29A00911C(v41, "\x1B[m", 3);
    if (*v7 != v38)
    {
      v42 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v43 = MEMORY[0x29C2C1F00](v42, v37);
      v70.__r_.__value_.__s.__data_[0] = 32;
      v44 = sub_29A00911C(v43, &v70, 1);
      v45 = sub_29A00911C(v44, "\x1B[37m", 5);
      v46 = sub_29A00911C(v45, "PXR_INTERNAL_NS_pegtl::one<'('>]", 31);
      sub_29A00911C(v46, "\x1B[m", 3);
    }

    v70.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
    sub_29A2266C8(&v70, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v70);
    if (v72 < 0)
    {
      operator delete(__p);
    }

    v34 = 0;
  }

  else
  {
    v21 = *(a1 + 16) + 1;
    *(a1 + 8) = v20 + 1;
    *(a1 + 16) = v21;
    ++*(a1 + 32);
    v23 = *(a3 + 16);
    v22 = *(a3 + 24);
    v25 = *(v22 - 8);
    v22 -= 8;
    v24 = v25;
    *(a3 + 24) = v22;
    *(v12 + *(*v12 - 24) + 24) = (((v22 - v23) << 30) + 0x800000000) >> 32;
    v70.__r_.__value_.__s.__data_[0] = 32;
    v26 = sub_29A00911C(v12, &v70, 1);
    v27 = sub_29A00911C(v26, "\x1B[32m", 5);
    v28 = sub_29A00911C(v27, "success", 7);
    sub_29A00911C(v28, "\x1B[m", 3);
    if (*v7 != v25)
    {
      v29 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v30 = MEMORY[0x29C2C1F00](v29, v24);
      v70.__r_.__value_.__s.__data_[0] = 32;
      v31 = sub_29A00911C(v30, &v70, 1);
      v32 = sub_29A00911C(v31, "\x1B[37m", 5);
      v33 = sub_29A00911C(v32, "PXR_INTERNAL_NS_pegtl::one<'('>]", 31);
      sub_29A00911C(v33, "\x1B[m", 3);
    }

    v70.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
    sub_29A2266C8(&v70, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v70);
    if (v72 < 0)
    {
      operator delete(__p);
    }

      ;
    }

    v34 = 1;
  }

  if (v69 == 1)
  {
    v69 = 0;
  }

  sub_29A2E83D8(v68);
  v48 = *(a3 + 16);
  v47 = *(a3 + 24);
  v50 = *(v47 - 8);
  v47 -= 8;
  v49 = v50;
  *(a3 + 24) = v47;
  *(v12 + *(*v12 - 24) + 24) = (((v47 - v48) << 30) + 0x800000000) >> 32;
  if (v34)
  {
    v70.__r_.__value_.__s.__data_[0] = 32;
    v51 = sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
    v52 = sub_29A00911C(v51, "\x1B[32m", 5);
    v53 = sub_29A00911C(v52, "success", 7);
    sub_29A00911C(v53, "\x1B[m", 3);
    if (*v7 != v49)
    {
      v54 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v55 = MEMORY[0x29C2C1F00](v54, v49);
      v70.__r_.__value_.__s.__data_[0] = 32;
      v56 = sub_29A00911C(v55, &v70, 1);
      v57 = sub_29A00911C(v56, "\x1B[37m", 5);
      v58 = sub_29A00911C(v57, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart]", 78);
      sub_29A00911C(v58, "\x1B[m", 3);
    }
  }

  else
  {
    v70.__r_.__value_.__s.__data_[0] = 32;
    v59 = sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
    v60 = sub_29A00911C(v59, "\x1B[31m", 5);
    v61 = sub_29A00911C(v60, "failure", 7);
    sub_29A00911C(v61, "\x1B[m", 3);
    if (*v7 != v49)
    {
      v62 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v63 = MEMORY[0x29C2C1F00](v62, v49);
      v70.__r_.__value_.__s.__data_[0] = 32;
      v64 = sub_29A00911C(v63, &v70, 1);
      v65 = sub_29A00911C(v64, "\x1B[37m", 5);
      v66 = sub_29A00911C(v65, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart]", 78);
      sub_29A00911C(v66, "\x1B[m", 3);
    }
  }

  v70.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v70, 1);
  sub_29A2266C8(&v70, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v70);
  if (v72 < 0)
  {
    operator delete(__p);
  }

  return v34;
}

void sub_29A2E8384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_29A2E83D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2E83D8(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart]", 78);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E855C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A2E8580(uint64_t a1, uint64_t a2)
{
  v37.__r_.__value_.__s.__data_[0] = 35;
  v4 = MEMORY[0x29EDC93C0];
  v5 = sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
  *(v5 + *(*v5 - 24) + 24) = (((*(a2 + 24) - *(a2 + 16)) << 30) + 0x700000000) >> 32;
  ++*(a2 + 8);
  v6 = MEMORY[0x29C2C1F00]();
  v7 = sub_29A00911C(v6, "\x1B[36m", 5);
  v8 = sub_29A00911C(v7, "PXR_INTERNAL_NS_pegtl::one<' '>]", 31);
  v9 = sub_29A00911C(v8, "\x1B[m", 3);
  v37.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v9, &v37, 1);
  sub_29A018094((a2 + 16), (a2 + 8));
  v10 = *(a1 + 8);
  if (v10 == *(a1 + 40) || *v10 != 32)
  {
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    v28 = *(v25 - 8);
    v25 -= 8;
    v27 = v28;
    *(a2 + 24) = v25;
    *(v4 + *(*v4 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v29 = sub_29A00911C(v4, &v37, 1);
    v30 = sub_29A00911C(v29, "\x1B[31m", 5);
    v31 = sub_29A00911C(v30, "failure", 7);
    sub_29A00911C(v31, "\x1B[m", 3);
    if (*(a2 + 8) != v28)
    {
      v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v33 = MEMORY[0x29C2C1F00](v32, v27);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v34 = sub_29A00911C(v33, &v37, 1);
      v35 = sub_29A00911C(v34, "\x1B[37m", 5);
      v36 = sub_29A00911C(v35, "PXR_INTERNAL_NS_pegtl::one<' '>]", 31);
      sub_29A00911C(v36, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  else
  {
    v11 = *(a1 + 16) + 1;
    *(a1 + 8) = v10 + 1;
    *(a1 + 16) = v11;
    ++*(a1 + 32);
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v15 = *(v12 - 8);
    v12 -= 8;
    v14 = v15;
    *(a2 + 24) = v12;
    *(v4 + *(*v4 - 24) + 24) = (((v12 - v13) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v16 = sub_29A00911C(v4, &v37, 1);
    v17 = sub_29A00911C(v16, "\x1B[32m", 5);
    v18 = sub_29A00911C(v17, "success", 7);
    sub_29A00911C(v18, "\x1B[m", 3);
    if (*(a2 + 8) != v15)
    {
      v19 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v20 = MEMORY[0x29C2C1F00](v19, v14);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v21 = sub_29A00911C(v20, &v37, 1);
      v22 = sub_29A00911C(v21, "\x1B[37m", 5);
      v23 = sub_29A00911C(v22, "PXR_INTERNAL_NS_pegtl::one<' '>]", 31);
      sub_29A00911C(v23, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 1;
  }
}

void sub_29A2E8924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E8944(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::seq<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionName, pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentStart>]", 177);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E8AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2E8ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69.__r_.__value_.__s.__data_[0] = 35;
  v6 = sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
  *(v6 + *(*v6 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v7 = (a3 + 8);
  ++*(a3 + 8);
  v8 = MEMORY[0x29C2C1F00]();
  v9 = sub_29A00911C(v8, "\x1B[36m", 5);
  v10 = sub_29A00911C(v9, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentEnd]", 76);
  v11 = sub_29A00911C(v10, "\x1B[m", 3);
  v69.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v11, &v69, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v67[0] = a1;
  v67[1] = a2;
  v67[2] = a3;
  v68 = 1;
    ;
  }

  v69.__r_.__value_.__s.__data_[0] = 35;
  v12 = MEMORY[0x29EDC93C0];
  v13 = sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
  *(v13 + *(*v13 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v14 = *(a3 + 8) + 1;
  *(a3 + 8) = v14;
  v16 = MEMORY[0x29C2C1F00](v13, v14, v15);
  v17 = sub_29A00911C(v16, "\x1B[36m", 5);
  v18 = sub_29A00911C(v17, "PXR_INTERNAL_NS_pegtl::one<')'>]", 31);
  v19 = sub_29A00911C(v18, "\x1B[m", 3);
  v69.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v19, &v69, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v20 = *(a1 + 8);
  if (v20 == *(a1 + 40) || *v20 != 41)
  {
    v36 = *(a3 + 16);
    v35 = *(a3 + 24);
    v38 = *(v35 - 8);
    v35 -= 8;
    v37 = v38;
    *(a3 + 24) = v35;
    *(v12 + *(*v12 - 24) + 24) = (((v35 - v36) << 30) + 0x800000000) >> 32;
    v69.__r_.__value_.__s.__data_[0] = 32;
    v39 = sub_29A00911C(v12, &v69, 1);
    v40 = sub_29A00911C(v39, "\x1B[31m", 5);
    v41 = sub_29A00911C(v40, "failure", 7);
    sub_29A00911C(v41, "\x1B[m", 3);
    if (*v7 != v38)
    {
      v42 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v43 = MEMORY[0x29C2C1F00](v42, v37);
      v69.__r_.__value_.__s.__data_[0] = 32;
      v44 = sub_29A00911C(v43, &v69, 1);
      v45 = sub_29A00911C(v44, "\x1B[37m", 5);
      v46 = sub_29A00911C(v45, "PXR_INTERNAL_NS_pegtl::one<')'>]", 31);
      sub_29A00911C(v46, "\x1B[m", 3);
    }

    v69.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
    sub_29A2266C8(&v69, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v69);
    if (v71 < 0)
    {
      operator delete(__p);
    }

    v34 = 0;
  }

  else
  {
    v21 = *(a1 + 16) + 1;
    *(a1 + 8) = v20 + 1;
    *(a1 + 16) = v21;
    ++*(a1 + 32);
    v23 = *(a3 + 16);
    v22 = *(a3 + 24);
    v25 = *(v22 - 8);
    v22 -= 8;
    v24 = v25;
    *(a3 + 24) = v22;
    *(v12 + *(*v12 - 24) + 24) = (((v22 - v23) << 30) + 0x800000000) >> 32;
    v69.__r_.__value_.__s.__data_[0] = 32;
    v26 = sub_29A00911C(v12, &v69, 1);
    v27 = sub_29A00911C(v26, "\x1B[32m", 5);
    v28 = sub_29A00911C(v27, "success", 7);
    sub_29A00911C(v28, "\x1B[m", 3);
    if (*v7 != v25)
    {
      v29 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v30 = MEMORY[0x29C2C1F00](v29, v24);
      v69.__r_.__value_.__s.__data_[0] = 32;
      v31 = sub_29A00911C(v30, &v69, 1);
      v32 = sub_29A00911C(v31, "\x1B[37m", 5);
      v33 = sub_29A00911C(v32, "PXR_INTERNAL_NS_pegtl::one<')'>]", 31);
      sub_29A00911C(v33, "\x1B[m", 3);
    }

    v69.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
    sub_29A2266C8(&v69, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v69);
    if (v71 < 0)
    {
      operator delete(__p);
    }

      ;
    }

    v34 = 1;
  }

  if (v68 == 1)
  {
    v68 = 0;
  }

  sub_29A2ECF00(v67);
  v48 = *(a3 + 16);
  v47 = *(a3 + 24);
  v50 = *(v47 - 8);
  v47 -= 8;
  v49 = v50;
  *(a3 + 24) = v47;
  *(v12 + *(*v12 - 24) + 24) = (((v47 - v48) << 30) + 0x800000000) >> 32;
  if (!v34)
  {
    v69.__r_.__value_.__s.__data_[0] = 32;
    v59 = sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
    v60 = sub_29A00911C(v59, "\x1B[31m", 5);
    v61 = sub_29A00911C(v60, "failure", 7);
    sub_29A00911C(v61, "\x1B[m", 3);
    if (*v7 != v49)
    {
      v62 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v63 = MEMORY[0x29C2C1F00](v62, v49);
      v69.__r_.__value_.__s.__data_[0] = 32;
      v64 = sub_29A00911C(v63, &v69, 1);
      v65 = sub_29A00911C(v64, "\x1B[37m", 5);
      v66 = sub_29A00911C(v65, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentEnd]", 76);
      sub_29A00911C(v66, "\x1B[m", 3);
    }

    v69.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
    sub_29A2266C8(&v69, a1 + 8, (a1 + 48));
    sub_29A2D7940(a3, &v69);
    if (v71 < 0)
    {
      operator delete(__p);
    }

    sub_29A2ECEE4(a1, a2, a3);
  }

  v69.__r_.__value_.__s.__data_[0] = 32;
  v51 = sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
  v52 = sub_29A00911C(v51, "\x1B[32m", 5);
  v53 = sub_29A00911C(v52, "success", 7);
  sub_29A00911C(v53, "\x1B[m", 3);
  if (*v7 != v49)
  {
    v54 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v55 = MEMORY[0x29C2C1F00](v54, v49);
    v69.__r_.__value_.__s.__data_[0] = 32;
    v56 = sub_29A00911C(v55, &v69, 1);
    v57 = sub_29A00911C(v56, "\x1B[37m", 5);
    v58 = sub_29A00911C(v57, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentEnd]", 76);
    sub_29A00911C(v58, "\x1B[m", 3);
  }

  v69.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v69, 1);
  sub_29A2266C8(&v69, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v69);
  if (v71 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E91C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_29A2ECF00(&a9);
  _Unwind_Resume(a1);
}

void sub_29A2E921C(__int128 *a1, void *a2, uint64_t a3)
{
  LOBYTE(v61) = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v8 = (a3 + 8);
  ++*(a3 + 8);
  v9 = MEMORY[0x29C2C1F00]();
  v10 = sub_29A00911C(v9, "\x1B[36m", 5);
  v11 = sub_29A00911C(v10, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArguments]", 74);
  v12 = sub_29A00911C(v11, "\x1B[m", 3);
  LOBYTE(v61) = 10;
  sub_29A00911C(v12, &v61, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v57[0] = a1;
  v57[1] = a2;
  v57[2] = a3;
  v58 = 1;
  LOBYTE(v61) = 35;
  v13 = sub_29A00911C(v6, &v61, 1);
  *(v13 + *(*v13 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v14 = *(a3 + 8) + 1;
  *(a3 + 8) = v14;
  v16 = MEMORY[0x29C2C1F00](v13, v14, v15);
  v17 = sub_29A00911C(v16, "\x1B[36m", 5);
  v18 = sub_29A00911C(v17, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 248);
  v19 = sub_29A00911C(v18, "\x1B[m", 3);
  LOBYTE(v61) = 10;
  sub_29A00911C(v19, &v61, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = a3;
  v60 = 1;
  v20 = *(a1 + 24);
  v64 = *(a1 + 8);
  v65 = v20;
  v21 = sub_29A2E9E6C(a1, a2, a3);
  if (v21)
  {
    do
    {
      v22 = *(a1 + 24);
      v61 = *(a1 + 8);
      *__p = v22;
    }

    while (sub_29A2EC2C4(a1, a3) && sub_29A2E9E6C(a1, a2, a3));
    v23 = v61;
    v24 = *__p;
  }

  else
  {
    v23 = v64;
    v24 = v65;
  }

  *(a1 + 8) = v23;
  *(a1 + 24) = v24;
  if (v60 == 1)
  {
    v60 = 0;
  }

  sub_29A2E9CC4(v59);
  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v28 = *(v25 - 8);
  v25 -= 8;
  v27 = v28;
  *(a3 + 24) = v25;
  *(v6 + *(*v6 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
  if (v21)
  {
    LOBYTE(v61) = 32;
    v29 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    v30 = sub_29A00911C(v29, "\x1B[32m", 5);
    v31 = sub_29A00911C(v30, "success", 7);
    sub_29A00911C(v31, "\x1B[m", 3);
    if (*v8 != v27)
    {
      v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v33 = MEMORY[0x29C2C1F00](v32, v27);
      LOBYTE(v61) = 32;
      v34 = sub_29A00911C(v33, &v61, 1);
      v35 = sub_29A00911C(v34, "\x1B[37m", 5);
      v36 = sub_29A00911C(v35, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 248);
      sub_29A00911C(v36, "\x1B[m", 3);
    }

    LOBYTE(v61) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    sub_29A2266C8(&v61, a1 + 8, a1 + 3);
    sub_29A2D7940(a3, &v61);
    if (v63 < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    LOBYTE(v61) = 32;
    v37 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    v38 = sub_29A00911C(v37, "\x1B[31m", 5);
    v39 = sub_29A00911C(v38, "failure", 7);
    sub_29A00911C(v39, "\x1B[m", 3);
    if (*v8 != v27)
    {
      v40 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v41 = MEMORY[0x29C2C1F00](v40, v27);
      LOBYTE(v61) = 32;
      v42 = sub_29A00911C(v41, &v61, 1);
      v43 = sub_29A00911C(v42, "\x1B[37m", 5);
      v44 = sub_29A00911C(v43, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 248);
      sub_29A00911C(v44, "\x1B[m", 3);
    }

    LOBYTE(v61) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    sub_29A2266C8(&v61, a1 + 8, a1 + 3);
    sub_29A2D7940(a3, &v61);
    if (v63 < 0)
    {
      operator delete(__p[1]);
    }

    sub_29A2E9A28(a1, a2, a3);
  }

  if (v58 == 1)
  {
    v58 = 0;
  }

  sub_29A2E9880(v57);
  v46 = *(a3 + 16);
  v45 = *(a3 + 24);
  v48 = *(v45 - 8);
  v45 -= 8;
  v47 = v48;
  *(a3 + 24) = v45;
  *(v6 + *(*v6 - 24) + 24) = (((v45 - v46) << 30) + 0x800000000) >> 32;
  LOBYTE(v61) = 32;
  v49 = sub_29A00911C(v6, &v61, 1);
  v50 = sub_29A00911C(v49, "\x1B[32m", 5);
  v51 = sub_29A00911C(v50, "success", 7);
  sub_29A00911C(v51, "\x1B[m", 3);
  if (*(a3 + 8) != v48)
  {
    v52 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v53 = MEMORY[0x29C2C1F00](v52, v47);
    LOBYTE(v61) = 32;
    v54 = sub_29A00911C(v53, &v61, 1);
    v55 = sub_29A00911C(v54, "\x1B[37m", 5);
    v56 = sub_29A00911C(v55, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArguments]", 74);
    sub_29A00911C(v56, "\x1B[m", 3);
  }

  LOBYTE(v61) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
  sub_29A2266C8(&v61, a1 + 8, a1 + 3);
  sub_29A2D7940(a3, &v61);
  if (v63 < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_29A2E9808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, __int128 a25, __int128 a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29A2E9880(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2E9880(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArguments]", 74);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E9A04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2E9A28(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  v24.__r_.__value_.__s.__data_[0] = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v24, 1);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  ++*(a3 + 8);
  v8 = MEMORY[0x29C2C1F00]();
  v9 = sub_29A00911C(v8, "\x1B[36m", 5);
  v10 = sub_29A00911C(v9, "PXR_INTERNAL_NS_pegtl::star<PXR_INTERNAL_NS_pegtl::one<' '>>]", 60);
  v11 = sub_29A00911C(v10, "\x1B[m", 3);
  v24.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v11, &v24, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v24.__r_.__value_.__r.__words[0] = a1;
  v24.__r_.__value_.__l.__size_ = a2;
  v24.__r_.__value_.__r.__words[2] = a3;
  LOBYTE(__p) = 1;
    ;
  }

  if (__p == 1)
  {
    LOBYTE(__p) = 0;
  }

  sub_29A2ECD3C(&v24);
  v13 = *(a3 + 16);
  v12 = *(a3 + 24);
  v15 = *(v12 - 8);
  v12 -= 8;
  v14 = v15;
  *(a3 + 24) = v12;
  *(v6 + *(*v6 - 24) + 24) = (((v12 - v13) << 30) + 0x800000000) >> 32;
  v24.__r_.__value_.__s.__data_[0] = 32;
  v16 = sub_29A00911C(v6, &v24, 1);
  v17 = sub_29A00911C(v16, "\x1B[32m", 5);
  v18 = sub_29A00911C(v17, "success", 7);
  sub_29A00911C(v18, "\x1B[m", 3);
  if (*(a3 + 8) != v15)
  {
    v19 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v20 = MEMORY[0x29C2C1F00](v19, v14);
    v24.__r_.__value_.__s.__data_[0] = 32;
    v21 = sub_29A00911C(v20, &v24, 1);
    v22 = sub_29A00911C(v21, "\x1B[37m", 5);
    v23 = sub_29A00911C(v22, "PXR_INTERNAL_NS_pegtl::star<PXR_INTERNAL_NS_pegtl::one<' '>>]", 60);
    sub_29A00911C(v23, "\x1B[m", 3);
  }

  v24.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v24, 1);
  sub_29A2266C8(&v24, a1 + 8, (a1 + 48));
  sub_29A2D7940(a3, &v24);
  if (v26 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2E9C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2E9CC4(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 248);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2E9E48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A2E9E6C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = (a1 + 8);
  v51 = *(a1 + 8);
  v52 = v6;
  v53 = a1 + 8;
  LOBYTE(v54) = 35;
  v8 = MEMORY[0x29EDC93C0];
  v9 = sub_29A00911C(MEMORY[0x29EDC93C0], &v54, 1);
  *(v9 + *(*v9 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v10 = (a3 + 8);
  ++*(a3 + 8);
  v11 = MEMORY[0x29C2C1F00]();
  v12 = sub_29A00911C(v11, "\x1B[36m", 5);
  v13 = sub_29A00911C(v12, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>]", 153);
  v14 = sub_29A00911C(v13, "\x1B[m", 3);
  LOBYTE(v54) = 10;
  sub_29A00911C(v14, &v54, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v57[0] = a1;
  v57[1] = a2;
  v57[2] = a3;
  v58 = 1;
  if (sub_29A2D7D08(a1, a2, a3))
  {
    goto LABEL_11;
  }

  sub_29A2EA5FC(a3);
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = a3;
  v60 = 1;
  v15 = v7[1];
  v54 = *v7;
  *__p = v15;
  sub_29A2EAA24(a3);
  v16 = *(a1 + 8);
  if (v16 == *(a1 + 40) || *v16 != 91)
  {
    sub_29A2EAD44(a1, a3);
    v18 = 0;
    v19 = *__p;
    *v7 = v54;
    v7[1] = v19;
  }

  else
  {
    v17 = *(a1 + 16) + 1;
    *(a1 + 8) = v16 + 1;
    *(a1 + 16) = v17;
    ++*(a1 + 32);
    sub_29A2EAAFC(a2, a3);
    sub_29A2EABBC(a1, a3);
    sub_29A2EAECC(a1, a2, a3);
    if ((sub_29A2EC6A8(a1, a3) & 1) == 0)
    {
      sub_29A2ECA6C(a1, a2, a3);
    }

    v18 = 1;
  }

  if (v60 == 1)
  {
    v60 = 0;
  }

  sub_29A2EA9E4(v59);
  if (v18)
  {
    sub_29A2EA6D4(a1, a3);
LABEL_11:
    v20 = 1;
    goto LABEL_13;
  }

  sub_29A2EA85C(a1, a3);
  v20 = 0;
LABEL_13:
  if (v58 == 1)
  {
    v58 = 0;
  }

  sub_29A2EA454(v57);
  v21 = *(a3 + 24);
  if (v20)
  {
    *(v8 + *(*v8 - 24) + 24) = (((v21 - *(a3 + 16)) << 30) + 0x600000000) >> 32;
    LOBYTE(v54) = 32;
    v22 = sub_29A00911C(v8, &v54, 1);
    v23 = sub_29A00911C(v22, "\x1B[1;36m", 7);
    v24 = sub_29A00911C(v23, "apply", 5);
    v25 = sub_29A00911C(v24, "\x1B[m", 3);
    LOBYTE(v54) = 10;
    sub_29A00911C(v25, &v54, 1);
    sub_29A2D6AF0(&v51, a1, a2);
    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v29 = *(v26 - 8);
    v26 -= 8;
    v28 = v29;
    *(a3 + 24) = v26;
    *(v8 + *(*v8 - 24) + 24) = (((v26 - v27) << 30) + 0x800000000) >> 32;
    LOBYTE(v54) = 32;
    v30 = sub_29A00911C(v8, &v54, 1);
    v31 = sub_29A00911C(v30, "\x1B[32m", 5);
    v32 = sub_29A00911C(v31, "success", 7);
    sub_29A00911C(v32, "\x1B[m", 3);
    if (*v10 != v29)
    {
      v33 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v34 = MEMORY[0x29C2C1F00](v33, v28);
      LOBYTE(v54) = 32;
      v35 = sub_29A00911C(v34, &v54, 1);
      v36 = sub_29A00911C(v35, "\x1B[37m", 5);
      v37 = sub_29A00911C(v36, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>]", 153);
      sub_29A00911C(v37, "\x1B[m", 3);
    }

    LOBYTE(v54) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v54, 1);
    sub_29A2266C8(&v54, v7, (a1 + 48));
    sub_29A2D7940(a3, &v54);
    if (v56 < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    v40 = *(v21 - 8);
    v38 = v21 - 8;
    v39 = v40;
    *(a3 + 24) = v38;
    *(v8 + *(*v8 - 24) + 24) = (((v38 - *(a3 + 16)) << 30) + 0x800000000) >> 32;
    LOBYTE(v54) = 32;
    v41 = sub_29A00911C(v8, &v54, 1);
    v42 = sub_29A00911C(v41, "\x1B[31m", 5);
    v43 = sub_29A00911C(v42, "failure", 7);
    sub_29A00911C(v43, "\x1B[m", 3);
    if (*v10 != v40)
    {
      v44 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v45 = MEMORY[0x29C2C1F00](v44, v39);
      LOBYTE(v54) = 32;
      v46 = sub_29A00911C(v45, &v54, 1);
      v47 = sub_29A00911C(v46, "\x1B[37m", 5);
      v48 = sub_29A00911C(v47, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>]", 153);
      sub_29A00911C(v48, "\x1B[m", 3);
    }

    LOBYTE(v54) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v54, 1);
    sub_29A2266C8(&v54, v7, (a1 + 48));
    sub_29A2D7940(a3, &v54);
    if (v56 < 0)
    {
      operator delete(__p[1]);
    }

    v49 = v52;
    *v7 = v51;
    v7[1] = v49;
  }

  return v20;
}

void sub_29A2EA3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  sub_29A2EA9E4(v22 - 96);
  sub_29A2EA454(&a21);
  *v21 = a9;
  v21[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2EA454(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentWrapper<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody>]", 153);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2EA5D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2EA5FC(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListExpression]", 71);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

void sub_29A2EA6D4(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListExpression]", 71);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2EA840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2EA85C(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "failure", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListExpression]", 71);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2EA9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2EA9E4(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2ECBB4(*a1, *(a1 + 16));
  }

  return a1;
}

void sub_29A2EAA24(uint64_t a1)
{
  v9 = 35;
  v2 = sub_29A00911C(MEMORY[0x29EDC93C0], &v9, 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 += 16;
  *(v2 + *(*v2 - 24) + 24) = (((v4 - v3) << 30) + 0x700000000) >> 32;
  ++*(a1 - 8);
  v5 = MEMORY[0x29C2C1F00]();
  v6 = sub_29A00911C(v5, "\x1B[36m", 5);
  v7 = sub_29A00911C(v6, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListStart]", 66);
  v8 = sub_29A00911C(v7, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v8, &v10, 1);
  sub_29A018094(a1, (a1 - 8));
}

uint64_t sub_29A2EAAFC(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((*(a2 + 24) - *(a2 + 16)) << 30) + 0x600000000) >> 32;
  v9 = 32;
  v4 = sub_29A00911C(v3, &v9, 1);
  v5 = sub_29A00911C(v4, "\x1B[1;36m", 7);
  v6 = sub_29A00911C(v5, "apply", 5);
  v7 = sub_29A00911C(v6, "\x1B[m", 3);
  v10 = 10;
  sub_29A00911C(v7, &v10, 1);
  return sub_29A2D6C8C(a1);
}

void sub_29A2EABBC(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[32m", 5);
  v11 = sub_29A00911C(v10, "success", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListStart]", 66);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2EAD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2EAD44(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "failure", 7);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListStart]", 66);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2EAEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2EAECC(__int128 *a1, void *a2, uint64_t a3)
{
  LOBYTE(v61) = 35;
  v6 = MEMORY[0x29EDC93C0];
  v7 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
  *(v7 + *(*v7 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v8 = (a3 + 8);
  ++*(a3 + 8);
  v9 = MEMORY[0x29C2C1F00]();
  v10 = sub_29A00911C(v9, "\x1B[36m", 5);
  v11 = sub_29A00911C(v10, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElements]", 69);
  v12 = sub_29A00911C(v11, "\x1B[m", 3);
  LOBYTE(v61) = 10;
  sub_29A00911C(v12, &v61, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v57[0] = a1;
  v57[1] = a2;
  v57[2] = a3;
  v58 = 1;
  LOBYTE(v61) = 35;
  v13 = sub_29A00911C(v6, &v61, 1);
  *(v13 + *(*v13 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v14 = *(a3 + 8) + 1;
  *(a3 + 8) = v14;
  v16 = MEMORY[0x29C2C1F00](v13, v14, v15);
  v17 = sub_29A00911C(v16, "\x1B[36m", 5);
  v18 = sub_29A00911C(v17, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 163);
  v19 = sub_29A00911C(v18, "\x1B[m", 3);
  LOBYTE(v61) = 10;
  sub_29A00911C(v19, &v61, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = a3;
  v60 = 1;
  v20 = *(a1 + 24);
  v64 = *(a1 + 8);
  v65 = v20;
  v21 = sub_29A2EB880(a1, a2, a3);
  if (v21)
  {
    do
    {
      v22 = *(a1 + 24);
      v61 = *(a1 + 8);
      *__p = v22;
    }

    while (sub_29A2EC2C4(a1, a3) && sub_29A2EB880(a1, a2, a3));
    v23 = v61;
    v24 = *__p;
  }

  else
  {
    v23 = v64;
    v24 = v65;
  }

  *(a1 + 8) = v23;
  *(a1 + 24) = v24;
  if (v60 == 1)
  {
    v60 = 0;
  }

  sub_29A2EB6D8(v59);
  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v28 = *(v25 - 8);
  v25 -= 8;
  v27 = v28;
  *(a3 + 24) = v25;
  *(v6 + *(*v6 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
  if (v21)
  {
    LOBYTE(v61) = 32;
    v29 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    v30 = sub_29A00911C(v29, "\x1B[32m", 5);
    v31 = sub_29A00911C(v30, "success", 7);
    sub_29A00911C(v31, "\x1B[m", 3);
    if (*v8 != v27)
    {
      v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v33 = MEMORY[0x29C2C1F00](v32, v27);
      LOBYTE(v61) = 32;
      v34 = sub_29A00911C(v33, &v61, 1);
      v35 = sub_29A00911C(v34, "\x1B[37m", 5);
      v36 = sub_29A00911C(v35, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 163);
      sub_29A00911C(v36, "\x1B[m", 3);
    }

    LOBYTE(v61) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    sub_29A2266C8(&v61, a1 + 8, a1 + 3);
    sub_29A2D7940(a3, &v61);
    if (v63 < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    LOBYTE(v61) = 32;
    v37 = sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    v38 = sub_29A00911C(v37, "\x1B[31m", 5);
    v39 = sub_29A00911C(v38, "failure", 7);
    sub_29A00911C(v39, "\x1B[m", 3);
    if (*v8 != v27)
    {
      v40 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v41 = MEMORY[0x29C2C1F00](v40, v27);
      LOBYTE(v61) = 32;
      v42 = sub_29A00911C(v41, &v61, 1);
      v43 = sub_29A00911C(v42, "\x1B[37m", 5);
      v44 = sub_29A00911C(v43, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 163);
      sub_29A00911C(v44, "\x1B[m", 3);
    }

    LOBYTE(v61) = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
    sub_29A2266C8(&v61, a1 + 8, a1 + 3);
    sub_29A2D7940(a3, &v61);
    if (v63 < 0)
    {
      operator delete(__p[1]);
    }

    sub_29A2E9A28(a1, a2, a3);
  }

  if (v58 == 1)
  {
    v58 = 0;
  }

  sub_29A2EB530(v57);
  v46 = *(a3 + 16);
  v45 = *(a3 + 24);
  v48 = *(v45 - 8);
  v45 -= 8;
  v47 = v48;
  *(a3 + 24) = v45;
  *(v6 + *(*v6 - 24) + 24) = (((v45 - v46) << 30) + 0x800000000) >> 32;
  LOBYTE(v61) = 32;
  v49 = sub_29A00911C(v6, &v61, 1);
  v50 = sub_29A00911C(v49, "\x1B[32m", 5);
  v51 = sub_29A00911C(v50, "success", 7);
  sub_29A00911C(v51, "\x1B[m", 3);
  if (*(a3 + 8) != v48)
  {
    v52 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v53 = MEMORY[0x29C2C1F00](v52, v47);
    LOBYTE(v61) = 32;
    v54 = sub_29A00911C(v53, &v61, 1);
    v55 = sub_29A00911C(v54, "\x1B[37m", 5);
    v56 = sub_29A00911C(v55, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElements]", 69);
    sub_29A00911C(v56, "\x1B[m", 3);
  }

  LOBYTE(v61) = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v61, 1);
  sub_29A2266C8(&v61, a1 + 8, a1 + 3);
  sub_29A2D7940(a3, &v61);
  if (v63 < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_29A2EB4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, __int128 a25, __int128 a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29A2EB530(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2EB530(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElements]", 69);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2EB6B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2EB6D8(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::list<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement, PXR_INTERNAL_NS_pegtl::one<','>, PXR_INTERNAL_NS_pegtl::one<' '>>]", 163);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2EB85C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A2EB880(__int128 *a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = (a1 + 8);
  v46 = *(a1 + 8);
  v47 = v6;
  v48 = a1 + 8;
  v49.__r_.__value_.__s.__data_[0] = 35;
  v8 = MEMORY[0x29EDC93C0];
  v9 = sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
  *(v9 + *(*v9 - 24) + 24) = (((*(a3 + 24) - *(a3 + 16)) << 30) + 0x700000000) >> 32;
  v10 = (a3 + 8);
  ++*(a3 + 8);
  v11 = MEMORY[0x29C2C1F00]();
  v12 = sub_29A00911C(v11, "\x1B[36m", 5);
  v13 = sub_29A00911C(v12, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement]", 68);
  v14 = sub_29A00911C(v13, "\x1B[m", 3);
  v49.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v14, &v49, 1);
  sub_29A018094((a3 + 16), (a3 + 8));
  v49.__r_.__value_.__r.__words[0] = a1;
  v49.__r_.__value_.__l.__size_ = a2;
  v49.__r_.__value_.__r.__words[2] = a3;
  LOBYTE(__p) = 1;
  if (sub_29A2D82D0(a1, a2, a3) & 1) != 0 || (sub_29A2D8ADC(a1, a2, a3) & 1) != 0 || (sub_29A2DA314(a1, a2, a3) & 1) != 0 || (sub_29A2DBB4C(a1, a2, a3) & 1) != 0 || (sub_29A2E4F98(a1, a2, a3) & 1) != 0 || (sub_29A2DCAC4(a1, a2, a3))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_29A2EBF60(a1, a2, a3);
  }

  if (__p == 1)
  {
    LOBYTE(__p) = 0;
  }

  sub_29A2EBDB8(&v49);
  v16 = *(a3 + 24);
  if (v15)
  {
    *(v8 + *(*v8 - 24) + 24) = (((v16 - *(a3 + 16)) << 30) + 0x600000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v17 = sub_29A00911C(v8, &v49, 1);
    v18 = sub_29A00911C(v17, "\x1B[1;36m", 7);
    v19 = sub_29A00911C(v18, "apply", 5);
    v20 = sub_29A00911C(v19, "\x1B[m", 3);
    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(v20, &v49, 1);
    sub_29A2D7038(&v46, a1, a2);
    v22 = *(a3 + 16);
    v21 = *(a3 + 24);
    v24 = *(v21 - 8);
    v21 -= 8;
    v23 = v24;
    *(a3 + 24) = v21;
    *(v8 + *(*v8 - 24) + 24) = (((v21 - v22) << 30) + 0x800000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v25 = sub_29A00911C(v8, &v49, 1);
    v26 = sub_29A00911C(v25, "\x1B[32m", 5);
    v27 = sub_29A00911C(v26, "success", 7);
    sub_29A00911C(v27, "\x1B[m", 3);
    if (*v10 != v24)
    {
      v28 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v29 = MEMORY[0x29C2C1F00](v28, v23);
      v49.__r_.__value_.__s.__data_[0] = 32;
      v30 = sub_29A00911C(v29, &v49, 1);
      v31 = sub_29A00911C(v30, "\x1B[37m", 5);
      v32 = sub_29A00911C(v31, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement]", 68);
      sub_29A00911C(v32, "\x1B[m", 3);
    }

    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
    sub_29A2266C8(&v49, v7, a1 + 3);
    sub_29A2D7940(a3, &v49);
    if (v51 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v35 = *(v16 - 8);
    v33 = v16 - 8;
    v34 = v35;
    *(a3 + 24) = v33;
    *(v8 + *(*v8 - 24) + 24) = (((v33 - *(a3 + 16)) << 30) + 0x800000000) >> 32;
    v49.__r_.__value_.__s.__data_[0] = 32;
    v36 = sub_29A00911C(v8, &v49, 1);
    v37 = sub_29A00911C(v36, "\x1B[31m", 5);
    v38 = sub_29A00911C(v37, "failure", 7);
    sub_29A00911C(v38, "\x1B[m", 3);
    if (*v10 != v35)
    {
      v39 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v40 = MEMORY[0x29C2C1F00](v39, v34);
      v49.__r_.__value_.__s.__data_[0] = 32;
      v41 = sub_29A00911C(v40, &v49, 1);
      v42 = sub_29A00911C(v41, "\x1B[37m", 5);
      v43 = sub_29A00911C(v42, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement]", 68);
      sub_29A00911C(v43, "\x1B[m", 3);
    }

    v49.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v49, 1);
    sub_29A2266C8(&v49, v7, a1 + 3);
    sub_29A2D7940(a3, &v49);
    if (v51 < 0)
    {
      operator delete(__p);
    }

    v44 = v47;
    *v7 = v46;
    v7[1] = v44;
  }

  return v15;
}

void sub_29A2EBD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  *v21 = a9;
  v21[1] = a10;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2EBDB8(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListElement]", 68);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2EBF3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A2EBF60(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29A2E6FD4(a3);
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v10 = 1;
  sub_29A2E73FC(a3);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = 1;
  if (sub_29A2E7824(a1, a2, a3))
  {
    v6 = sub_29A2E7CA4(a1, a2, a3);
    v12 = 0;
    sub_29A2EC0FC(v11);
    if (v6)
    {
      sub_29A2E74D4(a1, a3);
      sub_29A2E921C(a1, a2, a3);
      sub_29A2E8ACC(a1, a2, a3);
      v7 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    sub_29A2EC0FC(v11);
  }

  sub_29A2E765C(a1, a3);
  v7 = 0;
LABEL_6:
  if (v10 == 1)
  {
    v10 = 0;
  }

  sub_29A2EC0BC(v9);
  if (v7)
  {
    sub_29A2E70AC(a1, a3);
  }

  else
  {
    sub_29A2E7234(a1, a3);
  }

  return v7;
}

void sub_29A2EC098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A2EC0FC(&a13);
  sub_29A2EC0BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2EC0BC(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2EC13C(*a1, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_29A2EC0FC(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2E8944(*a1, *(a1 + 16));
  }

  return a1;
}

void sub_29A2EC13C(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Function]", 65);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2EC2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2EC2C4(uint64_t a1, uint64_t a2)
{
    ;
  }

  v37.__r_.__value_.__s.__data_[0] = 35;
  v4 = MEMORY[0x29EDC93C0];
  v5 = sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
  *(v5 + *(*v5 - 24) + 24) = (((*(a2 + 24) - *(a2 + 16)) << 30) + 0x700000000) >> 32;
  ++*(a2 + 8);
  v6 = MEMORY[0x29C2C1F00]();
  v7 = sub_29A00911C(v6, "\x1B[36m", 5);
  v8 = sub_29A00911C(v7, "PXR_INTERNAL_NS_pegtl::one<','>]", 31);
  v9 = sub_29A00911C(v8, "\x1B[m", 3);
  v37.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v9, &v37, 1);
  sub_29A018094((a2 + 16), (a2 + 8));
  v10 = *(a1 + 8);
  if (v10 == *(a1 + 40) || *v10 != 44)
  {
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    v28 = *(v25 - 8);
    v25 -= 8;
    v27 = v28;
    *(a2 + 24) = v25;
    *(v4 + *(*v4 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v29 = sub_29A00911C(v4, &v37, 1);
    v30 = sub_29A00911C(v29, "\x1B[31m", 5);
    v31 = sub_29A00911C(v30, "failure", 7);
    sub_29A00911C(v31, "\x1B[m", 3);
    if (*(a2 + 8) != v28)
    {
      v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v33 = MEMORY[0x29C2C1F00](v32, v27);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v34 = sub_29A00911C(v33, &v37, 1);
      v35 = sub_29A00911C(v34, "\x1B[37m", 5);
      v36 = sub_29A00911C(v35, "PXR_INTERNAL_NS_pegtl::one<','>]", 31);
      sub_29A00911C(v36, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  else
  {
    v11 = *(a1 + 16) + 1;
    *(a1 + 8) = v10 + 1;
    *(a1 + 16) = v11;
    ++*(a1 + 32);
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v15 = *(v12 - 8);
    v12 -= 8;
    v14 = v15;
    *(a2 + 24) = v12;
    *(v4 + *(*v4 - 24) + 24) = (((v12 - v13) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v16 = sub_29A00911C(v4, &v37, 1);
    v17 = sub_29A00911C(v16, "\x1B[32m", 5);
    v18 = sub_29A00911C(v17, "success", 7);
    sub_29A00911C(v18, "\x1B[m", 3);
    if (*(a2 + 8) != v15)
    {
      v19 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v20 = MEMORY[0x29C2C1F00](v19, v14);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v21 = sub_29A00911C(v20, &v37, 1);
      v22 = sub_29A00911C(v21, "\x1B[37m", 5);
      v23 = sub_29A00911C(v22, "PXR_INTERNAL_NS_pegtl::one<','>]", 31);
      sub_29A00911C(v23, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

      ;
    }

    return 1;
  }
}

void sub_29A2EC688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2EC6A8(uint64_t a1, uint64_t a2)
{
  v37.__r_.__value_.__s.__data_[0] = 35;
  v4 = MEMORY[0x29EDC93C0];
  v5 = sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
  *(v5 + *(*v5 - 24) + 24) = (((*(a2 + 24) - *(a2 + 16)) << 30) + 0x700000000) >> 32;
  ++*(a2 + 8);
  v6 = MEMORY[0x29C2C1F00]();
  v7 = sub_29A00911C(v6, "\x1B[36m", 5);
  v8 = sub_29A00911C(v7, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListEnd]", 64);
  v9 = sub_29A00911C(v8, "\x1B[m", 3);
  v37.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(v9, &v37, 1);
  sub_29A018094((a2 + 16), (a2 + 8));
  v10 = *(a1 + 8);
  if (v10 == *(a1 + 40) || *v10 != 93)
  {
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    v28 = *(v25 - 8);
    v25 -= 8;
    v27 = v28;
    *(a2 + 24) = v25;
    *(v4 + *(*v4 - 24) + 24) = (((v25 - v26) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v29 = sub_29A00911C(v4, &v37, 1);
    v30 = sub_29A00911C(v29, "\x1B[31m", 5);
    v31 = sub_29A00911C(v30, "failure", 7);
    sub_29A00911C(v31, "\x1B[m", 3);
    if (*(a2 + 8) != v28)
    {
      v32 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v33 = MEMORY[0x29C2C1F00](v32, v27);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v34 = sub_29A00911C(v33, &v37, 1);
      v35 = sub_29A00911C(v34, "\x1B[37m", 5);
      v36 = sub_29A00911C(v35, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListEnd]", 64);
      sub_29A00911C(v36, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  else
  {
    v11 = *(a1 + 16) + 1;
    *(a1 + 8) = v10 + 1;
    *(a1 + 16) = v11;
    ++*(a1 + 32);
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v15 = *(v12 - 8);
    v12 -= 8;
    v14 = v15;
    *(a2 + 24) = v12;
    *(v4 + *(*v4 - 24) + 24) = (((v12 - v13) << 30) + 0x800000000) >> 32;
    v37.__r_.__value_.__s.__data_[0] = 32;
    v16 = sub_29A00911C(v4, &v37, 1);
    v17 = sub_29A00911C(v16, "\x1B[32m", 5);
    v18 = sub_29A00911C(v17, "success", 7);
    sub_29A00911C(v18, "\x1B[m", 3);
    if (*(a2 + 8) != v15)
    {
      v19 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v20 = MEMORY[0x29C2C1F00](v19, v14);
      v37.__r_.__value_.__s.__data_[0] = 32;
      v21 = sub_29A00911C(v20, &v37, 1);
      v22 = sub_29A00911C(v21, "\x1B[37m", 5);
      v23 = sub_29A00911C(v22, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListEnd]", 64);
      sub_29A00911C(v23, "\x1B[m", 3);
    }

    v37.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v37, 1);
    sub_29A2266C8(&v37, a1 + 8, (a1 + 48));
    sub_29A2D7940(a2, &v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    return 1;
  }
}

void sub_29A2ECA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ECA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_29A2ECA88(a1, v3);
}

void *sub_29A2ECAC0(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListEnd]", 64);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

void sub_29A2ECBB4(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *(v4 - 8);
  v4 -= 8;
  v6 = v7;
  a2[3] = v4;
  v8 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
  v17.__r_.__value_.__s.__data_[0] = 32;
  v9 = sub_29A00911C(v8, &v17, 1);
  v10 = sub_29A00911C(v9, "\x1B[31m", 5);
  v11 = sub_29A00911C(v10, "unwind", 6);
  sub_29A00911C(v11, "\x1B[m", 3);
  if (a2[1] != v7)
  {
    v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
    v13 = MEMORY[0x29C2C1F00](v12, v6);
    v17.__r_.__value_.__s.__data_[0] = 32;
    v14 = sub_29A00911C(v13, &v17, 1);
    v15 = sub_29A00911C(v14, "\x1B[37m", 5);
    v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ListExpression]", 71);
    sub_29A00911C(v16, "\x1B[m", 3);
  }

  v17.__r_.__value_.__s.__data_[0] = 10;
  sub_29A00911C(MEMORY[0x29EDC93C0], &v17, 1);
  sub_29A2266C8(&v17, a1 + 8, (a1 + 48));
  sub_29A2D7940(a2, &v17);
  if (v19 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2ECD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A2ECD3C(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "PXR_INTERNAL_NS_pegtl::star<PXR_INTERNAL_NS_pegtl::one<' '>>]", 60);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2ECEC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void sub_29A2ECEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_29A2ED0A8(a1, v3);
}

uint64_t *sub_29A2ECF00(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    v3 = a1[2];
    v5 = v3[2];
    v4 = v3[3];
    v7 = *(v4 - 8);
    v4 -= 8;
    v6 = v7;
    v3[3] = v4;
    v8 = MEMORY[0x29EDC93C0];
    *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = (((v4 - v5) << 30) + 0x800000000) >> 32;
    v18.__r_.__value_.__s.__data_[0] = 32;
    v9 = sub_29A00911C(v8, &v18, 1);
    v10 = sub_29A00911C(v9, "\x1B[31m", 5);
    v11 = sub_29A00911C(v10, "unwind", 6);
    sub_29A00911C(v11, "\x1B[m", 3);
    if (v3[1] != v7)
    {
      v12 = sub_29A00911C(MEMORY[0x29EDC93C0], " #", 2);
      v13 = MEMORY[0x29C2C1F00](v12, v6);
      v18.__r_.__value_.__s.__data_[0] = 32;
      v14 = sub_29A00911C(v13, &v18, 1);
      v15 = sub_29A00911C(v14, "\x1B[37m", 5);
      v16 = sub_29A00911C(v15, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentEnd]", 76);
      sub_29A00911C(v16, "\x1B[m", 3);
    }

    v18.__r_.__value_.__s.__data_[0] = 10;
    sub_29A00911C(MEMORY[0x29EDC93C0], &v18, 1);
    sub_29A2266C8(&v18, v2 + 8, (v2 + 48));
    sub_29A2D7940(v3, &v18);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_29A2ED084(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_299FEDEEC(a1);
}

void *sub_29A2ED0E0(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::FunctionArgumentEnd]", 76);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

uint64_t sub_29A2ED1D4(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_29A2ECBB4(*a1, *(a1 + 16));
  }

  return a1;
}

void *sub_29A2ED24C(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionBody]", 71);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

void sub_29A2ED340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_29A2ED35C(a1, v3);
}

void *sub_29A2ED394(uint64_t a1)
{
  v1 = *(a1 + 24) - *(a1 + 16);
  v2 = MEMORY[0x29EDC93C0];
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 24) = ((v1 << 30) + 0x800000000) >> 32;
  v12 = 32;
  v3 = sub_29A00911C(v2, &v12, 1);
  v4 = sub_29A00911C(v3, "\x1B[1;31m", 7);
  v5 = sub_29A00911C(v4, "raise", 5);
  v6 = sub_29A00911C(v5, "\x1B[m", 3);
  v13 = 32;
  v7 = sub_29A00911C(v6, &v13, 1);
  v8 = sub_29A00911C(v7, "\x1B[36m", 5);
  v9 = sub_29A00911C(v8, "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ExpressionEnd]", 70);
  v10 = sub_29A00911C(v9, "\x1B[m", 3);
  v14 = 10;
  return sub_29A00911C(v10, &v14, 1);
}

uint64_t sub_29A2ED488(uint64_t a1)
{
  *(MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24) + 8) = *a1;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType::~SdfDataTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType::SdfDataTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "timeSamples", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(uint64_t this)
{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = &unk_2A204A660;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, const void *a2)
{
  *this = &unk_2A204A660;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  sub_29A0F6078(this + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::IsEmpty(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this)
{
  v3 = &unk_2A204A828;
  v4 = 1;
  (*(*this + 312))(this, &v3);
  v3[3](&v3, this);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::VisitSpecs(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a2)
{
  if (a2 || (result = sub_29B2958C0(v5), (result & 1) != 0))
  {
    (*(*this + 312))(this, a2);
    return (*(*a2 + 24))(a2, this);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfAbstractData::CopyFrom(uint64_t a1, uint64_t a2)
{
  v2 = &unk_2A204A870;
  v3 = a1;
  sub_29A2ED97C(a2);
}

void sub_29A2ED97C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B29590C();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::Equals(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v15 = &unk_2A204A8B8;
  v16 = 1;
  v17 = v4;
  (*(*a1 + 312))(a1, &v15);
  v15[3](&v15, a1);
  if (v16 == 1 && (v12 = &unk_2A204A8B8, v13 = 1, v14 = a1, v5 = sub_29A2EDBE4(a2), (*(*v5 + 312))(), v12[3](&v12, v5), v13 == 1))
  {
    v6 = *a2;
    v9 = &unk_2A204A900;
    v10 = 1;
    v11 = v6;
    (*(*a1 + 312))(a1, &v9);
    v9[3](&v9, a1);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_29A2EDBE4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfAbstractData::WriteToStream(uint64_t a1, void *a2)
{
  v38[2] = *MEMORY[0x29EDCA608];
  v36[0] = 0;
  v36[1] = 0;
  v34 = &unk_2A204A948;
  v35 = v36;
  (*(*a1 + 312))(a1, &v34);
  v34[3](&v34, a1);
  v4 = v35;
  if (v35 != v36)
  {
    do
    {
      v5 = (*(*a1 + 96))(a1, v4 + 28);
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a2, (v4 + 28));
      v7 = sub_29A00911C(v6, " ", 1);
      v8 = v26 & 0xFFFFFFFF00000000 | v5;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A2047348, v8, &__p);
      if ((v33 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v33 & 0x80u) == 0)
      {
        v10 = v33;
      }

      else
      {
        v10 = v32;
      }

      v11 = sub_29A00911C(v7, p_p, v10);
      LOBYTE(v29) = 10;
      sub_29A00911C(v11, &v29, 1);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      (*(*a1 + 176))(&__p, a1, v4 + 28);
      v26 = v8;
      sub_29A2EF27C(&v29, __p, v32);
      v12 = v29;
      if (v29 != v30)
      {
        do
        {
          (*(*a1 + 136))(v38, a1, v4 + 28, v12 + 4);
          v13 = sub_29A00911C(a2, "    ", 4);
          v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, v12 + 4);
          v15 = sub_29A00911C(v14, " ", 1);
          pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(v38, &v27);
          if ((v28 & 0x80u) == 0)
          {
            v16 = &v27;
          }

          else
          {
            v16 = v27.__vftable;
          }

          if ((v28 & 0x80u) == 0)
          {
            type_name = v28;
          }

          else
          {
            type_name = v27.__type_name;
          }

          v18 = sub_29A00911C(v15, v16, type_name);
          v19 = sub_29A00911C(v18, " ", 1);
          v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, v38);
          v37 = 10;
          sub_29A00911C(v20, &v37, 1);
          if (v28 < 0)
          {
            operator delete(v27.__vftable);
          }

          sub_29A186B14(v38);
          v21 = v12[1];
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
              v22 = v12[2];
              v23 = *v22 == v12;
              v12 = v22;
            }

            while (!v23);
          }

          v12 = v22;
        }

        while (v22 != v30);
      }

      sub_29A1602D4(&v29, v30[0]);
      v29 = &__p;
      sub_29A124AB0(&v29);
      v24 = v4[1];
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
          v25 = v4[2];
          v23 = *v25 == v4;
          v4 = v25;
        }

        while (!v23);
      }

      v4 = v25;
    }

    while (v25 != v36);
  }

  v34 = &unk_2A204A948;
  sub_29A1E2AEC(&v35, v36[0]);
}

uint64_t sub_29A2EE0AC(uint64_t a1)
{
  *a1 = &unk_2A204A948;
  sub_29A1E2AEC(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::HasSpecAndField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = (*(*a1 + 96))(a1);
  *a5 = result;
  if (result)
  {
    v11 = *(*a1 + 104);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

{
  result = (*(*a1 + 96))(a1);
  *a5 = result;
  if (result)
  {
    v11 = *(*a1 + 112);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::GetTypeid(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5[2] = *MEMORY[0x29EDCA608];
  (*(*this + 136))(v5);
  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v5);
  sub_29A186B14(v5);
  return Typeid;
}

void sub_29A2EE308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::HasDictKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (***a5)(void, _BYTE *))
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  if (a5)
  {
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 192))(a1, a2, a3, a4, v6);
  v8 = v7 ^ 1;
  if (!a5)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v7 = (**a5)(a5, v10);
  }

  sub_29A186B14(v10);
  return v7;
}

void sub_29A2EE3FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::HasDictKey(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  if ((*(*this + 112))(this, a2, a3, v13) && (v7 = sub_29A185258(v13), v7) && ((v14 & 4) != 0 ? (v7 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v13), v8 = v7) : (v8 = *v13), (*a4 & 0xFFFFFFFFFFFFFFF8) == 0 ? (EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7)) : (EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16)), (ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(v8, EmptyString, ":")) != 0))
  {
    if (a5)
    {
      sub_29A1854E8(a5, ValueAtPath);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  sub_29A186B14(v13);
  return v11;
}

void sub_29A2EE528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::SetDictValueByKey(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (*(a5 + 1))
  {
    (*(*this + 136))(v15, this, a2, a3);
    v14 = 0;
    v10 = sub_29A18562C(v15, &v14);
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v14, EmptyString, a5, ":");
    sub_29A18562C(v15, &v14);
    (*(*this + 152))(this, a2, a3, v15);
    sub_29A184A10(&v14, 0);
    return sub_29A186B14(v15);
  }

  else
  {
    v12 = *(*this + 224);

    return v12();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::SetDictValueByKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (***a5)(void, _BYTE *))
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  (**a5)(a5, v10);
  (*(*a1 + 208))(a1, a2, a3, a4, v10);
  return sub_29A186B14(v10);
}

void sub_29A2EE854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::EraseDictValueByKey(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v12[2] = *MEMORY[0x29EDCA608];
  (*(*this + 136))(v12);
  if (sub_29A185258(v12))
  {
    v11 = 0;
    v8 = sub_29A18562C(v12, &v11);
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath(&v11, EmptyString, ":");
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::empty(&v11))
    {
      (*(*this + 168))(this, a2, a3);
    }

    else
    {
      sub_29A18562C(v12, &v11);
      (*(*this + 152))(this, a2, a3, v12);
    }

    sub_29A184A10(&v11, 0);
  }

  return sub_29A186B14(v12);
}

void sub_29A2EE9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractData::ListDictKeys@<X0>(pxrInternal__aapl__pxrReserved__::SdfAbstractData *this@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*this + 200))(&v17);
  if (sub_29A185258(&v17))
  {
    if ((v18 & 4) != 0)
    {
      v6 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(&v17);
    }

    else
    {
      v6 = v17;
    }

    v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(v6);
    sub_29A1D7F98(a2, v7);
    v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v6);
    v14 = v8;
    v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v6);
    v16 = v9;
    while (v14 != v16 || v14 && v13 != v15)
    {
      sub_29A185F48(&v13, v9, v10);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
      sub_29A153214(a2, &v12);
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A186174(&v13);
    }
  }

  return sub_29A186B14(&v17);
}

void sub_29A2EEB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2EEBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x29EDCA608];
  (*(*a2 + 176))(v18, a2, a3);
  v6 = *(a1 + 8);
  v7 = (*(*a2 + 96))(a2, a3);
  (*(*v6 + 64))(v6, a3, v7);
  v16 = v18[0];
  v17 = v18[1];
  while (v16 != v17)
  {
    v10 = *(a1 + 8);
    v11 = sub_29A1FCDD0(&v16, v8, v9);
    v14 = sub_29A1FCDD0(&v16, v12, v13);
    (*(*a2 + 136))(v19, a2, a3, v14);
    (*(*v10 + 152))(v10, a3, v11, v19);
    sub_29A186B14(v19);
    sub_29A1FCE50(&v16);
  }

  v16 = v18;
  sub_29A124AB0(&v16);
  return 1;
}

uint64_t sub_29A2EEDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a1 + 16) + 72))(*(a1 + 16), a3))
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
    *(a1 + 8) = 0;
  }

  return v4 & 1;
}

BOOL sub_29A2EEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_29A2EEE7C(a2, *(a1 + 16), a3);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_29A2EEE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 176))(&v27);
  (*(*a2 + 176))(v26, a2, a3);
  sub_29A2EF27C(&v24, v27, v28);
  sub_29A2EF27C(v23, v26[0], v26[1]);
  v6 = (*(*a1 + 96))(a1, a3);
  if (v6 != (*(*a2 + 96))(a2, a3) || v25[1] != v23[2])
  {
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  v9 = v24;
  if (v24 != v25)
  {
    v10 = v23[0];
    while ((v10[4] ^ v9[4]) <= 7)
    {
      v11 = v9[1];
      v12 = v9;
      if (v11)
      {
        do
        {
          v9 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v9 = v12[2];
          v13 = *v9 == v12;
          v12 = v9;
        }

        while (!v13);
      }

      v14 = v10[1];
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
          v15 = v10[2];
          v13 = *v15 == v10;
          v10 = v15;
        }

        while (!v13);
      }

      v10 = v15;
      if (v9 == v25)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

LABEL_17:
  v22[0] = v27;
  v22[1] = v28;
  v16 = v27 == v28;
  if (v27 != v28)
  {
    v17 = sub_29A1FCDD0(v22, v7, v8);
    (*(*a1 + 136))(v30, a1, a3, v17);
    v20 = sub_29A1FCDD0(v22, v18, v19);
    (*(*a2 + 136))(&v29, a2, a3, v20);
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

LABEL_20:
  sub_29A1602D4(v23, v23[1]);
  sub_29A1602D4(&v24, v25[0]);
  v24 = v26;
  sub_29A124AB0(&v24);
  v26[0] = &v27;
  sub_29A124AB0(v26);
  return v16;
}

void sub_29A2EF16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, void *a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_29A1602D4(&a15, a16);
  a15 = &a18;
  sub_29A124AB0(&a15);
  a18 = &a21;
  sub_29A124AB0(&a18);
  _Unwind_Resume(a1);
}

void sub_29A2EF1F8(void **a1)
{
  *a1 = &unk_2A204A948;
  sub_29A1E2AEC((a1 + 1), a1[2]);

  operator delete(a1);
}

uint64_t sub_29A2EF27C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A2EF300(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_29A2EF300(uint64_t **a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A2EF384(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A1DEB0C(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *sub_29A2EF384(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_29A153D90(a1, a5, a2 + 4))
  {
    if (!sub_29A153D90(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_29A153D90(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_29A153D90(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_29A153CF4(a1, a3, a5);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(uint64_t *this)
{
  if ((atomic_load_explicit(&qword_2A173F7D0, memory_order_acquire) & 1) == 0)
  {
    v1 = this;
    sub_29B295980();
    this = v1;
  }

  if (!*(this + 24))
  {
    return &qword_2A173F7D8;
  }

  return this;
}

uint64_t *sub_29A2EF57C()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2047388, 0, 0, 0, 48, 0, 0);

  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2047398, 0, 0, 0, 40, 0, 0);
}

double pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(pxrInternal__aapl__pxrReserved__::SdfAssetPath *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(char *__dst, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 8));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 16);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  v6 = (__dst + 24);
  *(__dst + 5) = 0;
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((sub_29A2EF6F8(v7, a2, a3) & 1) == 0)
  {
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    *__dst = 0;
    *(__dst + 1) = 0;
    *(__dst + 2) = 0;
    if (__dst[47] < 0)
    {
      operator delete(*v6);
    }

    *v6 = 0;
    *(__dst + 4) = 0;
    *(__dst + 5) = 0;
  }

  return __dst;
}

void sub_29A2EF6D4(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  sub_29B2948E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2EF6F8(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v15 = 0;
  v16 = a1;
  v14[0] = 0;
  v14[1] = 0;
  v3 = sub_29A2EFBA8(&v16, v14, a3);
  v5 = 1;
  if (v3 < 1)
  {
LABEL_6:
    if (v3 != -1)
    {
      v6 = 1;
      goto LABEL_13;
    }

    v9 = "sdf/assetPath.cpp";
    v10 = "_ValidateAssetPathString";
    v11 = 115;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::_ValidateAssetPathString(const char *)";
    v13 = 0;
    v7 = v14;
    if (v15 < 0)
    {
      v7 = v14[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid asset path string -- character %d: %s\n", v5, v7);
  }

  else
  {
    while (v3 >= 0x20 && v3 != 127 && (v3 & 0x7FFFFFE0) != 0x80)
    {
      v3 = sub_29A2EFBA8(&v16, v14, v4);
      ++v5;
      if (v3 <= 0)
      {
        goto LABEL_6;
      }
    }

    v9 = "sdf/assetPath.cpp";
    v10 = "_ValidateAssetPathString";
    v11 = 108;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::_ValidateAssetPathString(const char *)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid asset path string -- character %d is control character 0x%x", v5, v3);
  }

  v6 = 0;
LABEL_13:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v6;
}

void sub_29A2EF830(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

char *pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(char *__dst, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
    *(__dst + 2) = *(a2 + 16);
    *__dst = v6;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v7;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (!sub_29A2EF6F8(v8, a2, a3) || (*(a3 + 23) >= 0 ? (v11 = a3) : (v11 = *a3), (sub_29A2EF6F8(v11, v9, v10) & 1) == 0))
  {
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    *__dst = 0;
    *(__dst + 1) = 0;
    *(__dst + 2) = 0;
    if (__dst[47] < 0)
    {
      operator delete(*(__dst + 3));
    }

    *(__dst + 3) = 0;
    *(__dst + 4) = 0;
    *(__dst + 5) = 0;
  }

  return __dst;
}

void sub_29A2EF940(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<(const void **a1, const void **a2)
{
  v4 = *(a2 + 23);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v4 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v4 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  v12 = v6 < v8;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    return 1;
  }

  v14 = memcmp(v9, v7, v10);
  v15 = v8 < v6;
  if (v14)
  {
    v15 = v14 < 0;
  }

  if (v15)
  {
    return 0;
  }

  v18 = a2[3];
  v17 = a2 + 3;
  v16 = v18;
  v19 = *(v17 + 23);
  v22 = a1[3];
  v21 = a1 + 3;
  v20 = v22;
  v23 = *(v21 + 23);
  if (v23 >= 0)
  {
    v24 = *(v21 + 23);
  }

  else
  {
    v24 = v21[1];
  }

  if (v23 >= 0)
  {
    v25 = v21;
  }

  else
  {
    v25 = v20;
  }

  if (v19 >= 0)
  {
    v26 = *(v17 + 23);
  }

  else
  {
    v26 = v17[1];
  }

  if (v19 >= 0)
  {
    v27 = v17;
  }

  else
  {
    v27 = v16;
  }

  if (v26 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v26;
  }

  v29 = memcmp(v25, v27, v28);
  if (v29)
  {
    return v29 < 0;
  }

  else
  {
    return v24 < v26;
  }
}

void sub_29A2EFB0C(uint64_t *a1@<X0>, char *a2@<X2>, void *a3@<X8>)
{
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v6, v5, a2);
  a3[1] = &off_2A2047B38;
  sub_29A215A28(a3, v6);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t sub_29A2EFBA8(unsigned __int8 **a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  if ((**a1 & 0x80000000) == 0)
  {
    *a1 = (v3 + 1);
    return *v3;
  }

  v4 = **a1;
  if ((v4 & 0xE0) == 0xC0)
  {
    v6 = 2;
    v7 = -225;
    goto LABEL_9;
  }

  if ((v4 & 0xF0) == 0xE0)
  {
    v6 = 3;
    v7 = -241;
    goto LABEL_9;
  }

  if ((v4 & 0xF8) == 0xF0)
  {
    v6 = 4;
    v7 = -249;
LABEL_9:
    LODWORD(v4) = v7 & v4;
    v8 = v3 + 1;
    v9 = v6 - 1;
    for (i = off_29F295898; ; ++i)
    {
      v12 = *v8++;
      v11 = v12;
      if ((v12 & 0xC0) != 0x80)
      {
        break;
      }

      v4 = v11 & 0x3Fu | (v4 << 6);
      if (!--v9)
      {
        *a1 = &v3[v6];
        return v4;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d-byte UTF-8 code point lacks %s continuation byte", a2, a3, v6, *i);
    goto LABEL_15;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("invalid UTF-8 code point byte 0x%hhx", a2, a3, v4);
LABEL_15:
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  return 0xFFFFFFFFLL;
}

uint64_t *sub_29A2EFCCC()
{
  v1 = nullsub_211;
  var8.__vftable = &unk_2A204A990;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204A9A8, &var8, &v1, 1, 8, 0, 0);
}

void pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a3@<X2>, int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v28 = a4;
  v27 = a5;
  *a6 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v22 = "sdf/attributeSpec.cpp";
    v23 = "New";
    v24 = 44;
    v25 = "static SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(const SdfPrimSpecHandle &, const std::string &, const SdfValueTypeName &, SdfVariability, BOOL)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Cannot create an SdfAttributeSpec with a null owner");
    return;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v22);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v19);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v22, v19, &v20);
  if ((v19[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
  sub_29A1DE3A4(&v22);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v20))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(a3))
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, v19);
      sub_29A1DA6E4(v19);
    }

    v22 = "sdf/attributeSpec.cpp";
    v23 = "New";
    v24 = 73;
    v25 = "static SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(const SdfPrimSpecHandle &, const std::string &, const SdfValueTypeName &, SdfVariability, BOOL)";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v20);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Cannot create attribute spec <%s> with invalid type", Text);
  }

  else
  {
    if (MEMORY[0x29C2BB0C0](a2))
    {
      Path = pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v22);
      v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(Path);
      v12 = v22;
      v13 = *v11;
      sub_29A1DCEA8(&v22);
      if (v12 == v13)
      {
        v22 = "sdf/attributeSpec.cpp";
        v23 = "New";
        v24 = 61;
        v25 = "static SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(const SdfPrimSpecHandle &, const std::string &, const SdfValueTypeName &, SdfVariability, BOOL)";
        v26 = 0;
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Cannot create attribute spec '%s' on the pseudo-root '/'", v14);
        goto LABEL_8;
      }

      v22 = "sdf/attributeSpec.cpp";
      v23 = "New";
      v24 = 66;
      v25 = "static SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(const SdfPrimSpecHandle &, const std::string &, const SdfValueTypeName &, SdfVariability, BOOL)";
      v26 = 0;
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v19);
      v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v19);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Cannot create attribute spec '%s' on <%s>", v17, v18);
    }

    else
    {
      v22 = "sdf/attributeSpec.cpp";
      v23 = "New";
      v24 = 56;
      v25 = "static SdfAttributeSpecHandle pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(const SdfPrimSpecHandle &, const std::string &, const SdfValueTypeName &, SdfVariability, BOOL)";
      v26 = 0;
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, v19);
      v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v19);
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "Cannot create attribute spec on <%s> with invalid name '%s'", v15, v16);
    }

    sub_29A1DCEA8(v19);
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
}

void sub_29A2F0284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F0400(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, _BYTE *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A20443C3;
  v5[0] = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v5);
  sub_29A186B14(v5);
  return v3;
}

void sub_29A2F0480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F0494(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t *a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v7[0] = v3;
  v7[1] = &off_2A2044E88 + 1;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7[0] = v4;
    }
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A2F052C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F0540(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A20494F0 + 3;
  v5 = *a3;
  v3 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, &v5);
  sub_29A186B14(&v5);
  return v3;
}

void sub_29A2F05C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(atomic_uint **this@<X0>, void *a2@<X8>)
{
  sub_29A2F0678(this, &v4);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfGetPathEditorProxy(&v5, v3 + 7, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A2F065C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  _Unwind_Resume(a1);
}

void sub_29A2F0678(atomic_uint **a1@<X0>, atomic_uint **a2@<X8>)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v2 = *a1;
  v4 = v2;
  if (!v2)
  {
LABEL_6:
    *a2 = 0;
    goto LABEL_7;
  }

  atomic_fetch_add(v2, 1u);
  v3 = v4;
  *a2 = v4;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::HasConnectionPaths(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(this, &v3);
  if (sub_29A1F222C(&v3))
  {
    v1 = sub_29A1F28A0(v3);
  }

  else
  {
    v1 = 1;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1;
}

void sub_29A2F072C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::ClearConnectionPaths(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(this, &v1);
  if (sub_29A2F1CB8(&v1))
  {
    (*(*v1 + 48))(v1);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }
}

void sub_29A2F07B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetTimeSampleMap(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t *a2@<X8>)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  sub_29A2F085C(this, &v5, a2);
  sub_29A1F9B0C(&v5, v6[0]);
}

uint64_t sub_29A2F085C@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v6);
  if (v7 && (sub_29A1F650C(&v6) & 1) != 0)
  {
    if ((v7 & 4) != 0)
    {
      a2 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(&v6);
    }

    else
    {
      a2 = v6;
    }
  }

  sub_29A1F973C(a3, a2);
  return sub_29A186B14(&v6);
}

void sub_29A2F09A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F0F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29A2F102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetAllowedTokens@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v10);
  if (!v11 || (sub_29A1FA748(v10) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A2F11C4(v10);
  v6 = *(v5 + 1);
  *a2 = *v5;
  *(a2 + 16) = v6;
  v7 = v5[4];
  *(a2 + 32) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return sub_29A186B14(v10);
}

void sub_29A2F11A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void **sub_29A2F11C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1FA748(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A2F1D3C, &stru_2A2042548);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::SetAllowedTokens(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F1DD8(a1, (v4 + 8), a2);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::HasAllowedTokens(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 8));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::ClearAllowedTokens(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v2 + 8));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetColorSpace@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(this, v9);
  if (!v10 || (sub_29A1FA710(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(this);
  }

  v5 = sub_29A27A0F8(v9);
  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v7;
    }
  }

  return sub_29A186B14(v9);
}

void sub_29A2F1478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::SetColorSpace(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F0494(this, (v4 + 40), a2);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::HasColorSpace(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 40));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::ClearColorSpace(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v2 + 40));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetDisplayUnit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v4 = MEMORY[0x29EDC94D0];
  LODWORD(v5) = 0;
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v6[1] = &v4;
  v6[2] = &stru_2A203FE00;
  v7 = 0;
  v6[0] = &unk_2A204A9D0;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::_HasField(this))
  {
    return v4;
  }

  v6[0] = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(this);
  return *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultUnit(v6);
}

atomic_uint **pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetRoleName@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this@<X0>, atomic_uint **a2@<X8>)
{
  TypeName = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(this);
  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetRole(&TypeName);
  v4 = *result;
  *a2 = *result;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::SetDisplayUnit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A2F2034(this, (v4 + 128), a2);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity *pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::HasDisplayUnit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(this, (v2 + 128));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::ClearDisplayUnit(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfSpec::ClearField(this, (v2 + 128));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfCreatePrimAttributeInLayer@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfJustCreatePrimAttributeInLayer(a1, a2, a3, a4, a5);
  if (result)
  {
    sub_29A1DA6E4(a1);
  }

  *a6 = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfJustCreatePrimAttributeInLayer(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a3, int a4, char a5)
{
  v15 = a4;
  v14 = a5;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(this))
  {
    if (*(a1 + 8))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v11);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, v12);
    PrimInLayer = pxrInternal__aapl__pxrReserved__::Sdf_UncheckedCreatePrimInLayer(0, v12, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 1);
    sub_29A1DE3A4(v12);
    if (PrimInLayer)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec();
    }

    sub_29A1DD644(v11);
  }

  else
  {
    v12[0] = "sdf/attributeSpec.cpp";
    v12[1] = "SdfJustCreatePrimAttributeInLayer";
    v12[2] = 267;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfJustCreatePrimAttributeInLayer(const SdfLayerHandle &, const SdfPath &, const SdfValueTypeName &, SdfVariability, BOOL)";
    v13 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Cannot create prim attribute at path '%s' because it is not a prim property path", Text);
  }

  return 0;
}

void sub_29A2F1AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DD644(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F1AF8(const char **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, _BYTE *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A20443C3;
  v5[0] = *a4;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(a1, a2, a3, v5);
  return sub_29A186B14(v5);
}

void sub_29A2F1B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F1B84(const char **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t *a4)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = *a4;
  v7[0] = v4;
  v7[1] = &off_2A2044E88 + 1;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7[0] = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(a1, a2, a3, v7);
  return sub_29A186B14(v7);
}

void sub_29A2F1C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F1C28(const char **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = &off_2A20494F0 + 3;
  v5 = *a4;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(a1, a2, a3, &v5);
  return sub_29A186B14(&v5);
}

void sub_29A2F1CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F1CB8(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 393;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

double sub_29A2F1D3C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A2F1D8C;
  a1[2] = &stru_2A2042548;
  return result;
}

uint64_t sub_29A2F1D8C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  return result;
}

uint64_t sub_29A2F1DD8(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[1] = off_2A2047A80;
  sub_29A18ECC8(v7, a3);
  v5 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v7);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A2F1E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A2F1E8C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A2F1F1C(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    v7 = *v5;
    *(v6 + 8) = *(v5 + 8);
    *v6 = v7;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A2F1F1C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485582 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A203FE00);
}

uint64_t sub_29A2F1FA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4D9210 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2048EE0);
}

uint64_t sub_29A2F2034(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, _OWORD *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[1] = &off_2A2048D70;
  v6 = operator new(0x18uLL);
  *v6 = *a3;
  atomic_store(0, v6 + 4);
  v9[0] = v6;
  atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed);
  v7 = pxrInternal__aapl__pxrReserved__::SdfSpec::SetField(a1, a2, v9);
  sub_29A186B14(v9);
  return v7;
}

void sub_29A2F20E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(pxrInternal__aapl__pxrReserved__::SdfChangeBlock *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  *this = pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_OpenChangeBlock(v2, this);
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfChangeBlock::_CloseChangeBlock(pxrInternal__aapl__pxrReserved__::SdfChangeBlock *this, char *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_CloseChangeBlock(v3, this, a2);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B487082 & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdfChangeList*> &)::isInitializing, 1u))
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
      v8 = operator new(0xD8uLL);
      v8[25] = 0x100000000;
      v8[26] = 0;
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::SdfChangeList]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::SdfChangeList]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdfChangeList*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A2F238C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::SdfChangeList]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfChangeList>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A1DE554((i + 208), 0);
      sub_29A1DE650();
    }

    sched_yield();
  }
}

void sub_29A2F2524()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204AA08, 0, "SdfChangeList::SubLayerAdded", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204AA08, 1, "SdfChangeList::SubLayerRemoved", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204AA08, 2, "SdfChangeList::SubLayerOffset", 0);
}

void sub_29A2F2BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A2F2C08(void *result)
{
  if (*result == result[1])
  {
    sub_29B295B14();
  }

  return result;
}

void *sub_29A2F2C40(void *result)
{
  if (*result == result[1])
  {
    sub_29B295B60();
  }

  return result;
}

void *sub_29A2F2C78(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::pair<pxrInternal__aapl__pxrReserved__::VtValue, pxrInternal__aapl__pxrReserved__::VtValue>>, 3>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::pair<pxrInternal__aapl__pxrReserved__::VtValue, pxrInternal__aapl__pxrReserved__::VtValue>>, 3>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 40;
  }

  return a1;
}

void *sub_29A2F2CF8(void *result)
{
  if (*result == result[1])
  {
    sub_29B295BAC();
  }

  return result;
}

void *sub_29A2F2D30(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<std::string, pxrInternal__aapl__pxrReserved__::SdfChangeList::SubLayerChangeType>>>::operator++() [T = const std::vector<std::pair<std::string, pxrInternal__aapl__pxrReserved__::SdfChangeList::SubLayerChangeType>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

void *sub_29A2F2DB0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>, 1>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>, 1>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 200;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfChangeList *pxrInternal__aapl__pxrReserved__::SdfChangeList::SdfChangeList(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfChangeList *a2)
{
  sub_29A2F42C4(this, a2);
  v4 = *(a2 + 26);
  if (v4)
  {
    v5 = operator new(0x28uLL);
    sub_29A2F4948(v5, v4);
  }

  else
  {
    v5 = 0;
  }

  *(this + 26) = v5;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfChangeList::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    sub_29A2F4CDC();
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::GetEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    sub_29B295BF8(&v10, v4, v5);
  }

  Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::FindEntry(this, a2);
  v7 = this;
  if (*(this + 51) >= 2u)
  {
    v7 = *this;
  }

  if (Entry != v7 + 200 * *(this + 50))
  {
    return Entry + 8;
  }

  if ((atomic_load_explicit(&qword_2A173F8B0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A173F8B0))
  {
    return &unk_2A173F7F0;
  }

  sub_29A2F3160(&unk_2A173F7F0);
  v8 = &unk_2A173F7F0;
  __cxa_atexit(sub_29A1DDC00, &unk_2A173F7F0, &dword_299FE7000);
  __cxa_guard_release(&qword_2A173F8B0);
  return v8;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::FindEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = this;
  v3 = *(this + 51);
  if (v3 > 1)
  {
    v6 = *this;
    v4 = *(this + 50);
    v5 = (*this + 200 * v4);
    if (!v4)
    {
      return v5;
    }
  }

  else
  {
    v4 = *(this + 50);
    v5 = this + 200 * v4;
    v6 = this;
    if (!v4)
    {
      return v5;
    }
  }

  if (*(v6 + 25 * v4 - 25) == *a2)
  {
    v5 -= 200;
  }

  else
  {
    v7 = *(this + 26);
    if (v7)
    {
      v8 = sub_29A2F4F50(v7, a2);
      if (v8)
      {
        if (*(v2 + 51) >= 2u)
        {
          v2 = *v2;
        }

        return v2 + 200 * v8[3];
      }
    }

    else
    {
      v9 = v2;
      if (v3 >= 2)
      {
        v9 = *v2;
      }

      v10 = 200 * v4;
      while (v10)
      {
        v11 = *(v9 + v10 - 200);
        v10 -= 200;
        if (v11 == *a2)
        {
          v9 = (v9 + v10 + 200);
          break;
        }
      }

      if (v3 > 1)
      {
        v2 = *v2;
      }

      if (v9 == v2)
      {
        return v2 + 200 * v4;
      }

      else
      {
        return v9 - 200;
      }
    }
  }

  return v5;
}

uint64_t sub_29A2F3160(uint64_t a1)
{
  *(a1 + 120) = 0x300000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 152));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 156));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 183) = 0;
  *(a1 + 176) = 0;
  return a1;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::FindEntry(this, a2);
  v5 = this;
  if (*(this + 51) >= 2u)
  {
    v5 = *this;
  }

  if (Entry != v5 + 200 * *(this + 50))
  {
    return Entry + 8;
  }

  return pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v9 = a2;
  sub_29A2F37E4(this, &unk_29B4D6118, &v9);
  v4 = *(this + 26);
  if (v4)
  {
    v9 = (*(this + 50) - 1);
    v5 = sub_29A2F50D0(v4, a2, a2, &v9);
    if ((v6 & 1) == 0)
    {
      v5[3] = v9;
    }
  }

  else if (*(this + 50) >= 0x40u)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeList::_RebuildAccel(this);
  }

  v7 = this;
  if (*(this + 51) >= 2u)
  {
    v7 = *this;
  }

  return v7 + 200 * *(this + 50) - 192;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::_MoveEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v19[2] = *MEMORY[0x29EDCA608];
  if (*a2 != *a3)
  {
    v12 = 0x300000000;
    v14 = 0;
    v13 = 0uLL;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v16);
    __p = 0;
    v18 = 0;
    memset(v19, 0, 11);
    Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::FindEntry(this, a2);
    v8 = this;
    if (*(this + 51) >= 2u)
    {
      v8 = *this;
    }

    if (Entry != v8 + 200 * *(this + 50))
    {
      sub_29A1DD988(v11, (Entry + 8));
    }

    v9 = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a3);
    v10 = v9;
    if (v9 != v11)
    {
      sub_29A1DDDFC(v9, v11);
    }

    sub_29A1DE364((v10 + 128));
    *(v10 + 8) = v13;
    *(v10 + 18) = v14;
    v13 = 0uLL;
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a3);
}

void sub_29A2F3568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfChangeList::_RebuildAccel(pxrInternal__aapl__pxrReserved__::SdfChangeList *this)
{
  v2 = *(this + 50);
  if (v2 < 0x40)
  {
    v11 = (this + 208);

    sub_29A1DE554(v11, 0);
  }

  else
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, v2);
    sub_29A1DE554(this + 26, v3);
    v4 = this;
    if (*(this + 51) >= 2u)
    {
      v4 = *this;
    }

    v5 = *(this + 50);
    if (v5)
    {
      v6 = 0;
      v7 = 200 * v5;
      do
      {
        v8 = *(this + 26);
        v12 = v6;
        v9 = sub_29A2F50D0(v8, v4, v4, &v12);
        if ((v10 & 1) == 0)
        {
          v9[3] = v12;
        }

        v4 += 50;
        ++v6;
        v7 -= 200;
      }

      while (v7);
    }
  }
}

void sub_29A2F3694(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2F36AC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v3 = a1;
    if (*(a1 + 51) >= 2u)
    {
      v3 = *a1;
    }

    v4 = 0x8F5C28F5C28F5C29 * (a3 - a2);
    v5 = &v3[25 * *(a1 + 50)];
    if (v5 != a3)
    {
      sub_29A2F4E94();
    }

    v6 = &v5[-(a3 - a2)];
    if (*(v6 + 191) < 0)
    {
      operator delete(v6[21]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v6 + 41);
    sub_29A1DE3A4(&v5[-25 * v4 + 20]);
    v8 = &v5[-25 * v4 + 17];
    sub_29A10C99C(&v8);
    sub_29A1DE45C();
  }

  return a2;
}

uint64_t sub_29A2F37E4(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  v4 = *(a1 + 200);
  v5 = *(a1 + 204);
  if (v4 == v5)
  {
    sub_29A2F4D6C(a1, v4 + (v4 >> 1) + 1);
  }

  v6 = a1;
  if (v5 >= 2)
  {
    v6 = *a1;
  }

  v7 = v6 + 200 * *(a1 + 200);
  v9 = *a3;
  result = sub_29A2F502C(v7, &v9);
  ++*(a1 + 200);
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfChangeList::_EraseEntry(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*(this + 50))
  {
    Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::FindEntry(this, a2);
    v4 = this;
    if (*(this + 51) >= 2u)
    {
      v4 = *this;
    }

    if (Entry != (v4 + 200 * *(this + 50)))
    {
      sub_29A2F36AC(this, Entry, Entry + 25);

      pxrInternal__aapl__pxrReserved__::SdfChangeList::_RebuildAccel(this);
    }
  }
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidReplaceLayerContent(pxrInternal__aapl__pxrReserved__::SdfChangeList *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, v2);
  *(result + 92) |= 4u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidReloadLayerContent(pxrInternal__aapl__pxrReserved__::SdfChangeList *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, v2);
  *(result + 92) |= 8u;
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeLayerIdentifier(pxrInternal__aapl__pxrReserved__::SdfPath *a1, const std::string *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(a1, v4);
  v6 = result[7].__r_.__value_.__r.__words[2];
  if ((v6 & 1) == 0)
  {
    LOWORD(result[7].__r_.__value_.__r.__words[2]) = v6 | 1;
    v7 = (result + 160);

    return std::string::operator=(v7, a2);
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeLayerResolvedPath(pxrInternal__aapl__pxrReserved__::SdfChangeList *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, v2);
  *(result + 92) |= 2u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeSublayerPaths(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, int a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(a1, v6);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v10 = a3;
  sub_29A2F3ABC(Entry + 16, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2F3AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29A2F3ABC(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v20[4] = result;
    if (v11)
    {
      v12 = sub_29A10CB10(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v13 + 6) = *(a2 + 6);
    v7 = v13 + 32;
    v16 = v3[1] - *v3;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *v3, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v7;
    v19 = v3[2];
    v3[2] = v14;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_29A10CC84(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = (v4 + 32);
  }

  v3[1] = v7;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeInfo(pxrInternal__aapl__pxrReserved__::SdfChangeList *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, void *a4, void *a5)
{
  v16[2] = *MEMORY[0x29EDCA608];
  Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(a1, a2);
  v9 = Entry;
  v10 = *Entry;
  v11 = *(Entry + 30);
  if (*(Entry + 31) < 4u)
  {
    v10 = Entry;
  }

  v12 = &v10[40 * v11];
  if (v11)
  {
    v13 = 40 * v11;
    do
    {
      if ((*v10 ^ *a3) < 8)
      {
        break;
      }

      v10 += 40;
      v13 -= 40;
    }

    while (v13);
  }

  if (v10 == v12)
  {
    sub_29A2F4278(v15, a4, a5);
    sub_29A2F3D30(v9, a3, v15);
    sub_29A186B14(v16);
    return sub_29A186B14(v15);
  }

  else
  {

    return sub_29A1854E8(v10 + 3, a5);
  }
}

void sub_29A2F3D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2 + 16);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A2F3D30(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 124);
  if (v4 == v5)
  {
    sub_29A2F5394(a1, v4 + (v4 >> 1) + 1);
  }

  v6 = a1;
  if (v5 >= 4)
  {
    v6 = *a1;
  }

  result = sub_29A2F541C((v6 + 40 * *(a1 + 120)), a2, a3);
  ++*(a1 + 120);
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePrimName(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a3)[186] & 0xC) != 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a3);
  }

  return pxrInternal__aapl__pxrReserved__::SdfChangeList::_MoveEntry(this, a2, a3);
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePrimVariantSets(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x80u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePrimInheritPaths(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x100u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePrimSpecializes(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x200u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePrimReferences(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x400u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidReorderPrims(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x10u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidAddPrim(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  if ((result[186] & 0xC) != 0)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
  }

  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  result[186] |= v7;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidRemovePrim(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  if (result[186] & 2) != 0 || (result[186])
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
  }

  if (a3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 8;
  }

  result[186] |= v7;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidMovePrim(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeList::DidRemovePrim(this, a2, 0);
  pxrInternal__aapl__pxrReserved__::SdfChangeList::DidAddPrim(this, a3, 0);
  Entry = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a3);
  sub_29A2258F0(Entry + 38, a2);

  return sub_29A225948(Entry + 39, a2 + 1);
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangePropertyName(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a3)[186] >= 0x40u)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a3);
  }

  return pxrInternal__aapl__pxrReserved__::SdfChangeList::_MoveEntry(this, a2, a3);
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidReorderProperties(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x20u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidAddProperty(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  if (result[186] >= 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
  }

  if (a3)
  {
    v7 = 16;
  }

  else
  {
    v7 = 32;
  }

  result[186] |= v7;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidRemoveProperty(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  if ((result[186] & 0x30) != 0)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
  }

  if (a3)
  {
    v7 = 64;
  }

  else
  {
    v7 = 0x80;
  }

  result[186] |= v7;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeAttributeTimeSamples(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x800u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeAttributeConnection(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x1000u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidChangeRelationshipTargets(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  *(result + 92) |= 0x2000u;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidAddTarget(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  v5 = *(result + 92);
  if (v5 < 0)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
    LOWORD(v5) = *(result + 92);
  }

  *(result + 92) = v5 | 0x4000;
  return result;
}

char *pxrInternal__aapl__pxrReserved__::SdfChangeList::DidRemoveTarget(pxrInternal__aapl__pxrReserved__::SdfChangeList *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_GetEntry(this, a2);
  v5 = *(result + 92);
  if ((v5 & 0x4000) != 0)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfChangeList::_AddNewEntry(this, a2);
    v5 = *(result + 92);
  }

  *(result + 92) = v5 | 0x8000;
  return result;
}

void *sub_29A2F4278(void *a1, void *a2, void *a3)
{
  v5 = sub_29A186A3C(a1, a2);
  sub_29A186EF4(v5 + 2, a3);
  return a1;
}

_DWORD *sub_29A2F42C4(_DWORD *a1, _DWORD *a2)
{
  a1[51] = 1;
  v4 = a2[50];
  v5 = a1;
  if (v4 >= 2)
  {
    v5 = malloc(200 * v4);
    *a1 = v5;
    a1[51] = v4;
  }

  a1[50] = v4;
  if (a2[51] >= 2u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29A2F4344(v6, &v6[50 * a2[50]], v5);
  return a1;
}

_DWORD *sub_29A2F4344(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  result = a3;
  do
  {
    v7 = sub_29A2F43E4(result, v4);
    v4 += 50;
    result = v7 + 50;
    v5 -= 200;
  }

  while (v4 != a2);
  return result;
}

void sub_29A2F43A8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_29A2F48D0(v1);
  }

  __cxa_rethrow();
}

_DWORD *sub_29A2F43E4(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29A2F443C((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_29A2F443C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A2F4518(a1, a2);
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  sub_29A2F4744(v4 + 16, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 5);
  sub_29A1E21F4((a1 + 152), (a2 + 152));
  sub_29A1E2240((a1 + 156), (a2 + 156));
  if (*(a2 + 183) < 0)
  {
    sub_29A008D14((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v5 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v5;
  }

  v6 = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 184) = v6;
  return a1;
}

void sub_29A2F44E8(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A1DCEA8((v1 + 152));
  sub_29A10C99C(va);
  sub_29A1DE45C();
}

uint64_t sub_29A2F4518(uint64_t a1, uint64_t a2)
{
  *(a1 + 124) = 3;
  v4 = *(a2 + 120);
  v5 = a1;
  if (v4 >= 4)
  {
    v5 = malloc(40 * v4);
    *a1 = v5;
    *(a1 + 124) = v4;
  }

  *(a1 + 120) = v4;
  if (*(a2 + 124) >= 4u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29A2F4598(v6, &v6[5 * *(a2 + 120)], v5);
  return a1;
}

uint64_t *sub_29A2F4598(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  result = a3;
  do
  {
    v7 = sub_29A2F4638(result, v4);
    v4 += 5;
    result = v7 + 5;
    v5 -= 40;
  }

  while (v4 != a2);
  return result;
}

void sub_29A2F45FC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A2F46FC(v1);
      v1 += 5;
      v3 -= 40;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t *sub_29A2F4638(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A2F46B0(a1 + 1, a2 + 1);
  return a1;
}

void *sub_29A2F46B0(void *a1, void *a2)
{
  v4 = sub_29A186EF4(a1, a2);
  sub_29A186EF4(v4 + 2, a2 + 2);
  return a1;
}

uint64_t sub_29A2F46FC(void *a1)
{
  sub_29A186B14((a1 + 3));
  result = sub_29A186B14((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29A2F4744(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29A2F47CC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A2F47AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A10C99C(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A2F47CC(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      *(v4 + 6) = *(v6 + 6);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_29A2F4898(v10);
  return v4;
}

uint64_t sub_29A2F4898(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void sub_29A2F48D0(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 164));
  sub_29A1DE3A4((a1 + 160));
  v2 = (a1 + 136);
  sub_29A10C99C(&v2);
  sub_29A1DE45C();
}

uint64_t sub_29A2F4948(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A2F49C0(a1, i + 4, (i + 4));
  }

  return a1;
}

void *sub_29A2F49C0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
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
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
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

  sub_29A2F4C08(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A2F4BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2F4C80(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A1E21F4(v8 + 4, a3);
  result = sub_29A1E2240(v8 + 5, (a3 + 4));
  v8[3] = *(a3 + 8);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A2F4C80(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1DE610(v2 + 4);
    }

    operator delete(v2);
  }
}

void sub_29A2F4D6C(uint64_t a1, uint64_t a2)
{
  v3 = malloc(200 * a2);
  v4 = a1;
  if (*(a1 + 204) >= 2u)
  {
    v4 = *a1;
  }

  sub_29A2F4DF4(v4, v4 + 200 * *(a1 + 200), v3);
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_Destruct();
}

uint64_t sub_29A2F4DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = 0;
  result = a3;
  do
  {
    v7 = sub_29A1DE49C(result, v5);
    v5 += 200;
    result = v7 + 200;
    v6 -= 200;
  }

  while (v5 != a2);
  return result;
}

void sub_29A2F4E58(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_29A2F48D0(v1);
  }

  __cxa_rethrow();
}

void *sub_29A2F4F50(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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

uint64_t sub_29A2F502C(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 132) = 3;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 160));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 164));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 191) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void *sub_29A2F50D0(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29A2F5318(a1, v6, a3, a4, &v22);
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

void sub_29A2F5300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2F4C80(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A2F5318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x20uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  sub_29A1E21F4(v10 + 4, a3);
  result = sub_29A1E2240(v10 + 5, a3 + 1);
  v10[3] = *a4;
  *(a5 + 16) = 1;
  return result;
}

void sub_29A2F5394(uint64_t a1, uint64_t a2)
{
  v3 = malloc(40 * a2);
  v4 = a1;
  if (*(a1 + 124) >= 4u)
  {
    v4 = *a1;
  }

  sub_29A1DDCF8(v4, &v4[5 * *(a1 + 120)], v3);
  pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue>>,3u>::_Destruct();
}

uint64_t *sub_29A2F541C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186A3C(a1 + 1, a3);
  sub_29A186A3C(a1 + 3, a3 + 2);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::GetSize()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::_UpdateChildNames();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::_UpdateChildNames(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 64);
  result = a1 + 64;
  if ((v3 & 1) == 0)
  {
    result = sub_29B2984B8(result, a1);
    if (result)
    {
      sub_29A1DA6E4(a1);
    }
  }

  return result;
}

void sub_29A2F56DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29A124AB0((v10 - 48));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::GetChild()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29A2F5804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  sub_29A1DCEA8(&a10);
  _Unwind_Resume(a1);
}

void sub_29A2F5828(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(a1))
  {

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(a1, a2, a3);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a1, a2, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::Find()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29A2F5A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A2F5A90(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfAttributeSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B486F7BLL & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A2F5B38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A2F5AB0);
}

void sub_29A2F5B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A2F5B6C@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_29A2F5A90(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v3, &v7);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v7);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v5 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A2F5BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::Sdf_Children(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}