void sub_2991C61B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  *v14 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991C6220(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_2991C1E60(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void *sub_2991C62C4(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void sub_2991C63A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_2991C6490(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991C63C4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = 4 * *(v3 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2991A11B0();
    }

    v5 = *(v3 + 16);
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      result = memmove(a2, v5, v4);
    }

    a2 += v4;
  }

  else
  {
    a2[23] = 0;
  }

  *a2 = 0;
  return result;
}

uint64_t sub_2991C64B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v3 = *(a1 + 80);
  }

  else
  {
    v3 = &unk_2A1461A18;
  }

  v4 = v3[68];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_2991C66EC();
    }

    if (v4 == 4)
    {
      sub_2991C675C();
    }
  }

  else
  {
    if (v4 == 1)
    {
      sub_2991C660C();
    }

    if (v4 == 2)
    {
      sub_2991C667C();
    }
  }

  result = sub_2991EB39C();
  if (result <= 2)
  {
    LOBYTE(v14) = 0;
    v6 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_factory.cc", 16);
    v7 = sub_2991C0E9C(v6, "(", 1);
    v8 = MEMORY[0x29C29BD30](v7, 43);
    v9 = sub_2991C0E9C(v8, ") ", 2);
    v10 = sub_2991C0E9C(v9, "LOG(", 4);
    v11 = sub_2991C0E9C(v10, "ERROR", 5);
    v12 = sub_2991C0E9C(v11, ") ", 2);
    v13 = sub_2991C0E9C(v12, "Unknown model_type: ", 20);
    MEMORY[0x29C29BD30](v13, v3[68]);
    result = sub_2991BF944(&v14);
  }

  *a2 = 0;
  return result;
}

void sub_2991C65F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991BF944(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991C67CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17[1] = a2;
  v17[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    sub_2991C69D0();
  }

  if (!v6)
  {
    sub_2991C6950();
  }

  result = sub_2991EB39C();
  if (result <= 2)
  {
    LOBYTE(v17[0]) = 0;
    v8 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "model_factory.cc", 16);
    v9 = sub_2991C0E9C(v8, "(", 1);
    v10 = MEMORY[0x29C29BD30](v9, 61);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    v12 = sub_2991C0E9C(v11, "LOG(", 4);
    v13 = sub_2991C0E9C(v12, "ERROR", 5);
    v14 = sub_2991C0E9C(v13, ") ", 2);
    v15 = sub_2991C0E9C(v14, "Unknown model_type: ", 20);
    v16 = (*(*a1 + 80))(a1);
    MEMORY[0x29C29BD40](v15, v16);
    result = sub_2991BF944(v17);
  }

  *a4 = 0;
  return result;
}

void sub_2991C6938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991BF944(va);
  _Unwind_Resume(a1);
}

void *sub_2991C6A50(void *a1)
{
  *a1 = &unk_2A1F629A0;
  v2 = a1[3];
  if (v2)
  {
    sub_2991A893C(v2);
  }

  return a1;
}

void sub_2991C6A9C(void *a1)
{
  *a1 = &unk_2A1F629A0;
  v1 = a1[3];
  if (v1)
  {
    sub_2991A893C(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991C6B08(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    sub_2991D70A8();
  }

  return result;
}

void *sub_2991C6B70(void *a1)
{
  *a1 = &unk_2A1F629C0;
  v2 = a1[2];
  if (v2)
  {
    sub_2991A893C(v2);
  }

  return a1;
}

void sub_2991C6BBC(void *a1)
{
  *a1 = &unk_2A1F629C0;
  v1 = a1[2];
  if (v1)
  {
    sub_2991A893C(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991C6C28(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    sub_2991D71E4();
  }

  return result;
}

_BYTE *sub_2991C6C8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return sub_2991FB73C(v2, a2);
  }

  else
  {
    return sub_2991C6CA8(a2, "");
  }
}

_BYTE *sub_2991C6CA8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

double sub_2991C6D60(uint64_t a1)
{
  *a1 = &unk_2A1F629E0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t sub_2991C6DA0(uint64_t a1)
{
  *a1 = &unk_2A1F629E0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void sub_2991C6F04(uint64_t a1)
{
  sub_2991C6DA0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991C6F3C()
{
  v4[19] = *MEMORY[0x29EDCA608];
  sub_2991C70DC(v2);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x29EDC9518];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](v3);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v4);
  v0 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2991C70AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2991D64B0(&a10, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&a63);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991C70DC(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v3 = *(MEMORY[0x29EDC9518] + 16);
  v4 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x29EDC9558] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x29C29BBE0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2991C7268(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2991C72A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2991C6F3C())
  {
    sub_2991C73D8();
  }

  v6 = *(*a1 + 64);

  return v6(a1, a2, a3);
}

void sub_2991C73B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2991C7850(&a9);
  sub_2991C7850(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2991C7444@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_2991EA5F0();
  }

  return sub_2991ED458(a2, 5, "model file path should not be empty.", 36);
}

void sub_2991C77D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991C7850(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2991E7B48();
    MEMORY[0x29C29BFB0](v3, 0x10A1C4047CE62CFLL);
  }

  return a1;
}

uint64_t *sub_2991C7898(uint64_t a1)
{
  (*(*a1 + 16))(&v13);
  if (v13.__r_.__value_.__r.__words[0])
  {
    v12 = 1;
    v1 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v2 = sub_2991C0E9C(v1, "(", 1);
    v3 = MEMORY[0x29C29BD30](v2, 239);
    v4 = sub_2991C0E9C(v3, ") [", 3);
    v5 = sub_2991C0E9C(v4, "_status.ok()", 12);
    v6 = sub_2991C0E9C(v5, "] ", 2);
    sub_2991ED618(&v13, __p);
    if ((v11 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = __p[1];
    }

    sub_2991C0E9C(v6, v7, v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    sub_2991BF944(&v12);
  }

  return sub_2991ED2F4(&v13);
}

void sub_2991C79A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2991BF944((v15 - 25));
  sub_2991ED2F4((v15 - 24));
  _Unwind_Resume(a1);
}

void sub_2991C7A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2991C7850(&a9);
  sub_2991C7850(&a10);
  _Unwind_Resume(a1);
}

void sub_2991C7D14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  if (!v5)
  {
    v5 = &unk_2A1461B60;
  }

  if (v5[80] == 1)
  {
    if (sub_2991EB39C() <= 0)
    {
      LOBYTE(v24) = 0;
      v6 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
      v7 = sub_2991C0E9C(v6, "(", 1);
      v8 = MEMORY[0x29C29BD30](v7, 260);
      v9 = sub_2991C0E9C(v8, ") ", 2);
      v10 = sub_2991C0E9C(v9, "LOG(", 4);
      v11 = sub_2991C0E9C(v10, "INFO", 4);
      v12 = sub_2991C0E9C(v11, ") ", 2);
      sub_2991C0E9C(v12, "Enable Apple addition for backward compatibility", 48);
      sub_2991BF944(&v24);
    }

    v4 = *a2;
    *(v4 + 48) = *(*a2 + 48) | 1;
    v13 = *(v4 + 80);
    if (!v13)
    {
      v14 = *(v4 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = sub_2991E8BE0(v14);
      *(v4 + 80) = v13;
      v4 = *a2;
    }

    *(v13 + 40) |= 0x4000u;
    *(v13 + 245) = 1;
    *(v4 + 48) |= 2u;
    v15 = *(v4 + 88);
    if (!v15)
    {
      v16 = *(v4 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_2991E8CB0(v16);
      *(v4 + 88) = v15;
      v4 = *a2;
    }

    *(v15 + 48) |= 0x10u;
    *(v15 + 81) = 1;
  }

  *a2 = 0;
  if (v4)
  {
    v17 = v4 + 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 32);
  *(a1 + 32) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v17 = *(a1 + 32);
  }

  sub_2991C64B4(v17 - 16, &v24);
  v19 = v24;
  v24 = 0;
  v20 = *(a1 + 8);
  *(a1 + 8) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v21 = v24;
    v24 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  if (*(v17 + 72))
  {
    v22 = *(v17 + 72);
  }

  if (*(v17 + 64))
  {
    v23 = *(v17 + 64);
  }

  sub_2991C8724();
}

void sub_2991C8814(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, char *a5@<X4>, void **a6@<X5>, std::string *a7@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  v12 = strlen(a3);
  sub_2991D7320(a3, v12, a4, a5, a6, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a7 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991C88EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2991C8928(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45[19] = *MEMORY[0x29EDCA608];
  a4[1] = *a4;
  if (a3)
  {
    (*(*a1 + 88))(a1);
    if (!*a5)
    {
      sub_2991ED2F4(a5);
      if ((atomic_load_explicit(&qword_2A145FD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FD38))
      {
        v41[3] = xmmword_29EF0BCF0;
        *__p = unk_29EF0BD00;
        v43 = xmmword_29EF0BD10;
        v44 = 3;
        v40 = xmmword_29EF0BCB0;
        v41[0] = unk_29EF0BCC0;
        v41[1] = xmmword_29EF0BCD0;
        v41[2] = *&off_29EF0BCE0;
        sub_2991D8D2C(&qword_2A145FD20, &v40, 5);
        __cxa_atexit(sub_2991D3618, &qword_2A145FD20, &dword_29918C000);
        __cxa_guard_release(&qword_2A145FD38);
      }

      sub_2991D6774(&v38, a2, a3, ":", 1, 0);
      v10 = v38;
      v11 = v39;
      if (v38 == v39)
      {
LABEL_24:
        if (v10)
        {
          v39 = v10;
          operator delete(v10);
        }

        sub_29919C3A8(a5);
      }

      else
      {
        while (1)
        {
          v12 = sub_2991D78C4(&qword_2A145FD20, v10);
          v13 = v12;
          if (v12 == &unk_2A145FD28)
          {
            break;
          }

          v15 = a4[1];
          v14 = a4[2];
          if (v15 >= v14)
          {
            v17 = *a4;
            v18 = v15 - *a4;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              sub_299212A8C();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_2992F86B0(a4, v23);
            }

            *(4 * v19) = *(v12 + 48);
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v24 = *a4;
            *a4 = 0;
            a4[1] = v16;
            a4[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = *(v12 + 48);
            v16 = (v15 + 1);
          }

          a4[1] = v16;
          v25 = *(v13 + 48);
          if (v25 == 1)
          {
            v26 = sub_2991BC80C(a1[1]);
            v27 = strlen(v26);
            v28 = (*(*a1 + 504))(a1, v26, v27);
            if ((*(*a1 + 528))(a1, v28))
            {
              LODWORD(v40) = 13;
              sub_2991BF614(&v40 + 1);
              sub_2991C0E9C(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_2991C0E9C(&v40 + 1, "(", 1);
              MEMORY[0x29C29BD30](&v40 + 8, 1135);
              sub_2991C0E9C(&v40 + 1, ") [", 3);
              sub_2991C0E9C(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->bos_piece().data())))", 68);
              sub_2991C0E9C(&v40 + 1, "] ", 2);
              v33 = sub_2991BC80C(a1[1]);
              sub_2991C0E9C(&v40 + 1, v33, v34);
              sub_2991BC3FC(&v40, a5);
              goto LABEL_35;
            }

            v25 = *(v13 + 48);
          }

          if (v25 == 2)
          {
            v29 = sub_2991BC890(a1[1]);
            v30 = strlen(v29);
            v31 = (*(*a1 + 504))(a1, v29, v30);
            if ((*(*a1 + 528))(a1, v31))
            {
              LODWORD(v40) = 13;
              sub_2991BF614(&v40 + 1);
              sub_2991C0E9C(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
              sub_2991C0E9C(&v40 + 1, "(", 1);
              MEMORY[0x29C29BD30](&v40 + 8, 1140);
              sub_2991C0E9C(&v40 + 1, ") [", 3);
              sub_2991C0E9C(&v40 + 1, "!IsUnknown(PieceToId(absl::string_view(model_->eos_piece().data())))", 68);
              sub_2991C0E9C(&v40 + 1, "] ", 2);
              v35 = sub_2991BC890(a1[1]);
              sub_2991C0E9C(&v40 + 1, v35, v36);
              sub_2991BC3FC(&v40, a5);
LABEL_35:
              *(&v40 + 1) = *MEMORY[0x29EDC9538];
              *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x29EDC9538] + 24);
              *&v41[0] = MEMORY[0x29EDC9570] + 16;
              if (SBYTE7(v43) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_37;
            }
          }

          v10 += 2;
          if (v10 == v11)
          {
            v10 = v38;
            goto LABEL_24;
          }
        }

        LODWORD(v40) = 13;
        sub_2991BF614(&v40 + 1);
        sub_2991C0E9C(&v40 + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&v40 + 1, "(", 1);
        MEMORY[0x29C29BD30](&v40 + 8, 1129);
        sub_2991C0E9C(&v40 + 1, ") [", 3);
        sub_2991C0E9C(&v40 + 1, "it != extra_option_map.end()", 28);
        sub_2991C0E9C(&v40 + 1, "] ", 2);
        sub_2991C0E9C(&v40 + 1, "option ", 8);
        sub_2991C0E9C(&v40 + 1, *v10, v10[1]);
        sub_2991C0E9C(&v40 + 1, " is not available.", 19);
        sub_2991BC3FC(&v40, a5);
        *(&v40 + 1) = *MEMORY[0x29EDC9538];
        *(&v40 + *(*(&v40 + 1) - 24) + 8) = *(MEMORY[0x29EDC9538] + 24);
        *&v41[0] = MEMORY[0x29EDC9570] + 16;
        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_37:
        *&v41[0] = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v41 + 1);
        std::ostream::~ostream();
        MEMORY[0x29C29BF00](v45);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }

    v37 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v32 = *MEMORY[0x29EDCA608];

    sub_29919C3A8(a5);
  }
}

void *sub_2991C9244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a1 + 16))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sub_2991ED2F4(a2);
        result = (*(**(a1 + 16) + 24))(*(a1 + 16));
        if (!*a2)
        {
          v6 = sub_2991ED2F4(a2);

          return sub_29919C3A8(v6);
        }
      }

      return result;
    }

    v9 = 13;
    v8 = sub_2991BF614(&v10);
    sub_2991C0E9C(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 320);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "normalizer_", 11);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991C0E9C(&v10, "Normalizer is not initialized.", 30);
    sub_2991BC3FC(&v9, a2);
  }

  else
  {
    v9 = 13;
    v7 = sub_2991BF614(&v10);
    sub_2991C0E9C(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 319);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "model_", 6);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991C0E9C(&v10, "Model is not initialized.", 25);
    sub_2991BC3FC(&v9, a2);
  }

  v10 = *MEMORY[0x29EDC9538];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v14);
}

void sub_2991C958C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 88))(a1);
  if (*a3)
  {
    return;
  }

  sub_2991ED2F4(a3);
  v6 = a1[4];
  if (!v6 || (v7 = **v6, (v8 = __dynamic_cast(v6, &unk_2A1F628A8, &unk_2A1F63888, 16)) == 0))
  {
    LODWORD(v23) = 13;
    v20 = sub_2991BF614(&v24);
    sub_2991C0E9C(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v24, "(", 1);
    MEMORY[0x29C29BD30](&v24, 331);
    sub_2991C0E9C(&v24, ") [", 3);
    sub_2991C0E9C(&v24, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
    sub_2991C0E9C(&v24, "] ", 2);
    sub_2991C0E9C(&v24, "SetVocabulary is not supported when mmap-based model is loaded.", 63);
    sub_2991BC3FC(&v23, a3);
LABEL_26:
    v24 = *MEMORY[0x29EDC9538];
    *(&v24 + *(v24 - 3)) = *(MEMORY[0x29EDC9538] + 24);
    v25 = MEMORY[0x29EDC9570] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v26);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v28);
    return;
  }

  v9 = v8;
  v10 = &unk_2A1461A18;
  if (v8[10])
  {
    v10 = v8[10];
  }

  if ((v10[68] - 1) >= 2)
  {
    LODWORD(v23) = 13;
    v21 = sub_2991BF614(&v24);
    sub_2991C0E9C(v21, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v24, "(", 1);
    MEMORY[0x29C29BD30](&v24, 336);
    sub_2991C0E9C(&v24, ") [", 3);
    sub_2991C0E9C(&v24, "type == TrainerSpec::UNIGRAM || type == TrainerSpec::BPE", 56);
    sub_2991C0E9C(&v24, "] ", 2);
    sub_2991C0E9C(&v24, "Vocabulary constraint is only enabled in subword units.", 55);
    sub_2991BC3FC(&v23, a3);
    goto LABEL_26;
  }

  sub_2991D7604(&v23, *a2, a2[1]);
  if (*(v9 + 16) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_2991D6694((v9 + 7), v11);
      v13 = v12;
      if ((*(v12 + 60) - 2) >= 3)
      {
        v14 = *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v14 + 23);
        if (v15 < 0)
        {
          v14 = *v14;
          v15 = *((*(v12 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v22[0] = v14;
        v22[1] = v15;
        if (&v24 == sub_2991D78C4(&v23, v22) && ((v16 = *(v13 + 48) & 0xFFFFFFFFFFFFFFFELL, v17 = *(v16 + 23), v17 < 0) ? (v18 = *v16, v17 = *(v16 + 8)) : (v18 = (*(v13 + 48) & 0xFFFFFFFFFFFFFFFELL)), v17 != asc_299431C8E[*v18 >> 4]))
        {
          if (!sub_2991E2B24(5))
          {
LABEL_31:
            __assert_rtn("_internal_set_type", "sentencepiece_model.pb.h", 4686, "::sentencepiece::ModelProto_SentencePiece_Type_IsValid(value)");
          }

          v19 = 5;
        }

        else
        {
          if (!sub_2991E2B24(1))
          {
            goto LABEL_31;
          }

          v19 = 1;
        }

        *(v13 + 40) |= 4u;
        *(v13 + 60) = v19;
      }

      ++v11;
    }

    while (v11 < *(v9 + 16));
  }

  sub_29919C3A8(a3);
  sub_29921B8CC(&v23, v24);
}

void *sub_2991C9A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a2)
  {
    sub_2991ED2F4(a2);
    v5 = a1[4];
    if (v5 && (v6 = **v5, (v7 = __dynamic_cast(v5, &unk_2A1F628A8, &unk_2A1F63888, 16)) != 0))
    {
      v8 = *(v7 + 9);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[16];
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          v12 = *v9;
          if (*(*v9 + 60) == 5)
          {
            if (!sub_2991E2B24(1))
            {
              sub_2991D9438();
            }

            *(v12 + 40) |= 4u;
            *(v12 + 60) = 1;
          }

          ++v9;
          v11 -= 8;
        }

        while (v11);
      }

      return sub_29919C3A8(a2);
    }

    else
    {
      v14 = 13;
      v13 = sub_2991BF614(&v15);
      sub_2991C0E9C(v13, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v15, "(", 1);
      MEMORY[0x29C29BD30](&v15, 365);
      sub_2991C0E9C(&v15, ") [", 3);
      sub_2991C0E9C(&v15, "(model_proto = dynamic_cast<ModelProto *>(model_proto_.get()))", 62);
      sub_2991C0E9C(&v15, "] ", 2);
      sub_2991C0E9C(&v15, "ResetVocabulary is not supported when mmap-based model is loaded.", 65);
      sub_2991BC3FC(&v14, a2);
      v15 = *MEMORY[0x29EDC9538];
      *(&v15 + *(v15 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v16 = MEMORY[0x29EDC9570] + 16;
      if (v18 < 0)
      {
        operator delete(v17[7].__locale_);
      }

      v16 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v17);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v19);
    }
  }

  return result;
}

void sub_2991CA318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  __p = (v10 - 176);
  sub_299212B90(&__p);
  __p = (v10 - 152);
  sub_299212B90(&__p);
  if (*(v10 - 105) < 0)
  {
    operator delete(*(v10 - 128));
  }

  v12 = *(v10 - 104);
  *(v10 - 104) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2991CA40C(const char *a1, uint64_t a2, uint64_t a3)
{
  sub_2991D7954(v11);
  v5 = strlen(a1);
  v6 = sub_2991C0E9C(&v12, a1, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x29C29BC80](v11, a3);
    v7 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  }

  v11[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12 = v9;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v16);
  return v7;
}

void sub_2991CA600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D7BF8(va, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](v2 + 128);
  _Unwind_Resume(a1);
}

void *sub_2991CA624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2991D6A34(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + v5);
      v9 = *(v4 + v5 + 23);
      if (v9 < 0)
      {
        v10 = *v8;
        v9 = v8[1];
      }

      else
      {
        v10 = v8;
      }

      v11 = (*result + v6);
      *v11 = v10;
      v11[1] = v9;
      ++v7;
      v4 = *a1;
      v6 += 16;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }

  return result;
}

uint64_t sub_2991CA6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_2991ED2F4(a5);
    if (a4)
    {
      sub_299212BE4(a4);
      sub_2991E09A4(&v16, 0);
      (*(*a1 + 232))(a1, a2, a3, &v16);
      if (!*a5)
      {
        sub_2991ED2F4(a5);
        if (v21)
        {
          v11 = v21 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v20)
        {
          v12 = *(a4 + 8);
          v13 = 8 * v20;
          do
          {
            v14 = *(*v11 + 48);
            if (v12 >= *(a4 + 16))
            {
              v12 = sub_2991C153C(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_2991D7D48(a4, (v14 & 0xFFFFFFFFFFFFFFFELL));
              v12 += 24;
            }

            *(a4 + 8) = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_29919C3A8(a5);
      }

      return sub_2991E0ACC(&v16);
    }

    else
    {
      v16 = 13;
      v15 = sub_2991BF614(&v17);
      sub_2991C0E9C(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v17, "(", 1);
      MEMORY[0x29C29BD30](&v17, 415);
      sub_2991C0E9C(&v17, ") [", 3);
      sub_2991C0E9C(&v17, "pieces", 6);
      sub_2991C0E9C(&v17, "] ", 2);
      sub_2991C0E9C(&v17, "output container is null", 24);
      sub_2991BC3FC(&v16, a5);
      v17 = *MEMORY[0x29EDC9538];
      *(&v17 + *(v17 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v18 = MEMORY[0x29EDC9570] + 16;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      v18 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v19);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v24);
    }
  }

  return result;
}

uint64_t sub_2991CA9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sub_2991ED2F4(a5);
    if (a4)
    {
      a4[1] = *a4;
      sub_2991E09A4(&v24, 0);
      (*(*a1 + 232))(a1, a2, a3, &v24);
      if (!*a5)
      {
        sub_2991ED2F4(a5);
        if (v29)
        {
          v11 = v29 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v28)
        {
          v12 = a4[1];
          v13 = 8 * v28;
          do
          {
            v14 = *(*v11 + 64);
            v15 = a4[2];
            if (v12 >= v15)
            {
              v16 = *a4;
              v17 = v12 - *a4;
              v18 = v17 >> 2;
              v19 = (v17 >> 2) + 1;
              if (v19 >> 62)
              {
                sub_299212A8C();
              }

              v20 = v15 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                sub_2992F86B0(a4, v21);
              }

              *(4 * v18) = v14;
              v12 = (4 * v18 + 4);
              memcpy(0, v16, v17);
              v22 = *a4;
              *a4 = 0;
              a4[1] = v12;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v12++ = v14;
            }

            a4[1] = v12;
            v11 += 8;
            v13 -= 8;
          }

          while (v13);
        }

        sub_29919C3A8(a5);
      }

      return sub_2991E0ACC(&v24);
    }

    else
    {
      v24 = 13;
      v23 = sub_2991BF614(&v25);
      sub_2991C0E9C(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v25, "(", 1);
      MEMORY[0x29C29BD30](&v25, 428);
      sub_2991C0E9C(&v25, ") [", 3);
      sub_2991C0E9C(&v25, "ids", 3);
      sub_2991C0E9C(&v25, "] ", 2);
      sub_2991C0E9C(&v25, "output container is null", 24);
      sub_2991BC3FC(&v24, a5);
      v25 = *MEMORY[0x29EDC9538];
      *(&v25 + *(v25 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v26 = MEMORY[0x29EDC9570] + 16;
      if (v31 < 0)
      {
        operator delete(__p);
      }

      v26 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v27);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v32);
    }
  }

  return result;
}

void sub_2991CAD6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

void sub_2991CAD9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2991CA624(a2, __p);
  (*(*a1 + 160))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2991CAE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991CAE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_2991E09A4(&v10, 0);
      (*(*a1 + 272))(a1, a2, &v10);
      if (!*a4)
      {
        sub_2991ED2F4(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_29919C3A8(a4);
      }

      return sub_2991E0ACC(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_2991BF614(&v11);
      sub_2991C0E9C(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v11, "(", 1);
      MEMORY[0x29C29BD30](&v11, 447);
      sub_2991C0E9C(&v11, ") [", 3);
      sub_2991C0E9C(&v11, "detokenized", 11);
      sub_2991C0E9C(&v11, "] ", 2);
      sub_2991C0E9C(&v11, "output container is null", 24);
      sub_2991BC3FC(&v10, a4);
      v11 = *MEMORY[0x29EDC9538];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v12 = MEMORY[0x29EDC9570] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v15);
    }
  }

  return result;
}

uint64_t sub_2991CB120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sub_2991E09A4(&v10, 0);
      (*(*a1 + 280))(a1, a2, &v10);
      if (!*a4)
      {
        sub_2991ED2F4(a4);
        std::string::operator=(a3, (v13[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sub_29919C3A8(a4);
      }

      return sub_2991E0ACC(&v10);
    }

    else
    {
      v10 = 13;
      v9 = sub_2991BF614(&v11);
      sub_2991C0E9C(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v11, "(", 1);
      MEMORY[0x29C29BD30](&v11, 458);
      sub_2991C0E9C(&v11, ") [", 3);
      sub_2991C0E9C(&v11, "detokenized", 11);
      sub_2991C0E9C(&v11, "] ", 2);
      sub_2991C0E9C(&v11, "output container is null", 24);
      sub_2991BC3FC(&v10, a4);
      v11 = *MEMORY[0x29EDC9538];
      *(&v11 + *(v11 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v12 = MEMORY[0x29EDC9570] + 16;
      if (v14 < 0)
      {
        operator delete(v13[7].__locale_);
      }

      v12 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v13);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v15);
    }
  }

  return result;
}

uint64_t sub_2991CB400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void ***a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_2991ED2F4(a6);
    if (a5)
    {
      v13 = *a5;
      v14 = a5[1];
      while (v14 != v13)
      {
        v14 -= 3;
        v31 = v14;
        sub_299212B90(&v31);
      }

      a5[1] = v13;
      sub_2991E146C(&v31, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v31);
      if (!*a6)
      {
        sub_2991ED2F4(a6);
        if (v35)
        {
          v15 = (v35 + 8);
        }

        else
        {
          v15 = 0;
        }

        if (LODWORD(v34.__locale_))
        {
          v16 = &v15[SLODWORD(v34.__locale_)];
          do
          {
            v17 = *v15;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v18 = *(v17 + 64);
            if (v18)
            {
              v19 = v18 + 8;
            }

            else
            {
              v19 = 0;
            }

            v20 = *(v17 + 56);
            if (v20)
            {
              v21 = 0;
              v22 = 8 * v20;
              do
              {
                v23 = *(*v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v21 >= v30)
                {
                  v21 = sub_2991C153C(&v28, v23);
                }

                else
                {
                  if (*(v23 + 23) < 0)
                  {
                    sub_2991A110C(v21, *v23, *(v23 + 8));
                  }

                  else
                  {
                    v24 = *v23;
                    *(v21 + 16) = *(v23 + 16);
                    *v21 = v24;
                  }

                  v21 += 24;
                }

                v29 = v21;
                v19 += 8;
                v22 -= 8;
              }

              while (v22);
            }

            v25 = a5[1];
            if (v25 >= a5[2])
            {
              v26 = sub_2991D7E08(a5, &v28);
            }

            else
            {
              sub_2991D7DA8(a5, &v28);
              v26 = (v25 + 3);
            }

            a5[1] = v26;
            v39 = &v28;
            sub_299212B90(&v39);
            ++v15;
          }

          while (v15 != v16);
        }

        sub_29919C3A8(a6);
      }

      return sub_2991E1528(&v31);
    }

    else
    {
      LODWORD(v31) = 13;
      v27 = sub_2991BF614(&v32);
      sub_2991C0E9C(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v32, "(", 1);
      MEMORY[0x29C29BD30](&v32, 470);
      sub_2991C0E9C(&v32, ") [", 3);
      sub_2991C0E9C(&v32, "pieces", 6);
      sub_2991C0E9C(&v32, "] ", 2);
      sub_2991C0E9C(&v32, "output container is null", 24);
      sub_2991BC3FC(&v31, a6);
      v32 = *MEMORY[0x29EDC9538];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v33 = MEMORY[0x29EDC9570] + 16;
      if (v37 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v34);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v38);
    }
  }

  return result;
}

void sub_2991CB7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991CB810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_2991ED2F4(a6);
    if (a5)
    {
      sub_29920E0B4(a5);
      sub_2991E146C(&v38, 0);
      (*(*a1 + 240))(a1, a2, a3, a4, &v38);
      if (!*a6)
      {
        sub_2991ED2F4(a6);
        if (v42)
        {
          v13 = (v42 + 8);
        }

        else
        {
          v13 = 0;
        }

        if (LODWORD(v41.__locale_))
        {
          v34 = &v13[SLODWORD(v41.__locale_)];
          do
          {
            v14 = *v13;
            __src = 0;
            v36 = 0;
            v37 = 0;
            v15 = *(v14 + 64);
            if (v15)
            {
              v16 = v15 + 8;
            }

            else
            {
              v16 = 0;
            }

            v17 = *(v14 + 56);
            if (v17)
            {
              v18 = 0;
              v19 = 8 * v17;
              do
              {
                v20 = *(*v16 + 64);
                if (v18 >= v37)
                {
                  v21 = __src;
                  v22 = v18 - __src;
                  v23 = (v18 - __src) >> 2;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 62)
                  {
                    sub_299212A8C();
                  }

                  v25 = v37 - __src;
                  if ((v37 - __src) >> 1 > v24)
                  {
                    v24 = v25 >> 1;
                  }

                  if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v26 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  if (v26)
                  {
                    sub_2992F86B0(&__src, v26);
                  }

                  v27 = (v18 - __src) >> 2;
                  v28 = (4 * v23);
                  v29 = (4 * v23 - 4 * v27);
                  *v28 = v20;
                  v18 = (v28 + 1);
                  memcpy(v29, v21, v22);
                  v30 = __src;
                  __src = v29;
                  v36 = v18;
                  v37 = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  *v18 = v20;
                  v18 += 4;
                }

                v36 = v18;
                v16 += 8;
                v19 -= 8;
              }

              while (v19);
            }

            v31 = a5[1];
            if (v31 >= a5[2])
            {
              v32 = sub_2991D81A0(a5, &__src);
            }

            else
            {
              sub_2991D814C(a5, &__src);
              v32 = v31 + 24;
            }

            a5[1] = v32;
            if (__src)
            {
              v36 = __src;
              operator delete(__src);
            }

            ++v13;
          }

          while (v13 != v34);
        }

        sub_29919C3A8(a6);
      }

      return sub_2991E1528(&v38);
    }

    else
    {
      v38 = 13;
      v33 = sub_2991BF614(&v39);
      sub_2991C0E9C(v33, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v39, "(", 1);
      MEMORY[0x29C29BD30](&v39, 488);
      sub_2991C0E9C(&v39, ") [", 3);
      sub_2991C0E9C(&v39, "ids", 3);
      sub_2991C0E9C(&v39, "] ", 2);
      sub_2991C0E9C(&v39, "output container is null", 24);
      sub_2991BC3FC(&v38, a6);
      v39 = *MEMORY[0x29EDC9538];
      *(&v39 + *(v39 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v40 = MEMORY[0x29EDC9570] + 16;
      if (v44 < 0)
      {
        operator delete(__p);
      }

      v40 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v41);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v45);
    }
  }

  return result;
}

uint64_t sub_2991CBC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_2991ED2F4(a6);
    if (a5)
    {
      sub_299212BE4(a5);
      sub_2991E09A4(&v20, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v20, a7);
      if (!*a6)
      {
        sub_2991ED2F4(a6);
        if (v25)
        {
          v15 = v25 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v24)
        {
          v16 = *(a5 + 8);
          v17 = 8 * v24;
          do
          {
            v18 = *(*v15 + 48);
            if (v16 >= *(a5 + 16))
            {
              v16 = sub_2991C153C(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              sub_2991D7D48(a5, (v18 & 0xFFFFFFFFFFFFFFFELL));
              v16 += 24;
            }

            *(a5 + 8) = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_29919C3A8(a6);
      }

      return sub_2991E0ACC(&v20);
    }

    else
    {
      v20 = 13;
      v19 = sub_2991BF614(&v21);
      sub_2991C0E9C(v19, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v21, "(", 1);
      MEMORY[0x29C29BD30](&v21, 506);
      sub_2991C0E9C(&v21, ") [", 3);
      sub_2991C0E9C(&v21, "pieces", 6);
      sub_2991C0E9C(&v21, "] ", 2);
      sub_2991C0E9C(&v21, "output container is null", 24);
      sub_2991BC3FC(&v20, a6);
      v21 = *MEMORY[0x29EDC9538];
      *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v22 = MEMORY[0x29EDC9570] + 16;
      if (v27 < 0)
      {
        operator delete(__p);
      }

      v22 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v23);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v28);
    }
  }

  return result;
}

uint64_t sub_2991CBFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a6)
  {
    sub_2991ED2F4(a6);
    if (a5)
    {
      a5[1] = *a5;
      sub_2991E09A4(&v28, 0);
      (*(*a1 + 248))(a1, a2, a3, a4, &v28, a7);
      if (!*a6)
      {
        sub_2991ED2F4(a6);
        if (v33)
        {
          v15 = v33 + 8;
        }

        else
        {
          v15 = 0;
        }

        if (v32)
        {
          v16 = a5[1];
          v17 = 8 * v32;
          do
          {
            v18 = *(*v15 + 64);
            v19 = a5[2];
            if (v16 >= v19)
            {
              v20 = *a5;
              v21 = v16 - *a5;
              v22 = v21 >> 2;
              v23 = (v21 >> 2) + 1;
              if (v23 >> 62)
              {
                sub_299212A8C();
              }

              v24 = v19 - v20;
              if (v24 >> 1 > v23)
              {
                v23 = v24 >> 1;
              }

              if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                sub_2992F86B0(a5, v25);
              }

              *(4 * v22) = v18;
              v16 = (4 * v22 + 4);
              memcpy(0, v20, v21);
              v26 = *a5;
              *a5 = 0;
              a5[1] = v16;
              a5[2] = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v16++ = v18;
            }

            a5[1] = v16;
            v15 += 8;
            v17 -= 8;
          }

          while (v17);
        }

        sub_29919C3A8(a6);
      }

      return sub_2991E0ACC(&v28);
    }

    else
    {
      v28 = 13;
      v27 = sub_2991BF614(&v29);
      sub_2991C0E9C(v27, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v29, "(", 1);
      MEMORY[0x29C29BD30](&v29, 520);
      sub_2991C0E9C(&v29, ") [", 3);
      sub_2991C0E9C(&v29, "ids", 3);
      sub_2991C0E9C(&v29, "] ", 2);
      sub_2991C0E9C(&v29, "output container is null", 24);
      sub_2991BC3FC(&v28, a6);
      v29 = *MEMORY[0x29EDC9538];
      *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v30 = MEMORY[0x29EDC9570] + 16;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      v30 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v31);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v36);
    }
  }

  return result;
}

void sub_2991CC344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991CC374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void ***a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_2991ED2F4(a8);
    if (a7)
    {
      v19 = *a7;
      v20 = a7[1];
      while (v20 != v19)
      {
        v20 -= 4;
        v39 = v20;
        sub_299212B90(&v39);
      }

      a7[1] = v19;
      sub_2991E146C(&v39, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v39, a9);
      if (!*a8)
      {
        sub_2991ED2F4(a8);
        v21 = *a7;
        v22 = a7[1];
        while (v22 != v21)
        {
          v22 -= 4;
          v36 = v22;
          sub_299212B90(&v36);
        }

        a7[1] = v21;
        sub_2991CC808(a7, SLODWORD(v42.__locale_));
        if (v43)
        {
          v24 = (v43 + 8);
        }

        else
        {
          v24 = 0;
        }

        if (LODWORD(v42.__locale_))
        {
          v25 = &v24[SLODWORD(v42.__locale_)];
          do
          {
            v26 = *v24;
            v36 = 0;
            __dst = 0;
            v38 = 0;
            sub_2991CC8A4(&v36, *(v26 + 56));
            v27 = *(v26 + 64);
            if (v27)
            {
              v28 = v27 + 8;
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v26 + 56);
            if (v29)
            {
              v30 = __dst;
              v31 = 8 * v29;
              do
              {
                v32 = *(*v28 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (v30 >= v38)
                {
                  v30 = sub_2991C153C(&v36, v32);
                }

                else
                {
                  if (*(v32 + 23) < 0)
                  {
                    sub_2991A110C(v30, *v32, *(v32 + 8));
                  }

                  else
                  {
                    v33 = *v32;
                    *(v30 + 16) = *(v32 + 16);
                    *v30 = v33;
                  }

                  v30 += 24;
                }

                __dst = v30;
                v28 += 8;
                v31 -= 8;
              }

              while (v31);
            }

            LODWORD(v47[0]) = *(v26 + 80);
            v34 = a7[1];
            if (v34 >= a7[2])
            {
              v35 = sub_2991D8448(a7, &v36, v47);
            }

            else
            {
              sub_2991D83D4(a7, &v36, v47);
              v35 = (v34 + 4);
            }

            a7[1] = v35;
            v47[0] = &v36;
            sub_299212B90(v47);
            ++v24;
          }

          while (v24 != v25);
        }

        sub_29919C3A8(a8);
      }

      return sub_2991E1528(&v39);
    }

    else
    {
      LODWORD(v39) = 13;
      v23 = sub_2991BF614(&v40);
      sub_2991C0E9C(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v40, "(", 1);
      MEMORY[0x29C29BD30](&v40, 535);
      sub_2991C0E9C(&v40, ") [", 3);
      sub_2991C0E9C(&v40, "pieces", 6);
      sub_2991C0E9C(&v40, "] ", 2);
      sub_2991C0E9C(&v40, "output container is null", 24);
      sub_2991BC3FC(&v39, a8);
      v40 = *MEMORY[0x29EDC9538];
      *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v41 = MEMORY[0x29EDC9570] + 16;
      if (v45 < 0)
      {
        operator delete(__p);
      }

      v41 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v42);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v46);
    }
  }

  return result;
}

void sub_2991CC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

void *sub_2991CC808(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2991C0B30(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void *sub_2991CC8A4(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_299212AA4(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t sub_2991CC960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  result = (*(*a1 + 88))(a1);
  if (!*a8)
  {
    sub_2991ED2F4(a8);
    if (a7)
    {
      sub_29921FB44(a7);
      sub_2991E146C(&v46, 0);
      (*(*a1 + 256))(a1, a2, a3, a4, a5, a6, &v46, a9);
      if (!*a8)
      {
        v40 = a8;
        sub_2991ED2F4(a8);
        sub_29921FB44(a7);
        sub_2991CCE24(a7, SLODWORD(v49.__locale_));
        if (v50)
        {
          v19 = (v50 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (LODWORD(v49.__locale_))
        {
          v41 = &v19[SLODWORD(v49.__locale_)];
          do
          {
            v20 = *v19;
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_2991B6CFC(&__src, *(v20 + 56));
            v21 = *(v20 + 64);
            if (v21)
            {
              v22 = v21 + 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v20 + 56);
            if (v23)
            {
              v24 = v44;
              v25 = 8 * v23;
              do
              {
                v26 = *(*v22 + 64);
                if (v24 >= v45)
                {
                  v27 = __src;
                  v28 = v24 - __src;
                  v29 = (v24 - __src) >> 2;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 62)
                  {
                    sub_299212A8C();
                  }

                  v31 = v45 - __src;
                  if ((v45 - __src) >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    sub_2992F86B0(&__src, v32);
                  }

                  v33 = v29;
                  v34 = (4 * v29);
                  v35 = &v34[-v33];
                  *v34 = v26;
                  v24 = (v34 + 1);
                  memcpy(v35, v27, v28);
                  v36 = __src;
                  __src = v35;
                  v44 = v24;
                  v45 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  *v24 = v26;
                  v24 += 4;
                }

                v44 = v24;
                v22 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            v42 = *(v20 + 80);
            v37 = a7[1];
            if (v37 >= a7[2])
            {
              v38 = sub_2991D8620(a7, &__src, &v42);
            }

            else
            {
              sub_2991D85B8(a7, &__src, &v42);
              v38 = (v37 + 32);
            }

            a7[1] = v38;
            if (__src)
            {
              v44 = __src;
              operator delete(__src);
            }

            ++v19;
          }

          while (v19 != v41);
        }

        sub_29919C3A8(v40);
      }

      return sub_2991E1528(&v46);
    }

    else
    {
      v46 = 13;
      v39 = sub_2991BF614(&v47);
      sub_2991C0E9C(v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v47, "(", 1);
      MEMORY[0x29C29BD30](&v47, 560);
      sub_2991C0E9C(&v47, ") [", 3);
      sub_2991C0E9C(&v47, "ids", 3);
      sub_2991C0E9C(&v47, "] ", 2);
      sub_2991C0E9C(&v47, "output container is null", 24);
      sub_2991BC3FC(&v46, a8);
      v47 = *MEMORY[0x29EDC9538];
      *(&v47 + *(v47 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v48 = MEMORY[0x29EDC9570] + 16;
      if (v52 < 0)
      {
        operator delete(__p);
      }

      v48 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v49);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v53);
    }
  }

  return result;
}

void *sub_2991CCE24(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2991D8570(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void *sub_2991CCEC0@<X0>(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a6;
  v91 = a6[1];
  if (*a6 != v91)
  {
    v11 = a5;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v10 + 8);
      if (!v14)
      {
        LODWORD(__p[0]) = 13;
        v79 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v79, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 591);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "!w.empty()", 10);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991C0E9C(&__p[1], "Empty piece is not allowed.", 27);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      v15 = *v10;
      v16 = *(v10 + 16);
      v93 = ((*a1)[66])(a1, v16);
      if (((*a1)[67])(a1, v16))
      {
        v17 = *(a7 + 64);
        if (v17)
        {
          v18 = *(a7 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(a7 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
LABEL_55:
            *(v20 + 40) |= 1u;
            sub_2991D6AE8(__p, v15, v14);
            v48 = *(v20 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_2991EE4E4((v20 + 48), __p, v48);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v49 = *(v20 + 40);
            *(v20 + 64) = v16;
            v50 = *(*v11 + 8 * v12);
            *(v20 + 68) = v50;
            *(v20 + 40) = v49 | 0x1C;
            goto LABEL_80;
          }

          if (v19 != *(a7 + 60))
          {
LABEL_54:
            *v17 = v19 + 1;
            v20 = sub_2991E1B80(*(a7 + 48));
            v46 = *(a7 + 56);
            v47 = *(a7 + 64) + 8 * v46;
            *(a7 + 56) = v46 + 1;
            *(v47 + 8) = v20;
            goto LABEL_55;
          }
        }

        else
        {
          v19 = *(a7 + 60);
        }

        sub_2992018A8(a7 + 48, v19 + 1);
        v17 = *(a7 + 64);
        v19 = *v17;
        goto LABEL_54;
      }

      v21 = *v11;
      v22 = v11[1] - *v11;
      if (v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v80 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v80, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 605);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "(begin) < (norm_to_orig.size())", 31);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      v23 = v14 + v12;
      if (v14 + v12 >= v22 >> 3)
      {
        LODWORD(__p[0]) = 13;
        v81 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v81, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 606);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "(end) < (norm_to_orig.size())", 29);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      v24 = *(v21 + 8 * v12);
      if (a3 < v24)
      {
        LODWORD(__p[0]) = 13;
        v82 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v82, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 609);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "(orig_begin) <= (input.size())", 30);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      v25 = *(v21 + 8 * v23);
      if (v25 > a3)
      {
        LODWORD(__p[0]) = 13;
        v83 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v83, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 610);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "(orig_end) <= (input.size())", 28);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      v26 = v25 - v24;
      if (v25 < v24)
      {
        LODWORD(__p[0]) = 13;
        v84 = sub_2991BF614(&__p[1]);
        sub_2991C0E9C(v84, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&__p[1], "(", 1);
        MEMORY[0x29C29BD30](&__p[1], 611);
        sub_2991C0E9C(&__p[1], ") [", 3);
        sub_2991C0E9C(&__p[1], "(orig_begin) <= (orig_end)", 26);
        sub_2991C0E9C(&__p[1], "] ", 2);
        sub_2991BC3FC(__p, a8);
        goto LABEL_130;
      }

      if (a3 - v24 < v26)
      {
        v26 = a3 - v24;
      }

      __len = v26;
      if (v93)
      {
        if ((*(*a1[1] + 184))(a1[1]))
        {
          while (1)
          {
            v28 = *v15++;
            v27 = v28;
            v29 = *(a7 + 64);
            if (!v29)
            {
              break;
            }

            v30 = *(a7 + 56);
            v31 = *v29;
            if (v30 >= *v29)
            {
              if (v31 == *(a7 + 60))
              {
LABEL_22:
                sub_2992018A8(a7 + 48, v31 + 1);
                v29 = *(a7 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = sub_2991E1B80(*(a7 + 48));
              v33 = *(a7 + 56);
              v34 = *(a7 + 64) + 8 * v33;
              *(a7 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              goto LABEL_24;
            }

            *(a7 + 56) = v30 + 1;
            v32 = *&v29[2 * v30 + 2];
LABEL_24:
            sub_2991BD420(v27, &__dst);
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

            v37 = (*(*a1[1] + 112))(a1[1], p_dst, size);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = __dst.__r_.__value_.__l.__size_;
            }

            *(v32 + 40) |= 1u;
            sub_2991D6AE8(__p, v38, v39);
            v40 = *(v32 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            sub_2991EE4E4((v32 + 48), __p, v40);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = *(v32 + 40);
            *(v32 + 40) = v41 | 4;
            *(v32 + 64) = v37;
            if (v14 == 1)
            {
              *(v32 + 40) = v41 | 6;
              sub_2991D6AE8(__p, &a2[v24], __len);
              v42 = *(v32 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              sub_2991EE4E4((v32 + 56), __p, v42);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(v32 + 40);
              *(v32 + 68) = v24;
              v44 = v43 | 0x18;
              v45 = v25;
            }

            else
            {
              *(v32 + 68) = v24;
              v44 = v41 | 0x1C;
              v45 = v24;
            }

            *(v32 + 40) = v44;
            *(v32 + 72) = v45;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!--v14)
            {
              v12 = v23;
              v11 = a5;
              goto LABEL_81;
            }
          }

          v31 = *(a7 + 60);
          goto LABEL_22;
        }

        if (v13)
        {
          v51 = sub_2991D6FC8(a7 + 48, *(a7 + 56) - 1);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_134;
          }

          v20 = v51;
          v52 = *(v51 + 48);
          v85 = (v51 + 48);
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v14;
          v62 = v52 & 0xFFFFFFFFFFFFFFFELL;
          memmove(&__dst, v15, v14);
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          v63 = *(v62 + 23);
          if (v63 >= 0)
          {
            v64 = v62;
          }

          else
          {
            v64 = *v62;
          }

          if (v63 >= 0)
          {
            v65 = *(v62 + 23);
          }

          else
          {
            v65 = *(v62 + 8);
          }

          v66 = std::string::insert(&__dst, 0, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97 = v66->__r_.__value_.__r.__words[2];
          *__p = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 1u;
          v68 = *(v20 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_2991EE4E4(v85, __p, v68);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_134:
            sub_2991A11B0();
          }

          v86 = *(v20 + 56);
          if (__len >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = __len;
          if (__len)
          {
            memmove(&__dst, &a2[v24], __len);
          }

          v11 = a5;
          v69 = v86 & 0xFFFFFFFFFFFFFFFELL;
          __dst.__r_.__value_.__s.__data_[__len] = 0;
          v70 = *((v86 & 0xFFFFFFFFFFFFFFFELL) + 23);
          if (v70 >= 0)
          {
            v71 = (v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v71 = *v69;
          }

          if (v70 >= 0)
          {
            v72 = *(v69 + 23);
          }

          else
          {
            v72 = *(v69 + 8);
          }

          v73 = std::string::insert(&__dst, 0, v71, v72);
          v74 = *&v73->__r_.__value_.__l.__data_;
          v97 = v73->__r_.__value_.__r.__words[2];
          *__p = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          *(v20 + 40) |= 2u;
          v75 = *(v20 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_2991EE4E4((v20 + 56), __p, v75);
          if (SHIBYTE(v97) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          *(v20 + 40) |= 0x10u;
          LODWORD(v50) = v25;
          v12 = v23;
          goto LABEL_80;
        }
      }

      v53 = *(a7 + 64);
      if (!v53)
      {
        break;
      }

      v54 = *(a7 + 56);
      v55 = *v53;
      if (v54 >= *v53)
      {
        if (v55 == *(a7 + 60))
        {
LABEL_69:
          sub_2992018A8(a7 + 48, v55 + 1);
          v53 = *(a7 + 64);
          v55 = *v53;
        }

        *v53 = v55 + 1;
        v20 = sub_2991E1B80(*(a7 + 48));
        v56 = *(a7 + 56);
        v57 = *(a7 + 64) + 8 * v56;
        *(a7 + 56) = v56 + 1;
        *(v57 + 8) = v20;
        goto LABEL_71;
      }

      *(a7 + 56) = v54 + 1;
      v20 = *&v53[2 * v54 + 2];
LABEL_71:
      *(v20 + 40) |= 1u;
      sub_2991D6AE8(__p, v15, v14);
      v58 = *(v20 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4E4((v20 + 48), __p, v58);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *(v20 + 40);
      *(v20 + 64) = v16;
      *(v20 + 40) = v59 | 6;
      sub_2991D6AE8(__p, &a2[v24], __len);
      v60 = *(v20 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4E4((v20 + 56), __p, v60);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      v61 = *(v20 + 40);
      *(v20 + 68) = v24;
      *(v20 + 40) = v61 | 0x18;
      LODWORD(v50) = v25;
      v12 = v23;
      v11 = a5;
LABEL_80:
      *(v20 + 72) = v50;
      v23 = v12;
LABEL_81:
      v10 += 24;
      v13 = v93;
      if (v10 == v91)
      {
        goto LABEL_116;
      }
    }

    v55 = *(a7 + 60);
    goto LABEL_69;
  }

  v23 = 0;
LABEL_116:
  if (v23 == a4)
  {
    result = sub_2991CDD74(a1, a1 + 5, a7, a8);
    if (!*a8)
    {
      sub_2991ED2F4(a8);
      *(a7 + 40) |= 1u;
      sub_2991D6AE8(__p, a2, a3);
      v77 = *(a7 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4E4((a7 + 72), __p, v77);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_29919C3A8(a8);
    }

    return result;
  }

  LODWORD(__p[0]) = 13;
  v78 = sub_2991BF614(&__p[1]);
  sub_2991C0E9C(v78, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
  sub_2991C0E9C(&__p[1], "(", 1);
  MEMORY[0x29C29BD30](&__p[1], 662);
  sub_2991C0E9C(&__p[1], ") [", 3);
  sub_2991C0E9C(&__p[1], "(consumed) == (normalized.size())", 33);
  sub_2991C0E9C(&__p[1], "] ", 2);
  sub_2991C0E9C(&__p[1], "all normalized characters are not consumed.", 43);
  sub_2991BC3FC(__p, a8);
LABEL_130:
  __p[1] = *MEMORY[0x29EDC9538];
  *(&__p[1] + *(__p[1] - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v97 = MEMORY[0x29EDC9570] + 16;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  v97 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v98);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v100);
}

void sub_2991CDCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991CDD74@<X0>(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return sub_29919C3A8(a4);
  }

  while (1)
  {
    v9 = *v5;
    if (*v5 > 1)
    {
      break;
    }

    if (!v9)
    {
      v19 = *(a3 + 64);
      if (v19)
      {
        v20 = v19 + 8;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a3 + 56);
      v22 = (v20 + 8 * v21 - 8);
      if (v21)
      {
        v23 = v22 > v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = v20 + 8;
        do
        {
          v25 = *(v24 - 8);
          v26 = *v22;
          if (*v22 != v25)
          {
            v27 = *(v25 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = *(v26 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            if (v27 == v28)
            {
              sub_2991E0704(v25, v26);
            }

            else
            {
              sub_2991FAD54(v25, v26);
            }
          }

          v29 = v24 >= --v22;
          v24 += 8;
        }

        while (!v29);
      }

      goto LABEL_63;
    }

    if (v9 != 1)
    {
      return sub_2991ED458(a4, 13, "unknown extra_option type.", 26);
    }

    v10 = *(a3 + 64);
    if (!v10)
    {
      v12 = *(a3 + 60);
      goto LABEL_51;
    }

    v11 = *(a3 + 56);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v12 == *(a3 + 60))
      {
LABEL_51:
        sub_2992018A8(a3 + 48, v12 + 1);
        v10 = *(a3 + 64);
        v12 = *v10;
      }

      *v10 = v12 + 1;
      v42 = sub_2991E1B80(*(a3 + 48));
      v43 = *(a3 + 56);
      v44 = *(a3 + 64) + 8 * v43;
      v13 = v43 + 1;
      *(a3 + 56) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_53;
    }

    v13 = v11 + 1;
    *(a3 + 56) = v11 + 1;
LABEL_53:
    if (v13 > 1)
    {
      v45 = v13 + 1;
      v46 = 8 * v13 - 8;
      do
      {
        *(*(a3 + 64) + v46) = vextq_s8(*(*(a3 + 64) + v46), *(*(a3 + 64) + v46), 8uLL);
        --v45;
        v46 -= 8;
      }

      while (v45 > 2);
    }

    if (v13 < 1)
    {
      sub_2991EF744(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
      v47 = sub_2991EF75C(__p, "CHECK failed: (index) < (current_size_): ");
      sub_2991EF898(&v56, &v47->__r_.__value_.__l.__data_);
      sub_2991EF8A0(__p);
    }

    v48 = *(*(a3 + 64) + 8);
    v49 = sub_2991BC80C(a1[1]);
    v50 = strlen(v49);
    v51 = (*(*a1 + 504))(a1, v49, v50);
    *(v48 + 40) |= 4u;
    *(v48 + 64) = v51;
    v52 = sub_2991BC80C(a1[1]);
    sub_2991BC80C(a1[1]);
    *(v48 + 40) |= 1u;
    sub_2991D6AE8(__p, v52, v53);
    v54 = *(v48 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_2991EE4E4((v48 + 48), __p, v54);
LABEL_61:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

LABEL_63:
    if (++v5 == v6)
    {
      return sub_29919C3A8(a4);
    }
  }

  if (v9 == 2)
  {
    v30 = *(a3 + 64);
    if (v30)
    {
      v31 = *(a3 + 56);
      v32 = *v30;
      if (v31 < *v30)
      {
        *(a3 + 56) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_47:
        v36 = sub_2991BC890(a1[1]);
        v37 = strlen(v36);
        v38 = (*(*a1 + 504))(a1, v36, v37);
        *(v33 + 40) |= 4u;
        *(v33 + 64) = v38;
        v39 = sub_2991BC890(a1[1]);
        sub_2991BC890(a1[1]);
        *(v33 + 40) |= 1u;
        sub_2991D6AE8(__p, v39, v40);
        v41 = *(v33 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        sub_2991EE4E4((v33 + 48), __p, v41);
        goto LABEL_61;
      }

      if (v32 != *(a3 + 60))
      {
LABEL_46:
        *v30 = v32 + 1;
        v33 = sub_2991E1B80(*(a3 + 48));
        v34 = *(a3 + 56);
        v35 = *(a3 + 64) + 8 * v34;
        *(a3 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a3 + 60);
    }

    sub_2992018A8(a3 + 48, v32 + 1);
    v30 = *(a3 + 64);
    v32 = *v30;
    goto LABEL_46;
  }

  if (v9 == 3)
  {
    if (*(a3 + 56) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = sub_2991D6FC8(a3 + 48, v14);
        if ((*(*a1 + 528))(a1, *(v15 + 64)))
        {
          v16 = sub_2991BC788(a1[1]);
          sub_2991BC788(a1[1]);
          *(v15 + 40) |= 1u;
          sub_2991D6AE8(__p, v16, v17);
          v18 = *(v15 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          sub_2991EE4E4((v15 + 48), __p, v18);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        ++v14;
      }

      while (v14 < *(a3 + 56));
    }

    goto LABEL_63;
  }

  return sub_2991ED458(a4, 13, "unknown extra_option type.", 26);
}

void sub_2991CE2BC(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (!*a5)
  {
    sub_2991ED2F4(a5);
    if (a4)
    {
      sub_2991E0B48(a4);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v17, &v14);
      if (!*a5)
      {
        sub_2991ED2F4(a5);
        (*(*a1[1] + 40))(__p);
        if (v19 >= 0)
        {
          v10 = HIBYTE(v19);
        }

        else
        {
          v10 = v18;
        }

        sub_2991CCEC0(a1, a2, a3, v10, &v14, __p, a4, a5);
        if (!*a5)
        {
          v11 = sub_2991ED2F4(a5);
          sub_29919C3A8(v11);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      LODWORD(v17) = 13;
      v12 = sub_2991BF614(&v18);
      sub_2991C0E9C(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v18, "(", 1);
      MEMORY[0x29C29BD30](&v18, 674);
      sub_2991C0E9C(&v18, ") [", 3);
      sub_2991C0E9C(&v18, "spt", 3);
      sub_2991C0E9C(&v18, "] ", 2);
      sub_2991C0E9C(&v18, "output proto is null", 20);
      sub_2991BC3FC(&v17, a5);
      v18 = *MEMORY[0x29EDC9538];
      *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v19 = MEMORY[0x29EDC9570] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      MEMORY[0x29C29BF00](&v22);
    }
  }
}

void sub_2991CE614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991CE670(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ((*a1)[11])(a1);
  if (*a5)
  {
    return;
  }

  sub_2991ED2F4(a5);
  if (a4)
  {
    sub_2991E1564(a4);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v26, &v23);
    if (!*a5)
    {
      sub_2991ED2F4(a5);
      if ((*(*a1[1] + 88))(a1[1]))
      {
        (*(*a1[1] + 48))(&v21);
        v10 = v21;
        v11 = v22;
        if (v21 != v22)
        {
          while (1)
          {
            v12 = *(a4 + 32);
            if (!v12)
            {
              break;
            }

            v13 = *(a4 + 24);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a4 + 28))
              {
LABEL_12:
                sub_2992018A8(a4 + 16, v14 + 1);
                v12 = *(a4 + 32);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v15 = sub_2991E1C50(*(a4 + 16));
              v16 = *(a4 + 24);
              v17 = *(a4 + 32) + 8 * v16;
              *(a4 + 24) = v16 + 1;
              *(v17 + 8) = v15;
              goto LABEL_14;
            }

            *(a4 + 24) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_14:
            v18 = *(v10 + 24);
            *(v15 + 40) |= 2u;
            *(v15 + 80) = v18;
            if (v28 >= 0)
            {
              v19 = HIBYTE(v28);
            }

            else
            {
              v19 = v27;
            }

            sub_2991CCEC0(a1, a2, a3, v19, &v23, v10, v15, a5);
            if (*a5)
            {
              goto LABEL_29;
            }

            sub_2991ED2F4(a5);
            v10 += 32;
            if (v10 == v11)
            {
              sub_29919C3A8(a5);
              goto LABEL_29;
            }
          }

          v14 = *(a4 + 28);
          goto LABEL_12;
        }

        LODWORD(v29) = 13;
        sub_2991BF614(&v30);
        sub_2991C0E9C(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&v30, "(", 1);
        MEMORY[0x29C29BD30](&v30, 700);
        sub_2991C0E9C(&v30, ") [", 3);
        sub_2991C0E9C(&v30, "!nbests.empty()", 15);
        sub_2991C0E9C(&v30, "] ", 2);
        sub_2991C0E9C(&v30, "NBestEncode returns empty result.", 33);
        sub_2991BC3FC(&v29, a5);
        v30 = *MEMORY[0x29EDC9538];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x29EDC9538] + 24);
        v31 = MEMORY[0x29EDC9570] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x29C29BF00](v35);
LABEL_29:
        v29 = &v21;
        sub_2992B6C08(&v29);
      }

      else
      {
        LODWORD(v29) = 13;
        sub_2991BF614(&v30);
        sub_2991C0E9C(&v30, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&v30, "(", 1);
        MEMORY[0x29C29BD30](&v30, 696);
        sub_2991C0E9C(&v30, ") [", 3);
        sub_2991C0E9C(&v30, "model_->IsNBestEncodeAvailable()", 32);
        sub_2991C0E9C(&v30, "] ", 2);
        sub_2991C0E9C(&v30, "NBestEncode is not available for the current model.", 51);
        sub_2991BC3FC(&v29, a5);
        v30 = *MEMORY[0x29EDC9538];
        *(&v30 + *(v30 - 24)) = *(MEMORY[0x29EDC9538] + 24);
        v31 = MEMORY[0x29EDC9570] + 16;
        if (v34 < 0)
        {
          operator delete(__p);
        }

        v31 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x29C29BF00](v35);
      }
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    LODWORD(v29) = 13;
    v20 = sub_2991BF614(&v30);
    sub_2991C0E9C(v20, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v30, "(", 1);
    MEMORY[0x29C29BD30](&v30, 690);
    sub_2991C0E9C(&v30, ") [", 3);
    sub_2991C0E9C(&v30, "nbest_spt", 9);
    sub_2991C0E9C(&v30, "] ", 2);
    sub_2991C0E9C(&v30, "output proto is null", 20);
    sub_2991BC3FC(&v29, a5);
    v30 = *MEMORY[0x29EDC9538];
    *(&v30 + *(v30 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v31 = MEMORY[0x29EDC9570] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v32);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](v35);
  }
}

void sub_2991CEE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_2992B6C08(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_2991CEE94(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  ((*a1)[11])(a1);
  if (*a6)
  {
    return;
  }

  sub_2991ED2F4(a6);
  if (a5)
  {
    sub_2991E0B48(a5);
    if (a4 < 513)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      __p = 0;
      v33 = 0;
      v34 = 0;
      (*(*a1[2] + 32))(a1[2], a2, a3, &v35, &__p);
      if (*a6)
      {
LABEL_5:
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v35);
        }

        return;
      }

      sub_2991ED2F4(a6);
      v16 = (*(*a1[1] + 88))(a1[1]);
      if (a4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        if (a4 > 1)
        {
          (*(*a1[1] + 48))(&v30);
          if (v30 == v31)
          {
            LODWORD(v38) = 13;
            sub_2991BF614(&v39);
            sub_2991C0E9C(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_2991C0E9C(&v39, "(", 1);
            MEMORY[0x29C29BD30](&v39, 735);
            sub_2991C0E9C(&v39, ") [", 3);
            sub_2991C0E9C(&v39, "!nbests.empty()", 15);
            sub_2991C0E9C(&v39, "] ", 2);
            sub_2991C0E9C(&v39, "NBestEncode returns empty result.", 33);
            sub_2991BC3FC(&v38, a6);
            sub_2991BC48C(&v38);
          }

          else
          {
            LODWORD(v28) = 0;
            sub_2991AAFC8(&v38, (v31 - v30) >> 5);
            if (v31 != v30)
            {
              v19 = v38;
              if (((v31 - v30) >> 5) <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = (v31 - v30) >> 5;
              }

              v21 = (v30 + 24);
              do
              {
                v22 = *v21;
                v21 += 8;
                *v19++ = expf(v22 * a7);
                --v20;
              }

              while (v20);
            }

            v23 = sub_2991EB4FC();
            sub_2991D873C(&v28, v38, v39);
            v24 = HIBYTE(v37);
            v25 = v36;
            v26 = sub_2991D8A68(&v28, v23, &v28);
            if ((v24 & 0x80u) == 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            sub_2991CCEC0(a1, a2, a3, v27, &__p, (v30 + 32 * v26), a5, a6);
            if (!*a6)
            {
              sub_2991ED2F4(a6);
              if (v28)
              {
                v29 = v28;
                operator delete(v28);
              }

              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }

              v38 = &v30;
              sub_2992B6C08(&v38);
LABEL_55:
              sub_29919C3A8(a6);
              goto LABEL_5;
            }

            if (v28)
            {
              v29 = v28;
              operator delete(v28);
            }

            if (v38)
            {
              v39 = v38;
              operator delete(v38);
            }
          }

          v38 = &v30;
          sub_2992B6C08(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 40))(&v38);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      else
      {
        if (((*(*a1[1] + 80))(a1[1]) & 1) == 0)
        {
          LODWORD(v38) = 13;
          sub_2991BF614(&v39);
          sub_2991C0E9C(&v39, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
          sub_2991C0E9C(&v39, "(", 1);
          MEMORY[0x29C29BD30](&v39, 724);
          sub_2991C0E9C(&v39, ") [", 3);
          sub_2991C0E9C(&v39, "model_->IsSampleEncodeAvailable()", 33);
          sub_2991C0E9C(&v39, "] ", 2);
          sub_2991C0E9C(&v39, "SampleEncode is not available for the current model.", 52);
          sub_2991BC3FC(&v38, a6);
          sub_2991BC48C(&v38);
          goto LABEL_5;
        }

        (*(*a1[1] + 56))(&v38, a7);
        if (v37 >= 0)
        {
          v18 = HIBYTE(v37);
        }

        else
        {
          v18 = v36;
        }
      }

      sub_2991CCEC0(a1, a2, a3, v18, &__p, &v38, a5, a6);
      if (*a6)
      {
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        goto LABEL_5;
      }

      sub_2991ED2F4(a6);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      goto LABEL_55;
    }

    LODWORD(v38) = 13;
    v15 = sub_2991BF614(&v39);
    sub_2991C0E9C(v15, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v39, "(", 1);
    MEMORY[0x29C29BD30](&v39, 717);
    sub_2991C0E9C(&v39, ") [", 3);
    sub_2991C0E9C(&v39, "(nbest_size) <= (512)", 21);
    sub_2991C0E9C(&v39, "] ", 2);
    sub_2991C0E9C(&v39, "nbest_size must be nbest_size <= 512", 36);
    sub_2991BC3FC(&v38, a6);
  }

  else
  {
    LODWORD(v38) = 13;
    v14 = sub_2991BF614(&v39);
    sub_2991C0E9C(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v39, "(", 1);
    MEMORY[0x29C29BD30](&v39, 715);
    sub_2991C0E9C(&v39, ") [", 3);
    sub_2991C0E9C(&v39, "spt", 3);
    sub_2991C0E9C(&v39, "] ", 2);
    sub_2991C0E9C(&v39, "output proto is null", 20);
    sub_2991BC3FC(&v38, a6);
  }

  v39 = *MEMORY[0x29EDC9538];
  *(&v39 + *(v39 - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v40 = MEMORY[0x29EDC9570] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](&v43);
}

void sub_2991CF6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25)
{
  a24 = &a12;
  sub_2992B6C08(&a24);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_2991CF794(void **a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X6>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(*a1[1] + 96))(a1[1]))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1[2] + 32))(a1[2], a2, a3, &v28, &v25);
    if (!*a5)
    {
      sub_2991ED2F4(a5);
      (*(*a1[1] + 64))(&v23, a6);
      v12 = v23;
      v13 = v24;
      if (v23 != v24)
      {
        while (1)
        {
          v14 = *(a4 + 32);
          if (!v14)
          {
            break;
          }

          v15 = *(a4 + 24);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a4 + 28))
            {
LABEL_9:
              sub_2992018A8(a4 + 16, v16 + 1);
              v14 = *(a4 + 32);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = sub_2991E1C50(*(a4 + 16));
            v18 = *(a4 + 24);
            v19 = *(a4 + 32) + 8 * v18;
            *(a4 + 24) = v18 + 1;
            *(v19 + 8) = v17;
            goto LABEL_11;
          }

          *(a4 + 24) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_11:
          v20 = *(v12 + 24);
          *(v17 + 40) |= 2u;
          *(v17 + 80) = v20;
          if (v30 >= 0)
          {
            v21 = HIBYTE(v30);
          }

          else
          {
            v21 = v29;
          }

          sub_2991CCEC0(a1, a2, a3, v21, &v25, v12, v17, a5);
          if (*a5)
          {
            goto LABEL_23;
          }

          sub_2991ED2F4(a5);
          v12 += 32;
          if (v12 == v13)
          {
            sub_29919C3A8(a5);
            goto LABEL_23;
          }
        }

        v16 = *(a4 + 28);
        goto LABEL_9;
      }

      LODWORD(v31) = 13;
      sub_2991BF614(&v32);
      sub_2991C0E9C(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v32, "(", 1);
      MEMORY[0x29C29BD30](&v32, 762);
      sub_2991C0E9C(&v32, ") [", 3);
      sub_2991C0E9C(&v32, "!results.empty()", 16);
      sub_2991C0E9C(&v32, "] ", 2);
      sub_2991C0E9C(&v32, "SampleEncodeAndScore returns empty result.", 42);
      sub_2991BC3FC(&v31, a5);
      v32 = *MEMORY[0x29EDC9538];
      *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v33 = MEMORY[0x29EDC9570] + 16;
      if (v36 < 0)
      {
        operator delete(__p);
      }

      v33 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x29C29BF00](v37);
LABEL_23:
      v31 = &v23;
      sub_2992B6C08(&v31);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    LODWORD(v31) = 13;
    v22 = sub_2991BF614(&v32);
    sub_2991C0E9C(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v32, "(", 1);
    MEMORY[0x29C29BD30](&v32, 754);
    sub_2991C0E9C(&v32, ") [", 3);
    sub_2991C0E9C(&v32, "model_->IsSampleEncodeAndScoreAvailable()", 41);
    sub_2991C0E9C(&v32, "] ", 2);
    sub_2991C0E9C(&v32, "SampleEncodeAndScore is not available for the current model.", 60);
    sub_2991BC3FC(&v31, a5);
    v32 = *MEMORY[0x29EDC9538];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v33 = MEMORY[0x29EDC9570] + 16;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v33 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](v37);
  }
}

void sub_2991CFD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22)
{
  a22 = &a10;
  sub_2992B6C08(&a22);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_2991CFDD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  if ((*(**(a1 + 8) + 104))(*(a1 + 8)))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(**(a1 + 16) + 32))(*(a1 + 16), a2, a3, &v18, &__p);
    if (!*a5)
    {
      sub_2991ED2F4(a5);
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      if (v20 >= 0)
      {
        v13 = HIBYTE(v20);
      }

      else
      {
        v13 = v19;
      }

      *a4 = (*(**(a1 + 8) + 72))(*(a1 + 8), v12, v13, a6);
      sub_29919C3A8(a5);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  else
  {
    LODWORD(v18) = 13;
    v14 = sub_2991BF614(&v19);
    sub_2991C0E9C(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v19, "(", 1);
    MEMORY[0x29C29BD30](&v19, 778);
    sub_2991C0E9C(&v19, ") [", 3);
    sub_2991C0E9C(&v19, "model_->IsCalculateEntropyAvailable()", 37);
    sub_2991C0E9C(&v19, "] ", 2);
    sub_2991C0E9C(&v19, "CalculateEntropy is not available for the current model.", 56);
    sub_2991BC3FC(&v18, a5);
    v19 = *MEMORY[0x29EDC9538];
    *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v20 = MEMORY[0x29EDC9570] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v21);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v23);
  }
}

void sub_2991D00C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D0108(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2991CA624(a2, __p);
  (*(*a1 + 272))(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2991D0198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D01B4(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v74[19] = *MEMORY[0x29EDCA608];
  v62 = a3;
  (*(*a1 + 88))(a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_2991ED2F4(a4);
  if (!v4)
  {
    LODWORD(__dst) = 13;
    sub_2991BF614(&__dst + 1);
    sub_2991C0E9C(&__dst + 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&__dst + 1, "(", 1);
    MEMORY[0x29C29BD30](&__dst + 8, 796);
    sub_2991C0E9C(&__dst + 1, ") [", 3);
    sub_2991C0E9C(&__dst + 1, "spt", 3);
    sub_2991C0E9C(&__dst + 1, "] ", 2);
    sub_2991C0E9C(&__dst + 1, "output proto is null", 20);
    sub_2991BC3FC(&__dst, a4);
    *(&__dst + 1) = *MEMORY[0x29EDC9538];
    *(&__dst + *(*(&__dst + 1) - 24) + 8) = *(MEMORY[0x29EDC9538] + 24);
    v69 = (MEMORY[0x29EDC9570] + 16);
    if (v73 < 0)
    {
      operator delete(__p);
    }

    v69 = (MEMORY[0x29EDC9568] + 16);
    std::locale::~locale(&v70);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](v74);
    goto LABEL_2;
  }

  sub_2991E0B48(v4);
  v9 = a1[4];
  if (v9 && (*(*v9 + 72))(v9))
  {
    v10 = (*(*a1[4] + 24))(a1[4]);
  }

  else
  {
    v10 = &unk_2993FE995;
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v62;
      v16 = *(v62 + 64);
      if (!v16)
      {
        break;
      }

      v17 = *(v62 + 56);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(v62 + 60))
        {
LABEL_18:
          sub_2992018A8(v62 + 48, v18 + 1);
          v16 = *(v62 + 64);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = sub_2991E1B80(*(v15 + 48));
        v20 = *(v15 + 56);
        v21 = *(v15 + 64) + 8 * v20;
        *(v15 + 56) = v20 + 1;
        *(v21 + 8) = v19;
        goto LABEL_20;
      }

      *(v62 + 56) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_20:
      *(v19 + 40) |= 1u;
      v22 = *(v19 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_2991EE508((v19 + 48), v22);
      MEMORY[0x29C29BB30](v23, v13, v14);
      v24 = (*(*a1 + 504))(a1, v13, v14);
      *(v19 + 40) |= 4u;
      *(v19 + 64) = v24;
      v11 += 2;
      if (v11 == v12)
      {
        v4 = v62;
        goto LABEL_24;
      }
    }

    v18 = *(v62 + 60);
    goto LABEL_18;
  }

LABEL_24:
  sub_2991CDD74(a1, a1 + 8, v4, a4);
  if (*a4)
  {
    goto LABEL_2;
  }

  sub_2991ED2F4(a4);
  *(v4 + 40) |= 1u;
  v25 = *(v4 + 8);
  if (v25)
  {
    v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
  }

  v60[1] = &v61;
  v61 = sub_2991EE508((v4 + 72), v25);
  v58 = 0;
  v59[0] = &v62;
  v59[1] = v60;
  v60[0] = &v62;
  v57[0] = 0;
  v57[1] = 0;
  v26 = *(v4 + 56);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = sub_2991D62F0(v4 + 48, v29);
      if (!(*(*a1 + 552))(a1, *(v31 + 64)))
      {
        break;
      }

      ++v29;
LABEL_69:
      v4 = v62;
      v26 = *(v62 + 56);
      if (v29 >= v26)
      {
        goto LABEL_87;
      }
    }

    sub_2991D0BA0(v59, v28, v29, a4);
    if (*a4)
    {
      goto LABEL_95;
    }

    sub_2991ED2F4(a4);
    if (v27)
    {
      goto LABEL_36;
    }

    v32 = *(v61 + 23);
    if (v32 < 0)
    {
      v32 = v61[1];
    }

    if (v32)
    {
LABEL_36:
      v30 = 0;
    }

    v33 = *(v31 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    if ((v34 & 0x8000000000000000) != 0)
    {
      v35 = *v33;
      v34 = *(v33 + 8);
    }

    else
    {
      v35 = (*(v31 + 48) & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = *(v31 + 64);
    if ((*(*a1 + 536))(a1, v36))
    {
      sub_2991C6CA8(&v54, "");
    }

    else
    {
      if (!(*(*a1 + 528))(a1, v36))
      {
        if (v30 & 1) != 0 && ((v39 = a1[4]) == 0 || (v40 = (*(*v39 + 152))(v39), ((*(*v40 + 16))(v40)) || (v41 = (*(*a1[4] + 152))(a1[4]), (*(*v41 + 24))(v41))))
        {
          if (v34 >= 3)
          {
            v46 = *v35 != 38626 || v35[2] != 129;
            if (!v46)
            {
              v35 += 3;
              v34 -= 3;
            }

            v42 = !v46;
          }

          else
          {
            v42 = 0;
          }

          v47 = a1[4];
          if (v47)
          {
            v48 = (*(*v47 + 152))(v47);
            if ((*(*v48 + 24))(v48))
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        *&__dst = &unk_2993FEA2A;
        *(&__dst + 1) = 3;
        v69 = " ";
        v70.__locale_ = 1;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        sub_2991D6DCC(&v63, &__dst, &v71, 1uLL);
        sub_2991D6B98(v35, v34, &v63, &v66);
        v54 = v66;
        v55 = v67;
        v67 = 0;
        v66 = 0uLL;
        v56 = v42;
        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        goto LABEL_60;
      }

      v37 = (*(*a1 + 512))(a1, v36);
      if (v38 == v34 && !memcmp(v37, v35, v34))
      {
        sub_2991C6CA8(&v54, v10);
      }

      else
      {
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2991A11B0();
        }

        if (v34 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v69) = v34;
        if (v34)
        {
          memmove(&__dst, v35, v34);
        }

        *(&__dst + v34) = 0;
        v54 = __dst;
        v55 = v69;
      }
    }

    v56 = 0;
LABEL_60:
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v58 = v55;
    *v57 = v54;
    v27 = v56;
    if (SHIBYTE(v55) >= 0)
    {
      v43 = v57;
    }

    else
    {
      v43 = v54;
    }

    if (SHIBYTE(v55) >= 0)
    {
      v44 = v55 >> 56;
    }

    else
    {
      v44 = *(&v54 + 1);
    }

    sub_2991D114C(v60, v29++, v43, v44);
    v28 = v29;
    goto LABEL_69;
  }

  v28 = 0;
LABEL_87:
  sub_2991D0BA0(v59, v28, v26, a4);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    v49 = a1[3];
    if (v49)
    {
      if ((*(v61 + 23) & 0x8000000000000000) != 0)
      {
        v50 = *v61;
        v51 = v61[1];
      }

      (*(*v49 + 40))(&__dst);
      v52 = v61;
      if (*(v61 + 23) < 0)
      {
        operator delete(*v61);
      }

      v53 = __dst;
      v52[2] = v69;
      *v52 = v53;
    }

    sub_29919C3A8(a4);
  }

LABEL_95:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

LABEL_2:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_2991D0B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D0BA0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 >= a3)
  {

    sub_29919C3A8(a4);
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
    v8 = a2;
    do
    {
      v9 = *(sub_2991D62F0(**a1 + 48, v8) + 48);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFELL);
      v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v10 = *v10;
        v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v12 = sub_2991BDF64(v10, v11);
      if (v12 < 0)
      {
        v31 = 13;
        sub_2991BF614(&v32);
        sub_2991C0E9C(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
        sub_2991C0E9C(&v32, "(", 1);
        MEMORY[0x29C29BD30](&v32, 868);
        sub_2991C0E9C(&v32, ") [", 3);
        sub_2991C0E9C(&v32, "(0) <= (byte)", 13);
        sub_2991C0E9C(&v32, "] ", 2);
        sub_2991BC3FC(&v31, a4);
        goto LABEL_51;
      }

      std::string::append(&v37, 1uLL, v12);
      ++v8;
    }

    while (a3 != v8);
    v29 = a4;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v37.__r_.__value_.__r.__words[1];
    }

    if (v13 >= 1)
    {
      v14 = 0;
      while (1)
      {
        v30 = 0;
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v37.__r_.__value_.__l.__size_;
        }

        if (size < v14)
        {
          sub_2991D6EC4("string_view::substr");
        }

        v16 = v14;
        v17 = v37.__r_.__value_.__r.__words[0];
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v37;
        }

        if (sub_2991EB3AC(v17 + v16, v17 + size, &v30) != 65533)
        {
          break;
        }

        v18 = v16 + a2;
        if (v30 != 1)
        {
          if (v30 != 3)
          {
            v31 = 13;
            sub_2991BF614(&v32);
            sub_2991C0E9C(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
            sub_2991C0E9C(&v32, "(", 1);
            MEMORY[0x29C29BD30](&v32, 887);
            sub_2991C0E9C(&v32, ") [", 3);
            sub_2991C0E9C(&v32, "(consumed) == (1)", 17);
            sub_2991C0E9C(&v32, "] ", 2);
            sub_2991BC3FC(&v31, v29);
            goto LABEL_51;
          }

          goto LABEL_22;
        }

        sub_2991D114C(*(a1 + 8), v16 + a2, &unk_2993FEA26, 3uLL);
        LODWORD(v21) = v30;
LABEL_41:
        v14 = v16 + v21;
        if (v14 >= v13)
        {
          goto LABEL_48;
        }
      }

      v18 = v16 + a2;
LABEL_22:
      v19 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__l.__size_;
      }

      v20 = v19 - v16;
      if (v19 < v16)
      {
        sub_2991D6EC4("string_view::substr");
      }

      v21 = v30;
      v22 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v37.__r_.__value_.__r.__words[0];
      }

      if (v20 >= v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = v20;
      }

      if (v30)
      {
        v24 = 0;
        v25 = v22 + v16;
        do
        {
          v26 = v21 - 1;
          if (v24 == v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = "";
          }

          if (v24 == v26)
          {
            v28 = v23;
          }

          else
          {
            v28 = 0;
          }

          sub_2991D114C(*(a1 + 8), v18, v27, v28);
          ++v24;
          v21 = v30;
          ++v18;
        }

        while (v30 > v24);
      }

      goto LABEL_41;
    }

    v14 = 0;
LABEL_48:
    if (v14 + a2 == a3)
    {
      sub_29919C3A8(v29);
      goto LABEL_54;
    }

    v31 = 13;
    sub_2991BF614(&v32);
    sub_2991C0E9C(&v32, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v32, "(", 1);
    MEMORY[0x29C29BD30](&v32, 905);
    sub_2991C0E9C(&v32, ") [", 3);
    sub_2991C0E9C(&v32, "(token_index_begin + offset) == (token_index_end)", 49);
    sub_2991C0E9C(&v32, "] ", 2);
    sub_2991BC3FC(&v31, v29);
LABEL_51:
    v32 = *MEMORY[0x29EDC9538];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v33 = MEMORY[0x29EDC9570] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v36);
LABEL_54:
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2991D10E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2991D114C(uint64_t a1, int a2, const void *a3, size_t a4)
{
  v7 = sub_2991D6FC8(**a1 + 48, a2);
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v8 = v7;
  if (a4 >= 0x17)
  {
    operator new();
  }

  v17 = a4;
  if (a4)
  {
    memmove(&__dst, a3, a4);
  }

  *(&__dst + a4) = 0;
  *(v8 + 40) |= 2u;
  v9 = *(v8 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_2991EE4E4((v8 + 56), &__dst, v9);
  if (v17 < 0)
  {
    operator delete(__dst);
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  v12 = *(*v10 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  v13 = *(v8 + 40);
  *(v8 + 40) = v13 | 8;
  *(v8 + 68) = v12;
  v14 = *(v11 + 23);
  if (v14 < 0)
  {
    v14 = *(v11 + 8);
  }

  *(v8 + 40) = v13 | 0x18;
  *(v8 + 72) = v14 + a4;
  return std::string::append(v11, a3, a4);
}

void sub_2991D129C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D12B8(uint64_t a1@<X0>, signed int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = (*(*a1 + 496))(a1);
  sub_2991CC8A4(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    v13 = v20;
    if (v20 >= v21)
    {
      v14 = sub_2991C13A4(&v19, &__p);
    }

    else
    {
      sub_2991C12E0(&v19, &__p);
      v14 = v13 + 24;
    }

    v20 = v14;
    ++v10;
  }

  sub_2991D14B8("Invalid id: ", 0xCuLL, &v18, &__p);
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

  sub_2991ED458(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  sub_299212B90(&__p);
}

void sub_2991D147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

void sub_2991D14B8(void *__src@<X0>, size_t __len@<X1>, unsigned int *a3@<X2>, std::string *a4@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  sub_2991D8BB8(*a3);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&__dst, v6, v7);
  *a4 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991D155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_2991D1590(void **a1)
{
  ((*a1)[11])(&v16);
  v2 = v16;
  sub_2991ED2F4(&v16);
  if (!v2)
  {
    return (*(*a1[1] + 128))(a1[1]);
  }

  if (sub_2991EB39C() <= 2)
  {
    v15 = 0;
    v3 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v4 = sub_2991C0E9C(v3, "(", 1);
    v5 = MEMORY[0x29C29BD30](v4, 961);
    v6 = sub_2991C0E9C(v5, ") ", 2);
    v7 = sub_2991C0E9C(v6, "LOG(", 4);
    v8 = sub_2991C0E9C(v7, "ERROR", 5);
    v9 = sub_2991C0E9C(v8, ") ", 2);
    ((*a1)[11])(&v16, a1);
    v10 = sub_2991ED5EC(&v16);
    v11 = strlen(v10);
    v12 = sub_2991C0E9C(v9, v10, v11);
    v13 = sub_2991C0E9C(v12, "\nReturns default value ", 23);
    MEMORY[0x29C29BD30](v13, 0);
    sub_2991ED2F4(&v16);
    sub_2991BF944(&v15);
  }

  return 0;
}

uint64_t sub_2991D1740(void **a1, uint64_t a2, uint64_t a3)
{
  ((*a1)[11])(&v20);
  v6 = v20;
  sub_2991ED2F4(&v20);
  if (!v6)
  {
    return (*(*a1[1] + 112))(a1[1], a2, a3);
  }

  if (sub_2991EB39C() <= 2)
  {
    v19 = 0;
    v7 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v8 = sub_2991C0E9C(v7, "(", 1);
    v9 = MEMORY[0x29C29BD30](v8, 966);
    v10 = sub_2991C0E9C(v9, ") ", 2);
    v11 = sub_2991C0E9C(v10, "LOG(", 4);
    v12 = sub_2991C0E9C(v11, "ERROR", 5);
    v13 = sub_2991C0E9C(v12, ") ", 2);
    ((*a1)[11])(&v20, a1);
    v14 = sub_2991ED5EC(&v20);
    v15 = strlen(v14);
    v16 = sub_2991C0E9C(v13, v14, v15);
    v17 = sub_2991C0E9C(v16, "\nReturns default value ", 23);
    MEMORY[0x29C29BD30](v17, 0);
    sub_2991ED2F4(&v20);
    sub_2991BF944(&v19);
  }

  return 0;
}

const char *sub_2991D1908(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_2991ED2F4(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 120))(a1[1], a2);
  }

  if (sub_2991EB39C() <= 2)
  {
    v17 = 0;
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 971);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    v9 = sub_2991C0E9C(v8, "LOG(", 4);
    v10 = sub_2991C0E9C(v9, "ERROR", 5);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_2991ED5EC(&v18);
    v13 = strlen(v12);
    v14 = sub_2991C0E9C(v11, v12, v13);
    v15 = sub_2991C0E9C(v14, "\nReturns default value ", 23);
    sub_2991C0E9C(v15, "", 0);
    sub_2991ED2F4(&v18);
    sub_2991BF944(&v17);
  }

  return "";
}

float sub_2991D1AD8(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v19);
  v4 = v19;
  sub_2991ED2F4(&v19);
  if (!v4)
  {
    return (*(*a1[1] + 136))(a1[1], a2);
  }

  v5 = 0.0;
  if (sub_2991EB39C() <= 2)
  {
    v18 = 0;
    v6 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v7 = sub_2991C0E9C(v6, "(", 1);
    v8 = MEMORY[0x29C29BD30](v7, 976);
    v9 = sub_2991C0E9C(v8, ") ", 2);
    v10 = sub_2991C0E9C(v9, "LOG(", 4);
    v11 = sub_2991C0E9C(v10, "ERROR", 5);
    v12 = sub_2991C0E9C(v11, ") ", 2);
    ((*a1)[11])(&v19, a1);
    v13 = sub_2991ED5EC(&v19);
    v14 = strlen(v13);
    v15 = sub_2991C0E9C(v12, v13, v14);
    v16 = sub_2991C0E9C(v15, "\nReturns default value ", 23);
    MEMORY[0x29C29BD10](v16, 0.0);
    sub_2991ED2F4(&v19);
    sub_2991BF944(&v18);
  }

  return v5;
}

uint64_t sub_2991D1CA8(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_2991ED2F4(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 152))(a1[1], a2);
  }

  if (sub_2991EB39C() <= 2)
  {
    v17 = 0;
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 981);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    v9 = sub_2991C0E9C(v8, "LOG(", 4);
    v10 = sub_2991C0E9C(v9, "ERROR", 5);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_2991ED5EC(&v18);
    v13 = strlen(v12);
    v14 = sub_2991C0E9C(v11, v12, v13);
    v15 = sub_2991C0E9C(v14, "\nReturns default value ", 23);
    MEMORY[0x29C29BD30](v15, 0);
    sub_2991ED2F4(&v18);
    sub_2991BF944(&v17);
  }

  return 0;
}

uint64_t sub_2991D1E68(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_2991ED2F4(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 144))(a1[1], a2);
  }

  if (sub_2991EB39C() <= 2)
  {
    v17 = 0;
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 986);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    v9 = sub_2991C0E9C(v8, "LOG(", 4);
    v10 = sub_2991C0E9C(v9, "ERROR", 5);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_2991ED5EC(&v18);
    v13 = strlen(v12);
    v14 = sub_2991C0E9C(v11, v12, v13);
    v15 = sub_2991C0E9C(v14, "\nReturns default value ", 23);
    MEMORY[0x29C29BD30](v15, 0);
    sub_2991ED2F4(&v18);
    sub_2991BF944(&v17);
  }

  return 0;
}

uint64_t sub_2991D2028(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_2991ED2F4(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 160))(a1[1], a2);
  }

  if (sub_2991EB39C() <= 2)
  {
    v17 = 0;
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 991);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    v9 = sub_2991C0E9C(v8, "LOG(", 4);
    v10 = sub_2991C0E9C(v9, "ERROR", 5);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_2991ED5EC(&v18);
    v13 = strlen(v12);
    v14 = sub_2991C0E9C(v11, v12, v13);
    v15 = sub_2991C0E9C(v14, "\nReturns default value ", 23);
    MEMORY[0x29C29BD00](v15, 0);
    sub_2991ED2F4(&v18);
    sub_2991BF944(&v17);
  }

  return 0;
}

uint64_t sub_2991D21E8(void **a1, uint64_t a2)
{
  ((*a1)[11])(&v18);
  v4 = v18;
  sub_2991ED2F4(&v18);
  if (!v4)
  {
    return (*(*a1[1] + 176))(a1[1], a2);
  }

  if (sub_2991EB39C() <= 2)
  {
    v17 = 0;
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "sentencepiece_processor.cc", 26);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 996);
    v8 = sub_2991C0E9C(v7, ") ", 2);
    v9 = sub_2991C0E9C(v8, "LOG(", 4);
    v10 = sub_2991C0E9C(v9, "ERROR", 5);
    v11 = sub_2991C0E9C(v10, ") ", 2);
    ((*a1)[11])(&v18, a1);
    v12 = sub_2991ED5EC(&v18);
    v13 = strlen(v12);
    v14 = sub_2991C0E9C(v11, v12, v13);
    v15 = sub_2991C0E9C(v14, "\nReturns default value ", 23);
    MEMORY[0x29C29BD00](v15, 0);
    sub_2991ED2F4(&v18);
    sub_2991BF944(&v17);
  }

  return 0;
}

uint64_t sub_2991D23A8(uint64_t *a1)
{
  v2 = sub_2991BC788(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 528))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2991D2468(uint64_t *a1)
{
  v2 = sub_2991BC80C(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2991D2528(uint64_t *a1)
{
  v2 = sub_2991BC890(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2991D25E8(uint64_t *a1)
{
  v2 = sub_2991BC914(a1[1]);
  v3 = strlen(v2);
  v4 = (*(*a1 + 504))(a1, v2, v3);
  if ((*(*a1 + 536))(a1, v4))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2991D26A8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      sub_299212BE4(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 200);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_2991BF614(&v14);
      sub_2991C0E9C(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v14, "(", 1);
      MEMORY[0x29C29BD30](&v14, 1027);
      sub_2991C0E9C(&v14, ") [", 3);
      sub_2991C0E9C(&v14, "pieces", 6);
      sub_2991C0E9C(&v14, "] ", 2);
      sub_2991C0E9C(&v14, "output container is null", 24);
      sub_2991BC3FC(&v13, a4);
      v14 = *MEMORY[0x29EDC9538];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v15 = MEMORY[0x29EDC9570] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v18);
    }
  }

  return result;
}

uint64_t sub_2991D295C@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 208);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_2991BF614(&v14);
      sub_2991C0E9C(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v14, "(", 1);
      MEMORY[0x29C29BD30](&v14, 1033);
      sub_2991C0E9C(&v14, ") [", 3);
      sub_2991C0E9C(&v14, "ids", 3);
      sub_2991C0E9C(&v14, "] ", 2);
      sub_2991C0E9C(&v14, "output container is null", 24);
      sub_2991BC3FC(&v13, a4);
      v14 = *MEMORY[0x29EDC9538];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v15 = MEMORY[0x29EDC9570] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v18);
    }
  }

  return result;
}

uint64_t sub_2991D2C10@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void ***a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      sub_299212BE4(a3);
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 216);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_2991BF614(&v14);
      sub_2991C0E9C(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v14, "(", 1);
      MEMORY[0x29C29BD30](&v14, 1039);
      sub_2991C0E9C(&v14, ") [", 3);
      sub_2991C0E9C(&v14, "pieces", 6);
      sub_2991C0E9C(&v14, "] ", 2);
      sub_2991C0E9C(&v14, "output container is null", 24);
      sub_2991BC3FC(&v13, a4);
      v14 = *MEMORY[0x29EDC9538];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v15 = MEMORY[0x29EDC9570] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v18);
    }
  }

  return result;
}

uint64_t sub_2991D2EBC@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (!*a4)
  {
    sub_2991ED2F4(a4);
    if (a3)
    {
      a3[1] = *a3;
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
      }

      v11 = *(*a1[1] + 224);

      return v11();
    }

    else
    {
      v13 = 13;
      v12 = sub_2991BF614(&v14);
      sub_2991C0E9C(v12, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      sub_2991C0E9C(&v14, "(", 1);
      MEMORY[0x29C29BD30](&v14, 1045);
      sub_2991C0E9C(&v14, ") [", 3);
      sub_2991C0E9C(&v14, "ids", 3);
      sub_2991C0E9C(&v14, "] ", 2);
      sub_2991C0E9C(&v14, "output container is null", 24);
      sub_2991BC3FC(&v13, a4);
      v14 = *MEMORY[0x29EDC9538];
      *(&v14 + *(v14 - 24)) = *(MEMORY[0x29EDC9538] + 24);
      v15 = MEMORY[0x29EDC9570] + 16;
      if (v17 < 0)
      {
        operator delete(v16[7].__locale_);
      }

      v15 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v16);
      std::ostream::~ostream();
      return MEMORY[0x29C29BF00](&v18);
    }
  }

  return result;
}

uint64_t sub_2991D3168(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_2991D31DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = *(*(*(*result + 152))(result) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_2991D3250@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  result = ((*a1)[11])(a1);
  if (*a4)
  {
    return result;
  }

  sub_2991ED2F4(a4);
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    result = ((*a1)[11])(a1);
    if (*a4)
    {
      return result;
    }

    sub_2991ED2F4(a4);
    if (a3)
    {
      a3[1] = *a3;
      v10 = *(*a1[2] + 32);

      return v10();
    }

    v12 = 13;
    v11 = sub_2991BF614(&v13);
    sub_2991C0E9C(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v13, "(", 1);
    MEMORY[0x29C29BD30](&v13, 1062);
    sub_2991C0E9C(&v13, ") [", 3);
    sub_2991C0E9C(&v13, "norm_to_orig", 12);
    sub_2991C0E9C(&v13, "] ", 2);
    sub_2991C0E9C(&v13, "output container is null", 24);
    sub_2991BC3FC(&v12, a4);
  }

  else
  {
    v12 = 13;
    v9 = sub_2991BF614(&v13);
    sub_2991C0E9C(v9, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v13, "(", 1);
    MEMORY[0x29C29BD30](&v13, 1061);
    sub_2991C0E9C(&v13, ") [", 3);
    sub_2991C0E9C(&v13, "normalized", 10);
    sub_2991C0E9C(&v13, "] ", 2);
    sub_2991C0E9C(&v13, "output container is null", 24);
    sub_2991BC3FC(&v12, a4);
  }

  v13 = *MEMORY[0x29EDC9538];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v14 = MEMORY[0x29EDC9570] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v17);
}

void *sub_2991D3644@<X0>(_DWORD *a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  if (a2 <= 0x13)
  {
    LODWORD(v9) = 13;
    v6 = sub_2991BF614(&v10);
    sub_2991C0E9C(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 1230);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "(size) >= (sizeof(MMapHeader))", 30);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991BC3FC(&v9, a3);
  }

  else if (*a1)
  {
    LODWORD(v9) = 13;
    v5 = sub_2991BF614(&v10);
    sub_2991C0E9C(v5, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 1233);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "header->sentinel == 0", 21);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991C0E9C(&v10, "This file format is not for mmap-based loading.", 47);
    sub_2991BC3FC(&v9, a3);
  }

  else
  {
    result = sub_2991EB7B4(&v15, 0x14uLL, a3);
    if (*a3)
    {
      return result;
    }

    sub_2991ED2F4(a3);
    if (v16 >= a1[1])
    {
      operator new();
    }

    LODWORD(v9) = 13;
    v8 = sub_2991BF614(&v10);
    sub_2991C0E9C(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 1238);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "(blob.size()) >= (header->model_proto_size)", 43);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991BC3FC(&v9, a3);
  }

  v10 = *MEMORY[0x29EDC9538];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v14);
}

void sub_2991D41C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991BC48C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D42AC(uint64_t a1)
{
  v2 = a1 + 96;
  MEMORY[0x29C29BB30](a1 + 96);
  v3 = *(a1 + 119);
  if (v3 < 0)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 104);
  }

  v4 = *(*a1 + 48);

  return v4(a1, v2, v3);
}

void sub_2991D4454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D4470(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_2991D8ED4(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    v11 = sub_2991BF614(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_2991C0E9C(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x29C29BD30](&__p.__pn_.__r_.__value_.__r.__words[1], 66);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    sub_2991D90AC(&__p.__pn_.__r_.__value_.__l.__size_, v13, &v13[v12], 0x22u, 0x5Cu);
    sub_2991BC3FC(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x29EDC9538];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x29EDC9538] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](v30);
    return;
  }

  sub_2991D8F1C(a2, &v32);
  sub_2991D8FE4(a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__pn_.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2991A110C(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__pn_.__r_.__value_.__r.__words[0], __p.__pn_.__r_.__value_.__l.__size_, __p.__pn_.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
    sub_2991BF614(&__p.__pn_.__r_.__value_.__l.__size_);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x29C29BD30](&__p.__pn_.__r_.__value_.__r.__words[1], 59);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
    sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    sub_2991D90AC(&__p.__pn_.__r_.__value_.__l.__size_, v18, v18 + size, 0x22u, 0x5Cu);
    sub_2991BC3FC(&__p, a4);
    __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x29EDC9538];
    *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x29EDC9538] + 24);
    __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2991A110C(&__p, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v22 = sub_2991BF614(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_2991C0E9C(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x29C29BD30](&__p.__pn_.__r_.__value_.__r.__words[1], 70);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sub_29919C3A8(a4);
        return;
      }

      LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
      v23 = sub_2991BF614(&__p.__pn_.__r_.__value_.__l.__size_);
      sub_2991C0E9C(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x29C29BD30](&__p.__pn_.__r_.__value_.__r.__words[1], 78);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
      sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 13;
  sub_2991BF614(&__p.__pn_.__r_.__value_.__l.__size_);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x29C29BD30](&__p.__pn_.__r_.__value_.__r.__words[1], 64);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, ") [", 3);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "fd >= 0", 7);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "] ", 2);
  sub_2991C0E9C(&__p.__pn_.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  sub_2991D90AC(&__p.__pn_.__r_.__value_.__l.__size_, v25, &v25[v24], 0x22u, 0x5Cu);
  sub_2991BC3FC(&__p, a4);
  __p.__pn_.__r_.__value_.__l.__size_ = *MEMORY[0x29EDC9538];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + *(__p.__pn_.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x29EDC9538] + 24);
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__pn_.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](v30);
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2991D4DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D4FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D4FDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 136))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D5040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212B90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D5058@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 144))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D50BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D50D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 176))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D513C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D6F54(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D5154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 184))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D51B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920E060(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D51D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D5234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212B90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D524C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D52B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D52CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D5330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29925A564(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D5348@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D53AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992B6C08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991D53C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D5428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D5444@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D54A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D54C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_2991D5528(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_2991D5544(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_2991ED2F4(&v3);
  return v1;
}

void sub_2991D55A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_2A1F629A0;
  v12 = 0;
  v13 = 0;
  v11 = sub_2991E0B08();
  v8 = sub_2991C6B08(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_2991FB73C(v11, a4);
  sub_2991ED2F4(&v9);
  v10 = &unk_2A1F629A0;
  if (v13)
  {
    sub_2991A893C(v13);
  }
}

void sub_2991D5680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2991ED2F4(&a10);
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_2991D56AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = &unk_2A1F629A0;
  v16 = 0;
  v17 = 0;
  v15 = sub_2991E0B08();
  v12 = sub_2991C6B08(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  sub_2991FB73C(v15, a5);
  sub_2991ED2F4(&v13);
  v14 = &unk_2A1F629A0;
  if (v17)
  {
    sub_2991A893C(v17);
  }
}

void sub_2991D579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2991ED2F4(&a10);
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_2991D57C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_2A1F629C0;
  v10 = sub_2991C6C28(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_2991C6C8C(v12, a5);
  sub_2991ED2F4(&v11);
  v12[0] = &unk_2A1F629C0;
  if (v13)
  {
    sub_2991A893C(v13);
  }
}

void sub_2991D58A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_2991ED2F4(&a9);
  if (a12)
  {
    sub_2991A893C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2991D58CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = &unk_2A1F629C0;
  v16 = sub_2991C6C28(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sub_2991C6C8C(v18, a7);
  sub_2991ED2F4(&v17);
  v18[0] = &unk_2A1F629C0;
  if (v19)
  {
    sub_2991A893C(v19);
  }
}

void sub_2991D59D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_2991ED2F4(&a9);
  if (a12)
  {
    sub_2991A893C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2991D5A00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_2A1F629A0;
  v10 = 0;
  v11 = 0;
  v9 = sub_2991E0B08();
  v6 = sub_2991C6B08(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  sub_2991FB73C(v9, a3);
  sub_2991ED2F4(&v7);
  v8 = &unk_2A1F629A0;
  if (v11)
  {
    sub_2991A893C(v11);
  }
}

void sub_2991D5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2991ED2F4(&a10);
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_2991D5AFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_2A1F629A0;
  v10 = 0;
  v11 = 0;
  v9 = sub_2991E0B08();
  v6 = sub_2991C6B08(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  sub_2991FB73C(v9, a3);
  sub_2991ED2F4(&v7);
  v8 = &unk_2A1F629A0;
  if (v11)
  {
    sub_2991A893C(v11);
  }
}

void sub_2991D5BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2991ED2F4(&a10);
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(a1);
}

void sub_2991D5BF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_2A1F629A0;
  v10 = 0;
  v11 = 0;
  v9 = sub_2991E0B08();
  v6 = sub_2991C6B08(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  sub_2991FB73C(v9, a3);
  sub_2991ED2F4(&v7);
  v8 = &unk_2A1F629A0;
  if (v11)
  {
    sub_2991A893C(v11);
  }
}

void sub_2991D5CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2991ED2F4(&a10);
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2991D5CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = &unk_2A1F629A0;
  v8 = sub_2991E0B08();
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v8;
  v9 = sub_2991C6B08(a4);
  (*(*a1 + 232))(&v11, a1, a2, a3, v9);
  return sub_2991ED2F4(&v11);
}

void sub_2991D5DAC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D5DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>)
{
  *a5 = &unk_2A1F629A0;
  v12 = sub_2991E0B08();
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = v12;
  v13 = sub_2991C6B08(a5);
  (*(*a1 + 248))(&v15, a1, a2, a3, a4, v13, a6);
  return sub_2991ED2F4(&v15);
}

void sub_2991D5E98(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D5EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = &unk_2A1F629C0;
  v9 = sub_2991C6C28(a5);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v9);
  return sub_2991ED2F4(&v11);
}

void sub_2991D5F6C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D5F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  a7[1] = 0;
  a7[2] = 0;
  *a7 = &unk_2A1F629C0;
  v15 = sub_2991C6C28(a7);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v15, a8);
  return sub_2991ED2F4(&v17);
}

void sub_2991D6070(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F629A0;
  v6 = sub_2991E0B08();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_2991C6B08(a3);
  (*(*a1 + 264))(&v9, a1, a2, v7);
  return sub_2991ED2F4(&v9);
}

void sub_2991D613C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D6158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F629A0;
  v6 = sub_2991E0B08();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_2991C6B08(a3);
  (*(*a1 + 272))(&v9, a1, a2, v7);
  return sub_2991ED2F4(&v9);
}

void sub_2991D6208(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991D6224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F629A0;
  v6 = sub_2991E0B08();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_2991C6B08(a3);
  (*(*a1 + 280))(&v9, a1, a2, v7);
  return sub_2991ED2F4(&v9);
}

void sub_2991D62D4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991D62F0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991D63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D63D0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991D6490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D64B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C29BBF0](a1 + 2);

  return std::istream::~istream();
}

uint64_t sub_2991D6578(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_2991D6694(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991D6754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991D6774(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            sub_2991D68B8(a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    sub_2991D68B8(a1, &v23);
  }

  return a1;
}

void sub_2991D6898(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D68B8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2991C1E18(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_2991D6990(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_299273DCC(result, a2);
  }

  return result;
}

void *sub_2991D6A34(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991D6AAC(result, a2);
  }

  return result;
}

void sub_2991D6A90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D6AAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2991C1E18(a1, a2);
  }

  sub_299212A8C();
}

_BYTE *sub_2991D6AE8(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_2991D6B98(void *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

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

    sub_2991D6C90(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a4);
    std::string::operator=(&__dst, a4);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991D6C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2991D6C90(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t sub_2991D6DCC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2991D6E40(result, a4);
  }

  return result;
}

void sub_2991D6E24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D6E40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2991D6E7C(a1, a2);
  }

  sub_299212A8C();
}

void sub_2991D6E7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2991D6EC4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2991D6F20(exception, a1);
  __cxa_throw(exception, off_29EF0BC80, MEMORY[0x29EDC9350]);
}

std::logic_error *sub_2991D6F20(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void sub_2991D6F54(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_299212B90(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_2991D6FC8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991D7088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991D7104(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1F62CA8;
  sub_2991E09A4(a1 + 3, 0);
  return a1;
}

void sub_2991D7184(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F62CA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2991D7240(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1F62CF8;
  sub_2991E146C(a1 + 3, 0);
  return a1;
}

void sub_2991D72C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F62CF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991D7320(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, char *a4@<X3>, void **a5@<X4>, std::string *a6@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  sub_2991D7424(v11, v12, a4, a5, &__p);
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

  v15 = std::string::append(&__dst, p_p, size);
  *a6 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991D73F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2991D7424(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, std::string *a5@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  v8 = strlen(a3);
  sub_2991D7518(a3, v8, a4, &__p);
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

  v11 = std::string::append(&__dst, p_p, size);
  *a5 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991D74E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2991D7518(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  sub_2991D6AE8(&__dst, __src, __len);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  sub_2991D6AE8(__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2991D75D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *sub_2991D7604(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2991D7688(a1, v4, v6);
      v6 += 16;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_2991D7688(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_2991D7720(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_2991D7720(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_2991C1A30(a1, a5, (a2 + 4)))
  {
    if (!sub_2991C1A30(a1, (a2 + 4), a5))
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
      if (!sub_2991C1A30(a1, a5, (v15 + 4)))
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

  if (sub_2991C1A30(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_2991C1994(a1, a3, a5);
}

uint64_t sub_2991D78C4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_2991C1A30(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_2991C1A30(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_2991D7954(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2991BF780((a1 + 3), 24);
  return a1;
}

void sub_2991D7BD0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D7BF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_2991D7D48(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_2991A110C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_2991D7DA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2991D7F44(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_2991D7E08(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
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

  v18 = a1;
  if (v6)
  {
    sub_299374114(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2991D7F44(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_2991D80C4(&v14);
  return v8;
}

void sub_2991D7F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D80C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D7F44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273DCC(result, a4);
  }

  return result;
}

void sub_2991D7FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

char *sub_2991D7FCC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2991A110C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2991D808C(v9);
  return v4;
}

uint64_t sub_2991D808C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299273F10(a1);
  }

  return a1;
}

void **sub_2991D80C4(void **a1)
{
  sub_2991D80F8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2991D80F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_299212B90(&v5);
  }
}

uint64_t sub_2991D814C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2991D82D0(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_2991D81A0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
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

  v18 = a1;
  if (v6)
  {
    sub_29920DDE0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2991D82D0(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29920DE38(&v14);
  return v8;
}

void sub_2991D82BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920DE38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991D82D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992F8674(result, a4);
  }

  return result;
}

void sub_2991D8330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2991D834C(void **a1)
{
  sub_2991D8380(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2991D8380(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_299212B90(&v5);
  }
}

float sub_2991D83D4(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_2991D7F44(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_2991D8448(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_2991C0B30(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_2991D7F44(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_2991D834C(&v17);
  return v11;
}

void sub_2991D855C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D834C(va);
  _Unwind_Resume(a1);
}

void sub_2991D8570(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

float sub_2991D85B8(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_2991D82D0(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_2991D8620(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_2991D8570(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_2991D82D0(v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_299222040(&v17);
  return v11;
}

void sub_2991D8728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299222040(va);
  _Unwind_Resume(a1);
}

void *sub_2991D873C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2991D88A4(a1, a2, a3, (a3 - a2) >> 2);
  sub_2991D8798(a1);
  return a1;
}

void sub_2991D877C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D8798(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      sub_2991D891C(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      sub_2991D89F0(&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t sub_2991D88A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29920E024(result, a4);
  }

  return result;
}

void sub_2991D8900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D891C(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_299236FB8(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_2991D89F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29920E024(result, a2);
  }

  return result;
}

void sub_2991D8A4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2991D8A68(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = sub_2991D8B18(a2);
  v8 = sub_2991D8B18(a2);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

uint64_t sub_2991D8B18(uint64_t a1)
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

uint64_t sub_2991D8BB8(uint64_t a1)
{
  sub_2991BF614(&v3);
  MEMORY[0x29C29BD30](&v3, a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x29EDC9538];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v7);
}

void sub_2991D8D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D6578(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C29BF00](v2 + 112);
  _Unwind_Resume(a1);
}

void *sub_2991D8D2C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_2991D8DB0(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_2991D8DB0(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_2991D7720(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_2991D8E54(void *a1)
{
  sub_2991D8E8C(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2991D8E8C(void *a1)
{
  *a1 = &unk_2A1F62D48;
  sub_2991D8ED4(a1);
  return a1;
}

void *sub_2991D8ED4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

double sub_2991D8F1C@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

double sub_2991D8FE4@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void *sub_2991D90AC(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = sub_2991C0E9C(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_2991D9190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2991D91B0(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_2991D9210(this, v3, v4);
  return this;
}

void sub_2991D91F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2991D9210(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_2991D9388(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2991D936C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2991D9388(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t sub_2991D9464(uint64_t a1)
{
  *a1 = &unk_2A1F62D78;
  sub_2991DE5B0((a1 + 96));
  v4 = (a1 + 72);
  sub_29920E060(&v4);
  v4 = (a1 + 48);
  sub_29920E060(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2991D94E8(uint64_t a1)
{
  sub_2991D9464(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991D9520(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_2991D95FC(void *a1)
{
  sub_29920E0B4(a1 + 6);
  sub_29920E0B4(a1 + 9);
  a1[1] = "";
  a1[2] = 0;
  a1[4] = a1[3];

  sub_2991D9654((a1 + 12));
}

void sub_2991D9654(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 + 1 < ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      bzero(*(*(a1 + 8) + v4), 48 * *(a1 + 48));
      v4 += 8;
    }

    while (v5 != v4);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

void sub_2991D96D0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_2991D95FC(a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_2991C6220((a1 + 24), a3 + 1);
  for (; a3; a3 -= v6)
  {
    if (a3 >= asc_299431C8E[*a2 >> 4])
    {
      v6 = asc_299431C8E[*a2 >> 4];
    }

    else
    {
      v6 = a3;
    }

    v15 = a2;
    sub_2991D9850(a1 + 24, &v15);
    a2 += v6;
  }

  v15 = a2;
  sub_2991D9850(a1 + 24, &v15);
  v7 = ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
  v8 = v7 & ~(v7 >> 31);
  sub_2991D9924((a1 + 48), v8 + 1);
  sub_2991D9924((a1 + 72), v8 + 1);
  v9 = 0;
  do
  {
    sub_2991D99CC((*(a1 + 48) + v9), 0x10uLL);
    sub_2991D99CC((*(a1 + 72) + v9), 0x10uLL);
    v9 += 24;
  }

  while (24 * v8 + 24 != v9);
  v10 = sub_2991D9520((a1 + 96));
  v11 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v15 = v10;
  v10[6] = v11;
  v10[7] = -1;
  v10[4] = 0;
  sub_29931C308(*(a1 + 72), &v15);
  v12 = sub_2991D9520((a1 + 96));
  v13 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v14 = v12;
  v12[6] = v13;
  v12[7] = -1;
  v12[4] = v8;
  sub_29931C308(*(a1 + 48) + 24 * v8, &v14);
}

void sub_2991D9850(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2991C1E60(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2991D9924(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2991DE644(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *sub_2991D99CC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_29920B86C(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t sub_2991D9A6C(uint64_t a1, int a2, int a3)
{
  v6 = sub_2991D9520((a1 + 96));
  v7 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  sub_29931C308(*(a1 + 48) + 24 * a2, &v12);
  sub_29931C308(*(a1 + 72) + 24 * (*(v12 + 20) + a2), &v12);
  return v12;
}

void sub_2991D9B1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = ((a1[4] - a1[3]) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v6 = a1[6];
  while (1)
  {
    v7 = (v6 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    if (v8 != v9)
    {
      break;
    }

LABEL_14:
    if (++v3 == v5 + 1)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      v21 = *(v6 + 24 * v5);
      v22 = *(*v21 + 36);
      while (1)
      {
        v37 = *(*v21 + 40);
        if (!*(v37 + 40))
        {
          break;
        }

        v21 = &v37;
        sub_29931C308(&__p, &v37);
      }

      v30 = __p;
      v31 = v39;
      v32 = v39 - 8;
      if (__p != v39 && v32 > __p)
      {
        v34 = __p + 8;
        do
        {
          v35 = *(v34 - 1);
          *(v34 - 1) = *v32;
          *v32 = v35;
          v32 -= 8;
          v36 = v34 >= v32;
          v34 += 8;
        }

        while (!v36);
        v30 = __p;
        v31 = v39;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_2991DE480(a2, v30, v31, (v31 - v30) >> 3);
      *(a2 + 24) = v22;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      return;
    }
  }

  v10 = (a1[9] + 24 * v3);
  v11 = *v10;
  v12 = v10[1];
  while (1)
  {
    v13 = *v8;
    *(*v8 + 40) = 0;
    if (v11 == v12)
    {
      break;
    }

    v14 = 0;
    v15 = 0.0;
    v16 = v11;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *(v18 + 36) + *(v13 + 32);
      if (v19 > v15 || v14 == 0)
      {
        v14 = v17;
        v15 = v19;
      }
    }

    while (v16 != v12);
    if (!v14)
    {
      break;
    }

    *(v13 + 40) = v14;
    *(v13 + 36) = v15;
    if (++v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (sub_2991EB39C() <= 2)
  {
    LOBYTE(__p) = 0;
    v23 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
    v24 = sub_2991C0E9C(v23, "(", 1);
    v25 = MEMORY[0x29C29BD30](v24, 179);
    v26 = sub_2991C0E9C(v25, ") ", 2);
    v27 = sub_2991C0E9C(v26, "LOG(", 4);
    v28 = sub_2991C0E9C(v27, "ERROR", 5);
    v29 = sub_2991C0E9C(v28, ") ", 2);
    sub_2991C0E9C(v29, "Failed to find the best path in Viterbi.", 40);
    sub_2991BF944(&__p);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_2991D9D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991D9D78(void *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  v5 = ((a1[4] - a1[3]) >> 3) - 1;
  sub_2991AAFC8(a2, a1[16] + a1[17] * a1[18]);
  v6 = 0;
  v25 = a1[6];
  v23 = a1;
  v24 = (v5 & ~(v5 >> 31)) + 1;
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = v23[9] + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *a2;
      do
      {
        if (v12 != v11)
        {
          v14 = *(*v8 + 24);
          v15 = *v12;
          v16 = *(v13 + 4 * v14);
          v17 = v12;
          do
          {
            v18 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
              }

              if (v16 >= v18)
              {
                v18 = v16;
              }

              if (v18 <= (v19 + 50.0))
              {
                v20 = v18;
                v21 = exp((v19 - v18));
                v18 = log(v21 + 1.0) + v20;
              }
            }

            *(v13 + 4 * v14) = v18;
            ++v17;
            v16 = v18;
          }

          while (v17 != v11);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    ++v6;
  }

  while (v6 != v24);
}

float sub_2991D9F00(void *a1, float a2)
{
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[16] + a1[17] * a1[18];
  LODWORD(__p[0]) = 0;
  sub_2991AAFC8(v29, v6);
  sub_2991D9D78(a1, __p, a2);
  v7 = 0;
  v27 = a1[6];
  v25 = (((v4 - v5) >> 3) - 1) & ~((((v4 - v5) >> 3) - 1) >> 31);
  v26 = a1;
  do
  {
    v8 = (v27 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = (v26[9] + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = __p[0];
      v15 = v29[0];
      do
      {
        if (v12 != v13)
        {
          v16 = *(*v9 + 24);
          v17 = v15[v16];
          v18 = v12;
          do
          {
            v19 = *v18++;
            v20 = *(v19 + 24);
            v21 = (v14[v20] + (a2 * *(v19 + 32))) - v14[v16];
            v17 = v17 + (expf(v21) * (v21 + v15[v20]));
            v15[v16] = v17;
          }

          while (v18 != v13);
        }

        v9 += 8;
      }

      while (v9 != v10);
    }

    ++v7;
  }

  while (v7 != v25 + 1);
  v22 = v29[0];
  v23 = *(v29[0] + *(**(v27 + 24 * v25) + 24));
  if (!__p[0] || (__p[1] = __p[0], operator delete(__p[0]), (v22 = v29[0]) != 0))
  {
    v29[1] = v22;
    operator delete(v22);
  }

  return -v23;
}

void sub_2991DA0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991DA0C0(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v157 = *MEMORY[0x29EDCA608];
  if (a2 == 1)
  {
    if ((a3 & 1) == 0)
    {
      sub_2991D9B1C(a1, &v153);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_2991DE808(a4, &v153, &v155[1], 1uLL);
      if (v153)
      {
        *&v154 = v153;
        operator delete(v153);
      }

      goto LABEL_128;
    }
  }

  else if (!a2)
  {
    if (sub_2991EB39C() <= 1)
    {
      LOBYTE(v153) = 0;
      v10 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
      v11 = sub_2991C0E9C(v10, "(", 1);
      v12 = MEMORY[0x29C29BD30](v11, 351);
      v13 = sub_2991C0E9C(v12, ") ", 2);
      v14 = sub_2991C0E9C(v13, "LOG(", 4);
      v15 = sub_2991C0E9C(v14, "WARNING", 7);
      v16 = sub_2991C0E9C(v15, ") ", 2);
      sub_2991C0E9C(v16, "nbest_size >= 1. Returns empty result.", 38);
      sub_2991BF944(&v153);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_128;
  }

  v154 = 0u;
  memset(v155, 0, sizeof(v155));
  v153 = &unk_2A1F62EF0;
  v156 = 512;
  v151 = 0;
  v152 = 0uLL;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v17 = sub_2991DB1C8(&v153);
  v147 = v17;
  v18 = ((v8[4] - v8[3]) >> 3) - 1;
  *v17 = **(v8[6] + 24 * (v18 & ~(v18 >> 31)));
  *(v17 + 8) = 0;
  *(v17 + 20) = 0;
  v19 = v8[16] + v8[17] * v8[18];
  *v139 = 0;
  sub_2991AAFC8(__p, v19);
  if (v6)
  {
    sub_2991D9D78(v8, v139, a5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v139;
    __p[2] = *&v139[16];
    v20 = sub_2991EB4FC();
    v21 = sub_2991D8B18(v20);
    v22 = logf((vcvts_n_f32_u32(v21, 0x20uLL) + 0.0) + 0.0000001);
    v23 = -logf(-v22);
  }

  else
  {
    sub_2991D9B1C(v8, v145);
    if (v145[0])
    {
      v145[1] = v145[0];
      operator delete(v145[0]);
    }

    v23 = *(*v17 + 36);
  }

  *(v17 + 16) = v23;
  sub_29921A7E0(&v151, &v147);
  v24 = v152;
  sub_29939CE84(v151, v152, (v152 - v151) >> 3);
  v130 = 0;
  v129 = (10 * v7);
  if (10 * v7 >= 512)
  {
    v25 = 512;
  }

  else
  {
    v25 = 10 * v7;
  }

  v128 = v25;
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v133 = v26;
  v134 = v6;
  while (1)
  {
    v27 = v151;
    if (v151 == v24)
    {
      break;
    }

    v28 = *v151;
    v29 = (v24 - v151) >> 3;
    if (v29 >= 2)
    {
      v30 = 0;
      v31 = v151;
      do
      {
        v32 = v31;
        v31 += v30 + 1;
        v33 = 2 * v30;
        v30 = (2 * v30) | 1;
        v34 = v33 + 2;
        if (v34 < v29 && *(*v31 + 16) < *(v31[1] + 16))
        {
          ++v31;
          v30 = v34;
        }

        *v32 = *v31;
      }

      while (v30 <= ((v29 - 2) >> 1));
      v35 = v24 - 8;
      if (v31 == (v24 - 8))
      {
        *v31 = v28;
      }

      else
      {
        *v31 = *v35;
        *v35 = v28;
        sub_29939CE84(v27, (v31 + 1), ((v31 + 1) - v27) >> 3);
      }
    }

    v24 = (v152 - 8);
    *&v152 = v152 - 8;
    v36 = *v28;
    v37 = v8[9];
    if (*v28 == **v37)
    {
      sub_2991DB288(a4, ((a4[1] - *a4) >> 5) + 1);
      v38 = (v28 + 1);
      while (1)
      {
        v39 = *v38;
        v40 = *v38;
        v41 = v40[1];
        v38 = (v40 + 1);
        if (!v41)
        {
          break;
        }

        sub_29931C308(a4[1] - 32, v39);
      }

      v42 = a4[1];
      *(v42 - 8) = *(v28 + 4);
      if (v7 == (v42 - *a4) >> 5)
      {
        break;
      }
    }

    else
    {
      v43 = (v37[3 * *(v36 + 16) + 1] - v37[3 * *(v36 + 16)]);
      *v139 = 0;
      sub_2991AAFC8(v144, v43);
      *v139 = 0;
      sub_2991AAFC8(v143, v43);
      v131 = v7;
      *v139 = 0;
      sub_2991DEB68(&v141, v43);
      v44 = *(v36 + 16);
      v45 = v8[9];
      if (v6)
      {
        v46 = *(v45 + 24 * v44);
        v47 = -100000000.0;
        if (*(v45 + 24 * v44 + 8) != v46)
        {
          v48 = 0;
          v49 = *(__p[0] + *(v36 + 24));
          v47 = -100000000.0;
          do
          {
            v50 = ((*(v28 + 5) + *(__p[0] + *(*(v46 + 8 * v48) + 24))) + (a5 * *(*(v46 + 8 * v48) + 32))) - v49;
            *(v144[0] + v48) = v50;
            v51 = sub_2991EB4FC();
            v52 = sub_2991D8B18(v51);
            v53 = logf((vcvts_n_f32_u32(v52, 0x20uLL) + 0.0) + 0.0000001);
            v54 = v50 - logf(-v53);
            *(v143[0] + v48) = v54;
            if (v54 > v47)
            {
              v47 = v54;
            }

            ++v48;
            v55 = *(v36 + 16);
            v45 = v8[9];
            v46 = *(v45 + 24 * v55);
          }

          while (v48 < (*(v45 + 24 * v55 + 8) - v46) >> 3);
          v44 = *(v36 + 16);
        }

        v56 = v141;
        if (v142 != v141)
        {
          v57 = *(v28 + 4);
          v58 = v143[0];
          if (((v142 - v141) >> 3) <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = (v142 - v141) >> 3;
          }

          do
          {
            v60 = *v58++;
            v61 = expf(v60 - v47);
            v62 = (v57 - v60) + log1pf(-v61);
            v63 = v57 - fmaxf(v62, 0.0);
            v64 = expf(-fabsf(v62));
            *v56++ = (v63 - log1pf(v64));
            --v59;
          }

          while (v59);
        }

        v6 = v134;
      }

      v65 = *(v45 + 24 * v44);
      if (*(v45 + 24 * v44 + 8) != v65)
      {
        v66 = 0;
        do
        {
          v67 = *(v65 + 8 * v66);
          v68 = sub_2991DB1C8(&v153);
          *v139 = v68;
          *v68 = v67;
          if (v6)
          {
            *(v68 + 20) = *(v144[0] + v66);
            v69 = *(v141 + v66);
          }

          else
          {
            *(v68 + 20) = *(v67 + 32) + *(v28 + 5);
            v69 = *(v67 + 36) + *(v28 + 5);
          }

          *(v68 + 16) = v69;
          *(v68 + 8) = v28;
          sub_29921A7E0(&v151, v139);
          v24 = v152;
          sub_29939CE84(v151, v152, (v152 - v151) >> 3);
          ++v66;
          v65 = *(v8[9] + 24 * *(v36 + 16));
        }

        while (v66 < (*(v8[9] + 24 * *(v36 + 16) + 8) - v65) >> 3);
      }

      v7 = v131;
      if (!(((v155[1] + v155[2] * v156) < 0x3B9ACA00) | v130 & 1))
      {
        if (sub_2991EB39C() <= 1)
        {
          v139[0] = 0;
          v70 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
          v71 = sub_2991C0E9C(v70, "(", 1);
          v72 = MEMORY[0x29C29BD30](v71, 475);
          v73 = sub_2991C0E9C(v72, ") ", 2);
          v74 = sub_2991C0E9C(v73, "LOG(", 4);
          v75 = sub_2991C0E9C(v74, "WARNING", 7);
          v76 = sub_2991C0E9C(v75, ") ", 2);
          v77 = sub_2991C0E9C(v76, "Allocator size exceeds ", 23);
          v78 = MEMORY[0x29C29BD30](v77, 1000000000);
          v79 = sub_2991C0E9C(v78, " with an example of length ", 27);
          v80 = ((v8[4] - v8[3]) >> 3) - 1;
          MEMORY[0x29C29BD30](v79, v80 & ~(v80 >> 31));
          sub_2991BF944(v139);
        }

        v130 = 1;
      }

      v81 = v151;
      if (((v24 - v151) >> 3) >> 4 < 0x271)
      {
        v6 = v134;
      }

      else
      {
        v149 = 0;
        v150 = 0uLL;
        memset(&v139[8], 0, 40);
        *v139 = &unk_2A1F62EF0;
        v140 = 512;
        *v136 = 0u;
        v137 = 0u;
        v138 = 1065353216;
        ++HIDWORD(v129);
        if (sub_2991EB39C() <= 1)
        {
          LOBYTE(v148) = 0;
          v82 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
          v83 = sub_2991C0E9C(v82, "(", 1);
          v84 = MEMORY[0x29C29BD30](v83, 495);
          v85 = sub_2991C0E9C(v84, ") ", 2);
          v86 = sub_2991C0E9C(v85, "LOG(", 4);
          v87 = sub_2991C0E9C(v86, "WARNING", 7);
          v88 = sub_2991C0E9C(v87, ") ", 2);
          v89 = sub_2991C0E9C(v88, "Too big agenda size ", 20);
          v90 = MEMORY[0x29C29BD60](v89, (v24 - v81) >> 3);
          v91 = sub_2991C0E9C(v90, ". Shrinking (round ", 19);
          v92 = MEMORY[0x29C29BD30](v91, HIDWORD(v129));
          v93 = sub_2991C0E9C(v92, ") down to ", 10);
          v94 = MEMORY[0x29C29BD30](v93, v128);
          sub_2991C0E9C(v94, ".", 1);
          sub_2991BF944(&v148);
        }

        if (v129 >= 1)
        {
          v127 = v8;
          v95 = 0;
          while (1)
          {
            v96 = v151;
            v97 = *v151;
            v148 = 0;
            if (!v97)
            {
              goto LABEL_101;
            }

            v98 = &v148;
            do
            {
              v99 = 0x9DDFEA08EB382D69 * ((8 * (v97 & 0x1FFFFFFF) + 8) ^ HIDWORD(v97));
              v100 = 0x9DDFEA08EB382D69 * (HIDWORD(v97) ^ (v99 >> 47) ^ v99);
              v101 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
              if (v136[1])
              {
                v102 = vcnt_s8(v136[1]);
                v102.i16[0] = vaddlv_u8(v102);
                if (v102.u32[0] > 1uLL)
                {
                  v103 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
                  if (v101 >= v136[1])
                  {
                    v103 = v101 % v136[1];
                  }
                }

                else
                {
                  v103 = v101 & (v136[1] - 1);
                }

                v104 = *(v136[0] + v103);
                if (v104)
                {
                  for (i = *v104; i; i = *i)
                  {
                    v106 = i[1];
                    if (v106 == v101)
                    {
                      if (i[2] == v97)
                      {
                        *v98 = i[3];
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      if (v102.u32[0] > 1uLL)
                      {
                        if (v106 >= v136[1])
                        {
                          v106 %= v136[1];
                        }
                      }

                      else
                      {
                        v106 &= v136[1] - 1;
                      }

                      if (v106 != v103)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v107 = sub_2991DB1C8(v139);
              v108 = *v97;
              *(v107 + 16) = *(v97 + 16);
              *v107 = v108;
              *v98 = v107;
              if (!v136[1])
              {
                goto LABEL_99;
              }

              v109 = vcnt_s8(v136[1]);
              v109.i16[0] = vaddlv_u8(v109);
              if (v109.u32[0] > 1uLL)
              {
                v110 = v101;
                if (v101 >= v136[1])
                {
                  v110 = v101 % v136[1];
                }
              }

              else
              {
                v110 = (v136[1] - 1) & v101;
              }

              v111 = *(v136[0] + v110);
              if (!v111 || (v112 = *v111) == 0)
              {
LABEL_99:
                operator new();
              }

              while (1)
              {
                v113 = v112[1];
                if (v113 == v101)
                {
                  break;
                }

                if (v109.u32[0] > 1uLL)
                {
                  if (v113 >= v136[1])
                  {
                    v113 %= v136[1];
                  }
                }

                else
                {
                  v113 &= v136[1] - 1;
                }

                if (v113 != v110)
                {
                  goto LABEL_99;
                }

LABEL_98:
                v112 = *v112;
                if (!v112)
                {
                  goto LABEL_99;
                }
              }

              if (v112[2] != v97)
              {
                goto LABEL_98;
              }

              v97 = *(v97 + 8);
              v98 = (v107 + 8);
            }

            while (v97);
LABEL_101:
            v135 = v148;
            sub_29921A7E0(&v149, &v135);
            sub_29939CE84(v149, v150, (v150 - v149) >> 3);
            v114 = (v24 - v96) >> 3;
            v6 = v134;
            v7 = v131;
            if (v114 >= 2)
            {
              v115 = 0;
              v116 = *v96;
              v117 = v96;
              do
              {
                v118 = v117;
                v117 += v115 + 1;
                v119 = 2 * v115;
                v115 = (2 * v115) | 1;
                v120 = v119 + 2;
                if (v120 < v114 && *(*v117 + 16) < *(v117[1] + 16))
                {
                  ++v117;
                  v115 = v120;
                }

                *v118 = *v117;
              }

              while (v115 <= ((v114 - 2) >> 1));
              v121 = v24 - 8;
              if (v117 == (v24 - 8))
              {
                *v117 = v116;
              }

              else
              {
                *v117 = *v121;
                *v121 = v116;
                sub_29939CE84(v96, (v117 + 1), v117 + 1 - v96);
              }
            }

            v24 = (v152 - 8);
            *&v152 = v152 - 8;
            if (++v95 == v133)
            {
              v81 = v151;
              v8 = v127;
              goto LABEL_114;
            }
          }
        }

        v6 = v134;
LABEL_114:
        if (v81)
        {
          *&v152 = v81;
          operator delete(v81);
        }

        v151 = v149;
        v132 = v150;
        v152 = v150;
        v122 = v154;
        v154 = *&v139[8];
        *&v139[8] = v122;
        v123 = *&v139[24];
        v124 = v156;
        *&v139[24] = v155[0];
        v125 = *&v155[1];
        *&v155[1] = *&v139[32];
        *&v139[32] = v125;
        v155[0] = v123;
        v156 = v140;
        v140 = v124;
        sub_29921ED28(v136);
        sub_2991DB324(v139);
        v24 = v132;
      }

      if (v141)
      {
        v142 = v141;
        operator delete(v141);
      }

      if (v143[0])
      {
        v143[1] = v143[0];
        operator delete(v143[0]);
      }

      if (v144[0])
      {
        v144[1] = v144[0];
        operator delete(v144[0]);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v151)
  {
    operator delete(v151);
  }

  sub_2991DB324(&v153);
LABEL_128:
  v126 = *MEMORY[0x29EDCA608];
}