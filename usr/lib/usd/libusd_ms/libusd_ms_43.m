void sub_29A2237F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a22);
  _Unwind_Resume(a1);
}

char *pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::GetRecordedString@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[303] < 0)
  {
    return sub_29A008D14(a2, *(this + 35), *(this + 36));
  }

  *a2 = *(this + 280);
  *(a2 + 16) = *(this + 37);
  return this;
}

uint64_t sub_29A22388C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A20486F8;
  sub_29A224B38(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A223920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A22395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_29A0DDCB0();
  }

  return (*(*v5 + 48))(v5, a2, a3, a4, &v7);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue(int *a1, uint64_t a2)
{
  if (*(a1 + 273) == 1)
  {
    if (*(a1 + 272) == 1)
    {
      std::string::append((a1 + 70), ", ");
    }

    v4 = *(a2 + 48);
    if (v4 == -1)
    {
      sub_29A151D68();
    }

    v15 = &v14;
    (off_2A2048618[v4])(__p, &v15, a2);
    if ((v13 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v6 = v13;
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append((a1 + 70), v5, v6);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 272) = 1;
  }

  else
  {
    sub_29A223B70(a1 + 8, a2);
  }

  v7 = a1[28];
  v8 = *a1;
  if (v7 == -1)
  {
    a1[28] = v8;
    v7 = v8;
  }

  else if (v7 != v8)
  {
    sub_29A008E78(__p, "Non-square shaped value");
    v9 = *(a1 + 33);
    if (!v9)
    {
      sub_29A0DDCB0();
    }

    (*(*v9 + 48))(v9, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  v10 = a1[8];
  if (v10 || v7 && (v11 = *(a1 + 11) + 4 * v7, ++*(v11 - 4), (v10 = a1[8]) != 0))
  {
    if (*(a1 + 29) == v10)
    {
      --*&a1[2 * v10 + 8];
    }
  }
}

void sub_29A223B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A223B70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A224C8C(a1, a2);
  }

  else
  {
    sub_29A224DD4(a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginList(pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *this)
{
  if (*(this + 273) == 1)
  {
    if (*(this + 272) == 1)
    {
      *(this + 272) = 0;
      std::string::append((this + 280), ", ");
    }

    std::string::push_back((this + 280), 91);
  }

  v2 = *this + 1;
  *this = v2;
  if (v2 > (*(this + 2) - *(this + 1)) >> 2)
  {
    v4 = 0;
    sub_29A00D250(this + 1, &v4);
    v3 = 0;
    sub_29A00D250(this + 11, &v3);
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndList(pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *this)
{
  if (*(this + 273) == 1)
  {
    std::string::push_back((this + 280), 93);
    *(this + 272) = 1;
  }

  v2 = *this;
  if (!*this)
  {
    sub_29A008E78(__p, "Mismatched [ ] in shaped value");
    v8 = *(this + 33);
    if (!v8)
    {
      sub_29A0DDCB0();
    }

    goto LABEL_9;
  }

  v3 = v2 - 1;
  v4 = *(this + 1);
  v5 = *(v4 + 4 * v3);
  v6 = *(this + 11);
  v7 = *(v6 + 4 * v3);
  if (v5)
  {
    if (v5 != v7)
    {
      sub_29A008E78(__p, "Non-square shaped value");
      v8 = *(this + 33);
      if (!v8)
      {
        sub_29A0DDCB0();
      }

LABEL_9:
      (*(*v8 + 48))(v8, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }
  }

  else
  {
    *(v4 + 4 * v3) = v7;
    v9 = *this;
    if (!*(v4 + 4 * v9 - 4))
    {
      sub_29A008E78(__p, "Shaped value with a zero dimension");
      v8 = *(this + 33);
      if (!v8)
      {
        sub_29A0DDCB0();
      }

      goto LABEL_9;
    }

    v2 = *this;
    if (!v9)
    {
      return;
    }
  }

  *(v6 + 4 * v2 - 4) = 0;
  v10 = *this;
  *this = v10 - 1;
  if (v10 >= 2)
  {
    ++*(v6 + 4 * v10 - 8);
  }
}

void sub_29A223E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::BeginTuple(pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *this, const char *a2, char *a3)
{
  if (*(this + 273) == 1)
  {
    if (*(this + 272) == 1)
    {
      *(this + 272) = 0;
      std::string::append((this + 280), ", ");
    }

    std::string::push_back((this + 280), 40);
  }

  v4 = *(this + 8);
  if (*(this + 29) <= v4)
  {
    v5 = (this + 120);
    if (*(this + 143) < 0)
    {
      v5 = *v5;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Tuple nesting too deep! Should not be deeper than %d for attribute of type %s.", a2, a3, *(this + 8), v5);
    v6 = *(this + 33);
    if (!v6)
    {
      sub_29A0DDCB0();
    }

    (*(*v6 + 48))(v6, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(this + v4 + 5) = *(this + v4 + 27);
    *(this + 8) = v4 + 1;
  }
}

void sub_29A223F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::EndTuple(pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext *this, const char *a2, char *a3)
{
  if (*(this + 273) == 1)
  {
    std::string::push_back((this + 280), 41);
    *(this + 272) = 1;
  }

  v4 = *(this + 8);
  if (!v4)
  {
    v8 = (this + 120);
    if (*(this + 143) < 0)
    {
      v8 = *v8;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Mismatched() for attribute of type %s.", a2, a3, v8);
    v7 = *(this + 33);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

    goto LABEL_12;
  }

  v5 = v4 - 1;
  *(this + 8) = v4 - 1;
  if (*(this + v4 + 4))
  {
    v6 = (this + 120);
    if (*(this + 143) < 0)
    {
      v6 = *v6;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Tuple dimensions error for attribute of type %s.", a2, a3, v6);
    v7 = *(this + 33);
    if (!v7)
    {
      sub_29A0DDCB0();
    }

LABEL_12:
    (*(*v7 + 48))(v7, &__p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v9 = __OFSUB__(v4, 2);
  v10 = v4 - 2;
  if (v10 < 0 != v9)
  {
    if (!v5)
    {
      v11 = *this;
      if (v11)
      {
        ++*(*(this + 11) + 4 * v11 - 4);
      }
    }
  }

  else
  {
    --*(this + v10 + 5);
  }
}

void sub_29A2240B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::StartRecordingString(uint64_t this)
{
  *(this + 272) = 256;
  if (*(this + 303) < 0)
  {
    **(this + 280) = 0;
    *(this + 288) = 0;
  }

  else
  {
    *(this + 280) = 0;
    *(this + 303) = 0;
  }

  return this;
}

uint64_t sub_29A224148(void *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A224344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A224368(uint64_t a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A224564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A224590(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2048658;
  result[1] = v3;
  return result;
}

uint64_t sub_29A2245D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2048658;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A224610(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20486D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A22465C(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29A2248B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t *sub_29A2248C0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A2248E0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A224A1C(a1);
}

void *sub_29A224A04@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20486F8;
  return sub_29A224B38(a2, v2);
}

void sub_29A224A1C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit((v2 + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    v3 = sub_29A186B14(v2);

    operator delete(v3);
  }
}

uint64_t sub_29A224A68(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 16));
  if (v2 != 1)
  {
    sub_29A224AD0(*a1, &v4);
    sub_29A224A1C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A224A1C(&v4);
  }

  return *a1;
}

void *sub_29A224AD0@<X0>(void *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x18uLL);
  result = sub_29A186EF4(v4, a1);
  atomic_store(0, v4 + 4);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29A224B38(unsigned int **a1, void *a2)
{
  v4 = operator new(0x18uLL);
  result = sub_29A186EF4(v4, a2);
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A224BA0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_2A20487B0[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void sub_29A224C04(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29A224C18(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A224C34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_29A224C8C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *(&v16 + 1) = &v7[56 * v6];
  sub_29A224DD4(v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A224FAC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A225154(&v14);
  return v13;
}

void sub_29A224DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A225154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A224DD4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = -1;
  sub_29A224E1C(a1, a2);
  return a1;
}

uint64_t sub_29A224E1C(uint64_t a1, uint64_t a2)
{
  result = sub_29A224BA0(a1);
  v5 = *(a2 + 48);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A20487E0[v5])(&v6, a2);
    *(a1 + 48) = v5;
  }

  return result;
}

double sub_29A224EA0(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_29A224EB0(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_29A008D14(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t **sub_29A224EDC(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  **result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

char *sub_29A224F18(char *__dst, __int128 *a2)
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

void sub_29A224F90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A224FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A22501C(a4, v7);
      v7 += 56;
      a4 = v8 + 56;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A224BA0(v6);
      v6 += 56;
    }
  }
}

uint64_t sub_29A22501C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = -1;
  sub_29A225054(a1, a2);
  return a1;
}

uint64_t sub_29A225054(uint64_t a1, uint64_t a2)
{
  result = sub_29A224BA0(a1);
  v5 = *(a2 + 48);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A2048810[v5])(&v6, a2);
    *(a1 + 48) = v5;
  }

  return result;
}

double sub_29A2250D8(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 sub_29A2250E8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void **sub_29A225108(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

__n128 sub_29A22511C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *(a2 + 24);
  *(v2 + 40) = *(a2 + 5);
  *(v2 + 24) = result;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  return result;
}

uint64_t sub_29A225154(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_29A224BA0(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParsePath(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_29A2254B4(&v14, 1uLL);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  sub_29A229DD4(&__dst, a1, "");
  sub_29A225588(&__dst, &v14);
  v7 = v6;
  sub_29A229D90(&__dst);
  if (v7)
  {
    if (a2)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    a2 = 1;
  }

  else
  {
    if (a3)
    {
      if (*(a1 + 23) >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Ill-formed SdfPath with no exception parsing <%s>", v8, v9, v10);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = __dst;
      *(a3 + 16) = v13;
    }

    if (a2)
    {
      *&__dst = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&__dst);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&__dst + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*(&v16 + 1));
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15);
  }

  *&__dst = &v14;
  sub_29A1E234C(&__dst);
  return a2;
}

void sub_29A225328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    if (v25)
    {
      (*(*v27 + 16))(v27);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Ill-formed SdfPath <%s>: %s", v28, v29);
      if (*(v25 + 23) < 0)
      {
        operator delete(*v25);
      }

      *v25 = a12;
      *(v25 + 16) = a13;
    }

    if (v24)
    {
      *&a12 = 0;
      sub_29A225424(&a12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    __cxa_end_catch();
    JUMPOUT(0x29A2252D4);
  }

  sub_29A22545C(&a24);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A225424(_DWORD *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  return a1;
}

uint64_t sub_29A22545C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = a1;
  sub_29A1E234C(&v3);
  return a1;
}

void *sub_29A2254B4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    sub_29A225520(a1, a2);
  }

  return a1;
}

_DWORD *sub_29A225520(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (a2)
  {
    v4 = 8 * a2;
    v5 = result;
    v6 = &result[2 * a2];
    do
    {
      *v5++ = 0;
      v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(result);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v7 + 1);
      result = v5;
      v4 -= 8;
    }

    while (v4);
    result = v6;
  }

  *(a1 + 8) = result;
  return result;
}

__n128 sub_29A225588(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if ((sub_29A225724(a1, a2) & 1) == 0)
  {
    sub_29A2255F8(a1);
  }

  if ((sub_29A229BB8(a1) & 1) == 0)
  {
    result = v4;
    *(a1 + 32) = v4;
    *(a1 + 48) = v5;
  }

  return result;
}

void sub_29A2255EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2255F8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C70;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Path");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2256C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A225724(uint64_t a1, uint64_t a2)
{
  if (sub_29A225798(a1, a2))
  {
    return 1;
  }

  if (sub_29A22967C(a1, a2))
  {
    return 1;
  }

  sub_29A229B3C(a1, a2);
  if (v4)
  {
    return 1;
  }

  return sub_29A228340(a1, a2);
}

uint64_t sub_29A225798(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A225808(a1, a2);
  if (v4)
  {
    sub_29A225994(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2257FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A225808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 47)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A2258A0(v6, a2);
  return 1;
}

void sub_29A225894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

int *sub_29A2258A0(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  v4 = *(a2 + 8);
  sub_29A2258F0((v4 - 8), v3);

  return sub_29A225948((v4 - 4), v3 + 1);
}

int *sub_29A2258F0(int *a1, _DWORD *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator==(a1, a2))
  {
    sub_29A1E21F4(&v5, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(&v5, a1);
    sub_29A1DE3A4(&v5);
  }

  return a1;
}

int *sub_29A225948(int *a1, _DWORD *a2)
{
  sub_29A1E2240(&v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(&v4, a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4);
  return a1;
}

uint64_t sub_29A225994(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A225A10(a1, a2);
  if (v4)
  {
    sub_29A227734(a1, a2);
    sub_29A227B7C(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A225A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A225A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A225A5C(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A226098(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A225A5C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A225AEC(a1);
  if (v4)
  {
      ;
    }

    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A225E08(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A225ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A225AEC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 95)
  {
    return sub_29A225B30(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A225B30(void *a1)
{
  if (a1[4] == a1[8])
  {
    return 0;
  }

  v2 = sub_29A225B9C(a1);
  if ((v2 & 0xFF00000000) == 0)
  {
    return 0;
  }

  v3 = BYTE4(v2);
  result = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidStart(v2);
  if (result)
  {
    sub_29A225BF4(a1 + 3, v3);
    return 1;
  }

  return result;
}

unint64_t sub_29A225B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == *(a1 + 64))
  {
    return 0;
  }

  v2 = *v1;
  v3 = v2;
  if (v2 < 0)
  {
    v6 = sub_29A225C48(a1, v2);
    v3 = v6;
    v4 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0x100000000;
  }

  return v4 | v3;
}

void *sub_29A225BF4(void *result, uint64_t a2)
{
  v2 = result[1];
  if (a2)
  {
    v3 = result[3];
    v4 = result[4];
    v5 = result[1];
    v6 = a2;
    do
    {
      v7 = *v5++;
      if (v7 == 10)
      {
        result[3] = ++v3;
        v4 = 1;
      }

      else
      {
        ++v4;
      }

      result[4] = v4;
      --v6;
    }

    while (v6);
  }

  v8 = result[2] + a2;
  result[1] = v2 + a2;
  result[2] = v8;
  return result;
}

uint64_t sub_29A225C48(uint64_t a1, char a2)
{
  if ((a2 & 0xE0) == 0xC0)
  {
    v2 = *(a1 + 32);
    if ((*(a1 + 64) - v2) >= 2)
    {
      v3 = *(v2 + 1);
      if ((v3 & 0xC0) == 0x80)
      {
        v4 = (a2 & 0x1F) << 6;
        if (v4 >= 0x80)
        {
          v5 = v3 & 0x3F | v4;
          v6 = 0x200000000;
          return v6 | v5;
        }
      }
    }

LABEL_21:
    v5 = 0;
    v6 = 0;
    return v6 | v5;
  }

  if ((a2 & 0xF0) == 0xE0)
  {
    v7 = *(a1 + 32);
    if ((*(a1 + 64) - v7) < 3)
    {
      goto LABEL_21;
    }

    v8 = *(v7 + 1);
    if ((v8 & 0xC0) != 0x80)
    {
      goto LABEL_21;
    }

    v9 = *(v7 + 2);
    if ((v9 & 0xC0) != 0x80)
    {
      goto LABEL_21;
    }

    v10 = v8 & 0x3F | ((a2 & 0xF) << 6);
    if (v10 < 0x20)
    {
      goto LABEL_21;
    }

    v5 = v9 & 0x3F | (v10 << 6);
    v6 = 0x300000000;
    if ((a2 & 0xF) << 6 <= 0x37Fu && v10 >= 0x360)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((a2 & 0xF8) != 0xF0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 32);
    if (*(a1 + 64) - v11 < 4uLL)
    {
      goto LABEL_21;
    }

    v6 = 0;
    v5 = 0;
    v12 = v11[1];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = v11[2];
      if ((v13 & 0xC0) == 0x80)
      {
        v14 = v11[3];
        if ((v14 & 0xC0) == 0x80)
        {
          v15 = v12 & 0x3F | ((a2 & 7) << 6);
          if ((v15 - 16) <= 0xFF)
          {
            v5 = v14 & 0x3F | ((v13 & 0x3F) << 6) | (v15 << 12);
            v6 = 0x400000000;
            return v6 | v5;
          }

          goto LABEL_21;
        }
      }
    }
  }

  return v6 | v5;
}

uint64_t sub_29A225D9C(void *a1)
{
  if (a1[4] == a1[8])
  {
    return 0;
  }

  v2 = sub_29A225B9C(a1);
  if ((v2 & 0xFF00000000) == 0)
  {
    return 0;
  }

  v3 = BYTE4(v2);
  result = pxrInternal__aapl__pxrReserved__::TfIsUtf8CodePointXidContinue(v2);
  if (result)
  {
    sub_29A225BF4(a1 + 3, v3);
    return 1;
  }

  return result;
}

void sub_29A225E08(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((*(a2 + 8) - 8));
  if (!v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v4);
    v6 = *(a2 + 8);
    sub_29A2258F0((v6 - 8), v5);
    sub_29A225948((v6 - 4), v5 + 1);
  }

  v7 = (*(a2 + 8) - 8);
  sub_29A225F00(a1, &v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v7, &v8, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A225F00(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = *(*(a1 + 32) + 8);
  v5 = v4 - *a1;
  *a2 = 0;
  if (v5 > 0x1F)
  {
    sub_29A02887C(__p, v3, v5);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
    if (&v8 == a2)
    {
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a2 = v8;
      v8 = 0;
    }

    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v4 != v3)
    {
      memmove(__dst, v3, v5);
    }

    __dst[v5] = 0;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(__p, __dst);
    if (__p == a2)
    {
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a2 = __p[0];
    }
  }
}

void sub_29A226058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((*v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A226098(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A226130(a1);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  if (!v4 || !sub_29A2276F0(a1, a2) || (sub_29A225A5C(a1, a2) & 1) == 0)
  {
    result = v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_29A226118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A226130(void *a1)
{
  result = sub_29A22617C(a1);
  if (result)
  {
    result = sub_29A225AEC(a1);
    if (result)
    {
        ;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_29A22617C(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 47)
  {
    return sub_29A2261C0(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

uint64_t sub_29A2261C0(void *a1)
{
  v2 = sub_29A226234(a1);
  if (v2)
  {
    sub_29A2262FC(a1);
    sub_29A2275B4(a1);
    if (v3)
    {
      do
      {
        sub_29A227648(a1);
        sub_29A2275B4(a1);
      }

      while ((v4 & 1) != 0);
    }
  }

  return v2;
}

uint64_t sub_29A226234(void *a1)
{
    ;
  }

  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 123)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

uint64_t sub_29A2262B0(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 32 && v2 != 9)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A2262FC(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A22637C(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A227178(a1);
  }

  sub_29A227328(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A22740C(a1);
  }

  return 1;
}

void sub_29A22637C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C80;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VariantSetName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A226440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A2264A0(void *a1)
{
  v2 = sub_29A225AEC(a1);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

uint64_t sub_29A2264EC(void *a1)
{
  if (sub_29A225D9C(a1))
  {
    return 1;
  }

  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 45)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
    return 1;
  }

  return 0;
}

std::runtime_error *sub_29A226558(std::runtime_error *a1, char *a2, uint64_t a3)
{
  sub_29A2266C8(&v6, a3 + 32, (a3 + 72));
  sub_29A226630(a1, a2, &v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A2265B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2265D4(std::runtime_error *this)
{
  this->__vftable = &unk_2A2048868;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    sub_29A014BEC(imp);
  }

  std::runtime_error::~runtime_error(this);
}

std::runtime_error *sub_29A226630(std::runtime_error *a1, char *a2, __int128 *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v5 = *a3;
  v6 = *(a3 + 2);
  *__p = *(a3 + 24);
  v8 = *(a3 + 5);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  sub_29A226724(a1, a2, &v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A2266AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2266C8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 24);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v4;
  }

  return a1;
}

std::runtime_error *sub_29A226724(std::runtime_error *a1, char *a2, uint64_t a3)
{
  v8 = a2;
  v5 = std::runtime_error::runtime_error(a1, a2);
  v5->__vftable = &unk_2A2048868;
  v6 = &v5[1];
  sub_29A226A5C(&v8, &v5[1].__vftable);
  sub_29A2267C8(*v6, a3);
  return a1;
}

void sub_29A2267A0(_Unwind_Exception *a1)
{
  imp = v1[1].__imp_.__imp_;
  if (imp)
  {
    sub_29A014BEC(imp);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_29A2267C8(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x29EDCA608];
  sub_29A226CA0(a2);
  if ((v20 & 0x80u) == 0)
  {
    v4 = v20;
  }

  else
  {
    v4 = v19;
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v4 + 2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v20 & 0x80u) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18;
    }

    memmove(p_p, v6, v4);
  }

  strcpy(p_p + v4, ": ");
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = std::string::append(&__p, v8, v9);
  v11 = v10->__r_.__value_.__r.__words[0];
  v21[0] = v10->__r_.__value_.__l.__size_;
  *(v21 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v21[0];
  *(a1 + 15) = *(v21 + 7);
  *(a1 + 23) = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v13 = v19;
  }

  *(a1 + 24) += v13 + 2;
  v14 = *(a1 + 40);
  if (v14 >= *(a1 + 48))
  {
    v16 = sub_29A226E58((a1 + 32), a2);
  }

  else
  {
    *v14 = *a2;
    *(v14 + 16) = *(a2 + 16);
    v15 = *(a2 + 24);
    *(v14 + 40) = *(a2 + 40);
    *(v14 + 24) = v15;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v16 = v14 + 48;
  }

  *(a1 + 40) = v16;
  if (v20 < 0)
  {
    operator delete(v18);
  }
}

void sub_29A2269A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2269E4(std::runtime_error *this)
{
  this->__vftable = &unk_2A2048868;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    sub_29A014BEC(imp);
  }

  std::runtime_error::~runtime_error(this);

  operator delete(v3);
}

char *sub_29A226A44(uint64_t a1)
{
  result = *(a1 + 16);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_29A226A5C@<X0>(char **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  result = sub_29A226AB8(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29A226AB8(uint64_t a1, char **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2048890;
  sub_29A008E78((a1 + 24), *a2);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void sub_29A226B40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2048890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A226BB4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  sub_29A226BFC(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29A226BFC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A226C50(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A226C50(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_29A226CA0(uint64_t a1)
{
  sub_29A00B6DC(&v10);
  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 47);
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = sub_29A00911C(&v10, v3, v4);
  v15 = 58;
  v6 = sub_29A00911C(v5, &v15, 1);
  v7 = MEMORY[0x29C2C1F00](v6, *(a1 + 8));
  v15 = 58;
  v8 = sub_29A00911C(v7, &v15, 1);
  MEMORY[0x29C2C1F00](v8, *(a1 + 16));
  std::stringbuf::str();
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
  return MEMORY[0x29C2C4390](&v14);
}

uint64_t sub_29A226E58(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[48 * v6];
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 16);
  v9 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 40);
  *(v8 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *&v18 = v8 + 48;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A226FA0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A2270E4(&v16);
  return v15;
}

void sub_29A226F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2270E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A226FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      v7 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v7;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v5 += 48;
    }
  }

  return sub_29A227064(v9);
}

uint64_t sub_29A227064(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A22709C(a1);
  }

  return a1;
}

void sub_29A22709C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 48;
  }
}

uint64_t sub_29A2270E4(uint64_t a1)
{
  sub_29A22711C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A22711C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_29A227178(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484C90;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::pad<PXR_INTERNAL_NS_pegtl::one<'='>, PXR_INTERNAL_NS_pegtl::blank>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22724C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A2272AC(void *a1)
{
    ;
  }

  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 61)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

uint64_t sub_29A227328(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 64) && *v4 == 46)
  {
    v2 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v2;
    ++*(a1 + 56);
  }

  do
  {
      ;
    }
  }

  while ((sub_29A2273BC(a1) & 1) != 0);
  return 1;
}

void sub_29A2273B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2273BC(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 124 && v2 != 45)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  return 1;
}

void sub_29A22740C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CA0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::VarSelClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2274D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A227538(void *a1)
{
    ;
  }

  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 125)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
    ;
  }

  return 1;
}

__n128 sub_29A2275B4(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
    ;
  }

  v2 = *(a1 + 32);
  if (v2 == *(a1 + 64) || *v2 != 123)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  else
  {
    v3 = *(a1 + 40) + 1;
    *(a1 + 32) = v2 + 1;
    *(a1 + 40) = v3;
    ++*(a1 + 56);
      ;
    }
  }

  return result;
}

uint64_t sub_29A227648(void *a1)
{
  if ((sub_29A2264A0(a1) & 1) == 0)
  {
    sub_29A22637C(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A227178(a1);
  }

  sub_29A227328(a1);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A22740C(a1);
  }

  return 1;
}

void sub_29A2276E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2276F0(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 47)
  {
    return sub_29A227734(a1, a2);
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  return 1;
}

uint64_t sub_29A227734(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A227780(a1, a2);
  if (v4)
  {
      ;
    }
  }

  return v4;
}

uint64_t sub_29A227780(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A226234(a1);
  if (v4)
  {
    sub_29A22780C(a1, a2);
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A227AC0(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A227800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22780C(void *a1, uint64_t a2)
{
  if ((sub_29A22788C(a1, a2) & 1) == 0)
  {
    sub_29A22637C(a1);
  }

  if ((sub_29A2272AC(a1) & 1) == 0)
  {
    sub_29A227178(a1);
  }

  sub_29A22796C(a1, a2);
  if ((sub_29A227538(a1) & 1) == 0)
  {
    sub_29A22740C(a1);
  }

  return 1;
}

uint64_t sub_29A22788C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2264A0(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A22790C(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A227900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

double sub_29A22790C(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  result = *&__dst;
  *(a2 + 32) = __dst;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_29A22796C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2279EC(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A227A60(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2279E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2279EC(void *a1)
{
  v2 = a1[4];
  if (v2 != a1[8] && *v2 == 46)
  {
    v3 = a1[5] + 1;
    a1[4] = v2 + 1;
    a1[5] = v3;
    ++a1[7];
  }

  do
  {
      ;
    }
  }

  while ((sub_29A2273BC(a1) & 1) != 0);
  return 1;
}

double sub_29A227A60(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(&__dst, *a1, *(*(a1 + 32) + 8) - *a1);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  result = *&__dst;
  *(a2 + 56) = __dst;
  *(a2 + 72) = v5;
  return result;
}

__n128 sub_29A227B7C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v7.n128_u64[0] != *(a1 + 64) && *v7.n128_u64[0] == 46 && (v5 = *(a1 + 40) + 1, *(a1 + 32) = v7.n128_u64[0] + 1, *(a1 + 40) = v5, ++*(a1 + 56), sub_29A227C28(a1, a2)))
  {
    sub_29A227E9C(a1, a2);
  }

  else
  {
    result = v7;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void sub_29A227C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A227C28(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A227CA8(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A227DA4(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A227C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A227CA8(__n128 *a1)
{
  v2 = sub_29A225AEC(a1);
  if (v2)
  {
      ;
    }

    do
    {
      sub_29A227D00(a1);
    }

    while ((v3 & 1) != 0);
  }

  return v2;
}

__n128 sub_29A227D00(__n128 *a1)
{
  v1 = a1 + 2;
  v5 = a1[2];
  v6 = a1[3];
  if (v5.n128_u64[0] != a1[4].n128_u64[0] && *v5.n128_u64[0] == 58 && (v3 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v5.n128_u64[0] + 1, a1[2].n128_u64[1] = v3, ++a1[3].n128_u64[1], sub_29A225AEC(a1)))
  {
      ;
    }
  }

  else
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A227D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A227DA4(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((*(a2 + 8) - 8));
  if (!v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v4);
    v6 = *(a2 + 8);
    sub_29A2258F0((v6 - 8), v5);
    sub_29A225948((v6 - 4), v5 + 1);
  }

  v7 = (*(a2 + 8) - 8);
  sub_29A225F00(a1, &v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(v7, &v8, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A227E9C(void *a1, uint64_t a2)
{
  if (sub_29A227F0C(a1, a2))
  {
    return 1;
  }

  sub_29A228B64(a1);
  if (v4)
  {
    sub_29A228D14(a1, a2);
    return 1;
  }

  return sub_29A2292E8(a1, a2);
}

uint64_t sub_29A227F0C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A227F88(a1, a2);
  if (v4)
  {
    sub_29A228194(a1, a2);
    sub_29A22871C(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A227F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A227F88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 91)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A228020(v6, a2);
  return 1;
}

void sub_29A228014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A228020(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 >= *(a2 + 16))
  {
    result = sub_29A22807C(a2);
    v4 = result;
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 2;
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v3);
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v5 + 1);
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_29A22807C(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 3;
  v2 = v1 + 1;
  if ((v1 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 2 > v2)
  {
    v2 = v4 >> 2;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    v5 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v17 = a1;
  if (v5)
  {
    v6 = sub_29A00C9BC(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = &v6[8 * v1];
  v14 = v6;
  v15 = v7;
  *(&v16 + 1) = &v6[8 * v5];
  *v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v7 + 1);
  *&v16 = v7 + 8;
  v8 = *(a1 + 8);
  v9 = &v7[*a1 - v8];
  sub_29A1E291C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A1E29E8(&v14);
  return v13;
}

void sub_29A228180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A228194(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_29A225724() & 1) == 0)
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    sub_29A228214(a1);
  }

  *(a2 + 24) = 0;
  if ((sub_29A228550(a1, a2) & 1) == 0)
  {
    sub_29A228428(a1);
  }

  return 1;
}

void sub_29A228208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A228214(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2282E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A228340(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 == *(a1 + 64) || *v4 != 46)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v4 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  v6[0] = v4;
  v6[1] = v5;
  v7 = a1 + 24;
  sub_29A2283D8(v6, a2);
  return 1;
}

void sub_29A2283CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

int *sub_29A2283D8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(a1);
  v4 = *(a2 + 8);
  sub_29A2258F0((v4 - 8), v3);

  return sub_29A225948((v4 - 4), v3 + 1);
}

void sub_29A228428(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CC0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::TargetPathClose");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2284F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A228550(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v4 != *(a1 + 64) && *v4 == 93)
  {
    v2 = *(a1 + 40) + 1;
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v2;
    ++*(a1 + 56);
    v6[0] = v4;
    v6[1] = v5;
    v7 = a1 + 24;
    sub_29A2285E8(v6, a2);
  }

  return 0;
}

void sub_29A2285DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

void sub_29A2285E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v7[0] = *(v3 - 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((v3 - 8));
  v7[1] = *(v3 - 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v3 - 4));
  v4 = *(a2 + 8);
  sub_29A1E230C(a2, (v4 - 8));
  *(a2 + 8) = v4 - 8;
  v5 = (v4 - 16);
  if (*(a2 + 24))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(v5, v7, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(v5, v7, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29A2286F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A22871C(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 46)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v3;
  ++a1[7];
  sub_29A22877C(a1, a2);
  return 1;
}

uint64_t sub_29A22877C(void *a1, uint64_t a2)
{
  if ((sub_29A228910(a1, a2) & 1) == 0)
  {
    sub_29A2287E4(a1);
  }

  sub_29A228A48(a1, a2);
  return 1;
}

void sub_29A2287D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A2287E4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CD0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::RelationalAttributeName");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A2288B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A228910(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A227CA8(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A228990(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A228984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A228990(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - 8);
  sub_29A225F00(a1, &v3);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(v2, &v3, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A228A48(void *a1, uint64_t a2)
{
  if (sub_29A227F88(a1, a2))
  {
    sub_29A228AC8(a1, a2, v4, v5);
    return 1;
  }

  sub_29A228B64(a1);
  if (v6)
  {
    sub_29A228D14(a1, a2);
    return 1;
  }

  return sub_29A2292E8(a1, a2);
}

uint64_t sub_29A228AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if ((sub_29A225724(a1, a2, a3, a4) & 1) == 0)
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    sub_29A228214(a1);
  }

  *(a2 + 24) = 0;
  if ((sub_29A228550(a1, a2) & 1) == 0)
  {
    sub_29A228428(a1);
  }

  return 1;
}

void sub_29A228B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(v12 + 32) = a11;
  *(v12 + 48) = a12;
  *(v12 + 32) = a9;
  *(v12 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A228B64(uint64_t a1)
{
  v1 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5.n128_u64[0] == *(a1 + 64) || *v5.n128_u64[0] != 46 || (v2 = *(a1 + 40) + 1, *(a1 + 32) = v5.n128_u64[0] + 1, *(a1 + 40) = v2, ++*(a1 + 56), result.n128_u64[0] = sub_29A228BF4(a1).n128_u64[0], (v4 & 1) == 0))
  {
    result = v5;
    *v1 = v5;
    v1[1] = v6;
  }

  return result;
}

void sub_29A228BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A228BF4(uint64_t a1)
{
  if (sub_29A228C40(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A228C40(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1886413165 || *(v1 + 4) != 29285)
  {
    return 0;
  }

  v4 = a1[5] + 6;
  a1[4] = v1 + 6;
  a1[5] = v4;
  a1[7] += 6;
  return 1;
}

uint64_t sub_29A228CB4(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 & 0xFFFFFFDF) - 65 >= 0x1A && v2 != 95 && (v2 - 48) > 9)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A228D14(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A228D84(a1, a2);
  if (v4)
  {
    sub_29A2290B8(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A228D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A228D84(uint64_t a1, uint64_t a2)
{
  if ((sub_29A227F88(a1, a2) & 1) == 0)
  {
    sub_29A228DCC(a1);
  }

  sub_29A228F08(a1, a2, v4, v5);
  return 1;
}

void sub_29A228DCC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x80uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CE0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::BracketPath<pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A228EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A228F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if ((sub_29A225724(a1, a2, a3, a4) & 1) == 0)
  {
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    sub_29A228F8C(a1);
  }

  *(a2 + 24) = 1;
  if ((sub_29A228550(a1, a2) & 1) == 0)
  {
    sub_29A228428(a1);
  }

  return 1;
}

void sub_29A228F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

void sub_29A228F8C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::MapperPath");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A229058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

__n128 sub_29A2290B8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5.n128_u64[0] == *(a1 + 64) || *v5.n128_u64[0] != 46 || (v3 = *(a1 + 40) + 1, *(a1 + 32) = v5.n128_u64[0] + 1, *(a1 + 40) = v3, ++*(a1 + 56), (sub_29A229148(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A22913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A229148(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2291D4(a1);
  if (v4)
  {
      ;
    }

    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A229230(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A2291C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2291D4(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 97) >= 0x1A && v2 != 95 && (v2 - 65) > 0x19)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

void sub_29A229230(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - 8);
  sub_29A225F00(a1, &v3);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(v2, &v3, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29A2292E8(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8] || *v2 != 46)
  {
    return 0;
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  if ((sub_29A229490(a1, a2) & 1) == 0)
  {
    sub_29A229364(a1);
  }

  return 1;
}

void sub_29A229364(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CB0;
  strcpy(v5.__r_.__value_.__l.__data_, "pxrInternal__aapl__pxrReserved__::Sdf_PathParser::Expression");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A229430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A229490(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_29A229510(a1);
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = a1 + 24;
    sub_29A229610(v7, a2);
  }

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_29A229504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A229510(uint64_t a1)
{
  if (sub_29A22955C(a1))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    sub_29A228CB4(a1);
    result = v3;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A22955C(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x6973736572707865 || *(v1 + 8) != 28271)
  {
    return 0;
  }

  v4 = a1[5] + 10;
  a1[4] = v1 + 10;
  a1[5] = v4;
  a1[7] += 10;
  return 1;
}

uint64_t sub_29A22967C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2296EC(a1, a2);
  if (v4)
  {
    sub_29A229954(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A2296E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2296EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A229738(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A2298C4(a1, a2);
    }

    while ((v5 & 1) != 0);
  }

  return v4;
}

uint64_t sub_29A229738(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A2297B8(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A229818(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A2297AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2297B8(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 11822)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

void sub_29A229818(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((*(a2 + 8) - 8));
  if (!v3)
  {
    v4 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v3);
    v5 = *(a2 + 8);
    sub_29A2258F0((v5 - 8), v4);
    sub_29A225948((v5 - 4), v4 + 1);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((*(a2 + 8) - 8), &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

__n128 sub_29A2298C4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5.n128_u64[0] == *(a1 + 64) || *v5.n128_u64[0] != 47 || (v3 = *(a1 + 40) + 1, *(a1 + 32) = v5.n128_u64[0] + 1, *(a1 + 40) = v3, ++*(a1 + 56), (sub_29A229738(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A229948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A229954(__n128 *a1, uint64_t a2)
{
  v2 = a1 + 2;
  v5 = a1[2];
  v6 = a1[3];
  if (v5.n128_u64[0] == a1[4].n128_u64[0] || *v5.n128_u64[0] != 47 || (v3 = a1[2].n128_u64[1] + 1, a1[2].n128_u64[0] = v5.n128_u64[0] + 1, a1[2].n128_u64[1] = v3, ++a1[3].n128_u64[1], (sub_29A2299E4(a1, a2) & 1) == 0))
  {
    result = v5;
    *v2 = v5;
    v2[1] = v6;
  }

  return result;
}

void sub_29A2299D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A2299E4(void *a1, uint64_t a2)
{
  if (sub_29A229A44(a1, a2))
  {
    sub_29A227B7C(a1, a2);
    return 1;
  }

  else
  {

    return sub_29A229AB4(a1, a2);
  }
}

uint64_t sub_29A229A44(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A225A10(a1, a2);
  if (v4)
  {
    sub_29A227734(a1, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A229AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A229AB4(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2 == a1[8])
  {
    return 0;
  }

  if (*v2 != 46)
  {
    return 0;
  }

  v5 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v5;
  ++a1[7];
  result = sub_29A227C28(a1, a2);
  if (result)
  {
    sub_29A227E9C(a1, a2);
    return 1;
  }

  return result;
}

__n128 sub_29A229B3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (sub_29A229A44(a1, a2))
  {
    result.n128_u64[0] = sub_29A227B7C(a1, a2).n128_u64[0];
  }

  else if ((sub_29A229AB4(a1, a2) & 1) == 0)
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_29A229BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A229BB8(uint64_t a1)
{
  if ((sub_29A229D1C(a1) & 1) == 0 && v2)
  {
    sub_29A229BF8(a1);
  }

  return 1;
}

void sub_29A229BF8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B484CF0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::eolf");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A229CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A229D1C(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *v2;
  if (v4 != 10)
  {
    v8 = v3 >= 2 && v4 == 13;
    if (v8 && v2[1] == 10)
    {
      v5 = 2;
      goto LABEL_4;
    }

    return 0;
  }

  v5 = 1;
LABEL_4:
  v6 = 1;
  v7 = vdupq_n_s64(1uLL);
  v7.i64[0] = v5;
  *(a1 + 40) = vaddq_s64(*(a1 + 40), v7);
  *(a1 + 56) = 1;
  *(a1 + 32) = &v2[v5];
  return v6;
}

uint64_t sub_29A229D90(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_29A229DD4(char *__dst, __int128 *a2, char *__s)
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

  v6 = __dst[23];
  if (v6 < 0)
  {
    v7 = *__dst;
    v6 = *(__dst + 1);
  }

  else
  {
    v7 = __dst;
  }

  *(__dst + 3) = v7;
  *(__dst + 4) = v7;
  *(__dst + 40) = xmmword_29B430070;
  *(__dst + 7) = 1;
  *(__dst + 8) = &v7[v6];
  sub_29A008E78(__dst + 9, __s);
  *(__dst + 12) = 0;
  return __dst;
}

void sub_29A229E68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A229F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void *sub_29A229F58(void *a1, atomic_uint **a2, uint64_t *a3, int a4)
{
  v7 = sub_29A22B228(a1, a2, a3);
  *v7 = &unk_2A20489A8;
  v7[4] = 0;
  *(v7 + 10) = a4;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a2) & 1) == 0)
  {
    v8 = sub_29A1E045C(a2);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_29A22B284(v8, &v13);
  }

  return a1;
}

void sub_29A22A048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  *(v3 - 40) = va1;
  sub_29A012C90((v3 - 40));
  *(v3 - 40) = va;
  sub_29A012C90((v3 - 40));
  sub_29A012C90(va1);
  v5 = v2[4];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A22B198(v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor::~Sdf_SubLayerListEditor(pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor *this)
{
  *this = &unk_2A20489A8;
  v4 = (this + 48);
  sub_29A012C90(&v4);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *this = &unk_2A2048A30;
  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((this + 8));
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor::~Sdf_SubLayerListEditor(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor::_OnEdit(uint64_t a1)
{
  v1 = sub_29A1E045C((a1 + 8));
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  __p = 0;
  v4 = 0;
  v5 = 0;
  sub_29A22A3FC(v1, &v6);
}

void sub_29A22A3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A22A3FC(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v3);
  if (v4 && (sub_29A1DF804(&v3) & 1) != 0 && (v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(&v3);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void sub_29A22A4D4()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048AA8;
  sub_29A22B8E0();
}

void sub_29A22A564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A22A5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v4 = "List editor is expired";
  }

  else
  {
    v5 = sub_29A1E045C((a1 + 8));
    result = pxrInternal__aapl__pxrReserved__::SdfSpec::PermissionToEdit(v5);
    if (result)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return result;
    }

    v4 = "Permission denied";
  }

  result = sub_29A008E78(a2, v4);
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_29A22A610(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_2A2048958, &unk_2A2048968, 0);
  if (v3)
  {
    if (*(a1 + 40) == v3[10])
    {
      sub_29A22B958(a1);
      return 1;
    }

    v5 = "sdf/vectorListEditor.h";
    v6 = "CopyEdits";
    v7 = 206;
    v8 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, FieldStorageType = std::string]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Cannot copy from list editor in different mode");
  }

  else
  {
    v5 = "sdf/vectorListEditor.h";
    v6 = "CopyEdits";
    v7 = 201;
    v8 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::CopyEdits(const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, FieldStorageType = std::string]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Cannot copy from list editor of different type");
  }

  return 0;
}

BOOL sub_29A22A71C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    memset(v3, 0, sizeof(v3));
    sub_29A22B958(a1);
    v4 = v3;
    sub_29A012C90(&v4);
  }

  return v1 != 0;
}

void sub_29A22A770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A22A788(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    memset(v3, 0, sizeof(v3));
    sub_29A22B958(a1);
    v4 = v3;
    sub_29A012C90(&v4);
  }

  return v1 == 0;
}

void sub_29A22A7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A22A7F4(uint64_t result)
{
  v1 = *MEMORY[0x29EDCA608];
  if (*(result + 48) != *(result + 56))
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
  }

  return result;
}

void sub_29A22A934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_29A22C484(v9 - 72);
  sub_29A22C174(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A22A960(uint64_t result)
{
  if (*(result + 48) != *(result + 56))
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
  }

  return result;
}

uint64_t sub_29A22AA4C(uint64_t a1, int a2)
{
  if (*(a1 + 40) == a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
  }

  return 0;
}

void sub_29A22AB78(uint64_t a1, int a2, void *lpsrc)
{
  v5 = __dynamic_cast(lpsrc, &unk_2A2048958, &unk_2A2048968, 0);
  if (v5)
  {
    if (*(a1 + 40) == a2 || v5[10] == a2)
    {
      pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
    }
  }

  else
  {
    v6[0] = "sdf/vectorListEditor.h";
    v6[1] = "ApplyList";
    v6[2] = 305;
    v6[3] = "virtual void pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::ApplyList(SdfListOpType, const Sdf_ListEditor<TP> &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, FieldStorageType = std::string]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Cannot apply from list editor of different type");
  }
}

uint64_t sub_29A22ADA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  v9 = *a3 == v6 || v8 == v7;
  v10 = *a4;
  if (!v9)
  {
    v11 = 0;
    v10 = *a4;
    while (1)
    {
      v12 = v8 + v11;
      v13 = *(v5 + v11 + 23);
      if (v13 >= 0)
      {
        v14 = *(v5 + v11 + 23);
      }

      else
      {
        v14 = *(v5 + v11 + 8);
      }

      v15 = *(v12 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v12 + 8);
      }

      if (v14 != v15)
      {
        break;
      }

      if (v13 >= 0)
      {
        v17 = (v5 + v11);
      }

      else
      {
        v17 = *(v5 + v11);
      }

      if (v16 >= 0)
      {
        v18 = (v8 + v11);
      }

      else
      {
        v18 = *v12;
      }

      if (!memcmp(v17, v18, v14))
      {
        v11 += 24;
        if (v11 + v5 != v6)
        {
          v10 += 24;
          if (v11 + v8 != v7)
          {
            continue;
          }
        }
      }

      v10 = v8 + v11;
      break;
    }
  }

  if (v10 == v7)
  {
LABEL_41:
    v27 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetSchema(v27);
  }

  v19 = v10;
  while (v8 == v19)
  {
LABEL_40:
    v19 += 24;
    if (v19 == v7)
    {
      goto LABEL_41;
    }
  }

  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = *(v19 + 23);
  }

  else
  {
    v21 = *(v19 + 8);
  }

  v22 = v8;
  while (1)
  {
    v23 = *(v22 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v21 == v23)
    {
      v25 = v20 >= 0 ? v19 : *v19;
      v26 = v24 >= 0 ? v22 : *v22;
      if (!memcmp(v25, v26, v21))
      {
        break;
      }
    }

    v22 += 24;
    if (v22 == v19)
    {
      goto LABEL_40;
    }
  }

  v37[0] = "sdf/listEditor.h";
  v37[1] = "_ValidateEdit";
  v37[2] = 245;
  v37[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Sdf_ListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_ValidateEdit(SdfListOpType, const value_vector_type &, const value_vector_type &) const [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
  v38 = 0;
  v28 = __p;
  pxrInternal__aapl__pxrReserved__::TfStringify(v19, __p);
  if (v34 < 0)
  {
    v28 = __p[0];
  }

  v29 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v29)
  {
    v30 = (v29 + 16);
    if (*(v29 + 39) < 0)
    {
      v30 = *v30;
    }
  }

  else
  {
    v30 = "";
  }

  sub_29A1E24EC(a1, &v35);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v37, 1, "Duplicate item '%s' not allowed for field '%s' on <%s>", v28, v30, Text);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36);
  sub_29A1DE3A4(&v35);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_29A22B0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A22B13C(uint64_t a1, int a2)
{
  if (*(a1 + 40) == a2)
  {
    return (a1 + 48);
  }

  {
    return &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy,std::string>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty;
  }

  v5[1] = v2;
  v5[2] = v3;
  sub_29B294874(v5);
  return v5[0];
}

void *sub_29A22B198(void *a1)
{
  *a1 = &unk_2A2048A30;
  v2 = a1[2];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 1));
  return a1;
}

void sub_29A22B1FC(pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor::~Sdf_SubLayerListEditor(a1);

  operator delete(v1);
}

void *sub_29A22B228(void *result, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a2;
  *result = &unk_2A2048A30;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29A22B284(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v3);
  if (v4 && (sub_29A1DF4B8(&v3) & 1) != 0 && (v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(&v3);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

double *sub_29A22B368(double *a1, unint64_t a2)
{
  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    sub_29A22B3CC(a1, a2);
  }

  return a1;
}

void sub_29A22B3B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *sub_29A22B3CC(double *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = 16 * a2;
    v5 = &v3[2 * a2];
    do
    {
      result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v3, 0.0, 1.0);
      v3 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = v5;
  }

  *(v2 + 1) = v3;
  return result;
}

uint64_t sub_29A22B430(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      v8 = *(v3 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v3 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 : *v3;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v3 += 24;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t *sub_29A22B4C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A22B4E4(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22B614(a1);
}

void sub_29A22B614(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 6, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 1) = v2;
      operator delete(v2);
    }

    operator delete(v1);
  }
}

unint64_t sub_29A22B680(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 4;
    do
    {
      Hash = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash(v2);
      if (v4)
      {
        Hash += (Hash + v5 + (Hash + v5) * (Hash + v5)) >> 1;
      }

      v2 = (v2 + 16);
      v4 = 1;
      v5 = Hash;
      --v6;
    }

    while (v6);
    v3 = 0x9E3779B97F4A7C55 * Hash;
  }

  return bswap64(v3);
}

BOOL sub_29A22B700(double **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 2;
    v4 += 2;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29A22B774(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29A22B7DC();
  }

  return *a1;
}

void sub_29A22B7DC()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void *sub_29A22B854(void *a1, double **a2)
{
  sub_29A00911C(a1, "[ ", 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, v4);
      sub_29A00911C(v6, " ", 1);
      v4 += 2;
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

void sub_29A22B8E0()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void sub_29A22B958(uint64_t a1)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((a1 + 8)))
  {
    v2 = sub_29A1E045C((a1 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v2, v3);
    sub_29A1DA6E4(v3);
  }

  v3[0] = "sdf/vectorListEditor.h";
  v3[1] = "_UpdateFieldData";
  v3[2] = 125;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_UpdateFieldData(const value_vector_type &) [TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, FieldStorageType = std::string]";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Invalid owner.");
}

void sub_29A22BBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14)
{
  a9 = &a14;
  sub_29A012C90(&a9);
  sub_29A1DD644(&a12);
  _Unwind_Resume(a1);
}

void sub_29A22BC54()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2048B60;
  sub_29A22C0F0();
}

void sub_29A22BCE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A22BD00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A22BD20(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22BE8C(a1);
}

unint64_t sub_29A22BD38(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A1C5CF0(&v3, *v1, 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 8) - *v1) >> 3));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

void sub_29A22BE8C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A012C90(&v2);
      operator delete(v1);
    }
  }
}

BOOL sub_29A22BEE4(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_29A0EC4B8(&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_29A22BF64(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29A22BFCC();
  }

  return *a1;
}

void sub_29A22BFCC()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void *sub_29A22C050(void *a1, uint64_t *a2)
{
  sub_29A00911C(a1, "[ ", 2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = *(v4 + 8);
      }

      v9 = sub_29A00911C(a1, v7, v8);
      sub_29A00911C(v9, " ", 1);
      v4 += 24;
    }

    while (v4 != v5);
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

void sub_29A22C0F0()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void **sub_29A22C174(void **a1)
{
  v3 = a1 + 16;
  sub_29A012C90(&v3);
  v3 = a1 + 13;
  sub_29A012C90(&v3);
  v3 = a1 + 10;
  sub_29A012C90(&v3);
  v3 = a1 + 7;
  sub_29A012C90(&v3);
  v3 = a1 + 4;
  sub_29A012C90(&v3);
  v3 = a1 + 1;
  sub_29A012C90(&v3);
  return a1;
}

__n128 sub_29A22C208(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2048C28;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A22C254(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2048C28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A22C294(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2048C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A22C2E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  (*(*v2 + 48))(__p);
  if (v6 == 1)
  {
    if (SHIBYTE(v5) < 0)
    {
      sub_29A008D14(a2, __p[0], __p[1]);
    }

    else
    {
      *a2 = *__p;
      *(a2 + 16) = v5;
    }

    *(a2 + 24) = 1;
  }

  else
  {
    sub_29A22C3D0(a2, __p);
  }

  if (v6 == 1 && SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A22C3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A22C3D0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_29A22C420(a1, a2);
  return a1;
}

void sub_29A22C400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_29B2948E4(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A22C420(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_29A008D14(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    v2[24] = 1;
  }

  return __dst;
}

uint64_t sub_29A22C484(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_29A22C504@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v3 = result[9];
  if (v3)
  {
    v4 = *result;
    v5[1] = &off_2A2044DD0;
    sub_29A1B01B8(v5, a2);
    v3(v4, v5);
    return sub_29A186B14(v5);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

void sub_29A22C5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParseLayer(uint64_t a1, void *a2, const std::string *a3, const std::string *a4, char a5, uint64_t *a6, _BYTE *a7)
{
  v33 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v24, "Sdf", "Sdf_ParseLayer");
  pxrInternal__aapl__pxrReserved__::Sdf_TextParserContext::Sdf_TextParserContext(&v27);
  v14 = v31;
  v31 = *a6;
  sub_29B293C98(a6);
  sub_29B290B2C(&v31, v14);
  std::string::operator=(v29, a1);
  std::string::operator=(&v27, a3);
  std::string::operator=(&v28, a4);
  v15 = (*(**a2 + 16))();
  sub_29A00944C(__p, v15, 32);
  if (v23 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((*(**a2 + 32))(*a2, v16, v15, 0) != v15)
  {
    v20[0] = "sdf/textFileFormatParser.cpp";
    v20[1] = "Sdf_ParseLayer";
    v20[2] = 4259;
    v20[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_ParseLayer(const std::string &, const std::shared_ptr<ArAsset> &, const std::string &, const std::string &, BOOL, SdfDataRefPtr, SdfLayerHints *)";
    v21 = 0;
    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Failed to read asset contents @%s@: an error occurred while reading", v17);
  }

  sub_29A275C64(v20, __p, a1);
  v26[0] = &unk_2A2049798;
  v26[1] = &v27;
  v26[2] = v20;
  v26[3] = v26;
  sub_29A2762F0(v26, v30);
  sub_29A25FD10(v26);
  if (a5)
  {
    if ((sub_29A25F6F4(v20, &v27) & 1) == 0)
    {
      sub_29A25F74C(v20);
    }

    v18 = 1;
  }

  else
  {
    v18 = sub_29A22D13C(v20, &v27);
  }

  *a7 = v32;
  sub_29A229D90(v20);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A25F878(&v27);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v25, v24);
  }

  return v18;
}

void sub_29A22CAD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  __cxa_end_catch();
  sub_29A229D90(&a16);
  JUMPOUT(0x29A22C878);
}

void sub_29A22CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A229D90(va);
  JUMPOUT(0x29A22C878);
}

void sub_29A22CB34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A22CB64);
}

std::runtime_error *sub_29A22CB90(std::runtime_error *a1, char *a2, uint64_t a3)
{
  sub_29A2266C8(v6, a3 + 32, (a3 + 72));
  sub_29A226724(a1, a2, v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A22CBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_ParseLayerFromString(uint64_t *a1, const std::string *a2, const std::string *a3, uint64_t *a4)
{
  v26[67] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v20, "Sdf", "Sdf_ParseLayerFromString");
  pxrInternal__aapl__pxrReserved__::Sdf_TextParserContext::Sdf_TextParserContext(&v23);
  v8 = v26[0];
  v26[0] = *a4;
  sub_29B293C98(a4);
  sub_29B290B2C(v26, v8);
  std::string::operator=(&v23, a2);
  std::string::operator=(v24, a3);
  v9 = *(a1 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = a1[1];
  }

  v13[0] = v10;
  v13[1] = v10;
  v14 = xmmword_29B430070;
  v15 = 1;
  v16 = v10 + v9;
  sub_29A008E78(&__p, "");
  v19 = 0;
  v22[0] = &unk_2A2049818;
  v22[1] = &v23;
  v22[2] = v13;
  v22[3] = v22;
  sub_29A2762F0(v22, v25);
  sub_29A25FD10(v22);
  v11 = sub_29A25FE14(v13, &v23);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  sub_29A25F878(&v23);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }

  return v11;
}

void sub_29A22CDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, void *__src, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, __int128 a30, uint64_t a31, void *a32, char a33, int a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *sub_29A22D0C0(std::runtime_error *a1, char *a2, uint64_t a3)
{
  sub_29A2266C8(v6, a3 + 8, (a3 + 48));
  sub_29A226724(a1, a2, v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A22D120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A22D13C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if ((sub_29A22D1B8(a1, a2) & 1) == 0)
  {
    sub_29A25F4A0(a1);
  }

  if (*(a1 + 32) != *(a1 + 64))
  {
    sub_29A25F5CC(a1);
  }

  return 1;
}

void sub_29A22D1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22D1B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22D238(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A25F380(v8, a2);
  }

  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return v4;
}

void sub_29A22D22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22D238(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A22D2A0(a1, a2);
  if (v4)
  {
      ;
    }

    sub_29A22E278(a1, a2);
      ;
    }
  }

  return v4;
}

uint64_t sub_29A22D2A0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22D320(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A22D6B4(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A22D314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22D320(void *a1)
{
  v2 = sub_29A22D378(a1);
  if (v2 && !sub_29A22D4EC(a1))
  {
    sub_29A22D580(a1);
  }

  return v2;
}

uint64_t sub_29A22D378(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 35)
  {
    sub_29A22D3C8(a1);
  }

  v2 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v2;
  ++a1[7];
  return 1;
}

void sub_29A22D3C8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B4850F0;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::one<'#'>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22D48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

BOOL sub_29A22D4EC(void *a1)
{
  v3 = 1;
  if ((sub_29A229D1C(a1) & 1) == 0 && v2)
  {
    do
    {
      v4 = a1[4];
      v5 = a1[8];
      v3 = v4 != v5;
      if (v4 == v5)
      {
        break;
      }

      if (*v4 == 10)
      {
        ++a1[6];
        v6 = 1;
      }

      else
      {
        v6 = a1[7] + 1;
      }

      a1[7] = v6;
      v7 = a1[5] + 1;
      a1[4] = v4 + 1;
      a1[5] = v7;
      if (sub_29A229D1C(a1))
      {
        break;
      }
    }

    while (v8);
  }

  return v3;
}

void sub_29A22D580(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0x60uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485100;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Eolf>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22D654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29A22D6B4(uint64_t a1, uint64_t a2)
{
  sub_29A02887C(&__p, *a1, *(*(a1 + 32) + 8) - *a1);
  pxrInternal__aapl__pxrReserved__::TfStringTrimRight(" \n\t\r", &__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v4 = std::string::append(&__p, " ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v51 = v4->__r_.__value_.__r.__words[2];
  v50 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = HIBYTE(v51);
  v7 = SHIBYTE(v51);
  v8 = v50;
  if (v51 >= 0)
  {
    v9 = &v50;
  }

  else
  {
    v9 = v50;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v11 = strlen(v9);
  if (size < v11 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), strncmp(p_str, v9, v11)))
  {
    pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &__str, &v49);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v49;
    }

    else
    {
      v47 = v49.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Magic Cookie '%s'.  Expected prefix of '%s'", v45, v46, v47, v9);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A22DB7C(exception, &__p, a1);
    __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
  }

  v13 = *(a2 + 47);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 32);
  }

  if (v13)
  {
    v15 = v14 >= 0 ? (a2 + 24) : *(a2 + 24);
    v16 = strlen(v15);
    if (size < v16 || strcmp(p_str + size - v16, v15))
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/textFileFormatParser.cpp";
      __p.__r_.__value_.__l.__size_ = "apply";
      __p.__r_.__value_.__r.__words[2] = 4099;
      v55 = "static void pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::TextParserAction<pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::LayerHeader>::apply(const Input &, Sdf_TextParserContext &) [Input = PXR_INTERNAL_NS_pegtl::internal::action_input<PXR_INTERNAL_NS_pegtl::memory_input<>>]";
      LOBYTE(v56) = 0;
      v17 = *(a2 + 48);
      v18 = *(a2 + 71);
      v19 = *(a2 + 23);
      v20 = *a2;
      v21 = v7 >= 0 ? v6 : *(&v50 + 1);
      std::string::basic_string(&v49, &__str, v21, 0xFFFFFFFFFFFFFFFFLL, &v53);
      v23 = v19 >= 0 ? a2 : v20;
      v24 = v18 >= 0 ? a2 + 48 : v17;
      v25 = (v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v49 : v49.__r_.__value_.__r.__words[0];
      v26 = *(a2 + 47) >= 0 ? a2 + 24 : *(a2 + 24);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "File '%s' is not the latest %s version (found '%s', expected '%s'). The file may parse correctly and yield incorrect results.", v22, v24, v23, v25, v26);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }
    }
  }

  v27 = *(a2 + 1088);
  v28 = *(a2 + 1096);
  if (v27 >= v28)
  {
    v30 = *(a2 + 1080);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
    v32 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v30) >> 3);
    if (2 * v33 > v32)
    {
      v32 = 2 * v33;
    }

    if (v33 >= 0x555555555555555)
    {
      v34 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v34 = v32;
    }

    v56 = a2 + 1080;
    if (v34)
    {
      v35 = sub_29A012C48(a2 + 1080, v34);
    }

    else
    {
      v35 = 0;
    }

    v36 = &v35[24 * v31];
    v37 = &v35[24 * v34];
    *v36 = 0;
    *(v36 + 1) = 0;
    *(v36 + 2) = 0;
    v29 = v36 + 24;
    v38 = *(a2 + 1080);
    v39 = *(a2 + 1088) - v38;
    v40 = &v36[-v39];
    memcpy(&v36[-v39], v38, v39);
    v41 = *(a2 + 1080);
    *(a2 + 1080) = v40;
    *(a2 + 1088) = v29;
    v42 = *(a2 + 1096);
    *(a2 + 1096) = v37;
    __p.__r_.__value_.__r.__words[2] = v41;
    v55 = v42;
    __p.__r_.__value_.__r.__words[0] = v41;
    __p.__r_.__value_.__l.__size_ = v41;
    sub_29A22DD90(&__p.__r_.__value_.__l.__data_);
  }

  else
  {
    *v27 = 0;
    v27[1] = 0;
    v29 = v27 + 3;
    v27[2] = 0;
  }

  *(a2 + 1088) = v29;
  v43 = sub_29A22DD10((a2 + 1024));
  v44 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v43);
  (*(*v43 + 64))(v43, v44, 7);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 0);
  if (v7 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29A22DAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *sub_29A22DB7C(std::runtime_error *a1, char *a2, uint64_t a3)
{
  sub_29A2266C8(&v6, a3, (*(a3 + 32) + 48));
  sub_29A226630(a1, a2, &v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29A22DBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A22DC00(const void **a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v17[4] = a1;
    if (v8)
    {
      v9 = sub_29A012C48(a1, v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = &v9[24 * v5];
    v11 = &v9[24 * v8];
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    v4 = v10 + 24;
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v4;
    v15 = a1[2];
    a1[2] = v11;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_29A22DD90(v17);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = v3 + 3;
    v3[2] = 0;
  }

  a1[1] = v4;
  return v4 - 3;
}

uint64_t sub_29A22DD10(uint64_t *a1)
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

void **sub_29A22DD90(void **a1)
{
  sub_29A22DDC4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A22DDC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29A124AB0(&v5);
  }
}

uint64_t sub_29A22DE18(void *a1)
{
  if (sub_29A2262B0(a1) & 1) != 0 || (sub_29A22DE78(a1))
  {
    return 1;
  }

  return sub_29A22DED0(a1);
}

uint64_t sub_29A22DE78(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 13 && v2 != 10)
  {
    return 0;
  }

  v4 = 1;
  sub_29A225BF4(a1 + 3, 1);
  return v4;
}

uint64_t sub_29A22DED0(uint64_t a1)
{
  if (sub_29A22DF34(a1) & 1) != 0 || (sub_29A22E080(a1))
  {
    return 1;
  }

  return sub_29A22E154(a1);
}

uint64_t sub_29A22DF34(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (v5 == *(a1 + 64) || *v5 != 35)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 1;
  *(a1 + 32) = v5 + 1;
  *(a1 + 40) = v2;
  ++*(a1 + 56);
  do
  {
    sub_29A22DFD4(a1);
  }

  while ((v3 & 1) != 0);
  return 1;
}

void sub_29A22DFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

__n128 sub_29A22DFD4(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = sub_29A229D1C(a1);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  if ((v2 & 1) != 0 || !v3 || !sub_29A22E040(a1))
  {
    result = v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

BOOL sub_29A22E040(uint64_t a1)
{
  v2 = sub_29A225B9C(a1);
  v3 = v2 & 0xFF00000000;
  if ((v2 & 0xFF00000000) != 0)
  {
    sub_29A225BF4((a1 + 24), BYTE4(v2));
  }

  return v3 != 0;
}

uint64_t sub_29A22E080(uint64_t a1)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = sub_29A22E0F4(a1);
  if (v2)
  {
    do
    {
      sub_29A22DFD4(a1);
    }

    while ((v3 & 1) != 0);
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v2;
}

void sub_29A22E0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22E0F4(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 12079)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A22E154(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (sub_29A22E1B8(a1))
  {
    while ((sub_29A22E218(a1) & 1) == 0)
    {
      if (!sub_29A22E040(a1))
      {
        goto LABEL_4;
      }
    }

    return 1;
  }

  else
  {
LABEL_4:
    result = 0;
    *(a1 + 32) = v3;
    *(a1 + 48) = v4;
  }

  return result;
}

uint64_t sub_29A22E1B8(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 10799)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A22E218(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 12074)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A22E278(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E2FC(a1, a2);
  if (v4)
  {
    sub_29A22E390(a1, a2);
      ;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A22E2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22E2FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  if (v5 == *(a1 + 64) || *v5 != 40)
  {
    return 0;
  }

  v3 = *(a1 + 40) + 1;
  *(a1 + 32) = v5 + 1;
  *(a1 + 40) = v3;
  ++*(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_PushContext(a2, 4u);
  *(a2 + 616) = 0;
  return 1;
}

void sub_29A22E384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *v10 = a9;
  v10[1] = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22E390(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
    ;
  }

  sub_29A22E3F0(a1, a2);
  if ((sub_29A24108C(a1, a2) & 1) == 0)
  {
    sub_29A241028(a1);
  }

  return 1;
}

uint64_t sub_29A22E3F0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = sub_29A22E468(a1, a2);
  if (v3)
  {
      ;
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return v3;
}

void sub_29A22E458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22E468(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v4 = sub_29A22E4C0(a1, a2);
  if (v4)
  {
    do
    {
      sub_29A240F1C(a1, a2);
    }

    while ((v5 & 1) != 0);
    sub_29A240F88(a1);
  }

  return v4;
}

uint64_t sub_29A22E4C0(void *a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A22E578(a1, a2))
  {
    return 1;
  }

  if (sub_29A23C478(a1))
  {
    sub_29A23C674(a1, a2);
    return 1;
  }

  return sub_29A23FE10(a1, a2);
}

uint64_t sub_29A22E530(void *a1, uint64_t a2)
{
  v4 = sub_29A23C478(a1);
  if (v4)
  {
    sub_29A23C674(a1, a2);
  }

  return v4;
}

uint64_t sub_29A22E578(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (sub_29A22E5EC(a1, a2) & 1) != 0 || (sub_29A2301AC(a1, a2) & 1) != 0 || (sub_29A23B8EC(a1, a2))
  {
    return 1;
  }

  return sub_29A23BAE4(a1, a2);
}

uint64_t sub_29A22E5EC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A22E66C(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A22F3A0(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A22E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22E66C(void *a1)
{
  if (sub_29A22E6F8(a1))
  {
    sub_29A22E764(a1);
    return 1;
  }

  if (sub_29A22EA20(a1))
  {
    return 1;
  }

  if (sub_29A22EE30(a1))
  {
    sub_29A22EE9C(a1);
    return 1;
  }

  return sub_29A22F0F8(a1);
}

uint64_t sub_29A22E6F8(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 10023 || *(v1 + 2) != 39)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A22E764(void *a1)
{
  while ((sub_29A22E6F8(a1) & 1) == 0)
  {
    if (!sub_29A22E7B4(a1))
    {
      sub_29A22E8CC(a1);
    }
  }

  return 1;
}

BOOL sub_29A22E7B4(void *a1)
{
  if (sub_29A22E80C(a1) & 1) != 0 || (sub_29A22E86C(a1))
  {
    return 1;
  }

  return sub_29A22E040(a1);
}

uint64_t sub_29A22E80C(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 23644)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

uint64_t sub_29A22E86C(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 10076)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

void sub_29A22E8CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485110;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::three<'\\''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', '\\''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22E9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A22EA20(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 39)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A22EA9C(a1) & 1) == 0)
  {
    sub_29A22ECDC(a1);
  }

  return 1;
}

uint64_t sub_29A22EA9C(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 39)
    {
      break;
    }

    if ((sub_29A22EB14(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A22EB14(void *a1)
{
  if (sub_29A22E80C(a1) & 1) != 0 || (sub_29A22E86C(a1))
  {
    return 1;
  }

  return sub_29A22EB74(a1);
}

uint64_t sub_29A22EB74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  if (!sub_29A22E040(a1))
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v7 = v2;
  *v8 = v2;
  *&v8[8] = v13;
  *&v8[24] = v14;
  v9 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v11 = *(a1 + 88);
  }

  v12 = 0;
  v15 = *v8;
  v16 = *&v8[16];
  v4 = sub_29A22EC88(&v7);
  if (*v8 == v9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *&v8[16] = v16;
  *v8 = v15;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
LABEL_10:
    result = 0;
    *(a1 + 32) = v2;
    *(a1 + 40) = v13;
    *(a1 + 56) = v14;
    return result;
  }

  return 1;
}

void sub_29A22EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{
  *(v20 + 32) = v21;
  *(v20 + 40) = a19;
  *(v20 + 56) = a20;
  _Unwind_Resume(a1);
}

uint64_t sub_29A22EC88(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if (v2 != 13 && v2 != 10)
  {
    return 0;
  }

  v4 = 1;
  sub_29A225BF4(a1, 1);
  return v4;
}

void sub_29A22ECDC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485120;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<'\\''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', '\\''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22EDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A22EE30(void *a1)
{
  v1 = a1[4];
  if ((a1[8] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 8738 || *(v1 + 2) != 34)
  {
    return 0;
  }

  v4 = a1[5] + 3;
  a1[4] = v1 + 3;
  a1[5] = v4;
  a1[7] += 3;
  return 1;
}

uint64_t sub_29A22EE9C(void *a1)
{
  while ((sub_29A22EE30(a1) & 1) == 0)
  {
    if (!sub_29A22EEEC(a1))
    {
      sub_29A22EFA4(a1);
    }
  }

  return 1;
}

BOOL sub_29A22EEEC(void *a1)
{
  if (sub_29A22E80C(a1) & 1) != 0 || (sub_29A22EF44(a1))
  {
    return 1;
  }

  return sub_29A22E040(a1);
}

uint64_t sub_29A22EF44(void *a1)
{
  v1 = a1[4];
  if (a1[8] - v1 < 2uLL)
  {
    return 0;
  }

  if (*v1 != 8796)
  {
    return 0;
  }

  v3 = a1[5] + 2;
  a1[4] = v1 + 1;
  a1[5] = v3;
  a1[7] += 2;
  return 1;
}

void sub_29A22EFA4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485130;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::three<''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', ''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22F098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_29A22F0F8(void *a1)
{
  v1 = a1[4];
  if (v1 == a1[8] || *v1 != 34)
  {
    return 0;
  }

  v3 = a1[5] + 1;
  a1[4] = v1 + 1;
  a1[5] = v3;
  ++a1[7];
  if ((sub_29A22F174(a1) & 1) == 0)
  {
    sub_29A22F24C(a1);
  }

  return 1;
}

uint64_t sub_29A22F174(void *a1)
{
  while (1)
  {
    v2 = a1[4];
    if (v2 != a1[8] && *v2 == 34)
    {
      break;
    }

    if ((sub_29A22F1EC(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = a1[5] + 1;
  a1[4] = v2 + 1;
  a1[5] = v4;
  ++a1[7];
  return 1;
}

uint64_t sub_29A22F1EC(void *a1)
{
  if (sub_29A22E80C(a1) & 1) != 0 || (sub_29A22EF44(a1))
  {
    return 1;
  }

  return sub_29A22EB74(a1);
}

void sub_29A22F24C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v5.__r_.__value_.__r.__words[0] = operator new(0xF0uLL);
  *&v5.__r_.__value_.__r.__words[1] = xmmword_29B485140;
  strcpy(v5.__r_.__value_.__l.__data_, "PXR_INTERNAL_NS_pegtl::until<PXR_INTERNAL_NS_pegtl::one<''>, PXR_INTERNAL_NS_pegtl::sor<PXR_INTERNAL_NS_pegtl::two<'\\\\'>, PXR_INTERNAL_NS_pegtl::string<'\\\\', ''>, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::Utf8NoEolf>>");
  v3 = std::string::insert(&v5, 0, "parse error matching ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7 = v3->__r_.__value_.__r.__words[2];
  v6 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_29A226558(exception, &v6, a1);
  __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
}

void sub_29A22F340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29A22F3A0(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  memset(&__p, 0, sizeof(__p));
  v4 = *a1;
  v5 = (*(*(a1 + 32) + 8) - *a1);
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = *(*(a1 + 32) + 8) - *a1;
  }

  if (v5 >= 3 && (!memcmp(*a1, "", v6) || !memcmp(v4, "'''", v6)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v4, v5, 3, 0, &__dst);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(v4, v5, 1, 0, &__dst);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __dst;
  v7 = *(*(a2 + 264) - 4);
  if (v7 > 22)
  {
    if (v7 > 43)
    {
      if ((v7 - 45) >= 2)
      {
        if (v7 == 44)
        {
          pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(&__p, &v35);
          if (v38 != 1)
          {
            sub_29A070BA0(*(a2 + 1160) - 24);
          }

          v26 = *(a1 + 32);
          sub_29A2266C8(&__dst, a1, (v26 + 48));
          WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v35);
          sub_29A276708(a2, v26, &__dst, WhyNot);
          if (v42 < 0)
          {
            operator delete(v41);
          }

          exception = __cxa_allocate_exception(0x20uLL);
          v29 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v35);
          sub_29A22DB7C(exception, v29, a1);
          __cxa_throw(exception, &unk_2A2048840, sub_29A2265D4);
        }

        goto LABEL_59;
      }

      if ((*(a2 + 600) & 1) == 0)
      {
        *(a2 + 600) = 1;
        std::string::operator=((a2 + 576), &__p);
        goto LABEL_59;
      }

      sub_29A008E78(&__dst, "string");
      v12 = pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::SetupFactory(a2 + 624, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if ((v12 & 1) == 0)
      {
        sub_29A008E78(&v35, "Unrecognized value typename 'string' for dictionary");
        v30 = *(a1 + 32);
        sub_29A2266C8(&__dst, a1, (v30 + 48));
        sub_29A276708(a2, v30, &__dst, &v35);
        if (v42 < 0)
        {
          operator delete(v41);
        }

        v31 = __cxa_allocate_exception(0x20uLL);
        sub_29A22DB7C(v31, &v35, a1);
        __cxa_throw(v31, &unk_2A2048840, sub_29A2265D4);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      v43 = 3;
      pxrInternal__aapl__pxrReserved__::Sdf_ParserValueContext::AppendValue((a2 + 624), &__dst);
      sub_29A224BA0(&__dst);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_ValueSetAtomic(a2, &v35))
      {
        v32 = *(a1 + 32);
        sub_29A2266C8(&__dst, a1, (v32 + 48));
        sub_29A276708(a2, v32, &__dst, &v35);
        if (v42 < 0)
        {
          operator delete(v41);
        }

        v33 = __cxa_allocate_exception(0x20uLL);
        sub_29A22DB7C(v33, &v35, a1);
        __cxa_throw(v33, &unk_2A2048840, sub_29A2265D4);
      }

      v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((*(a2 + 952) - 16), (a2 + 576));
      sub_29A1854E8(v21, (a2 + 928));
      *(a2 + 600) = 0;
      if (*(a2 + 599) < 0)
      {
        **(a2 + 576) = 0;
        *(a2 + 584) = 0;
      }

      else
      {
        *(a2 + 576) = 0;
        *(a2 + 599) = 0;
      }

LABEL_57:
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v35);
      }

      goto LABEL_59;
    }

    if (v7 != 23)
    {
      if (v7 == 25)
      {
        v18 = sub_29A22DD10((a2 + 1024));
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v19)
        {
          v19 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v35);
        __dst.__r_.__value_.__r.__words[0] = v35;
        __dst.__r_.__value_.__l.__size_ = &off_2A2044E88 + 1;
        if ((v35 & 7) != 0)
        {
          v20 = v35 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            __dst.__r_.__value_.__r.__words[0] = v20;
          }
        }

        (*(*v18 + 152))(v18, a2 + 1032, v19 + 208, &__dst);
        sub_29A186B14(&__dst);
        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else if (v7 == 43)
      {
        pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(&__p, &v35);
        if (v38 != 1)
        {
          sub_29A091654((a2 + 1128), &__p);
          sub_29A22FEF4((a2 + 1152));
          v11 = *(a2 + 1136);
          sub_29A008E78(&__dst, "");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection((a2 + 1032), v11 - 24, &__dst, &v34);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v22 = *(a1 + 32);
        sub_29A2266C8(&__dst, a1, (v22 + 48));
        v23 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v35);
        sub_29A276708(a2, v22, &__dst, v23);
        if (v42 < 0)
        {
          operator delete(v41);
        }

        v24 = __cxa_allocate_exception(0x20uLL);
        v25 = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(&v35);
        sub_29A22DB7C(v24, v25, a1);
        __cxa_throw(v24, &unk_2A2048840, sub_29A2265D4);
      }

      goto LABEL_59;
    }

LABEL_26:
    sub_29A22FDE0((a2 + 280));
    goto LABEL_59;
  }

  if (v7 > 14)
  {
    if ((v7 - 15) >= 3)
    {
      goto LABEL_59;
    }

    goto LABEL_26;
  }

  switch(v7)
  {
    case 1:
      v35 = 0;
      v36 = 0;
      v37 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser::_CreatePrimSpec(&__p, a2, &v35) & 1) == 0)
      {
        v13 = *(a1 + 32);
        sub_29A2266C8(&__dst, a1, (v13 + 48));
        sub_29A276708(a2, v13, &__dst, &v35);
        if (v42 < 0)
        {
          operator delete(v41);
        }

        v14 = __cxa_allocate_exception(0x20uLL);
        sub_29A22DB7C(v14, &v35, a1);
        __cxa_throw(v14, &unk_2A2048840, sub_29A2265D4);
      }

      goto LABEL_57;
    case 4:
      v15 = sub_29A22DD10((a2 + 1024));
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v16)
      {
        v16 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      v17 = sub_29A22FD9C(&__p, &__dst);
      (*(*v15 + 152))(v15, a2 + 1032, v16 + 48, &__dst, v17);
      break;
    case 7:
      v8 = sub_29A22DD10((a2 + 1024));
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v9)
      {
        v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      v10 = sub_29A22FD9C(&__p, &__dst);
      (*(*v8 + 152))(v8, a2 + 1032, v9 + 136, &__dst, v10);
      break;
    default:
      goto LABEL_59;
  }

  sub_29A186B14(&__dst);
LABEL_59:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A22FC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A22FD9C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A230004(a2, a1).n128_u64[0];
  return result;
}

unint64_t sub_29A22FDE0(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = (v3 - *a1) >> 3;
    if ((v5 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v6 = v2 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= (v5 + 1))
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    v15 = a1;
    if (v8)
    {
      v9 = sub_29A00C9BC(a1, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;
    v12 = &v9[8 * v5];
    v14 = &v9[8 * v8];
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v12);
    v13 = v12 + 8;
    sub_29A15412C(a1, &v11);
    v4 = a1[1];
    sub_29A1541C0(&v11);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1[1]);
    v4 = v3 + 8;
    a1[1] = v3 + 8;
  }

  a1[1] = v4;
  return v4 - 8;
}

void *sub_29A22FEF4(const void **a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v17[4] = a1;
    if (v8)
    {
      v9 = sub_29A012C48(a1, v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = &v9[24 * v5];
    v11 = &v9[24 * v8];
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    v4 = v10 + 24;
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v4;
    v15 = a1[2];
    a1[2] = v11;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_29A178D9C(v17);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = v3 + 3;
    v3[2] = 0;
  }

  a1[1] = v4;
  return v4 - 3;
}

__n128 sub_29A230004(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1EFC10(a1) & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    sub_29A2300A0(a1, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = sub_29A230170(a1);
  v5 = v4[1].n128_u64[0];
  result = *v4;
  v7 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v7;
  *a2 = result;
  a2[1].n128_u64[0] = v5;
  return result;
}

void sub_29A230084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2300A0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A230134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A230170(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2948F8();
  }

  return sub_29A1B0150(a1);
}

uint64_t sub_29A2301AC(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A23022C(a1, a2);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A23B7C4(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A230220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A23022C(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_TextFileFormatParser *a2)
{
  if (!sub_29A230290(a1, a2) || !sub_29A234BC8(a1, a2))
  {
    return 0;
  }

  return sub_29A234CE8(a1, a2);
}

uint64_t sub_29A230290(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = sub_29A230310(a1);
  if (v4)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = a1 + 24;
    sub_29A2340B0(v8, a2);
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return v4;
}

void sub_29A230304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 32) = a9;
  *(v10 + 48) = a10;
  _Unwind_Resume(a1);
}

uint64_t sub_29A230310(uint64_t a1)
{
  sub_29A23035C(a1);
  v3 = v2;
  if (v2)
  {
    do
    {
      sub_29A233FE4(a1);
    }

    while ((v4 & 1) != 0);
  }

  return v3;
}

double sub_29A23035C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if (!sub_29A225AEC(a1))
  {
    goto LABEL_10;
  }

    ;
  }

  v3 = *(a1 + 32);
  v7[0] = v2;
  v7[1] = v2;
  v8 = v14;
  v9 = v15;
  v10 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v13 = 0;
  *&result = sub_29A230488(v7).n128_u64[0];
  v6 = v4;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if (v4)
    {
      return result;
    }

LABEL_10:
    *(a1 + 32) = v2;
    result = *&v14;
    *(a1 + 40) = v14;
    *(a1 + 56) = v15;
    return result;
  }

  operator delete(__p[0]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_29A230448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 32) = v21;
  *(v20 + 40) = *(v22 - 64);
  *(v20 + 56) = *(v22 - 48);
  _Unwind_Resume(exception_object);
}

__n128 sub_29A230488(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  sub_29A2304F0(a1);
  result = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  return result;
}

void sub_29A2304E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(v10 + 8) = a9;
  *(v10 + 24) = a10;
  _Unwind_Resume(a1);
}

double sub_29A2304F0(uint64_t a1)
{
  if ((sub_29A230894(a1) & 1) == 0 && (sub_29A2309D8(a1) & 1) == 0 && (sub_29A230AC4(a1) & 1) == 0 && (sub_29A230BB0(a1) & 1) == 0 && (sub_29A230CA0(a1) & 1) == 0 && (sub_29A230D8C(a1) & 1) == 0 && (sub_29A230E84(a1) & 1) == 0 && (sub_29A230F70(a1) & 1) == 0 && (sub_29A23105C(a1) & 1) == 0 && (sub_29A231188(a1) & 1) == 0 && (sub_29A231280(a1) & 1) == 0 && (sub_29A231364(a1) & 1) == 0 && (sub_29A231450(a1) & 1) == 0 && (sub_29A23157C(a1) & 1) == 0 && (sub_29A2316B0(a1) & 1) == 0 && (sub_29A231794(a1) & 1) == 0 && (sub_29A231874(a1) & 1) == 0 && (sub_29A23196C(a1) & 1) == 0 && (sub_29A231A84(a1) & 1) == 0 && (sub_29A231B64(a1) & 1) == 0 && (sub_29A231C50(a1) & 1) == 0 && (sub_29A231D30(a1) & 1) == 0 && (sub_29A231E5C(a1) & 1) == 0 && (sub_29A231F3C(a1) & 1) == 0 && (sub_29A23201C(a1) & 1) == 0 && (sub_29A232108(a1) & 1) == 0 && (sub_29A23222C(a1) & 1) == 0 && (sub_29A23230C(a1) & 1) == 0 && (sub_29A232404(a1) & 1) == 0 && (sub_29A232530(a1) & 1) == 0 && (sub_29A232610(a1) & 1) == 0 && (sub_29A2326F4(a1) & 1) == 0 && (sub_29A2327F4(a1) & 1) == 0 && (sub_29A2328EC(a1) & 1) == 0 && (sub_29A232A18(a1) & 1) == 0 && (sub_29A232B44(a1) & 1) == 0 && (sub_29A232C68(a1) & 1) == 0 && (sub_29A232D4C(a1) & 1) == 0 && (sub_29A232E44(a1) & 1) == 0 && (sub_29A232F68(a1) & 1) == 0 && (sub_29A233054(a1) & 1) == 0 && (sub_29A233140(a1) & 1) == 0 && (sub_29A23322C(a1) & 1) == 0 && (sub_29A233318(a1) & 1) == 0 && (sub_29A23343C(a1) & 1) == 0 && (sub_29A23353C(a1) & 1) == 0 && (sub_29A233670(a1) & 1) == 0 && (sub_29A23375C(a1) & 1) == 0 && (sub_29A233850(a1) & 1) == 0 && (sub_29A23396C(a1) & 1) == 0 && (sub_29A233AA0(a1) & 1) == 0 && (sub_29A233B98(a1) & 1) == 0 && (sub_29A233CC4(a1) & 1) == 0 && (sub_29A233DF8(a1) & 1) == 0)
  {

    *&result = sub_29A233F10(a1).n128_u64[0];
  }

  return result;
}

uint64_t sub_29A230894(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A23090C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A23090C(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25697 || *(v1 + 2) != 100)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A230978(void *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 & 0xFFFFFFDF) - 65 >= 0x1A && v2 != 95 && (v2 - 48) > 9)
  {
    return 0;
  }

  v4 = a1[2] + 1;
  a1[1] = v1 + 1;
  a1[2] = v4;
  ++a1[4];
  return 1;
}

uint64_t sub_29A2309D8(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230A50(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230A50(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701867617 || *(v1 + 4) != 25710)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A230AC4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230B3C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230B3C(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1769629026 || *(v1 + 4) != 29285)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A230BB0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230C28(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230C28(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 5)
  {
    return 0;
  }

  LOBYTE(var5) = 99;
  *(&var5 + 1) = 1936941420;
  if (*v1 != var5 || *(v1 + 4) != 115)
  {
    return 0;
  }

  v4 = a1[2] + 5;
  a1[1] = v1 + 5;
  a1[2] = v4;
  a1[4] += 5;
  return 1;
}

uint64_t sub_29A230CA0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230D18(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230D18(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1718513507 || *(v1 + 4) != 26473)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A230D8C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230E04(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230E04(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1852731235 || *(v1 + 3) != 1952671086)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A230E84(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230EFC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230EFC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1987212643 || *(v1 + 4) != 101)
  {
    return 0;
  }

  v4 = a1[2] + 5;
  a1[1] = v1 + 5;
  a1[2] = v4;
  a1[4] += 5;
  return 1;
}

uint64_t sub_29A230F70(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A230FE8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A230FE8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1953723747 || *(v1 + 4) != 28015)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A23105C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2310D4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2310D4(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x61446D6F74737563 || *(v1 + 8) != 24948)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A231188(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231200(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231200(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1634100580 || *(v1 + 3) != 1953264993)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A231280(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2312F8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2312F8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25956 || *(v1 + 2) != 102)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A231364(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2313DC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2313DC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701602660 || *(v1 + 4) != 25972)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A231450(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2314C8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2314C8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x616E6F6974636964 || *(v1 + 8) != 31090)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A23157C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2315F4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2315F4(void *a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v1 = a1[1];
  if (a1[5] - v1 < 0xBuLL)
  {
    return 0;
  }

  qmemcpy(v5, "displayUnit", 11);
  if (*v1 != 0x5579616C70736964 || *(v1 + 3) != *(v5 + 3))
  {
    return 0;
  }

  v4 = a1[2] + 11;
  a1[1] = v1 + 11;
  a1[2] = v4;
  a1[4] += 11;
  return 1;
}

uint64_t sub_29A2316B0(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231728(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231728(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 28516 || *(v1 + 2) != 99)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A231794(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A23180C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A23180C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1684825448)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A231874(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2318EC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2318EC(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1836213608 || *(v1 + 3) != 1702127981)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A23196C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2319E4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2319E4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 8uLL || *v1 != 0x7374697265686E69)
  {
    return 0;
  }

  v3 = a1[2] + 8;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 8;
  return 1;
}

uint64_t sub_29A231A84(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231AFC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231AFC(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1684957547)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A231B64(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231BDC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231BDC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701734764 || *(v1 + 4) != 29281)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A231C50(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231CC8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231CC8(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1886351212)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A231D30(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231DA8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231DA8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xC)
  {
    return 0;
  }

  if (*v1 != 0x6C696843656D616ELL || *(v1 + 8) != 1852142180)
  {
    return 0;
  }

  v4 = a1[2] + 12;
  a1[1] = v1 + 12;
  a1[2] = v4;
  a1[4] += 12;
  return 1;
}

uint64_t sub_29A231E5C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231ED4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231ED4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1701736270)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A231F3C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A231FB4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A231FB4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1701736302)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A23201C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232094(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232094(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1936090735 || *(v1 + 4) != 29797)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A232108(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232180(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232180(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x74616C6C6963736FLL || *(v1 + 8) != 101)
  {
    return 0;
  }

  v4 = a1[2] + 9;
  a1[1] = v1 + 9;
  a1[2] = v4;
  a1[4] += 9;
  return 1;
}

uint64_t sub_29A23222C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2322A4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2322A4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1919252079)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A23230C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232384(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232384(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1819894128 || *(v1 + 3) != 1684107116)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A232404(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A23247C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A23247C(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x697373696D726570 || *(v1 + 8) != 28271)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A232530(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2325A8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2325A8(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 4uLL)
  {
    return 0;
  }

  if (*v1 != 1953722224)
  {
    return 0;
  }

  v3 = a1[2] + 4;
  a1[1] = v1 + 1;
  a1[2] = v3;
  a1[4] += 4;
  return 1;
}

uint64_t sub_29A232610(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232688(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232688(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 29296 || *(v1 + 2) != 101)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A2326F4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A23276C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A23276C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 0x13uLL)
  {
    return 0;
  }

  v2 = *v1 == 0x7553786966657270 && v1[1] == 0x6974757469747362;
  if (!v2 || *(v1 + 11) != 0x736E6F6974757469)
  {
    return 0;
  }

  v5 = a1[2] + 19;
  a1[1] = v1 + 19;
  a1[2] = v5;
  a1[4] += 19;
  return 1;
}

uint64_t sub_29A2327F4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A23286C(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A23286C(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1885696624 || *(v1 + 3) != 1684956528)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A2328EC(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232964(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232964(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x69747265706F7270 || *(v1 + 8) != 29541)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A232A18(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232A90(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232A90(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 0xA)
  {
    return 0;
  }

  if (*v1 != 0x636E657265666572 || *(v1 + 8) != 29541)
  {
    return 0;
  }

  v4 = a1[2] + 10;
  a1[1] = v1 + 10;
  a1[2] = v4;
  a1[4] += 10;
  return 1;
}

uint64_t sub_29A232B44(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232BBC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232BBC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x657461636F6C6572 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[2] + 9;
  a1[1] = v1 + 9;
  a1[2] = v4;
  a1[4] += 9;
  return 1;
}

uint64_t sub_29A232C68(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232CE0(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232CE0(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 3)
  {
    return 0;
  }

  if (*v1 != 25970 || *(v1 + 2) != 108)
  {
    return 0;
  }

  v4 = a1[2] + 3;
  a1[1] = v1 + 3;
  a1[2] = v4;
  a1[4] += 3;
  return 1;
}

uint64_t sub_29A232D4C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232DC4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232DC4(void *a1)
{
  v1 = a1[1];
  if (a1[5] - v1 < 7uLL)
  {
    return 0;
  }

  if (*v1 != 1919903090 || *(v1 + 3) != 1919247474)
  {
    return 0;
  }

  v4 = a1[2] + 7;
  a1[1] = v1 + 7;
  a1[2] = v4;
  a1[4] += 7;
  return 1;
}

uint64_t sub_29A232E44(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232EBC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232EBC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x6D697250746F6F72 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[2] + 9;
  a1[1] = v1 + 9;
  a1[2] = v4;
  a1[4] += 9;
  return 1;
}

uint64_t sub_29A232F68(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A232FE0(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A232FE0(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1701864818 || *(v1 + 4) != 29793)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A233054(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2330CC(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2330CC(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1702061426 || *(v1 + 4) != 116)
  {
    return 0;
  }

  v4 = a1[2] + 5;
  a1[1] = v1 + 5;
  a1[2] = v4;
  a1[4] += 5;
  return 1;
}

uint64_t sub_29A233140(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2331B8(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2331B8(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 5)
  {
    return 0;
  }

  if (*v1 != 1818321779 || *(v1 + 4) != 101)
  {
    return 0;
  }

  v4 = a1[2] + 5;
  a1[1] = v1 + 5;
  a1[2] = v4;
  a1[4] += 5;
  return 1;
}

uint64_t sub_29A23322C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2332A4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A2332A4(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 6)
  {
    return 0;
  }

  if (*v1 != 1886350451 || *(v1 + 4) != 25701)
  {
    return 0;
  }

  v4 = a1[2] + 6;
  a1[1] = v1 + 6;
  a1[2] = v4;
  a1[4] += 6;
  return 1;
}

uint64_t sub_29A233318(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A233390(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29A233390(void *a1)
{
  v1 = a1[1];
  if ((a1[5] - v1) < 9)
  {
    return 0;
  }

  if (*v1 != 0x726579614C627573 || *(v1 + 8) != 115)
  {
    return 0;
  }

  v4 = a1[2] + 9;
  a1[1] = v1 + 9;
  a1[2] = v4;
  a1[4] += 9;
  return 1;
}

uint64_t sub_29A23343C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (sub_29A2334B4(a1))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v2 = sub_29A230978(a1);
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
    if (!v2)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}