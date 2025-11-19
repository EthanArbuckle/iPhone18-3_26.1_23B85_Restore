void sub_275CDA764(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x275CDA63CLL);
}

uint64_t sub_275CDA770(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82870] + 16;
  MEMORY[0x277C8CF20](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_2884CBB20;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_275CDA82C(a1);
  return a1;
}

void sub_275CDA804(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_275CDA82C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  v7 = v4 + 4 * v5;
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v7;
    if ((v3 & 0x80000000) != 0)
    {
      v8 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v8 = 4;
    }

    std::wstring::resize(v2, v8, 0);
    v9 = *(a1 + 87);
    if (v9 < 0)
    {
      v9 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + 4 * v9;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v10 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v11 = (v10 + ((v5 - 0x80000000 - v10) >> 1)) >> 30;
        v4 = (v4 + 0x1FFFFFFFCLL * v11 + 0x1FFFFFFFCLL);
        v5 = v5 - 0x7FFFFFFF - 0x7FFFFFFF * v11;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + 4 * v5;
      }
    }
  }
}

_BYTE *sub_275CDA92C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  if ((v2 & 0x10) != 0)
  {
    v3 = *(result + 11);
    v4 = *(result + 6);
    if (v3 < v4)
    {
      *(result + 11) = v4;
      v3 = v4;
    }

    v5 = *(result + 5);
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    v5 = *(result + 2);
    v3 = *(result + 4);
  }

  return sub_275CDA97C(a2, v5, v3, (v3 - v5) >> 2);
}

_BYTE *sub_275CDA97C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v4 = __dst;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a4 | 1) + 1;
    }

    sub_275C8DFE0(__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
}

uint64_t blahtex::MathmlEnvironment::MathmlEnvironment(uint64_t this, unsigned int a2, int a3)
{
  *(this + 8) = a3;
  *this = a2 == 0;
  if (a2 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected style value in MathmlEnvironment::MathmlEnvironment");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(this + 4) = dword_275D0FCE0[a2];
  return this;
}

void blahtex::LayoutTree::Row::~Row(blahtex::LayoutTree::Row *this)
{
  *this = &unk_2884CBBB8;
  v1 = (this + 24);
  for (i = *(this + 4); i != v1; i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  sub_275C915E8(v1);
}

{
  blahtex::LayoutTree::Row::~Row(this);

  JUMPOUT(0x277C8CFC0);
}

void blahtex::LayoutTree::Table::~Table(blahtex::LayoutTree::Table *this)
{
  *this = &unk_2884CBBF0;
  v2 = (this + 24);
  v3 = *(this + 3);
  v4 = *(this + 4);
  while (v3 != v4)
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        if (*v6)
        {
          (*(**v6 + 8))(*v6);
          v5 = *(v3 + 8);
        }

        ++v6;
      }

      while (v6 != v5);
      v4 = *(this + 4);
    }

    v3 += 24;
  }

  v7 = v2;
  sub_275CE4558(&v7);
}

{
  blahtex::LayoutTree::Table::~Table(this);

  JUMPOUT(0x277C8CFC0);
}

unsigned int *blahtex::LayoutTree::IncrementNodeCount(unsigned int *this, unsigned int *a2)
{
  v2 = *this + 1;
  *this = v2;
  if (v2 >= 0x9C4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v7, dword_275D0FCF0);
    sub_275CDAE0C(v6, dword_275D0FD3C);
    sub_275CDAE0C(v5, dword_275D0FD3C);
    sub_275CDAE0C(v4, dword_275D0FD3C);
    sub_275CE39CC(exception, &v7, v6, v5, v4);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  return this;
}

void sub_275CDAD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v26);
  goto LABEL_12;
}

_BYTE *sub_275CDAE0C(_BYTE *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    sub_275C8DFE0(a1, v6);
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *&a1[4 * v5] = 0;
  return a1;
}

uint64_t sub_275CDAEAC(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_275C97BF0(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t blahtex::LayoutTree::GetCore(uint64_t result)
{
  for (; result; result = *(*(result + 64) + 16))
  {
    if ((*result - 7) > 5)
    {
      break;
    }
  }

  return result;
}

uint64_t blahtex::LayoutTree::FormatColour@<X0>(uint64_t a1@<X8>)
{
  sub_275CD9D50(&v7);
  v3 = sub_275CE4604(&v7, &unk_275D0FD58, 1);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = 48;
  v4 = sub_275CDB0AC(v3, &v6);
  *(v4 + *(*v4 - 24) + 24) = 6;
  MEMORY[0x277C8CEE0]();
  sub_275CDA92C(&v8, a1);
  v7 = &unk_2884CBA50;
  v11 = &unk_2884CBA78;
  v8 = &unk_2884CBB20;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v9);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v11);
}

void sub_275CDB090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CD9E94(va);
  _Unwind_Resume(a1);
}

void *sub_275CDB0AC(void *a1, int *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82688]);
    v6 = (v5->__vftable[3].__on_zero_shared)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void *blahtex::LayoutTree::AdjustMathmlEnvironment@<X0>(void *result@<X0>, unint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  if (HIDWORD(a2) != HIDWORD(a4) || ((a4 ^ a2) & 1) != 0 || a3 != a5 || (v7 = *result, **result == 18))
  {
    operator new();
  }

  *result = 0;
  *a6 = v7;
  return result;
}

void sub_275CDB5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_275CDC608((v22 - 112), 0);
  _Unwind_Resume(a1);
}

void sub_275CDC250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, blahtex::MathmlNode **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, blahtex::MathmlNode *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_275CDC608(&a28, 0);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  v38 = *(v36 - 136);
  if (v38)
  {
    *(v36 - 128) = v38;
    operator delete(v38);
  }

  sub_275CDC608(a10, 0);
  _Unwind_Resume(a1);
}

void sub_275CDC3FC(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_275C8D77C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_275CE4A88(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void sub_275CDC504()
{
  if ((atomic_load_explicit(&qword_280A38D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38D58))
  {
    sub_275CE3D50(&unk_280A38D30, &off_27A683AC0, &blahtex::Manager::gTexvcCompatibilityMacros);

    __cxa_guard_release(&qword_280A38D58);
  }
}

uint64_t sub_275CDC594(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

blahtex::MathmlNode *sub_275CDC608(blahtex::MathmlNode **a1, blahtex::MathmlNode *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);

    JUMPOUT(0x277C8CFC0);
  }

  return result;
}

uint64_t blahtex::LayoutTree::FixOutOfSequenceMathmlCharacter(uint64_t result)
{
  if (result > 120075)
  {
    if (result > 120132)
    {
      if (result <= 120135)
      {
        if (result == 120133)
        {
          return 8469;
        }

        else if (result == 120135)
        {
          return 8473;
        }
      }

      else
      {
        switch(result)
        {
          case 0x1D548:
            return 8474;
          case 0x1D549:
            return 8477;
          case 0x1D551:
            return 8484;
        }
      }
    }

    else if (result <= 120092)
    {
      if (result == 120076)
      {
        return 8465;
      }

      else if (result == 120085)
      {
        return 8476;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D51D:
          return 8488;
        case 0x1D53A:
          return 8450;
        case 0x1D53F:
          return 8461;
      }
    }
  }

  else if (result > 119974)
  {
    if (result <= 119980)
    {
      if (result == 119975)
      {
        return 8466;
      }

      else if (result == 119976)
      {
        return 8499;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D4AD:
          return 8475;
        case 0x1D506:
          return 8493;
        case 0x1D50B:
          return 8460;
      }
    }
  }

  else if (result <= 119968)
  {
    if (result == 119965)
    {
      return 8492;
    }

    else if (result == 119968)
    {
      return 8496;
    }
  }

  else
  {
    switch(result)
    {
      case 0x1D4A1:
        return 8497;
      case 0x1D4A3:
        return 8459;
      case 0x1D4A4:
        return 8464;
    }
  }

  return result;
}

void sub_275CDCBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275CDC608(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_275CDCC60(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  if (a2 >= 5)
  {
    if ((a2 | 1) == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = (a2 | 1) + 1;
    }

    sub_275C8DFE0(result, v3);
  }

  *(result + 23) = a2;
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_275D0BA00)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a3;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a3;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_275D0FCD0)))).i32[1])
      {
        *v6 = a3;
        v6[1] = a3;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((a2 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  *(result + 4 * a2) = 0;
  return result;
}

void blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280A38C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38C98))
  {
    sub_275CE4BE4(&unk_280A38C70, "(", dword_275D0FE9C);
    __cxa_guard_release(&qword_280A38C98);
  }

  if ((atomic_load_explicit(&qword_280A38CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38CC8))
  {
    sub_275CE4BE4(&unk_280A38CA0, dword_275D0FE9C, dword_275D0FEB8);
    __cxa_guard_release(&qword_280A38CC8);
  }

  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    if (*(a1 + 32) != 3)
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 24);
  }

  else
  {
    v3 = (a1 + 24);
    if (v2 != 3)
    {
      goto LABEL_9;
    }
  }

  if (!wmemcmp(v3, dword_275D0FEB8, 3uLL))
  {
    operator new();
  }

LABEL_9:
  if ((atomic_load_explicit(&qword_280A38CF8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280A38CF8))
    {
      sub_275CE4BE4(&unk_280A38CD0, &unk_275D0FEEC, dword_275D0FEF4);
      __cxa_guard_release(&qword_280A38CF8);
    }
  }

  operator new();
}

blahtex::MathmlNode *blahtex::LayoutTree::Phantom::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v11, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 24) + 24))(&v10);
  v9 = 0;
  v6 = v10;
  if (*v10 != 5)
  {
    operator new();
  }

  v10 = 0;
  *v6 = 14;
  v9 = 0;
  v8 = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(&v8, *a2, *(a2 + 8), v11, v12, a3);
  if (v8)
  {
    blahtex::MathmlNode::~MathmlNode(v8);
    MEMORY[0x277C8CFC0]();
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x277C8CFC0]();
  }

  return result;
}

void sub_275CDD940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, blahtex::MathmlNode *a16, blahtex::MathmlNode *a17)
{
  sub_275CDC608(&a16, 0);
  sub_275CDC608(&a17, 0);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode *blahtex::LayoutTree::Cancel::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v13, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 24) + 24))(&v12);
  v11 = 0;
  v6 = v12;
  if (*v12 != 5)
  {
    operator new();
  }

  v11 = v12;
  v12 = 0;
  *v6 = 15;
  v10 = 20;
  v9[1] = &v10;
  v7 = sub_275CE493C(v6 + 8, &v10);
  MEMORY[0x277C8CD90](v7 + 5, dword_275D0FEF4);
  v11 = 0;
  v9[0] = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(v9, *a2, *(a2 + 8), v13, v14, a3);
  if (v9[0])
  {
    blahtex::MathmlNode::~MathmlNode(v9[0]);
    MEMORY[0x277C8CFC0]();
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x277C8CFC0]();
  }

  return result;
}

void sub_275CDDBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, blahtex::MathmlNode *a18, blahtex::MathmlNode *a19)
{
  sub_275CDC608(&a18, 0);
  sub_275CDC608(&a19, 0);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode *blahtex::LayoutTree::Sqrt::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v11, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 24) + 24))(&v10);
  v9 = 0;
  v6 = v10;
  if (*v10 != 5)
  {
    operator new();
  }

  v10 = 0;
  *v6 = 16;
  v9 = 0;
  v8 = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(&v8, *a2, *(a2 + 8), v11, v12, a3);
  if (v8)
  {
    blahtex::MathmlNode::~MathmlNode(v8);
    MEMORY[0x277C8CFC0]();
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x277C8CFC0]();
  }

  return result;
}

void sub_275CDDE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, blahtex::MathmlNode *a16, blahtex::MathmlNode *a17)
{
  sub_275CDC608(&a16, 0);
  sub_275CDC608(&a17, 0);
  _Unwind_Resume(a1);
}

void sub_275CDE0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, blahtex::MathmlNode *a19)
{
  sub_275CDC608(&a9, 0);
  sub_275CDC608(&a19, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Scripts::BuildMathmlTree(uint64_t a1)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(v8, *(a1 + 8), *(a1 + 20));
  v4 = 0;
  v5 = v8[0];
  LOBYTE(v5) = 0;
  v6 = v8[1] + 1;
  v7 = v8[2];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 24))(&__p);
    v4 = __p;
    operator new();
  }

  operator new();
}

void sub_275CDE5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, blahtex::MathmlNode *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, blahtex::MathmlNode *a19)
{
  sub_275CDC608(&__p, 0);
  sub_275CDC608(&a12, 0);
  sub_275CDC608(&a19, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Fraction::BuildMathmlTree(uint64_t a1)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v3, *(a1 + 8), *(a1 + 20));
  v1 = v3;
  v2 = v4;
  if (v3 == 1)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    ++HIDWORD(v1);
  }

  operator new();
}

void sub_275CDE970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, blahtex::MathmlNode *a17)
{
  sub_275CDC608(&a9, 0);
  sub_275CDC608(&a17, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Space::BuildMathmlTree(uint64_t a1)
{
  if (*(a1 + 28))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unexpected lonely automatic space in Space::BuildMathmlTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void *blahtex::LayoutTree::Fenced::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, blahtex::MathmlNode **a4@<X8>)
{
  v8 = *(a1 + 72);
  blahtex::MathmlEnvironment::MathmlEnvironment(__p, *(a1 + 8), *(a1 + 20));
  result = (*(*v8 + 24))(&v16, v8, a2, __p, a3);
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_7;
  }

  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 56))
    {
LABEL_7:
      if (*v16 == 5)
      {
        operator new();
      }

      if ((*(v16 + 55) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 5))
        {
          goto LABEL_19;
        }
      }

      else if (!*(v16 + 55))
      {
        goto LABEL_19;
      }

      sub_275CDC504();
      v10 = *(v16 + 55);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *(v16 + 4);
        v10 = *(v16 + 5);
      }

      else
      {
        v11 = v16 + 32;
      }

      __p[0] = v11;
      __p[1] = v10;
      if (sub_275CE4AE0(qword_280A38D30, __p))
      {
        LODWORD(v15) = 4;
        __p[0] = &v15;
        v12 = sub_275CE493C(v16 + 8, &v15);
        MEMORY[0x277C8CD90](v12 + 5, "0");
        LODWORD(v15) = 5;
        __p[0] = &v15;
        v13 = sub_275CE493C(v16 + 8, &v15);
        MEMORY[0x277C8CD90](v13 + 5, "0");
      }

LABEL_19:
      operator new();
    }
  }

  else if (*(a1 + 71))
  {
    goto LABEL_7;
  }

  *a4 = v16;
  return result;
}

void sub_275CDF3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_275CDC608(va, 0);
  _Unwind_Resume(a1);
}

void sub_275CDFAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  sub_275CDC608((v35 - 104), 0);
  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::onlyPlainLatinLetters(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 1;
  }

  v3 = 4 * v1;
  while (1)
  {
    v4 = *v2;
    if (*v2 >= 97)
    {
      break;
    }

    if (v4 - 91 < 0xFFFFFFE6)
    {
      return 0;
    }

LABEL_11:
    ++v2;
    v3 -= 4;
    if (!v3)
    {
      return 1;
    }
  }

  if (v4 <= 0x7A)
  {
    goto LABEL_11;
  }

  return 0;
}

void blahtex::LayoutTree::Row::Optimise(blahtex::LayoutTree::Row *this)
{
  v1 = this + 24;
  v2 = *(this + 4);
  if (v2 != this + 24)
  {
    v3 = this;
    v4 = this + 24;
    v5 = this + 24;
    while (1)
    {
      (*(**(v2 + 2) + 16))(*(v2 + 2));
      v6 = *(v2 + 2);
      if (v6)
      {
        if (v7)
        {
          if (v4 != v1)
          {
            v8 = v7;
            v9 = *(v4 + 2);
            if (v9)
            {
            }

            if (*(v9 + 28) == 1)
            {
              v8[28] = 1;
            }

            *(v8 + 6) += *(v9 + 6);
            v11 = *v4;
            v10 = *(v4 + 1);
            *(v11 + 8) = v10;
            *v10 = v11;
            --*(v3 + 5);
            operator delete(v4);
          }

          v4 = v2;
          goto LABEL_87;
        }
      }

      {
        goto LABEL_15;
      }

      if ((atomic_load_explicit(&qword_280A38D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38D28))
      {
        sub_275CE4E8C(qword_280A38D00, &off_27A683540, &off_27A6839A0);
        __cxa_guard_release(&qword_280A38D28);
        v3 = this;
      }

      v12 = *(v5 + 2);
      v14 = *(v2 + 2);
      if (v14)
      {
        if (!v13)
        {
          break;
        }
      }

      else
      {
        v15 = 0;
        if (!v13)
        {
          break;
        }
      }

      v16 = (v13 + 24);
      v17 = v13[47];
      if (v17 < 0)
      {
        if (*(v13 + 4) != 3)
        {
          break;
        }

        v16 = *v16;
      }

      else if (v17 != 3)
      {
        break;
      }

      if (wmemcmp(v16, dword_275D0FEB8, 3uLL) || !v15)
      {
        break;
      }

      v18 = (v15 + 3);
      v19 = *(v15 + 47);
      if (v19 < 0)
      {
        v20 = v15[3];
        v19 = v15[4];
      }

      else
      {
        v20 = (v15 + 3);
      }

      v75[0] = v20;
      v75[1] = v19;
      v21 = sub_275CE4AE0(qword_280A38D00, v75);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      if (v4 != v1)
      {
        v24 = *v4;
        v23 = *(v4 + 1);
        *(v24 + 8) = v23;
        *v23 = v24;
        --*(v3 + 5);
        operator delete(v4);
      }

      MEMORY[0x277C8CDA0](v18, v22[4], v22[5]);
LABEL_39:
      v26 = *v5;
      v25 = *(v5 + 1);
      *(v26 + 8) = v25;
      *v25 = v26;
      --*(v3 + 5);
      operator delete(v5);
LABEL_15:
      v5 = v2;
LABEL_16:
      v4 = v1;
LABEL_87:
      v2 = *(v2 + 1);
      if (v2 == v1)
      {
        return;
      }
    }

    v27 = *(v2 + 2);
    if (v27)
    {
      while (1)
      {
        if (!v28 || (v28[24] & 1) == 0)
        {
          break;
        }

        v27 = *(v28 + 4);
        if (!v27)
        {
          goto LABEL_44;
        }
      }

      v29 = __dynamic_cast(v27, &unk_2884CBC18, &unk_2884CBC40, 0);
      v30 = 0;
    }

    else
    {
LABEL_44:
      v29 = 0;
      v30 = 1;
    }

    v31 = *(v5 + 2);
    if (!v31 || (v73 = v30, v32 = __dynamic_cast(v31, &unk_2884CBC18, &unk_2884CBC40, 0), !v29) || !v32 || v29[12] != v32[2].__r_.__value_.__s.__data_[0] || v29[2] != v32->__r_.__value_.__s.__data_[2] || v29[5] != HIDWORD(v32->__r_.__value_.__r.__words[2]))
    {
LABEL_86:
      v5 = v2;
      v4 = v1;
      v3 = this;
      goto LABEL_87;
    }

    v70 = v32;
    if (v73)
    {
      v72 = 0;
      v71 = 0;
    }

    else
    {
    }

    if (!v13 || !v71)
    {
      goto LABEL_70;
    }

    v34 = (v13 + 24);
    if (v13[47] < 0)
    {
      if (*(v13 + 4) != 1)
      {
        goto LABEL_67;
      }

      v36 = *v34;
    }

    else
    {
      v35 = v13[47];
      v36 = (v13 + 24);
      if (v35 != 1)
      {
LABEL_65:
        if (v35 != 1)
        {
LABEL_70:
          if (!v33 || !v72)
          {
LABEL_85:
            if (v73)
            {
              goto LABEL_86;
            }

            v3 = this;
            {
              v41 = *(v5 + 2);
              if (v41)
              {
                {
                  goto LABEL_95;
                }
              }
            }

            {
              v42 = *(v5 + 2);
              if (v42)
              {
                {
                  goto LABEL_95;
                }
              }
            }

            {
              goto LABEL_122;
            }

            v67 = *(v5 + 2);
            if (v67)
            {
              {
LABEL_95:
                if (v4 != v1)
                {
                  v44 = *v4;
                  v43 = *(v4 + 1);
                  *(v44 + 8) = v43;
                  *v43 = v44;
                  --*(this + 5);
                  operator delete(v4);
                }

                v47 = *(v29 + 3);
                v46 = (v29 + 6);
                v45 = v47;
                v48 = v46[23];
                if (v48 >= 0)
                {
                  v49 = v46;
                }

                else
                {
                  v49 = v45;
                }

                if (v48 >= 0)
                {
                  v50 = v46[23];
                }

                else
                {
                  v50 = *(v46 + 1);
                }

                std::wstring::append(v70 + 1, v49, v50);
                v51 = v70[1].__r_.__value_.__r.__words[2];
                v52 = *&v70[1].__r_.__value_.__l.__data_;
                v53 = *(v46 + 2);
                *&v70[1].__r_.__value_.__l.__data_ = *v46;
                v70[1].__r_.__value_.__r.__words[2] = v53;
                *v46 = v52;
                *(v46 + 2) = v51;
                v55 = *v5;
                v54 = *(v5 + 1);
                *(v55 + 8) = v54;
                *v54 = v55;
                --*(this + 5);
                operator delete(v5);
LABEL_122:
                v5 = v2;
                v4 = v1;
                goto LABEL_87;
              }
            }

            goto LABEL_15;
          }

          v37 = v72;
          v38 = (v72 + 24);
          if (v72[47] < 0)
          {
            if (*(v72 + 4) != 1)
            {
              goto LABEL_82;
            }

            v40 = *v38;
          }

          else
          {
            v39 = v72[47];
            v40 = (v72 + 24);
            if (v39 != 1)
            {
LABEL_80:
              if (v39 != 1)
              {
                goto LABEL_85;
              }

              goto LABEL_84;
            }
          }

          if (wmemcmp(v40, ".", 1uLL))
          {
            v37 = v72;
            if ((v72[47] & 0x80000000) == 0)
            {
              v39 = v72[47];
              goto LABEL_80;
            }

LABEL_82:
            if (*(v37 + 4) != 1)
            {
              goto LABEL_85;
            }

            v38 = *v38;
LABEL_84:
            if (wmemcmp(v38, ",", 1uLL))
            {
              goto LABEL_85;
            }
          }

LABEL_104:
          v3 = this;
          if (v4 != v1)
          {
            v57 = *v4;
            v56 = *(v4 + 1);
            *(v57 + 8) = v56;
            *v56 = v57;
            --*(this + 5);
            operator delete(v4);
          }

          v60 = *(v29 + 3);
          v59 = (v29 + 6);
          v58 = v60;
          v61 = v59[23];
          if (v61 >= 0)
          {
            v62 = v59;
          }

          else
          {
            v62 = v58;
          }

          if (v61 >= 0)
          {
            v63 = v59[23];
          }

          else
          {
            v63 = *(v59 + 1);
          }

          std::wstring::append(v70 + 1, v62, v63);
          if (!v71)
          {
            v69 = *v2;
            v68 = *(v2 + 1);
            v69[1] = v68;
            *v68 = v69;
            --*(this + 5);
            operator delete(v2);
            v2 = v5;
            goto LABEL_16;
          }

          v64 = v70[1].__r_.__value_.__r.__words[2];
          v65 = *&v70[1].__r_.__value_.__l.__data_;
          v66 = *(v59 + 2);
          *&v70[1].__r_.__value_.__l.__data_ = *v59;
          v70[1].__r_.__value_.__r.__words[2] = v66;
          *v59 = v65;
          *(v59 + 2) = v64;
          goto LABEL_39;
        }

LABEL_69:
        if (!wmemcmp(v34, ",", 1uLL))
        {
          goto LABEL_104;
        }

        goto LABEL_70;
      }
    }

    if (!wmemcmp(v36, ".", 1uLL))
    {
      goto LABEL_104;
    }

    if ((v13[47] & 0x80000000) == 0)
    {
      v35 = v13[47];
      goto LABEL_65;
    }

LABEL_67:
    if (*(v13 + 4) != 1)
    {
      goto LABEL_70;
    }

    v34 = *v34;
    goto LABEL_69;
  }
}

uint64_t blahtex::LayoutTree::Scripts::Optimise(blahtex::LayoutTree::Scripts *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  result = *(this + 5);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t blahtex::LayoutTree::Fraction::Optimise(blahtex::LayoutTree::Fraction *this)
{
  (*(**(this + 3) + 16))(*(this + 3));
  v2 = *(**(this + 4) + 16);

  return v2();
}

uint64_t blahtex::LayoutTree::Root::Optimise(blahtex::LayoutTree::Root *this)
{
  (*(**(this + 3) + 16))(*(this + 3));
  v2 = *(**(this + 4) + 16);

  return v2();
}

uint64_t blahtex::LayoutTree::Table::Optimise(uint64_t this)
{
  v2 = *(this + 24);
  v1 = *(this + 32);
  if (v2 != v1)
  {
    v3 = this;
    do
    {
      v4 = *v2;
      if (*v2 != v2[1])
      {
        do
        {
          v5 = *v4++;
          this = (*(*v5 + 16))(v5);
        }

        while (v4 != v2[1]);
        v1 = *(v3 + 32);
      }

      v2 += 3;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t blahtex::LayoutTree::Node::PrintFields@<X0>(blahtex::LayoutTree::Node *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 3);
  v4 = &(&off_27A6839A0)[2 * v3];
  v5 = v4[1];
  if (v5 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v7 = *v4;
  if (v5 >= 5)
  {
    if ((v5 | 1) == 5)
    {
      v9 = 7;
    }

    else
    {
      v9 = (v5 | 1) + 1;
    }

    sub_275C8DFE0(a2, v9);
  }

  *(a2 + 23) = v5;
  v8 = a2;
  if (v5)
  {
    memmove(a2, v7, 4 * v5);
    LODWORD(v3) = *(this + 3);
  }

  else
  {
    v8 = a2;
  }

  *(v8 + 4 * v5) = 0;
  if (v3 == 1)
  {
    std::wstring::append(a2, dword_275D10298);
    v10 = (&off_27A683A20 + 2 * *(this + 4));
    std::wstring::append(a2, *v10, v10[1]);
  }

  std::wstring::append(a2, dword_275D10298);
  v11 = (&off_27A683A50 + 2 * *(this + 2));
  std::wstring::append(a2, *v11, v11[1]);
  sub_275CD9D50(&v22);
  v12 = v22;
  *(&v22 + *(v22 - 3) + 8) = *(&v22 + *(v22 - 3) + 8) & 0xFFFFFFB5 | 8;
  *(&v24[1].__locale_ + *(v12 - 3)) = 6;
  LODWORD(__p[0]) = 48;
  v13 = sub_275CDB0AC(&v22, __p);
  MEMORY[0x277C8CEE0](v13, *(this + 5));
  sub_275CDA92C(&v23, &v19);
  v14 = std::wstring::insert(&v19, 0, dword_275D102A0);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v21 >= 0)
  {
    v17 = HIBYTE(v21);
  }

  else
  {
    v17 = __p[1];
  }

  std::wstring::append(a2, v16, v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v22 = &unk_2884CBA50;
  v26 = &unk_2884CBA78;
  v23 = &unk_2884CBB20;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v24);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v26);
}

void sub_275CE0CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_275CD9E94(&a22);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Row::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  sub_275CDCC60(v18, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v18[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D102B0, 4);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v17 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v11 = v17;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = sub_275CE4604(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v14 = (a1 + 24);
  for (i = *(a1 + 4); i != v14; i = *(i + 8))
  {
    (*(**(i + 16) + 32))(*(i + 16), a2, (a3 + 1));
  }
}

void sub_275CE0EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolIdentifier::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D102C4, 18);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D10310, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 48));
  v15 = sub_275CE4604(v13, *v14, v14[1]);
  v16 = sub_275CE4604(v15, dword_275D10298, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = sub_275CE4604(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_275CE1098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolNumber::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D1031C, 14);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D10310, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 48));
  v15 = sub_275CE4604(v13, *v14, v14[1]);
  v16 = sub_275CE4604(v15, dword_275D10298, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = sub_275CE4604(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_275CE1288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolText::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D10358, 12);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D10310, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 48));
  v15 = sub_275CE4604(v13, *v14, v14[1]);
  v16 = sub_275CE4604(v15, dword_275D10298, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = sub_275CE4604(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_275CE1478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolOperator::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(&__p, 2 * a3, 32);
  if ((v34 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v34 & 0x80u) == 0)
  {
    v6 = v34;
  }

  else
  {
    v6 = v33;
  }

  v7 = sub_275CE4604(a2, p_p, v6);
  v8 = sub_275CE4604(v7, &unk_275D1038C, 16);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D10310, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 48));
  v15 = sub_275CE4604(v13, *v14, v14[1]);
  if (*(a1 + 52))
  {
    v16 = &unk_275D103D0;
  }

  else
  {
    v16 = &unk_275D103F8;
  }

  if (*(a1 + 52))
  {
    v17 = 9;
  }

  else
  {
    v17 = 13;
  }

  v18 = sub_275CE4604(v15, v16, v17);
  if (*(a1 + 80))
  {
    v19 = &unk_275D10430;
  }

  else
  {
    v19 = dword_275D0FD3C;
  }

  if (*(a1 + 80))
  {
    v20 = 7;
  }

  else
  {
    v20 = 0;
  }

  sub_275CE4604(v18, v19, v20);
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v21 = *(a1 + 79);
  if (v21 < 0)
  {
    v21 = *(a1 + 64);
  }

  if (v21)
  {
    v22 = sub_275CE4604(a2, &unk_275D10450, 7);
    v23 = *(a1 + 79);
    if (v23 >= 0)
    {
      v24 = a1 + 56;
    }

    else
    {
      v24 = *(a1 + 56);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 79);
    }

    else
    {
      v25 = *(a1 + 64);
    }

    v26 = sub_275CE4604(v22, v24, v25);
    sub_275CE4604(v26, &unk_275D10470, 1);
  }

  v27 = sub_275CE4604(a2, dword_275D10298, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, &__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p;
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = v33;
  }

  v30 = sub_275CE4604(v27, v28, v29);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v35, MEMORY[0x277D82688]);
  (v31->__vftable[3].__on_zero_shared)(v31, 10);
  std::locale::~locale(&v35);
  std::wostream::put();
  std::wostream::flush();
  if (v34 < 0)
  {
    operator delete(__p);
  }
}

void sub_275CE1714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::Space::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D10478, 6);
  MEMORY[0x277C8CED0](v8, *(a1 + 24));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 28) == 1)
  {
    sub_275CE4604(a2, &unk_275D10494, 17);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v9 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
  (v9->__vftable[3].__on_zero_shared)(v9, 10);
  std::locale::~locale(__p);
  std::wostream::put();
  return std::wostream::flush();
}

void blahtex::LayoutTree::Scripts::Print(uint64_t a1, void *a2, int a3)
{
  v6 = 2 * a3;
  sub_275CDCC60(&v36, 2 * a3, 32);
  if ((v38 & 0x80u) == 0)
  {
    v7 = &v36;
  }

  else
  {
    v7 = v36;
  }

  if ((v38 & 0x80u) == 0)
  {
    v8 = v38;
  }

  else
  {
    v8 = v37;
  }

  v9 = sub_275CE4604(a2, v7, v8);
  v10 = sub_275CE4604(v9, &unk_275D104DC, 8);
  if (*(a1 + 24))
  {
    v11 = &unk_275D10500;
  }

  else
  {
    v11 = &unk_275D10520;
  }

  if (*(a1 + 24))
  {
    v12 = 7;
  }

  else
  {
    v12 = 9;
  }

  v13 = sub_275CE4604(v10, v11, v12);
  v14 = sub_275CE4604(v13, dword_275D10298, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v35 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v16 = v35;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = sub_275CE4604(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v39, MEMORY[0x277D82688]);
  (v18->__vftable[3].__on_zero_shared)(v18, 10);
  std::locale::~locale(&v39);
  std::wostream::put();
  std::wostream::flush();
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38 < 0)
  {
    operator delete(v36);
  }

  if (*(a1 + 32))
  {
    sub_275CDCC60(&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v19 = &v36;
    }

    else
    {
      v19 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v20 = v38;
    }

    else
    {
      v20 = v37;
    }

    v21 = sub_275CE4604(a2, v19, v20);
    v22 = sub_275CE4604(v21, &unk_275D10548, 4);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v23->__vftable[3].__on_zero_shared)(v23, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 2));
  }

  if (*(a1 + 40))
  {
    sub_275CDCC60(&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v24 = &v36;
    }

    else
    {
      v24 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v25 = v38;
    }

    else
    {
      v25 = v37;
    }

    v26 = sub_275CE4604(a2, v24, v25);
    v27 = sub_275CE4604(v26, &unk_275D1055C, 5);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v28->__vftable[3].__on_zero_shared)(v28, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 2));
  }

  if (*(a1 + 48))
  {
    sub_275CDCC60(&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v29 = &v36;
    }

    else
    {
      v29 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v30 = v38;
    }

    else
    {
      v30 = v37;
    }

    v31 = sub_275CE4604(a2, v29, v30);
    v32 = sub_275CE4604(v31, &unk_275D10574, 5);
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v33 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v33->__vftable[3].__on_zero_shared)(v33, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 48) + 32))(*(a1 + 48), a2, (a3 + 2));
  }
}

void sub_275CE1D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Fraction::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(&__p, 2 * a3, 32);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15;
  }

  v8 = sub_275CE4604(a2, p_p, v7);
  sub_275CE4604(v8, &unk_275D1058C, 9);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    sub_275CE4604(a2, &unk_275D105B4, 18);
  }

  blahtex::LayoutTree::Node::PrintFields(a1, &__p);
  if ((v16 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15;
  }

  v11 = sub_275CE4604(a2, v9, v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v17, MEMORY[0x277D82688]);
  (v12->__vftable[3].__on_zero_shared)(v12, 10);
  std::locale::~locale(&v17);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  (*(**(a1 + 24) + 32))(*(a1 + 24), a2, (a3 + 1));
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

void sub_275CE1F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::Fenced::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(v27, 2 * a3, 32);
  if ((v28 & 0x80u) == 0)
  {
    v6 = v27;
  }

  else
  {
    v6 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = v27[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D10600, 8);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D10624, 3);
  v15 = *(a1 + 71);
  if (v15 >= 0)
  {
    v16 = a1 + 48;
  }

  else
  {
    v16 = *(a1 + 48);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 71);
  }

  else
  {
    v17 = *(a1 + 56);
  }

  v18 = sub_275CE4604(v14, v16, v17);
  v19 = sub_275CE4604(v18, &unk_275D10310, 2);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v26 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v21 = v26;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = sub_275CE4604(v19, v20, v21);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v29, MEMORY[0x277D82688]);
  (v23->__vftable[3].__on_zero_shared)(v23, 10);
  std::locale::~locale(&v29);
  std::wostream::put();
  std::wostream::flush();
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return (*(**(a1 + 72) + 32))(*(a1 + 72), a2, (a3 + 1));
}

void sub_275CE21B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::Stretchy::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(v20, 2 * a3, 32);
  if ((v21 & 0x80u) == 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v20[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D10600, 8);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D10624, 3);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v15 = v19;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = sub_275CE4604(v13, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v22, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v22);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_275CE2378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Phantom::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  sub_275CDCC60(v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D10634, 8);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = sub_275CE4604(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 3) + 32))(*(a1 + 3), a2, (a3 + 1));
}

void sub_275CE2548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Cancel::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  sub_275CDCC60(v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D10658, 7);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = sub_275CE4604(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 3) + 32))(*(a1 + 3), a2, (a3 + 1));
}

void sub_275CE2718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Sqrt::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  sub_275CDCC60(v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D10678, 5);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = sub_275CE4604(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 3) + 32))(*(a1 + 3), a2, (a3 + 1));
}

void sub_275CE28E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Root::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  sub_275CDCC60(v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D10690, 5);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = sub_275CE4604(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  (*(**(a1 + 3) + 32))(*(a1 + 3), a2, (a3 + 1));
  return (*(**(a1 + 4) + 32))(*(a1 + 4), a2, (a3 + 1));
}

void sub_275CE2AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::Table::Print(uint64_t a1, void *a2, int a3)
{
  v6 = 2 * a3;
  sub_275CDCC60(&v30, 2 * a3, 32);
  if ((v32 & 0x80u) == 0)
  {
    v7 = &v30;
  }

  else
  {
    v7 = v30;
  }

  if ((v32 & 0x80u) == 0)
  {
    v8 = v32;
  }

  else
  {
    v8 = v31;
  }

  v9 = sub_275CE4604(a2, v7, v8);
  v10 = sub_275CE4604(v9, &unk_275D106EC, 6);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v29 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v12 = v29;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = sub_275CE4604(v10, v11, v12);
  v14 = sub_275CE4604(v13, dword_275D10298, 1);
  v15 = (&off_27A683A90 + 2 * *(a1 + 48));
  v16 = sub_275CE4604(v14, *v15, v15[1]);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v33, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v33);
  std::wostream::put();
  std::wostream::flush();
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v30);
  }

  v18 = *(a1 + 24);
  if (v18 != *(a1 + 32))
  {
    v19 = v6 + 2;
    v20 = MEMORY[0x277D82688];
    do
    {
      sub_275CDCC60(&v30, v19, 32);
      if ((v32 & 0x80u) == 0)
      {
        v21 = &v30;
      }

      else
      {
        v21 = v30;
      }

      if ((v32 & 0x80u) == 0)
      {
        v22 = v32;
      }

      else
      {
        v22 = v31;
      }

      v23 = sub_275CE4604(a2, v21, v22);
      v24 = sub_275CE4604(v23, &unk_275D10708, 9);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(__p, v20);
      (v25->__vftable[3].__on_zero_shared)(v25, 10);
      std::locale::~locale(__p);
      std::wostream::put();
      std::wostream::flush();
      if (v32 < 0)
      {
        operator delete(v30);
      }

      for (i = *v18; i != v18[1]; ++i)
      {
        v27 = *i;
        (*(*v27 + 32))(v27, a2, (a3 + 2));
      }

      v18 += 3;
    }

    while (v18 != *(a1 + 32));
  }
}

void sub_275CE2E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CE2E5C(uint64_t a1)
{
  *a1 = &unk_2884CC090;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_275CE2EAC(uint64_t a1)
{
  *a1 = &unk_2884CC090;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CE2F20(uint64_t a1)
{
  *a1 = &unk_2884CBDA0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_2884CC090;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_275CE2F9C(uint64_t a1)
{
  *a1 = &unk_2884CBDA0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_2884CC090;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE304C(void *a1)
{
  *a1 = &unk_2884CBE10;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_275CE311C(void *a1)
{
  *a1 = &unk_2884CBE10;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE320C(void *a1)
{
  *a1 = &unk_2884CBE48;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_275CE32AC(void *a1)
{
  *a1 = &unk_2884CBE48;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CE336C(uint64_t a1)
{
  *a1 = &unk_2884CBE98;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_275CE33FC(uint64_t a1)
{
  *a1 = &unk_2884CBE98;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CE34AC(uint64_t a1)
{
  *a1 = &unk_2884CBEE8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_275CE34FC(uint64_t a1)
{
  *a1 = &unk_2884CBEE8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE356C(void *a1)
{
  *a1 = &unk_2884CBF38;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CE35DC(void *a1)
{
  *a1 = &unk_2884CBF38;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE366C(void *a1)
{
  *a1 = &unk_2884CBF88;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CE36DC(void *a1)
{
  *a1 = &unk_2884CBF88;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE376C(void *a1)
{
  *a1 = &unk_2884CBFD8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CE37DC(void *a1)
{
  *a1 = &unk_2884CBFD8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE386C(void *a1)
{
  *a1 = &unk_2884CC028;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_275CE390C(void *a1)
{
  *a1 = &unk_2884CC028;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CE39CC(void *__dst, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v9;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v10)
  {
    sub_275CE3AE0(__dst + 3, a3);
  }

  v11 = *(a4 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11)
  {
    sub_275CE3AE0(__dst + 3, a4);
  }

  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (v12)
  {
    sub_275CE3AE0(__dst + 3, a5);
  }

  return __dst;
}

void sub_275CE3AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C97BF0(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CE3AE0(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_275CE3B80(a1, a2);
  }

  else
  {
    sub_275CE3B20(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_275CE3B20(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_275CD96C4(result[1], *a2, *(a2 + 1));
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

uint64_t sub_275CE3B80(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_275C8D77C();
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

  v21 = a1;
  if (v6)
  {
    sub_275C97C94(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_275C97CEC(&v17);
  return v11;
}

void sub_275CE3CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C97CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CE3CC0(uint64_t a1, int a2, __int128 *a3)
{
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_275CD96C4((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = a1 + 56;
  *(a1 + 64) = a1 + 56;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_275CE3D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CE3DCC(a1, v5);
      v5 += 16;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CE3DCC(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

BOOL sub_275CE404C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *a3;
  v7 = *(a3 + 8);
  v9[0] = v5;
  v9[1] = v4;
  return v4 == v7 && sub_275CE4504(v9, v6, v4) == 0;
}

unint64_t sub_275CE4098(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_275CE4444(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_275CE4398(a2, a3);
  }

  else
  {
    return sub_275CE42A0(a2, a3);
  }
}

unint64_t sub_275CE42A0(_DWORD *a1, unint64_t a2)
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

unint64_t sub_275CE4398(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_275CE4444(void *a1, uint64_t a2)
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

uint64_t sub_275CE4504(uint64_t a1, const __int32 *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    result = wmemcmp(*a1, a2, a3);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 8);
  }

  v7 = v4 == v3;
  if (v4 < v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void sub_275CE4558(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275CE45AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275CE45AC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_275CE4604(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277C8CE90](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + 4 * a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_275CE47AC(v7, a2, v11, a2 + 4 * a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277C8CEA0](v13);
  return a1;
}

void sub_275CE4744(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x277C8CEA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x275CE4724);
}

uint64_t sub_275CE47AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= (a4 - a2) >> 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - ((a4 - a2) >> 2);
    }

    v13 = (a3 - a2) >> 2;
    if (v13 >= 1 && (*(*a1 + 96))(a1) != v13)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_275CDCC60(__p, v12, a6);
      v14 = v19 >= 0 ? __p : __p[0];
      v15 = (*(*v6 + 96))(v6, v14, v12);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 != v12)
      {
        return 0;
      }
    }

    v16 = (a4 - a3) >> 2;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_275CE4920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CE493C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__int128 *sub_275CE4A14(__int128 *result, uint64_t *a2)
{
  v2 = *(result + 2);
  *(result + 2) = a2[2];
  a2[2] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  if (*(result + 2))
  {
    **(result + 1) = result;
    v4 = *result;
  }

  else
  {
    *result = result;
    v4 = result;
  }

  *(v4 + 1) = result;
  if (a2[2])
  {
    *a2[1] = a2;
    v5 = *a2;
  }

  else
  {
    *a2 = a2;
    v5 = a2;
  }

  v5[1] = a2;
  return result;
}

void sub_275CE4A88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_275C8D86C();
}

void *sub_275CE4AE0(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_275CE404C(a1, v11 + 2, a2))
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

uint64_t sub_275CE4BE4(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CE4C60(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *sub_275CE4C60(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_275CE4E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CE4F08(a1, v5);
      v5 += 32;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CE4F08(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void blahtex::StripReservedSuffix(std::wstring *__str@<X0>, std::wstring *a2@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 7)
    {
LABEL_16:
      sub_275CD96C4(a2, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
      return;
    }
  }

  else if (size <= 7)
  {
    goto LABEL_15;
  }

  std::wstring::basic_string(&__p, __str, size - 8, 8uLL, &v9);
  v5 = 0;
  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0 && __p.__r_.__value_.__l.__size_ == 8)
  {
    v5 = wmemcmp(__p.__r_.__value_.__l.__data_, dword_275D10B68, 8uLL) == 0;
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v6 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (!v5)
  {
    if ((v7 & 0x80) == 0)
    {
LABEL_15:
      *&a2->__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      return;
    }

    goto LABEL_16;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  std::wstring::basic_string(a2, __str, 0, v7 - 8, &__p);
}

uint64_t blahtex::MacroProcessor::MacroProcessor(uint64_t a1, __int128 **a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 32) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    v8 = a2[1];
  }

  else
  {
    v7 = 0;
    do
    {
      v4 = (v4 - 24);
      v7 = sub_275CE70A8(v3, v7, v4) + 1;
    }

    while (v4 != v5);
    v4 = *a2;
    v8 = a2[1];
  }

  *(a1 + 68) = -1431655765 * ((v8 - v4) >> 3);
  *(a1 + 64) = 0;
  return a1;
}

void sub_275CE5314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C97BF0(va);
  sub_275CE6FE0(v2);
  _Unwind_Resume(a1);
}

void blahtex::MacroProcessor::Advance(blahtex::MacroProcessor *this)
{
  v1 = *(this + 6);
  if (*(this + 5) != v1)
  {
    v3 = (v1 - 24);
    if (*(v1 - 1) < 0)
    {
      operator delete(*v3);
    }

    *(this + 6) = v3;
    ++*(this + 17);
    *(this + 64) = 0;
  }
}

void blahtex::MacroProcessor::SkipWhitespace(blahtex::MacroProcessor *this)
{
  while (1)
  {
    blahtex::MacroProcessor::Peek(this, __p);
    if (v5 < 0)
    {
      break;
    }

    if (v5 != 1)
    {
      return;
    }

    v2 = __p;
LABEL_5:
    v3 = wmemcmp(v2, &unk_275D10B8C, 1uLL);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    if (v3)
    {
      return;
    }

    blahtex::MacroProcessor::Advance(this);
  }

  v2 = __p[0];
  if (__p[1] == 1)
  {
    goto LABEL_5;
  }

  operator delete(__p[0]);
}

void blahtex::MacroProcessor::Peek(blahtex::MacroProcessor *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 5);
  v5 = *(this + 6);
  v4 = (this + 40);
  if (v3 == v5)
  {
    goto LABEL_57;
  }

  __str = a2;
  while (1)
  {
    v7 = (*(this + 17) + 1);
    *(this + 17) = v7;
    if ((v7 - 0x5555555555555555 * ((v5 - v3) >> 3)) >> 5 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v80, dword_275D10E20);
      sub_275CDAE0C(&v78, &dword_275D10BF0);
      sub_275CDAE0C(&v77, &dword_275D10BF0);
      sub_275CDAE0C(v76, &dword_275D10BF0);
      sub_275CE39CC(exception, &v80, &v78, &v77, v76);
      __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
    }

    v8 = (v5 - 24);
    v9 = *(v5 - 1);
    if (*(this + 64) == 1)
    {
      if (v9 < 0)
      {
        sub_275CD96C4(a2, *(v5 - 24), *(v5 - 16));
      }

      else
      {
        v37 = *v8;
        *(a2 + 16) = *(v5 - 8);
        *a2 = v37;
      }

      return;
    }

    if (v9 < 0)
    {
      v12 = *(v5 - 16);
      if (v12 != 13)
      {
        goto LABEL_12;
      }

      v13 = wmemcmp(*v8, dword_275D10E58, 0xDuLL);
      a2 = __str;
      if (!v13)
      {
        goto LABEL_60;
      }

      if (*(v5 - 1) < 0)
      {
        break;
      }
    }

LABEL_6:
    v10 = *(this + 6);
    if (*(v10 - 1) < 0)
    {
      sub_275CD96C4(a2, *(v10 - 24), *(v10 - 16));
      a2 = __str;
    }

    else
    {
      v11 = *(v10 - 24);
      *(a2 + 16) = *(v10 - 8);
      *a2 = v11;
    }

    v16 = sub_275CE791C(this, a2);
    if (!v16)
    {
      goto LABEL_91;
    }

    v17 = *(this + 6);
    v18 = (v17 - 24);
    if (*(v17 - 1) < 0)
    {
      operator delete(*v18);
    }

    *(this + 6) = v18;
    sub_275CE7A5C(&v80, *(v16 + 10));
    if (*(v16 + 10) >= 1)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if ((blahtex::MacroProcessor::ReadArgument(this, (v80 + v19)) & 1) == 0)
        {
          v67 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(&v78, dword_275D10DD4);
          blahtex::StripReservedSuffix(__str, &v77);
          sub_275CDAE0C(v76, &dword_275D10BF0);
          sub_275CDAE0C(v75, &dword_275D10BF0);
          sub_275CE39CC(v67, &v78, &v77, v76, v75);
          __cxa_throw(v67, &unk_2884CB710, sub_275CDAEAC);
        }

        ++v20;
        v19 += 24;
      }

      while (v20 < *(v16 + 10));
    }

    v78 = 0uLL;
    v79 = 0;
    v21 = v16[6];
    if (v21 == v16[7])
    {
      v34 = 0;
      v36 = 0;
      goto LABEL_54;
    }

    do
    {
      ++*(this + 17);
      v22 = *(v21 + 23);
      if (v22 < 0)
      {
        if (v21[1] != 1)
        {
          goto LABEL_33;
        }

        v23 = *v21;
      }

      else
      {
        v23 = v21;
        if (v22 != 1)
        {
          goto LABEL_33;
        }
      }

      if (wmemcmp(v23, &unk_275D10FD4, 1uLL))
      {
LABEL_33:
        sub_275CE3AE0(&v78, v21);
        goto LABEL_34;
      }

      v24 = (v21 + 3);
      if (v21 + 3 == v16[7])
      {
        goto LABEL_134;
      }

      v25 = *(v21 + 47);
      if (v25 < 0)
      {
        if (v21[4] != 1)
        {
LABEL_134:
          v69 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(&v77, dword_275D10FDC);
          sub_275CDAE0C(v76, &dword_275D10BF0);
          sub_275CDAE0C(v75, &dword_275D10BF0);
          sub_275CE39CC(v69, &v77, __str, v76, v75);
          __cxa_throw(v69, &unk_2884CB710, sub_275CDAEAC);
        }

        v26 = *v24;
      }

      else
      {
        v26 = (v21 + 3);
        if (v25 != 1)
        {
          goto LABEL_134;
        }
      }

      v27 = *v26;
      v28 = v27 - 49;
      if (v27 < 49 || v28 >= *(v16 + 10))
      {
        v68 = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v77, dword_275D10FDC);
        sub_275CDAE0C(v76, &dword_275D10BF0);
        sub_275CDAE0C(v75, &dword_275D10BF0);
        sub_275CE39CC(v68, &v77, __str, v76, v75);
        __cxa_throw(v68, &unk_2884CB710, sub_275CDAEAC);
      }

      v29 = (v80 + 24 * v28);
      v31 = *v29;
      v30 = v29[1];
      if (*v29 == v30)
      {
        v33 = *v29;
      }

      else
      {
        do
        {
          sub_275CE3AE0(&v78, v31);
          v31 = (v31 + 24);
        }

        while (v31 != v30);
        v32 = (v80 + 24 * v28);
        v31 = *v32;
        v33 = v32[1];
      }

      *(this + 17) -= 1431655765 * ((v33 - v31) >> 3);
      v21 = v24;
LABEL_34:
      v21 += 3;
    }

    while (v21 != v16[7]);
    v35 = *(&v78 + 1);
    v34 = v78;
    if (*(&v78 + 1) == v78)
    {
      v36 = v78;
    }

    else
    {
      do
      {
        v35 = (v35 - 24);
        sub_275CE3AE0(v4, v35);
      }

      while (v35 != v34);
      v36 = *(&v78 + 1);
      v34 = v78;
    }

LABEL_54:
    *(this + 17) -= 1431655765 * ((v36 - v34) >> 3);
    v77.__r_.__value_.__r.__words[0] = &v78;
    sub_275C97BF0(&v77);
    *&v78 = &v80;
    sub_275CE7BA4(&v78);
    a2 = __str;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str->__r_.__value_.__l.__data_);
      a2 = __str;
    }

    v3 = *(this + 5);
    v5 = *(this + 6);
    if (v3 == v5)
    {
LABEL_57:
      sub_275CDAE0C(a2, &dword_275D10BF0);
      return;
    }
  }

  v12 = *(v5 - 16);
LABEL_12:
  if (v12 == 19)
  {
    v14 = wmemcmp(*v8, dword_275D10E90, 0x13uLL);
    a2 = __str;
    if (!v14)
    {
      goto LABEL_60;
    }

    if ((*(v5 - 1) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v5 - 16) != 20)
  {
    goto LABEL_6;
  }

  v15 = wmemcmp(*v8, dword_275D10EE0, 0x14uLL);
  a2 = __str;
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_60:
  v38 = *(this + 6);
  if (*(v38 - 1) < 0)
  {
    sub_275CD96C4(a2, *(v38 - 24), *(v38 - 16));
    v38 = *(this + 6);
  }

  else
  {
    v39 = *(v38 - 24);
    *(a2 + 16) = *(v38 - 8);
    *a2 = v39;
  }

  v40 = (v38 - 24);
  if (*(v38 - 1) < 0)
  {
    operator delete(*v40);
  }

  *(this + 6) = v40;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v41 = *(this + 6);
  v42 = __str;
  if (*(this + 5) == v41)
  {
    goto LABEL_73;
  }

  v43 = (v41 - 24);
  v44 = *(v41 - 1);
  if (v44 < 0)
  {
    if (*(v41 - 16) == 1)
    {
      v43 = *v43;
      goto LABEL_72;
    }

LABEL_73:
    size = SHIBYTE(v42->__r_.__value_.__r.__words[2]);
    if (size >= 0)
    {
      v46 = v42;
    }

    else
    {
      v46 = v42->__r_.__value_.__r.__words[0];
    }

    if (size < 0)
    {
      size = v42->__r_.__value_.__l.__size_;
    }

    v47 = &v46[size];
    if (size >= 8)
    {
      v49 = v46;
      do
      {
        v50 = wmemchr(v49, 82, size - 7);
        if (!v50)
        {
          break;
        }

        v48 = v50;
        if (!wmemcmp(v50, dword_275D10B68, 8uLL))
        {
          goto LABEL_85;
        }

        v49 = v48 + 1;
        size = v47 - (v48 + 1);
      }

      while (size > 7);
      v48 = v47;
LABEL_85:
      v42 = __str;
    }

    else
    {
      v48 = &v46[size];
    }

    if (v48 == v47)
    {
      v51 = -1;
    }

    else
    {
      v51 = v48 - v46;
    }

    std::wstring::erase(v42, v51, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_90;
  }

  if (v44 != 1)
  {
    goto LABEL_73;
  }

LABEL_72:
  v42 = __str;
  if (wmemcmp(v43, &unk_275D10CF4, 1uLL))
  {
    goto LABEL_73;
  }

  MEMORY[0x277C8CD90](*(this + 6) - 24, &unk_275D10B9C);
  v52 = *(this + 5);
  v53 = *(this + 6);
  v54 = v53 - 24;
  if (v53 - 24 == v52)
  {
    goto LABEL_120;
  }

  v55 = 0;
  v56 = v53 - 48;
  while (2)
  {
    if (v55 > 0)
    {
LABEL_101:
      ++*(this + 17);
      if (*(v56 + 23) < 0)
      {
        if (*(v56 + 8) != 1)
        {
          goto LABEL_111;
        }

        v60 = *v56;
      }

      else
      {
        v59 = *(v56 + 23);
        v60 = v56;
        if (v59 != 1)
        {
LABEL_109:
          v61 = v56;
          if (v59 != 1)
          {
            goto LABEL_117;
          }

          goto LABEL_113;
        }
      }

      if (!wmemcmp(v60, &unk_275D10B9C, 1uLL))
      {
        ++v55;
        goto LABEL_117;
      }

      if ((*(v56 + 23) & 0x80000000) == 0)
      {
        v59 = *(v56 + 23);
        goto LABEL_109;
      }

LABEL_111:
      if (*(v56 + 8) != 1)
      {
        goto LABEL_117;
      }

      v61 = *v56;
LABEL_113:
      if (!wmemcmp(v61, &unk_275D10B94, 1uLL))
      {
        if (v55 <= 0)
        {
          v71 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(&v80, dword_275D10F34);
          sub_275CDAE0C(&v78, &dword_275D10BF0);
          sub_275CDAE0C(&v77, &dword_275D10BF0);
          sub_275CDAE0C(v76, &dword_275D10BF0);
          sub_275CE39CC(v71, &v80, &v78, &v77, v76);
          __cxa_throw(v71, &unk_2884CB710, sub_275CDAEAC);
        }

        --v55;
      }

LABEL_117:
      v52 = *v4;
      v62 = v56 - 24;
      v63 = v56 == *v4;
      v56 -= 24;
      if (v63)
      {
        v54 = v62 + 24;
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  v57 = *(v56 + 23);
  if (v57 < 0)
  {
    if (*(v56 + 8) != 1)
    {
      goto LABEL_101;
    }

    v58 = *v56;
  }

  else
  {
    v58 = v56;
    if (v57 != 1)
    {
      goto LABEL_101;
    }
  }

  if (wmemcmp(v58, &unk_275D10D78, 1uLL))
  {
    goto LABEL_101;
  }

  v52 = *v4;
  v54 = v56 + 24;
LABEL_120:
  if (v54 == v52)
  {
    v73 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v80, dword_275D10D80);
    sub_275CDAE0C(&v78, &dword_275D10BF0);
    sub_275CDAE0C(&v77, &dword_275D10BF0);
    sub_275CDAE0C(v76, &dword_275D10BF0);
    sub_275CE39CC(v73, &v80, &v78, &v77, v76);
    __cxa_throw(v73, &unk_2884CB710, sub_275CDAEAC);
  }

  v64 = (v54 - 24);
  v65 = *(v54 - 1);
  if (v65 < 0)
  {
    if (*(v54 - 16) != 1)
    {
      goto LABEL_137;
    }

    v66 = *v64;
  }

  else
  {
    v66 = (v54 - 24);
    if (v65 != 1)
    {
LABEL_137:
      v72 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v80, dword_275D10DD4);
      sub_275CDAE0C(&v78, dword_275D10F84);
      sub_275CDAE0C(&v77, &dword_275D10BF0);
      sub_275CDAE0C(v76, &dword_275D10BF0);
      sub_275CE39CC(v72, &v80, &v78, &v77, v76);
      __cxa_throw(v72, &unk_2884CB710, sub_275CDAEAC);
    }
  }

  if (wmemcmp(v66, &unk_275D10D78, 1uLL))
  {
    goto LABEL_137;
  }

  v42 = __str;
  MEMORY[0x277C8CD90](v64, &unk_275D10B94);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0 && __str->__r_.__value_.__l.__size_ == 13 && !wmemcmp(__str->__r_.__value_.__l.__data_, dword_275D10E58, 0xDuLL))
  {
    MEMORY[0x277C8CD90](__str, &unk_275D10F9C);
  }

LABEL_90:
  sub_275CE3AE0(v4, v42);
LABEL_91:
  *(this + 64) = 1;
}

void sub_275CE5F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((v40 & 1) == 0)
    {
LABEL_12:
      if (*(a9 + 23) < 0)
      {
        operator delete(*a9);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v39);
  goto LABEL_12;
}

void blahtex::MacroProcessor::SkipWhitespaceRaw(blahtex::MacroProcessor *this)
{
  for (i = *(this + 6); *(this + 5) != i; i = *(this + 6))
  {
    v3 = (i - 24);
    v4 = *(i - 1);
    if (v4 < 0)
    {
      if (*(i - 16) != 1)
      {
        return;
      }

      v3 = *v3;
    }

    else if (v4 != 1)
    {
      return;
    }

    if (wmemcmp(v3, &unk_275D10B8C, 1uLL))
    {
      break;
    }

    blahtex::MacroProcessor::Advance(this);
  }
}

uint64_t blahtex::MacroProcessor::ReadArgument(uint64_t a1, void *a2)
{
  blahtex::MacroProcessor::SkipWhitespaceRaw(a1);
  v4 = *(a1 + 48);
  if (*(a1 + 40) == v4)
  {
    return 0;
  }

  if (*(v4 - 1) < 0)
  {
    sub_275CD96C4(&__dst, *(v4 - 24), *(v4 - 16));
    v8 = *(a1 + 48);
    v5 = (v8 - 24);
    if (*(v8 - 1) < 0)
    {
      operator delete(*v5);
    }
  }

  else
  {
    v5 = (v4 - 24);
    v6 = *(v4 - 24);
    v28 = *(v4 - 8);
    __dst = v6;
  }

  *(a1 + 48) = v5;
  ++*(a1 + 68);
  v9 = HIBYTE(v28);
  if (v28 < 0)
  {
    if (*(&__dst + 1) != 1)
    {
      goto LABEL_17;
    }

    p_dst = __dst;
  }

  else
  {
    if (HIBYTE(v28) != 1)
    {
      goto LABEL_15;
    }

    p_dst = &__dst;
  }

  if (!wmemcmp(p_dst, &unk_275D10B94, 1uLL))
  {
    v7 = 0;
    goto LABEL_22;
  }

  if (SHIBYTE(v28) < 0)
  {
LABEL_17:
    if (*(&__dst + 1) == 1)
    {
      v11 = __dst;
      goto LABEL_19;
    }

LABEL_20:
    sub_275CE3AE0(a2, &__dst);
    goto LABEL_21;
  }

  v9 = HIBYTE(v28);
LABEL_15:
  if (v9 != 1)
  {
    goto LABEL_20;
  }

  v11 = &__dst;
LABEL_19:
  if (wmemcmp(v11, &unk_275D10B9C, 1uLL))
  {
    goto LABEL_20;
  }

  v13 = 1;
  while (1)
  {
    v14 = *(a1 + 48);
    if (*(a1 + 40) == v14)
    {
      break;
    }

    ++*(a1 + 68);
    if (*(v14 - 1) < 0)
    {
      sub_275CD96C4(__p, *(v14 - 24), *(v14 - 16));
      v14 = *(a1 + 48);
    }

    else
    {
      v15 = *(v14 - 24);
      v26 = *(v14 - 8);
      *__p = v15;
    }

    v16 = (v14 - 24);
    if (*(v14 - 1) < 0)
    {
      operator delete(*v16);
    }

    *(a1 + 48) = v16;
    v17 = HIBYTE(v26);
    if (v26 < 0)
    {
      if (__p[1] != 1)
      {
        goto LABEL_49;
      }

      v18 = __p[0];
    }

    else
    {
      if (HIBYTE(v26) != 1)
      {
        goto LABEL_41;
      }

      v18 = __p;
    }

    if (!wmemcmp(v18, &unk_275D10B9C, 1uLL))
    {
      ++v13;
LABEL_49:
      sub_275CE3AE0(a2, __p);
      v20 = 1;
      goto LABEL_50;
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      v17 = HIBYTE(v26);
LABEL_41:
      if (v17 != 1)
      {
        goto LABEL_49;
      }

      v19 = __p;
      goto LABEL_43;
    }

    if (__p[1] != 1)
    {
      goto LABEL_49;
    }

    v19 = __p[0];
LABEL_43:
    if (wmemcmp(v19, &unk_275D10B94, 1uLL))
    {
      goto LABEL_49;
    }

    if (--v13)
    {
      goto LABEL_49;
    }

    v20 = 0;
LABEL_50:
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
      if ((v20 & 1) == 0)
      {
        break;
      }
    }

    else if ((v20 & 1) == 0)
    {
      break;
    }
  }

  if (v13 >= 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(__p, dword_275D10BA4);
    sub_275CDAE0C(v24, &dword_275D10BF0);
    sub_275CDAE0C(v23, &dword_275D10BF0);
    sub_275CDAE0C(v22, &dword_275D10BF0);
    sub_275CE39CC(exception, __p, v24, v23, v22);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

LABEL_21:
  *(a1 + 64) = 0;
  v7 = 1;
LABEL_22:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  return v7;
}

void sub_275CE6584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (*(v35 - 57) < 0)
      {
        operator delete(*(v35 - 80));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void blahtex::MacroProcessor::Get(blahtex::MacroProcessor *this@<X0>, uint64_t a2@<X8>)
{
  blahtex::MacroProcessor::Peek(this, a2);

  blahtex::MacroProcessor::Advance(this);
}

void blahtex::MacroProcessor::HandleNewcommand(blahtex::MacroProcessor *this)
{
  v2 = *(this + 6);
  v3 = (v2 - 24);
  if (*(v2 - 1) < 0)
  {
    operator delete(*v3);
  }

  *(this + 6) = v3;
  ++*(this + 17);
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v4 = *(this + 6);
  if (*(this + 5) == v4)
  {
LABEL_63:
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&__dst, dword_275D10BF4);
    sub_275CDAE0C(&v45, dword_275D10C4C);
    sub_275CDAE0C(v44, &dword_275D10BF0);
    sub_275CDAE0C(v43, &dword_275D10BF0);
    sub_275CE39CC(exception, &__dst, &v45, v44, v43);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  v5 = (v4 - 24);
  v6 = *(v4 - 1);
  if (v6 < 0)
  {
    if (*(v4 - 16) != 1)
    {
      goto LABEL_63;
    }

    v5 = *v5;
  }

  else if (v6 != 1)
  {
    goto LABEL_63;
  }

  if (wmemcmp(v5, &unk_275D10B9C, 1uLL))
  {
    goto LABEL_63;
  }

  v7 = *(this + 6);
  v8 = (v7 - 24);
  if (*(v7 - 1) < 0)
  {
    operator delete(*v8);
  }

  *(this + 6) = v8;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v9 = *(this + 6);
  if (*(this + 5) == v9)
  {
    goto LABEL_64;
  }

  v10 = (v9 - 24);
  if ((*(v9 - 1) & 0x80000000) == 0)
  {
    if (*(v9 - 1) && *v10 == 92)
    {
      v11 = *v10;
      v47 = *(v9 - 8);
      __dst = v11;
      goto LABEL_20;
    }

LABEL_64:
    v35 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&__dst, dword_275D10C7C);
    sub_275CDAE0C(&v45, &dword_275D10BF0);
    sub_275CDAE0C(v44, &dword_275D10BF0);
    sub_275CDAE0C(v43, &dword_275D10BF0);
    sub_275CE39CC(v35, &__dst, &v45, v44, v43);
    __cxa_throw(v35, &unk_2884CB710, sub_275CDAEAC);
  }

  if (!*(v9 - 16) || **v10 != 92)
  {
    goto LABEL_64;
  }

  sub_275CD96C4(&__dst, *(v9 - 24), *(v9 - 16));
  v9 = *(this + 6);
LABEL_20:
  v12 = (v9 - 24);
  if (*(v9 - 1) < 0)
  {
    operator delete(*v12);
  }

  *(this + 6) = v12;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v13 = *(this + 6);
  if (*(this + 5) == v13)
  {
    v37 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v45, dword_275D10BA4);
    sub_275CDAE0C(v44, &dword_275D10BF0);
    sub_275CDAE0C(v43, &dword_275D10BF0);
    sub_275CDAE0C(v42, &dword_275D10BF0);
    sub_275CE39CC(v37, &v45, v44, v43, v42);
    __cxa_throw(v37, &unk_2884CB710, sub_275CDAEAC);
  }

  v14 = (v13 - 24);
  v15 = *(v13 - 1);
  if (v15 < 0)
  {
    if (*(v13 - 16) != 1)
    {
      goto LABEL_65;
    }

    v14 = *v14;
  }

  else if (v15 != 1)
  {
LABEL_65:
    v36 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v45, dword_275D10C7C);
    sub_275CDAE0C(v44, &dword_275D10BF0);
    sub_275CDAE0C(v43, &dword_275D10BF0);
    sub_275CDAE0C(v42, &dword_275D10BF0);
    sub_275CE39CC(v36, &v45, v44, v43, v42);
    __cxa_throw(v36, &unk_2884CB710, sub_275CDAEAC);
  }

  if (wmemcmp(v14, &unk_275D10B94, 1uLL))
  {
    goto LABEL_65;
  }

  v16 = *(this + 6);
  v17 = (v16 - 24);
  if (*(v16 - 1) < 0)
  {
    operator delete(*v17);
  }

  *(this + 6) = v17;
  *&v45 = &__dst;
  v18 = sub_275CE751C(this, &__dst);
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v19 = *(this + 6);
  if (*(this + 5) != v19)
  {
    v20 = (v19 - 24);
    v21 = *(v19 - 1);
    if (v21 < 0)
    {
      if (*(v19 - 16) != 1)
      {
        goto LABEL_59;
      }

      v20 = *v20;
    }

    else if (v21 != 1)
    {
      goto LABEL_59;
    }

    if (wmemcmp(v20, &unk_275D10CF4, 1uLL))
    {
      goto LABEL_59;
    }

    v22 = *(this + 6);
    v23 = (v22 - 24);
    if (*(v22 - 1) < 0)
    {
      operator delete(*v23);
    }

    *(this + 6) = v23;
    blahtex::MacroProcessor::SkipWhitespaceRaw(this);
    v24 = *(this + 6);
    if (*(this + 5) == v24)
    {
LABEL_69:
      v40 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v45, dword_275D10CFC);
      sub_275CDAE0C(v44, &dword_275D10BF0);
      sub_275CDAE0C(v43, &dword_275D10BF0);
      sub_275CE39CC(v40, &v45, &__dst, v44, v43);
      __cxa_throw(v40, &unk_2884CB710, sub_275CDAEAC);
    }

    v25 = (v24 - 24);
    v26 = *(v24 - 1);
    if (v26 < 0)
    {
      if (*(v24 - 16) != 1)
      {
        goto LABEL_69;
      }

      v27 = *v25;
    }

    else
    {
      v27 = (v24 - 24);
      if (v26 != 1)
      {
        goto LABEL_69;
      }
    }

    v28 = *v27;
    *(v18 + 10) = v28 - 48;
    if ((v28 - 58) <= 0xFFFFFFF6)
    {
      v41 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v45, dword_275D10CFC);
      sub_275CDAE0C(v44, &dword_275D10BF0);
      sub_275CDAE0C(v43, &dword_275D10BF0);
      sub_275CE39CC(v41, &v45, &__dst, v44, v43);
      __cxa_throw(v41, &unk_2884CB710, sub_275CDAEAC);
    }

    if (*(v24 - 1) < 0)
    {
      operator delete(*v25);
    }

    *(this + 6) = v25;
    blahtex::MacroProcessor::SkipWhitespaceRaw(this);
    v29 = *(this + 6);
    if (*(this + 5) == v29)
    {
LABEL_68:
      v39 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v45, dword_275D10D80);
      sub_275CDAE0C(v44, &dword_275D10BF0);
      sub_275CDAE0C(v43, &dword_275D10BF0);
      sub_275CDAE0C(v42, &dword_275D10BF0);
      sub_275CE39CC(v39, &v45, v44, v43, v42);
      __cxa_throw(v39, &unk_2884CB710, sub_275CDAEAC);
    }

    v30 = (v29 - 24);
    v31 = *(v29 - 1);
    if (v31 < 0)
    {
      if (*(v29 - 16) != 1)
      {
        goto LABEL_68;
      }

      v30 = *v30;
    }

    else if (v31 != 1)
    {
      goto LABEL_68;
    }

    if (wmemcmp(v30, &unk_275D10D78, 1uLL))
    {
      goto LABEL_68;
    }

    v32 = *(this + 6);
    v33 = (v32 - 24);
    if (*(v32 - 1) < 0)
    {
      operator delete(*v33);
    }

    *(this + 6) = v33;
  }

LABEL_59:
  if ((blahtex::MacroProcessor::ReadArgument(this, v18 + 6) & 1) == 0)
  {
    v38 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v45, dword_275D10DD4);
    sub_275CDAE0C(v44, dword_275D10C4C);
    sub_275CDAE0C(v43, &dword_275D10BF0);
    sub_275CDAE0C(v42, &dword_275D10BF0);
    sub_275CE39CC(v38, &v45, v44, v43, v42);
    __cxa_throw(v38, &unk_2884CB710, sub_275CDAEAC);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(__dst);
  }
}

void sub_275CE6E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v33 & 1) == 0)
    {
LABEL_10:
      if (*(v34 - 41) < 0)
      {
        operator delete(*(v34 - 64));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v32);
  goto LABEL_10;
}

uint64_t sub_275CE6FE0(uint64_t a1)
{
  sub_275CE701C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275CE701C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_275CE7060((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_275CE7060(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_275C97BF0(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::wstring *sub_275CE70A8(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_275C8D77C();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v27 = a1;
    if (v15)
    {
      sub_275C97C94(a1, v15);
    }

    v24 = 0;
    v25 = 8 * (v12 >> 3);
    v26 = v25;
    sub_275CE72C0(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    sub_275C97CEC(&v24);
    return v16;
  }

  else if (a2 == v6)
  {
    sub_275CE3B20(a1, a3);
  }

  else
  {
    sub_275CE7250(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    std::wstring::operator=(v4, (a3 + v9));
  }

  return v4;
}

void sub_275CE723C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C97CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CE7250(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_275CE7428(&v12, a2, v7, v6);
}

void *sub_275CE72C0(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v15[4] = v3[4];
      sub_275C97C94(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_275CE74A8(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_275CD96C4(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  v3[2] += 24;
  return result;
}

uint64_t sub_275CE7428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_275CE74A8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t **sub_275CE751C(void *a1, uint64_t a2)
{
  v4 = sub_275CE78D8(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    sub_275CE77D4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_30:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  v13 = *(v11 + 39);
  if (v13 >= 0)
  {
    v14 = *(v11 + 39);
  }

  else
  {
    v14 = v11[3];
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (v14 != v15)
  {
    goto LABEL_30;
  }

  if (v14)
  {
    v17 = v16 >= 0 ? a2 : *a2;
    v18 = v13 >= 0 ? (v11 + 2) : v11[2];
    if (wmemcmp(v18, v17, v14))
    {
      goto LABEL_30;
    }
  }

  return v11;
}

void sub_275CE77C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CE788C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CE788C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275CE7060(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_275CE78D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
    v2 = v3;
  }

  return sub_275CE4098(&v5, a2, 4 * v2);
}

uint64_t **sub_275CE791C(void *a1, uint64_t a2)
{
  v4 = sub_275CE78D8(a1, a2);
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
    if (v12 == v6)
    {
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        if (!v14)
        {
          return i;
        }

        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v13 >= 0 ? (i + 2) : i[2];
        if (!wmemcmp(v18, v17, v14))
        {
          return i;
        }
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

void *sub_275CE7A5C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_275CE7B00(result, a2);
  }

  return result;
}

void sub_275CE7B00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_275CE7B4C(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275CE7B4C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

void sub_275CE7BA4(void ***a1)
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
        sub_275C97BF0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void blahtex::Tokenise(unsigned int **a1, void *a2)
{
  if (a1[1])
  {
    v4 = MEMORY[0x277D85DE0];
    v5 = *a1;
    do
    {
      v6 = *v5;
      if (v6 <= 0x7F)
      {
        if ((*(v4 + 4 * v6 + 60) & 0x4000) == 0)
        {
LABEL_15:
          v10 = *v5;
          if (*v5 != 92)
          {
            if (v10 < 32 || v10 == 127)
            {
              exception = __cxa_allocate_exception(0x30uLL);
              sub_275CDAE0C(&__p, dword_275D11060);
              sub_275CDAE0C(&v32, &dword_275D110A4);
              sub_275CDAE0C(v31, &dword_275D110A4);
              sub_275CDAE0C(v30, &dword_275D110A4);
              sub_275CE39CC(exception, &__p, &v32, v31, v30);
              __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
            }

            *(&__p.__r_.__value_.__s + 23) = 1;
            __p.__r_.__value_.__r.__words[0] = v10;
            sub_275CE8378(a2, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v5;
            continue;
          }

          sub_275CDAE0C(&__p, &unk_275D110A8);
          if (v5 + 1 == &(*a1)[a1[1]])
          {
            v26 = __cxa_allocate_exception(0x30uLL);
            sub_275CDAE0C(&v32, dword_275D110B0);
            sub_275CDAE0C(v31, &dword_275D110A4);
            sub_275CDAE0C(v30, &dword_275D110A4);
            sub_275CDAE0C(v29, &dword_275D110A4);
            sub_275CE39CC(v26, &v32, v31, v30, v29);
            __cxa_throw(v26, &unk_2884CB710, sub_275CDAEAC);
          }

          v11 = v5[1];
          if ((v11 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            v12 = v5 + 2;
            do
            {
              v5 = v12;
              std::wstring::push_back(&__p, v11);
              if (v5 == &(*a1)[a1[1]])
              {
                break;
              }

              v12 = v5 + 1;
              LODWORD(v11) = *v5;
            }

            while ((*v5 & 0xFFFFFFDF) - 65 < 0x1A);
            v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_22:
              if (v13 == 4)
              {
                p_p = &__p;
                goto LABEL_46;
              }

              goto LABEL_61;
            }

            size = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_ == 6)
            {
              if (wmemcmp(__p.__r_.__value_.__l.__data_, dword_275D11108, 6uLL))
              {
                v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_22;
                }

                size = __p.__r_.__value_.__l.__size_;
                goto LABEL_44;
              }
            }

            else
            {
LABEL_44:
              if (size != 4)
              {
                goto LABEL_61;
              }

              p_p = __p.__r_.__value_.__r.__words[0];
LABEL_46:
              if (wmemcmp(p_p, dword_275D11124, 4uLL))
              {
LABEL_61:
                sub_275CE3AE0(a2, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                continue;
              }
            }

            v19 = *a1;
            v20 = a1[1];
            while (v5 != &v19[v20])
            {
              v21 = *v5;
              if (v21 <= 0x7F)
              {
                if ((*(v4 + 4 * v21 + 60) & 0x4000) == 0)
                {
                  break;
                }
              }

              else
              {
                v22 = __maskrune(v21, 0x4000uLL);
                v19 = *a1;
                v20 = a1[1];
                if (!v22)
                {
                  break;
                }
              }

              ++v5;
            }

            if (v5 == &v19[v20] || *v5 != 123)
            {
              v28 = __cxa_allocate_exception(0x30uLL);
              sub_275CDAE0C(&v32, dword_275D11138);
              sub_275CDAE0C(v31, &dword_275D110A4);
              sub_275CDAE0C(v30, &dword_275D110A4);
              sub_275CE39CC(v28, &v32, &__p, v31, v30);
              __cxa_throw(v28, &unk_2884CB710, sub_275CDAEAC);
            }

            std::wstring::push_back(&__p, 123);
            for (i = (v5 + 1); ; ++i)
            {
              if (i == &(*a1)[a1[1]])
              {
                v25 = __cxa_allocate_exception(0x30uLL);
                sub_275CDAE0C(&v32, dword_275D11190);
                sub_275CDAE0C(v31, &dword_275D110A4);
                sub_275CDAE0C(v30, &dword_275D110A4);
                sub_275CDAE0C(v29, &dword_275D110A4);
                sub_275CE39CC(v25, &v32, v31, v30, v29);
                __cxa_throw(v25, &unk_2884CB710, sub_275CDAEAC);
              }

              v24 = *i;
              if (*i == 125)
              {
                break;
              }

              std::wstring::push_back(&__p, v24);
            }

            std::wstring::push_back(&__p, 125);
            v5 = (i + 1);
            goto LABEL_61;
          }

          if (v11 <= 0x7F)
          {
            if ((*(v4 + 4 * v11 + 60) & 0x4000) != 0)
            {
LABEL_31:
              std::wstring::append(&__p, dword_275D11058);
              v15 = v5 + 2;
              do
              {
                v5 = v15;
                if (v15 == &(*a1)[a1[1]])
                {
                  break;
                }

                v16 = *v15;
                v17 = v16 <= 0x7F ? *(v4 + 4 * v16 + 60) & 0x4000 : __maskrune(v16, 0x4000uLL);
                v15 = v5 + 1;
              }

              while (v17);
              goto LABEL_61;
            }
          }

          else if (__maskrune(v11, 0x4000uLL))
          {
            goto LABEL_31;
          }

          std::wstring::push_back(&__p, v5[1]);
          v5 += 2;
          goto LABEL_61;
        }
      }

      else if (!__maskrune(v6, 0x4000uLL))
      {
        goto LABEL_15;
      }

      sub_275CDAE0C(&__p, dword_275D11058);
      sub_275CE8378(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = v5 + 1;
      do
      {
        v5 = v7;
        if (v7 == &(*a1)[a1[1]])
        {
          break;
        }

        v8 = *v7;
        v9 = v8 <= 0x7F ? *(v4 + 4 * v8 + 60) & 0x4000 : __maskrune(v8, 0x4000uLL);
        v7 = v5 + 1;
      }

      while (v9);
    }

    while (v5 != &(*a1)[a1[1]]);
  }
}

void sub_275CE81F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v40 & 1) == 0)
    {
LABEL_10:
      if (a39 < 0)
      {
        operator delete(a34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v39);
  goto LABEL_10;
}

uint64_t sub_275CE8378(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_275C8D77C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_275C97C94(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_275C97CEC(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

BOOL sub_275CE84A8(const __int32 *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (v4 == *(a1 + 1))
    {
      if (v4 == -1)
      {
        sub_275CB59C4();
      }

      a1 = *a1;
      if (!v4)
      {
        return 1;
      }

      return !wmemcmp(a1, a2, v4);
    }

    return 0;
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  return !wmemcmp(a1, a2, v4);
}

double blahtex::Manager::Manager(blahtex::Manager *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  return result;
}

void blahtex::Manager::ProcessInput(uint64_t a1, std::wstring::size_type a2, int a3)
{
  if ((atomic_load_explicit(&qword_280A38D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38D88))
  {
    sub_275CE9DD8(qword_280A38D60, &off_27A683BC0, &unk_27A683D90);
    __cxa_guard_release(&qword_280A38D88);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  v19.__r_.__value_.__r.__words[0] = v7;
  v19.__r_.__value_.__l.__size_ = v6;
  blahtex::Tokenise(&v19, &v20);
  *(a1 + 16) = 0;
  for (i = v20; i != v21; i += 24)
  {
    if (sub_275CEA388(qword_280A38D60, i))
    {
      std::wstring::append(i, dword_275D157D4);
    }

    else
    {
      v9 = *(i + 23);
      if (v9 < 0)
      {
        if (*(i + 8) > 7uLL)
        {
          v9 = *(i + 8);
LABEL_17:
          std::wstring::basic_string(&v19, i, v9 - 8, 8uLL, &v18);
          v10 = 0;
          v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0 && v19.__r_.__value_.__l.__size_ == 8)
          {
            v10 = wmemcmp(v19.__r_.__value_.__l.__data_, dword_275D157D4, 8uLL) == 0;
            v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          }

          if (v11 < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }

          if (v10)
          {
            exception = __cxa_allocate_exception(0x30uLL);
            sub_275CDAE0C(&v19, dword_275D157F8);
            sub_275CDAE0C(&v18, &dword_275D110A4);
            sub_275CDAE0C(v17, &dword_275D110A4);
            sub_275CE39CC(exception, &v19, i, &v18, v17);
            __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
          }

          if ((*(i + 23) & 0x80000000) == 0)
          {
            continue;
          }
        }

        if (*(i + 8) == 14 && !wmemcmp(*i, dword_275D15838, 0xEuLL))
        {
          *(a1 + 16) = 1;
          MEMORY[0x277C8CD90](i, dword_275D11058);
        }

        continue;
      }

      if (v9 > 7)
      {
        goto LABEL_17;
      }
    }
  }

  memset(&v19, 0, sizeof(v19));
  if ((atomic_load_explicit(&qword_280A38D98, memory_order_acquire) & 1) == 0)
  {
    sub_275D0201C();
  }

  if ((atomic_load_explicit(&qword_280A38DA0, memory_order_acquire) & 1) == 0)
  {
    sub_275D0205C();
  }

  if (qword_280A38D90 == -1)
  {
    if (!a3)
    {
LABEL_34:
      v12 = qword_280A38DA8;
      v13 = unk_280A38DB0;
      while (v12 != v13)
      {
        sub_275CE3AE0(&v19, v12);
        v12 = (v12 + 24);
      }

      v14 = v20;
      v15 = v21;
      while (v14 != v15)
      {
        sub_275CE3AE0(&v19, v14);
        v14 = (v14 + 24);
      }

      v17[0] = 0;
      blahtex::Parser::DoParse();
    }
  }

  else
  {
    sub_275D0209C();
    if (!a3)
    {
      goto LABEL_34;
    }
  }

  sub_275CEA4C8(&v19, qword_280A38DC0, qword_280A38DC8, 0xAAAAAAAAAAAAAAABLL * ((qword_280A38DC8 - qword_280A38DC0) >> 3));
  goto LABEL_34;
}

void sub_275CE8A68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
    if ((v30 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v30)
  {
LABEL_10:
    a23 = &a29;
    sub_275C97BF0(&a23);
    JUMPOUT(0x275CE8C00);
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

void sub_275CE8ABC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v22);
  JUMPOUT(0x275CE8BF0);
}

void sub_275CE8AD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    if (sub_275CE84A8(v12, dword_275D15874))
    {
      *(v11 + 17) = 1;
      sub_275CE8C58(v11 + 24, v12);
      v13 = *(v11 + 8);
      *(v11 + 8) = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      __cxa_end_catch();
      JUMPOUT(0x275CE8908);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CE9B60(exception, v12);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  sub_275CE9D74(&a11);
  JUMPOUT(0x275CE8BE0);
}

void sub_275CE8B84(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_free_exception(v2);
  __cxa_end_catch();
  sub_275CE9D74(va);
  JUMPOUT(0x275CE8BE0);
}

void sub_275CE8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a17 = &a20;
  sub_275C97BF0(&a17);
  JUMPOUT(0x275CE8C00);
}

void sub_275CE8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  a14 = &a17;
  sub_275C97BF0(&a14);
  JUMPOUT(0x275CE8BF0);
}

void sub_275CE8C08()
{
  blahtex::Tokenise(&blahtex::Manager::gTexvcCompatibilityMacros, &qword_280A38DC0);

  blahtex::Tokenise(&blahtex::Manager::gStandardMacros, &qword_280A38DA8);
}

uint64_t sub_275CE8C58(uint64_t a1, uint64_t a2)
{
  std::wstring::operator=(a1, a2);
  if (a1 != a2)
  {
    sub_275CEA4C8((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

uint64_t blahtex::Manager::GenerateMathml(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 17) == 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CE8CAC(exception);
    v5 = &unk_2884CB710;
    v6 = sub_275CDAEAC;
    goto LABEL_8;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Layout tree not yet built in Manager::GenerateMathml");
    v5 = MEMORY[0x277D82750];
    v6 = MEMORY[0x277D825D8];
LABEL_8:
    __cxa_throw(exception, v5, v6);
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  if (*(a1 + 16) == 1)
  {
    LODWORD(v9) = 0;
  }

  v8 = 0;
  blahtex::MathmlEnvironment::MathmlEnvironment(v7, BYTE4(v9) ^ 1, 0xFFFFFFFF);
  return (*(*v2 + 24))(v2, &v9, v7, &v8);
}

uint64_t blahtex::Manager::GeneratePurifiedTex@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Parse tree not yet built in Manager::GeneratePurifiedTex");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  sub_275CD9D50(&v49);
  v48 = 0;
  (*(**a1 + 24))(*a1, &v49, &v48, 0);
  sub_275CDA92C(&v50, &v45);
  if ((v48 & 0x10000000000) != 0 || BYTE6(v48) == 1)
  {
    BYTE3(v48) = 1;
    LOBYTE(v48) = 1;
  }

  sub_275CD9D50(&v40);
  sub_275CE4604(&v40, &unk_275D158F8, 43);
  if (v48 == 1)
  {
    sub_275CE4604(&v40, &unk_275D159A8, 21);
  }

  if (BYTE1(v48) == 1)
  {
    sub_275CE4604(&v40, &unk_275D15A00, 22);
  }

  if (BYTE2(v48) == 1)
  {
    sub_275CE4604(&v40, &unk_275D15A5C, 21);
  }

  if (BYTE4(v48) == 1)
  {
    sub_275CE4604(&v40, &unk_275D15AB4, 35);
  }

  if (BYTE3(v48) == 1)
  {
    if ((*(a2 + 1) & 1) == 0)
    {
      v33 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v39, dword_275D15B44);
      sub_275CDAE0C(v38, dword_275D15BA4);
      sub_275CDAE0C(v37, &dword_275D110A4);
      sub_275CDAE0C(v36, &dword_275D110A4);
      sub_275CE39CC(v33, &v39, v38, v37, v36);
      __cxa_throw(v33, &unk_2884CB710, sub_275CDAEAC);
    }

    sub_275CE4604(&v40, &unk_275D15BB4, 29);
  }

  if (BYTE5(v48) == 1)
  {
    sub_275CE4604(&v40, &unk_275D15C2C, 103);
  }

  if (BYTE6(v48) == 1)
  {
    if ((*(a2 + 2) & 1) == 0)
    {
      v34 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v39, dword_275D15B44);
      sub_275CDAE0C(v38, dword_275D15DCC);
      sub_275CDAE0C(v37, &dword_275D110A4);
      sub_275CDAE0C(v36, &dword_275D110A4);
      sub_275CE39CC(v34, &v39, v38, v37, v36);
      __cxa_throw(v34, &unk_2884CB710, sub_275CDAEAC);
    }

    sub_275CE4604(&v40, &unk_275D15DDC, 17);
    if (HIBYTE(v48) == 1)
    {
      v6 = *(a2 + 31);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 16);
      }

      if (!v6)
      {
        v35 = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v39, dword_275D15E24);
        sub_275CDAE0C(v38, dword_275D15E7C);
        sub_275CDAE0C(v37, &dword_275D110A4);
        sub_275CDAE0C(v36, &dword_275D110A4);
        sub_275CE39CC(v35, &v39, v38, v37, v36);
        __cxa_throw(v35, &unk_2884CB710, sub_275CDAEAC);
      }

      v7 = sub_275CE4604(&v40, &unk_275D15EA0, 45);
      v8 = *(a2 + 31);
      if (v8 >= 0)
      {
        v9 = a2 + 8;
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v8 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      v11 = sub_275CE4604(v7, v9, v10);
      sub_275CE4604(v11, &unk_275D15F58, 15);
    }
  }

  if (*(a2 + 3))
  {
    v12 = &unk_275D15F98;
  }

  else
  {
    v12 = &unk_275D16010;
  }

  if (*(a2 + 3))
  {
    v13 = 29;
  }

  else
  {
    v13 = 18;
  }

  sub_275CE4604(&v40, v12, v13);
  v14 = *(a2 + 55);
  if (v14 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = *(a2 + 40);
  }

  if (v15)
  {
    if (v14 >= 0)
    {
      v16 = a2 + 32;
    }

    else
    {
      v16 = *(a2 + 32);
    }

    v17 = sub_275CE4604(&v40, v16, v15);
    sub_275CE9618(v17, "\n");
  }

  sub_275CE4604(&v40, &unk_275D1605C, 17);
  v18 = *(a2 + 79);
  if (v18 >= 0)
  {
    v19 = *(a2 + 79);
  }

  else
  {
    v19 = *(a2 + 64);
  }

  if (v19)
  {
    if (v18 >= 0)
    {
      v20 = a2 + 56;
    }

    else
    {
      v20 = *(a2 + 56);
    }

    v21 = sub_275CE4604(&v40, v20, v19);
    sub_275CE9618(v21, "\n");
  }

  if (*(a2 + 3) == 1)
  {
    sub_275CE4604(&v40, &unk_275D160A4, 16);
  }

  if (*a2 == 1)
  {
    v22 = sub_275CE4604(&v40, &unk_275D160E8, 3);
    if ((v47 & 0x80u) == 0)
    {
      v23 = &v45;
    }

    else
    {
      v23 = v45;
    }

    if ((v47 & 0x80u) == 0)
    {
      v24 = v47;
    }

    else
    {
      v24 = v46;
    }

    v25 = sub_275CE4604(v22, v23, v24);
    v26 = &unk_275D160F8;
    v27 = 4;
  }

  else
  {
    v28 = sub_275CE4604(&v40, &unk_275D1610C, 2);
    if ((v47 & 0x80u) == 0)
    {
      v29 = &v45;
    }

    else
    {
      v29 = v45;
    }

    if ((v47 & 0x80u) == 0)
    {
      v30 = v47;
    }

    else
    {
      v30 = v46;
    }

    v25 = sub_275CE4604(v28, v29, v30);
    v26 = &unk_275D16118;
    v27 = 3;
  }

  sub_275CE4604(v25, v26, v27);
  if (*(a2 + 3) == 1)
  {
    sub_275CE4604(&v40, &unk_275D16128, 14);
  }

  sub_275CE4604(&v40, &unk_275D16164, 15);
  sub_275CDA92C(&v41, a3);
  v40 = &unk_2884CBA50;
  v44 = &unk_2884CBA78;
  v41 = &unk_2884CBB20;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v42);
  std::wostream::~wostream();
  MEMORY[0x277C8CF80](&v44);
  if (v47 < 0)
  {
    operator delete(v45);
  }

  v49 = &unk_2884CBA50;
  v53 = &unk_2884CBA78;
  v50 = &unk_2884CBB20;
  if (v52 < 0)
  {
    operator delete(v51[7].__locale_);
  }

  v50 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v51);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v53);
}

void sub_275CE950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v73 & 1) == 0)
    {
LABEL_12:
      sub_275CD9E94(&a33);
      if (a71 < 0)
      {
        operator delete(a66);
      }

      sub_275CD9E94(&a72);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v72);
  goto LABEL_12;
}

void *sub_275CE9618(void *a1, const char *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  MEMORY[0x277C8CE90](v22, a1);
  if (v22[0] == 1)
  {
    v4 = strlen(a2);
    v5 = v4;
    if (v4 < 0x65)
    {
      v7 = 0;
      v6 = &v24;
    }

    else
    {
      v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
      v7 = v6;
      if (!v6)
      {
        std::__throw_bad_alloc();
      }
    }

    v8 = *a2;
    if (*a2)
    {
      v9 = (a2 + 1);
      v10 = MEMORY[0x277D82688];
      v11 = v6;
      do
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v12 = std::locale::use_facet(&v23, v10);
        v13 = (v12->__vftable[3].__on_zero_shared)(v12, v8);
        std::locale::~locale(&v23);
        *v11 = v13;
        v11 += 4;
        v14 = *v9++;
        v8 = v14;
      }

      while (v14);
    }

    v15 = a1 + *(*a1 - 24);
    v16 = *(v15 + 40);
    v17 = *(v15 + 8);
    v18 = *(v15 + 144);
    if (v18 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v19 = std::locale::use_facet(&v23, MEMORY[0x277D82688]);
      v18 = (v19->__vftable[3].__on_zero_shared)(v19, 32);
      std::locale::~locale(&v23);
      *(v15 + 144) = v18;
    }

    if ((v17 & 0xB0) == 0x20)
    {
      v20 = &v6[4 * v5];
    }

    else
    {
      v20 = v6;
    }

    if (!sub_275CE47AC(v16, v6, v20, &v6[4 * v5], v15, v18))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }

    if (v7)
    {
      free(v7);
    }
  }

  MEMORY[0x277C8CEA0](v22);
  return a1;
}

void sub_275CE9864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  if (a2)
  {
    std::locale::~locale(&a11);
    if (v12)
    {
      free(v12);
    }

    MEMORY[0x277C8CEA0](&a9);
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x275CE9824);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::Manager::GeneratePurifiedTexOnly@<X0>(blahtex::Manager *this@<X0>, std::wstring *a2@<X8>)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Parse tree not yet built in Manager::GeneratePurifiedTex");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  sub_275CD9D50(&v16);
  v15 = 0;
  (*(**this + 24))(*this, &v16, &v15, 0);
  sub_275CDA92C(&v17, v13);
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  v6 = v14;
  while (1)
  {
    v7 = v4;
    if ((v6 & 0x80) != 0)
    {
      break;
    }

    if (v4 >= v6)
    {
      goto LABEL_16;
    }

    v8 = v13;
    v9 = v13[0];
    if (v5)
    {
LABEL_9:
      if (*(v8 + v7) == 32)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    std::wstring::push_back(a2, *(v8 + v7));
    v6 = v14;
    v9 = v13[0];
LABEL_11:
    if ((v6 & 0x80u) == 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v9;
    }

    v5 = *(v10 + v7) == 123;
    v4 = v7 + 1;
  }

  v8 = v13[0];
  if (v13[1] > v4)
  {
    v9 = v13[0];
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  operator delete(v13[0]);
LABEL_16:
  v16 = &unk_2884CBA50;
  v20 = &unk_2884CBA78;
  v17 = &unk_2884CBB20;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v18);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v20);
}

void *sub_275CE9B60(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(__dst, *a2, *(a2 + 1));
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
  sub_275CE9BF4((__dst + 3), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_275CE9BD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CE9BF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275CAEEC0(result, a4);
  }

  return result;
}

void sub_275CE9C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_275C97BF0(&a9);
  _Unwind_Resume(a1);
}

char *sub_275CE9C7C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
        sub_275CD96C4(v4, *v6, *(v6 + 1));
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
  sub_275CE9D3C(v9);
  return v4;
}

uint64_t sub_275CE9D3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275CAF004(a1);
  }

  return a1;
}

uint64_t *sub_275CE9D74(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 40);
    sub_275C97BF0(&v5);
    v3 = sub_275CE6FE0(v2);
    MEMORY[0x277C8CFC0](v3, 0x10A0C40106B2905);
  }

  return a1;
}

uint64_t sub_275CE9DD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    sub_275CE9E50();
  }

  return result;
}

void sub_275CE9EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_275CEA29C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CE9FD8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_275CEA29C(v3, v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_275CE9FF4(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = sub_275CE78D8(a1, (a2 + 2));
  v2[1] = v4;
  v5 = sub_275CEA058(a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  sub_275CEA1E8(a1, v2);
  return v2;
}

uint64_t **sub_275CEA058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          v13 = *(i + 39);
          if (v13 >= 0)
          {
            v14 = *(i + 39);
          }

          else
          {
            v14 = i[3];
          }

          v15 = *(a3 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(a3 + 8);
          }

          if (v14 == v15)
          {
            if (!v14)
            {
              return i;
            }

            v17 = v16 >= 0 ? a3 : *a3;
            v18 = v13 >= 0 ? (i + 2) : i[2];
            if (!wmemcmp(v18, v17, v14))
            {
              return i;
            }
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v4 || (v20 * v4) < v19)
  {
    v21 = 1;
    if (v4 >= 3)
    {
      v21 = (v4 & (v4 - 1)) != 0;
    }

    v22 = v21 | (2 * v4);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_275CA0844(a1, v24);
  }

  return 0;
}

uint64_t *sub_275CEA1E8(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void sub_275CEA29C(uint64_t a1, void **__p)
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

uint64_t sub_275CEA300(uint64_t a1)
{
  sub_275CEA33C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275CEA33C(int a1, void **__p)
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

uint64_t **sub_275CEA388(void *a1, uint64_t a2)
{
  v4 = sub_275CE78D8(a1, a2);
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
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        if (!v14)
        {
          return i;
        }

        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v13 >= 0 ? (i + 2) : i[2];
        if (!wmemcmp(v18, v17, v14))
        {
          return i;
        }
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

void sub_275CEA4C8(std::wstring **a1, std::wstring *__str, std::wstring *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_275CAEE80(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_275CAEEC0(a1, v10);
    }

    sub_275C8D77C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::wstring::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::wstring::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_275CE9C7C(a1, (v6 + v12), a3, v11);
  }
}

void blahtex::MathmlNode::~MathmlNode(blahtex::MathmlNode *this)
{
  v2 = (this + 56);
  v3 = *(this + 8);
  if (v3 != (this + 56))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        blahtex::MathmlNode::~MathmlNode(v4);
        MEMORY[0x277C8CFC0]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  sub_275C915E8(v2);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  sub_275CC0D90(this + 8, *(this + 2));
}

uint64_t blahtex::MathmlNode::AddFontAttributes(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 5) == 1)
  {
    v5 = *result;
    if (a2 - 4 > 4)
    {
      if (v5)
      {
        v9 = 0;
      }

      else
      {
        v13 = *(result + 55);
        if (v13 < 0)
        {
          v13 = *(result + 40);
        }

        v9 = v13 == 1;
      }

      v14 = (a2 < 0xD) & (0x180Cu >> a2);
      if (v9 != v14)
      {
        if (v14)
        {
          v15 = &unk_275D16240;
        }

        else
        {
          v15 = &unk_275D1625C;
        }

        v19 = 17;
        v20 = &v19;
        v16 = sub_275CE493C(result + 8, &v19);
        result = MEMORY[0x277C8CD90](v16 + 5, v15);
      }

      if (a2 <= 0xC && ((1 << a2) & 0x140A) != 0)
      {
        v19 = 18;
        v20 = &v19;
        v17 = sub_275CE493C(v4 + 8, &v19);
        result = MEMORY[0x277C8CD90](v17 + 5, &unk_275D1622C);
      }

      if (a2 - 9 > 3)
      {
        if (a2 != 13)
        {
          return result;
        }

        v19 = 16;
        v20 = &v19;
        v6 = sub_275CE493C(v4 + 8, &v19);
        v7 = &unk_275D162A4;
      }

      else
      {
        v19 = 16;
        v20 = &v19;
        v6 = sub_275CE493C(v4 + 8, &v19);
        v7 = &unk_275D16278;
      }
    }

    else
    {
      if (v5 != 2 || a2 != 8 && a2 != 5)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected font/symbol combination in MathmlNode::AddFontAttributes");
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
      }

      v19 = 18;
      v20 = &v19;
      v6 = sub_275CE493C(result + 8, &v19);
      v7 = &unk_275D1622C;
    }

    return MEMORY[0x277C8CD90](v6 + 5, v7);
  }

  else
  {
    if (*result)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(result + 55);
      if (v10 < 0)
      {
        v10 = *(result + 40);
      }

      v8 = 2 * (v10 == 1);
    }

    if (v8 != a2)
    {
      v11 = &off_27A683DB0 + 2 * a2;
      v19 = 2;
      v20 = &v19;
      v12 = sub_275CE493C(result + 8, &v19);
      return MEMORY[0x277C8CDA0](v12 + 5, *v11, v11[1]);
    }
  }

  return result;
}

void *blahtex::WriteIndent(void *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = sub_275CE4604(v3, &unk_275D162CC, 2);
      --v2;
    }

    while (v2);
  }

  return result;
}

void *blahtex::MathmlNode::PrintType(unsigned int *a1, void *a2)
{
  v2 = *a1;
  if (v2 >= 0x16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Illegal node type in MathmlNode::PrintType");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v3 = (&off_27A683E90 + 2 * v2);
  v4 = v3[1];
  v6 = *v3;

  return sub_275CE4604(a2, v6, v4);
}

void *blahtex::MathmlNode::PrintAttributes(void *result, void *a2)
{
  v2 = result[1];
  v3 = result + 2;
  if (v2 != result + 2)
  {
    do
    {
      if (*(v2 + 8) >= 0x16u)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Illegal attribute in MathmlNode::PrintAttributes");
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
      }

      v5 = sub_275CE4604(a2, &unk_275D162D8, 1);
      v6 = (&off_27A683FF0 + 2 * *(v2 + 8));
      v7 = sub_275CE4604(v5, *v6, v6[1]);
      v8 = sub_275CE4604(v7, &unk_275D162E0, 2);
      v9 = *(v2 + 63);
      if (v9 >= 0)
      {
        v10 = (v2 + 5);
      }

      else
      {
        v10 = v2[5];
      }

      if (v9 >= 0)
      {
        v11 = *(v2 + 63);
      }

      else
      {
        v11 = v2[6];
      }

      v12 = sub_275CE4604(v8, v10, v11);
      result = sub_275CE4604(v12, &unk_275D162EC, 1);
      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  return result;
}

void *blahtex::MathmlNode::Print(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  if (a5 > 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = a5;
    do
    {
      sub_275CE4604(a2, &unk_275D162CC, 2);
      --v11;
    }

    while (v11);
  }

  sub_275CE4604(a2, &unk_275D162F4, 1);
  blahtex::MathmlNode::PrintType(a1, a2);
  blahtex::MathmlNode::PrintAttributes(a1, a2);
  v12 = *(a1 + 55);
  if (v12 < 0)
  {
    if (*(a1 + 40))
    {
      goto LABEL_12;
    }
  }

  else if (*(a1 + 55))
  {
    goto LABEL_12;
  }

  if (!*(a1 + 72))
  {
    v19 = &unk_275D162FC;
    v20 = a2;
    v21 = 2;
    goto LABEL_31;
  }

LABEL_12:
  if ((v12 & 0x80000000) != 0)
  {
    v12 = *(a1 + 40);
  }

  v13 = sub_275CE4604(a2, &unk_275D16308, 1);
  if (v12)
  {
    v14 = v13;
    blahtex::XmlEncode((a1 + 32), a3, __p);
    if ((v25 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v16 = v25;
    }

    else
    {
      v16 = __p[1];
    }

    sub_275CE4604(v14, v15, v16);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (a4)
    {
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v17 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
      (v17->__vftable[3].__on_zero_shared)(v17, 10);
      std::locale::~locale(__p);
      std::wostream::put();
      std::wostream::flush();
    }

    for (i = *(a1 + 64); i != a1 + 56; i = *(i + 8))
    {
      blahtex::MathmlNode::Print(*(i + 16), a2, a3, a4, (v5 + 1));
    }

    if (v10)
    {
      do
      {
        sub_275CE4604(a2, &unk_275D162CC, 2);
        --v5;
      }

      while (v5);
    }
  }

  sub_275CE4604(a2, &unk_275D16310, 2);
  blahtex::MathmlNode::PrintType(a1, a2);
  v19 = &unk_275D16308;
  v20 = a2;
  v21 = 1;
LABEL_31:
  result = sub_275CE4604(v20, v19, v21);
  if (a4)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v23 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v23->__vftable[3].__on_zero_shared)(v23, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    return std::wostream::flush();
  }

  return result;
}

void *blahtex::MathTokenTable(blahtex *this)
{
  if ((atomic_load_explicit(&qword_280A38E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38E00))
  {
    sub_275CF2950(&unk_280A38DD8, &off_27A684150, (&off_27A684150 + 2127));
    __cxa_guard_release(&qword_280A38E00);
  }

  return &unk_280A38DD8;
}

void *blahtex::TextTokenTable(blahtex *this)
{
  if ((atomic_load_explicit(&qword_280A38E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38E30))
  {
    sub_275CF2950(&unk_280A38E08, &off_27A6883C8, &off_27A688AD0);
    __cxa_guard_release(&qword_280A38E30);
  }

  return &unk_280A38E08;
}

BOOL blahtex::IsInTokenTables(blahtex *a1)
{
  blahtex::MathTokenTable(a1);
  if (sub_275CEA388(qword_280A38DD8, a1))
  {
    return 1;
  }

  blahtex::TextTokenTable(0);
  return sub_275CEA388(qword_280A38E08, a1) != 0;
}

uint64_t blahtex::Parser::GetMathTokenCode(blahtex *a1, uint64_t a2)
{
  blahtex::MathTokenTable(a1);
  blahtex::translateToken(a2, &v19);
  v3 = sub_275CEA388(qword_280A38DD8, &v19);
  if (v3)
  {
    v4 = *(v3 + 10);
    if (v4 == 3)
    {
      if (sub_275CE84A8(&v19, &unk_275D16A94) || sub_275CE84A8(&v19, &unk_275D16A9C) || sub_275CE84A8(&v19, &unk_275D16AA4))
      {
        exception = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v18, dword_275D16AAC);
        sub_275CEB680(&unk_275D16B30, &v19, v17);
        sub_275CDAE0C(v16, &dword_275D16B38);
        sub_275CE39CC(exception, &v18, a2, v17, v16);
        __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
      }

      if (sub_275CE84A8(&v19, &unk_275D16B3C) || sub_275CE84A8(&v19, &unk_275D16B44))
      {
        v13 = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v18, dword_275D16B4C);
        sub_275CDAE0C(v17, &dword_275D16B38);
        sub_275CDAE0C(v16, &dword_275D16B38);
        sub_275CE39CC(v13, &v18, a2, v17, v16);
        __cxa_throw(v13, &unk_2884CB710, sub_275CDAEAC);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v14, "Unexpected illegal character in Parser::GetMathTokenCode");
      __cxa_throw(v14, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    if (v20 < 0)
    {
      goto LABEL_24;
    }

    return v4;
  }

  if ((v20 & 0x80000000) == 0)
  {
    v5 = v19;
    if (v19 != 92)
    {
      if (v19 < 128)
      {
        if (v19 > 96)
        {
          if (v19 >= 0x7B)
          {
            goto LABEL_30;
          }

          return 26;
        }

        if (v19 > 64)
        {
          if (v19 >= 0x5B)
          {
            goto LABEL_30;
          }

          return 26;
        }

        if (v19 < 48)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

LABEL_33:
      v12 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v18, dword_275D16C00);
      sub_275CDAE0C(v17, &dword_275D16B38);
      sub_275CDAE0C(v16, &dword_275D16B38);
      sub_275CDAE0C(v15, &dword_275D16B38);
      sub_275CE39CC(v12, &v18, v17, v16, v15);
      __cxa_throw(v12, &unk_2884CB710, sub_275CDAEAC);
    }

LABEL_31:
    blahtex::TextTokenTable(0);
    v10 = sub_275CEA388(qword_280A38E08, &v19);
    v11 = __cxa_allocate_exception(0x30uLL);
    if (!v10)
    {
      sub_275CDAE0C(&v18, dword_275D16BB0);
      sub_275CDAE0C(v17, &dword_275D16B38);
      sub_275CDAE0C(v16, &dword_275D16B38);
      sub_275CE39CC(v11, &v18, a2, v17, v16);
      __cxa_throw(v11, &unk_2884CB710, sub_275CDAEAC);
    }

    sub_275CDAE0C(&v18, dword_275D16B4C);
    sub_275CDAE0C(v17, &dword_275D16B38);
    sub_275CDAE0C(v16, &dword_275D16B38);
    sub_275CE39CC(v11, &v18, a2, v17, v16);
    __cxa_throw(v11, &unk_2884CB710, sub_275CDAEAC);
  }

  v6 = *v19;
  if (*v19 == 92)
  {
    goto LABEL_31;
  }

  if (v6 > 127)
  {
    goto LABEL_33;
  }

  if ((v6 - 97) < 0x1A || v6 > 64 && *v19 < 91)
  {
    goto LABEL_23;
  }

  v5 = *v19;
  if (*v19 <= 47)
  {
LABEL_30:
    v9 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v18, dword_275D16BB0);
    sub_275CDAE0C(v17, &dword_275D16B38);
    sub_275CDAE0C(v16, &dword_275D16B38);
    sub_275CE39CC(v9, &v18, a2, v17, v16);
    __cxa_throw(v9, &unk_2884CB710, sub_275CDAEAC);
  }

LABEL_22:
  if (v5 >= 0x3A)
  {
    goto LABEL_30;
  }

LABEL_23:
  v4 = 26;
  if (v20 < 0)
  {
LABEL_24:
    operator delete(v19);
  }

  return v4;
}

void sub_275CEB578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      if (*(v35 - 33) < 0)
      {
        operator delete(*(v35 - 56));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

uint64_t sub_275CEB680@<X0>(const __int32 *a1@<X0>, const void **a2@<X1>, void **a3@<X8>)
{
  v6 = wcslen(a1);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  result = sub_275CF2B7C(a3, v8 + v6);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v7)
  {
    result = memmove(a3, a1, 4 * v7);
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3 + 4 * v7, v10, 4 * v8);
  }

  *(a3 + v7 + v8) = 0;
  return result;
}

uint64_t blahtex::Parser::GetTextTokenCode(blahtex *a1, const void **a2)
{
  blahtex::TextTokenTable(a1);
  v3 = sub_275CEA388(qword_280A38E08, a2);
  if (!v3)
  {
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v8 = **a2;
      if (v8 != 92)
      {
        if ((v8 - 97) < 0x1A)
        {
          return 26;
        }

        v9 = *a2;
        v10 = **a2;
        if ((v10 - 65) < 0x1A)
        {
          return 26;
        }

        if (v10 <= 47)
        {
          goto LABEL_25;
        }

        v7 = *v9;
        goto LABEL_23;
      }
    }

    else
    {
      v7 = *a2;
      if (*a2 != 92)
      {
        if (v7 >= 97)
        {
          if (v7 < 0x7B)
          {
            return 26;
          }

          goto LABEL_24;
        }

        if (v7 > 64)
        {
          if (v7 < 0x5B)
          {
            return 26;
          }

LABEL_24:
          v9 = *a2;
LABEL_25:
          if (v6 >= 0)
          {
            v11 = a2;
          }

          else
          {
            v11 = v9;
          }

          if (*v11 > 127)
          {
            return 26;
          }

LABEL_33:
          exception = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(&v21, dword_275D16BB0);
          sub_275CDAE0C(v20, &dword_275D16B38);
          sub_275CDAE0C(v19, &dword_275D16B38);
          sub_275CE39CC(exception, &v21, a2, v20, v19);
          __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
        }

        if (v7 <= 47)
        {
          goto LABEL_33;
        }

LABEL_23:
        if (v7 < 58)
        {
          return 26;
        }

        goto LABEL_24;
      }
    }

    blahtex::MathTokenTable(0);
    v12 = sub_275CEA388(qword_280A38DD8, a2);
    v13 = __cxa_allocate_exception(0x30uLL);
    if (!v12)
    {
      sub_275CDAE0C(&v21, dword_275D16BB0);
      sub_275CDAE0C(v20, &dword_275D16B38);
      sub_275CDAE0C(v19, &dword_275D16B38);
      sub_275CE39CC(v13, &v21, a2, v20, v19);
      __cxa_throw(v13, &unk_2884CB710, sub_275CDAEAC);
    }

    sub_275CDAE0C(&v21, dword_275D16D74);
    sub_275CDAE0C(v20, &dword_275D16B38);
    sub_275CDAE0C(v19, &dword_275D16B38);
    sub_275CE39CC(v13, &v21, a2, v20, v19);
    __cxa_throw(v13, &unk_2884CB710, sub_275CDAEAC);
  }

  result = *(v3 + 10);
  if (result == 3)
  {
    if (sub_275CE84A8(a2, &unk_275D16C4C) || sub_275CE84A8(a2, &unk_275D16C54) || sub_275CE84A8(a2, &unk_275D16A94) || sub_275CE84A8(a2, &unk_275D16A9C) || sub_275CE84A8(a2, &unk_275D16AA4))
    {
      v5 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v21, dword_275D16C5C);
      sub_275CEB680(&unk_275D16B30, a2, v20);
      sub_275CDAE0C(v19, &dword_275D16B38);
      sub_275CE39CC(v5, &v21, a2, v20, v19);
      __cxa_throw(v5, &unk_2884CB710, sub_275CDAEAC);
    }

    if (sub_275CE84A8(a2, dword_275D16CE0))
    {
      v15 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v21, dword_275D16C5C);
      sub_275CDAE0C(v20, dword_275D16CE0);
      sub_275CDAE0C(v19, dword_275D16CEC);
      sub_275CDAE0C(v18, &dword_275D16B38);
      sub_275CE39CC(v15, &v21, v20, v19, v18);
      __cxa_throw(v15, &unk_2884CB710, sub_275CDAEAC);
    }

    v16 = sub_275CE84A8(a2, &unk_275D16D28);
    v17 = __cxa_allocate_exception(0x30uLL);
    if (v16)
    {
      sub_275CDAE0C(&v21, dword_275D16C5C);
      sub_275CDAE0C(v20, &unk_275D16D28);
      sub_275CDAE0C(v19, dword_275D16D30);
      sub_275CDAE0C(v18, &dword_275D16B38);
      sub_275CE39CC(v17, &v21, v20, v19, v18);
      __cxa_throw(v17, &unk_2884CB710, sub_275CDAEAC);
    }

    sub_275CDAE0C(&v21, dword_275D16D74);
    sub_275CDAE0C(v20, &dword_275D16B38);
    sub_275CDAE0C(v19, &dword_275D16B38);
    sub_275CE39CC(v17, &v21, a2, v20, v19);
    __cxa_throw(v17, &unk_2884CB710, sub_275CDAEAC);
  }

  return result;
}

void sub_275CEBC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CEC170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      v36 = *v32;
      *v32 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void blahtex::Parser::ParseMathList(uint64_t *__return_ptr a1@<X8>, blahtex::Parser *this@<X0>)
{
  v3 = a1;
  v2 = this;
  operator new();
}

uint64_t *sub_275CEFC0C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void blahtex::Parser::ParseMathField(blahtex::MacroProcessor **this)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, __p);
  blahtex::translateToken(__p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  MathTokenCode = blahtex::Parser::GetMathTokenCode(v2, &v14);
  if (MathTokenCode != 4)
  {
    if (MathTokenCode == 26)
    {
      operator new();
    }

    if (!MathTokenCode)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(__p, dword_275D16F80);
      sub_275CDAE0C(v11, &dword_275D16B38);
      sub_275CDAE0C(v10, &dword_275D16B38);
      sub_275CDAE0C(v9, &dword_275D16B38);
      sub_275CE39CC(exception, __p, v11, v10, v9);
      __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
    }

    v7 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(__p, dword_275D16FD8);
    sub_275CDAE0C(v11, &dword_275D16B38);
    sub_275CDAE0C(v10, &dword_275D16B38);
    sub_275CE39CC(v7, __p, &v14, v11, v10);
    __cxa_throw(v7, &unk_2884CB710, sub_275CDAEAC);
  }

  blahtex::Parser::ParseMathList(this);
  blahtex::MacroProcessor::Get(*this, __p);
  if (v13 < 0)
  {
    v4 = __p[0];
    if (__p[1] != 1)
    {
      operator delete(__p[0]);
      goto LABEL_20;
    }
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_20;
    }

    v4 = __p;
  }

  v5 = wmemcmp(v4, &unk_275D16F2C, 1uLL);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
LABEL_20:
    v8 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(__p, dword_275D16F34);
    sub_275CDAE0C(v11, &dword_275D16B38);
    sub_275CDAE0C(v10, &dword_275D16B38);
    sub_275CDAE0C(v9, &dword_275D16B38);
    sub_275CE39CC(v8, __p, v11, v10, v9);
    __cxa_throw(v8, &unk_2884CB710, sub_275CDAEAC);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_275CEFF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (*(v35 - 33) < 0)
      {
        operator delete(*(v35 - 56));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

BOOL sub_275CF012C(const __int32 *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (v4 == *(a1 + 1))
    {
      if (v4 == -1)
      {
        sub_275CB59C4();
      }

      a1 = *a1;
      if (!v4)
      {
        return 0;
      }

      return wmemcmp(a1, a2, v4) != 0;
    }

    return 1;
  }

  if (v4 != v5)
  {
    return 1;
  }

  if (!v4)
  {
    return 0;
  }

  return wmemcmp(a1, a2, v4) != 0;
}

void sub_275CF0508(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_275CF05EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x275CF0554);
}

void sub_275CF0604(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_275C8D77C();
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
      sub_275CAFCD8(a1, v10);
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

uint64_t sub_275CF06D8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

void *blahtex::Parser::PrepareScripts(blahtex::Parser *this, blahtex::ParseTree::MathList *a2)
{
  v2 = *(a2 + 2);
  if (*(a2 + 1) == v2)
  {
    operator new();
  }

  v3 = *(v2 - 8);
  {
    operator new();
  }

  return v4;
}

uint64_t sub_275CF0834(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void blahtex::Parser::ParseColourName(blahtex::MacroProcessor **this@<X0>, std::wstring *a2@<X8>)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, &v22);
  if (v23 < 0)
  {
    v4 = v22;
    if (*(&v22 + 1) != 1)
    {
      operator delete(v22);
      goto LABEL_52;
    }
  }

  else
  {
    if (v23 != 1)
    {
      goto LABEL_52;
    }

    v4 = &v22;
  }

  v5 = wmemcmp(v4, &unk_275D17054, 1uLL);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v5)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v22, dword_275D1705C);
    sub_275CDAE0C(&v21, dword_275D170B4);
    sub_275CDAE0C(v20, &dword_275D16B38);
    sub_275CDAE0C(v19, &dword_275D16B38);
    sub_275CE39CC(exception, &v22, &v21, v20, v19);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  while (1)
  {
    blahtex::MacroProcessor::Get(*this, &v22);
    v6 = v23;
    if (v23 < 0)
    {
      v8 = *(&v22 + 1);
      if (*(&v22 + 1) != 1)
      {
        goto LABEL_19;
      }

      v7 = v22;
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_16;
      }

      v7 = &v22;
    }

    if (!wmemcmp(v7, &unk_275D16F2C, 1uLL))
    {
      break;
    }

    v6 = v23;
    if (v23 < 0)
    {
      v8 = *(&v22 + 1);
LABEL_19:
      if (!v8)
      {
LABEL_49:
        v15 = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v21, dword_275D16F34);
        sub_275CDAE0C(v20, &dword_275D16B38);
        sub_275CDAE0C(v19, &dword_275D16B38);
        sub_275CDAE0C(v18, &dword_275D16B38);
        sub_275CE39CC(v15, &v21, v20, v19, v18);
        __cxa_throw(v15, &unk_2884CB710, sub_275CDAEAC);
      }

      v9 = 1;
      goto LABEL_21;
    }

LABEL_16:
    if (!v6)
    {
      goto LABEL_49;
    }

    v9 = 0;
    v8 = *(&v22 + 1);
LABEL_21:
    if (v9)
    {
      v10 = v22;
    }

    else
    {
      v10 = &v22;
    }

    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = v6;
    }

    std::wstring::append(a2, v10, v11);
    if (v23 < 0)
    {
      if (*(&v22 + 1) != 1)
      {
        goto LABEL_48;
      }

      v13 = *v22;
      if (*v22 >= 65 && (v13 < 0x5B || v13 - 97 < 0x1A))
      {
        goto LABEL_42;
      }

      v12 = *v22;
      if (*v22 <= 47)
      {
        goto LABEL_48;
      }

LABEL_41:
      if (v12 >= 0x3A)
      {
LABEL_48:
        v14 = __cxa_allocate_exception(0x30uLL);
        sub_275CDAE0C(&v21, dword_275D170D0);
        sub_275CF0E54(dword_275D17108, &a2->__r_.__value_.__l.__data_, v20);
        sub_275CDAE0C(v19, &dword_275D16B38);
        sub_275CDAE0C(v18, &dword_275D16B38);
        sub_275CE39CC(v14, &v21, v20, v19, v18);
        __cxa_throw(v14, &unk_2884CB710, sub_275CDAEAC);
      }

LABEL_42:
      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_48;
      }

      v12 = v22;
      if (v22 <= 64)
      {
LABEL_34:
        if (v22 < 48)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      if (v22 >= 0x5B)
      {
        if (v22 < 97)
        {
          goto LABEL_34;
        }

        if (v22 >= 0x7B)
        {
          goto LABEL_48;
        }
      }
    }
  }

  if (blahtex::lookupColour(a2) == 0x10000000)
  {
    v16 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v21, dword_275D170D0);
    sub_275CDAE0C(v20, &dword_275D16B38);
    sub_275CDAE0C(v19, &dword_275D16B38);
    sub_275CE39CC(v16, &v21, a2, v20, v19);
    __cxa_throw(v16, &unk_2884CB710, sub_275CDAEAC);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }
}