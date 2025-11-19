uint64_t std::stringbuf::operator=(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 64);
  v4 = *(a2 + 64);
  if (*(a2 + 87) >= 0)
  {
    v4 = a2 + 64;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = v6 - v4;
    v8 = *(a2 + 24) - v4;
    v9 = *(a2 + 32) - v4;
  }

  else
  {
    v9 = -1;
    v8 = -1;
    v7 = -1;
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = v10 - v4;
    v12 = *(a2 + 48) - v4;
    v13 = *(a2 + 56) - v4;
  }

  else
  {
    v11 = -1;
    v12 = -1;
    v13 = -1;
  }

  v14 = *(a2 + 88);
  v15 = v14 - v4;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = -1;
  }

  v17 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v27 = v11;
    MEMORY[0x193B0CA40](*(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
    v11 = v27;
  }

  v18 = *v5;
  *(a1 + 80) = *(v5 + 2);
  *v17 = v18;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 87) < 0)
  {
    v17 = *v17;
  }

  v19 = v17 + v7;
  v20 = v17 + v8;
  v21 = v17 + v9;
  if (v7 == -1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  if (v11 == -1)
  {
    v22 = 0;
    v23 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v22 = v17 + v11;
    v23 = v17 + v13;
    *(a1 + 48) = v17 + v11 + v12;
  }

  *(a1 + 40) = v22;
  *(a1 + 56) = v23;
  v24 = v17 + v16;
  if (v16 == -1)
  {
    v24 = 0;
  }

  *(a1 + 88) = v24;
  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 87) >= 0)
  {
    v25 = v5;
  }

  else
  {
    v25 = *(a2 + 64);
  }

  *(a2 + 16) = v25;
  *(a2 + 24) = v25;
  *(a2 + 32) = v25;
  *(a2 + 40) = v25;
  *(a2 + 48) = v25;
  *(a2 + 56) = v25;
  *(a2 + 88) = v25;
  std::locale::locale(&v28, (a2 + 8));
  (*(*a1 + 16))(a1, &v28);
  std::locale::locale(&v29, (a1 + 8));
  std::locale::operator=((a1 + 8), &v28);
  std::locale::~locale(&v29);
  std::locale::~locale(&v28);
  return a1;
}

void std::stringbuf::swap(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  if (*(a2 + 87) >= 0)
  {
    v5 = a2 + 64;
  }

  else
  {
    v5 = *(a2 + 64);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = v6 - v5;
    v8 = *(a2 + 24) - v5;
    v9 = *(a2 + 32) - v5;
  }

  else
  {
    v8 = -1;
    v9 = -1;
    v7 = -1;
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = v10 - v5;
    v12 = *(a2 + 48) - v5;
    v13 = *(a2 + 56) - v5;
  }

  else
  {
    v11 = -1;
    v12 = -1;
    v13 = -1;
  }

  v14 = *(a2 + 88);
  v15 = v14 - v5;
  if (!v14)
  {
    v15 = -1;
  }

  v16 = (a1 + 64);
  v17 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v17 = *v16;
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = v18 - v17;
    v20 = *(a1 + 24) - v17;
    v21 = *(a1 + 32) - v17;
  }

  else
  {
    v19 = -1;
    v20 = -1;
    v21 = -1;
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = v22 - v17;
    v24 = *(a1 + 48) - v17;
    v25 = *(a1 + 56) - v17;
  }

  else
  {
    v23 = -1;
    v24 = -1;
    v25 = -1;
  }

  v26 = *(a1 + 88);
  v27 = v26 - v17;
  if (!v26)
  {
    v27 = -1;
  }

  v28 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v28;
  v29 = *(a1 + 80);
  v30 = *v16;
  v31 = *(v4 + 16);
  *v16 = *v4;
  *(a1 + 80) = v31;
  *v4 = v30;
  *(v4 + 16) = v29;
  if (*(a1 + 87) < 0)
  {
    v16 = *v16;
  }

  v32 = v16 + v8;
  v33 = v16 + v9;
  v34 = v7 == -1;
  if (v7 == -1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v16 + v7;
  }

  if (v34)
  {
    v32 = 0;
    v33 = 0;
  }

  *(a1 + 16) = v35;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  if (v11 == -1)
  {
    v36 = 0;
    v37 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v36 = v16 + v11;
    v37 = v16 + v13;
    *(a1 + 48) = v16 + v11 + v12;
  }

  *(a1 + 40) = v36;
  *(a1 + 56) = v37;
  v38 = v16 + v15;
  if (v15 == -1)
  {
    v38 = 0;
  }

  *(a1 + 88) = v38;
  if (*(a2 + 87) < 0)
  {
    v4 = *(a2 + 64);
  }

  v39 = v4 + v19;
  v40 = v4 + v20;
  v41 = v4 + v21;
  if (v19 == -1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  *(a2 + 16) = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = v41;
  if (v23 == -1)
  {
    v42 = 0;
    v43 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v42 = v4 + v23;
    v43 = v4 + v25;
    *(a2 + 48) = v4 + v23 + v24;
  }

  *(a2 + 40) = v42;
  *(a2 + 56) = v43;
  v44 = v4 + v27;
  if (v27 == -1)
  {
    v44 = 0;
  }

  *(a2 + 88) = v44;
  std::locale::locale(&v48, (a2 + 8));
  std::locale::locale(&v46, (a1 + 8));
  (*(*a2 + 16))(a2, &v46);
  std::locale::locale(&v47, (a2 + 8));
  std::locale::operator=((a2 + 8), &v46);
  std::locale::~locale(&v47);
  std::locale::~locale(&v46);
  (*(*a1 + 16))(a1, &v48);
  std::locale::locale(&v45, (a1 + 8));
  std::locale::operator=((a1 + 8), &v48);
  std::locale::~locale(&v45);
  std::locale::~locale(&v48);
}

_BYTE *std::stringbuf::str@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
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

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a2, v5, v3, v3 - v5);
}

void std::stringbuf::str(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 64), a2);

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::underflow(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 88) = v2;
    v1 = v2;
  }

  if ((*(a1 + 96) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::stringbuf::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 88) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v4 - 1;
    *(a1 + 32) = v2;
    return a2;
  }

  if ((*(a1 + 96) & 0x10) == 0 && *(v4 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v4 - 1;
  *(a1 + 32) = v2;
  *(v4 - 1) = a2;
  return a2;
}

uint64_t std::stringbuf::overflow(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 == v6)
  {
    if ((*(a1 + 96) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 88);
    v12 = a1 + 64;
    std::string::push_back((a1 + 64), 0);
    if (*(a1 + 87) < 0)
    {
      v13 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v13 = 22;
    }

    std::string::resize((a1 + 64), v13, 0);
    v14 = &v7[-v10];
    v15 = *(a1 + 87);
    if (v15 < 0)
    {
      v12 = *(a1 + 64);
      v15 = *(a1 + 72);
    }

    v6 = (v12 + v15);
    v7 = &v14[v12];
    *(a1 + 40) = v12;
    *(a1 + 48) = &v14[v12];
    *(a1 + 56) = v6;
    v8 = v12 + v11 - v10;
  }

  else
  {
    v8 = *(a1 + 88);
  }

  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 88) = v8;
  if ((*(a1 + 96) & 8) != 0)
  {
    v16 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v16 = *v16;
    }

    *(a1 + 16) = v16;
    *(a1 + 24) = v16 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 == v6)
  {
    v17 = *(*a1 + 104);

    return v17(a1, v2);
  }

  else
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }
}

void sub_1922C7038(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922C6F14);
}

double std::stringbuf::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 88);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 88) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = a3;
    goto LABEL_20;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = v5 - v9;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }
  }

LABEL_20:
  v7 = -1;
  v12 = v11 + a2;
  if (v12 >= 0 && v10 >= v12 && (!v12 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + v12;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + v12;
    }

    v7 = v12;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  v6 = (a1 + *(v5 - 24));
  v7 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v6, v7);
  v8 = v6[1].__vftable;
  v6[1].__vftable = v7[1].__vftable;
  v7[1].__vftable = v8;
  LODWORD(v8) = v6[1].__fmtflags_;
  v6[1].__fmtflags_ = v7[1].__fmtflags_;
  v7[1].__fmtflags_ = v8;
  std::stringbuf::operator=((a1 + 3), (a2 + 3));
  return a1;
}

void *std::ostringstream::operator=(void *a1, void *a2)
{
  v3 = (a1 + 1);
  v4 = (a1 + *(*a1 - 24));
  v5 = (a2 + 1);
  v6 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v4, v6);
  v7 = v4[1].__vftable;
  v4[1].__vftable = v6[1].__vftable;
  v6[1].__vftable = v7;
  LODWORD(v7) = v4[1].__fmtflags_;
  v4[1].__fmtflags_ = v6[1].__fmtflags_;
  v6[1].__fmtflags_ = v7;
  std::stringbuf::operator=(v3, v5);
  return a1;
}

uint64_t *std::istringstream::operator=(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  v6 = (a1 + *(v5 - 24));
  v7 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v6, v7);
  v8 = v6[1].__vftable;
  v6[1].__vftable = v7[1].__vftable;
  v7[1].__vftable = v8;
  LODWORD(v8) = v6[1].__fmtflags_;
  v6[1].__fmtflags_ = v7[1].__fmtflags_;
  v7[1].__fmtflags_ = v8;
  std::stringbuf::operator=((a1 + 2), (a2 + 2));
  return a1;
}

void std::ifstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::filebuf::open((a1 + 2), a2, a3 | 8u);
  v5 = (a1 + *(*a1 - 24));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v4 = std::filebuf::open((a1 + 2), a2, a3 | 8u);
  v5 = (a1 + *(*a1 - 24));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

uint64_t std::filebuf::open(uint64_t a1, const char *a2, int a3)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  mdstring = std::filebuf::__make_mdstring(a3);
  if (!mdstring)
  {
    return 0;
  }

  v8 = fopen(a2, mdstring);

  return std::filebuf::__do_open[abi:ne200100](a1, v8, a3);
}

void std::ofstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::filebuf::open((a1 + 1), a2, a3 | 0x10u);
  v5 = (a1 + *(*a1 - 24));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v4 = std::filebuf::open((a1 + 1), a2, a3 | 0x10u);
  v5 = (a1 + *(*a1 - 24));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

uint64_t std::filebuf::basic_filebuf(uint64_t a1)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 396) = 32;
  *(a1 + 400) = 0;
  *(a1 + 402) = 0;
  std::locale::locale(&v4, (a1 + 8));
  has_facet = std::locale::has_facet(&v4, &std::codecvt<char,char,__mbstate_t>::id);
  std::locale::~locale(&v4);
  if (has_facet)
  {
    std::locale::locale(&v4, (a1 + 8));
    *(a1 + 128) = std::locale::use_facet(&v4, &std::codecvt<char,char,__mbstate_t>::id);
    std::locale::~locale(&v4);
    *(a1 + 402) = (*(**(a1 + 128) + 56))(*(a1 + 128));
  }

  (*(*a1 + 24))(a1, 0, 4096);
  return a1;
}

void sub_1922C76F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10->__locale_ = v11;
  std::locale::~locale(v10 + 1);
  _Unwind_Resume(a1);
}

double std::filebuf::basic_filebuf(uint64_t a1, uint64_t a2)
{
  v3 = std::streambuf::basic_streambuf(a1, a2);
  v4 = *(a2 + 64);
  if (v4 == a2 + 88)
  {
    v4 = v3 + 88;
    *(v3 + 64) = v3 + 88;
    v7 = *(a2 + 64);
    v5 = v3 + 88 + *(a2 + 72) - v7;
    v6 = v3 + 88 + *(a2 + 80) - v7;
  }

  else
  {
    *(v3 + 64) = v4;
    v5 = *(a2 + 72);
    v6 = *(a2 + 80);
  }

  *(v3 + 72) = v5;
  *(v3 + 80) = v6;
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 104) = v8;
  *(v3 + 112) = v9;
  *(v3 + 120) = *(a2 + 120);
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(v3 + 184) = *(a2 + 184);
  *(v3 + 168) = v12;
  *(v3 + 152) = v11;
  *(v3 + 136) = v10;
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  *(v3 + 248) = *(a2 + 248);
  *(v3 + 232) = v15;
  *(v3 + 216) = v14;
  *(v3 + 200) = v13;
  v16 = *(a2 + 344);
  v17 = *(a2 + 376);
  v18 = *(a2 + 328);
  *(v3 + 360) = *(a2 + 360);
  *(v3 + 376) = v17;
  *(v3 + 328) = v18;
  *(v3 + 344) = v16;
  v19 = *(a2 + 264);
  v20 = *(a2 + 280);
  v21 = *(a2 + 312);
  *(v3 + 296) = *(a2 + 296);
  *(v3 + 312) = v21;
  *(v3 + 264) = v19;
  *(v3 + 280) = v20;
  *(v3 + 392) = *(a2 + 392);
  *(v3 + 400) = *(a2 + 400);
  *(v3 + 401) = *(a2 + 401);
  v22 = *(a2 + 40);
  if (v22)
  {
    if (v22 == *(a2 + 104))
    {
      v4 = v8;
    }

    v23 = v4 + *(a2 + 56) - v22;
    *(v3 + 40) = v4;
    *(v3 + 48) = v4;
    *(v3 + 48) = v4 + *(a2 + 48) - *(a2 + 40);
    *(v3 + 56) = v23;
  }

  else
  {
    v24 = *(a2 + 16);
    if (v24)
    {
      v25 = *(a2 + 24) - v24;
      v26 = *(a2 + 32) - v24;
      if (v24 == *(a2 + 104))
      {
        v27 = v8 + v26;
        *(v3 + 16) = v8;
        *(v3 + 24) = v8 + v25;
      }

      else
      {
        v27 = v4 + v26;
        *(v3 + 16) = v4;
        *(v3 + 24) = v4 + v25;
      }

      *(v3 + 32) = v27;
    }
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  return result;
}

uint64_t std::filebuf::~filebuf(uint64_t a1)
{
  std::filebuf::close(a1);
  if (*(a1 + 400) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x193B0CA20](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 401) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      MEMORY[0x193B0CA20](v3, 0x1000C8077774924);
    }
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1922C79DC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922C7958);
}

FILE *std::filebuf::close(FILE *a1)
{
  base = a1->_lb._base;
  if (base)
  {
    v3 = (*(a1->_p + 6))(a1);
    if (fclose(base) | v3)
    {
      base = 0;
    }

    else
    {
      base = a1;
    }

    a1->_lb._base = 0;
    (*(a1->_p + 3))(a1, 0, 0);
  }

  return base;
}

void std::filebuf::~filebuf(uint64_t a1)
{
  std::filebuf::~filebuf(a1);

  JUMPOUT(0x193B0CA40);
}

void std::filebuf::swap(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  std::streambuf::swap(a1, a2);
  v4 = *(a1 + 64);
  v5 = (a1 + 88);
  v6 = *(a2 + 64);
  v7 = (a2 + 88);
  if (v4 != a1 + 88 && v6 != v7)
  {
    *(a1 + 64) = v6;
    *(a2 + 64) = v4;
    v11 = *(a1 + 72);
    *(a1 + 72) = *(a2 + 72);
    *(a2 + 72) = v11;
    v12 = *(a1 + 80);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_13;
  }

  v9 = vbicq_s8(vsubq_s64(*(a1 + 72), vdupq_n_s64(v4)), vceqzq_s64(*(a1 + 72)));
  v10 = vbicq_s8(vsubq_s64(*(a2 + 72), vdupq_n_s64(v6)), vceqzq_s64(*(a2 + 72)));
  if (v4 == v5)
  {
    if (v6 != v7)
    {
      *(a1 + 64) = v6;
      *(a2 + 64) = v7;
      *(a2 + 88) = *(a1 + 88);
      goto LABEL_12;
    }

LABEL_11:
    v13 = *v5;
    *v5 = *v7;
    *v7 = v13;
    goto LABEL_12;
  }

  if (v6 != v7)
  {
    goto LABEL_11;
  }

  *(a2 + 64) = v4;
  *(a1 + 64) = v5;
  *(a1 + 88) = *(a2 + 88);
LABEL_12:
  v14 = *(a1 + 64);
  *(a1 + 72) = v14 + v10.i64[0];
  *(a1 + 80) = v14 + v10.i64[1];
  v15 = *(a2 + 64);
  v16 = v15 + v9.i64[0];
  v12 = v15 + v9.i64[1];
  *(a2 + 72) = v16;
LABEL_13:
  *(a2 + 80) = v12;
  v17 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v17;
  v18 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v18;
  v19 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v19;
  v20 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v20;
  v21 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v21;
  v50 = *(a1 + 200);
  v52 = *(a1 + 216);
  v54 = *(a1 + 232);
  v56 = *(a1 + 248);
  v42 = *(a1 + 136);
  v44 = *(a1 + 152);
  v46 = *(a1 + 168);
  v48 = *(a1 + 184);
  v22 = *(a2 + 136);
  v23 = *(a2 + 152);
  v24 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v24;
  *(a1 + 152) = v23;
  *(a1 + 136) = v22;
  v25 = *(a2 + 248);
  v26 = *(a2 + 200);
  v27 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v27;
  *(a1 + 200) = v26;
  *(a1 + 248) = v25;
  *(a2 + 248) = v56;
  *(a2 + 200) = v50;
  *(a2 + 216) = v52;
  *(a2 + 232) = v54;
  *(a2 + 136) = v42;
  *(a2 + 152) = v44;
  *(a2 + 168) = v46;
  *(a2 + 184) = v48;
  v51 = *(a1 + 328);
  v53 = *(a1 + 344);
  v55 = *(a1 + 360);
  v57 = *(a1 + 376);
  v43 = *(a1 + 264);
  v45 = *(a1 + 280);
  v47 = *(a1 + 296);
  v49 = *(a1 + 312);
  v29 = *(a2 + 296);
  v28 = *(a2 + 312);
  v30 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v30;
  *(a1 + 296) = v29;
  *(a1 + 312) = v28;
  v31 = *(a2 + 328);
  v32 = *(a2 + 344);
  v33 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v33;
  *(a1 + 328) = v31;
  *(a1 + 344) = v32;
  *(a2 + 328) = v51;
  *(a2 + 344) = v53;
  *(a2 + 360) = v55;
  *(a2 + 376) = v57;
  *(a2 + 264) = v43;
  *(a2 + 280) = v45;
  *(a2 + 296) = v47;
  *(a2 + 312) = v49;
  LODWORD(v21) = *(a1 + 392);
  *(a1 + 392) = *(a2 + 392);
  *(a2 + 392) = v21;
  LODWORD(v21) = *(a1 + 396);
  *(a1 + 396) = *(a2 + 396);
  *(a2 + 396) = v21;
  LOBYTE(v21) = *(a1 + 400);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = v21;
  LOBYTE(v21) = *(a1 + 401);
  *(a1 + 401) = *(a2 + 401);
  *(a2 + 401) = v21;
  LOBYTE(v21) = *(a1 + 402);
  *(a1 + 402) = *(a2 + 402);
  *(a2 + 402) = v21;
  if (*(a1 + 16) == v7)
  {
    v36 = v5 + *(a1 + 24) - v7;
    v37 = v5 + *(a1 + 32) - v7;
    *(a1 + 16) = v5;
    *(a1 + 24) = v36;
    *(a1 + 32) = v37;
  }

  else if (*(a1 + 40) == v7)
  {
    v34 = v5 + *(a1 + 56) - v7;
    v35 = v5 + *(a1 + 48) - v7;
    *(a1 + 40) = v5;
    *(a1 + 48) = v35;
    *(a1 + 56) = v34;
  }

  if (*(a2 + 16) == v5)
  {
    v39 = v7 + *(a2 + 24) - v5;
    v40 = v7 + *(a2 + 32) - v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v39;
    *(a2 + 32) = v40;
  }

  else if (*(a2 + 40) == v5)
  {
    v38 = *(a2 + 48) - v5;
    *(a2 + 56) = v7 + *(a2 + 56) - v5;
    *(a2 + 40) = v7;
    *(a2 + 48) = v7 + v38;
  }

  v41 = *MEMORY[0x1E69E9840];
}

const char *std::filebuf::__make_mdstring(int a1)
{
  v1 = a1 & 0xFFFFFFFD;
  result = "w";
  if (v1 > 47)
  {
    if (v1 <= 83)
    {
      if (v1 > 55)
      {
        if (v1 == 56)
        {
          return "w+";
        }

        if (v1 == 60)
        {
          return "w+b";
        }

        if (v1 != 80)
        {
          return 0;
        }

        return "wx";
      }

      if (v1 == 48)
      {
        return result;
      }

      if (v1 == 52)
      {
        return "wb";
      }

      return 0;
    }

    if (v1 <= 115)
    {
      if (v1 != 84)
      {
        if (v1 == 112)
        {
          return "wx";
        }

        return 0;
      }
    }

    else if (v1 != 116)
    {
      if (v1 == 120)
      {
        return "w+x";
      }

      if (v1 == 124)
      {
        return "w+bx";
      }

      return 0;
    }

    return "wbx";
  }

  switch(v1)
  {
    case 1:
    case 17:
      result = "a";
      break;
    case 5:
    case 21:
      result = "ab";
      break;
    case 8:
      result = "r";
      break;
    case 9:
    case 25:
      result = "a+";
      break;
    case 12:
      result = "rb";
      break;
    case 13:
    case 29:
      result = "a+b";
      break;
    case 16:
      return result;
    case 20:
      return "wb";
    case 24:
      result = "r+";
      break;
    case 28:
      result = "r+b";
      break;
    default:
      return 0;
  }

  return result;
}

uint64_t std::filebuf::__do_open[abi:ne200100](uint64_t a1, FILE *a2, int a3)
{
  *(a1 + 120) = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  v4 = a1;
  *(a1 + 392) = a3;
  if (*(a1 + 396) == 34)
  {
    setbuf(a2, 0);
    *(v4 + 396) = 0;
  }

  if ((v3 & 2) != 0)
  {
    *(v4 + 396) = 0;
    if (fseek(*(v4 + 120), 0, 2))
    {
      fclose(*(v4 + 120));
      *(v4 + 120) = 0;
      return 0;
    }
  }

  return v4;
}

uint64_t std::filebuf::underflow(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 396);
  if ((v2 & 8) != 0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v3 = 104;
  if (*(a1 + 402))
  {
    v3 = 64;
  }

  v4 = 112;
  if (*(a1 + 402))
  {
    v4 = 96;
  }

  v5 = *(a1 + v3);
  v6 = (v5 + *(a1 + v4));
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 396) = 8;
  if (!v6)
  {
LABEL_11:
    v6 = &v36;
    *(a1 + 16) = &v35;
    *(a1 + 24) = &v36;
    *(a1 + 32) = &v36;
  }

LABEL_12:
  v8 = *(a1 + 32);
  if ((v2 & 8) != 0)
  {
    if ((&v8[-*(a1 + 16)] / 2) >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = &v8[-*(a1 + 16)] / 2;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v6 != v8)
  {
    result = *v6;
    goto LABEL_38;
  }

  memmove(*(a1 + 16), &v8[-v9], v9);
  if (*(a1 + 402) == 1)
  {
    v10 = fread((v9 + *(a1 + 16)), 1uLL, *(a1 + 32) - (v9 + *(a1 + 16)), *(a1 + 120));
    if (v10)
    {
      v11 = (*(a1 + 16) + v9);
      v12 = &v11[v10];
LABEL_36:
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      result = *v11;
      goto LABEL_38;
    }
  }

  else
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v14 == v13)
    {
      v15 = *(a1 + 80);
    }

    else
    {
      memmove(*(a1 + 64), v13, v14 - v13);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
    }

    v16 = *(a1 + 64);
    v17 = v15 - v14;
    v18 = (v16 + v17);
    *(a1 + 72) = v16 + v17;
    if (v16 == a1 + 88)
    {
      v19 = 8;
    }

    else
    {
      v19 = *(a1 + 96);
    }

    *(a1 + 80) = v16 + v19;
    v20 = v19 - v17;
    v21 = *(a1 + 120);
    if (v20 >= *(a1 + 112) - v9)
    {
      v22 = *(a1 + 112) - v9;
    }

    else
    {
      v22 = v20;
    }

    v23 = *(a1 + 216);
    *(a1 + 328) = *(a1 + 200);
    *(a1 + 344) = v23;
    v24 = *(a1 + 248);
    *(a1 + 360) = *(a1 + 232);
    *(a1 + 376) = v24;
    v25 = *(a1 + 152);
    *(a1 + 264) = *(a1 + 136);
    *(a1 + 280) = v25;
    v26 = *(a1 + 184);
    *(a1 + 296) = *(a1 + 168);
    *(a1 + 312) = v26;
    v27 = fread(v18, 1uLL, v22, v21);
    if (v27)
    {
      v28 = v27;
      v29 = *(a1 + 128);
      if (!v29)
      {
        std::__throw_bad_cast[abi:ne200100]();
      }

      v30 = *(a1 + 64);
      *(a1 + 80) = *(a1 + 72) + v28;
      v31 = *(a1 + 16) + *(a1 + 112);
      if ((*(*v29 + 32))(v29, a1 + 136, v30) == 3)
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 80);
        *(a1 + 16) = v11;
        goto LABEL_36;
      }

      v12 = v34;
      v11 = (*(a1 + 16) + v9);
      if (v34 != v11)
      {
        goto LABEL_36;
      }
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_38:
  v33 = *(a1 + 16);
  v32 = (a1 + 16);
  if (v33 == &v35)
  {
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  return result;
}

BOOL std::filebuf::__read_mode(uint64_t a1)
{
  v1 = *(a1 + 396);
  if ((v1 & 8) == 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v2 = 104;
    if (*(a1 + 402))
    {
      v2 = 64;
    }

    v3 = 112;
    if (*(a1 + 402))
    {
      v3 = 96;
    }

    v4 = *(a1 + v2);
    v5 = v4 + *(a1 + v3);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
    *(a1 + 396) = 8;
  }

  return (v1 & 8) == 0;
}

void std::__throw_bad_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5640], MEMORY[0x1E69E5620]);
}

uint64_t std::filebuf::pbackfail(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 24);
  if (*(a1 + 16) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v2 - 1;
    return a2;
  }

  if ((*(a1 + 392) & 0x10) == 0 && *(v2 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v2 - 1;
  *(v2 - 1) = a2;
  return a2;
}

uint64_t std::filebuf::overflow(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  std::filebuf::__write_mode(a1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  if (a2 == -1)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    if (!v4)
    {
      v4 = &v20;
      *(a1 + 40) = &v20;
      *(a1 + 48) = &v20;
      *(a1 + 56) = &v21;
    }

    *v4 = a2;
    v7 = *(a1 + 40);
    v4 = (*(a1 + 48) + 1);
    *(a1 + 48) = v4;
  }

  v8 = v4 - v7;
  if (v4 == v7)
  {
    goto LABEL_12;
  }

  if (*(a1 + 402) != 1)
  {
    v19 = *(a1 + 64);
    while (1)
    {
      v12 = *(a1 + 128);
      if (!v12)
      {
        std::__throw_bad_cast[abi:ne200100]();
      }

      v13 = *(a1 + 64);
      v14 = *(a1 + 96);
      v15 = (*(*v12 + 24))(v12, a1 + 136);
      v10 = *(a1 + 40);
      if (v18 == v10)
      {
        return 0xFFFFFFFFLL;
      }

      if (v15 == 3)
      {
        v8 = *(a1 + 48) - v10;
        v9 = *(a1 + 120);
        goto LABEL_10;
      }

      if (v15 > 1)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = *(a1 + 64);
      if (fwrite(v16, 1uLL, v19 - v16, *(a1 + 120)) != v19 - v16)
      {
        return 0xFFFFFFFFLL;
      }

      if (v15 != 1)
      {
        goto LABEL_11;
      }

      v17 = *(a1 + 48);
      *(a1 + 40) = v18;
      *(a1 + 56) = v17;
    }
  }

  v9 = *(a1 + 120);
  v10 = v7;
LABEL_10:
  if (fwrite(v10, 1uLL, v8, v9) != v8)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_11:
  *(a1 + 40) = v6;
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
LABEL_12:
  if (a2 == -1)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

uint64_t std::filebuf::__write_mode(uint64_t result)
{
  if ((*(result + 396) & 0x10) == 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v1 = *(result + 96);
    if (v1 < 9)
    {
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
    }

    else if (*(result + 402) == 1)
    {
      v2 = *(result + 64);
      *(result + 40) = v2;
      *(result + 48) = v2;
      *(result + 56) = v2 + v1 - 1;
    }

    else
    {
      v3 = *(result + 104);
      v4 = v3 + *(result + 112) - 1;
      *(result + 40) = v3;
      *(result + 48) = v3;
      *(result + 56) = v4;
    }

    *(result + 396) = 16;
  }

  return result;
}

uint64_t std::filebuf::setbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  std::filebuf::__request_unbuffered_mode[abi:ne200100](a1, a2, a3);
  if (*(a1 + 400) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      MEMORY[0x193B0CA20](v6, 0x1000C8077774924);
    }
  }

  if (*(a1 + 401) == 1)
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      MEMORY[0x193B0CA20](v7, 0x1000C8077774924);
    }
  }

  *(a1 + 96) = a3;
  if (a3 < 9)
  {
    *(a1 + 64) = a1 + 88;
    *(a1 + 96) = 8;
  }

  else
  {
    if (!a2 || (*(a1 + 402) & 1) == 0)
    {
      operator new[]();
    }

    *(a1 + 64) = a2;
  }

  *(a1 + 400) = 0;
  if (*(a1 + 402))
  {
    *(a1 + 401) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  else
  {
    if (a3 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = a3;
    }

    *(a1 + 112) = v8;
    if (!a2 || a3 < 9)
    {
      operator new[]();
    }

    *(a1 + 104) = a2;
    *(a1 + 401) = 0;
  }

  return a1;
}

void std::filebuf::__request_unbuffered_mode[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 && !a2 && *(a1 + 396) == 32)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      setbuf(v4, 0);
      v5 = 0;
    }

    else
    {
      v5 = 34;
    }

    *(a1 + 396) = v5;
  }
}

__n128 std::filebuf::seekoff@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 128);
  if (!v5)
  {
    std::__throw_bad_cast[abi:ne200100]();
  }

  v9 = (*(*v5 + 48))(v5);
  if (!*(a1 + 120) || (v11 = v9, a2) && v9 < 1 || (*(*a1 + 48))(a1) || a3 >= 3 || (v11 <= 0 ? (v12 = 0) : (v12 = v11 * a2), fseeko(*(a1 + 120), v12, a3)))
  {
    result.n128_u64[0] = 0;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 128) = -1;
  }

  else
  {
    *(a4 + 128) = ftello(*(a1 + 120));
    v13 = *(a1 + 216);
    *(a4 + 64) = *(a1 + 200);
    *(a4 + 80) = v13;
    v14 = *(a1 + 248);
    *(a4 + 96) = *(a1 + 232);
    *(a4 + 112) = v14;
    v15 = *(a1 + 152);
    *a4 = *(a1 + 136);
    *(a4 + 16) = v15;
    result = *(a1 + 168);
    v16 = *(a1 + 184);
    *(a4 + 32) = result;
    *(a4 + 48) = v16;
  }

  return result;
}

__n128 std::filebuf::seekpos@<Q0>(FILE **a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[15] || ((*a1)->_cookie)(a1) || fseeko(a1[15], a2[8].n128_i64[0], 0))
  {
    result.n128_u64[0] = 0;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 128) = -1;
  }

  else
  {
    memmove(a1 + 17, a2, 0x80uLL);
    v7 = a2[7];
    *(a3 + 96) = a2[6];
    *(a3 + 112) = v7;
    *(a3 + 128) = a2[8].n128_u64[0];
    v8 = a2[3];
    *(a3 + 32) = a2[2];
    *(a3 + 48) = v8;
    v9 = a2[5];
    *(a3 + 64) = a2[4];
    *(a3 + 80) = v9;
    result = a2[1];
    *a3 = *a2;
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t std::filebuf::sync(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 120))
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    std::__throw_bad_cast[abi:ne200100]();
  }

  v3 = *(a1 + 396);
  if ((v3 & 0x10) != 0)
  {
    if (*(a1 + 48) == *(a1 + 40) || (v4 = 0xFFFFFFFFLL, (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1))
    {
      while (1)
      {
        v5 = (*(**(a1 + 128) + 40))(*(a1 + 128), a1 + 136, *(a1 + 64), *(a1 + 64) + *(a1 + 96), &v24);
        v6 = *(a1 + 64);
        v7 = v24 - v6;
        if (fwrite(v6, 1uLL, v24 - v6, *(a1 + 120)) != v7)
        {
          goto LABEL_21;
        }

        if (v5 != 1)
        {
          if (v5 == 2 || fflush(*(a1 + 120)))
          {
            goto LABEL_21;
          }

          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
LABEL_5:
      v4 = 0;
      goto LABEL_22;
    }

    v8 = *(a1 + 344);
    v28 = *(a1 + 328);
    v29 = v8;
    v9 = *(a1 + 376);
    v30 = *(a1 + 360);
    v31 = v9;
    v10 = *(a1 + 280);
    v24 = *(a1 + 264);
    v25 = v10;
    v11 = *(a1 + 312);
    v26 = *(a1 + 296);
    v27 = v11;
    if (*(a1 + 402) == 1)
    {
      v12 = 0;
      v13 = *(a1 + 32) - *(a1 + 24);
    }

    else
    {
      v14 = (*(*v2 + 48))(v2);
      v13 = *(a1 + 80) - *(a1 + 72);
      if (v14 < 1)
      {
        v15 = *(a1 + 24);
        if (v15 == *(a1 + 32))
        {
          v12 = 0;
        }

        else
        {
          v16 = v15 - *(a1 + 16);
          v13 = v13 + *(a1 + 72) - (*(a1 + 64) + (*(**(a1 + 128) + 64))(*(a1 + 128), &v24, *(a1 + 64)));
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
        v13 += (*(a1 + 32) - *(a1 + 24)) * v14;
      }
    }

    if (fseeko(*(a1 + 120), -v13, 1))
    {
LABEL_21:
      v4 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    if (v12)
    {
      v19 = v29;
      *(a1 + 200) = v28;
      *(a1 + 216) = v19;
      v20 = v31;
      *(a1 + 232) = v30;
      *(a1 + 248) = v20;
      v21 = v25;
      *(a1 + 136) = v24;
      *(a1 + 152) = v21;
      v22 = v27;
      *(a1 + 168) = v26;
      *(a1 + 184) = v22;
    }

    v4 = 0;
    v23 = *(a1 + 64);
    *(a1 + 72) = v23;
    *(a1 + 80) = v23;
    *(a1 + 396) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t std::filebuf::imbue(uint64_t a1, const std::locale *a2)
{
  (*(*a1 + 48))(a1);
  v4 = std::locale::use_facet(a2, &std::codecvt<char,char,__mbstate_t>::id);
  *(a1 + 128) = v4;
  LODWORD(a2) = *(a1 + 402);
  result = (v4->__vftable[2].~facet_0)(v4);
  *(a1 + 402) = result;
  if (a2 != result)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
    if (!result)
    {
      if ((*(a1 + 400) & 1) == 0)
      {
        v7 = *(a1 + 64);
        if (v7 != a1 + 88)
        {
          v8 = *(a1 + 96);
          *(a1 + 104) = v7;
          *(a1 + 112) = v8;
          *(a1 + 401) = 0;
          operator new[]();
        }
      }

      *(a1 + 112) = *(a1 + 96);
      operator new[]();
    }

    if (*(a1 + 400))
    {
      result = *(a1 + 64);
      if (result)
      {
        result = MEMORY[0x193B0CA20](result, 0x1000C8077774924);
      }
    }

    *(a1 + 400) = *(a1 + 401);
    v6 = *(a1 + 112);
    *(a1 + 64) = *(a1 + 104);
    *(a1 + 401) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = v6;
  }

  return result;
}

uint64_t std::stringbuf::~stringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void std::stringbuf::~stringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 8));

  JUMPOUT(0x193B0CA40);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = (a1 + 128);
  if (*(a1 + 111) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 32));
  std::ios_base::~ios_base(v2);
  return a1;
}

void std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = (a1 + 128);
  if (*(a1 + 111) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 32));
  std::ios_base::~ios_base(v2);

  JUMPOUT(0x193B0CA40);
}

void non-virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = (a1 + 112);
  if (*(a1 + 95) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 16));

  std::ios_base::~ios_base(v2);
}

{
  v2 = (a1 + 112);
  if (*(a1 + 95) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 16));
  std::ios_base::~ios_base(v2);

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  if (v1[111] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 4);

  std::ios_base::~ios_base((v1 + 128));
}

{
  v1 = a1 + *(*a1 - 24);
  if (v1[111] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 4);
  std::ios_base::~ios_base((v1 + 128));

  JUMPOUT(0x193B0CA40);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = (a1 + 112);
  if (*(a1 + 95) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 16));
  std::ios_base::~ios_base(v2);
  return a1;
}

void std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = (a1 + 112);
  if (*(a1 + 95) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 16));
  std::ios_base::~ios_base(v2);

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::ostringstream::~ostringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  if (v1[95] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 9), *(v1 + 11) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 2);

  std::ios_base::~ios_base((v1 + 112));
}

{
  v1 = a1 + *(*a1 - 24);
  if (v1[95] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 9), *(v1 + 11) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 2);
  std::ios_base::~ios_base((v1 + 112));

  JUMPOUT(0x193B0CA40);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = (a1 + 120);
  if (*(a1 + 103) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 80), *(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 24));
  std::ios_base::~ios_base(v2);
  return a1;
}

void std::istringstream::~istringstream(uint64_t a1)
{
  v2 = (a1 + 120);
  if (*(a1 + 103) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 80), *(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale((a1 + 24));
  std::ios_base::~ios_base(v2);

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::istringstream::~istringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  if (v1[103] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 10), *(v1 + 12) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 3);

  std::ios_base::~ios_base((v1 + 120));
}

{
  v1 = a1 + *(*a1 - 24);
  if (v1[103] < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 10), *(v1 + 12) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::locale::~locale(v1 + 3);
  std::ios_base::~ios_base((v1 + 120));

  JUMPOUT(0x193B0CA40);
}

void (__cdecl ***std::ifstream::~ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  v2 = (a1 + 53);
  std::filebuf::~filebuf((a1 + 2));
  std::ios_base::~ios_base(v2);
  return a1;
}

void std::ifstream::~ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this))
{
  v1 = (a1 + 53);
  std::filebuf::~filebuf((a1 + 2));
  std::ios_base::~ios_base(v1);

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::ifstream::~ifstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = (v1 + 53);
  std::filebuf::~filebuf((v1 + 2));

  std::ios_base::~ios_base(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  std::filebuf::~filebuf((v1 + 16));
  std::ios_base::~ios_base((v1 + 424));

  JUMPOUT(0x193B0CA40);
}

void (__cdecl ***std::ofstream::~ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  v2 = (a1 + 52);
  std::filebuf::~filebuf((a1 + 1));
  std::ios_base::~ios_base(v2);
  return a1;
}

void std::ofstream::~ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this))
{
  v1 = (a1 + 52);
  std::filebuf::~filebuf((a1 + 1));
  std::ios_base::~ios_base(v1);

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::ofstream::~ofstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = (v1 + 52);
  std::filebuf::~filebuf((v1 + 1));

  std::ios_base::~ios_base(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  std::filebuf::~filebuf((v1 + 8));
  std::ios_base::~ios_base((v1 + 416));

  JUMPOUT(0x193B0CA40);
}

BOOL std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

BOOL std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = v2[3];
    if (v3 == v2[4])
    {
      v4 = (*(*v2 + 72))(v2);
    }

    else
    {
      v4 = *v3;
    }

    if (v4 != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

std::DoIOSInit *std::DoIOSInit::DoIOSInit(std::DoIOSInit *this)
{
  v2 = MEMORY[0x1E69E9850];
  std::__stdinbuf<char>::__stdinbuf(&std::__cin, *MEMORY[0x1E69E9850], &std::mb_cin);
  qword_1ED408840 = 0;
  std::cin.__gc_ = 0;
  std::ios_base::init(&qword_1ED408810, &std::__cin);
  qword_1ED408898 = 0;
  dword_1ED4088A0 = -1;
  v3 = MEMORY[0x1E69E9858];
  std::__stdoutbuf<char>::__stdoutbuf(&std::__cout, *MEMORY[0x1E69E9858], &std::mb_cout);
  qword_1ED408988 = 0;
  std::ios_base::init(&qword_1ED408958, &std::__cout);
  qword_1ED4089E0 = 0;
  dword_1ED4089E8 = -1;
  v4 = MEMORY[0x1E69E9848];
  std::__stdoutbuf<char>::__stdoutbuf(&std::__cerr, *MEMORY[0x1E69E9848], &std::mb_cerr);
  qword_1ED408AC8 = 0;
  std::ios_base::init(&qword_1ED408A98, &std::__cerr);
  qword_1ED408B20 = 0;
  dword_1ED408B28 = -1;
  v5 = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 40);
  qword_1ED408C08 = 0;
  std::ios_base::init(&qword_1ED408BD8, v5);
  qword_1ED408C60 = 0;
  dword_1ED408C68 = -1;
  *(&std::cin + std::cin.__vftable[-2].~basic_istream_0 + 136) = &std::cout;
  v6 = std::cerr.__vftable;
  *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) |= 0x2000u;
  *(&std::cerr + v6[-2].~basic_ostream_0 + 136) = &std::cout;
  std::__stdinbuf<wchar_t>::__stdinbuf(&std::__wcin, *v2, &std::mb_wcin);
  qword_1ED4088E8 = 0;
  std::wcin.__gc_ = 0;
  std::ios_base::init(&qword_1ED4088B8, &std::__wcin);
  qword_1ED408940 = 0;
  dword_1ED408948 = -1;
  std::__stdoutbuf<wchar_t>::__stdoutbuf(&std::__wcout, *v3, &std::mb_wcout);
  qword_1ED408A28 = 0;
  std::ios_base::init(&qword_1ED4089F8, &std::__wcout);
  qword_1ED408A80 = 0;
  dword_1ED408A88 = -1;
  std::__stdoutbuf<wchar_t>::__stdoutbuf(&std::__wcerr, *v4, &std::mb_wcerr);
  qword_1ED408B68 = 0;
  std::ios_base::init(&qword_1ED408B38, &std::__wcerr);
  qword_1ED408BC0 = 0;
  dword_1ED408BC8 = -1;
  v7 = *(&std::wcerr + std::wcerr.__vftable[-2].~basic_ostream_0 + 40);
  qword_1ED408CA8 = 0;
  std::ios_base::init(&qword_1ED408C78, v7);
  qword_1ED408D00 = 0;
  dword_1ED408D08 = -1;
  *(&std::wcin + std::wcin.__vftable[-2].~basic_istream_0 + 136) = &std::wcout;
  v8 = std::wcerr.__vftable;
  *(&std::wcerr + std::wcerr.__vftable[-2].~basic_ostream_0 + 8) |= 0x2000u;
  *(&std::wcerr + v8[-2].~basic_ostream_0 + 136) = &std::wcout;
  return this;
}

void std::DoIOSInit::~DoIOSInit(std::DoIOSInit *this, uint64_t a2)
{
  std::ostream::flush(&std::cout, a2);
  std::ostream::flush(&std::clog, v2);
  std::wostream::flush(&std::wcout, v3);
  std::wostream::flush(&std::wclog, v4);
}

std::ios_base::Init *__cdecl std::ios_base::Init::Init(std::ios_base::Init *this)
{
  {
    std::DoIOSInit::DoIOSInit(&std::ios_base::Init::Init(void)::init_the_streams);
    __cxa_atexit(std::DoIOSInit::~DoIOSInit, &std::ios_base::Init::Init(void)::init_the_streams, &dword_192293000);
  }

  return this;
}

uint64_t std::__stdinbuf<char>::__stdinbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F06C12C8;
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
  *(a1 + 92) = -1;
  *(a1 + 96) = 0;
  std::locale::locale(&v7, (a1 + 8));
  (*(*a1 + 16))(a1, &v7);
  std::locale::~locale(&v7);
  return a1;
}

void sub_1922CA8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10->__locale_ = v11;
  std::locale::~locale(v10 + 1);
  _Unwind_Resume(a1);
}

std::locale *std::__stdinbuf<char>::~__stdinbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::__stdinbuf<char>::~__stdinbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::__stdinbuf<char>::imbue(uint64_t a1, std::locale *this)
{
  v3 = std::locale::use_facet(this, &std::codecvt<char,char,__mbstate_t>::id);
  *(a1 + 72) = v3;
  *(a1 + 88) = (v3->__vftable[2].~facet)(v3);
  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  *(a1 + 97) = result;
  if (*(a1 + 88) >= 9)
  {
    std::__throw_runtime_error("unsupported locale for standard input");
  }

  return result;
}

uint64_t std::__stdinbuf<char>::pbackfail(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      v3 = *(a1 + 92);
      v5 = v3 != -1;
LABEL_16:
      *(a1 + 96) = v5;
      goto LABEL_17;
    }
  }

  else
  {
    v3 = a2;
    v4 = *(a1 + 96);
    if (*(a1 + 97))
    {
      if ((*(a1 + 96) & 1) != 0 && ungetc(*(a1 + 92), *(a1 + 64)) == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_15:
      *(a1 + 92) = v3;
      v5 = 1;
      goto LABEL_16;
    }

    v11 = *(a1 + 92);
    v6 = (*(**(a1 + 72) + 24))(*(a1 + 72), *(a1 + 80), &v11, &v12, v10, &v13, &v15, &v12);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        v13 = *(a1 + 92);
        v12 = v14;
      }

      do
      {
        v7 = v12;
        if (v12 <= &v13)
        {
          goto LABEL_15;
        }

        --v12;
      }

      while (ungetc(*(v7 - 1), *(a1 + 64)) != -1);
    }
  }

LABEL_14:
  v3 = 0xFFFFFFFFLL;
LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t std::__stdinbuf<char>::__getchar(uint64_t a1, int a2)
{
  v2 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 92);
    if (a2)
    {
      *(a1 + 92) = -1;
      *(a1 + 96) = 0;
    }

    goto LABEL_29;
  }

  if (*(a1 + 97) != 1)
  {
    v6 = 0;
    v7 = *(a1 + 88);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = getc(*(a1 + 64));
      if (v9 == -1)
      {
        goto LABEL_28;
      }

      v30[v6++] = v9;
      if (v8 == v6)
      {
        while (1)
        {
          v10 = *(a1 + 72);
          v11 = *(a1 + 80);
          v26 = v11[4];
          v27 = v11[5];
          v28 = v11[6];
          v29 = v11[7];
          v22 = *v11;
          v23 = v11[1];
          v24 = v11[2];
          v25 = v11[3];
          v12 = (*(*v10 + 32))(v10);
          if (v12 != 1)
          {
            break;
          }

          v13 = *(a1 + 80);
          v13[4] = v26;
          v13[5] = v27;
          v14 = v29;
          v13[6] = v28;
          v13[7] = v14;
          *v13 = v22;
          v13[1] = v23;
          v13[2] = v24;
          v13[3] = v25;
          if (v8 == 8)
          {
            goto LABEL_28;
          }

          v15 = getc(*(a1 + 64));
          if (v15 == -1)
          {
            goto LABEL_28;
          }

          v30[v8++] = v15;
        }

        if (v12 == 2)
        {
          goto LABEL_28;
        }

        if (v12 == 3)
        {
          v21 = v30[0];
        }

        if (v2)
        {
          v4 = v21;
          goto LABEL_24;
        }

        v16 = v8;
        while (1)
        {
          v17 = v16 - 1;
          if (v16 < 1)
          {
            break;
          }

          v18 = ungetc(v30[v16 - 1], *(a1 + 64));
          v16 = v17;
          if (v18 == -1)
          {
            goto LABEL_28;
          }
        }

        v4 = v21;
        goto LABEL_29;
      }
    }
  }

  v5 = getc(*(a1 + 64));
  if (v5 == -1)
  {
LABEL_28:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v4 = v5;
  if (v2)
  {
LABEL_24:
    *(a1 + 92) = v4;
  }

  else if (ungetc(v5, *(a1 + 64)) == -1)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t std::__stdoutbuf<char>::__stdoutbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F06C1360;
  *(a1 + 64) = a2;
  std::locale::locale(&v8, (a1 + 8));
  v6 = std::locale::use_facet(&v8, &std::codecvt<char,char,__mbstate_t>::id);
  std::locale::~locale(&v8);
  *(a1 + 72) = v6;
  *(a1 + 80) = a3;
  *(a1 + 88) = (v6->__vftable[2].~facet_0)(v6);
  return a1;
}

void sub_1922CAE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10->__locale_ = v11;
  std::locale::~locale(v10 + 1);
  _Unwind_Resume(a1);
}

std::locale *std::__stdoutbuf<char>::~__stdoutbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::__stdoutbuf<char>::~__stdoutbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::__stdoutbuf<char>::imbue(uint64_t a1, const std::locale *a2)
{
  (*(*a1 + 48))(a1);
  v4 = std::locale::use_facet(a2, &std::codecvt<char,char,__mbstate_t>::id);
  *(a1 + 72) = v4;
  result = (v4->__vftable[2].~facet_0)(v4);
  *(a1 + 88) = result;
  return result;
}

uint64_t std::__stdoutbuf<char>::sync(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  do
  {
    v2 = (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 80), __ptr, &v8, &v6);
    v3 = v6 - __ptr;
    if (fwrite(__ptr, 1uLL, v6 - __ptr, *(a1 + 64)) != v3)
    {
      goto LABEL_5;
    }
  }

  while (v2 == 1);
  if (v2 == 2)
  {
LABEL_5:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (fflush(*(a1 + 64)))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

size_t std::__stdoutbuf<char>::xsputn(uint64_t a1, unsigned __int8 *__ptr, int64_t __nitems)
{
  if (*(a1 + 88))
  {
    v6 = *(a1 + 64);

    return fwrite(__ptr, 1uLL, __nitems, v6);
  }

  else
  {
    if (__nitems < 1)
    {
      return 0;
    }

    v8 = 0;
    while ((*(*a1 + 104))(a1, __ptr[v8]) != -1)
    {
      if (__nitems == ++v8)
      {
        return __nitems;
      }
    }

    return v8;
  }
}

uint64_t std::__stdoutbuf<char>::overflow(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v2 = 0;
    goto LABEL_7;
  }

  v2 = a2;
  v14 = a2;
  if (*(a1 + 88) != 1)
  {
    v13 = __ptr;
    v8 = &v14;
    while (1)
    {
      v9 = (*(**(a1 + 72) + 24))(*(a1 + 72), *(a1 + 80), v8, __ptr, &v12, __ptr, &v16, &v13);
      if (v12 == v8)
      {
        goto LABEL_5;
      }

      v10 = v9;
      if (v9 == 3)
      {
        v4 = *(a1 + 64);
        v5 = v8;
        goto LABEL_4;
      }

      if (v9 > 1)
      {
        goto LABEL_5;
      }

      v11 = v13 - __ptr;
      if (fwrite(__ptr, 1uLL, v13 - __ptr, *(a1 + 64)) != v11)
      {
        goto LABEL_5;
      }

      v8 = v12;
      if (v10 != 1)
      {
        goto LABEL_7;
      }
    }
  }

  v4 = *(a1 + 64);
  __ptr[0] = a2;
  v5 = __ptr;
LABEL_4:
  if (fwrite(v5, 1uLL, 1uLL, v4) != 1)
  {
LABEL_5:
    v2 = 0xFFFFFFFFLL;
  }

LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t std::__stdinbuf<wchar_t>::__stdinbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F06C13F8;
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
  *(a1 + 92) = -1;
  *(a1 + 96) = 0;
  std::locale::locale(&v7, (a1 + 8));
  (*(*a1 + 16))(a1, &v7);
  std::locale::~locale(&v7);
  return a1;
}

void sub_1922CB3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10->__locale_ = v11;
  std::locale::~locale(v10 + 1);
  _Unwind_Resume(a1);
}

std::locale *std::__stdinbuf<wchar_t>::~__stdinbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::__stdinbuf<wchar_t>::~__stdinbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::__stdinbuf<wchar_t>::imbue(uint64_t a1, std::locale *this)
{
  v3 = std::locale::use_facet(this, &std::codecvt<wchar_t,char,__mbstate_t>::id);
  *(a1 + 72) = v3;
  *(a1 + 88) = (v3->__vftable[2].~facet)(v3);
  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  *(a1 + 97) = result;
  if (*(a1 + 88) >= 9)
  {
    std::__throw_runtime_error("unsupported locale for standard input");
  }

  return result;
}

uint64_t std::__stdinbuf<wchar_t>::pbackfail(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      v3 = *(a1 + 92);
      v5 = v3 != -1;
LABEL_16:
      *(a1 + 96) = v5;
      goto LABEL_17;
    }
  }

  else
  {
    v3 = a2;
    v4 = *(a1 + 96);
    if (*(a1 + 97))
    {
      if ((*(a1 + 96) & 1) != 0 && ungetwc(*(a1 + 92), *(a1 + 64)) == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_15:
      *(a1 + 92) = v3;
      v5 = 1;
      goto LABEL_16;
    }

    v11 = *(a1 + 92);
    v6 = (*(**(a1 + 72) + 24))(*(a1 + 72), *(a1 + 80), &v11, &v12, v10, &v13, &v15, &v12);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        v13 = *(a1 + 92);
        v12 = v14;
      }

      do
      {
        v7 = v12;
        if (v12 <= &v13)
        {
          goto LABEL_15;
        }

        --v12;
      }

      while (ungetc(*(v7 - 1), *(a1 + 64)) != -1);
    }
  }

LABEL_14:
  v3 = 0xFFFFFFFFLL;
LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t std::__stdinbuf<wchar_t>::__getchar(uint64_t a1, int a2)
{
  v2 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 92);
    if (a2)
    {
      *(a1 + 92) = -1;
      *(a1 + 96) = 0;
    }
  }

  else if (*(a1 + 97) == 1)
  {
    v5 = getwc(*(a1 + 64));
    v4 = v5;
    if (v5 != -1)
    {
      if (v2)
      {
LABEL_24:
        *(a1 + 92) = v4;
      }

      else if (ungetwc(v5, *(a1 + 64)) == -1)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v4;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 88);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = getc(*(a1 + 64));
      if (v9 == -1)
      {
        goto LABEL_28;
      }

      v30[v6++] = v9;
    }

    while (v8 != v6);
    while (1)
    {
      v10 = *(a1 + 72);
      v11 = *(a1 + 80);
      v26 = v11[4];
      v27 = v11[5];
      v28 = v11[6];
      v29 = v11[7];
      v22 = *v11;
      v23 = v11[1];
      v24 = v11[2];
      v25 = v11[3];
      v12 = (*(*v10 + 32))(v10);
      if (v12 != 1)
      {
        break;
      }

      v13 = *(a1 + 80);
      v13[4] = v26;
      v13[5] = v27;
      v14 = v29;
      v13[6] = v28;
      v13[7] = v14;
      *v13 = v22;
      v13[1] = v23;
      v13[2] = v24;
      v13[3] = v25;
      if (v8 == 8)
      {
        goto LABEL_28;
      }

      v15 = getc(*(a1 + 64));
      if (v15 == -1)
      {
        goto LABEL_28;
      }

      v30[v8++] = v15;
    }

    if (v12 == 2)
    {
LABEL_28:
      v4 = 0xFFFFFFFFLL;
      goto LABEL_29;
    }

    if (v12 == 3)
    {
      v21 = v30[0];
    }

    if (v2)
    {
      v4 = v21;
      goto LABEL_24;
    }

    v16 = v8;
    while (1)
    {
      v17 = v16 - 1;
      if (v16 < 1)
      {
        break;
      }

      v18 = ungetc(v30[v16 - 1], *(a1 + 64));
      v16 = v17;
      if (v18 == -1)
      {
        goto LABEL_28;
      }
    }

    v4 = v21;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t std::__stdoutbuf<wchar_t>::__stdoutbuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F06C1490;
  *(a1 + 64) = a2;
  std::locale::locale(&v8, (a1 + 8));
  v6 = std::locale::use_facet(&v8, &std::codecvt<wchar_t,char,__mbstate_t>::id);
  std::locale::~locale(&v8);
  *(a1 + 72) = v6;
  *(a1 + 80) = a3;
  *(a1 + 88) = (v6->__vftable[2].~facet_0)(v6);
  return a1;
}

void sub_1922CB98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10->__locale_ = v11;
  std::locale::~locale(v10 + 1);
  _Unwind_Resume(a1);
}

std::locale *std::__stdoutbuf<wchar_t>::~__stdoutbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::__stdoutbuf<wchar_t>::~__stdoutbuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::__stdoutbuf<wchar_t>::imbue(uint64_t a1, const std::locale *a2)
{
  (*(*a1 + 48))(a1);
  v4 = std::locale::use_facet(a2, &std::codecvt<wchar_t,char,__mbstate_t>::id);
  *(a1 + 72) = v4;
  result = (v4->__vftable[2].~facet_0)(v4);
  *(a1 + 88) = result;
  return result;
}

uint64_t std::__stdoutbuf<wchar_t>::sync(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  do
  {
    v2 = (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 80), __ptr, &v8, &v6);
    v3 = v6 - __ptr;
    if (fwrite(__ptr, 1uLL, v6 - __ptr, *(a1 + 64)) != v3)
    {
      goto LABEL_5;
    }
  }

  while (v2 == 1);
  if (v2 == 2)
  {
LABEL_5:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (fflush(*(a1 + 64)))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

size_t std::__stdoutbuf<wchar_t>::xsputn(uint64_t a1, unsigned int *__ptr, int64_t __nitems)
{
  if (*(a1 + 88))
  {
    v6 = *(a1 + 64);

    return fwrite(__ptr, 4uLL, __nitems, v6);
  }

  else
  {
    if (__nitems < 1)
    {
      return 0;
    }

    v8 = 0;
    while ((*(*a1 + 104))(a1, __ptr[v8]) != -1)
    {
      if (__nitems == ++v8)
      {
        return __nitems;
      }
    }

    return v8;
  }
}

uint64_t std::__stdoutbuf<wchar_t>::overflow(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
    v12 = a2;
    if (*(a1 + 88) != 1)
    {
      v11 = __ptr;
      v4 = &v12;
      while (1)
      {
        v5 = (*(**(a1 + 72) + 24))(*(a1 + 72), *(a1 + 80), v4, __ptr, &v10, __ptr, &v14, &v11);
        if (v10 == v4)
        {
          goto LABEL_14;
        }

        v6 = v5;
        if (v5 == 3)
        {
          if (fwrite(v4, 1uLL, 1uLL, *(a1 + 64)) == 1)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (v5 > 1)
        {
          goto LABEL_14;
        }

        v7 = v11 - __ptr;
        if (fwrite(__ptr, 1uLL, v11 - __ptr, *(a1 + 64)) != v7)
        {
          goto LABEL_14;
        }

        v4 = v10;
        if (v6 != 1)
        {
          goto LABEL_15;
        }
      }
    }

    if (fputwc(a2, *(a1 + 64)) == -1)
    {
LABEL_14:
      v2 = 0xFFFFFFFFLL;
    }
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t global constructor keyed to_000100_0()
{
  std::ios_base::Init::Init(&std::__start_std_streams);

  return __cxa_atexit(std::ios_base::Init::~Init, &std::__start_std_streams, &dword_192293000);
}

void std::collate<char>::~collate(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::collate<char>::do_compare(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a4 == a5)
  {
    return a2 != a3;
  }

  v5 = &a2[a5 - a4];
  while (1)
  {
    if (a2 == a3)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
    v7 = *a4;
    if (v6 < v7)
    {
      return 0xFFFFFFFFLL;
    }

    if (v7 < v6)
    {
      break;
    }

    ++a2;
    if (++a4 == a5)
    {
      a2 = v5;
      return a2 != a3;
    }
  }

  return 1;
}

unint64_t std::collate<char>::do_hash(uint64_t a1, char *a2, char *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *a2++;
    result = ((v4 + 16 * result) & 0xF000000000000000 | (((v4 + 16 * result) & 0xF000000000000000) >> 56)) ^ (v4 + 16 * result);
  }

  while (a2 != a3);
  return result;
}

void std::collate<wchar_t>::~collate(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::collate<wchar_t>::do_compare(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  while (1)
  {
    if (a4 == a5)
    {
      return a2 != a3;
    }

    if (a2 == a3 || *a2 < *a4)
    {
      return 0xFFFFFFFFLL;
    }

    if (*a4 < *a2)
    {
      break;
    }

    ++a2;
    ++a4;
  }

  return 1;
}

unint64_t std::collate<wchar_t>::do_hash(uint64_t a1, int *a2, int *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *a2++;
    result = ((v4 + 16 * result) & 0xF000000000000000 | (((v4 + 16 * result) & 0xF000000000000000) >> 56)) ^ (v4 + 16 * result);
  }

  while (a2 != a3);
  return result;
}

void *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, BOOL *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = a2;
  if (this->__fmtflags_)
  {
    std::ios_base::getloc(this);
    v11 = std::locale::use_facet(&v20, &std::ctype<char>::id);
    locale = v20.__locale_;
    if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*locale + 16))(locale);
    }

    std::ios_base::getloc(this);
    v13 = std::locale::use_facet(&v20, &std::numpunct<char>::id);
    v14 = v20.__locale_;
    if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v14 + 16))(v14);
    }

    (v13->__vftable[2].~facet)(&v20, v13);
    (v13->__vftable[2].~facet_0)(v21, v13);
    v15 = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<char>,std::string const*,std::ctype<char>>(&v19, a3, &v20, &v22, v11, a5, 1);
    v16 = 0;
    *a6 = v15 == &v20;
    v10 = v19;
    do
    {
      if (SHIBYTE(v21[v16 + 2]) < 0)
      {
        MEMORY[0x193B0CA40](v21[v16], v21[v16 + 2] & 0x7FFFFFFFFFFFFFFFLL);
      }

      v16 -= 3;
    }

    while (v16 != -6);
  }

  else
  {
    v20.__locale_ = -1;
    v10 = (*(*a1 + 32))(a1, a2, a3, this, a5, &v20);
    if (v20.__locale_ == 1)
    {
      *a6 = 1;
    }

    else if (v20.__locale_)
    {
      *a6 = 1;
      *a5 = 4;
    }

    else
    {
      *a6 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922CC24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::num_get<char,std::istreambuf_iterator<char>>::do_get(v2 + 48, va);
  _Unwind_Resume(a1);
}

void std::locale::~locale(std::locale *this)
{
  locale = this->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(locale + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }
}

{
  locale = this->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(locale + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }
}

uint64_t *std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<char>,std::string const*,std::ctype<char>>(void **a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v10 = a3;
  v54 = *MEMORY[0x1E69E9840];
  v12 = a4 - a3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 < 0x65)
  {
    v14 = 0;
    v15 = &v53;
  }

  else
  {
    v14 = malloc_type_malloc(0xAAAAAAAAAAAAAAABLL * v12, 0x100004077774924uLL);
    v15 = v14;
    if (!v14)
    {
      std::__throw_bad_alloc();
    }
  }

  v51 = a2;
  v46 = a6;
  if (v10 == a4)
  {
    v16 = 0;
    v19 = a1;
  }

  else
  {
    v16 = 0;
    v17 = v10;
    v18 = v15;
    v19 = a1;
    do
    {
      v20 = *(v17 + 23);
      if (v20 < 0)
      {
        v20 = v17[1];
      }

      v21 = v20 == 0;
      v22 = v20 == 0;
      if (v21)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      if (v21)
      {
        ++v16;
      }

      v13 -= v22;
      *v18++ = v23;
      v17 += 3;
    }

    while (v17 != a4);
  }

  v47 = v14;
  v48 = v15;
  v24 = 0;
  v49 = v10;
  while (1)
  {
    v25 = v24;
    v26 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](v19);
    if (v51)
    {
      if (v51[3] == v51[4])
      {
        v28 = (*(*v51 + 72))();
        v27 = v28 == -1;
        v29 = v51;
        if (v28 == -1)
        {
          v29 = 0;
        }

        v51 = v29;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v51 = 0;
      v27 = 1;
    }

    if (v26 == v27 || !v13)
    {
      break;
    }

    v30 = (*v19)[3];
    if (v30 == (*v19)[4])
    {
      v31 = (*(**v19 + 72))(*v19);
    }

    else
    {
      v31 = *v30;
    }

    if ((a7 & 1) == 0)
    {
      v31 = (*(*a5 + 24))(a5, v31);
    }

    v24 = v25 + 1;
    if (v10 != a4)
    {
      v32 = 0;
      v33 = v31;
      do
      {
        if (*v15 == 1)
        {
          v34 = v10;
          if (*(v10 + 23) < 0)
          {
            v34 = *v10;
          }

          v35 = *(v34 + v25);
          if ((a7 & 1) == 0)
          {
            LOBYTE(v35) = (*(*a5 + 24))(a5, v35);
          }

          if (v33 == v35)
          {
            v36 = *(v10 + 23);
            if (v36 < 0)
            {
              v36 = v10[1];
            }

            if (v36 == v24)
            {
              *v15 = 2;
              --v13;
              ++v16;
            }

            v32 = 1;
          }

          else
          {
            *v15 = 0;
            --v13;
          }
        }

        v10 += 3;
        ++v15;
      }

      while (v10 != a4);
      v15 = v48;
      v10 = v49;
      v19 = a1;
      if (v32)
      {
        v37 = *a1;
        v38 = (*a1)[3];
        if (v38 == (*a1)[4])
        {
          (*(*v37 + 80))(v37);
        }

        else
        {
          v37[3] = v38 + 1;
        }

        v39 = v49;
        v40 = v48;
        if (v16 + v13 >= 2)
        {
          do
          {
            if (*v40 == 2)
            {
              v41 = *(v39 + 23);
              if (v41 < 0)
              {
                v41 = v39[1];
              }

              if (v41 != v24)
              {
                *v40 = 0;
                --v16;
              }
            }

            v39 += 3;
            ++v40;
          }

          while (v39 != a4);
        }
      }
    }
  }

  v42 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](v19);
  if (!v51)
  {
    if (!v42)
    {
      goto LABEL_63;
    }

LABEL_62:
    *v46 |= 2u;
    goto LABEL_63;
  }

  if (v51[3] != v51[4])
  {
    if (v42)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (((v42 ^ ((*(*v51 + 72))() == -1)) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v10 == a4)
  {
    v43 = v47;
LABEL_71:
    *v46 |= 4u;
  }

  else
  {
    v43 = v47;
    while (*v15 != 2)
    {
      v10 += 3;
      ++v15;
      if (v10 == a4)
      {
        goto LABEL_71;
      }
    }
  }

  if (v43)
  {
    free(v43);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922CC764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_signed<long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_signed_integral[abi:ne200100]<long>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CCB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_signed<long long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_signed_integral[abi:ne200100]<long>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CCEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_unsigned<unsigned short>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, _WORD *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned short>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CD2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_unsigned<unsigned int>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, _DWORD *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned int>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CD6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_unsigned<unsigned long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned long>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CDA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_unsigned<unsigned long long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4->__fmtflags_ & 0x4A;
  if (v9)
  {
    if (v9 == 8)
    {
      v10 = 16;
    }

    else
    {
      v10 = 10;
    }

    if (v9 == 64)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::__num_get<char>::__stage2_int_prep(a4, v34, &v31);
  memset(&v29, 0, sizeof(v29));
  std::string::resize(&v29, 0x16uLL, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v29;
  }

  else
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v28 = v12;
  v26 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v14 = (*(*a2 + 72))(a2);
        v13 = v14 == -1;
        if (v14 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (v13 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
    {
      break;
    }

    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v28 == (v12 + size))
    {
      std::string::resize(&v29, 2 * size, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v29, v16, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__r_.__value_.__r.__words[0];
      }

      v28 = (v12 + size);
    }

    v17 = a2[3];
    v18 = v17 == a2[4] ? (*(*a2 + 72))(a2) : *v17;
    if (std::__num_get<char>::__stage2_int_loop(v18, v11, v12, &v28, &v26, v31, &__grouping, __g, &__g_end, v34))
    {
      break;
    }

    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v21 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v26;
      __g_end = v21 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned long>(v12, v28, a5, v11);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v32))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v29.__r_.__value_.__r.__words[0], v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CDE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_floating_point<float>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, float *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = a3;
  std::__num_get<char>::__stage2_float_prep(a4, v39, &v36, &v35);
  v26 = a6;
  v27 = a5;
  memset(&v33, 0, sizeof(v33));
  std::string::resize(&v33, 0x16uLL, 0);
  v9 = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v33;
  }

  else
  {
    v10 = v33.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v32 = v10;
  v30 = 0;
  v29 = 1;
  v28 = 69;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v12 = (*(*a2 + 72))(a2);
        v11 = v12 == -1;
        if (v12 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    if (v11 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
    {
      break;
    }

    size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    if (v32 == (v10 + size))
    {
      std::string::resize(&v33, 2 * size, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v33, v14, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v33;
      }

      else
      {
        v10 = v33.__r_.__value_.__r.__words[0];
      }

      v32 = (v10 + size);
    }

    v15 = a2[3];
    v16 = v15 == a2[4] ? (*(*a2 + 72))(a2) : *v15;
    if (std::__num_get<char>::__stage2_float_loop(v16, &v29, &v28, v10, &v32, v36, v35, &__grouping, __g, &__g_end, &v30, v39))
    {
      break;
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      if (&v32[-v10] < 1)
      {
        goto LABEL_35;
      }

      v17 = *v10;
      if (v17 == 43 || v17 == 45)
      {
        if (&v32[-v10] == 1)
        {
LABEL_35:
          v9 = 0;
          goto LABEL_36;
        }

        v18 = *(v10 + 1);
        v9 = 1;
        if (v18 != 46 && (v18 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v9 = 1;
        if (v17 != 46 && (v17 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_36:
    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    if (v29 == 1)
    {
      v21 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v30;
        __g_end = v21 + 1;
      }
    }
  }

  *v26 = std::__num_get_float[abi:ne200100]<float>(v10, v32, v27);
  std::__check_grouping(&__grouping, __g, __g_end, v27);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
  {
    *v27 |= 2u;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v33.__r_.__value_.__r.__words[0], v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CE2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (SHIBYTE(a21) < 0)
  {
    MEMORY[0x193B0CA40](a19, a21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a24) < 0)
  {
    MEMORY[0x193B0CA40](a22, a24 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_floating_point<double>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, double *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = a3;
  std::__num_get<char>::__stage2_float_prep(a4, v39, &v36, &v35);
  v26 = a6;
  v27 = a5;
  memset(&v33, 0, sizeof(v33));
  std::string::resize(&v33, 0x16uLL, 0);
  v9 = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v33;
  }

  else
  {
    v10 = v33.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v32 = v10;
  v30 = 0;
  v29 = 1;
  v28 = 69;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v12 = (*(*a2 + 72))(a2);
        v11 = v12 == -1;
        if (v12 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    if (v11 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
    {
      break;
    }

    size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    if (v32 == (v10 + size))
    {
      std::string::resize(&v33, 2 * size, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v33, v14, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v33;
      }

      else
      {
        v10 = v33.__r_.__value_.__r.__words[0];
      }

      v32 = (v10 + size);
    }

    v15 = a2[3];
    v16 = v15 == a2[4] ? (*(*a2 + 72))(a2) : *v15;
    if (std::__num_get<char>::__stage2_float_loop(v16, &v29, &v28, v10, &v32, v36, v35, &__grouping, __g, &__g_end, &v30, v39))
    {
      break;
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      if (&v32[-v10] < 1)
      {
        goto LABEL_35;
      }

      v17 = *v10;
      if (v17 == 43 || v17 == 45)
      {
        if (&v32[-v10] == 1)
        {
LABEL_35:
          v9 = 0;
          goto LABEL_36;
        }

        v18 = *(v10 + 1);
        v9 = 1;
        if (v18 != 46 && (v18 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v9 = 1;
        if (v17 != 46 && (v17 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_36:
    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    if (v29 == 1)
    {
      v21 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v30;
        __g_end = v21 + 1;
      }
    }
  }

  *v26 = std::__num_get_float[abi:ne200100]<double>(v10, v32, v27);
  std::__check_grouping(&__grouping, __g, __g_end, v27);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
  {
    *v27 |= 2u;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v33.__r_.__value_.__r.__words[0], v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CE744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (SHIBYTE(a21) < 0)
  {
    MEMORY[0x193B0CA40](a19, a21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a24) < 0)
  {
    MEMORY[0x193B0CA40](a22, a24 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::__do_get_floating_point<long double>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, double *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = a3;
  std::__num_get<char>::__stage2_float_prep(a4, v39, &v36, &v35);
  v26 = a6;
  v27 = a5;
  memset(&v33, 0, sizeof(v33));
  std::string::resize(&v33, 0x16uLL, 0);
  v9 = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v33;
  }

  else
  {
    v10 = v33.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v32 = v10;
  v30 = 0;
  v29 = 1;
  v28 = 69;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v12 = (*(*a2 + 72))(a2);
        v11 = v12 == -1;
        if (v12 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    if (v11 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
    {
      break;
    }

    size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    if (v32 == (v10 + size))
    {
      std::string::resize(&v33, 2 * size, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v33, v14, 0);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v33;
      }

      else
      {
        v10 = v33.__r_.__value_.__r.__words[0];
      }

      v32 = (v10 + size);
    }

    v15 = a2[3];
    v16 = v15 == a2[4] ? (*(*a2 + 72))(a2) : *v15;
    if (std::__num_get<char>::__stage2_float_loop(v16, &v29, &v28, v10, &v32, v36, v35, &__grouping, __g, &__g_end, &v30, v39))
    {
      break;
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      if (&v32[-v10] < 1)
      {
        goto LABEL_35;
      }

      v17 = *v10;
      if (v17 == 43 || v17 == 45)
      {
        if (&v32[-v10] == 1)
        {
LABEL_35:
          v9 = 0;
          goto LABEL_36;
        }

        v18 = *(v10 + 1);
        v9 = 1;
        if (v18 != 46 && (v18 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v9 = 1;
        if (v17 != 46 && (v17 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_36:
    v19 = a2[3];
    if (v19 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v19 + 1;
    }
  }

  v20 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    if (v29 == 1)
    {
      v21 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v30;
        __g_end = v21 + 1;
      }
    }
  }

  *v26 = std::__num_get_float[abi:ne200100]<long double>(v10, v32, v27);
  std::__check_grouping(&__grouping, __g, __g_end, v27);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v23 = (*(*a2 + 72))(a2);
      v22 = v23 == -1;
      if (v23 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v22 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v37))
  {
    *v27 |= 2u;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v33.__r_.__value_.__r.__words[0], v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CEBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (SHIBYTE(a21) < 0)
  {
    MEMORY[0x193B0CA40](a19, a21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a24) < 0)
  {
    MEMORY[0x193B0CA40](a22, a24 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<char,std::istreambuf_iterator<char>>::do_get(int a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = a3;
  v28[0] = 0;
  v28[1] = 0;
  std::ios_base::getloc(this);
  v9 = std::locale::use_facet(&v31, &std::ctype<char>::id);
  (v9->__vftable[2].__on_zero_shared)(v9, "0123456789abcdefABCDEFxX+-pPiInN", "pPiInN", v32);
  locale = v31.__locale_;
  if (v31.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v31.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  v25 = &v31;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v13 = (*(*a2 + 72))(a2);
        v12 = v13 == -1;
        if (v13 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    if (v12 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == v11 + size)
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = 22;
      }

      else
      {
        v15 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v15, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = v11 + size;
    }

    v16 = a2[3];
    v17 = v16 == a2[4] ? (*(*a2 + 72))(a2) : *v16;
    if (std::__num_get<char>::__stage2_int_loop(v17, 0x10u, v11, &v26, &v24, 0, v28, &v31, &v25, v32))
    {
      break;
    }

    v18 = a2[3];
    if (v18 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v18 + 1;
    }
  }

  std::string::resize(&v27, v26 - v11, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
  }

  else
  {
    v19 = v27.__r_.__value_.__r.__words[0];
  }

  if (sscanf_l(v19, 0, "%p", a6) != 1)
  {
    *a5 = 4;
  }

  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v21 = (*(*a2 + 72))(a2);
      v20 = v21 == -1;
      if (v21 == -1)
      {
        a2 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  if (v20 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v29) < 0)
  {
    MEMORY[0x193B0CA40](v28[0], v29 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1922CEFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_get<char>::__stage2_int_loop(int __c, unsigned int a2, char *a3, char **a4, _DWORD *a5, int a6, uint64_t a7, uint64_t a8, _DWORD **a9, char *__s)
{
  v14 = *a4;
  if (*a4 == a3)
  {
    if (__s[24] == __c)
    {
      v18 = 43;
    }

    else
    {
      if (__s[25] != __c)
      {
        goto LABEL_2;
      }

      v18 = 45;
    }

    result = 0;
    *a4 = v14 + 1;
    *v14 = v18;
    goto LABEL_18;
  }

LABEL_2:
  v15 = *(a7 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a7 + 8);
  }

  if (__c != a6 || !v15)
  {
    v19 = memchr(__s, __c, 0x1AuLL);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = __s + 26;
    }

    v21 = v20 - __s;
    if (v21 > 23)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2 != 8)
    {
      if (a2 == 16)
      {
        if (v21 >= 22)
        {
          result = 0xFFFFFFFFLL;
          if (v14 != a3 && v14 - a3 <= 2 && *(v14 - 1) == 48)
          {
            result = 0;
            *a5 = 0;
            v23 = std::__num_get_base::__src[v21];
            *a4 = v14 + 1;
            *v14 = v23;
          }

          return result;
        }

        goto LABEL_26;
      }

      if (a2 != 10)
      {
        goto LABEL_26;
      }
    }

    if (v21 >= a2)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_26:
    result = 0;
    v22 = std::__num_get_base::__src[v21];
    *a4 = v14 + 1;
    *v14 = v22;
    ++*a5;
    return result;
  }

  v16 = *a9;
  if (*a9 - a8 <= 159)
  {
    result = 0;
    *v16 = *a5;
    *a9 = v16 + 1;
LABEL_18:
    *a5 = 0;
    return result;
  }

  return 0;
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, BOOL *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = a2;
  if (this->__fmtflags_)
  {
    std::ios_base::getloc(this);
    v11 = std::locale::use_facet(&v20, &std::ctype<wchar_t>::id);
    locale = v20.__locale_;
    if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*locale + 16))(locale);
    }

    std::ios_base::getloc(this);
    v13 = std::locale::use_facet(&v20, &std::numpunct<wchar_t>::id);
    v14 = v20.__locale_;
    if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v14 + 16))(v14);
    }

    (v13->__vftable[2].~facet)(&v20, v13);
    (v13->__vftable[2].~facet_0)(v21, v13);
    v15 = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<wchar_t>,std::wstring const*,std::ctype<wchar_t>>(&v19, a3, &v20, &v22, v11, a5, 1);
    v16 = 0;
    *a6 = v15 == &v20;
    v10 = v19;
    do
    {
      if (SHIBYTE(v21[v16 + 2]) < 0)
      {
        MEMORY[0x193B0CA40](v21[v16], 4 * v21[v16 + 2]);
      }

      v16 -= 3;
    }

    while (v16 != -6);
  }

  else
  {
    v20.__locale_ = -1;
    v10 = (*(*a1 + 32))(a1, a2, a3, this, a5, &v20);
    if (v20.__locale_ == 1)
    {
      *a6 = 1;
    }

    else if (v20.__locale_)
    {
      *a6 = 1;
      *a5 = 4;
    }

    else
    {
      *a6 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922CF484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(v2 + 48, va);
  _Unwind_Resume(a1);
}

uint64_t *std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<wchar_t>,std::wstring const*,std::ctype<wchar_t>>(void **a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v10 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v12 = a4 - a3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 < 0x65)
  {
    v14 = 0;
    v15 = &v47;
  }

  else
  {
    v14 = malloc_type_malloc(0xAAAAAAAAAAAAAAABLL * v12, 0x100004077774924uLL);
    v15 = v14;
    if (!v14)
    {
      std::__throw_bad_alloc();
    }
  }

  v41 = v14;
  if (v10 == a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v17 = v10;
    v18 = v15;
    do
    {
      v19 = *(v17 + 23);
      if (v19 < 0)
      {
        v19 = v17[1];
      }

      v20 = v19 == 0;
      v21 = v19 == 0;
      if (v20)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      if (v20)
      {
        ++v16;
      }

      v13 -= v21;
      *v18++ = v22;
      v17 += 3;
    }

    while (v17 != a4);
  }

  v40 = a6;
  v23 = 0;
  v43 = v15;
  v44 = v10;
  v42 = a1;
  while (1)
  {
    v24 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
    if (v24 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v46) || !v13)
    {
      break;
    }

    v25 = (*a1)[3];
    if (v25 == (*a1)[4])
    {
      v26 = (*(**a1 + 72))(*a1);
    }

    else
    {
      v26 = *v25;
    }

    if ((a7 & 1) == 0)
    {
      LODWORD(v26) = (*(*a5 + 56))(a5, v26);
    }

    if (v10 != a4)
    {
      v27 = 0;
      v28 = v23 + 1;
      do
      {
        if (*v15 == 1)
        {
          v29 = v10;
          if (*(v10 + 23) < 0)
          {
            v29 = *v10;
          }

          v30 = *(v29 + v23);
          if ((a7 & 1) == 0)
          {
            LODWORD(v30) = (*(*a5 + 56))(a5, v30);
          }

          if (v26 == v30)
          {
            v31 = *(v10 + 23);
            if (v31 < 0)
            {
              v31 = v10[1];
            }

            if (v31 == v28)
            {
              *v15 = 2;
              --v13;
              ++v16;
            }

            v27 = 1;
          }

          else
          {
            *v15 = 0;
            --v13;
          }
        }

        v10 += 3;
        ++v15;
      }

      while (v10 != a4);
      if (v27)
      {
        a1 = v42;
        v15 = v43;
        v32 = *v42;
        v33 = (*v42)[3];
        v10 = v44;
        if (v33 == (*v42)[4])
        {
          (*(*v32 + 80))(v32);
        }

        else
        {
          v32[3] = v33 + 4;
        }

        v34 = v44;
        v35 = v43;
        if (v16 + v13 >= 2)
        {
          do
          {
            if (*v35 == 2)
            {
              v36 = *(v34 + 23);
              if (v36 < 0)
              {
                v36 = v34[1];
              }

              if (v36 != v28)
              {
                *v35 = 0;
                --v16;
              }
            }

            v34 += 3;
            ++v35;
          }

          while (v34 != a4);
        }
      }

      else
      {
        v15 = v43;
        v10 = v44;
        a1 = v42;
      }
    }

    ++v23;
  }

  v37 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
  if (v37 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v46))
  {
    *v40 |= 2u;
  }

  while (v10 != a4)
  {
    if (*v15 == 2)
    {
      goto LABEL_59;
    }

    v10 += 3;
    ++v15;
  }

  *v40 |= 4u;
LABEL_59:
  if (v41)
  {
    free(v41);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922CF88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_signed<long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_signed_integral[abi:ne200100]<long>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922CFBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_signed<long long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_signed_integral[abi:ne200100]<long>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922CFEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_unsigned<unsigned short>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, _WORD *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned short>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D0248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_unsigned<unsigned int>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, _DWORD *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned int>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D0594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_unsigned<unsigned long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned long>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D08E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_unsigned<unsigned long long>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = a2;
  v8 = a4->__fmtflags_ & 0x4A;
  if (v8)
  {
    if (v8 == 8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 10;
    }

    if (v8 == 64)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::__num_get<wchar_t>::__stage2_int_prep(a4, v33, &v29);
  memset(&v27, 0, sizeof(v27));
  std::string::resize(&v27, 0x16uLL, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v26 = v11;
  v24 = 0;
  while (1)
  {
    v12 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
    if (v12 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
    {
      break;
    }

    size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (v26 == (v11 + size))
    {
      std::string::resize(&v27, 2 * size, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v27, v14, 0);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27.__r_.__value_.__r.__words[0];
      }

      v26 = (v11 + size);
    }

    v15 = v31[3];
    v16 = v15 == v31[4] ? (*(*v31 + 72))(v31) : *v15;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v16, v10, v11, &v26, &v24, v29, &__grouping, __g, &__g_end, v33))
    {
      break;
    }

    v17 = v31[3];
    if (v17 == v31[4])
    {
      (*(*v31 + 80))(v31);
    }

    else
    {
      v31[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    v19 = __g_end;
    if (__g_end - __g <= 159)
    {
      *__g_end = v24;
      __g_end = v19 + 1;
    }
  }

  *a6 = std::__num_get_unsigned_integral[abi:ne200100]<unsigned long>(v11, v26, a5, v10);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v31);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30))
  {
    *a5 |= 2u;
  }

  v21 = v31;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v27.__r_.__value_.__r.__words[0], v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D0C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_floating_point<float>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, float *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v35 = a2;
  std::__num_get<wchar_t>::__stage2_float_prep(a4, v37, &v33, &v32);
  v24 = a6;
  memset(&v30, 0, sizeof(v30));
  std::string::resize(&v30, 0x16uLL, 0);
  v8 = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v30;
  }

  else
  {
    v9 = v30.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v29 = v9;
  v27 = 0;
  v26 = 1;
  v25 = 69;
  while (1)
  {
    v10 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
    if (v10 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
    {
      break;
    }

    size = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (v29 == (v9 + size))
    {
      std::string::resize(&v30, 2 * size, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = 22;
      }

      else
      {
        v12 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v30, v12, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v30;
      }

      else
      {
        v9 = v30.__r_.__value_.__r.__words[0];
      }

      v29 = (v9 + size);
    }

    v13 = v35[3];
    v14 = v13 == v35[4] ? (*(*v35 + 72))(v35) : *v13;
    if (std::__num_get<wchar_t>::__stage2_float_loop(v14, &v26, &v25, v9, &v29, v33, v32, &__grouping, __g, &__g_end, &v27, v37))
    {
      break;
    }

    if (v8)
    {
      v8 = 1;
    }

    else
    {
      if (&v29[-v9] < 1)
      {
        goto LABEL_29;
      }

      v15 = *v9;
      if (v15 == 43 || v15 == 45)
      {
        if (&v29[-v9] == 1)
        {
LABEL_29:
          v8 = 0;
          goto LABEL_30;
        }

        v16 = *(v9 + 1);
        v8 = 1;
        if (v16 != 46 && (v16 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
        if (v15 != 46 && (v15 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_30:
    v17 = v35[3];
    if (v17 == v35[4])
    {
      (*(*v35 + 80))(v35);
    }

    else
    {
      v35[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    if (v26 == 1)
    {
      v19 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v27;
        __g_end = v19 + 1;
      }
    }
  }

  *v24 = std::__num_get_float[abi:ne200100]<float>(v9, v29, a5);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
  {
    *a5 |= 2u;
  }

  v21 = v35;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v30.__r_.__value_.__r.__words[0], v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D0FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a23) < 0)
  {
    MEMORY[0x193B0CA40](a21, a23 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_floating_point<double>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, double *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v35 = a2;
  std::__num_get<wchar_t>::__stage2_float_prep(a4, v37, &v33, &v32);
  v24 = a6;
  memset(&v30, 0, sizeof(v30));
  std::string::resize(&v30, 0x16uLL, 0);
  v8 = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v30;
  }

  else
  {
    v9 = v30.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v29 = v9;
  v27 = 0;
  v26 = 1;
  v25 = 69;
  while (1)
  {
    v10 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
    if (v10 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
    {
      break;
    }

    size = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (v29 == (v9 + size))
    {
      std::string::resize(&v30, 2 * size, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = 22;
      }

      else
      {
        v12 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v30, v12, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v30;
      }

      else
      {
        v9 = v30.__r_.__value_.__r.__words[0];
      }

      v29 = (v9 + size);
    }

    v13 = v35[3];
    v14 = v13 == v35[4] ? (*(*v35 + 72))(v35) : *v13;
    if (std::__num_get<wchar_t>::__stage2_float_loop(v14, &v26, &v25, v9, &v29, v33, v32, &__grouping, __g, &__g_end, &v27, v37))
    {
      break;
    }

    if (v8)
    {
      v8 = 1;
    }

    else
    {
      if (&v29[-v9] < 1)
      {
        goto LABEL_29;
      }

      v15 = *v9;
      if (v15 == 43 || v15 == 45)
      {
        if (&v29[-v9] == 1)
        {
LABEL_29:
          v8 = 0;
          goto LABEL_30;
        }

        v16 = *(v9 + 1);
        v8 = 1;
        if (v16 != 46 && (v16 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
        if (v15 != 46 && (v15 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_30:
    v17 = v35[3];
    if (v17 == v35[4])
    {
      (*(*v35 + 80))(v35);
    }

    else
    {
      v35[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    if (v26 == 1)
    {
      v19 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v27;
        __g_end = v19 + 1;
      }
    }
  }

  *v24 = std::__num_get_float[abi:ne200100]<double>(v9, v29, a5);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
  {
    *a5 |= 2u;
  }

  v21 = v35;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v30.__r_.__value_.__r.__words[0], v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D13BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a23) < 0)
  {
    MEMORY[0x193B0CA40](a21, a23 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get_floating_point<long double>(uint64_t a1, void *a2, void *a3, const std::ios_base *a4, std::ios_base::iostate *a5, double *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v35 = a2;
  std::__num_get<wchar_t>::__stage2_float_prep(a4, v37, &v33, &v32);
  v24 = a6;
  memset(&v30, 0, sizeof(v30));
  std::string::resize(&v30, 0x16uLL, 0);
  v8 = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v30;
  }

  else
  {
    v9 = v30.__r_.__value_.__r.__words[0];
  }

  __g_end = __g;
  v29 = v9;
  v27 = 0;
  v26 = 1;
  v25 = 69;
  while (1)
  {
    v10 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
    if (v10 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
    {
      break;
    }

    size = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (v29 == (v9 + size))
    {
      std::string::resize(&v30, 2 * size, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = 22;
      }

      else
      {
        v12 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v30, v12, 0);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v30;
      }

      else
      {
        v9 = v30.__r_.__value_.__r.__words[0];
      }

      v29 = (v9 + size);
    }

    v13 = v35[3];
    v14 = v13 == v35[4] ? (*(*v35 + 72))(v35) : *v13;
    if (std::__num_get<wchar_t>::__stage2_float_loop(v14, &v26, &v25, v9, &v29, v33, v32, &__grouping, __g, &__g_end, &v27, v37))
    {
      break;
    }

    if (v8)
    {
      v8 = 1;
    }

    else
    {
      if (&v29[-v9] < 1)
      {
        goto LABEL_29;
      }

      v15 = *v9;
      if (v15 == 43 || v15 == 45)
      {
        if (&v29[-v9] == 1)
        {
LABEL_29:
          v8 = 0;
          goto LABEL_30;
        }

        v16 = *(v9 + 1);
        v8 = 1;
        if (v16 != 46 && (v16 - 48) > 9)
        {
          break;
        }
      }

      else
      {
        v8 = 1;
        if (v15 != 46 && (v15 - 48) >= 0xA)
        {
          break;
        }
      }
    }

LABEL_30:
    v17 = v35[3];
    if (v17 == v35[4])
    {
      (*(*v35 + 80))(v35);
    }

    else
    {
      v35[3] = v17 + 4;
    }
  }

  v18 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
  if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __grouping.__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    if (v26 == 1)
    {
      v19 = __g_end;
      if (__g_end - __g <= 159)
      {
        *__g_end = v27;
        __g_end = v19 + 1;
      }
    }
  }

  *v24 = std::__num_get_float[abi:ne200100]<long double>(v9, v29, a5);
  std::__check_grouping(&__grouping, __g, __g_end, a5);
  v20 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
  if (v20 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
  {
    *a5 |= 2u;
  }

  v21 = v35;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v30.__r_.__value_.__r.__words[0], v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D1784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a23) < 0)
  {
    MEMORY[0x193B0CA40](a21, a23 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(int a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = a2;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  std::ios_base::getloc(this);
  v8 = std::locale::use_facet(&v30, &std::ctype<wchar_t>::id);
  (v8->__vftable[4].~facet)(v8, "0123456789abcdefABCDEFxX+-pPiInN", "pPiInN", v31);
  locale = v30.__locale_;
  if (v30.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v30.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  memset(&v25, 0, sizeof(v25));
  std::string::resize(&v25, 0x16uLL, 0);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v25;
  }

  else
  {
    v10 = v25.__r_.__value_.__r.__words[0];
  }

  v23 = &v30;
  v24 = v10;
  v22 = 0;
  while (1)
  {
    v11 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v29);
    if (v11 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v28))
    {
      break;
    }

    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    if (v24 == v10 + size)
    {
      std::string::resize(&v25, 2 * size, 0);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = 22;
      }

      else
      {
        v13 = (v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(&v25, v13, 0);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v25;
      }

      else
      {
        v10 = v25.__r_.__value_.__r.__words[0];
      }

      v24 = v10 + size;
    }

    v14 = v29[3];
    v15 = v14 == v29[4] ? (*(*v29 + 72))(v29) : *v14;
    if (std::__num_get<wchar_t>::__stage2_int_loop(v15, 0x10u, v10, &v24, &v22, 0, v26, &v30, &v23, v31))
    {
      break;
    }

    v16 = v29[3];
    if (v16 == v29[4])
    {
      (*(*v29 + 80))(v29);
    }

    else
    {
      v29[3] = v16 + 4;
    }
  }

  std::string::resize(&v25, v24 - v10, 0);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  if (sscanf_l(v17, 0, "%p", a6) != 1)
  {
    *a5 = 4;
  }

  v18 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v29);
  if (v18 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v28))
  {
    *a5 |= 2u;
  }

  v19 = v29;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v25.__r_.__value_.__r.__words[0], v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v27) < 0)
  {
    MEMORY[0x193B0CA40](v26[0], v27 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1922D1B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    MEMORY[0x193B0CA40](a18, a20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_get<wchar_t>::__stage2_int_loop(int a1, unsigned int a2, char *a3, char **a4, _DWORD *a5, int a6, uint64_t a7, uint64_t a8, _DWORD **a9, _DWORD *a10)
{
  v10 = a10;
  v11 = *a4;
  if (*a4 == a3)
  {
    if (a10[24] == a1)
    {
      v15 = 43;
    }

    else
    {
      if (a10[25] != a1)
      {
        goto LABEL_2;
      }

      v15 = 45;
    }

    result = 0;
    *a4 = v11 + 1;
    *v11 = v15;
    goto LABEL_19;
  }

LABEL_2:
  v12 = *(a7 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a7 + 8);
  }

  if (a1 != a6 || !v12)
  {
    v16 = 104;
    while (*v10 != a1)
    {
      ++v10;
      v16 -= 4;
      if (!v16)
      {
        v10 = a10 + 26;
        break;
      }
    }

    v17 = v10 - a10;
    if (v17 > 23)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2 != 8)
    {
      if (a2 == 16)
      {
        if (v17 >= 22)
        {
          result = 0xFFFFFFFFLL;
          if (v11 != a3 && v11 - a3 <= 2 && *(v11 - 1) == 48)
          {
            result = 0;
            *a5 = 0;
            v19 = std::__num_get_base::__src[v17];
            *a4 = v11 + 1;
            *v11 = v19;
          }

          return result;
        }

        goto LABEL_27;
      }

      if (a2 != 10)
      {
        goto LABEL_27;
      }
    }

    if (v17 >= a2)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_27:
    result = 0;
    v18 = std::__num_get_base::__src[v17];
    *a4 = v11 + 1;
    *v11 = v18;
    ++*a5;
    return result;
  }

  v13 = *a9;
  if (*a9 - a8 <= 159)
  {
    result = 0;
    *v13 = *a5;
    *a9 = v13 + 1;
LABEL_19:
    *a5 = 0;
    return result;
  }

  return 0;
}

std::locale::__imp *std::__num_get<char>::__stage2_float_prep(const std::ios_base *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  std::ios_base::getloc(a1);
  v7 = std::locale::use_facet(&v10, &std::ctype<char>::id);
  (v7->__vftable[2].__on_zero_shared)(v7, "0123456789abcdefABCDEFxX+-pPiInN", "iInN", a2);
  v8 = std::locale::use_facet(&v10, &std::numpunct<char>::id);
  *a3 = (v8->__vftable[1].~facet)(v8);
  *a4 = (v8->__vftable[1].~facet_0)(v8);
  (v8->__vftable[1].__on_zero_shared)(v8);
  result = v10.__locale_;
  if (v10.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v10.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_1922D1E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a10 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_get<char>::__stage2_float_loop(int __c, _BYTE *a2, _BYTE *a3, char *a4, char **a5, int a6, int a7, uint64_t a8, uint64_t a9, _DWORD **a10, _DWORD *a11, char *__s)
{
  if (__c == a6)
  {
    if (*a2 == 1)
    {
      *a2 = 0;
      v15 = (*a5)++;
      *v15 = 46;
      v16 = *(a8 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a8 + 8);
      }

      if (v16)
      {
        v17 = *a10;
        if (*a10 - a9 <= 159)
        {
          result = 0;
          *v17 = *a11;
          *a10 = v17 + 1;
          return result;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (__c == a7)
  {
    v21 = *(a8 + 23);
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a8 + 8);
    }

    if (v21)
    {
      if (*a2 == 1)
      {
        v22 = *a10;
        if (*a10 - a9 <= 159)
        {
          result = 0;
          *v22 = *a11;
          *a10 = v22 + 1;
          *a11 = 0;
          return result;
        }

        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v23 = memchr(__s, __c, 0x1CuLL);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = __s + 28;
  }

  v25 = v24 - __s;
  if (v24 - __s > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = std::__num_get_base::__src[v25];
  if ((v25 & 0xFFFFFFFFFFFFFFFELL) == 0x16)
  {
    result = 0;
    *a3 = 80;
    v27 = *a5;
    goto LABEL_27;
  }

  if ((v25 & 0xFFFFFFFFFFFFFFFELL) == 0x18)
  {
    v27 = *a5;
    if (*a5 != a4)
    {
      v28 = __toupper(*(v27 - 1));
      if (v28 != __toupper(*a3))
      {
        return 0xFFFFFFFFLL;
      }

      v27 = *a5;
    }

    result = 0;
LABEL_27:
    *a5 = v27 + 1;
    *v27 = v26;
    return result;
  }

  v29 = __toupper(std::__num_get_base::__src[v25]);
  if (v29 == *a3)
  {
    *a3 = __tolower(v29);
    if (*a2 == 1)
    {
      *a2 = 0;
      v30 = *(a8 + 23);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(a8 + 8);
      }

      if (v30)
      {
        v31 = *a10;
        if (*a10 - a9 <= 159)
        {
          *v31 = *a11;
          *a10 = v31 + 1;
        }
      }
    }
  }

  v32 = (*a5)++;
  *v32 = v26;
  if (v25 > 21)
  {
    return 0;
  }

  result = 0;
  ++*a11;
  return result;
}

std::locale::__imp *std::__num_get<char>::__stage2_int_prep(const std::ios_base *a1, uint64_t a2, _BYTE *a3)
{
  std::ios_base::getloc(a1);
  v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
  (v5->__vftable[2].__on_zero_shared)(v5, "0123456789abcdefABCDEFxX+-pPiInN", "pPiInN", a2);
  v6 = std::locale::use_facet(&v8, &std::numpunct<char>::id);
  *a3 = (v6->__vftable[1].~facet_0)(v6);
  (v6->__vftable[1].__on_zero_shared)(v6);
  result = v8.__locale_;
  if (v8.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v8.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_1922D2264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a10 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

std::locale::__imp *std::__num_get<wchar_t>::__stage2_float_prep(const std::ios_base *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  std::ios_base::getloc(a1);
  v7 = std::locale::use_facet(&v10, &std::ctype<wchar_t>::id);
  (v7->__vftable[4].~facet)(v7, "0123456789abcdefABCDEFxX+-pPiInN", "iInN", a2);
  v8 = std::locale::use_facet(&v10, &std::numpunct<wchar_t>::id);
  *a3 = (v8->__vftable[1].~facet)(v8);
  *a4 = (v8->__vftable[1].~facet_0)(v8);
  (v8->__vftable[1].__on_zero_shared)(v8);
  result = v10.__locale_;
  if (v10.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v10.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_1922D2420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a10 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_get<wchar_t>::__stage2_float_loop(int a1, _BYTE *a2, _BYTE *a3, char *a4, char **a5, int a6, int a7, uint64_t a8, uint64_t a9, _DWORD **a10, _DWORD *a11, char *a12)
{
  if (a1 == a6)
  {
    if (*a2 == 1)
    {
      *a2 = 0;
      v15 = (*a5)++;
      *v15 = 46;
      v16 = *(a8 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a8 + 8);
      }

      if (v16)
      {
        v17 = *a10;
        if (*a10 - a9 <= 159)
        {
          result = 0;
          *v17 = *a11;
          *a10 = v17 + 1;
          return result;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (a1 == a7)
  {
    v20 = *(a8 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a8 + 8);
    }

    if (v20)
    {
      if (*a2 == 1)
      {
        v21 = *a10;
        if (*a10 - a9 <= 159)
        {
          result = 0;
          *v21 = *a11;
          *a10 = v21 + 1;
          *a11 = 0;
          return result;
        }

        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v22 = 112;
  v23 = a12;
  while (*v23 != a1)
  {
    v23 += 4;
    v22 -= 4;
    if (!v22)
    {
      v23 = a12 + 112;
      break;
    }
  }

  v24 = (v23 - a12) >> 2;
  if (v24 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = std::__num_get_base::__src[v24];
  v26 = (v23 - a12) & 0xFFFFFFFFFFFFFFFBLL;
  if (v26 == 88)
  {
    *a3 = 80;
  }

  else
  {
    if (v26 == 96)
    {
      v27 = *a5;
      if (*a5 != a4)
      {
        v28 = __toupper(*(v27 - 1));
        if (v28 != __toupper(*a3))
        {
          return 0xFFFFFFFFLL;
        }

        v27 = *a5;
      }

      result = 0;
      *a5 = v27 + 1;
      *v27 = v25;
      return result;
    }

    v29 = __toupper(std::__num_get_base::__src[v24]);
    if (v29 == *a3)
    {
      *a3 = __tolower(v29);
      if (*a2 == 1)
      {
        *a2 = 0;
        v30 = *(a8 + 23);
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(a8 + 8);
        }

        if (v30)
        {
          v31 = *a10;
          if (*a10 - a9 <= 159)
          {
            *v31 = *a11;
            *a10 = v31 + 1;
          }
        }
      }
    }
  }

  v32 = (*a5)++;
  *v32 = v25;
  if (v24 > 21)
  {
    return 0;
  }

  result = 0;
  ++*a11;
  return result;
}

std::locale::__imp *std::__num_get<wchar_t>::__stage2_int_prep(const std::ios_base *a1, uint64_t a2, _DWORD *a3)
{
  std::ios_base::getloc(a1);
  v5 = std::locale::use_facet(&v8, &std::ctype<wchar_t>::id);
  (v5->__vftable[4].~facet)(v5, "0123456789abcdefABCDEFxX+-pPiInN", "pPiInN", a2);
  v6 = std::locale::use_facet(&v8, &std::numpunct<wchar_t>::id);
  *a3 = (v6->__vftable[1].~facet_0)(v6);
  (v6->__vftable[1].__on_zero_shared)(v6);
  result = v8.__locale_;
  if (v8.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v8.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_1922D27FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a10 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, void *a2, std::ios_base *this, uint64_t a4, int a5)
{
  v16 = a2;
  if (this->__fmtflags_)
  {
    std::ios_base::getloc(this);
    v8 = std::locale::use_facet(v14, &std::numpunct<char>::id);
    locale = v14[0].__locale_;
    if (v14[0].__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v14[0].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*locale + 16))(locale);
    }

    v10 = v8->__vftable;
    if (a5)
    {
      (v10[2].~facet)(v14, v8);
    }

    else
    {
      (v10[2].~facet_0)(v14, v8);
    }

    v11 = v15;
    if ((v15 & 0x80u) == 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = v14[0].__locale_;
    }

    if ((v15 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    while (v12 != (v14 + v11))
    {
      while (1)
      {
        std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v16, *v12);
        v12 = (v12 + 1);
        v11 = v15;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

LABEL_17:
        if (v12 == (v14[0].__locale_ + v14[1].__locale_))
        {
          v13 = v16;
          MEMORY[0x193B0CA40]();
          return v13;
        }
      }
    }

    return v16;
  }

  else
  {
    v6 = *(*a1 + 48);

    return v6();
  }
}

void sub_1922D2A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::do_put(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5)
{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<long>(a1, a2, a3, a4, a5, "l");
}

{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<long long>(a1, a2, a3, a4, a5, "ll");
}

{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<unsigned long>(a1, a2, a3, a4, a5, "l");
}

{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<unsigned long long>(a1, a2, a3, a4, a5, "ll");
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 1, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D2B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<long long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 1, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D2D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<unsigned long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 0, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D2EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_integral[abi:ne200100]<unsigned long long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 0, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D3034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::do_put(int a1, uint64_t a2, const std::ios_base *a3, int a4, double a5)
{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_floating_point[abi:ne200100]<double>(a1, a2, a3, a4, &byte_19231D823, a5);
}

{
  return std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_floating_point[abi:ne200100]<long double>(a1, a2, a3, a4, "L", a5);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_floating_point[abi:ne200100]<double>(int a1, uint64_t a2, const std::ios_base *a3, int a4, char *__len, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *v30 = 37;
  v10 = std::__num_put_base::__format_float(&v30[1], __len, a3->__fmtflags_);
  __nb = v29;
  if (!v10)
  {
    v11 = snprintf_l(v29, 0x1EuLL, 0, v30, *&a6);
    if (v11 > 29)
    {
      v12 = asprintf_l(&__nb, 0, v30, *&a6);
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = snprintf_l(v29, 0x1EuLL, 0, v30, a3->__precision_, *&a6);
  if (v11 <= 29)
  {
    goto LABEL_8;
  }

  v12 = asprintf_l(&__nb, 0, v30, a3->__precision_, *&a6);
LABEL_6:
  v11 = v12;
  if (v12 == -1)
  {
    std::__throw_bad_alloc();
  }

  v13 = __nb;
LABEL_9:
  v14 = __nb;
  v15 = &__nb[v11];
  v16 = std::__num_put_base::__identify_padding(__nb, v15, a3);
  if (v14 == v29)
  {
    v18 = 0;
    v19 = &v28;
  }

  else
  {
    v17 = malloc_type_malloc(2 * v11, 0x100004077774924uLL);
    v18 = v17;
    if (!v17)
    {
      std::__throw_bad_alloc();
    }

    v14 = __nb;
    v19 = v17;
  }

  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_float(v14, v16, v15, v19, &v26, &v25, &v24);
  locale = v24.__locale_;
  if (v24.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v24.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v21 = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v19, v26, v25, a3, a4);
  if (v18)
  {
    free(v18);
  }

  if (v13)
  {
    free(v13);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D32D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    free(v13);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::__do_put_floating_point[abi:ne200100]<long double>(int a1, uint64_t a2, const std::ios_base *a3, int a4, char *__len, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *v30 = 37;
  v10 = std::__num_put_base::__format_float(&v30[1], __len, a3->__fmtflags_);
  __nb = v29;
  if (!v10)
  {
    v11 = snprintf_l(v29, 0x1EuLL, 0, v30, *&a6);
    if (v11 > 29)
    {
      v12 = asprintf_l(&__nb, 0, v30, *&a6);
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = snprintf_l(v29, 0x1EuLL, 0, v30, a3->__precision_, *&a6);
  if (v11 <= 29)
  {
    goto LABEL_8;
  }

  v12 = asprintf_l(&__nb, 0, v30, a3->__precision_, *&a6);
LABEL_6:
  v11 = v12;
  if (v12 == -1)
  {
    std::__throw_bad_alloc();
  }

  v13 = __nb;
LABEL_9:
  v14 = __nb;
  v15 = &__nb[v11];
  v16 = std::__num_put_base::__identify_padding(__nb, v15, a3);
  if (v14 == v29)
  {
    v18 = 0;
    v19 = &v28;
  }

  else
  {
    v17 = malloc_type_malloc(2 * v11, 0x100004077774924uLL);
    v18 = v17;
    if (!v17)
    {
      std::__throw_bad_alloc();
    }

    v14 = __nb;
    v19 = v17;
  }

  std::ios_base::getloc(a3);
  std::__num_put<char>::__widen_and_group_float(v14, v16, v15, v19, &v26, &v25, &v24);
  locale = v24.__locale_;
  if (v24.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v24.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v21 = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v19, v26, v25, a3, a4);
  if (v18)
  {
    free(v18);
  }

  if (v13)
  {
    free(v13);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    free(v13);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, const std::ios_base *a3, int a4, const void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = snprintf_l(__nb, 0x14uLL, 0, "%p", a5);
  v9 = &__nb[v8];
  v10 = std::__num_put_base::__identify_padding(__nb, v9, a3);
  std::ios_base::getloc(a3);
  v11 = std::locale::use_facet(&v16, &std::ctype<char>::id);
  locale = v16.__locale_;
  if (v16.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v16.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  (v11->__vftable[2].__on_zero_shared)(v11, __nb, v9, v17);
  if (v10 == v9)
  {
    v13 = &v17[v8];
  }

  else
  {
    v13 = &v17[v10 - __nb];
  }

  result = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v17, v13, &v17[v8], a3, a4);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D37E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

char *__cdecl std::__num_put_base::__identify_padding(char *__nb, char *__ne, const std::ios_base *__iob)
{
  v3 = __iob->__fmtflags_ & 0xB0;
  if (v3 == 32)
  {
    return __ne;
  }

  if (v3 == 16)
  {
    v4 = *__nb;
    if (v4 == 45 || v4 == 43)
    {
      ++__nb;
    }

    else if (__ne - __nb >= 2 && v4 == 48 && (__nb[1] | 0x20) == 0x78)
    {
      __nb += 2;
    }
  }

  return __nb;
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100](__b, v12, __c);
      v13 = v18 >= 0 ? __b : __b[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        MEMORY[0x193B0CA40](__b[0], v18 & 0x7FFFFFFFFFFFFFFFLL);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
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

void sub_1922D39EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, void *a2, std::ios_base *this, uint64_t a4, int a5)
{
  v16 = a2;
  if (this->__fmtflags_)
  {
    std::ios_base::getloc(this);
    v8 = std::locale::use_facet(v14, &std::numpunct<wchar_t>::id);
    locale = v14[0].__locale_;
    if (v14[0].__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v14[0].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*locale + 16))(locale);
    }

    v10 = v8->__vftable;
    if (a5)
    {
      (v10[2].~facet)(v14, v8);
    }

    else
    {
      (v10[2].~facet_0)(v14, v8);
    }

    v11 = v15;
    if ((v15 & 0x80u) == 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = v14[0].__locale_;
    }

    if ((v15 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    while (v12 != (v14 + 4 * v11))
    {
      while (1)
      {
        std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v16, *v12++);
        v11 = v15;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

LABEL_17:
        if (v12 == v14[0].__locale_ + v14[1].__locale_)
        {
          v13 = v16;
          MEMORY[0x193B0CA40]();
          return v13;
        }
      }
    }

    return v16;
  }

  else
  {
    v6 = *(*a1 + 48);

    return v6();
  }
}

void sub_1922D3BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5)
{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<long>(a1, a2, a3, a4, a5, "l");
}

{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<long long>(a1, a2, a3, a4, a5, "ll");
}

{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<unsigned long>(a1, a2, a3, a4, a5, "l");
}

{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<unsigned long long>(a1, a2, a3, a4, a5, "ll");
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 1, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D3D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<long long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 1, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D3ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<unsigned long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 0, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D4060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_integral[abi:ne200100]<unsigned long long>(int a1, uint64_t a2, const std::ios_base *a3, int a4, uint64_t a5, char *__len)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 37;
  std::__num_put_base::__format_int(&v20[1], __len, 0, a3->__fmtflags_);
  v10 = &__nb[snprintf_l(__nb, 0x18uLL, 0, v20, a5)];
  v11 = std::__num_put_base::__identify_padding(__nb, v10, a3);
  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_int(__nb, v11, v10, v18, &v17, &v16, &v15);
  locale = v15.__locale_;
  if (v15.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v15.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  result = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v18, v17, v16, a3, a4);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D41E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(int a1, uint64_t a2, const std::ios_base *a3, int a4, double a5)
{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_floating_point[abi:ne200100]<double>(a1, a2, a3, a4, &byte_19231D823, a5);
}

{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_floating_point[abi:ne200100]<long double>(a1, a2, a3, a4, "L", a5);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_floating_point[abi:ne200100]<double>(int a1, uint64_t a2, const std::ios_base *a3, int a4, char *__len, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *v30 = 37;
  v10 = std::__num_put_base::__format_float(&v30[1], __len, a3->__fmtflags_);
  __nb = v29;
  if (!v10)
  {
    v11 = snprintf_l(v29, 0x1EuLL, 0, v30, *&a6);
    if (v11 > 29)
    {
      v12 = asprintf_l(&__nb, 0, v30, *&a6);
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = snprintf_l(v29, 0x1EuLL, 0, v30, a3->__precision_, *&a6);
  if (v11 <= 29)
  {
    goto LABEL_8;
  }

  v12 = asprintf_l(&__nb, 0, v30, a3->__precision_, *&a6);
LABEL_6:
  v11 = v12;
  if (v12 == -1)
  {
    std::__throw_bad_alloc();
  }

  v13 = __nb;
LABEL_9:
  v14 = __nb;
  v15 = &__nb[v11];
  v16 = std::__num_put_base::__identify_padding(__nb, v15, a3);
  if (v14 == v29)
  {
    v18 = 0;
    v19 = &v28;
  }

  else
  {
    v17 = malloc_type_malloc(8 * v11, 0x100004052888210uLL);
    v18 = v17;
    if (!v17)
    {
      std::__throw_bad_alloc();
    }

    v14 = __nb;
    v19 = v17;
  }

  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_float(v14, v16, v15, v19, &v26, &v25, &v24);
  locale = v24.__locale_;
  if (v24.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v24.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v21 = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v19, v26, v25, a3, a4);
  if (v18)
  {
    free(v18);
  }

  if (v13)
  {
    free(v13);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D4488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    free(v13);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::__do_put_floating_point[abi:ne200100]<long double>(int a1, uint64_t a2, const std::ios_base *a3, int a4, char *__len, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *v30 = 37;
  v10 = std::__num_put_base::__format_float(&v30[1], __len, a3->__fmtflags_);
  __nb = v29;
  if (!v10)
  {
    v11 = snprintf_l(v29, 0x1EuLL, 0, v30, *&a6);
    if (v11 > 29)
    {
      v12 = asprintf_l(&__nb, 0, v30, *&a6);
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = snprintf_l(v29, 0x1EuLL, 0, v30, a3->__precision_, *&a6);
  if (v11 <= 29)
  {
    goto LABEL_8;
  }

  v12 = asprintf_l(&__nb, 0, v30, a3->__precision_, *&a6);
LABEL_6:
  v11 = v12;
  if (v12 == -1)
  {
    std::__throw_bad_alloc();
  }

  v13 = __nb;
LABEL_9:
  v14 = __nb;
  v15 = &__nb[v11];
  v16 = std::__num_put_base::__identify_padding(__nb, v15, a3);
  if (v14 == v29)
  {
    v18 = 0;
    v19 = &v28;
  }

  else
  {
    v17 = malloc_type_malloc(8 * v11, 0x100004052888210uLL);
    v18 = v17;
    if (!v17)
    {
      std::__throw_bad_alloc();
    }

    v14 = __nb;
    v19 = v17;
  }

  std::ios_base::getloc(a3);
  std::__num_put<wchar_t>::__widen_and_group_float(v14, v16, v15, v19, &v26, &v25, &v24);
  locale = v24.__locale_;
  if (v24.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v24.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v21 = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v19, v26, v25, a3, a4);
  if (v18)
  {
    free(v18);
  }

  if (v13)
  {
    free(v13);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1922D4784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    free(v13);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, const std::ios_base *a3, int a4, const void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = snprintf_l(__nb, 0x14uLL, 0, "%p", a5);
  v9 = &__nb[v8];
  v10 = std::__num_put_base::__identify_padding(__nb, v9, a3);
  std::ios_base::getloc(a3);
  v11 = std::locale::use_facet(&v16, &std::ctype<wchar_t>::id);
  locale = v16.__locale_;
  if (v16.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v16.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  (v11->__vftable[4].~facet)(v11, __nb, v9, v17);
  if (v10 == v9)
  {
    v13 = &v17[v8];
  }

  else
  {
    v13 = &v17[v10 - __nb];
  }

  result = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v17, v13, &v17[v8], a3, a4);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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
      std::wstring::basic_string[abi:ne200100](v18, v12, a6);
      v14 = v19 >= 0 ? v18 : v18[0];
      v15 = (*(*v6 + 96))(v6, v14, v12);
      if (SHIBYTE(v19) < 0)
      {
        MEMORY[0x193B0CA40](v18[0], 4 * v19);
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

void sub_1922D4B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(&a10);
  }

  _Unwind_Resume(exception_object);
}