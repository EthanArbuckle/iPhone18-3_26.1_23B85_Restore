uint64_t std::ostringstream::basic_ostringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 88));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *a1 = off_5E700;
  *(a1 + 88) = off_5E728;
  *(a1 + 8) = off_5EE88;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::locale::locale((a1 + 64));
  *(a1 + 8) = off_5E608;
  *(a1 + 72) = a2 | 0x10;
  *(a1 + 80) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_31CF8(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v2);
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream(uint64_t *a1, uint64_t *a2, _BYTE **a3, int a4)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  std::stringbuf::basic_stringbuf((a1 + 1), a3, a4 | 0x10);
  std::ios::init(a1 + *(*a1 - 24), (a1 + 1));
  return a1;
}

uint64_t std::ostringstream::basic_ostringstream(uint64_t a1, _BYTE **a2, int a3)
{
  std::ios_base::ios_base((a1 + 88));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *a1 = off_5E700;
  *(a1 + 88) = off_5E728;
  std::stringbuf::basic_stringbuf(a1 + 8, a2, a3 | 0x10);
  std::ios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_31F38(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::~ostringstream(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  std::stringbuf::~stringbuf(a1 + 1);
  return a1;
}

void *std::ostringstream::~ostringstream(void *a1)
{
  *a1 = off_5E700;
  v2 = (a1 + 11);
  a1[11] = off_5E728;
  std::stringbuf::~stringbuf(a1 + 1);
  std::ios_base::~ios_base(v2);
  return a1;
}

void virtual thunk tostd::ostringstream::~ostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5E700;
  v2 = (v1 + 11);
  v1[11] = off_5E728;
  std::stringbuf::~stringbuf(v1 + 1);

  std::ios_base::~ios_base(v2);
}

{
  std::ostringstream::~ostringstream((a1 + *(*a1 - 24)));
}

void std::ostringstream::~ostringstream(void *a1)
{
  *a1 = off_5E700;
  v2 = (a1 + 11);
  a1[11] = off_5E728;
  std::stringbuf::~stringbuf(a1 + 1);
  std::ios_base::~ios_base(v2);

  operator delete(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = std::iostream::iostream(a1, a2 + 1);
  v7 = *a2;
  *v6 = *a2;
  *(a1 + *(v7 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = off_5EE88;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  std::locale::locale((a1 + 80));
  *(a1 + 24) = off_5E608;
  *(a1 + 88) = a3;
  *(a1 + 96) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_3233C(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v3);
  v5 = *(v2 + 16);
  *v1 = v5;
  *(v1 + *(v5 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 104));
  *(a1 + 104) = off_5D458;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  std::iostream::iostream(a1, off_5E7D8);
  *a1 = off_5E770;
  *(a1 + 104) = off_5E7C0;
  *(a1 + 16) = off_5E798;
  *(a1 + 24) = off_5EE88;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  std::locale::locale((a1 + 80));
  *(a1 + 24) = off_5E608;
  *(a1 + 88) = a2;
  *(a1 + 96) = &unk_60620;
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_32528(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v3);
  *v1 = off_5EBC0;
  v1[1] = 0;
  v1[13] = off_5EBE8;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(uint64_t *a1, uint64_t *a2, _BYTE **a3, int a4)
{
  v8 = std::iostream::iostream(a1, a2 + 1);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[8];
  a1[2] = a2[9];
  std::stringbuf::basic_stringbuf((a1 + 3), a3, a4);
  std::ios::init(a1 + *(*a1 - 24), (a1 + 3));
  return a1;
}

void sub_326AC(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v1 + 3);
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream(uint64_t a1, _BYTE **a2, int a3)
{
  std::ios_base::ios_base((a1 + 104));
  *(a1 + 104) = off_5D458;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  std::iostream::iostream(a1, off_5E7D8);
  *a1 = off_5E770;
  *(a1 + 104) = off_5E7C0;
  *(a1 + 16) = off_5E798;
  std::stringbuf::basic_stringbuf(a1 + 24, a2, a3);
  std::ios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_32850(_Unwind_Exception *a1)
{
  std::stringbuf::~stringbuf(v1 + 3);
  *v1 = off_5EBC0;
  v1[1] = 0;
  v1[13] = off_5EBE8;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[8];
  a1[2] = a2[9];
  std::stringbuf::~stringbuf(a1 + 3);
  v5 = a2[2];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  return a1;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 13));
  return a1;
}

void non-virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{

  std::ios_base::~ios_base((a1 + 88));
}

{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((a1 - 16));
}

void virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream((a1 + *(*a1 - 24)));
}

void std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 13));

  operator delete(a1);
}

uint64_t std::wstringbuf::basic_stringbuf(uint64_t a1, int a2)
{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E830;
  *(a1 + 64) = a2;
  *(a1 + 72) = &unk_606A0;
  return a1;
}

{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E830;
  *(a1 + 64) = a2;
  *(a1 + 72) = &unk_606A0;
  return a1;
}

uint64_t std::wstringbuf::basic_stringbuf(uint64_t a1, const __int32 **a2, int a3)
{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  *a1 = off_5E830;
  *(a1 + 64) = 0;
  std::wstring::basic_string((a1 + 72), *a2, *(*a2 - 3));
  *(a1 + 64) = a3;
  v6 = *(a1 + 72);
  if ((a3 & 3) != 0)
  {
    v7 = *(v6 - 24);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  std::wstringbuf::_M_sync(a1, v6, 0, v7);
  return a1;
}

void sub_32D50(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if ((v4 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v4 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((v4 - 24));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 7));
  _Unwind_Resume(a1);
}

uint64_t std::wstringbuf::_M_stringbuf_init(uint64_t a1, int a2)
{
  v2 = a2;
  *(a1 + 64) = a2;
  v3 = *(a1 + 72);
  if ((v2 & 3) != 0)
  {
    v4 = *(v3 - 24);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return std::wstringbuf::_M_sync(a1, v3, 0, v4);
}

void *std::wstringbuf::~wstringbuf(void *a1)
{
  *a1 = off_5E830;
  v2 = a1[9];
  if ((v2 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v2 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((v2 - 24));
  }

  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

void std::wstringbuf::~wstringbuf(void *a1)
{
  v1 = std::wstringbuf::~wstringbuf(a1);

  operator delete(v1);
}

void std::wstringbuf::str(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  *a2 = &unk_606A0;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 24);
    if (v3 <= v4)
    {
      v6 = std::wstring::_S_construct<wchar_t *>(*(a1 + 32), v4);
    }

    else
    {
      v6 = std::wstring::_S_construct<wchar_t *>(*(a1 + 32), v3);
    }

    std::wstring::assign(a2, &v6);
    v5 = v6 - 6;
    if (v6 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
    {
      std::wstring::_Rep::_M_destroy(v5);
    }
  }

  else
  {
    std::wstring::assign(a2, (a1 + 72));
  }
}

void sub_32F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a11 - 24) != v16 && atomic_fetch_add((a11 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a11 - 24));
  }

  v18 = (*v15 - 24);
  if (v18 != v16 && atomic_fetch_add((*v15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::wstringbuf::str(uint64_t a1, __int32 **a2)
{
  std::wstring::assign((a1 + 72), *a2, *(*a2 - 3));
  v3 = *(a1 + 72);
  if ((*(a1 + 64) & 3) != 0)
  {
    v4 = *(v3 - 24);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return std::wstringbuf::_M_sync(a1, v3, 0, v4);
}

uint64_t std::wstringbuf::_M_sync(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 64);
  v5 = *(result + 72);
  v6 = a2 + 4 * *(v5 - 24);
  v7 = a2 + 4 * *(v5 - 16);
  v8 = v6 + 4 * a3;
  if (v5 != a2)
  {
    v6 += 4 * a3;
    v7 = v8;
  }

  if ((v4 & 8) != 0)
  {
    if (v5 == a2)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    *(result + 8) = a2;
    *(result + 16) = a2 + 4 * v9;
    *(result + 24) = v6;
    if ((v4 & 0x10) != 0)
    {
      *(result + 32) = a2;
      *(result + 40) = a2 + 4 * a4;
      *(result + 48) = v7;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    *(result + 40) = a2 + 4 * a4;
    *(result + 48) = v7;
    *(result + 8) = v6;
    *(result + 16) = v6;
    *(result + 24) = v6;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t std::wstringbuf::showmanyc(uint64_t a1)
{
  if ((*(a1 + 64) & 8) == 0)
  {
    return -1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v2 > v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 24) = v2;
    v3 = v2;
  }

  return (v3 - *(a1 + 16)) >> 2;
}

uint64_t std::wstringbuf::_M_update_egptr(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 && v1 > *(result + 24))
  {
    if ((*(result + 64) & 8) == 0)
    {
      *(result + 8) = v1;
      *(result + 16) = v1;
    }

    *(result + 24) = v1;
  }

  return result;
}

uint64_t std::wstringbuf::underflow(uint64_t a1)
{
  if ((*(a1 + 64) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  if (v1 && v1 > v2)
  {
    *(a1 + 24) = v1;
    v2 = v1;
  }

  v4 = *(a1 + 16);
  if (v4 < v2)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::wstringbuf::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (v2 - 4);
  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 16) = v3;
    return a2;
  }

  v4 = *v3;
  if (*v3 != a2 && (*(a1 + 64) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = v3;
  if (v4 != a2)
  {
    *v3 = a2;
  }

  return a2;
}

uint64_t std::wstringbuf::overflow(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 64) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if (a2 == -1)
  {
    return 0;
  }

  v4 = (a1 + 72);
  v5 = *(*(a1 + 72) - 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 >= v7 && v5 == 0xFFFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 < v7)
  {
    *v6 = a2;
  }

  else
  {
    v9 = 2 * v5;
    if ((2 * v5) <= 0x200)
    {
      v9 = 512;
    }

    if (v9 >= 0xFFFFFFFFFFFFFFELL)
    {
      v10 = 0xFFFFFFFFFFFFFFELL;
    }

    else
    {
      v10 = v9;
    }

    v14 = &unk_606A0;
    std::wstring::reserve(&v14, v10);
    v11 = *(a1 + 32);
    if (v11)
    {
      std::wstring::assign(&v14, v11, (*(a1 + 48) - v11) >> 2);
    }

    std::wstring::push_back(&v14, v2);
    std::wstring::swap(v4, &v14);
    std::wstringbuf::_M_sync(a1, *(a1 + 72), (*(a1 + 16) - *(a1 + 8)) >> 2, (*(a1 + 40) - *(a1 + 32)) >> 2);
    v12 = v14 - 6;
    if (v14 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v14 - 2, 0xFFFFFFFF) <= 0)
    {
      std::wstring::_Rep::_M_destroy(v12);
    }

    v6 = *(a1 + 40);
  }

  *(a1 + 40) = v6 + 1;
  return v2;
}

void sub_33314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  if (a9 - 24 != v12 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::wstringbuf::setbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (a3 & 0x8000000000000000) == 0)
  {
    std::wstring::_M_mutate((a1 + 72), 0, *(*(a1 + 72) - 24), 0);
    std::wstringbuf::_M_sync(a1, a2, a3, 0);
  }

  return a1;
}

uint64_t std::wstringbuf::seekoff@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = -1;
  *(a5 + 8) = 0u;
  v5 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  v6 = *(result + 64);
  v7 = a4 & 0x10 & v6;
  if ((v6 & 8 & a4) != 0)
  {
    v8 = a3 != 1;
    if (v7)
    {
      v9 = (a4 & 8) == 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if ((a4 & 0x10) == 0)
    {
      v10 = 1;
      v11 = 8;
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = (a4 & 8) == 0 && v7 != 0;
  }

  v10 = 0;
  v11 = 32;
LABEL_14:
  v13 = *(result + v11);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = a2 == 0;
  }

  if (!v14 || (v9 | v10 | v8) == 0)
  {
    return result;
  }

  v16 = *(result + 40);
  if (v16 && v16 > *(result + 24))
  {
    if ((*(result + 64) & 8) == 0)
    {
      *(result + 8) = v16;
      *(result + 16) = v16;
    }

    *(result + 24) = v16;
  }

  if (a3 == 2)
  {
    a2 += (*(result + 24) - v13) >> 2;
  }

  else if (a3 == 1)
  {
    v17 = a2 + ((v16 - v13) >> 2);
    a2 += (*(result + 16) - v13) >> 2;
    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v17 = a2;
  if ((v10 & 1) == 0)
  {
LABEL_29:
    if (a2 < 0 || !v8)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (a2 <= (*(result + 24) - v13) >> 2)
    {
      *(result + 16) += 4 * ((v13 + 4 * a2 - *(result + 16)) >> 2);
      *v5 = 0uLL;
      *(a5 + 24) = 0uLL;
      *(a5 + 40) = 0uLL;
      *(a5 + 56) = 0uLL;
      *(a5 + 72) = 0uLL;
      *(a5 + 88) = 0uLL;
      *(a5 + 104) = 0uLL;
      *(a5 + 120) = 0uLL;
      *a5 = a2;
    }

    goto LABEL_39;
  }

LABEL_36:
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (v9)
  {
    if (v17 < 0)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (v17 < 0)
  {
    LOBYTE(v8) = 0;
  }

  if (v8)
  {
LABEL_45:
    if (v17 <= (*(result + 24) - v13) >> 2)
    {
      *(result + 40) = v16 + 4 * ((v13 + 4 * v17 - v16) >> 2);
      *v5 = 0uLL;
      *(a5 + 24) = 0uLL;
      *(a5 + 40) = 0uLL;
      *(a5 + 56) = 0uLL;
      *(a5 + 72) = 0uLL;
      *(a5 + 88) = 0uLL;
      *(a5 + 104) = 0uLL;
      *(a5 + 120) = 0uLL;
      *a5 = v17;
    }
  }

  return result;
}

__n128 std::wstringbuf::seekpos@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  result.n128_u64[0] = 0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  v5 = *(a1 + 64) & 8;
  v6 = v5 & a3;
  v7 = *(a1 + 64) & a3;
  v8 = 8;
  if ((v5 & a3) == 0)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  if (v9)
  {
    if ((v7 & 0x18) == 0)
    {
      return result;
    }
  }

  else if (*a2 || (v7 & 0x18) == 0)
  {
    return result;
  }

  v10 = *(a1 + 40);
  if (v10 && v10 > *(a1 + 24))
  {
    if (!v5)
    {
      *(a1 + 8) = v10;
      *(a1 + 16) = v10;
    }

    *(a1 + 24) = v10;
  }

  v11 = *a2;
  if ((*a2 & 0x8000000000000000) == 0 && v11 <= (*(a1 + 24) - v9) >> 2)
  {
    v12 = v9 + 4 * v11;
    if (v6)
    {
      *(a1 + 16) += 4 * ((v12 - *(a1 + 16)) >> 2);
    }

    if ((v7 & 0x10) != 0)
    {
      *(a1 + 40) = v10 + 4 * ((v12 - v10) >> 2);
    }

    v13 = *(a2 + 112);
    *(a4 + 96) = *(a2 + 96);
    *(a4 + 112) = v13;
    *(a4 + 128) = *(a2 + 128);
    v14 = *(a2 + 48);
    *(a4 + 32) = *(a2 + 32);
    *(a4 + 48) = v14;
    v15 = *(a2 + 80);
    *(a4 + 64) = *(a2 + 64);
    *(a4 + 80) = v15;
    result = *(a2 + 16);
    *a4 = *a2;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t std::wistringstream::basic_istringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  *(a1 + 8) = 0;
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  *(a1 + 16) = off_5EF08;
  *(a1 + 24) = 0u;
  v6 = a3 | 8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::locale::locale((a1 + 72));
  *(a1 + 16) = off_5E830;
  *(a1 + 80) = v6;
  *(a1 + 88) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_33828(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v3);
  v5 = *(v2 + 8);
  *v1 = v5;
  *(v1 + *(v5 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::basic_istringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 96));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *a1 = off_5E8B8;
  *(a1 + 8) = 0;
  *(a1 + 96) = off_5E8E0;
  *(a1 + 16) = off_5EF08;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::locale::locale((a1 + 72));
  *(a1 + 16) = off_5E830;
  *(a1 + 80) = a2 | 8;
  *(a1 + 88) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_339DC(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v3);
  v1[12] = off_5ECB8;
  *v1 = off_5EC90;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::wistringstream::basic_istringstream(uint64_t *a1, uint64_t *a2, const __int32 **a3, int a4)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  std::wstringbuf::basic_stringbuf((a1 + 2), a3, a4 | 8);
  std::wios::init(a1 + *(*a1 - 24), (a1 + 2));
  return a1;
}

void sub_33BA0(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v1 + 2);
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::basic_istringstream(uint64_t a1, const __int32 **a2, int a3)
{
  std::ios_base::ios_base((a1 + 96));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *a1 = off_5E8B8;
  *(a1 + 8) = 0;
  *(a1 + 96) = off_5E8E0;
  std::wstringbuf::basic_stringbuf(a1 + 16, a2, a3 | 8);
  std::wios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_33CFC(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v1 + 2);
  v1[12] = off_5ECB8;
  *v1 = off_5EC90;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::wistringstream::~wistringstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::wstringbuf::~wstringbuf(a1 + 2);
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  return a1;
}

uint64_t *std::wistringstream::~wistringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 12));
  return a1;
}

void virtual thunk tostd::wistringstream::~wistringstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::wistringstream::~wistringstream((a1 + *(*a1 - 24)));
}

void std::wistringstream::~wistringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 12));

  operator delete(a1);
}

uint64_t std::wostringstream::basic_ostringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  v6 = a3 | 0x10;
  *(a1 + 8) = off_5EF08;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::locale::locale((a1 + 64));
  *(a1 + 8) = off_5E830;
  *(a1 + 72) = v6;
  *(a1 + 80) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

uint64_t std::wostringstream::basic_ostringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 88));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *a1 = off_5E928;
  *(a1 + 88) = off_5E950;
  *(a1 + 8) = off_5EF08;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::locale::locale((a1 + 64));
  *(a1 + 8) = off_5E830;
  *(a1 + 72) = a2 | 0x10;
  *(a1 + 80) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_3426C(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v2);
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::wostringstream::basic_ostringstream(uint64_t *a1, uint64_t *a2, const __int32 **a3, int a4)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  std::wstringbuf::basic_stringbuf((a1 + 1), a3, a4 | 0x10);
  std::wios::init(a1 + *(*a1 - 24), (a1 + 1));
  return a1;
}

uint64_t std::wostringstream::basic_ostringstream(uint64_t a1, const __int32 **a2, int a3)
{
  std::ios_base::ios_base((a1 + 88));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *a1 = off_5E928;
  *(a1 + 88) = off_5E950;
  std::wstringbuf::basic_stringbuf(a1 + 8, a2, a3 | 0x10);
  std::wios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_344B0(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::wostringstream::~wostringstream(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  std::wstringbuf::~wstringbuf(a1 + 1);
  return a1;
}

void *std::wostringstream::~wostringstream(void *a1)
{
  *a1 = off_5E928;
  v2 = (a1 + 11);
  a1[11] = off_5E950;
  std::wstringbuf::~wstringbuf(a1 + 1);
  std::ios_base::~ios_base(v2);
  return a1;
}

void virtual thunk tostd::wostringstream::~wostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5E928;
  v2 = (v1 + 11);
  v1[11] = off_5E950;
  std::wstringbuf::~wstringbuf(v1 + 1);

  std::ios_base::~ios_base(v2);
}

{
  std::wostringstream::~wostringstream((a1 + *(*a1 - 24)));
}

void std::wostringstream::~wostringstream(void *a1)
{
  *a1 = off_5E928;
  v2 = (a1 + 11);
  a1[11] = off_5E950;
  std::wstringbuf::~wstringbuf(a1 + 1);
  std::ios_base::~ios_base(v2);

  operator delete(a1);
}

uint64_t std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_stringstream(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = std::wiostream::basic_iostream(a1, a2 + 1);
  v7 = *a2;
  *v6 = *a2;
  *(a1 + *(v7 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = off_5EF08;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  std::locale::locale((a1 + 80));
  *(a1 + 24) = off_5E830;
  *(a1 + 88) = a3;
  *(a1 + 96) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_348B4(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v3);
  v5 = *(v2 + 16);
  *v1 = v5;
  *(v1 + *(v5 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_stringstream(uint64_t a1, int a2)
{
  std::ios_base::ios_base((a1 + 104));
  *(a1 + 104) = off_5D478;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  std::wiostream::basic_iostream(a1, off_5EA00);
  *a1 = off_5E998;
  *(a1 + 104) = off_5E9E8;
  *(a1 + 16) = off_5E9C0;
  *(a1 + 24) = off_5EF08;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  std::locale::locale((a1 + 80));
  *(a1 + 24) = off_5E830;
  *(a1 + 88) = a2;
  *(a1 + 96) = &unk_606A0;
  std::wios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_34AA4(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v3);
  *v1 = off_5EDD8;
  v1[1] = 0;
  v1[13] = off_5EE00;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_stringstream(uint64_t *a1, uint64_t *a2, const __int32 **a3, int a4)
{
  v8 = std::wiostream::basic_iostream(a1, a2 + 1);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[8];
  a1[2] = a2[9];
  std::wstringbuf::basic_stringbuf((a1 + 3), a3, a4);
  std::wios::init(a1 + *(*a1 - 24), (a1 + 3));
  return a1;
}

void sub_34C28(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v1 + 3);
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::basic_stringstream(uint64_t a1, const __int32 **a2, int a3)
{
  std::ios_base::ios_base((a1 + 104));
  *(a1 + 104) = off_5D478;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  std::wiostream::basic_iostream(a1, off_5EA00);
  *a1 = off_5E998;
  *(a1 + 104) = off_5E9E8;
  *(a1 + 16) = off_5E9C0;
  std::wstringbuf::basic_stringbuf(a1 + 24, a2, a3);
  std::wios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_34DD0(_Unwind_Exception *a1)
{
  std::wstringbuf::~wstringbuf(v1 + 3);
  *v1 = off_5EDD8;
  v1[1] = 0;
  v1[13] = off_5EE00;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[8];
  a1[2] = a2[9];
  std::wstringbuf::~wstringbuf(a1 + 3);
  v5 = a2[2];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  return a1;
}

uint64_t *std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 13));
  return a1;
}

void non-virtual thunk tostd::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream(uint64_t a1)
{

  std::ios_base::~ios_base((a1 + 88));
}

{
  std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream((a1 - 16));
}

void virtual thunk tostd::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream((a1 + *(*a1 - 24)));
}

void std::basic_stringstream<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>::~basic_stringstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 13));

  operator delete(a1);
}

void *std::streambuf::~streambuf(void *a1)
{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));
  return a1;
}

void std::streambuf::~streambuf(void *a1)
{
  *a1 = off_5EE88;
  std::locale::~locale((a1 + 7));

  operator delete(a1);
}

atomic_uint **std::streambuf::pubimbue@<X0>(atomic_uint **a1@<X0>, atomic_uint *volatile *a2@<X1>, atomic_uint **a3@<X8>)
{
  std::locale::locale(a3, a1 + 7);
  (*(*a1 + 2))(a1, a2);

  return std::locale::operator=(a1 + 7, a2);
}

uint64_t std::streambuf::pubseekpos(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v2;
  v8 = *(a2 + 128);
  v3 = *(a2 + 112);
  v7[6] = *(a2 + 96);
  v7[7] = v3;
  v4 = *(a2 + 80);
  v7[4] = *(a2 + 64);
  v7[5] = v4;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (*(*a1 + 40))(a1, v7);
}

uint64_t std::streambuf::in_avail(void *a1)
{
  if (a1[3] == a1[2])
  {
    return (*(*a1 + 56))();
  }

  else
  {
    return a1[3] - a1[2];
  }
}

uint64_t std::streambuf::snextc(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  if (v3 >= v2)
  {
    result = (*(*a1 + 80))(a1);
    if (result == -1)
    {
      return result;
    }

    v4 = a1[2];
    v2 = a1[3];
  }

  else
  {
    v4 = (v3 + 1);
    a1[2] = v4;
  }

  if (v4 < v2)
  {
    return *v4;
  }

  v6 = *(*a1 + 72);

  return v6(a1);
}

uint64_t std::streambuf::sbumpc(void *a1)
{
  v1 = a1[2];
  if (v1 >= a1[3])
  {
    return (*(*a1 + 80))();
  }

  v2 = *v1;
  a1[2] = v1 + 1;
  return v2;
}

uint64_t std::streambuf::sgetc(void *a1)
{
  v1 = a1[2];
  if (v1 >= a1[3])
  {
    return (*(*a1 + 72))();
  }

  else
  {
    return *v1;
  }
}

uint64_t std::streambuf::sputbackc(void *a1, unsigned __int8 a2)
{
  v2 = a1[2];
  if (a1[1] >= v2)
  {
    return (*(*a1 + 88))(a1, a2);
  }

  v4 = *(v2 - 1);
  v3 = (v2 - 1);
  if (v4 != a2)
  {
    return (*(*a1 + 88))(a1, a2);
  }

  a1[2] = v3;
  return *v3;
}

uint64_t std::streambuf::sungetc(void *a1)
{
  v1 = a1[2];
  if (a1[1] >= v1)
  {
    return (*(*a1 + 88))(a1, 0xFFFFFFFFLL);
  }

  a1[2] = v1 - 1;
  return *(v1 - 1);
}

uint64_t std::streambuf::sputc(void *a1, unsigned __int8 a2)
{
  v2 = a1[5];
  if (v2 >= a1[6])
  {
    return (*(*a1 + 104))(a1, a2);
  }

  *v2 = a2;
  ++a1[5];
  return a2;
}

uint64_t std::streambuf::basic_streambuf(uint64_t a1)
{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  return a1;
}

{
  *a1 = off_5EE88;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  return a1;
}

void *std::streambuf::setg(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void *std::streambuf::setp(void *result, uint64_t a2, uint64_t a3)
{
  result[4] = a2;
  result[5] = a2;
  result[6] = a3;
  return result;
}

double std::streambuf::seekoff@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

double std::streambuf::seekpos@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t std::streambuf::xsgetn(void *a1, char *__dst, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[2];
    v8 = a1[3] - v7;
    if (v8)
    {
      if (a3 - v6 >= v8)
      {
        v9 = a1[3] - v7;
      }

      else
      {
        v9 = a3 - v6;
      }

      memcpy(__dst, v7, v9);
      v6 += v9;
      __dst += v9;
      a1[2] += v9;
    }

    if (v6 < a3)
    {
      v10 = (*(*a1 + 80))(a1);
      if (v10 == -1)
      {
        return v6;
      }

      *__dst++ = v10;
      ++v6;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t std::streambuf::uflow(void *a1)
{
  result = (*(*a1 + 72))(a1);
  if (result != -1)
  {
    v3 = a1[2];
    result = *v3;
    a1[2] = v3 + 1;
  }

  return result;
}

uint64_t std::streambuf::xsputn(void *a1, unsigned __int8 *__src, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[5];
    v8 = a1[6] - v7;
    if (v8)
    {
      if (a3 - v6 >= v8)
      {
        v9 = a1[6] - v7;
      }

      else
      {
        v9 = a3 - v6;
      }

      memcpy(v7, __src, v9);
      v6 += v9;
      __src += v9;
      a1[5] += v9;
    }

    if (v6 < a3)
    {
      v10 = *__src++;
      if ((*(*a1 + 104))(a1, v10) == -1)
      {
        return v6;
      }

      ++v6;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t std::streambuf::basic_streambuf(uint64_t a1, uint64_t a2)
{
  *a1 = off_5EE88;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  std::locale::locale((a1 + 56), (a2 + 56));
  return a1;
}

{
  *a1 = off_5EE88;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  std::locale::locale((a1 + 56), (a2 + 56));
  return a1;
}

void *std::wstreambuf::~wstreambuf(void *a1)
{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

void std::wstreambuf::~wstreambuf(void *a1)
{
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));

  operator delete(a1);
}

atomic_uint **std::wstreambuf::pubimbue@<X0>(atomic_uint **a1@<X0>, atomic_uint *volatile *a2@<X1>, atomic_uint **a3@<X8>)
{
  std::locale::locale(a3, a1 + 7);
  (*(*a1 + 2))(a1, a2);

  return std::locale::operator=(a1 + 7, a2);
}

uint64_t std::wstreambuf::pubseekpos(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v2;
  v8 = *(a2 + 128);
  v3 = *(a2 + 112);
  v7[6] = *(a2 + 96);
  v7[7] = v3;
  v4 = *(a2 + 80);
  v7[4] = *(a2 + 64);
  v7[5] = v4;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (*(*a1 + 40))(a1, v7);
}

uint64_t std::wstreambuf::in_avail(void *a1)
{
  v1 = a1[3] - a1[2];
  if (v1)
  {
    return v1 >> 2;
  }

  else
  {
    return (*(*a1 + 56))();
  }
}

uint64_t std::wstreambuf::sbumpc(void *a1)
{
  v1 = a1[2];
  if (v1 >= a1[3])
  {
    return (*(*a1 + 80))();
  }

  v2 = *v1;
  a1[2] = v1 + 1;
  return v2;
}

uint64_t std::wstreambuf::sgetc(void *a1)
{
  v1 = a1[2];
  if (v1 >= a1[3])
  {
    return (*(*a1 + 72))();
  }

  else
  {
    return *v1;
  }
}

uint64_t std::wstreambuf::sputbackc(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (a1[1] >= v2)
  {
    return (*(*a1 + 88))();
  }

  v4 = *(v2 - 4);
  v3 = v2 - 4;
  if (v4 != a2)
  {
    return (*(*a1 + 88))();
  }

  a1[2] = v3;
  return a2;
}

uint64_t std::wstreambuf::sungetc(void *a1)
{
  v1 = a1[2];
  if (a1[1] >= v1)
  {
    return (*(*a1 + 88))(a1, 0xFFFFFFFFLL);
  }

  v2 = *(v1 - 4);
  a1[2] = v1 - 4;
  return v2;
}

uint64_t std::wstreambuf::sputc(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 >= a1[6])
  {
    return (*(*a1 + 104))();
  }

  *v2 = a2;
  a1[5] = v2 + 1;
  return a2;
}

uint64_t std::wstreambuf::basic_streambuf(uint64_t a1)
{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  return a1;
}

{
  *a1 = off_5EF08;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::locale::locale((a1 + 56));
  return a1;
}

void *std::wstreambuf::setg(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void *std::wstreambuf::setp(void *result, uint64_t a2, uint64_t a3)
{
  result[4] = a2;
  result[5] = a2;
  result[6] = a3;
  return result;
}

double std::wstreambuf::seekoff@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

double std::wstreambuf::seekpos@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t std::wstreambuf::xsgetn(void *a1, __int32 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[2];
    v8 = a1[3] - v7;
    if (v8)
    {
      if (a3 - v6 >= v8 >> 2)
      {
        v9 = v8 >> 2;
      }

      else
      {
        v9 = a3 - v6;
      }

      wmemcpy(a2, v7, v9);
      v6 += v9;
      a2 += v9;
      a1[2] += 4 * v9;
    }

    if (v6 < a3)
    {
      v10 = (*(*a1 + 80))(a1);
      if (v10 == -1)
      {
        return v6;
      }

      *a2++ = v10;
      ++v6;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t std::wstreambuf::uflow(void *a1)
{
  result = (*(*a1 + 72))(a1);
  if (result != -1)
  {
    v3 = a1[2];
    result = *v3;
    a1[2] = v3 + 1;
  }

  return result;
}

uint64_t std::wstreambuf::xsputn(void *a1, unsigned int *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[5];
    v8 = a1[6] - v7;
    if (v8)
    {
      if (a3 - v6 >= v8 >> 2)
      {
        v9 = v8 >> 2;
      }

      else
      {
        v9 = a3 - v6;
      }

      wmemcpy(v7, a2, v9);
      v6 += v9;
      a2 += v9;
      a1[5] += 4 * v9;
    }

    if (v6 < a3)
    {
      v10 = *a2++;
      if ((*(*a1 + 104))(a1, v10) == -1)
      {
        return v6;
      }

      ++v6;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t std::wstreambuf::basic_streambuf(uint64_t a1, uint64_t a2)
{
  *a1 = off_5EF08;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  std::locale::locale((a1 + 56), (a2 + 56));
  return a1;
}

{
  *a1 = off_5EF08;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  std::locale::locale((a1 + 56), (a2 + 56));
  return a1;
}

uint64_t std::__copy_streambufs_eof<char,std::char_traits<char>>(void *a1, void *a2, _BYTE *a3)
{
  *a3 = 1;
  v6 = a1[2];
  if (v6 >= a1[3])
  {
    v7 = (*(*a1 + 72))(a1);
    if (v7 == -1)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v7) = *v6;
  }

  v8 = 0;
  while (1)
  {
    v9 = a1[2];
    v10 = a1[3] - v9;
    if (v10 < 2)
    {
      break;
    }

    v11 = a1[3] - v9;
    v12 = (*(*a2 + 96))(a2);
    a1[2] += v12;
    v8 += v12;
    if (v12 < v10)
    {
      goto LABEL_13;
    }

    v7 = (*(*a1 + 72))(a1);
LABEL_10:
    if (v7 == -1)
    {
      return v8;
    }
  }

  v13 = a2[5];
  if (v13 < a2[6])
  {
    *v13 = v7;
    ++a2[5];
LABEL_9:
    ++v8;
    v7 = std::streambuf::snextc(a1);
    goto LABEL_10;
  }

  if (!std::__copy_streambufs_eof<char,std::char_traits<char>>(v7, a2))
  {
    goto LABEL_9;
  }

LABEL_13:
  *a3 = 0;
  return v8;
}

uint64_t std::__copy_streambufs_eof<wchar_t,std::char_traits<wchar_t>>(void *a1, void *a2, _BYTE *a3)
{
  *a3 = 1;
  v6 = a1[2];
  if (v6 >= a1[3])
  {
    v7 = (*(*a1 + 72))(a1);
  }

  else
  {
    v7 = *v6;
  }

  if (v7 == -1)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = a1[2];
    v10 = (a1[3] - v9) >> 2;
    if (v10 < 2)
    {
      break;
    }

    v11 = (a1[3] - v9) >> 2;
    v12 = (*(*a2 + 96))(a2);
    a1[2] += 4 * v12;
    v8 += v12;
    if (v12 < v10)
    {
      goto LABEL_14;
    }

    v13 = (*(*a1 + 72))(a1);
LABEL_11:
    v7 = v13;
    if (v13 == -1)
    {
      return v8;
    }
  }

  v14 = a2[5];
  if (v14 < a2[6])
  {
    *v14 = v7;
    a2[5] = v14 + 1;
LABEL_10:
    ++v8;
    v13 = std::wstreambuf::snextc(a1);
    goto LABEL_11;
  }

  if ((*(*a2 + 104))(a2, v7) != -1)
  {
    goto LABEL_10;
  }

LABEL_14:
  *a3 = 0;
  return v8;
}

uint64_t std::string::_Rep::_M_set_length_and_sharable(uint64_t this, uint64_t a2)
{
  *(this + 16) = 0;
  *this = a2;
  *(this + a2 + 24) = 0;
  return this;
}

void *std::string::_Rep::_M_grab(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    return std::string::_Rep::_M_clone(a1, a2, 0);
  }

  if (a1 != &std::string::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add((a1 + 16), 1u);
  }

  return (a1 + 24);
}

atomic_uint *std::string::_Rep::_M_refcopy(atomic_uint *this)
{
  if (this != &std::string::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add(this + 4, 1u);
  }

  return this + 6;
}

void *std::string::_Rep::_M_clone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = std::string::_Rep::_S_create(*a1 + a3, *(a1 + 8));
  v5 = v4;
  v6 = *a1;
  if (*a1)
  {
    if (v6 == 1)
    {
      *(v4 + 24) = *(a1 + 24);
    }

    else
    {
      memcpy(v4 + 3, (a1 + 24), v6);
    }
  }

  v7 = *a1;
  *(v5 + 4) = 0;
  *v5 = v7;
  result = v5 + 3;
  *(v5 + v7 + 24) = 0;
  return result;
}

void *std::string::_Rep::_S_create(unint64_t a1, unint64_t a2)
{
  if (a1 >= 0x3FFFFFFFFFFFFFFALL)
  {
    std::__throw_length_error("basic_string::_S_create");
  }

  v2 = 2 * a2;
  if (2 * a2 <= a1)
  {
    v2 = a1;
  }

  if (a1 <= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 > a2)
  {
    v4 = v3 - ((v3 + 57) & 0xFFF) + 4096;
    if (v4 >= 0x3FFFFFFFFFFFFFF9)
    {
      v4 = 0x3FFFFFFFFFFFFFF9;
    }

    if (v3 >= 0xFC8)
    {
      v3 = v4;
    }
  }

  result = operator new(v3 + 25);
  result[1] = v3;
  *(result + 4) = 0;
  return result;
}

void std::string::_Rep::_M_dispose(void *__p)
{
  if (__p != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(__p + 4, 0xFFFFFFFF) <= 0)
  {
    operator delete(__p);
  }
}

_BYTE *std::string::_M_copy(_BYTE *this, const void *__src, size_t __n)
{
  if (__n != 1)
  {
    return memcpy(this, __src, __n);
  }

  *this = *__src;
  return this;
}

void *std::string::_Alloc_hider::_Alloc_hider(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void std::string::_M_leak(int **this)
{
  if ((*(*this - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
  }
}

void std::string::_M_leak_hard(int **this)
{
  v1 = *this;
  if (*this - 6 != &std::string::_Rep::_S_empty_rep_storage)
  {
    if (*(v1 - 2) >= 1)
    {
      std::string::_M_mutate(this, 0, 0, 0);
      v1 = *this;
    }

    *(v1 - 2) = -1;
  }
}

unint64_t std::string::_M_check(std::string *this, unint64_t a2, const char *a3)
{
  if (*(*this - 24) < a2)
  {
    std::__throw_out_of_range(a3);
  }

  return a2;
}

void *std::string::_M_check_length(void *this, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a2 - *(*this - 24) + 0x3FFFFFFFFFFFFFF9 < a3)
  {
    std::__throw_length_error(a4);
  }

  return this;
}

unint64_t std::string::_M_limit(std::string *this, uint64_t a2, unint64_t a3)
{
  if (*(*this - 24) - a2 >= a3)
  {
    return a3;
  }

  else
  {
    return *(*this - 24) - a2;
  }
}

_BYTE *std::string::_M_move(_BYTE *this, const void *__src, size_t __len)
{
  if (__len != 1)
  {
    return memmove(this, __src, __len);
  }

  *this = *__src;
  return this;
}

_BYTE *std::string::_M_assign(_BYTE *this, size_t __len, unint64_t __c)
{
  if (__len != 1)
  {
    return memset(this, __c, __len);
  }

  *this = __c;
  return this;
}

_BYTE *std::string::_S_copy_chars(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (v3 != 1)
  {
    return memcpy(result, a2, v3);
  }

  *result = *a2;
  return result;
}

{
  v3 = a3 - a2;
  if (v3 != 1)
  {
    return memcpy(result, a2, v3);
  }

  *result = *a2;
  return result;
}

_BYTE *std::string::_S_copy_chars(_BYTE *this, char *a2, char *a3, char *a4)
{
  v4 = a3 - a2;
  if (v4 != 1)
  {
    return memcpy(this, a2, v4);
  }

  *this = *a2;
  return this;
}

_BYTE *std::string::_S_copy_chars(_BYTE *this, char *a2, const char *a3, const char *a4)
{
  v4 = a3 - a2;
  if (v4 != 1)
  {
    return memcpy(this, a2, v4);
  }

  *this = *a2;
  return this;
}

uint64_t std::string::_S_compare(std::string *this, unint64_t a2)
{
  if (this >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (this > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void std::string::_M_mutate(int **this, size_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *this;
  v10 = *(*this - 3);
  v9 = *(*this - 2);
  v11 = a4 - a3 + v10;
  v12 = a3 + a2;
  v13 = v10 - (a3 + a2);
  if (v11 <= v9 && *(v8 - 2) < 1)
  {
    if (a4 != a3 && v10 != v12)
    {
      v22 = v8 + a2;
      if (v13 == 1)
      {
        v22[a4] = v22[a3];
      }

      else
      {
        memmove(&v22[a4], &v22[a3], v10 - (a3 + a2));
      }
    }
  }

  else
  {
    v14 = std::string::_Rep::_S_create(v11, v9);
    v15 = v14;
    if (a2)
    {
      v16 = *this;
      if (a2 == 1)
      {
        *(v14 + 24) = *v16;
      }

      else
      {
        memcpy(v14 + 3, v16, a2);
      }
    }

    if (v10 != v12)
    {
      v17 = v15 + a2 + a4;
      v18 = *this;
      v19 = a2 + a3;
      if (v13 == 1)
      {
        *(v17 + 24) = *(v18 + v19);
      }

      else
      {
        memcpy((v17 + 24), v18 + v19, v13);
      }
    }

    v20 = (*this - 6);
    if (v20 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(*this - 2, 0xFFFFFFFF) <= 0)
    {
      operator delete(v20);
    }

    *this = (v15 + 3);
  }

  v21 = *this;
  *(v21 - 2) = 0;
  *(v21 - 3) = v11;
  *(v21 + v11) = 0;
}

void *std::string::string(void *this)
{
  *this = &unk_60620;
  return this;
}

{
  *this = &unk_60620;
  return this;
}

void *std::string::string(void *result)
{
  *result = &unk_60620;
  return result;
}

{
  *result = &unk_60620;
  return result;
}

_BYTE *std::string::_S_construct(unint64_t a1, int a2)
{
  if (!a1)
  {
    return &unk_60620;
  }

  v4 = std::string::_Rep::_S_create(a1, 0);
  v5 = v4;
  v6 = v4 + 3;
  if (a1 == 1)
  {
    *v6 = a2;
  }

  else
  {
    memset(v4 + 3, a2, a1);
  }

  *(v5 + 4) = 0;
  *v5 = a1;
  v6[a1] = 0;
  return v6;
}

std::string *std::string::string(std::string *this, atomic_uint **a2)
{
  v3 = *a2;
  v4 = (*a2 - 6);
  if (*(*a2 - 2) < 0)
  {
    v3 = std::string::_Rep::_M_clone(v4, &v6, 0);
  }

  else if (v4 != &std::string::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add(v3 - 2, 1u);
  }

  *this = v3;
  return this;
}

std::string *std::string::string(std::string *this, const std::string *a2, unint64_t a3, unint64_t a4)
{
  v4 = *(*a2 - 24);
  v5 = v4 >= a3;
  v6 = v4 - a3;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::basic_string");
  }

  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  *this = std::string::_S_construct<char *>((*a2 + a3), (*a2 + a3 + v8));
  return this;
}

void *std::string::string(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v4 = *(*a2 - 24);
  v5 = v4 >= a3;
  v6 = v4 - a3;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::basic_string");
  }

  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  *a1 = std::string::_S_construct<char *>((*a2 + a3), (*a2 + a3 + v8));
  return a1;
}

void *std::string::string(void *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = std::string::_S_construct<char const*>(a2, &a2[a3]);
  return a1;
}

{
  *a1 = std::string::_S_construct<char const*>(a2, &a2[a3]);
  return a1;
}

void *std::string::string(void *a1, char *__s)
{
  if (__s)
  {
    v4 = &__s[strlen(__s)];
  }

  else
  {
    v4 = -1;
  }

  *a1 = std::string::_S_construct<char const*>(__s, v4);
  return a1;
}

void *std::string::string(void *a1, unint64_t a2, int a3)
{
  if (a2)
  {
    v6 = std::string::_Rep::_S_create(a2, 0);
    v7 = v6;
    v8 = v6 + 3;
    if (a2 == 1)
    {
      *v8 = a3;
    }

    else
    {
      memset(v6 + 3, a3, a2);
    }

    *(v7 + 4) = 0;
    *v7 = a2;
    v8[a2] = 0;
  }

  else
  {
    v8 = &unk_60620;
  }

  *a1 = v8;
  return a1;
}

{
  if (a2)
  {
    v6 = std::string::_Rep::_S_create(a2, 0);
    v7 = v6;
    v8 = v6 + 3;
    if (a2 == 1)
    {
      *v8 = a3;
    }

    else
    {
      memset(v6 + 3, a3, a2);
    }

    *(v7 + 4) = 0;
    *v7 = a2;
    v8[a2] = 0;
  }

  else
  {
    v8 = &unk_60620;
  }

  *a1 = v8;
  return a1;
}

void std::string::~string(std::string *this)
{
  v1 = *this;
  v2 = (*this - 24);
  if (v2 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v2);
  }
}

{
  v1 = *this;
  v2 = (*this - 24);
  if (v2 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v2);
  }
}

std::string *std::string::assign(atomic_uint **this, atomic_uint **a2)
{
  v3 = *this;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (*(v4 - 2) < 0)
    {
      v4 = std::string::_Rep::_M_clone((v4 - 6), &v8, 0);
    }

    else if (v4 - 6 != &std::string::_Rep::_S_empty_rep_storage)
    {
      atomic_fetch_add(v4 - 2, 1u);
    }

    v5 = (*this - 6);
    if (v5 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(*this - 2, 0xFFFFFFFF) <= 0)
    {
      v7 = v4;
      operator delete(v5);
      v4 = v7;
    }

    *this = v4;
  }

  return this;
}

int **std::string::operator=(int **a1, char *__s)
{
  v4 = strlen(__s);

  return std::string::assign(a1, __s, v4);
}

int **std::string::assign(int **this, const char *__s)
{
  v4 = strlen(__s);

  return std::string::assign(this, __s, v4);
}

int *std::string::begin(int **this)
{
  result = *this;
  if ((*(result - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
    return *this;
  }

  return result;
}

uint64_t std::string::end(int **this)
{
  v1 = *this;
  if ((*(*this - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
    v1 = *this;
  }

  return v1 + *(v1 - 3);
}

void std::string::rbegin(int **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if ((*(*this - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
    v3 = *this;
  }

  *a2 = v3 + *(v3 - 3);
}

void std::string::rend(int **this@<X0>, int **a2@<X8>)
{
  v3 = *this;
  if ((*(*this - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
    v3 = *this;
  }

  *a2 = v3;
}

std::string *std::string::resize(std::string *this, size_t a2, int a3)
{
  if (a2 >= 0x3FFFFFFFFFFFFFFALL)
  {
    std::__throw_length_error("basic_string::resize");
  }

  v4 = *(*this - 24);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::string::append(this, v6, a3);
  }

  else if (!v5)
  {

    return std::string::erase(this, a2, 0xFFFFFFFFFFFFFFFFLL);
  }

  return this;
}

std::string *std::string::append(std::string *this, size_t __len, int __c)
{
  if (__len)
  {
    v5 = *this;
    v6 = *(*this - 24);
    if (0x3FFFFFFFFFFFFFF9 - v6 < __len)
    {
      std::__throw_length_error("basic_string::append");
    }

    v8 = v6 + __len;
    if (v6 + __len > *(v5 - 16) || *(v5 - 8) >= 1)
    {
      std::string::reserve(this, v6 + __len);
      v5 = *this;
      v6 = *(*this - 24);
    }

    if (__len == 1)
    {
      *(v5 + v6) = __c;
    }

    else
    {
      memset((v5 + v6), __c, __len);
    }

    v9 = *this;
    *(v9 - 8) = 0;
    *(v9 - 24) = v8;
    *(v9 + v8) = 0;
  }

  return this;
}

int **std::string::erase(int **this, size_t a2, unint64_t a3)
{
  v3 = *(*this - 3);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    std::__throw_out_of_range("basic_string::erase");
  }

  if (v5 < a3)
  {
    a3 = v5;
  }

  std::string::_M_mutate(this, a2, a3, 0);
  return this;
}

void *std::string::reserve(std::string *this, unint64_t a2)
{
  result = *this;
  if (*(result - 2) != a2 || *(result - 2) >= 1)
  {
    v5 = *(result - 3);
    v4 = (result - 3);
    v6 = a2 - v5;
    if (a2 >= v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    result = std::string::_Rep::_M_clone(v4, &v10, v7);
    v8 = (*this - 24);
    if (v8 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((*this - 8), 0xFFFFFFFF) <= 0)
    {
      v9 = result;
      operator delete(v8);
      result = v9;
    }

    *this = result;
  }

  return result;
}

char *std::string::operator[](int **a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(a1);
    v3 = *a1;
  }

  return v3 + a2;
}

unint64_t std::string::at(std::string *this, unint64_t a2)
{
  if (*(*this - 24) <= a2)
  {
    std::__throw_out_of_range("basic_string::at");
  }

  return *this + a2;
}

uint64_t std::string::at(int **this, unint64_t a2)
{
  v2 = *this;
  if (*(*this - 3) <= a2)
  {
    std::__throw_out_of_range("basic_string::at");
  }

  if ((*(v2 - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(this);
    v2 = *this;
  }

  return v2 + a2;
}

std::string *std::string::append(std::string *this, const std::string *a2)
{
  v4 = *a2;
  v5 = *(v4 - 3);
  if (v5)
  {
    v6 = *this;
    v7 = *(*this - 24);
    v8 = v7 + v5;
    if (v7 + v5 > *(*this - 16) || *(v6 - 8) >= 1)
    {
      std::string::reserve(this, v7 + v5);
      v6 = *this;
      v7 = *(*this - 24);
      v4 = *a2;
    }

    if (v5 == 1)
    {
      *(v6 + v7) = *v4;
    }

    else
    {
      memcpy((v6 + v7), v4, v5);
    }

    v9 = *this;
    *(v9 - 8) = 0;
    *(v9 - 24) = v8;
    *(v9 + v8) = 0;
  }

  return this;
}

std::string *std::string::operator+=(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return std::string::append(a1, __s, v4);
}

std::string *std::string::append(std::string *this, const char *__s)
{
  v4 = strlen(__s);

  return std::string::append(this, __s, v4);
}

std::string *std::string::push_back(std::string *this, char a2)
{
  v3 = this;
  v4 = *this;
  v5 = *(*this - 24);
  v6 = v5 + 1;
  if ((v5 + 1) > *(*this - 16) || *(v4 - 8) >= 1)
  {
    this = std::string::reserve(this, v5 + 1);
    v4 = *v3;
    v5 = *(*v3 - 24);
  }

  *(v4 + v5) = a2;
  v7 = *v3;
  *(v7 - 8) = 0;
  *(v7 - 24) = v6;
  *(v7 + v6) = 0;
  return this;
}

std::string *std::string::append(std::string *this, const std::string *a2, unint64_t a3, size_t a4)
{
  v4 = *a2;
  v5 = *(*a2 - 24);
  v6 = v5 >= a3;
  v7 = v5 - a3;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::append");
  }

  if (v7 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v12 = *this;
    v13 = *(*this - 24);
    v14 = v13 + v9;
    if (v13 + v9 > *(*this - 16) || *(v12 - 8) >= 1)
    {
      std::string::reserve(this, v13 + v9);
      v12 = *this;
      v13 = *(*this - 24);
      v4 = *a2;
    }

    if (v9 == 1)
    {
      *(v12 + v13) = *(v4 + a3);
    }

    else
    {
      memcpy((v12 + v13), (v4 + a3), v9);
    }

    v15 = *this;
    *(v15 - 8) = 0;
    *(v15 - 24) = v14;
    *(v15 + v14) = 0;
  }

  return this;
}

std::string *std::string::append(std::string *this, const char *__src, size_t __n)
{
  if (__n)
  {
    v5 = *this;
    v6 = *(*this - 24);
    if (0x3FFFFFFFFFFFFFF9 - v6 < __n)
    {
      std::__throw_length_error("basic_string::append");
    }

    v7 = __src;
    v8 = v6 + __n;
    if (v6 + __n > *(v5 - 16) || *(v5 - 8) >= 1)
    {
      v9 = v5 + v6;
      if (v5 <= __src && v9 >= __src)
      {
        v11 = &__src[-v5];
        std::string::reserve(this, v8);
        v5 = *this;
        v7 = &v11[*this];
      }

      else
      {
        std::string::reserve(this, v8);
        v5 = *this;
      }
    }

    v12 = *(v5 - 24);
    if (__n == 1)
    {
      *(v5 + v12) = *v7;
    }

    else
    {
      memcpy((v5 + v12), v7, __n);
    }

    v13 = *this;
    *(v13 - 8) = 0;
    *(v13 - 24) = v8;
    *(v13 + v8) = 0;
  }

  return this;
}

int **std::string::assign(int **this, const std::string *a2, unint64_t a3, size_t a4)
{
  v5 = *(*a2 - 24);
  v6 = v5 >= a3;
  v7 = v5 - a3;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::assign");
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  v8 = (*a2 + a3);

  return std::string::assign(this, v8, v7);
}

int **std::string::assign(int **this, const char *__src, size_t a3)
{
  if (a3 >= 0x3FFFFFFFFFFFFFFALL)
  {
    std::__throw_length_error("basic_string::assign");
  }

  v6 = *this;
  v7 = *(v6 - 3);
  v8 = v6 <= __src && v6 + v7 >= __src;
  if (v8 && *(v6 - 2) < 1)
  {
    if (__src - v6 >= a3)
    {
      if (a3 != 1)
      {
        memcpy(v6, __src, a3);
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 == __src)
      {
LABEL_19:
        v10 = *this;
        *(v10 - 2) = 0;
        *(v10 - 3) = a3;
        *(v10 + a3) = 0;
        return this;
      }

      if (a3 != 1)
      {
        memmove(v6, __src, a3);
        goto LABEL_19;
      }
    }

    *v6 = *__src;
    goto LABEL_19;
  }

  std::string::_M_mutate(this, 0, v7, a3);
  if (a3)
  {
    v9 = *this;
    if (a3 == 1)
    {
      *v9 = *__src;
    }

    else
    {
      memcpy(v9, __src, a3);
    }
  }

  return this;
}

int **std::string::_M_replace_safe(int **this, size_t a2, uint64_t a3, const char *a4, size_t a5)
{
  std::string::_M_mutate(this, a2, a3, a5);
  if (a5)
  {
    v9 = *this;
    if (a5 == 1)
    {
      *(v9 + a2) = *a4;
    }

    else
    {
      memcpy(v9 + a2, a4, a5);
    }
  }

  return this;
}

int **std::string::_M_replace_aux(int **this, size_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a3 - *(*this - 3) + 0x3FFFFFFFFFFFFFF9 < a4)
  {
    std::__throw_length_error("basic_string::_M_replace_aux");
  }

  std::string::_M_mutate(this, a2, a3, a4);
  if (a4)
  {
    v9 = *this;
    if (a4 == 1)
    {
      *(v9 + a2) = a5;
    }

    else
    {
      memset(v9 + a2, a5, a4);
    }
  }

  return this;
}

int **std::string::insert(int **this, size_t a2, const std::string *a3, unint64_t a4, unint64_t a5)
{
  v6 = *(*a3 - 24);
  v7 = v6 >= a4;
  v8 = v6 - a4;
  if (!v7)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  if (v8 >= a5)
  {
    v8 = a5;
  }

  v9 = (*a3 + a4);

  return std::string::insert(this, a2, v9, v8);
}

int **std::string::insert(int **this, size_t a2, const char *a3, unint64_t a4)
{
  v4 = *this;
  v5 = *(*this - 3);
  if (v5 < a2)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  if (0x3FFFFFFFFFFFFFF9 - v5 < a4)
  {
    std::__throw_length_error("basic_string::insert");
  }

  v10 = v4 + v5;
  v11 = v4 <= a3 && v10 >= a3;
  if (v11 && *(v4 - 2) < 1)
  {
    v17 = (a3 - v4);
    std::string::_M_mutate(this, a2, 0, a4);
    v14 = &v17[*this];
    v18 = *this + a2;
    if (&v14[a4] <= v18)
    {
      if (a4 == 1)
      {
        v21 = *v14;
LABEL_24:
        *v18 = v21;
        return this;
      }

      v13 = *this + a2;
    }

    else
    {
      v19 = a2 <= v17;
      v20 = a2 - v17;
      if (!v19)
      {
        if (v20 == 1)
        {
          *v18 = *v14;
        }

        else
        {
          memcpy(v18, v14, v20);
        }

        v15 = a4 - v20;
        if (a4 - v20 == 1)
        {
          v18[v20] = v18[a4];
          return this;
        }

        v13 = &v18[v20];
        v14 = &v18[a4];
        goto LABEL_14;
      }

      if (a4 == 1)
      {
        v21 = v14[1];
        goto LABEL_24;
      }

      v13 = v18;
      v14 += a4;
    }

LABEL_13:
    v15 = a4;
LABEL_14:
    memcpy(v13, v14, v15);
    return this;
  }

  std::string::_M_mutate(this, a2, 0, a4);
  if (a4)
  {
    v12 = *this;
    if (a4 == 1)
    {
      *(v12 + a2) = *a3;
      return this;
    }

    v13 = v12 + a2;
    v14 = a3;
    goto LABEL_13;
  }

  return this;
}

int **std::string::insert(int **this, size_t a2, const char *__s)
{
  v6 = strlen(__s);

  return std::string::insert(this, a2, __s, v6);
}

int **std::string::insert(int **this, size_t a2, unint64_t a3, int a4)
{
  if (*(*this - 3) < a2)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  return std::string::_M_replace_aux(this, a2, 0, a3, a4);
}

uint64_t std::string::insert(int **a1, uint64_t a2, int a3)
{
  v4 = a2 - *a1;
  std::string::_M_replace_aux(a1, v4, 0, 1uLL, a3);
  v5 = *a1;
  *(v5 - 2) = -1;
  return v5 + v4;
}

char *std::string::erase(int **a1, uint64_t a2)
{
  v3 = a2 - *a1;
  std::string::_M_mutate(a1, v3, 1, 0);
  v4 = *a1;
  *(v4 - 2) = -1;
  return v4 + v3;
}

char *std::string::erase(int **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - *a1;
  std::string::_M_mutate(a1, v4, a3 - a2, 0);
  v5 = *a1;
  *(v5 - 2) = -1;
  return v5 + v4;
}

int **std::string::replace(int **this, size_t a2, unint64_t a3, char *a4, unint64_t a5)
{
  v5 = *this;
  v6 = *(*this - 3);
  if (v6 < a2)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  if (v6 - a2 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6 - a2;
  }

  if (v8 - v6 + 0x3FFFFFFFFFFFFFF9 < a5)
  {
    std::__throw_length_error("basic_string::replace");
  }

  v12 = v5 + v6;
  v13 = v5 <= a4 && v12 >= a4;
  if (v13 && *(v5 - 2) < 1)
  {
    v18 = &a4[a5];
    v19 = v5 + a2;
    if (&a4[a5] <= v5 + a2 || &v19[v8] <= a4)
    {
      v22 = (a4 - v5);
      if (v18 <= v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = a5 - v8;
      }

      std::string::_M_mutate(this, a2, v8, a5);
      v14 = *this;
      v24 = &v22[*this];
      if (a5 == 1)
      {
        v15 = v24[v23];
        goto LABEL_15;
      }

      v16 = v14 + a2;
      v17 = &v24[v23];
LABEL_17:
      memcpy(v16, v17, a5);
      return this;
    }

    v20 = std::string::_S_construct<char const*>(a4, v18);
    std::string::_M_mutate(this, a2, v8, a5);
    if (a5)
    {
      v21 = *this;
      if (a5 == 1)
      {
        *(v21 + a2) = *v20;
      }

      else
      {
        memcpy(v21 + a2, v20, a5);
      }
    }

    if (v20 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v20 - 2, 0xFFFFFFFF) <= 0)
    {
      operator delete(v20 - 24);
    }
  }

  else
  {
    std::string::_M_mutate(this, a2, v8, a5);
    if (a5)
    {
      v14 = *this;
      if (a5 == 1)
      {
        v15 = *a4;
LABEL_15:
        *(v14 + a2) = v15;
        return this;
      }

      v16 = v14 + a2;
      v17 = a4;
      goto LABEL_17;
    }
  }

  return this;
}

void sub_38204(_Unwind_Exception *exception_object)
{
  if ((v1 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete((v1 - 24));
  }

  _Unwind_Resume(exception_object);
}

int **std::string::replace(int **this, size_t a2, unint64_t a3, const std::string *a4, unint64_t a5, unint64_t a6)
{
  v7 = *(*a4 - 24);
  v8 = v7 >= a5;
  v9 = v7 - a5;
  if (!v8)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  if (v9 >= a6)
  {
    v9 = a6;
  }

  v10 = (*a4 + a5);

  return std::string::replace(this, a2, a3, v10, v9);
}

int **std::string::replace(int **this, size_t a2, unint64_t a3, char *__s)
{
  v8 = strlen(__s);

  return std::string::replace(this, a2, a3, __s, v8);
}

int **std::string::replace(int **this, size_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = *(*this - 3);
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (!v7)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  if (v8 < a3)
  {
    a3 = v8;
  }

  return std::string::_M_replace_aux(this, a2, a3, a4, a5);
}

int **std::string::replace(int **a1, uint64_t a2, uint64_t a3, char *__s)
{
  v8 = strlen(__s);
  v9 = a2 - *a1;

  return std::string::replace(a1, v9, a3 - a2, __s, v8);
}

int **std::string::replace(int **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  return std::string::replace(a1, a2 - *a1, a3 - a2, a4, a5 - a4);
}

{
  return std::string::replace(a1, a2 - *a1, a3 - a2, a4, a5 - a4);
}

{
  return std::string::replace(a1, a2 - *a1, a3 - a2, a4, a5 - a4);
}

{
  return std::string::replace(a1, a2 - *a1, a3 - a2, a4, a5 - a4);
}

size_t std::string::copy(std::string *this, char *__dst, size_t a3, unint64_t a4)
{
  v4 = *this;
  v5 = *(*this - 24);
  v6 = v5 >= a4;
  v7 = v5 - a4;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::copy");
  }

  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      *__dst = *(v4 + a4);
    }

    else
    {
      memcpy(__dst, (v4 + a4), v8);
    }
  }

  return v8;
}

uint64_t *std::string::swap(uint64_t *this, std::string *a2)
{
  v2 = *this;
  if ((*(*this - 8) & 0x80000000) != 0)
  {
    *(v2 - 8) = 0;
  }

  v3 = *a2;
  if ((*(*a2 - 8) & 0x80000000) != 0)
  {
    *(v3 - 8) = 0;
  }

  *this = v3;
  *a2 = v2;
  return this;
}

void *std::string::string<__gnu_cxx::__normal_iterator<char *,std::string>>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = std::string::_S_construct<__gnu_cxx::__normal_iterator<char *,std::string>>(a2, a3);
  return a1;
}

{
  *a1 = std::string::_S_construct<__gnu_cxx::__normal_iterator<char *,std::string>>(a2, a3);
  return a1;
}

unint64_t std::string::find(std::string *this, const char *__s2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = *this;
  v6 = *(*this - 24);
  if (a4)
  {
    v7 = v6 - a4;
    if (v6 < a4 || v7 < a3)
    {
      return -1;
    }

    else
    {
      v8 = __s2 + 1;
      v9 = *__s2;
      v10 = a4 - 1;
      while (*(v5 + v4) != v9 || memcmp((v5 + v4 + 1), v8, v10))
      {
        if (++v4 > v7)
        {
          return -1;
        }
      }
    }
  }

  else if (v6 < a3)
  {
    return -1;
  }

  return v4;
}

unint64_t std::string::find(std::string *this, const char *__s, unint64_t a3)
{
  v6 = strlen(__s);

  return std::string::find(this, __s, a3, v6);
}

uint64_t std::string::find(std::string *this, int a2, unint64_t a3)
{
  v3 = *this;
  v4 = *(*this - 24);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (!v5)
  {
    return -1;
  }

  v7 = memchr((v3 + a3), a2, v6);
  if (v7)
  {
    return v7 - v3;
  }

  else
  {
    return -1;
  }
}

size_t std::string::rfind(std::string *this, const char *__s2, size_t a3, size_t __n)
{
  v4 = *this;
  v5 = *(*this - 24);
  v6 = v5 >= __n;
  v7 = v5 - __n;
  if (!v6)
  {
    return -1;
  }

  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  do
  {
    if (!memcmp((v4 + v8), __s2, __n))
    {
      break;
    }

    --v8;
  }

  while (v8 != -1);
  return v8;
}

size_t std::string::rfind(std::string *this, const char *__s, size_t a3)
{
  v6 = strlen(__s);

  return std::string::rfind(this, __s, a3, v6);
}

unint64_t std::string::rfind(std::string *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(*this - 24);
  if (v3)
  {
    v4 = v3 - 1;
    if (a3 < v4)
    {
      v4 = a3;
    }

    while (v4 != -1)
    {
      v5 = *(*this + v4--);
      if (v5 == a2)
      {
        return v4 + 1;
      }
    }
  }

  return -1;
}

unint64_t std::string::find_first_of(std::string *this, char *__s, unint64_t a3, size_t __n)
{
  if (!__n)
  {
    return -1;
  }

  v4 = a3;
  v5 = *this;
  v6 = *(*this - 24);
  v7 = v6 <= a3 ? a3 : *(*this - 24);
  if (v6 <= a3)
  {
    return -1;
  }

  while (!memchr(__s, *(v5 + v4), __n))
  {
    if (v7 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

unint64_t std::string::find_first_of(std::string *this, char *__s, unint64_t a3)
{
  v6 = strlen(__s);

  return std::string::find_first_of(this, __s, a3, v6);
}

uint64_t std::string::find_first_of(std::string *this, int a2, unint64_t a3)
{
  v3 = *this;
  v4 = *(*this - 24);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (!v5)
  {
    return -1;
  }

  v7 = memchr((v3 + a3), a2, v6);
  if (v7)
  {
    return v7 - v3;
  }

  else
  {
    return -1;
  }
}

uint64_t std::string::find_last_of(std::string *this, char *__s, unint64_t a3, size_t __n)
{
  v4 = -1;
  if (__n)
  {
    v5 = *this;
    v6 = *(*this - 24);
    if (v6)
    {
      v9 = v6 - 1;
      if (v9 >= a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = v9;
      }

      do
      {
        if (memchr(__s, *(v5 + v4), __n))
        {
          break;
        }

        --v4;
      }

      while (v4 != -1);
    }
  }

  return v4;
}

uint64_t std::string::find_last_of(std::string *this, char *__s, unint64_t a3)
{
  v6 = strlen(__s);

  return std::string::find_last_of(this, __s, a3, v6);
}

unint64_t std::string::find_last_of(std::string *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(*this - 24);
  if (v3)
  {
    v4 = v3 - 1;
    if (a3 < v4)
    {
      v4 = a3;
    }

    while (v4 != -1)
    {
      v5 = *(*this + v4--);
      if (v5 == a2)
      {
        return v4 + 1;
      }
    }
  }

  return -1;
}

unint64_t std::string::find_first_not_of(std::string *this, void **a2, unint64_t a3)
{
  v3 = *this;
  v4 = *(*this - 24);
  if (v4 <= a3)
  {
    return -1;
  }

  v5 = a3;
  v6 = *a2;
  v7 = *(*a2 - 3);
  while (memchr(v6, *(v3 + v5), v7))
  {
    if (v4 == ++v5)
    {
      return -1;
    }
  }

  return v5;
}

unint64_t std::string::find_first_not_of(std::string *this, char *__s, unint64_t a3, size_t __n)
{
  v4 = *this;
  v5 = *(*this - 24);
  if (v5 <= a3)
  {
    return -1;
  }

  v7 = a3;
  while (memchr(__s, *(v4 + v7), __n))
  {
    if (v5 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

unint64_t std::string::find_first_not_of(std::string *this, char *__s, unint64_t a3)
{
  v6 = strlen(__s);
  v7 = *this;
  v8 = *(v7 - 24);
  if (v8 <= a3)
  {
    return -1;
  }

  v9 = v6;
  while (memchr(__s, *(v7 + a3), v9))
  {
    if (v8 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

unint64_t std::string::find_first_not_of(std::string *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(*this - 24);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

unint64_t std::string::find_last_not_of(std::string *this, char *__s, unint64_t a3, size_t __n)
{
  v4 = *this;
  v5 = *(*this - 24);
  if (!v5)
  {
    return -1;
  }

  v8 = v5 - 1;
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  do
  {
    if (!memchr(__s, *(v4 + v9), __n))
    {
      break;
    }

    --v9;
  }

  while (v9 != -1);
  return v9;
}

unint64_t std::string::find_last_not_of(std::string *this, char *__s, unint64_t a3)
{
  v6 = strlen(__s);

  return std::string::find_last_not_of(this, __s, a3, v6);
}

unint64_t std::string::find_last_not_of(std::string *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *this;
  v4 = *(*this - 24);
  if (!v4)
  {
    return -1;
  }

  v5 = v4 - 1;
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  do
  {
    if (*(v3 + result) != a2)
    {
      break;
    }

    --result;
  }

  while (result != -1);
  return result;
}

std::string *std::string::substr@<X0>(std::string *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(*this - 24) < a2)
  {
    std::__throw_out_of_range("basic_string::substr");
  }

  return std::string::string(a4, this, a2, a3);
}

uint64_t std::string::compare(const void **this, const void **a2)
{
  v2 = *this;
  v3 = *(v2 - 3);
  v4 = *a2;
  v5 = *(v4 - 3);
  if (v3 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= v3)
  {
    v7 = *(v2 - 3);
  }

  else
  {
    v7 = *(v4 - 3);
  }

  if (v5 < v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  LODWORD(result) = memcmp(v2, v4, v7);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t std::string::compare(std::string *this, unint64_t a2, size_t a3, const void **a4)
{
  v4 = *(*this - 24);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*a4 - 3);
  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(*a4 - 3);
  }

  if (v8 < v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  LODWORD(result) = memcmp((*this + a2), *a4, v10);
  if (result)
  {
    return result;
  }

  else
  {
    return v11;
  }
}

uint64_t std::string::compare(std::string *this, unint64_t a2, size_t a3, const std::string *a4, unint64_t a5, size_t a6)
{
  v6 = *(*this - 24);
  v7 = v6 - a2;
  if (v6 < a2 || (v8 = *(*a4 - 24), v9 = v8 >= a5, v10 = v8 - a5, !v9))
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v7 >= a3)
  {
    v7 = a3;
  }

  if (v10 >= a6)
  {
    v10 = a6;
  }

  if (v7 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v10 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v10 < v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  LODWORD(result) = memcmp((*this + a2), (*a4 + a5), v12);
  if (result)
  {
    return result;
  }

  else
  {
    return v13;
  }
}

uint64_t std::string::compare(const void **this, const char *__s)
{
  v3 = *this;
  v4 = *(*this - 3);
  v5 = strlen(__s);
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v5 < v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  LODWORD(result) = memcmp(v3, __s, v7);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t std::string::compare(std::string *this, unint64_t a2, size_t a3, const char *__s)
{
  v4 = *this;
  v5 = *(*this - 24);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v7 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v7;
  }

  v11 = strlen(__s);
  if (v10 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v11 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v11 < v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  LODWORD(result) = memcmp((v4 + a2), __s, v13);
  if (result)
  {
    return result;
  }

  else
  {
    return v14;
  }
}

uint64_t std::string::compare(std::string *this, unint64_t a2, size_t a3, const char *__s2, size_t a5)
{
  v5 = *(*this - 24);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v7 >= a3)
  {
    v7 = a3;
  }

  v8 = v7 > a5;
  if (v7 >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  LODWORD(result) = memcmp((*this + a2), __s2, v9);
  if (result)
  {
    return result;
  }

  else
  {
    return v11;
  }
}

std::string *std::operator+<char>@<X0>(const char *a1@<X0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  *a3 = &unk_60620;
  std::string::reserve(a3, *(*a2 - 24) + v6);
  std::string::append(a3, a1, v6);
  return std::string::append(a3, a2);
}

void sub_38F94(_Unwind_Exception *exception_object)
{
  v4 = (*v1 - 24);
  if (v4 != v2 && atomic_fetch_add((*v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::operator+<char>@<X0>(int a1@<W0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  *a3 = &unk_60620;
  std::string::reserve(a3, *(*a2 - 24) + 1);
  std::string::append(a3, 1uLL, a1);
  return std::string::append(a3, a2);
}

void sub_3903C(_Unwind_Exception *exception_object)
{
  v4 = (*v1 - 24);
  if (v4 != v2 && atomic_fetch_add((*v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_390B0(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = *v2;
  if ((v4 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v4 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete((v4 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::string::string<char *>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = std::string::_S_construct<char *>(a2, a3);
  return a1;
}

{
  *a1 = std::string::_S_construct<char *>(a2, a3);
  return a1;
}

void *std::string::string<char const*>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = std::string::_S_construct<char const*>(a2, a3);
  return a1;
}

{
  *a1 = std::string::_S_construct<char const*>(a2, a3);
  return a1;
}

_BYTE *std::string::_S_construct<__gnu_cxx::__normal_iterator<char *,std::string>>(_BYTE *a1, _BYTE *a2)
{
  v2 = a2 - a1;
  if (a2 == a1)
  {
    return &unk_60620;
  }

  v5 = std::string::_Rep::_S_create(a2 - a1, 0);
  v6 = v5;
  v3 = v5 + 3;
  if (v2 == 1)
  {
    *v3 = *a1;
  }

  else
  {
    memcpy(v5 + 3, a1, v2);
  }

  *(v6 + 4) = 0;
  *v6 = v2;
  v3[v2] = 0;
  return v3;
}

_BYTE *std::string::_S_construct<char *>(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return &unk_60620;
  }

  if (!a1)
  {
    std::string::_S_construct<char *>();
  }

  v3 = a2 - a1;
  v4 = std::string::_Rep::_S_create(a2 - a1, 0);
  v5 = v4;
  v6 = v4 + 3;
  if (v3 == 1)
  {
    *v6 = *a1;
  }

  else
  {
    memcpy(v4 + 3, a1, v3);
  }

  *(v5 + 4) = 0;
  *v5 = v3;
  v6[v3] = 0;
  return v6;
}

_BYTE *std::string::_S_construct<char const*>(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return &unk_60620;
  }

  if (!a1)
  {
    std::string::_S_construct<char *>();
  }

  v3 = a2 - a1;
  v4 = std::string::_Rep::_S_create(a2 - a1, 0);
  v5 = v4;
  v6 = v4 + 3;
  if (v3 == 1)
  {
    *v6 = *a1;
  }

  else
  {
    memcpy(v4 + 3, a1, v3);
  }

  *(v5 + 4) = 0;
  *v5 = v3;
  v6[v3] = 0;
  return v6;
}

uint64_t std::search<char const*,char const*,BOOL (*)(char const&,char const&)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1;
  if (a1 != a2 && a3 != a4)
  {
    if (a3 + 1 != a4)
    {
      while (1)
      {
        if (a5(v5, a3))
        {
          v10 = v5;
LABEL_7:
          if (v10 == a2)
          {
            return a2;
          }

          while (1)
          {
            v5 = v10 + 1;
            if (a5(v10, a3))
            {
              break;
            }

            ++v10;
            if (v5 == a2)
            {
              return a2;
            }
          }

          if (v5 == a2)
          {
            return a2;
          }

          v11 = a3 + 2;
          v12 = v10 + 1;
          while (a5(v12, v11 - 1))
          {
            if (v11 == a4)
            {
              return v10;
            }

            ++v12;
            ++v11;
            if (v12 == a2)
            {
              return a2;
            }
          }
        }

        else
        {
          v10 = ++v5;
          if (v5 == a2)
          {
            goto LABEL_7;
          }
        }
      }
    }

    do
    {
      if (a5(v5, a3))
      {
        break;
      }

      ++v5;
    }

    while (v5 != a2);
  }

  return v5;
}

void *std::valarray<unsigned long>::valarray(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = 8 * a2;
  v4 = operator new(8 * a2);
  a1[1] = v4;
  bzero(v4, v3);
  return a1;
}

{
  *a1 = a2;
  v3 = 8 * a2;
  v4 = operator new(8 * a2);
  a1[1] = v4;
  bzero(v4, v3);
  return a1;
}

uint64_t *std::valarray<unsigned long>::valarray(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = operator new(8 * v4);
  a1[1] = v5;
  memcpy(v5, a2[1], 8 * *a1);
  return a1;
}

{
  v4 = *a2;
  *a1 = *a2;
  v5 = operator new(8 * v4);
  a1[1] = v5;
  memcpy(v5, a2[1], 8 * *a1);
  return a1;
}

uint64_t std::valarray<unsigned long>::~valarray(uint64_t a1)
{
  operator delete(*(a1 + 8));
  return a1;
}

{
  operator delete(*(a1 + 8));
  return a1;
}

void std::__gslice_to_index(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  off_5C2F8();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  if (*v11)
  {
    bzero(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v13 = 0;
    v14 = *(a3 + 8);
    v15 = *(a4 + 8);
    v16 = v8 - 1;
    v17 = a2[1];
    while (1)
    {
      v18 = v14;
      v19 = v10;
      v20 = v8;
      v21 = a1;
      if (!v8)
      {
        break;
      }

      do
      {
        v23 = *v18++;
        v22 = v23;
        v24 = *v19++;
        v21 += v24 * v22;
        --v20;
      }

      while (v20);
      *(v15 + 8 * v13) = v21;
      ++*&v10[8 * v16];
      v25 = &v10[8 * v8 - 8];
      v26 = v8 - 1;
      if (v8 != 1)
      {
        goto LABEL_8;
      }

LABEL_11:
      if (++v13 == v12)
      {
        return;
      }
    }

    *(v15 + 8 * v13) = a1;
    ++*&v10[8 * v16];
    v25 = v10 - 8;
    v26 = v8 - 1;
    do
    {
LABEL_8:
      if (*v25 >= *(v17 + 8 * v26))
      {
        ++*(v25 - 1);
        *v25 = 0;
      }

      v25 -= 8;
      --v26;
    }

    while (v26);
    goto LABEL_11;
  }
}

void *std::gslice::_Indexer::_Indexer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 1;
  a1[1] = a2;
  v8 = *a3;
  a1[2] = *a3;
  v9 = operator new(8 * v8);
  a1[3] = v9;
  memcpy(v9, *(a3 + 8), 8 * a1[2]);
  v10 = *a4;
  a1[4] = *a4;
  v11 = operator new(8 * v10);
  a1[5] = v11;
  memcpy(v11, *(a4 + 8), 8 * a1[4]);
  v12 = *a3;
  if (*a3)
  {
    v13 = *(a3 + 8);
    v14 = 8 * v12;
    v12 = 1;
    do
    {
      v15 = *v13++;
      v12 *= v15;
      v14 -= 8;
    }

    while (v14);
  }

  a1[6] = v12;
  v16 = 8 * v12;
  v17 = operator new(8 * v12);
  a1[7] = v17;
  bzero(v17, v16);
  std::__gslice_to_index(a2, a3, a4, (a1 + 6));
  return a1;
}

void sub_398E0(_Unwind_Exception *a1)
{
  operator delete(*(v1 + 40));
  operator delete(*(v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t std::moneypunct<wchar_t,false>::moneypunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5EFA8;
  *(a1 + 16) = 0;
  std::moneypunct<wchar_t,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<wchar_t,false>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5EFA8;
  *(a1 + 16) = a2;
  std::moneypunct<wchar_t,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<wchar_t,false>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5EFA8;
  *(a1 + 16) = 0;
  std::moneypunct<wchar_t,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<wchar_t,true>::moneypunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F010;
  *(a1 + 16) = 0;
  std::moneypunct<wchar_t,true>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<wchar_t,true>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5F010;
  *(a1 + 16) = a2;
  std::moneypunct<wchar_t,true>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<wchar_t,true>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5F010;
  *(a1 + 16) = 0;
  std::moneypunct<wchar_t,true>::_M_initialize_moneypunct(a1);
  return a1;
}

double std::__moneypunct_cache<wchar_t,false>::__moneypunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F078;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 152) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F078;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 152) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

void std::__moneypunct_cache<wchar_t,false>::~__moneypunct_cache(std::locale::facet *this)
{
  *this = off_5F078;
  if (*(this + 152) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 8);
    if (v4)
    {
      operator delete[](v4);
    }

    v5 = *(this + 10);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__moneypunct_cache<wchar_t,false>::~__moneypunct_cache(std::locale::facet *a1)
{
  std::__moneypunct_cache<wchar_t,false>::~__moneypunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__moneypunct_cache<wchar_t,false>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 152) = 1;
  v4 = std::locale::id::_M_id(&std::moneypunct<wchar_t,false>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v31, v5);
  v6 = v31;
  v7 = v31 - 6;
  *(a1 + 24) = *(v31 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v31, v5);
  std::string::copy(&v31, v8, *(a1 + 24), 0);
  v9 = v31 - 6;
  if (v31 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v31, v5);
    v10 = v31;
    if ((*(v31 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v31);
      v10 = v31;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 36) = (*(*v5 + 16))(v5);
  *(a1 + 40) = (*(*v5 + 24))(v5);
  *(a1 + 96) = (*(*v5 + 64))(v5);
  (*(*v5 + 40))(&v31, v5);
  v11 = v31;
  v12 = v31 - 6;
  *(a1 + 56) = *(v31 - 3);
  if (v12 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v12);
  }

  v13 = *(a1 + 56);
  if (v13 >> 62)
  {
    v14 = -1;
  }

  else
  {
    v14 = 4 * v13;
  }

  v15 = operator new[](v14);
  (*(*v5 + 40))(&v31, v5);
  std::wstring::copy(&v31, v15, *(a1 + 56), 0);
  v16 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v16);
  }

  *(a1 + 48) = v15;
  (*(*v5 + 48))(&v31, v5);
  v17 = v31;
  v18 = v31 - 6;
  *(a1 + 72) = *(v31 - 3);
  if (v18 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v17 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v18);
  }

  v19 = *(a1 + 72);
  if (v19 >> 62)
  {
    v20 = -1;
  }

  else
  {
    v20 = 4 * v19;
  }

  v21 = operator new[](v20);
  (*(*v5 + 48))(&v31, v5);
  std::wstring::copy(&v31, v21, *(a1 + 72), 0);
  v22 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v22);
  }

  *(a1 + 64) = v21;
  (*(*v5 + 56))(&v31, v5);
  v23 = v31;
  v24 = v31 - 6;
  *(a1 + 88) = *(v31 - 3);
  if (v24 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v23 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v24);
  }

  v25 = *(a1 + 88);
  if (v25 >> 62)
  {
    v26 = -1;
  }

  else
  {
    v26 = 4 * v25;
  }

  v27 = operator new[](v26);
  (*(*v5 + 56))(&v31, v5);
  std::wstring::copy(&v31, v27, *(a1 + 88), 0);
  v28 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v28);
  }

  *(a1 + 80) = v27;
  *(a1 + 100) = (*(*v5 + 72))(v5);
  *(a1 + 104) = (*(*v5 + 80))(v5);
  v29 = std::use_facet<std::ctype<wchar_t>>(a2);
  return (*(*v29 + 88))(v29, std::money_base::_S_atoms[0], std::money_base::_S_atoms[0] + 11, a1 + 108);
}

void sub_3A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::moneypunct<wchar_t,false>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::moneypunct<wchar_t,false>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

double std::__moneypunct_cache<wchar_t,true>::__moneypunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F098;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 152) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F098;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 152) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

void std::__moneypunct_cache<wchar_t,true>::~__moneypunct_cache(std::locale::facet *this)
{
  *this = off_5F098;
  if (*(this + 152) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 8);
    if (v4)
    {
      operator delete[](v4);
    }

    v5 = *(this + 10);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__moneypunct_cache<wchar_t,true>::~__moneypunct_cache(std::locale::facet *a1)
{
  std::__moneypunct_cache<wchar_t,true>::~__moneypunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__moneypunct_cache<wchar_t,true>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 152) = 1;
  v4 = std::locale::id::_M_id(&std::moneypunct<wchar_t,true>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v31, v5);
  v6 = v31;
  v7 = v31 - 6;
  *(a1 + 24) = *(v31 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v31, v5);
  std::string::copy(&v31, v8, *(a1 + 24), 0);
  v9 = v31 - 6;
  if (v31 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v31, v5);
    v10 = v31;
    if ((*(v31 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v31);
      v10 = v31;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 36) = (*(*v5 + 16))(v5);
  *(a1 + 40) = (*(*v5 + 24))(v5);
  *(a1 + 96) = (*(*v5 + 64))(v5);
  (*(*v5 + 40))(&v31, v5);
  v11 = v31;
  v12 = v31 - 6;
  *(a1 + 56) = *(v31 - 3);
  if (v12 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v12);
  }

  v13 = *(a1 + 56);
  if (v13 >> 62)
  {
    v14 = -1;
  }

  else
  {
    v14 = 4 * v13;
  }

  v15 = operator new[](v14);
  (*(*v5 + 40))(&v31, v5);
  std::wstring::copy(&v31, v15, *(a1 + 56), 0);
  v16 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v16);
  }

  *(a1 + 48) = v15;
  (*(*v5 + 48))(&v31, v5);
  v17 = v31;
  v18 = v31 - 6;
  *(a1 + 72) = *(v31 - 3);
  if (v18 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v17 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v18);
  }

  v19 = *(a1 + 72);
  if (v19 >> 62)
  {
    v20 = -1;
  }

  else
  {
    v20 = 4 * v19;
  }

  v21 = operator new[](v20);
  (*(*v5 + 48))(&v31, v5);
  std::wstring::copy(&v31, v21, *(a1 + 72), 0);
  v22 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v22);
  }

  *(a1 + 64) = v21;
  (*(*v5 + 56))(&v31, v5);
  v23 = v31;
  v24 = v31 - 6;
  *(a1 + 88) = *(v31 - 3);
  if (v24 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v23 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v24);
  }

  v25 = *(a1 + 88);
  if (v25 >> 62)
  {
    v26 = -1;
  }

  else
  {
    v26 = 4 * v25;
  }

  v27 = operator new[](v26);
  (*(*v5 + 56))(&v31, v5);
  std::wstring::copy(&v31, v27, *(a1 + 88), 0);
  v28 = v31 - 6;
  if (v31 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v31 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v28);
  }

  *(a1 + 80) = v27;
  *(a1 + 100) = (*(*v5 + 72))(v5);
  *(a1 + 104) = (*(*v5 + 80))(v5);
  v29 = std::use_facet<std::ctype<wchar_t>>(a2);
  return (*(*v29 + 88))(v29, std::money_base::_S_atoms[0], std::money_base::_S_atoms[0] + 11, a1 + 108);
}

void sub_3AF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::moneypunct<wchar_t,true>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::moneypunct<wchar_t,true>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::moneypunct_byname<wchar_t,false>::moneypunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::moneypunct<wchar_t,false>::moneypunct(a1, a3) = off_5F0B8;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::moneypunct<wchar_t,false>::_M_initialize_moneypunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(std::locale::facet *a1)
{
  std::moneypunct<wchar_t,false>::~moneypunct(a1);

  operator delete(v1);
}

uint64_t std::moneypunct_byname<wchar_t,true>::moneypunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::moneypunct<wchar_t,true>::moneypunct(a1, a3) = off_5F120;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::moneypunct<wchar_t,true>::_M_initialize_moneypunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(std::locale::facet *a1)
{
  std::moneypunct<wchar_t,true>::~moneypunct(a1);

  operator delete(v1);
}

uint64_t std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::money_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F188;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F188;
  return result;
}

uint64_t std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

void std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~money_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

std::locale::facet *std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8, double *a9)
{
  v18 = &unk_60620;
  if (a6)
  {
    v10 = std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<true>(a1, a2, a3, a4, a5, a7, a8, &v18);
  }

  else
  {
    v10 = std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<false>(a1, a2, a3, a4, a5, a7, a8, &v18);
  }

  v14 = v10;
  v15 = v18;
  std::locale::facet::_S_get_c_locale(v10, v11, v12, v13);
  std::__convert_to_v<long double>(v15, a9, a8);
  v16 = (v18 - 24);
  if (v18 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v18 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  return v14;
}

void sub_3B408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<true>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v79 = a2;
  v80 = a3;
  v78[0] = a4;
  v78[1] = a5;
  v10 = std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v71 = a6;
  v11 = std::__use_cache<std::__moneypunct_cache<wchar_t,true>>::operator()(&v77, (a6 + 208));
  v12 = v11;
  if (*(v11 + 72))
  {
    v13 = *(v11 + 88) != 0;
  }

  else
  {
    v13 = 0;
  }

  v76 = &unk_60620;
  if (*(v11 + 32) == 1)
  {
    std::string::reserve(&v76, 0x20uLL);
  }

  v65 = a8;
  v75 = &unk_60620;
  std::string::reserve(&v75, 0x20uLL);
  v14 = 0;
  v72 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(v12 + 104);
  v73 = 0;
  v74 = v17;
  v69 = !v13;
  v70 = 0;
  v18 = HIBYTE(v17) == 3 && v13;
  v67 = HIBYTE(v17) == 4 || v18;
  v20 = v17 == 3;
  v19 = v17 & 0xFF0000;
  v20 = v20 || v19 == 0x10000;
  v21 = v20;
  v66 = v13 | v21;
  while (1)
  {
    v22 = *(&v74 + v14);
    v23 = 1;
    if (v22 <= 1)
    {
      break;
    }

    if (v22 == 2)
    {
      if (v14)
      {
        if ((*(v71 + 24) & 0x200) == 0 && v72 <= 1)
        {
          if (v14 == 2)
          {
            if (!v67)
            {
              goto LABEL_100;
            }
          }

          else if (v14 != 1 || (v66 & 1) == 0)
          {
            goto LABEL_100;
          }
        }
      }

      v41 = 0;
      v42 = *(v12 + 56);
      while (1)
      {
        v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        v44 = (v43 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || v41 >= v42;
        if (v44 || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != *(*(v12 + 48) + 4 * v41))
        {
          break;
        }

        if (v79)
        {
          v45 = v79[2];
          if (v45 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v45 + 4;
          }

          LODWORD(v80) = -1;
        }

        ++v41;
      }

      if (v42 == v41 || !v41 && (*(v71 + 25) & 2) == 0)
      {
        v23 = 1;
        goto LABEL_100;
      }

      goto LABEL_145;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_100;
      }

      while (1)
      {
        v24 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        if ((v24 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1))
        {
LABEL_65:
          v37 = 1;
          goto LABEL_66;
        }

        v25 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        v26 = wmemchr((v12 + 112), v25, 0xAuLL);
        if (v26)
        {
          std::string::push_back(&v75, std::money_base::_S_atoms[0][(v26 - v12 - 108) >> 2]);
          v27 = v15 + 1;
        }

        else if ((v25 != *(v12 + 36)) | v16 & 1)
        {
          if (*(v12 + 32) != 1 || (v25 != *(v12 + 40)) | v16 & 1)
          {
            goto LABEL_65;
          }

          if (!v15)
          {
            v16 = 0;
            v37 = 0;
LABEL_66:
            if (*(v75 - 3))
            {
              v23 = v37;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_100;
          }

          std::string::push_back(&v76, v15);
          v16 = 0;
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v16 = 1;
          v73 = v15;
        }

        v15 = v27;
        if (v79)
        {
          v28 = v79[2];
          if (v28 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v28 + 4;
          }

          LODWORD(v80) = -1;
          v15 = v27;
        }
      }
    }

    if (!*(v12 + 72) || (v33 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), (v33 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1)) || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != **(v12 + 64))
    {
      if (*(v12 + 88) && (v35 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), (v35 == -1) != (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1)) && std::istreambuf_iterator<wchar_t>::_M_get(&v79) == **(v12 + 80))
      {
        v72 = *(v12 + 88);
        if (v79)
        {
          v36 = v79[2];
          if (v36 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v36 + 4;
          }

          LODWORD(v80) = -1;
        }
      }

      else if (!*(v12 + 72) || *(v12 + 88))
      {
        v23 = v69;
        goto LABEL_100;
      }

      v70 = 1;
      goto LABEL_100;
    }

    v72 = *(v12 + 72);
    if (v79)
    {
      v34 = v79[2];
      if (v34 >= v79[3])
      {
        (*(*v79 + 80))(v79);
      }

      else
      {
        v79[2] = v34 + 4;
      }

      LODWORD(v80) = -1;
    }

LABEL_100:
    if (v14 <= 2)
    {
      ++v14;
      if (v23)
      {
        continue;
      }
    }

    goto LABEL_106;
  }

  if (*(&v74 + v14))
  {
    if (v22 != 1)
    {
      goto LABEL_100;
    }

    v29 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
    if ((v29 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || (v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), !(*(*v10 + 16))(v10, 0x4000, v30)))
    {
      v23 = 0;
    }

    else if (v79)
    {
      v31 = v79[2];
      if (v31 >= v79[3])
      {
        (*(*v79 + 80))(v79);
      }

      else
      {
        v79[2] = v31 + 4;
      }

      LODWORD(v80) = -1;
    }
  }

  if (v14 != 3)
  {
    while (1)
    {
      v38 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      if ((v38 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1))
      {
        break;
      }

      v39 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      if (!(*(*v10 + 16))(v10, 0x4000, v39))
      {
        break;
      }

      if (v79)
      {
        v40 = v79[2];
        if (v40 >= v79[3])
        {
          (*(*v79 + 80))(v79);
        }

        else
        {
          v79[2] = v40 + 4;
        }

        LODWORD(v80) = -1;
      }
    }

    goto LABEL_100;
  }

LABEL_106:
  if (v72 >= 2 && (v23 & 1) != 0)
  {
    v46 = 64;
    if (v70)
    {
      v46 = 80;
    }

    v47 = *(v12 + v46);
    for (i = 1; ; ++i)
    {
      v49 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      v50 = (v49 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || i >= v72;
      if (v50 || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != *(v47 + 4 * i))
      {
        break;
      }

      if (v79)
      {
        v51 = v79[2];
        if (v51 >= v79[3])
        {
          (*(*v79 + 80))(v79);
        }

        else
        {
          v79[2] = v51 + 4;
        }

        LODWORD(v80) = -1;
      }
    }

    if (v72 != i)
    {
      goto LABEL_145;
    }
  }

  else if (!v23)
  {
LABEL_145:
    *a7 |= 4u;
    goto LABEL_147;
  }

  if (*(v75 - 3) >= 2uLL)
  {
    first_not_of = std::string::find_first_not_of(&v75, 0x30u, 0);
    v53 = first_not_of;
    if (first_not_of)
    {
      if (first_not_of == -1)
      {
        v53 = *(v75 - 3) - 1;
      }

      std::string::erase(&v75, 0, v53);
    }
  }

  if (v70)
  {
    v54 = v75;
    if ((*(v75 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v75);
      v54 = v75;
    }

    if (*v54 != 48)
    {
      if ((*(v54 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v75);
      }

      std::string::_M_replace_aux(&v75, 0, 0, 1uLL, 45);
      *(v75 - 2) = -1;
    }
  }

  if (*(v76 - 3))
  {
    v55 = v73;
    if ((v16 & 1) == 0)
    {
      v55 = v15;
    }

    std::string::push_back(&v76, v55);
    if ((std::__verify_grouping(*(v12 + 16), *(v12 + 24), &v76) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v16)
  {
    v56 = *(v12 + 96);
    if (v56 >= 1 && v15 != v56)
    {
      goto LABEL_145;
    }
  }

  std::string::swap(v65, &v75);
LABEL_147:
  v57 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
  v58 = std::istreambuf_iterator<wchar_t>::_M_get(v78);
  v60 = v57 == -1 || v58 == -1;
  if ((v57 & v58) == 0xFFFFFFFF || !v60)
  {
    *a7 |= 2u;
  }

  v61 = v79;
  v62 = v75 - 6;
  if (v75 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v75 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v62);
  }

  v63 = v76 - 24;
  if (v76 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v76 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v63);
  }

  return v61;
}

void sub_3BD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18)
{
  if ((a17 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a17 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a17 - 24));
  }

  if ((a18 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a18 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a18 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<false>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v79 = a2;
  v80 = a3;
  v78[0] = a4;
  v78[1] = a5;
  v10 = std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v71 = a6;
  v11 = std::__use_cache<std::__moneypunct_cache<wchar_t,false>>::operator()(&v77, (a6 + 208));
  v12 = v11;
  if (*(v11 + 72))
  {
    v13 = *(v11 + 88) != 0;
  }

  else
  {
    v13 = 0;
  }

  v76 = &unk_60620;
  if (*(v11 + 32) == 1)
  {
    std::string::reserve(&v76, 0x20uLL);
  }

  v65 = a8;
  v75 = &unk_60620;
  std::string::reserve(&v75, 0x20uLL);
  v14 = 0;
  v72 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(v12 + 104);
  v73 = 0;
  v74 = v17;
  v69 = !v13;
  v70 = 0;
  v18 = HIBYTE(v17) == 3 && v13;
  v67 = HIBYTE(v17) == 4 || v18;
  v20 = v17 == 3;
  v19 = v17 & 0xFF0000;
  v20 = v20 || v19 == 0x10000;
  v21 = v20;
  v66 = v13 | v21;
  while (1)
  {
    v22 = *(&v74 + v14);
    v23 = 1;
    if (v22 <= 1)
    {
      break;
    }

    if (v22 == 2)
    {
      if (v14)
      {
        if ((*(v71 + 24) & 0x200) == 0 && v72 <= 1)
        {
          if (v14 == 2)
          {
            if (!v67)
            {
              goto LABEL_100;
            }
          }

          else if (v14 != 1 || (v66 & 1) == 0)
          {
            goto LABEL_100;
          }
        }
      }

      v41 = 0;
      v42 = *(v12 + 56);
      while (1)
      {
        v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        v44 = (v43 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || v41 >= v42;
        if (v44 || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != *(*(v12 + 48) + 4 * v41))
        {
          break;
        }

        if (v79)
        {
          v45 = v79[2];
          if (v45 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v45 + 4;
          }

          LODWORD(v80) = -1;
        }

        ++v41;
      }

      if (v42 == v41 || !v41 && (*(v71 + 25) & 2) == 0)
      {
        v23 = 1;
        goto LABEL_100;
      }

      goto LABEL_145;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_100;
      }

      while (1)
      {
        v24 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        if ((v24 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1))
        {
LABEL_65:
          v37 = 1;
          goto LABEL_66;
        }

        v25 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
        v26 = wmemchr((v12 + 112), v25, 0xAuLL);
        if (v26)
        {
          std::string::push_back(&v75, std::money_base::_S_atoms[0][(v26 - v12 - 108) >> 2]);
          v27 = v15 + 1;
        }

        else if ((v25 != *(v12 + 36)) | v16 & 1)
        {
          if (*(v12 + 32) != 1 || (v25 != *(v12 + 40)) | v16 & 1)
          {
            goto LABEL_65;
          }

          if (!v15)
          {
            v16 = 0;
            v37 = 0;
LABEL_66:
            if (*(v75 - 3))
            {
              v23 = v37;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_100;
          }

          std::string::push_back(&v76, v15);
          v16 = 0;
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v16 = 1;
          v73 = v15;
        }

        v15 = v27;
        if (v79)
        {
          v28 = v79[2];
          if (v28 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v28 + 4;
          }

          LODWORD(v80) = -1;
          v15 = v27;
        }
      }
    }

    if (!*(v12 + 72) || (v33 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), (v33 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1)) || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != **(v12 + 64))
    {
      if (*(v12 + 88) && (v35 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), (v35 == -1) != (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1)) && std::istreambuf_iterator<wchar_t>::_M_get(&v79) == **(v12 + 80))
      {
        v72 = *(v12 + 88);
        if (v79)
        {
          v36 = v79[2];
          if (v36 >= v79[3])
          {
            (*(*v79 + 80))(v79);
          }

          else
          {
            v79[2] = v36 + 4;
          }

          LODWORD(v80) = -1;
        }
      }

      else if (!*(v12 + 72) || *(v12 + 88))
      {
        v23 = v69;
        goto LABEL_100;
      }

      v70 = 1;
      goto LABEL_100;
    }

    v72 = *(v12 + 72);
    if (v79)
    {
      v34 = v79[2];
      if (v34 >= v79[3])
      {
        (*(*v79 + 80))(v79);
      }

      else
      {
        v79[2] = v34 + 4;
      }

      LODWORD(v80) = -1;
    }

LABEL_100:
    if (v14 <= 2)
    {
      ++v14;
      if (v23)
      {
        continue;
      }
    }

    goto LABEL_106;
  }

  if (*(&v74 + v14))
  {
    if (v22 != 1)
    {
      goto LABEL_100;
    }

    v29 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
    if ((v29 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || (v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v79), !(*(*v10 + 16))(v10, 0x4000, v30)))
    {
      v23 = 0;
    }

    else if (v79)
    {
      v31 = v79[2];
      if (v31 >= v79[3])
      {
        (*(*v79 + 80))(v79);
      }

      else
      {
        v79[2] = v31 + 4;
      }

      LODWORD(v80) = -1;
    }
  }

  if (v14 != 3)
  {
    while (1)
    {
      v38 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      if ((v38 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1))
      {
        break;
      }

      v39 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      if (!(*(*v10 + 16))(v10, 0x4000, v39))
      {
        break;
      }

      if (v79)
      {
        v40 = v79[2];
        if (v40 >= v79[3])
        {
          (*(*v79 + 80))(v79);
        }

        else
        {
          v79[2] = v40 + 4;
        }

        LODWORD(v80) = -1;
      }
    }

    goto LABEL_100;
  }

LABEL_106:
  if (v72 >= 2 && (v23 & 1) != 0)
  {
    v46 = 64;
    if (v70)
    {
      v46 = 80;
    }

    v47 = *(v12 + v46);
    for (i = 1; ; ++i)
    {
      v49 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
      v50 = (v49 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v78) == -1) || i >= v72;
      if (v50 || std::istreambuf_iterator<wchar_t>::_M_get(&v79) != *(v47 + 4 * i))
      {
        break;
      }

      if (v79)
      {
        v51 = v79[2];
        if (v51 >= v79[3])
        {
          (*(*v79 + 80))(v79);
        }

        else
        {
          v79[2] = v51 + 4;
        }

        LODWORD(v80) = -1;
      }
    }

    if (v72 != i)
    {
      goto LABEL_145;
    }
  }

  else if (!v23)
  {
LABEL_145:
    *a7 |= 4u;
    goto LABEL_147;
  }

  if (*(v75 - 3) >= 2uLL)
  {
    first_not_of = std::string::find_first_not_of(&v75, 0x30u, 0);
    v53 = first_not_of;
    if (first_not_of)
    {
      if (first_not_of == -1)
      {
        v53 = *(v75 - 3) - 1;
      }

      std::string::erase(&v75, 0, v53);
    }
  }

  if (v70)
  {
    v54 = v75;
    if ((*(v75 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v75);
      v54 = v75;
    }

    if (*v54 != 48)
    {
      if ((*(v54 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v75);
      }

      std::string::_M_replace_aux(&v75, 0, 0, 1uLL, 45);
      *(v75 - 2) = -1;
    }
  }

  if (*(v76 - 3))
  {
    v55 = v73;
    if ((v16 & 1) == 0)
    {
      v55 = v15;
    }

    std::string::push_back(&v76, v55);
    if ((std::__verify_grouping(*(v12 + 16), *(v12 + 24), &v76) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v16)
  {
    v56 = *(v12 + 96);
    if (v56 >= 1 && v15 != v56)
    {
      goto LABEL_145;
    }
  }

  std::string::swap(v65, &v75);
LABEL_147:
  v57 = std::istreambuf_iterator<wchar_t>::_M_get(&v79);
  v58 = std::istreambuf_iterator<wchar_t>::_M_get(v78);
  v60 = v57 == -1 || v58 == -1;
  if ((v57 & v58) == 0xFFFFFFFF || !v60)
  {
    *a7 |= 2u;
  }

  v61 = v79;
  v62 = v75 - 6;
  if (v75 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v75 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v62);
  }

  v63 = v76 - 24;
  if (v76 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v76 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v63);
  }

  return v61;
}

void sub_3C78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18)
{
  if ((a17 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a17 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a17 - 24));
  }

  if ((a18 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a18 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a18 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8, int **a9)
{
  v17 = std::use_facet<std::ctype<wchar_t>>(a7 + 208);
  v25 = &unk_60620;
  if (a6)
  {
    v18 = std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<true>(a1, a2, a3, a4, a5, a7, a8, &v25);
  }

  else
  {
    v18 = std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract<false>(a1, a2, a3, a4, a5, a7, a8, &v25);
  }

  v19 = v18;
  v20 = v25;
  v21 = *(v25 - 3);
  if (v21)
  {
    std::wstring::resize(a9, *(v25 - 3), 0);
    v22 = v25;
    if ((*(*a9 - 2) & 0x80000000) == 0)
    {
      std::wstring::_M_leak_hard(a9);
      v23 = *a9;
    }

    (*(*v17 + 88))(v17, v22, &v22[v21]);
    v20 = v25;
  }

  if (v20 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v20 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v20 - 6);
  }

  return v19;
}

void sub_3C9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::money_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F1B8;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F1B8;
  return result;
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::put(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

void std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~money_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, __int32 a6, double a7)
{
  v14 = std::locale::locale(&v35, (a5 + 208));
  v15 = std::use_facet<std::ctype<wchar_t>>(v14);
  v16 = off_5C300();
  v17 = v33;
  memset(v33, 0, sizeof(v33));
  c_locale = std::locale::facet::_S_get_c_locale(v16, v18, v19, v20);
  v21 = std::__convert_from_v(&c_locale, v33, 64, "%.*Lf", 0, a7);
  if (v21 >= 64)
  {
    v22 = (v21 + 1);
    off_5C300();
    v17 = &v33[-((v22 + 15) & 0x1FFFFFFF0)];
    bzero(v17, v22);
    c_locale = std::locale::facet::_S_get_c_locale(v23, v24, v25, v26);
    v21 = std::__convert_from_v(&c_locale, v17, v22, "%.*Lf", 0, a7);
  }

  v27 = v21;
  v28 = std::wstring::basic_string(&c_locale, v21, 0);
  if ((*(c_locale - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(v28);
  }

  (*(*v15 + 88))(v15, v17, &v17[v27]);
  if (a4)
  {
    v29 = std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<true>(a1, a2, a3, a5, a6, &c_locale);
  }

  else
  {
    v29 = std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<false>(a1, a2, a3, a5, a6, &c_locale);
  }

  v30 = v29;
  v31 = c_locale - 6;
  if (c_locale - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(c_locale - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v31);
  }

  std::locale::~locale(&v35);
  return v30;
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<true>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int32 a5, int **a6)
{
  v10 = std::use_facet<std::ctype<wchar_t>>(a4 + 208);
  v11 = std::__use_cache<std::__moneypunct_cache<wchar_t,true>>::operator()(&v50, (a4 + 208));
  v12 = **a6;
  v13 = *(v11 + 108);
  v14 = *(*a6 - 3);
  v15 = v12 == v13;
  if (v12 == v13)
  {
    v16 = (v11 + 104);
  }

  else
  {
    v16 = (v11 + 100);
  }

  if (v15)
  {
    v17 = (v11 + 88);
  }

  else
  {
    v17 = (v11 + 72);
  }

  if (v15)
  {
    v18 = (v11 + 80);
  }

  else
  {
    v18 = (v11 + 64);
  }

  if (v15)
  {
    v19 = &(*a6)[v14 != 0];
  }

  else
  {
    v19 = *a6;
  }

  v49 = *v16;
  v46 = *v18;
  v20 = *v17;
  v21 = (*(*v10 + 40))(v10, 1024, v19, &v19[v14]);
  v22 = v21 - v19;
  if (v21 == v19)
  {
    goto LABEL_72;
  }

  v48 = &unk_606A0;
  std::wstring::reserve(&v48, v22 >> 1);
  v23 = v22 >> 2;
  v24 = *(v11 + 96);
  v25 = (v22 >> 2) - v24;
  if (v25 >= 1)
  {
    if (v24 < 0)
    {
      v25 = v22 >> 2;
    }

    if (*(v11 + 24))
    {
      std::wstring::_M_replace_aux(&v48, 0, *(v48 - 3), 2 * v25, 0);
      v26 = v48;
      if ((*(v48 - 2) & 0x80000000) == 0)
      {
        std::wstring::_M_leak_hard(&v48);
        v26 = v48;
      }

      v27 = std::__add_grouping<wchar_t>(v26, *(v11 + 40), *(v11 + 16), *(v11 + 24), v19, &v19[v25]);
      v28 = v48;
      if ((*(v48 - 2) & 0x80000000) == 0)
      {
        std::wstring::_M_leak_hard(&v48);
        v28 = v48;
      }

      std::wstring::erase(&v48, v27 - v28, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      std::wstring::assign(&v48, v19, v25);
    }

    LODWORD(v24) = *(v11 + 96);
  }

  if (v24 >= 1)
  {
    std::wstring::push_back(&v48, *(v11 + 36));
    if (v25 < 0)
    {
      std::wstring::append(&v48, -v25, *(v11 + 112));
    }

    else
    {
      v19 += v25;
      v23 = *(v11 + 96);
    }

    std::wstring::append(&v48, v19, v23);
  }

  v29 = *(a4 + 24);
  v30 = *(v48 - 3) + v20;
  if ((v29 & 0x200) != 0)
  {
    v31 = *(v11 + 56);
  }

  else
  {
    v31 = 0;
  }

  v44 = a2;
  v32 = v30 + v31;
  v47 = &unk_606A0;
  std::wstring::reserve(&v47, 2 * (v30 + v31));
  v33 = 0;
  v34 = *(a4 + 16);
  v36 = (v29 & 0xB0) == 0x10 && v34 > v32;
  v37 = v34 - v32;
  do
  {
    while (1)
    {
      v38 = *(&v49 + v33);
      if (v38 <= 1)
      {
        break;
      }

      if (v38 == 4)
      {
        std::wstring::append(&v47, &v48);
        goto LABEL_57;
      }

      if (v38 != 3)
      {
        if (v38 == 2 && (*(a4 + 25) & 2) != 0)
        {
          std::wstring::append(&v47, *(v11 + 48), *(v11 + 56));
        }

        goto LABEL_57;
      }

      if (v20)
      {
        v39 = *v46;
LABEL_54:
        std::wstring::push_back(&v47, v39);
        goto LABEL_57;
      }

      if (++v33 == 4)
      {
        goto LABEL_63;
      }
    }

    if (*(&v49 + v33))
    {
      if (v38 != 1)
      {
        goto LABEL_57;
      }

      v39 = a5;
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    else if (!v36)
    {
      goto LABEL_57;
    }

    std::wstring::append(&v47, v37, a5);
LABEL_57:
    ++v33;
  }

  while (v33 != 4);
  if (v20 > 1)
  {
    std::wstring::append(&v47, v46 + 1, v20 - 1);
  }

LABEL_63:
  v40 = *(v47 - 3);
  if (v34 > v40)
  {
    if ((v29 & 0xB0) == 0x20)
    {
      std::wstring::append(&v47, v34 - v40, a5);
    }

    else
    {
      std::wstring::insert(&v47, 0, v34 - v40, a5);
    }

    LODWORD(v40) = v34;
  }

  a2 = v44;
  if ((a3 & 1) == 0)
  {
    (*(*v44 + 96))(v44, v47, v40);
  }

  v41 = v47 - 6;
  if (v47 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v47 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v41);
  }

  v42 = v48 - 6;
  if (v48 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v48 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v42);
  }

LABEL_72:
  *(a4 + 16) = 0;
  return a2;
}

void sub_3D230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a15 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((a15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a15 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<false>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int32 a5, int **a6)
{
  v10 = std::use_facet<std::ctype<wchar_t>>(a4 + 208);
  v11 = std::__use_cache<std::__moneypunct_cache<wchar_t,false>>::operator()(&v50, (a4 + 208));
  v12 = **a6;
  v13 = *(v11 + 108);
  v14 = *(*a6 - 3);
  v15 = v12 == v13;
  if (v12 == v13)
  {
    v16 = (v11 + 104);
  }

  else
  {
    v16 = (v11 + 100);
  }

  if (v15)
  {
    v17 = (v11 + 88);
  }

  else
  {
    v17 = (v11 + 72);
  }

  if (v15)
  {
    v18 = (v11 + 80);
  }

  else
  {
    v18 = (v11 + 64);
  }

  if (v15)
  {
    v19 = &(*a6)[v14 != 0];
  }

  else
  {
    v19 = *a6;
  }

  v49 = *v16;
  v46 = *v18;
  v20 = *v17;
  v21 = (*(*v10 + 40))(v10, 1024, v19, &v19[v14]);
  v22 = v21 - v19;
  if (v21 == v19)
  {
    goto LABEL_72;
  }

  v48 = &unk_606A0;
  std::wstring::reserve(&v48, v22 >> 1);
  v23 = v22 >> 2;
  v24 = *(v11 + 96);
  v25 = (v22 >> 2) - v24;
  if (v25 >= 1)
  {
    if (v24 < 0)
    {
      v25 = v22 >> 2;
    }

    if (*(v11 + 24))
    {
      std::wstring::_M_replace_aux(&v48, 0, *(v48 - 3), 2 * v25, 0);
      v26 = v48;
      if ((*(v48 - 2) & 0x80000000) == 0)
      {
        std::wstring::_M_leak_hard(&v48);
        v26 = v48;
      }

      v27 = std::__add_grouping<wchar_t>(v26, *(v11 + 40), *(v11 + 16), *(v11 + 24), v19, &v19[v25]);
      v28 = v48;
      if ((*(v48 - 2) & 0x80000000) == 0)
      {
        std::wstring::_M_leak_hard(&v48);
        v28 = v48;
      }

      std::wstring::erase(&v48, v27 - v28, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      std::wstring::assign(&v48, v19, v25);
    }

    LODWORD(v24) = *(v11 + 96);
  }

  if (v24 >= 1)
  {
    std::wstring::push_back(&v48, *(v11 + 36));
    if (v25 < 0)
    {
      std::wstring::append(&v48, -v25, *(v11 + 112));
    }

    else
    {
      v19 += v25;
      v23 = *(v11 + 96);
    }

    std::wstring::append(&v48, v19, v23);
  }

  v29 = *(a4 + 24);
  v30 = *(v48 - 3) + v20;
  if ((v29 & 0x200) != 0)
  {
    v31 = *(v11 + 56);
  }

  else
  {
    v31 = 0;
  }

  v44 = a2;
  v32 = v30 + v31;
  v47 = &unk_606A0;
  std::wstring::reserve(&v47, 2 * (v30 + v31));
  v33 = 0;
  v34 = *(a4 + 16);
  v36 = (v29 & 0xB0) == 0x10 && v34 > v32;
  v37 = v34 - v32;
  do
  {
    while (1)
    {
      v38 = *(&v49 + v33);
      if (v38 <= 1)
      {
        break;
      }

      if (v38 == 4)
      {
        std::wstring::append(&v47, &v48);
        goto LABEL_57;
      }

      if (v38 != 3)
      {
        if (v38 == 2 && (*(a4 + 25) & 2) != 0)
        {
          std::wstring::append(&v47, *(v11 + 48), *(v11 + 56));
        }

        goto LABEL_57;
      }

      if (v20)
      {
        v39 = *v46;
LABEL_54:
        std::wstring::push_back(&v47, v39);
        goto LABEL_57;
      }

      if (++v33 == 4)
      {
        goto LABEL_63;
      }
    }

    if (*(&v49 + v33))
    {
      if (v38 != 1)
      {
        goto LABEL_57;
      }

      v39 = a5;
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    else if (!v36)
    {
      goto LABEL_57;
    }

    std::wstring::append(&v47, v37, a5);
LABEL_57:
    ++v33;
  }

  while (v33 != 4);
  if (v20 > 1)
  {
    std::wstring::append(&v47, v46 + 1, v20 - 1);
  }

LABEL_63:
  v40 = *(v47 - 3);
  if (v34 > v40)
  {
    if ((v29 & 0xB0) == 0x20)
    {
      std::wstring::append(&v47, v34 - v40, a5);
    }

    else
    {
      std::wstring::insert(&v47, 0, v34 - v40, a5);
    }

    LODWORD(v40) = v34;
  }

  a2 = v44;
  if ((a3 & 1) == 0)
  {
    (*(*v44 + 96))(v44, v47, v40);
  }

  v41 = v47 - 6;
  if (v47 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v47 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v41);
  }

  v42 = v48 - 6;
  if (v48 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v48 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v42);
  }

LABEL_72:
  *(a4 + 16) = 0;
  return a2;
}

void sub_3D740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a15 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((a15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((a15 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, __int32 a6, int **a7)
{
  if (a4)
  {
    return std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<true>(a1, a2, a3, a5, a6, a7);
  }

  else
  {
    return std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert<false>(a1, a2, a3, a5, a6, a7);
  }
}

uint64_t std::__use_cache<std::__moneypunct_cache<wchar_t,true>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::moneypunct<wchar_t,true>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0xA0uLL);
    *(v6 + 2) = 0;
    *v6 = off_5F098;
    *(v6 + 9) = 0;
    *(v6 + 10) = 0;
    v6[152] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    v6[32] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 92) = 0u;
    std::__moneypunct_cache<wchar_t,true>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}

void sub_3D8C8(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

uint64_t std::__use_cache<std::__moneypunct_cache<wchar_t,false>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::moneypunct<wchar_t,false>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0xA0uLL);
    *(v6 + 2) = 0;
    *v6 = off_5F078;
    *(v6 + 9) = 0;
    *(v6 + 10) = 0;
    v6[152] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    v6[32] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 92) = 0u;
    std::__moneypunct_cache<wchar_t,false>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}

void sub_3D9C8(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

_DWORD *std::__add_grouping<wchar_t>(_DWORD *result, int a2, char *a3, uint64_t a4, int *a5, int *a6)
{
  v6 = *a3;
  if (v6 < 1 || a6 - a5 <= v6)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      a6 -= v6;
      if (v9 >= a4 - 1)
      {
        ++v8;
      }

      else
      {
        ++v9;
      }

      v10 = a3[v9];
      v11 = v10 < 1 || a6 - a5 <= v10;
      LOBYTE(v6) = a3[v9];
    }

    while (!v11);
  }

  for (; a5 != a6; ++result)
  {
    v12 = *a5++;
    *result = v12;
  }

  for (; v8; --v8)
  {
    *result++ = a2;
    v13 = a3[v9];
    if (v13 >= 1)
    {
      do
      {
        v14 = *a5++;
        *result++ = v14;
        v15 = v13--;
      }

      while (v15 > 1);
    }
  }

  while (v9)
  {
    --v9;
    *result++ = a2;
    v16 = a3[v9];
    if (v16 >= 1)
    {
      do
      {
        v17 = *a5++;
        *result++ = v17;
        v18 = v16--;
      }

      while (v18 > 1);
    }
  }

  return result;
}

uint64_t std::numpunct<wchar_t>::numpunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F1E8;
  *(a1 + 16) = 0;
  std::numpunct<wchar_t>::_M_initialize_numpunct(a1);
  return a1;
}

uint64_t std::numpunct<wchar_t>::numpunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5F1E8;
  *(a1 + 16) = a2;
  std::numpunct<wchar_t>::_M_initialize_numpunct(a1);
  return a1;
}

{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5F1E8;
  *(a1 + 16) = 0;
  std::numpunct<wchar_t>::_M_initialize_numpunct(a1);
  return a1;
}

double std::__numpunct_cache<wchar_t>::__numpunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F230;
  *(a1 + 328) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F230;
  *(a1 + 328) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void std::__numpunct_cache<wchar_t>::~__numpunct_cache(std::locale::facet *this)
{
  *this = off_5F230;
  if (*(this + 328) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__numpunct_cache<wchar_t>::~__numpunct_cache(std::locale::facet *a1)
{
  std::__numpunct_cache<wchar_t>::~__numpunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__numpunct_cache<wchar_t>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 328) = 1;
  v4 = std::locale::id::_M_id(&std::numpunct<wchar_t>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v25, v5);
  v6 = v25;
  v7 = v25 - 6;
  *(a1 + 24) = *(v25 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v25, v5);
  std::string::copy(&v25, v8, *(a1 + 24), 0);
  v9 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v25, v5);
    v10 = v25;
    if ((*(v25 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v25);
      v10 = v25;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  (*(*v5 + 40))(&v25, v5);
  v11 = v25;
  v12 = v25 - 6;
  *(a1 + 48) = *(v25 - 3);
  if (v12 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v12);
  }

  v13 = *(a1 + 48);
  if (v13 >> 62)
  {
    v14 = -1;
  }

  else
  {
    v14 = 4 * v13;
  }

  v15 = operator new[](v14);
  (*(*v5 + 40))(&v25, v5);
  std::wstring::copy(&v25, v15, *(a1 + 48), 0);
  v16 = v25 - 6;
  if (v25 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v16);
  }

  *(a1 + 40) = v15;
  (*(*v5 + 48))(&v25, v5);
  v17 = v25;
  v18 = v25 - 6;
  *(a1 + 64) = *(v25 - 3);
  if (v18 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v17 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v18);
  }

  v19 = *(a1 + 64);
  if (v19 >> 62)
  {
    v20 = -1;
  }

  else
  {
    v20 = 4 * v19;
  }

  v21 = operator new[](v20);
  (*(*v5 + 48))(&v25, v5);
  std::wstring::copy(&v25, v21, *(a1 + 64), 0);
  v22 = v25 - 6;
  if (v25 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v22);
  }

  *(a1 + 56) = v21;
  *(a1 + 72) = (*(*v5 + 16))(v5);
  *(a1 + 76) = (*(*v5 + 24))(v5);
  v23 = std::use_facet<std::ctype<wchar_t>>(a2);
  (*(*v23 + 88))(v23, std::__num_base::_S_atoms_out, std::__num_base::_S_atoms_out + 36, a1 + 80);
  return (*(*v23 + 88))(v23, std::__num_base::_S_atoms_in[0], std::__num_base::_S_atoms_in[0] + 26, a1 + 224);
}

void sub_3E38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::numpunct<wchar_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::numpunct<wchar_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::numpunct_byname<wchar_t>::numpunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::numpunct<wchar_t>::numpunct(a1, a3) = off_5F250;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::numpunct<wchar_t>::_M_initialize_numpunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::numpunct_byname<wchar_t>::~numpunct_byname(std::locale::facet *a1)
{
  std::numpunct<wchar_t>::~numpunct(a1);

  operator delete(v1);
}

uint64_t std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::num_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F298;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F298;
  return result;
}

uint64_t std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

{
  return (*(*a1 + 32))(a1);
}

{
  return (*(*a1 + 40))(a1);
}

{
  return (*(*a1 + 48))(a1);
}

{
  return (*(*a1 + 56))(a1);
}

{
  return (*(*a1 + 64))(a1);
}

{
  return (*(*a1 + 72))(a1);
}

{
  return (*(*a1 + 80))(a1);
}

{
  return (*(*a1 + 88))(a1);
}

{
  return (*(*a1 + 96))(a1);
}

void std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~num_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, std::string *a8)
{
  v54 = a2;
  v55 = a3;
  v53[0] = a4;
  v53[1] = a5;
  v9 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v52, (a6 + 208));
  v10 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
  v11 = std::istreambuf_iterator<wchar_t>::_M_get(v53);
  v13 = v10 == -1 || v11 == -1;
  if ((v10 & v11) == 0xFFFFFFFF || !v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
  v15 = v21;
  v22 = *(v9 + 228);
  if ((v21 == v22 || v21 == *(v9 + 224)) && (*(v9 + 32) != 1 || v21 != *(v9 + 76)) && v21 != *(v9 + 72))
  {
    if (v21 == v22)
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    std::string::push_back(a8, v23);
    if (v54)
    {
      v24 = v54[2];
      if (v24 >= v54[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v54);
      }

      else
      {
        v54[2] = v24 + 4;
      }

      LODWORD(v55) = -1;
    }

    v25 = std::istreambuf_iterator<wchar_t>::_M_get(&v54) == -1;
    if (v25 != (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
    {
      v15 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
      goto LABEL_29;
    }

LABEL_13:
    v16 = 0;
    v17 = 0;
    v18 = (v9 + 76);
    v19 = (v9 + 240);
    goto LABEL_14;
  }

LABEL_29:
  v17 = 0;
  v16 = 0;
  v18 = (v9 + 76);
  v19 = (v9 + 240);
  while (1)
  {
    if (*(v9 + 32) == 1 && v15 == *v18 || v15 == *(v9 + 72) || v15 != *v19)
    {
      v20 = 0;
      goto LABEL_44;
    }

    if ((v17 & 1) == 0)
    {
      std::string::push_back(a8, 48);
    }

    if (v54)
    {
      v26 = v54[2];
      if (v26 >= v54[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v54);
      }

      else
      {
        v54[2] = v26 + 4;
      }

      LODWORD(v55) = -1;
    }

    v27 = std::istreambuf_iterator<wchar_t>::_M_get(&v54) == -1;
    if (v27 == (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
    {
      break;
    }

    v15 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
    ++v16;
    v17 = 1;
  }

  ++v16;
  v17 = 1;
LABEL_14:
  v20 = 1;
LABEL_44:
  v51 = &unk_60620;
  if (*(v9 + 32) == 1)
  {
    std::string::reserve(&v51, 0x20uLL);
  }

  if ((*(v9 + 328) & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v39 = v17 ^ 1;
        while (1)
        {
          if ((v15 - 58) >= 0xFFFFFFF6)
          {
            std::string::push_back(a8, v15);
            v17 = 1;
            goto LABEL_114;
          }

          if (!((v15 != *(v9 + 72)) | (v28 | v29) & 1))
          {
            std::string::push_back(a8, 46);
            v29 = 0;
            v28 = 1;
            goto LABEL_114;
          }

          if (v15 == *(v9 + 296))
          {
            if ((v29 | v39))
            {
              goto LABEL_126;
            }
          }

          else if ((v15 != *(v9 + 320)) | (v29 | v39) & 1)
          {
            goto LABEL_126;
          }

          std::string::push_back(a8, 101);
          if (v54)
          {
            v40 = v54[2];
            if (v40 >= v54[3])
            {
              (*(*v54 + 80))();
            }

            else
            {
              v54[2] = v40 + 4;
            }

            LODWORD(v55) = -1;
          }

          v41 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
          if ((v41 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
          {
LABEL_121:
            v29 = 1;
            goto LABEL_122;
          }

          v42 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
          v15 = v42;
          if (v42 == *(v9 + 228))
          {
            break;
          }

          v29 = 1;
          if (v42 == *(v9 + 224))
          {
            v43 = 45;
            goto LABEL_113;
          }
        }

        v43 = 43;
LABEL_113:
        std::string::push_back(a8, v43);
        v29 = 1;
LABEL_114:
        if (v54)
        {
          v44 = v54[2];
          if (v44 >= v54[3])
          {
            (*(*v54 + 80))();
          }

          else
          {
            v54[2] = v44 + 4;
          }

          LODWORD(v55) = -1;
        }

        v45 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
        if ((v45 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
        {
          goto LABEL_122;
        }

        v15 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
      }
    }

LABEL_92:
    v29 = 0;
    v28 = 0;
    goto LABEL_122;
  }

  if (v20)
  {
    goto LABEL_92;
  }

  v28 = 0;
  v29 = 0;
  while (2)
  {
    v30 = v17 ^ 1;
    while (1)
    {
      if (*(v9 + 32) == 1 && v15 == *v18)
      {
        if (((v28 | v29) & 1) == 0)
        {
          if (v16)
          {
            std::string::push_back(&v51, v16);
            v29 = 0;
            v28 = 0;
            v16 = 0;
            goto LABEL_84;
          }

          std::string::_M_mutate(a8, 0, *(*a8 - 24), 0);
          v29 = 0;
          v28 = 0;
          LOBYTE(v16) = 0;
LABEL_126:
          v46 = 0;
          goto LABEL_127;
        }

LABEL_124:
        v46 = 0;
        v29 |= v28 ^ 1;
        goto LABEL_127;
      }

      if (v15 == *(v9 + 72))
      {
        if (((v28 | v29) & 1) == 0)
        {
          if (*(v51 - 3))
          {
            std::string::push_back(&v51, v16);
          }

          std::string::push_back(a8, 46);
          v29 = 0;
          v28 = 1;
          goto LABEL_84;
        }

        goto LABEL_124;
      }

      v31 = wmemchr(v19, v15, 0xAuLL);
      if (v31)
      {
        break;
      }

      if (v15 == *(v9 + 296))
      {
        if ((v29 | v30))
        {
          goto LABEL_126;
        }
      }

      else if ((v15 != *(v9 + 320)) | (v29 | v30) & 1)
      {
        goto LABEL_126;
      }

      if (!((*(v51 - 3) == 0) | v28 & 1))
      {
        std::string::push_back(&v51, v16);
      }

      std::string::push_back(a8, 101);
      if (v54)
      {
        v32 = v54[2];
        if (v32 >= v54[3])
        {
          (*(*v54 + 80))();
        }

        else
        {
          v54[2] = v32 + 4;
        }

        LODWORD(v55) = -1;
      }

      v33 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
      if ((v33 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
      {
        goto LABEL_121;
      }

      v34 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
      v15 = v34;
      v35 = *(v9 + 228);
      if (v34 != v35)
      {
        v29 = 1;
        if (v34 != *(v9 + 224))
        {
          continue;
        }
      }

      if (*(v9 + 32) == 1)
      {
        v29 = 1;
        if (v34 == *v18)
        {
          continue;
        }
      }

      v29 = 1;
      if (v34 != *(v9 + 72))
      {
        if (v34 == v35)
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        std::string::push_back(a8, v36);
        goto LABEL_84;
      }
    }

    std::string::push_back(a8, ((v31 - v19) >> 2) + 48);
    ++v16;
    v17 = 1;
LABEL_84:
    if (v54)
    {
      v37 = v54[2];
      if (v37 >= v54[3])
      {
        (*(*v54 + 80))();
      }

      else
      {
        v54[2] = v37 + 4;
      }

      LODWORD(v55) = -1;
    }

    v38 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
    if ((v38 == -1) != (std::istreambuf_iterator<wchar_t>::_M_get(v53) == -1))
    {
      v15 = std::istreambuf_iterator<wchar_t>::_M_get(&v54);
      continue;
    }

    break;
  }

LABEL_122:
  v46 = 1;
LABEL_127:
  if (*(v51 - 3))
  {
    if (((v28 | v29) & 1) == 0)
    {
      std::string::push_back(&v51, v16);
    }

    if ((std::__verify_grouping(*(v9 + 16), *(v9 + 24), &v51) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v46)
  {
    *a7 |= 2u;
  }

  v47 = v54;
  v48 = v51 - 24;
  if (v51 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v51 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v48);
  }

  return v47;
}

void sub_3F020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a10 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::numpunct<wchar_t>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0x150uLL);
    *(v6 + 2) = 0;
    *v6 = off_5F230;
    v6[328] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    v6[32] = 0;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 9) = 0;
    std::__numpunct_cache<wchar_t>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}

void sub_3F130(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _BYTE *a8)
{
  v31 = a2;
  v32 = a3;
  v30[0] = a4;
  v30[1] = a5;
  if ((*(a6 + 24) & 1) == 0)
  {
    v29 = -1;
    result = std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<long>(a1, a2, a3, a4, a5, a6, a7, &v29);
    LODWORD(v32) = v11;
    if (v29 > 1)
    {
      *a7 |= 4u;
    }

    else
    {
      *a8 = v29;
    }

    return result;
  }

  v12 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v29, (a6 + 208));
  v13 = std::istreambuf_iterator<wchar_t>::_M_get(&v31);
  v14 = std::istreambuf_iterator<wchar_t>::_M_get(v30);
  v15 = 0;
  v17 = v13 == -1 || v14 == -1;
  v18 = 1;
  if ((v13 & v14) == 0xFFFFFFFF)
  {
LABEL_41:
    LOBYTE(v19) = 1;
LABEL_42:
    if (v15 != v12[8])
    {
      goto LABEL_45;
    }

    *a8 = 0;
    if (v18)
    {
      goto LABEL_50;
    }

    return v31;
  }

  LOBYTE(v19) = 1;
  if (!v17)
  {
    goto LABEL_42;
  }

  v15 = 0;
  LOBYTE(v20) = 1;
  do
  {
    v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v31);
    if (v20)
    {
      if (v15 >= v12[8])
      {
        v18 = 0;
        goto LABEL_42;
      }

      v20 = v21 == *(v12[7] + 4 * v15);
      if (!v19)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v20 = 0;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    v22 = v12[6];
    if (v15 >= v22)
    {
      if (v20)
      {
        v18 = 0;
        goto LABEL_41;
      }

      if (v15 == v22)
      {
        *a8 = 1;
        return v31;
      }

LABEL_53:
      v28 = *a7 | 4;
      goto LABEL_54;
    }

    v19 = v21 == *(v12[5] + 4 * v15);
LABEL_20:
    if (!v20 && !v19)
    {
      goto LABEL_53;
    }

    if (v31)
    {
      v23 = v31[2];
      if (v23 >= v31[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v31);
      }

      else
      {
        v31[2] = v23 + 4;
      }

      LODWORD(v32) = -1;
    }

    v24 = std::istreambuf_iterator<wchar_t>::_M_get(&v31);
    v25 = std::istreambuf_iterator<wchar_t>::_M_get(v30);
    v27 = v24 == -1 || v25 == -1;
    ++v15;
  }

  while ((v24 & v25) != 0xFFFFFFFF && v27);
  v18 = 1;
  if (v20)
  {
    goto LABEL_42;
  }

LABEL_45:
  if (v19 && v15 == v12[6])
  {
    *a8 = 1;
    if ((v18 & 1) == 0)
    {
      return v31;
    }
  }

  else
  {
    *a7 |= 4u;
    if ((v18 & 1) == 0)
    {
      return v31;
    }
  }

LABEL_50:
  v28 = *a7 | 2;
LABEL_54:
  *a7 = v28;
  return v31;
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v60 = a2;
  v61 = a3;
  v59[0] = a4;
  v59[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v58, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v59);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v52 = a8;
  if ((v14 & v15) == 0xFFFFFFFF)
  {
    v54 = 0;
    goto LABEL_63;
  }

  v54 = 0;
  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
  v16 = v19;
  v54 = v19 == *(v10 + 224);
  if (v19 != *(v10 + 224) && v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_26;
  }

  if (v60)
  {
    v20 = v60[2];
    if (v20 >= v60[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v60);
    }

    else
    {
      v60[2] = v20 + 4;
    }

    LODWORD(v61) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v60) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
  {
LABEL_63:
    v23 = 0;
    v22 = 0;
    v55 = (v10 + 76);
    v31 = 1;
    goto LABEL_68;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
LABEL_26:
  v22 = 0;
  v23 = 0;
  v55 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v55 || v16 == *(v10 + 72))
    {
LABEL_64:
      v31 = 0;
      goto LABEL_68;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_54;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_68;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_64;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_54:
    if (v60)
    {
      v29 = v60[2];
      if (v29 >= v60[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v60);
      }

      else
      {
        v60[2] = v29 + 4;
      }

      LODWORD(v61) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v60) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_66;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_66:
      v23 = v26;
      v13 = v25;
      goto LABEL_68;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_68:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v57 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v57, 0x20uLL);
  }

  if (v54)
  {
    v33 = 0x8000000000000000;
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v13;
  v56 = v33;
  v35 = v33 / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      v37 = 0;
      v38 = v10 + 240;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v55)
        {
          if (!v23)
          {
            v44 = 0;
            v37 = 1;
            goto LABEL_121;
          }

          std::string::push_back(&v57, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_120;
          }

          v39 = wmemchr((v10 + 240), v16, v32);
          if (!v39)
          {
            goto LABEL_120;
          }

          if (v36 <= v35)
          {
            v40 = v36 * v34;
            v41 = ((v39 - v38) << 30) - 0x600000000;
            if (((v39 - v38) >> 2) <= 15)
            {
              v41 = (v39 - v38) << 30;
            }

            v37 |= v40 > v56 - (v41 >> 32);
            v36 = v40 + (v41 >> 32);
            ++v23;
          }

          else
          {
            v37 = 1;
          }
        }

        if (v60)
        {
          v42 = v60[2];
          if (v42 >= v60[3])
          {
            (*(*v60 + 80))();
          }

          else
          {
            v60[2] = v42 + 4;
          }

          LODWORD(v61) = -1;
        }

        v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
        if ((v43 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
        {
          goto LABEL_99;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v45 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_120;
            }

            v45 = v16 - 55;
          }

          else
          {
            v45 = v16 - 87;
          }
        }
      }

      else
      {
        v45 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_120:
          v44 = 0;
          goto LABEL_121;
        }
      }

      if (v36 <= v35)
      {
        v37 |= v36 * v34 > v56 - v45;
        v36 = v36 * v34 + v45;
        ++v23;
      }

      else
      {
        v37 = 1;
      }

      if (v60)
      {
        v46 = v60[2];
        if (v46 >= v60[3])
        {
          (*(*v60 + 80))();
        }

        else
        {
          v60[2] = v46 + 4;
        }

        LODWORD(v61) = -1;
      }

      v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
      if ((v47 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
      {
        goto LABEL_99;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
    }
  }

  v37 = 0;
  v36 = 0;
LABEL_99:
  v44 = 1;
LABEL_121:
  if (*(v57 - 3))
  {
    std::string::push_back(&v57, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v57) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v57 - 3)))
  {
    if (v54)
    {
      v48 = -v36;
    }

    else
    {
      v48 = v36;
    }

    *v52 = v48;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v44)
  {
    *a7 |= 2u;
  }

  v49 = v60;
  v50 = v57 - 24;
  if (v57 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v57 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v50);
  }

  return v49;
}

void sub_3FA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  return std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<long long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned long long>(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned short>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unsigned __int16 *a8)
{
  v53 = a2;
  v54 = a3;
  v52[0] = a4;
  v52[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v51, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v52);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v47 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
  v16 = v19;
  if (v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_25;
  }

  if (v53)
  {
    v20 = v53[2];
    if (v20 >= v53[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v53);
    }

    else
    {
      v53[2] = v20 + 4;
    }

    LODWORD(v54) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v53) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v52) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v49 = (v10 + 76);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v49 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v49 || v16 == *(v10 + 72))
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_53;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v53)
    {
      v29 = v53[2];
      if (v29 >= v53[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v53);
      }

      else
      {
        v53[2] = v29 + 4;
      }

      LODWORD(v54) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v53) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v52) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_64:
      v23 = v26;
      v13 = v25;
      goto LABEL_66;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_66:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v50 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v50, 0x20uLL);
  }

  v33 = 0xFFFF / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v34 = 0;
      v35 = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v49)
        {
          if (!v23)
          {
            v40 = 0;
            v35 = 1;
            goto LABEL_116;
          }

          std::string::push_back(&v50, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_115;
          }

          v36 = wmemchr((v10 + 240), v16, v32);
          if (!v36)
          {
            goto LABEL_115;
          }

          if (v33 >= v34)
          {
            v37 = (v36 - v10 - 240) >> 2;
            if (v37 > 15)
            {
              LODWORD(v37) = v37 - 6;
            }

            v35 |= 0xFFFF - v37 < (v34 * v13);
            v34 = v34 * v13 + v37;
            ++v23;
          }

          else
          {
            v35 = 1;
          }
        }

        if (v53)
        {
          v38 = v53[2];
          if (v38 >= v53[3])
          {
            (*(*v53 + 80))();
          }

          else
          {
            v53[2] = v38 + 4;
          }

          LODWORD(v54) = -1;
        }

        v39 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
        if ((v39 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v52) == -1))
        {
          goto LABEL_94;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v41 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_115;
            }

            v41 = v16 - 55;
          }

          else
          {
            v41 = v16 - 87;
          }
        }
      }

      else
      {
        v41 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_115:
          v40 = 0;
          goto LABEL_116;
        }
      }

      if (v33 >= v34)
      {
        v35 |= 0xFFFF - v41 < (v34 * v13);
        v34 = v34 * v13 + v41;
        ++v23;
      }

      else
      {
        v35 = 1;
      }

      if (v53)
      {
        v42 = v53[2];
        if (v42 >= v53[3])
        {
          (*(*v53 + 80))();
        }

        else
        {
          v53[2] = v42 + 4;
        }

        LODWORD(v54) = -1;
      }

      v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
      if ((v43 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v52) == -1))
      {
        goto LABEL_94;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v53);
    }
  }

  v35 = 0;
  v34 = 0;
LABEL_94:
  v40 = 1;
LABEL_116:
  if (*(v50 - 3))
  {
    std::string::push_back(&v50, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v50) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v35 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v50 - 3)))
  {
    *v47 = v34;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v40)
  {
    *a7 |= 2u;
  }

  v44 = v53;
  v45 = v50 - 24;
  if (v50 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v50 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v45);
  }

  return v44;
}

void sub_4014C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a12 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a12 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a12 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned int>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unsigned int *a8)
{
  v57 = a2;
  v58 = a3;
  v56[0] = a4;
  v56[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v55, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v56);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v51 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v16 = v19;
  if (v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_25;
  }

  if (v57)
  {
    v20 = v57[2];
    if (v20 >= v57[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
    }

    else
    {
      v57[2] = v20 + 4;
    }

    LODWORD(v58) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v53 = (v10 + 76);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v53 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v53 || v16 == *(v10 + 72))
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_53;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v57)
    {
      v29 = v57[2];
      if (v29 >= v57[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
      }

      else
      {
        v57[2] = v29 + 4;
      }

      LODWORD(v58) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_64:
      v23 = v26;
      v13 = v25;
      goto LABEL_66;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_66:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v54 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v54, 0x20uLL);
  }

  v33 = 0xFFFFFFFF / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v34 = 0;
      LOBYTE(v35) = 0;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v53)
        {
          if (!v23)
          {
            v41 = 0;
            LOBYTE(v35) = 1;
            goto LABEL_124;
          }

          std::string::push_back(&v54, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_123;
          }

          v36 = wmemchr((v10 + 240), v16, v32);
          if (!v36)
          {
            goto LABEL_123;
          }

          if (v34 <= v33)
          {
            v37 = (v36 - v10 - 240) >> 2;
            if (v37 > 15)
            {
              LODWORD(v37) = v37 - 6;
            }

            v38 = __CFADD__(v37, v34 * v13);
            LOBYTE(v35) = v35 | v38;
            v34 = v37 + v34 * v13;
            ++v23;
          }

          else
          {
            LOBYTE(v35) = 1;
          }
        }

        if (v57)
        {
          v39 = v57[2];
          if (v39 >= v57[3])
          {
            (*(*v57 + 80))();
          }

          else
          {
            v57[2] = v39 + 4;
          }

          LODWORD(v58) = -1;
        }

        v40 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
        if ((v40 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
        {
          goto LABEL_97;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v42 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_123;
            }

            v42 = v16 - 55;
          }

          else
          {
            v42 = v16 - 87;
          }
        }
      }

      else
      {
        v42 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_123:
          v41 = 0;
          goto LABEL_124;
        }
      }

      v43 = __CFADD__(v42, v34 * v13);
      v44 = v35 | v43;
      v45 = v42 + v34 * v13;
      if (v34 <= v33)
      {
        v35 = v44;
      }

      else
      {
        v35 = 1;
      }

      if (v34 <= v33)
      {
        ++v23;
        v34 = v45;
      }

      if (v57)
      {
        v46 = v57[2];
        if (v46 >= v57[3])
        {
          (*(*v57 + 80))();
        }

        else
        {
          v57[2] = v46 + 4;
        }

        LODWORD(v58) = -1;
      }

      v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      if ((v47 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
      {
        goto LABEL_97;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    }
  }

  LOBYTE(v35) = 0;
  v34 = 0;
LABEL_97:
  v41 = 1;
LABEL_124:
  if (*(v54 - 3))
  {
    std::string::push_back(&v54, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v54) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v35 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v54 - 3)))
  {
    *v51 = v34;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v41)
  {
    *a7 |= 2u;
  }

  v48 = v57;
  v49 = v54 - 24;
  if (v54 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v54 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v49);
  }

  return v48;
}

void sub_40804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a12 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a12 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a12 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v57 = a2;
  v58 = a3;
  v56[0] = a4;
  v56[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v55, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v56);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v51 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v16 = v19;
  if (v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_25;
  }

  if (v57)
  {
    v20 = v57[2];
    if (v20 >= v57[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
    }

    else
    {
      v57[2] = v20 + 4;
    }

    LODWORD(v58) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v53 = (v10 + 76);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v53 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v53 || v16 == *(v10 + 72))
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_53;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v57)
    {
      v29 = v57[2];
      if (v29 >= v57[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
      }

      else
      {
        v57[2] = v29 + 4;
      }

      LODWORD(v58) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_64:
      v23 = v26;
      v13 = v25;
      goto LABEL_66;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_66:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v54 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v54, 0x20uLL);
  }

  v33 = 0xFFFFFFFFFFFFFFFFLL / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = v10 + 240;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v53)
        {
          if (!v23)
          {
            v43 = 0;
            v35 = 1;
            goto LABEL_122;
          }

          std::string::push_back(&v54, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_121;
          }

          v37 = wmemchr((v10 + 240), v16, v32);
          if (!v37)
          {
            goto LABEL_121;
          }

          if (v34 <= v33)
          {
            v38 = v34 * v13;
            v39 = ((v37 - v36) << 30) - 0x600000000;
            if (((v37 - v36) >> 2) <= 15)
            {
              v39 = (v37 - v36) << 30;
            }

            v40 = __CFADD__(v38, v39 >> 32);
            v35 |= v40;
            v34 = v38 + (v39 >> 32);
            ++v23;
          }

          else
          {
            v35 = 1;
          }
        }

        if (v57)
        {
          v41 = v57[2];
          if (v41 >= v57[3])
          {
            (*(*v57 + 80))();
          }

          else
          {
            v57[2] = v41 + 4;
          }

          LODWORD(v58) = -1;
        }

        v42 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
        if ((v42 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
        {
          goto LABEL_97;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v44 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_121;
            }

            v44 = v16 - 55;
          }

          else
          {
            v44 = v16 - 87;
          }
        }
      }

      else
      {
        v44 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_121:
          v43 = 0;
          goto LABEL_122;
        }
      }

      if (v34 <= v33)
      {
        v45 = __CFADD__(v34 * v13, v44);
        v35 |= v45;
        v34 = v34 * v13 + v44;
        ++v23;
      }

      else
      {
        v35 = 1;
      }

      if (v57)
      {
        v46 = v57[2];
        if (v46 >= v57[3])
        {
          (*(*v57 + 80))();
        }

        else
        {
          v57[2] = v46 + 4;
        }

        LODWORD(v58) = -1;
      }

      v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      if ((v47 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
      {
        goto LABEL_97;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    }
  }

  v35 = 0;
  v34 = 0;
LABEL_97:
  v43 = 1;
LABEL_122:
  if (*(v54 - 3))
  {
    std::string::push_back(&v54, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v54) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v35 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v54 - 3)))
  {
    *v51 = v34;
    if (!v43)
    {
      goto LABEL_128;
    }

LABEL_127:
    *a7 |= 2u;
  }

  else
  {
    *a7 |= 4u;
    if (v43)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  v48 = v57;
  v49 = v54 - 24;
  if (v54 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v54 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v49);
  }

  return v48;
}