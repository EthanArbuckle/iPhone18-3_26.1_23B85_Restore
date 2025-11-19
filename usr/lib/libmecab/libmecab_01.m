void sub_299138244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

int64x2_t marisa::Keyset::push_back(marisa::Keyset *this, const char *a2, size_t __sz, float a4)
{
  v6 = a2;
  if (!a2 && __sz)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F35070;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x20000003DLL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:61: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
    goto LABEL_10;
  }

  if (HIDWORD(__sz))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F35070;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x70000003ELL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:62: MARISA_SIZE_ERROR: length > MARISA_UINT32_MAX";
LABEL_10:
    exception[3] = v16;
  }

  v8 = marisa::Keyset::reserve(this, __sz);
  if (__sz)
  {
    v9 = v8;
    v10 = __sz;
    do
    {
      v11 = *v6++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  v12 = *(*(this + 6) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11);
  *v12 = v8;
  *(v12 + 8) = __sz;
  *(v12 + 12) = a4;
  v13.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v13.i64[1] = __sz;
  result = vaddq_s64(*(this + 88), v13);
  *(this + 88) = result;
  return result;
}

void *marisa::Keyset::append_extra_block(marisa::Keyset *this, size_t __sz)
{
  v4 = *(this + 4);
  if (v4 == *(this + 5))
  {
    if (v4)
    {
      v5 = 2 * v4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5 >> 61 != 0;
    if (8 * v5 >= 0xFFFFFFFFFFFFFFF0)
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 8 * v5 + 16;
    }

    v8 = operator new[](v7, MEMORY[0x29EDC9418]);
    if (!v8)
    {
      v21 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F35070;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000097;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:151: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v8 = 8;
    v8[1] = v5;
    v9 = (v8 + 2);
    if (v5)
    {
      bzero(v8 + 2, 8 * v5);
    }

    v21 = v9;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v11 = *(this + 3);
        v12 = v21;
        v13 = *(v11 + 8 * i);
        *(v11 + 8 * i) = *(v21 + 8 * i);
        *(v12 + 8 * i) = v13;
      }

      v9 = v21;
    }

    v14 = *(this + 3);
    *(this + 3) = v9;
    v21 = v14;
    *(this + 5) = v5;
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v21);
  }

  result = operator new[](__sz, MEMORY[0x29EDC9418]);
  if (!result)
  {
    v19 = __cxa_allocate_exception(0x20uLL);
    *v19 = &unk_2A1F35070;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v19[2] = 0x80000009FLL;
    v19[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:159: MARISA_MEMORY_ERROR: new_block.get() == NULL";
  }

  v17 = *(this + 3);
  v16 = *(this + 4);
  *(this + 4) = v16 + 1;
  v18 = *(v17 + 8 * v16);
  *(v17 + 8 * v16) = result;
  if (v18)
  {
    return MEMORY[0x29C29A350](v18, 0x1000C8077774924);
  }

  return result;
}

void sub_2991385A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

uint64_t *marisa::Keyset::append_base_block(uint64_t *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 == this[2])
  {
    if (v2)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 >> 61 != 0;
    if (8 * v3 >= 0xFFFFFFFFFFFFFFF0)
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = -1;
    }

    else
    {
      v5 = 8 * v3 + 16;
    }

    v6 = operator new[](v5, MEMORY[0x29EDC9418]);
    if (!v6)
    {
      v16 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F35070;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000081;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:129: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v6 = 8;
    v6[1] = v3;
    v7 = (v6 + 2);
    if (v3)
    {
      bzero(v6 + 2, 8 * v3);
    }

    v16 = v7;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v9 = v16;
        v10 = *(*v1 + 8 * i);
        *(*v1 + 8 * i) = *(v16 + 8 * i);
        *(v9 + 8 * i) = v10;
      }

      v7 = v16;
    }

    v11 = *v1;
    *v1 = v7;
    v16 = v11;
    v1[2] = v3;
    this = marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v16);
    v2 = v1[1];
  }

  v12 = *v1;
  v13 = *(*v1 + 8 * v2);
  if (!v13)
  {
    this = operator new[](0x1000uLL, MEMORY[0x29EDC9418]);
    if (!this)
    {
      v15 = __cxa_allocate_exception(0x20uLL);
      *v15 = &unk_2A1F35070;
      v15[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      v15[2] = 0x80000008ALL;
      v15[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:138: MARISA_MEMORY_ERROR: new_block.get() == NULL";
    }

    *(v12 + 8 * v2) = this;
    v13 = *(*v1 + 8 * v2);
  }

  v1[1] = v2 + 1;
  v1[9] = v13;
  v1[10] = 4096;
  return this;
}

void sub_2991387A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x29C29A350](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x29C29A350](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x29C29A350](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x29C29A350](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::build(marisa::grimoire::trie::LoudsTrie **this, marisa::Keyset *a2, unsigned int a3)
{
  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v11 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F35070;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x80000000ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:14: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v11 = v7;
  marisa::grimoire::trie::LoudsTrie::build(v7, a2, a3);
  v8 = *this;
  *this = v7;
  v11 = v8;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::map(marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F35070;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_2A1F35070;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  marisa::grimoire::io::Mapper::Mapper(v12);
  marisa::grimoire::io::Mapper::open(v12, a2, a3);
  marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  marisa::grimoire::io::Mapper::~Mapper(v12);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_299138B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::lookup(result, a2);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::reverse_lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::reverse_lookup(result, a2);
  }

  return result;
}

uint64_t marisa::TrieIO::write(uint64_t a1, marisa::grimoire::trie::LoudsTrie ***a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F35070;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:213: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
  }

  marisa::grimoire::io::Writer::Writer(v6);
  marisa::grimoire::io::Writer::open(v6, a1);
  marisa::grimoire::trie::LoudsTrie::write(*a2, v6);
  marisa::grimoire::io::Writer::~Writer(v6);
  return a1;
}

void MeCab::ContextID::add(MeCab::ContextID *this, char *a2, char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v5, a2);
  *__p = *v5;
  v8 = v6;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  v9 = 1;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(this, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, a3);
  *__p = *v5;
  v8 = v6;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  v9 = 1;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(this + 24, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_299138E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

uint64_t save(const char *a1, void *a2)
{
  v31[19] = *MEMORY[0x29EDCA608];
  std::ofstream::basic_ofstream(&v29);
  if ((v30[*(v29 - 24) + 24] & 5) != 0)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/context_id.cpp", 64);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 56);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ofs", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "permission denied: ", 19);
    v11 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a1, v11);
    MeCab::die::~die(&v28);
  }

  v14 = *a2;
  v12 = a2 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = MEMORY[0x29EDC93D0];
    do
    {
      v16 = MEMORY[0x29C29A250](&v29, *(v13 + 14));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
      v18 = *(v13 + 55);
      if (v18 >= 0)
      {
        v19 = (v13 + 4);
      }

      else
      {
        v19 = v13[4];
      }

      if (v18 >= 0)
      {
        v20 = *(v13 + 55);
      }

      else
      {
        v20 = v13[5];
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v28, v15);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v28);
      std::ostream::put();
      std::ostream::flush();
      v23 = v13[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v13[2];
          v25 = *v24 == v13;
          v13 = v24;
        }

        while (!v25);
      }

      v13 = v24;
    }

    while (v24 != v12);
  }

  v29 = *MEMORY[0x29EDC9520];
  *&v30[*(v29 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C29A160](v30);
  std::ostream::~ostream();
  result = MEMORY[0x29C29A320](v31);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t open_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v48[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v46);
  if ((v47[*(v46[0] - 24) + 16] & 5) != 0)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/context_id.cpp", 64);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 25);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ifs", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "no such file or directory: ", 27);
    v13 = strlen(a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a1, v13);
    MeCab::die::~die(&__p);
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v44 = 0;
  __s = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v14 = MEMORY[0x29EDC93D0];
  v15 = MEMORY[0x29EDC93C0];
  while (1)
  {
    std::ios_base::getloc((v46 + *(v46[0] - 24)));
    v16 = std::locale::use_facet(&__p, v14);
    v17 = (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__p);
    v18 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v46, &v41, v17);
    if ((*(v18 + *(*v18 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v43 >= 0)
    {
      v19 = &v41;
    }

    else
    {
      v19 = v41;
    }

    v20 = strlen(v19);
    v21 = 0;
    v22 = &v19[v20];
    v23 = &v44;
    while (v21 <= 1)
    {
      v24 = v22;
      if (v19 != v22)
      {
        v24 = v19;
        while (1)
        {
          v25 = *v24;
          if (v25 == 9 || v25 == 32)
          {
            break;
          }

          if (++v24 == v22)
          {
            v24 = v22;
            break;
          }
        }
      }

      *v24 = 0;
      if (*v19)
      {
        *v23++ = v19;
        ++v21;
      }

      v19 = v24 + 1;
      if (v24 == v22)
      {
        if (v21 != 2)
        {
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/context_id.cpp", 64);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(", 1);
          v28 = MEMORY[0x29C29A250](v27, 31);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") [", 3);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "2 == tokenize2(const_cast<char *>(line.c_str()),  \\t, col, 2)", 63);
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "] ", 2);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "format error: ", 14);
          if (v43 >= 0)
          {
            v33 = &v41;
          }

          else
          {
            v33 = v41;
          }

          if (v43 >= 0)
          {
            v34 = HIBYTE(v43);
          }

          else
          {
            v34 = v42;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
          MeCab::die::~die(&__p);
        }

        break;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v40, __s);
    if (a3)
    {
      MeCab::Iconv::convert(a3, &v40);
    }

    v35 = atoi(v44);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v40;
    }

    v39 = v35;
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(a2, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v41);
  }

  v46[0] = *MEMORY[0x29EDC9518];
  *(v46 + *(v46[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v47);
  std::istream::~istream();
  result = MEMORY[0x29C29A320](v48);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void build(void *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    v4 = 1;
    do
    {
      *(v3 + 14) = v4;
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      ++v4;
      v3 = v6;
    }

    while (v6 != a1 + 1);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = 0;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_299139834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::ContextID::lid(MeCab::ContextID *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 8) == v4)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/context_id.cpp", 64);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 106);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "it != left_.end()", 17);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "cannot find LEFT-ID  for ", 25);
    v12 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
    MeCab::die::~die(__p);
  }

  return v4[14];
}

void sub_299139950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::ContextID::rid(MeCab::ContextID *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this + 24, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 32) == v4)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/context_id.cpp", 64);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 113);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "it != right_.end()", 18);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "cannot find RIGHT-ID  for ", 26);
    v12 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
    MeCab::die::~die(__p);
  }

  return v4[14];
}

void sub_299139A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF0ACA0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x29EDC9560] + 64;
  a1[52] = MEMORY[0x29EDC9560] + 64;
  v3 = *(MEMORY[0x29EDC9520] + 16);
  v4 = *(MEMORY[0x29EDC9520] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC9560] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x29C29A150](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_299139DDC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C29A320](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C29A210](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C29A220](v13);
  return a1;
}

void sub_299139F54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C29A220](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x299139F34);
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
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

void sub_29913A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C29A160](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
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
  MEMORY[0x29C29A150](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29913A3F8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C29A320](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x29C29A170](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_29913A594(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29913A554);
  }

  __cxa_rethrow();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C29A160](a1 + 2);

  return std::istream::~istream();
}

void MeCab::die::~die(MeCab::die *this)
{
  std::ios_base::getloc((MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24)));
  v1 = std::locale::use_facet(&v2, MEMORY[0x29EDC93D0]);
  (v1->__vftable[2].~facet_0)(v1, 10);
  std::locale::~locale(&v2);
  std::ostream::put();
  std::ostream::flush();
  exit(-1);
}

void std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t mecab_dict_gen(MeCab::DictionaryGenerator *a1, char **a2)
{
  MEMORY[0x29C29A2E0](&v7);
  v5 = MeCab::DictionaryGenerator::run(a1, a2, v4);
  std::ios_base::Init::~Init(&v7);
  return v5;
}

uint64_t MeCab::DictionaryGenerator::run(MeCab::DictionaryGenerator *this, char **a2, char **a3)
{
  v4 = this;
  v106 = *MEMORY[0x29EDCA608];
  MeCab::Param::Param(v99);
  if (MeCab::Param::open(v99, v4, a2, &MeCab::DictionaryGenerator::run(int,char **)::long_options))
  {
    if (MeCab::Param::help_version(v99))
    {
      v94[0] = 0;
      v93 = v94;
      v95[1] = 0;
      v95[0] = 0;
      v94[1] = 0;
      v94[2] = v95;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      MeCab::FeatureIndex::FeatureIndex(&v89);
      v89.__locale_ = &unk_2A1F352E8;
      MeCab::Mmap<char>::Mmap(&v90);
      v92 = 0;
      *v91 = 0u;
      v88[1] = 0;
      v88[0] = 0;
      *v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
      v87 = v88;
      MeCab::Param::get<std::string>(v99, "dicdir", &v81);
      MeCab::Param::get<std::string>(v99, "outdir", &v80);
      MeCab::Param::get<std::string>(v99, "model", &v79);
      std::string::basic_string[abi:ne200100]<0>(&__str, "dicrc");
      MeCab::create_filename(&v81, &__str, v75);
      if ((v75[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = v75;
      }

      else
      {
        v5 = v75[0].__r_.__value_.__r.__words[0];
      }

      if (!MeCab::Param::load(v99, v5))
      {
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
        v8 = MEMORY[0x29C29A250](v7, 218);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "param.load(DCONF(DICRC))", 24);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "no such file or directory: ", 27);
        std::string::basic_string[abi:ne200100]<0>(&v101, "dicrc");
        MeCab::create_filename(&v81, &v101, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v14 = strlen(p_p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, v14);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v102 < 0)
        {
          operator delete(v101);
        }

        MeCab::die::~die(&v104);
      }

      if (SHIBYTE(v75[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      memset(&v78, 0, sizeof(v78));
      MeCab::Dictionary::Dictionary(v75);
      std::string::basic_string[abi:ne200100]<0>(&__p, "sys.dic");
      MeCab::create_filename(&v81, &__p, &__str);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((MeCab::Dictionary::open(v75, p_str, "r") & 1) == 0)
      {
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
        v18 = MEMORY[0x29C29A250](v17, 224);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "dic.open(DCONF(SYS_DIC_FILE), r)", 34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
        MeCab::die::~die(&v101);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::__assign_external(&v78, __s);
      size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "(", 1);
        v24 = MEMORY[0x29C29A250](v23, 226);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ") [", 3);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "!charset.empty()", 16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "] ", 2);
        MeCab::die::~die(&__str);
      }

      MeCab::Dictionary::~Dictionary(v75);
      MeCab::CharProperty::CharProperty(v75);
      if (!MeCab::CharProperty::open(v75, v99))
      {
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
        v30 = MEMORY[0x29C29A250](v29, 230);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") [", 3);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "property.open(param)", 20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "] ", 2);
        MeCab::die::~die(&__str);
      }

      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v78;
      }

      else
      {
        v33 = v78.__r_.__value_.__r.__words[0];
      }

      v77 = MeCab::decode_charset(v33, v27);
      MeCab::Param::get<std::string>(v99, "bos-feature", &v74);
      MeCab::Param::get<int>(v99, "cost-factor");
      memset(v73, 0, sizeof(v73));
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v81;
      }

      else
      {
        v34 = v81.__r_.__value_.__r.__words[0];
      }

      MeCab::enum_csv_dictionaries(v34, v73);
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v81.__r_.__value_.__l.__size_;
      }

      v36 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      v37 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      v38 = v80.__r_.__value_.__l.__size_;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = v80.__r_.__value_.__l.__size_;
      }

      if (v35 == v39)
      {
        v40 = (v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v81 : v81.__r_.__value_.__r.__words[0];
        v41 = (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v80 : v80.__r_.__value_.__r.__words[0];
        if (!memcmp(v40, v41, v35))
        {
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "(", 1);
          v44 = MEMORY[0x29C29A250](v43, 240);
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ") [", 3);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "dicdir != outdir", 16);
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "] ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "output directory = dictionary directory! Please specify different directory.", 76);
          MeCab::die::~die(&__str);
        }
      }

      if (v37 >= 0)
      {
        v48 = v36;
      }

      else
      {
        v48 = v38;
      }

      if (!v48)
      {
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "(", 1);
        v51 = MEMORY[0x29C29A250](v50, 243);
        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ") [", 3);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "!outdir.empty()", 15);
        v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "output directory is empty", 25);
        MeCab::die::~die(&__str);
      }

      v55 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = v79.__r_.__value_.__l.__size_;
      }

      if (!v55)
      {
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "(", 1);
        v58 = MEMORY[0x29C29A250](v57, 244);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ") [", 3);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "!model.empty()", 14);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "model file is empty", 19);
        MeCab::die::~die(&__str);
      }

      MeCab::DecoderFeatureIndex::open(&v89, v99);
    }

    v70 = 0;
  }

  else
  {
    v62 = MeCab::whatlog::str(&v100);
    std::string::basic_string[abi:ne200100]<0>(v75, v62);
    if ((v75[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = v75;
    }

    else
    {
      v63 = v75[0].__r_.__value_.__r.__words[0];
    }

    if ((v75[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v75[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v75[0].__r_.__value_.__l.__size_;
    }

    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v63, v64);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "\n\n", 2);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "\ntry '--help' for more information.", 35);
    std::ios_base::getloc((v68 + *(*v68 - 24)));
    v69 = std::locale::use_facet(&v89, MEMORY[0x29EDC93D0]);
    (v69->__vftable[2].~facet_0)(v69, 10);
    std::locale::~locale(&v89);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v75[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75[0].__r_.__value_.__l.__data_);
    }

    v70 = 0xFFFFFFFFLL;
  }

  MeCab::Param::~Param(v99);
  v71 = *MEMORY[0x29EDCA608];
  return v70;
}

void sub_29913C748()
{
  if (SLOBYTE(STACK[0x97F]) < 0)
  {
    operator delete(STACK[0x968]);
  }

  if (SLOBYTE(STACK[0x8EF]) < 0)
  {
    operator delete(STACK[0x8D8]);
  }

  MeCab::die::~die(&STACK[0x9F8]);
}

void sub_29913CA88()
{
  if (SLOBYTE(STACK[0x97F]) < 0)
  {
    operator delete(STACK[0x968]);
  }

  if (SLOBYTE(STACK[0x8EF]) < 0)
  {
    v0 = STACK[0x8D8];
    JUMPOUT(0x29913CAB0);
  }

  JUMPOUT(0x29913CAB4);
}

void sub_29913CAD0(void *a1, uint64_t a2, int a3, __int16 a4, char a5, char a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void *);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  std::ofstream::~ofstream(&STACK[0xA30]);
  if (a12 < 0)
  {
    operator delete(__p);
  }

  if (a6 < 0)
  {
    operator delete(a1);
  }

  STACK[0x968] = va;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x968]);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  MeCab::CharProperty::~CharProperty(va1);
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  MeCab::DictionaryRewriter::~DictionaryRewriter(&STACK[0x3A0]);
  MeCab::DecoderFeatureIndex::~DecoderFeatureIndex(&STACK[0x400]);
  MeCab::ContextID::~ContextID(&STACK[0x6D8]);
  MeCab::Param::~Param(&STACK[0x738]);
  _Unwind_Resume(v12);
}

double MeCab::Param::get<std::string>@<D0>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v5 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 8, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v5)
  {
    operator new();
  }

  if (*(v5 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(v5 + 56), *(v5 + 64));
  }

  else
  {
    v7 = *(v5 + 56);
  }

  result = *&v7.__r_.__value_.__l.__data_;
  *a3 = v7;
  return result;
}

void sub_29913CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::Param::get<int>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v3 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 8, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    v12 = *(v3 + 56);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v13 = 0;
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v4, size);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29A1C0](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = std::ws[abi:ne200100]<char,std::char_traits<char>>(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v11 = v13;
  __p = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v9;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29A320](&v19);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_29913CFD0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29A320](va);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MeCab::DictionaryGenerator::gencid(MeCab::DictionaryGenerator *this, const char *a2, MeCab::DictionaryRewriter *a3, MeCab::ContextID *a4)
{
  v15[72] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v15);
  if ((*(&v15[4] + *(v15[0] - 24)) & 5) != 0)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 54);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ifs", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "no such file or directory: ", 27);
    v12 = strlen(this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, this, v12);
    MeCab::die::~die(&v14);
  }

  v13 = &unk_2A1F35AF8;
  operator new[]();
}

void MeCab::DictionaryGenerator::gendic(MeCab::DictionaryGenerator *this, const char *a2, const char *a3, const MeCab::CharProperty *a4, MeCab::DictionaryRewriter *a5, const MeCab::ContextID *a6, MeCab::DecoderFeatureIndex *a7, BOOL a8, int a9)
{
  v38[72] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v38);
  if ((*(&v38[4] + *(v38[0] - 24)) & 5) != 0)
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "(", 1);
    v13 = MEMORY[0x29C29A250](v12, 125);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") [", 3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ifs", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] ", 2);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "no such file or directory: ", 27);
    v18 = strlen(this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, this, v18);
    MeCab::die::~die(v37);
  }

  std::ofstream::basic_ofstream(v37);
  if ((*(&v37[4] + *(v37[0] - 24)) & 5) != 0)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "(", 1);
    v21 = MEMORY[0x29C29A250](v20, 128);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") [", 3);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "ofs", 3);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] ", 2);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "permission denied: ", 19);
    v26 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, a2, v26);
    MeCab::die::~die(v33);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "emitting ", 9);
  v28 = strlen(a2);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, a2, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ... ", 5);
  std::ostream::flush();
  v32 = 0;
  v35 = 0;
  v34 = v36;
  v31 = v36;
  v36[2] = &v30;
  v36[0] = v33;
  operator new[]();
}

void sub_29913E4C0(_Unwind_Exception *a1)
{
  std::ofstream::~ofstream(&STACK[0x240]);
  std::ifstream::~ifstream(&STACK[0x478]);
  _Unwind_Resume(a1);
}

uint64_t MeCab::copy(MeCab *this, const char *a2, const char *a3)
{
  v38[19] = *MEMORY[0x29EDCA608];
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "copying ", 8);
  v6 = strlen(this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, this, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " to ", 4);
  v9 = strlen(a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a2, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v34, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v34);
  std::ostream::put();
  std::ostream::flush();
  MeCab::Mmap<char>::Mmap(v32);
  if ((MeCab::Mmap<char>::open(v32, this, "r") & 1) == 0)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 33);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "mmap.open(src)", 14);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    v18 = MeCab::whatlog::str(&v33);
    std::string::basic_string[abi:ne200100]<0>(&v34, v18);
    if ((v36 & 0x80u) == 0)
    {
      locale = &v34;
    }

    else
    {
      locale = v34.__locale_;
    }

    if ((v36 & 0x80u) == 0)
    {
      v20 = v36;
    }

    else
    {
      v20 = v35;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, locale, v20);
    if (v36 < 0)
    {
      operator delete(v34.__locale_);
    }

    MeCab::die::~die(&v31);
  }

  std::ofstream::basic_ofstream(&v34);
  if ((v37[*(v34.__locale_ - 3)] & 5) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_generator.cpp", 74);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "(", 1);
    v23 = MEMORY[0x29C29A250](v22, 35);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ") [", 3);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "ofs", 3);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "] ", 2);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "permission denied: ", 19);
    v28 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, a2, v28);
    MeCab::die::~die(&v31);
  }

  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v34 + *(v34.__locale_ - 3)), *&v37[*(v34.__locale_ - 3)] | 4);
  }

  v34.__locale_ = *MEMORY[0x29EDC9520];
  *(&v34 + *(v34.__locale_ - 3)) = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C29A160](&v35);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](v38);
  result = MeCab::Mmap<char>::~Mmap(v32);
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29913E9D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::locale a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(*v61);
  }

  MeCab::die::~die(&a12);
}

void MeCab::DictionaryRewriter::~DictionaryRewriter(char **this)
{
  std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy((this + 9), this[10]);
  v2 = this + 6;
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v2);
}

MeCab::Param *MeCab::Param::Param(MeCab::Param *this)
{
  *this = &unk_2A1F351E0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 2) = 0u;
  *(this + 3) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 16);
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  return this;
}

void sub_29913EB50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 127) < 0)
  {
    operator delete(*(v3 + 104));
  }

  if (*(v3 + 103) < 0)
  {
    operator delete(*(v3 + 80));
  }

  if (*(v3 + 79) < 0)
  {
    operator delete(*(v3 + 56));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

void MeCab::Param::~Param(std::locale *this)
{
  MeCab::Param::~Param(this);

  JUMPOUT(0x29C29A380);
}

{
  this->__locale_ = &unk_2A1F351E0;
  v2 = this + 16;
  if (SHIBYTE(this[51].__locale_) < 0)
  {
    operator delete(this[49].__locale_);
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  this[16].__locale_ = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = v3[3];
  this[17].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[27].__locale_) < 0)
  {
    operator delete(this[25].__locale_);
  }

  this[17].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 18);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[30]);
  if (SHIBYTE(this[15].__locale_) < 0)
  {
    operator delete(this[13].__locale_);
  }

  if (SHIBYTE(this[12].__locale_) < 0)
  {
    operator delete(this[10].__locale_);
  }

  if (SHIBYTE(this[9].__locale_) < 0)
  {
    operator delete(this[7].__locale_);
  }

  v5 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&this[1], this[2].__locale_);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_29913ED20(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C29A320](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29A2B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_29913EDDC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void **MeCab::whatlog::str(MeCab::whatlog *this)
{
  v2 = std::stringbuf::view[abi:ne200100](this + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = (this + 264);
  if (*(this + 287) < 0)
  {
    operator delete(*v5);
  }

  *v5 = __dst;
  *(this + 35) = v8;
  if (*(this + 287) < 0)
  {
    return *v5;
  }

  return v5;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

double MeCab::FeatureIndex::FeatureIndex(MeCab::FeatureIndex *this)
{
  *this = &unk_2A1F354B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = &unk_2A1F35418;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0x40000;
  *(this + 11) = &unk_2A1F35438;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 0x40000;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 9) = 0u;
  *(this + 32) = 0;
  *(this + 33) = this + 272;
  *(this + 36) = &unk_2A1F35498;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 160) = 1;
  *(this + 41) = 0;
  *(this + 42) = 0;
  return result;
}

void MeCab::FeatureIndex::~FeatureIndex(char **this)
{
  *this = &unk_2A1F354B8;
  MeCab::StringBuffer::~StringBuffer((this + 36));
  std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy((this + 33), this[34]);
  v5 = (this + 30);
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 27);
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 24);
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = this[21];
  if (v2)
  {
    this[22] = v2;
    operator delete(v2);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }

  MeCab::ChunkFreeList<char>::~ChunkFreeList(this + 11);
  MeCab::ChunkFreeList<int>::~ChunkFreeList(this + 4);
  v4 = this[1];
  if (v4)
  {
    this[2] = v4;
    operator delete(v4);
  }
}

void MeCab::ChunkFreeList<int>::~ChunkFreeList(void *a1)
{
  MeCab::ChunkFreeList<int>::~ChunkFreeList(a1);

  JUMPOUT(0x29C29A380);
}

void MeCab::ChunkFreeList<char>::~ChunkFreeList(void *a1)
{
  MeCab::ChunkFreeList<char>::~ChunkFreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::ChunkFreeList<char>::~ChunkFreeList(void *a1)
{
  *a1 = &unk_2A1F35438;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x29C29A350](v2[2 * v5 + 1], 0x1000C8077774924);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *MeCab::ChunkFreeList<int>::~ChunkFreeList(void *a1)
{
  *a1 = &unk_2A1F35418;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x29C29A350](v2[2 * v5 + 1], 0x1000C8052888210);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t MeCab::Mmap<char>::Mmap(uint64_t a1)
{
  *a1 = &unk_2A1F35260;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = -1;
  return a1;
}

void sub_29913F4C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::Mmap<char>::~Mmap(uint64_t a1)
{
  MeCab::Mmap<char>::~Mmap(a1);

  JUMPOUT(0x29C29A380);
}

uint64_t MeCab::Mmap<char>::~Mmap(uint64_t a1)
{
  *a1 = &unk_2A1F35260;
  MeCab::Mmap<char>::close(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 48) = *MEMORY[0x29EDC9538];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x29C29A320](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *MeCab::Mmap<char>::close(uint64_t a1)
{
  v2 = *(a1 + 336);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 336) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

void MeCab::scoped_ptr<std::string>::~scoped_ptr(void *a1)
{
  MeCab::scoped_ptr<std::string>::~scoped_ptr(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<std::string>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F355A0;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x29C29A380](v2, 0x1012C40EC159624);
  }

  return a1;
}

MeCab::CharProperty *MeCab::CharProperty::CharProperty(MeCab::CharProperty *this)
{
  *this = &unk_2A1F35500;
  MeCab::Mmap<char>::Mmap(this + 8);
  *(this + 96) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 49);
  *(this + 84) = 0;
  *(this + 41) = 0u;
  return this;
}

void sub_29913F7E0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 352);
  if (v3)
  {
    *(v1 + 360) = v3;
    operator delete(v3);
  }

  MeCab::Mmap<char>::~Mmap(v1 + 8);
  _Unwind_Resume(a1);
}

void MeCab::CharProperty::~CharProperty(std::locale *this)
{
  MeCab::CharProperty::~CharProperty(this);

  JUMPOUT(0x29C29A380);
}

{
  this->__locale_ = &unk_2A1F35500;
  v2 = this + 1;
  MeCab::Mmap<char>::close(&this[1]);
  if (SHIBYTE(this[84].__locale_) < 0)
  {
    operator delete(this[82].__locale_);
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  this[49].__locale_ = *MEMORY[0x29EDC9538];
  *(this + *(v4 - 24) + 392) = v3[3];
  this[50].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[60].__locale_) < 0)
  {
    operator delete(this[58].__locale_);
  }

  this[50].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 51);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[63]);
  locale = this[44].__locale_;
  if (locale)
  {
    this[45].__locale_ = locale;
    operator delete(locale);
  }

  MeCab::Mmap<char>::~Mmap(v2);
}

void *MeCab::scoped_ptr<int>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35540;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A380](v2, 0x1000C4052888210);
  }

  return a1;
}

void MeCab::scoped_ptr<int>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35540;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A380](v1, 0x1000C4052888210);
  }

  JUMPOUT(0x29C29A380);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
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
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_29913FB90(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C29A320](v1);
  _Unwind_Resume(a1);
}

void *std::ws[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  MEMORY[0x29C29A170](&v12, a1, 1);
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v11);
  v3 = a1 + 5;
  while (1)
  {
    v4 = *(v3 + *(*a1 - 24));
    v5 = v4[3];
    if (v5 == v4[4])
    {
      break;
    }

    LOBYTE(v6) = *v5;
LABEL_6:
    if ((v6 & 0x80) != 0 || (*(&v2[1].~facet + (v6 & 0x7F)) & 0x4000) == 0)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = *(v3 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 == v7[4])
    {
      (*(*v7 + 80))(v7);
    }

    else
    {
      v7[3] = v8 + 1;
    }
  }

  v6 = (*(*v4 + 72))(v4);
  if (v6 != -1)
  {
    goto LABEL_6;
  }

  v9 = 2;
LABEL_12:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_29913FD3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29913FCF8);
  }

  __cxa_rethrow();
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
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

void *MeCab::scoped_fixed_array<char,8192>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35AF8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8077774924);
  }

  return a1;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C29A160](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C29A320](a1 + 53);
  return a1;
}

void MeCab::scoped_fixed_array<char,8192>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35AF8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29A380);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x29EDC9520];
  v3 = *MEMORY[0x29EDC9520];
  *a1 = *MEMORY[0x29EDC9520];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C29A160](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](a1 + 52);
  return a1;
}

uint64_t MeCab::Mmap<char>::open(uint64_t a1, char *a2, _BYTE *a3)
{
  MeCab::Mmap<char>::close(a1);
  std::string::basic_string[abi:ne200100]<0>(&v47, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v47.st_dev;
  *(a1 + 40) = *&v47.st_uid;
  if (*a3 != 114)
  {
    goto LABEL_7;
  }

  v6 = a3[1];
  if (a3[1])
  {
    if (v6 != 43 || a3[2])
    {
LABEL_7:
      v8 = *(a1 + 48);
      v7 = (a1 + 48);
      std::ios_base::clear((v7 + *(v8 - 24)), 0);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(", 1);
      v11 = MEMORY[0x29C29A250](v10, 158);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") [", 3);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "false", 5);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] ", 2);
      v15 = "unknown open mode: ";
      v16 = 19;
      goto LABEL_8;
    }

    v6 = 2;
  }

  *(a1 + 340) = v6;
  v21 = open(a2, v6);
  *(a1 + 336) = v21;
  if (v21 < 0)
  {
    v27 = *(a1 + 48);
    v26 = (a1 + 48);
    std::ios_base::clear((v26 + *(v27 - 24)), 0);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
    v30 = MEMORY[0x29C29A250](v29, 160);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") [", 3);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "(fd = ::open(filename, flag | O_BINARY)) >= 0", 45);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "] ", 2);
    v15 = "open failed: ";
    v16 = 13;
  }

  else if (fstat(v21, &v47) < 0)
  {
    v34 = *(a1 + 48);
    v33 = (a1 + 48);
    std::ios_base::clear((v33 + *(v34 - 24)), 0);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
    v37 = MEMORY[0x29C29A250](v36, 163);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") [", 3);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "::fstat(fd, &st) >= 0", 21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "] ", 2);
    v15 = "failed to get file size: ";
    v16 = 25;
  }

  else
  {
    st_size = v47.st_size;
    *(a1 + 16) = v47.st_size;
    if (*(a1 + 340) == 2)
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }

    v24 = mmap(0, st_size, v23, 1, *(a1 + 336), 0);
    if (v24 != -1)
    {
      v25 = v24;
      v19 = 1;
      madvise(v24, *(a1 + 16), 1);
      *(a1 + 8) = v25;
      close(*(a1 + 336));
      *(a1 + 336) = -1;
      return v19;
    }

    v41 = *(a1 + 48);
    v40 = (a1 + 48);
    std::ios_base::clear((v40 + *(v41 - 24)), 0);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/mmap.h", 56);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "(", 1);
    v44 = MEMORY[0x29C29A250](v43, 174);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ") [", 3);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "(p = reinterpret_cast<char *> (::mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 89);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "] ", 2);
    v15 = "mmap() failed: ";
    v16 = 15;
  }

LABEL_8:
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a2, v18);
  return 0;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(a1, *(a2 + 1));
    if (a2[127] < 0)
    {
      operator delete(*(a2 + 13));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MeCab::RewritePattern>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MeCab::RewritePattern>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 6;
      v6 = v4 - 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void MeCab::DecoderFeatureIndex::~DecoderFeatureIndex(void **this)
{
  *this = &unk_2A1F352E8;
  if (*(this + 711) < 0)
  {
    operator delete(this[86]);
  }

  MeCab::Mmap<char>::~Mmap((this + 43));

  MeCab::FeatureIndex::~FeatureIndex(this);
}

{
  *this = &unk_2A1F352E8;
  if (*(this + 711) < 0)
  {
    operator delete(this[86]);
  }

  MeCab::Mmap<char>::~Mmap((this + 43));

  MeCab::FeatureIndex::~FeatureIndex(this);
}

{
  *this = &unk_2A1F352E8;
  if (*(this + 711) < 0)
  {
    operator delete(this[86]);
  }

  MeCab::Mmap<char>::~Mmap((this + 43));
  MeCab::FeatureIndex::~FeatureIndex(this);

  JUMPOUT(0x29C29A380);
}

void MeCab::ContextID::~ContextID(MeCab::ContextID *this)
{
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this + 24, *(this + 4));
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this, *(this + 1));
}

void sub_299140BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x29C29A350](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::tokenizeCSV<std::back_insert_iterator<std::vector<std::string>>>(const char *a1, uint64_t a2)
{
  v3 = a1;
  v4 = strlen(a1);
  if (v4 >= 1)
  {
    v5 = &v3[v4];
    v6 = 512;
    do
    {
      for (i = v3; ; ++i)
      {
        v8 = *i;
        if (v8 != 9 && v8 != 32)
        {
          break;
        }

        ++v3;
      }

      if (v8 == 34)
      {
        v9 = ++i;
        v10 = i;
        if (i < v5)
        {
          v10 = i;
          v9 = i;
          do
          {
            v11 = *v10;
            if (v11 == 34)
            {
              v12 = *++v10;
              if (v12 != 34)
              {
                break;
              }
            }

            *v9++ = v11;
            ++v10;
          }

          while (v10 < v5);
        }

        v13 = memchr(v10, 44, v5 - v10);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v5;
        }
      }

      else
      {
        v15 = memchr(i, 44, v5 - v3);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v5;
        }

        v9 = &i[v16 - v3];
        v14 = v9;
      }

      if (v6 >= 2)
      {
        *v9 = 0;
      }

      v17 = strlen(i);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v32) = v17;
      if (v17)
      {
        memmove(&v31, i, v17);
      }

      *(&v31 + v18) = 0;
      v20 = *(a2 + 8);
      v19 = *(a2 + 16);
      if (v20 >= v19)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v23;
        }

        v33.__end_cap_.__value_ = a2;
        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v25);
        }

        v26 = 24 * v22;
        *v26 = v31;
        *(v26 + 16) = v32;
        v21 = 24 * v22 + 24;
        v27 = *(a2 + 8) - *a2;
        v28 = 24 * v22 - v27;
        memcpy((v26 - v27), *a2, v27);
        v29 = *a2;
        *a2 = v28;
        v33.__first_ = v29;
        v33.__begin_ = v29;
        *(a2 + 8) = v21;
        v33.__end_ = v29;
        v30 = *(a2 + 16);
        *(a2 + 16) = 0;
        v33.__end_cap_.__value_ = v30;
        std::__split_buffer<std::string>::~__split_buffer(&v33);
      }

      else
      {
        *v20 = v31;
        *(v20 + 16) = v32;
        v21 = v20 + 24;
      }

      *(a2 + 8) = v21;
      if (!--v6)
      {
        break;
      }

      v3 = (v14 + 1);
    }

    while ((v14 + 1) < v5);
  }
}

void sub_299140E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::RewriteRules::rewrite(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v4 + 48 * v6);
    v9 = *v7;
    v8 = v7[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 3) <= a2)
    {
      break;
    }

LABEL_19:
    ++v6;
    v4 = *a1;
    if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4))
    {
      return 0;
    }
  }

  if (v8 != v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = (v9 + 24 * v10);
      if (v11[23] < 0)
      {
        v11 = *v11;
      }

      v12 = *v11;
      if (v12 != 42)
      {
        if (strcmp(v11, *(a3 + 8 * v10)))
        {
          break;
        }
      }

      if (++v10 >= 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3))
      {
        goto LABEL_21;
      }
    }

    v13 = strlen(v11);
    if (v12 == 40 && v13 >= 3 && v11[v13 - 1] == 41)
    {
      v58.__r_.__value_.__r.__words[0] = &unk_2A1F35AF8;
      operator new[]();
    }

    goto LABEL_19;
  }

LABEL_21:
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

  v16 = v7[3];
  if (v7[4] != v16)
  {
    v17 = 0;
    v18 = a3 - 8;
    do
    {
      memset(&v58, 0, sizeof(v58));
      v19 = (v16 + 24 * v17);
      v20 = v19[23];
      if (v20 < 0)
      {
        v21 = v19;
        v19 = *v19;
        v20 = *(v21 + 1);
      }

      if (v20 >= 1)
      {
        v22 = &v19[v20];
        v55 = &v19[v20];
        v23 = &v19[v20 - 2];
        do
        {
          v24 = *v19;
          if (v24 == 36)
          {
            v25 = v19 + 1;
            if ((v19 + 1) >= v22)
            {
              v27 = 0;
              v30 = 0;
            }

            else
            {
              v26 = v19[1];
              if (v26 - 48 > 9)
              {
                v27 = 0;
                v30 = 1;
              }

              else
              {
                v27 = 0;
                v28 = v23 - v19;
                while (1)
                {
                  v27 = 10 * v27 + v26 - 48;
                  if (!v28)
                  {
                    break;
                  }

                  v29 = *++v25;
                  v26 = v29;
                  --v28;
                  if (v29 - 48 > 9)
                  {
                    goto LABEL_41;
                  }
                }

                v25 = v55;
LABEL_41:
                v30 = v25 < v22;
              }
            }

            v19 = v25;
            if (v27 - 1 >= a2)
            {
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
              v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "(", 1);
              v33 = MEMORY[0x29C29A250](v32, 109);
              v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") [", 3);
              v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "n > 0 && (n - 1) < size", 23);
              v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "] ", 2);
              v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " out of range: [", 16);
              v38 = v7[3] + 24 * v17;
              v39 = *(v38 + 23);
              if (v39 >= 0)
              {
                v40 = v7[3] + 24 * v17;
              }

              else
              {
                v40 = *v38;
              }

              if (v39 >= 0)
              {
                v41 = *(v38 + 23);
              }

              else
              {
                v41 = *(v38 + 8);
              }

              v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40, v41);
              v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "] ", 2);
              MEMORY[0x29C29A270](v43, v27);
              MeCab::die::~die(&v57);
            }

            v44 = *(v18 + 8 * v27);
            v45 = strlen(v44);
            std::string::append(&v58, v44, v45);
            if (v30)
            {
              std::string::push_back(&v58, *v19);
            }
          }

          else
          {
            std::string::push_back(&v58, v24);
          }

          ++v19;
        }

        while (v19 < v22);
      }

      if ((MeCab::escape_csv_element(&v58) & 1) == 0)
      {
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "(", 1);
        v48 = MEMORY[0x29C29A250](v47, 117);
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ") [", 3);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "escape_csv_element(&elm)", 24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "] ", 2);
        MeCab::die::~die(&v57);
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a4, v51, size);
      if (++v17 != 0xAAAAAAAAAAAAAAABLL * ((v7[4] - v7[3]) >> 3))
      {
        std::string::append(a4, ",", 1uLL);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v16 = v7[3];
    }

    while (v17 < 0xAAAAAAAAAAAAAAABLL * ((v7[4] - v16) >> 3));
  }

  return 1;
}

void sub_2991415D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    MEMORY[0x29C29A350](a20, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::DictionaryRewriter::open(MeCab::DictionaryRewriter *this, const char *a2, MeCab::Iconv *a3)
{
  v43[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v41);
  if ((v42[*(v41[0] - 24) + 16] & 5) != 0)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 140);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ifs", 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "no such file or directory: ", 27);
    v13 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a2, v13);
    MeCab::die::~die(&__p);
  }

  v14 = 0;
  v15 = 1;
  memset(&__p, 0, sizeof(__p));
  v16 = MEMORY[0x29EDC93D0];
LABEL_4:
  v17 = v14;
  v18 = v15;
  while (1)
  {
    std::ios_base::getloc((v41 + *(v41[0] - 24)));
    v19 = std::locale::use_facet(&v40, v16);
    v20 = (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v40);
    v21 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v41, &__p, v20);
    if ((*(v21 + *(*v21 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (a3)
    {
      MeCab::Iconv::convert(a3, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        v22 = __p.__r_.__value_.__r.__words[0];
        if (*__p.__r_.__value_.__l.__data_ != 35)
        {
          if (__p.__r_.__value_.__l.__size_ == 14)
          {
            v15 = 0;
            v29 = *__p.__r_.__value_.__l.__data_ == 0x6572207466656C5BLL && *(__p.__r_.__value_.__r.__words[0] + 6) == 0x5D65746972776572;
LABEL_48:
            v14 = 2;
            if (!v29)
            {
              goto LABEL_49;
            }

            goto LABEL_4;
          }

          if (__p.__r_.__value_.__l.__size_ == 15)
          {
            goto LABEL_36;
          }

          if (__p.__r_.__value_.__l.__size_ != 17)
          {
            goto LABEL_49;
          }

          v15 = 0;
          v23 = *__p.__r_.__value_.__l.__data_ == 0x6D617267696E755BLL && *(__p.__r_.__value_.__r.__words[0] + 8) == 0x6574697277657220;
          v24 = v23 && *(__p.__r_.__value_.__r.__words[0] + 16) == 93;
LABEL_32:
          v14 = 1;
          if (!v24)
          {
LABEL_49:
            if (v18)
            {
              v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
              v32 = MEMORY[0x29C29A250](v31, 153);
              v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") [", 3);
              v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "append_to != 0", 14);
              v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "] ", 2);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "no sections found", 17);
              MeCab::die::~die(&v40);
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if (v17 != 1)
            {
              if (v17 == 2)
              {
              }
            }
          }

          goto LABEL_4;
        }
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23) && __p.__r_.__value_.__s.__data_[0] != 35)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 14)
      {
        v15 = 0;
        v29 = __p.__r_.__value_.__r.__words[0] == 0x6572207466656C5BLL && *(__p.__r_.__value_.__r.__words + 6) == 0x5D65746972776572;
        goto LABEL_48;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 15)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 17)
        {
          v15 = 0;
          v24 = __p.__r_.__value_.__r.__words[0] == 0x6D617267696E755BLL && __p.__r_.__value_.__l.__size_ == 0x6574697277657220 && __p.__r_.__value_.__s.__data_[16] == 93;
          goto LABEL_32;
        }

        goto LABEL_49;
      }

      v22 = &__p;
LABEL_36:
      v15 = 0;
      v26 = v22->__r_.__value_.__r.__words[0];
      v27 = *(v22->__r_.__value_.__r.__words + 7);
      v28 = v26 == 0x722074686769725BLL && v27 == 0x5D65746972776572;
      v14 = 3;
      if (!v28)
      {
        goto LABEL_49;
      }

      goto LABEL_4;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v41[0] = *MEMORY[0x29EDC9518];
  *(v41 + *(v41[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v42);
  std::istream::~istream();
  MEMORY[0x29C29A320](v43);
  v37 = *MEMORY[0x29EDCA608];
  return 1;
}

void sub_299141BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a16);
  _Unwind_Resume(a1);
}

void anonymous namespace::append_rewrite_rule(void *a1, const char *a2)
{
  memset(v17, 0, sizeof(v17));
  v4 = MeCab::tokenize2<std::back_insert_iterator<std::vector<char *>>>(a2, " \t", v17, 3uLL);
  if (v4 <= 1)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 29);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "n >= 2", 6);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "format error: ", 14);
    v12 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
    MeCab::die::~die(&__p);
  }

  std::vector<MeCab::RewritePattern>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1);
  memset(&__p, 0, sizeof(__p));
  v13 = v17[0];
  p_p = *(v17[0] + 1);
  if (v4 >= 3)
  {
    std::string::__assign_external(&__p, *(v17[0] + 1));
    std::string::push_back(&__p, 32);
    v15 = strlen(*(v17[0] + 2));
    std::string::append(&__p, *(v17[0] + 2), v15);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v13 = v17[0];
    *(v17[0] + 1) = p_p;
  }

  MeCab::RewritePattern::set_pattern((a1[1] - 48), *v13, p_p);
}

void sub_299141DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299142204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x29C29A350](a20, v20);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_fixed_array<char *,8192>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B28;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x10C80436913F5);
  }

  return a1;
}

uint64_t MeCab::DictionaryRewriter::rewrite2(uint64_t a1, void **a2, std::string *a3, std::string *a4, std::string *a5)
{
  v9 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 72, a2);
  if (a1 + 80 == v9)
  {
    MeCab::DictionaryRewriter::rewrite();
  }

  v10 = v9;
  std::string::operator=(a3, (v9 + 56));
  std::string::operator=(a4, (v10 + 80));
  std::string::operator=(a5, (v10 + 104));
  return 1;
}

void sub_299142430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  std::pair<std::string,MeCab::FeatureSet>::~pair(&a9);
  MeCab::FeatureSet::~FeatureSet(&a21);
  _Unwind_Resume(a1);
}

uint64_t MeCab::POSIDGenerator::open(MeCab::POSIDGenerator *this, const char *a2, MeCab::Iconv *a3, unint64_t *a4)
{
  v47[19] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v45);
  if ((v46[*(v45[0] - 24) + 16] & 5) != 0)
  {
    v6 = strlen(a2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], a2, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " is not found. minimum setting is used", 38);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v43, MEMORY[0x29EDC93D0]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    std::vector<MeCab::RewritePattern>::resize(this, 1uLL);
    MeCab::RewritePattern::set_pattern((*(this + 1) - 48), "*", "1");
  }

  v10 = MEMORY[0x29EDC93C0];
  memset(&v43, 0, sizeof(v43));
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::ios_base::getloc((v45 + *(v45[0] - 24)));
  v11 = std::locale::use_facet(&v44, MEMORY[0x29EDC93D0]);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v44);
  v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, &v43, v12);
  if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
  {
    v41 = __p;
    if (a3)
    {
      MeCab::Iconv::convert(a3, &v43);
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v43;
    }

    else
    {
      v14 = v43.__r_.__value_.__r.__words[0];
    }

    if (MeCab::tokenize2<std::back_insert_iterator<std::vector<char *>>>(v14, " \t", &__p, 2uLL) != 2)
    {
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
      v17 = MEMORY[0x29C29A250](v16, 229);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "n == 2", 6);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "format error: ", 14);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v43;
      }

      else
      {
        v22 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
      MeCab::die::~die(&v44);
    }

    v24 = *(__p + 1);
    v25 = *v24;
    if (*v24)
    {
      v26 = v24 + 1;
      do
      {
        if ((v25 - 48) >= 0xA)
        {
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_rewriter.cpp", 73);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "(", 1);
          v29 = MEMORY[0x29C29A250](v28, 231);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ") [", 3);
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "*p >= '0' && *p <= '9'", 22);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "] ", 2);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "not a number: ", 14);
          v34 = strlen(*(__p + 1));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, *(__p + 1), v34);
          MeCab::die::~die(&v44);
        }

        v35 = *v26++;
        v25 = v35;
      }

      while (v35);
    }

    std::vector<MeCab::RewritePattern>::resize(this, 1 - 0x5555555555555555 * ((*(this + 1) - *this) >> 4));
    MeCab::RewritePattern::set_pattern((*(this + 1) - 48), *__p, *(__p + 1));
  }

  if (a4)
  {
    *a4 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) - 40) - *(*(this + 1) - 48)) >> 3);
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v45[0] = *MEMORY[0x29EDC9518];
  *(v45 + *(v45[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v46);
  std::istream::~istream();
  MEMORY[0x29C29A320](v47);
  v36 = *MEMORY[0x29EDCA608];
  return 1;
}

void std::vector<MeCab::RewritePattern>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 48 * a2);

      std::vector<MeCab::RewritePattern>::__base_destruct_at_end[abi:ne200100](a1, v11);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 48 * ((48 * v6 - 48) / 0x30) + 48);
    *(a1 + 8) = v4 + 48 * ((48 * v6 - 48) / 0x30) + 48;
  }
}

unint64_t MeCab::tokenize2<std::back_insert_iterator<std::vector<char *>>>(const char *a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = strlen(a1);
  v9 = strlen(a2);
  if (!a4)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v12 = &v7[v8];
  do
  {
    v13 = v12;
    if (v7 != v12)
    {
      v13 = v7;
      while (!v10)
      {
LABEL_9:
        if (++v13 == v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v14 = v10;
      v15 = a2;
      while (*v13 != *v15)
      {
        ++v15;
        if (!--v14)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_11:
    *v13 = 0;
    if (*v7)
    {
      v17 = *(a3 + 8);
      v16 = *(a3 + 16);
      if (v17 >= v16)
      {
        v19 = (v17 - *a3) >> 3;
        if ((v19 + 1) >> 61)
        {
          std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
        }

        v20 = v16 - *a3;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a3, v22);
        }

        v23 = (8 * v19);
        *v23 = v7;
        v18 = 8 * v19 + 8;
        v24 = *(a3 + 8) - *a3;
        v25 = v23 - v24;
        memcpy(v23 - v24, *a3, v24);
        v26 = *a3;
        *a3 = v25;
        *(a3 + 8) = v18;
        *(a3 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v7;
        v18 = (v17 + 1);
      }

      *(a3 + 8) = v18;
      ++v11;
    }

    if (v13 == v12)
    {
      break;
    }

    v7 = v13 + 1;
  }

  while (v11 < a4);
  return v11;
}

void sub_299143148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    MEMORY[0x29C29A350](a17, 0x10C80436913F5);
  }

  if (a20)
  {
    MEMORY[0x29C29A350](a20, v20);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,MeCab::FeatureSet>::pair[abi:ne200100]<std::string const&,MeCab::FeatureSet&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v8 = a3[3];
    this[3].__r_.__value_.__r.__words[2] = *(a3 + 8);
    *&this[3].__r_.__value_.__l.__data_ = v8;
  }

  return this;
}

void sub_299143280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,MeCab::FeatureSet>::~pair(uint64_t a1)
{
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

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void MeCab::FeatureSet::~FeatureSet(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MeCab::scoped_fixed_array<char *,8192>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B28;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x10C80436913F5);
  }

  JUMPOUT(0x29C29A380);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::__emplace_unique_key_args<std::string,std::pair<std::string,MeCab::FeatureSet>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t anonymous namespace::__btrie_insert_fat(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v6 = *(result + 56);
  v7 = 4 * (a2 & 0x3FFFFFFF);
  v8 = (v6 + v7);
  if (!a4)
  {
LABEL_19:
    *v8 = a5;
    return result;
  }

  v9 = a4;
  v11 = result;
  while (1)
  {
    v12 = *a3;
    v13 = v8 + 1;
    v14 = v8[v12 + 1];
    v15 = v8[v12 + 1] & 3;
    result = v14 >> 2;
    if ((v14 & 3) > 1)
    {
      if (v15 != 3)
      {
        return result;
      }

      ++a3;
      LODWORD(v18) = v9 - 1;
      goto LABEL_18;
    }

    if (!v15)
    {
      if (*(v11 + 80) != *(v11 + 72))
      {
        *(v11 + 72) = (*(v11 + 80) & 0xFFFFFFFCLL) + *(*(v11 + 120) + (*(v11 + 80) & 0xFFFFFFFCLL)) + 4;
      }

      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v16 >> 2) | 0x100000000;
      }

      v13[v12] = HIDWORD(v17) | (4 * v17);
      result = v17;
    }

    v19 = (*(v11 + 120) + 4 * (result & 0x3FFFFFFF));
    v18 = (v9 - 1);
    if (v9 == 1)
    {
      v19[1] = a5;
      v23 = 4;
      goto LABEL_22;
    }

    v20 = *v19;
    if (!v20)
    {
      *v19 = 4;
      v20 = 4;
    }

    ++a3;
    v21 = (v9 + 4);
    v22 = v20 + 4;
    if (v22 + v21 < *(v11 + 200))
    {
      break;
    }

    v6 = *(v11 + 56);
    *(v6 + v7 + 4 * v12 + 4) = HIDWORD(result) | (4 * result);
LABEL_18:
    v7 = 4 * (result & 0x3FFFFFFF);
    v8 = (v6 + v7);
    v9 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  *(v19 + v22) = v18;
  v24 = v19 + v22 + 1;
  result = memcpy(v24, a3, v18);
  *&v24[v18] = a5;
  v23 = *v19 + v21;
LABEL_22:
  *v19 = v23;
  return result;
}

uint64_t btrie_build(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t *a4, _DWORD *a5)
{
  v5 = 1;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        v8 = a4;
        if (a4)
        {
          v50 = 1024;
          v33 = 0;
          v34 = 0;
          v32 = 0x10000;
          v36 = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
          v35 = 0;
          bzero(v36, 0x10000uLL);
          __n = 0;
          v39 = 0;
          v37 = 0x10000;
          __src = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
          v40 = 0;
          bzero(__src, 0x10000uLL);
          size = 0;
          v44 = 0;
          v42 = *(a1 + 40);
          v11 = *(a1 + 8);
          v47 = *(a1 + 56);
          v46 = a1 + 48;
          ptr = v11;
          v45 = 1;
          bzero(v11, v42);
          v13 = (v12 >> 2) | 0x300000000;
          if (v12 == -1)
          {
            v13 = 0;
          }

          v49 = v13;
          while (1)
          {
            v15 = *v8++;
            v14 = v15;
            if ((v15 - 257) <= 0xFFFFFFFFFFFFFEFFLL)
            {
              break;
            }

            v17 = *v7++;
            v16 = v17;
            LODWORD(v17) = *a5++;
            if (!--v6)
            {
              v37 = (v39 & 0xFFFFFFFC) + *(__src + (v39 & 0xFFFFFFFC)) + 4;
              __n = v37;
              v32 = v33;
              v20 = size;
              if (v21 == -1)
              {
                v5 = 0xFFFFFFFFLL;
              }

              else
              {
                v22 = v21;
                memcpy(ptr + v21, __src, __n);
                v23 = ptr;
                v24 = v47;
                v25 = ptr + v18;
                v26 = HIDWORD(v19) + 4 * v19;
                *v25 = 1;
                v25[1] = v26;
                v25[2] = v20;
                v25[3] = v22;
                v27 = v50;
                v28 = __n;
                v29 = size;
                v25[4] = __n;
                v25[5] = v27;
                *a1 = v26;
                *(a1 + 24) = v28;
                *(a1 + 32) = v27;
                v42 = v29;
                if (v24)
                {
                  v30 = v24();
                }

                else
                {
                  v30 = malloc_type_realloc(v23, v29, 0x5BE1FB78uLL);
                }

                v5 = 0;
                ptr = v30;
                *(a1 + 8) = v30;
                *(a1 + 16) = &v30[v22];
              }

              if (v36)
              {
                free(v36);
              }

              if (__src)
              {
                free(__src);
              }

              return v5;
            }
          }

          if (v36)
          {
            free(v36);
          }

          if (__src)
          {
            free(__src);
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v5;
}

uint64_t anonymous namespace::__btrie_storage_alloc_aligned(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (a3 + a1[1] - 1) & -a3;
  v6 = v5 + a2;
  if (v5 + a2 <= *a1)
  {
LABEL_13:
    a1[1] = v6;
    a1[2] = v5;
    return v5;
  }

  while (1)
  {
    v7 = 2 * v4 ? 2 * v4 : 0x10000;
    if (!*(a1 + 6))
    {
      break;
    }

    v8 = a1[5];
    v9 = a1[7];
    v4 = v7;
    if (!v8)
    {
      v10 = malloc_type_realloc(v9, v7, 0x9B4E535BuLL);
      a1[7] = v10;
      *a1[4] = 1;
      goto LABEL_11;
    }

    a1[7] = v8(v9, v7, a1[6]);
LABEL_12:
    *a1 = v4;
    if (v6 <= v4)
    {
      goto LABEL_13;
    }
  }

  v4 = v7;
  v10 = malloc_type_realloc(a1[7], v7, 0x9B45BB1CuLL);
  a1[7] = v10;
  if (v10)
  {
LABEL_11:
    bzero(&v10[*a1], v4 - *a1);
    goto LABEL_12;
  }

  return -1;
}

uint64_t anonymous namespace::__btrie_burst_flat(uint64_t a1)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 200);
  v3 = MEMORY[0x2A1C7C4A8]();
  v5 = (v18 - ((v4 + 19) & 0x1FFFFFFF0));
  v7 = 4 * (v6 & 0x3FFFFFFF);
  v8 = (*(v3 + 120) + v7);
  v9 = *v8;
  *v5 = v9;
  memcpy(v5 + 1, v8 + 1, v9);
  if (*(a1 + 80) == v7)
  {
    bzero(v8, *(a1 + 72) - v7);
    *(a1 + 72) = *(a1 + 80);
  }

  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v10 >> 2) | 0x300000000;
  }

  *(*(a1 + 56) + 4 * (v11 & 0x3FFFFFFF)) = v5[1];
  if (v9 >= 5)
  {
    v12 = v5 + v9;
    v13 = (v5 + 2);
    do
    {
      v14 = &v13[*v13 + 1];
      v15 = *v14;
      v13 = v14 + 4;
    }

    while (v14 < v12);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

unint64_t anonymous namespace::__btrie_build_compact_trie(uint64_t a1, unint64_t a2, unint64_t *a3, int a4)
{
  LODWORD(v4) = a2;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 3)
  {
    v8 = 0;
    v9 = (*(a1 + 56) + 4 * (a2 & 0x3FFFFFFF));
    v10 = v9 + 1;
    v11 = 0uLL;
    v12.i64[0] = 0x300000003;
    v12.i64[1] = 0x300000003;
    do
    {
      v11 = vsubq_s32(v11, vtstq_s32(*&v10[v8], v12));
      v8 += 4;
    }

    while (v8 != 256);
    if (a4 || (v13 = vaddvq_s32(v11), v13 >= 0x21))
    {
      if (v21 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v21 >> 2) | 0x300000000;
      }

      v22 = 4 * (v4 & 0x3FFFFFFF);
      *(a3[7] + v22) = *v9;
      v23 = v22 + 4;
      v24 = 256;
      do
      {
        v25 = *v10++;
        *(a3[7] + v23) = HIDWORD(v26) + 4 * v26;
        v23 += 4;
        --v24;
      }

      while (v24);
    }

    else
    {
      v15 = 0;
      if (v14 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v14 >> 2) | 0x200000000;
      }

      v16 = 4 * (v4 & 0x3FFFFFFF);
      v17 = a3[7] + v16;
      *v17 = *v9;
      *(v17 + 37) = v13;
      do
      {
        if (HIDWORD(v18))
        {
          v19 = a3[7] + v16;
          v20 = *(v19 + 36);
          *(v19 + 36) = v20 + 1;
          *(v19 + 4 * v20 + 40) = HIDWORD(v18) + 4 * v18;
          *(v19 + 4 * (v15 >> 5) + 4) |= 1 << v15;
        }

        ++v15;
      }

      while (v15 != 256);
    }

    v5 = HIDWORD(v4);
  }

  return v4 | (v5 << 32);
}

uint64_t mecab_system_eval(int a1, char **a2)
{
  v85 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C29A2E0](&v63);
  MeCab::Param::Param(v73);
  MeCab::Param::open(v73, a1, a2, &MeCab::Eval::eval(int,char **)::long_options);
  if ((MeCab::Param::open(v73, a1, a2, &MeCab::Eval::eval(int,char **)::long_options) & 1) == 0)
  {
    v10 = MeCab::whatlog::str(&v78);
    std::string::basic_string[abi:ne200100]<0>(&v81, v10);
    if ((v83 & 0x80u) == 0)
    {
      locale = &v81;
    }

    else
    {
      locale = v81.__locale_;
    }

    if ((v83 & 0x80u) == 0)
    {
      v12 = v83;
    }

    else
    {
      v12 = v82;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], locale, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n\n", 2);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\ntry '--help' for more information.", 35);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v80, MEMORY[0x29EDC93D0]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v80);
    std::ostream::put();
    std::ostream::flush();
    if (v83 < 0)
    {
      operator delete(v81.__locale_);
    }

    goto LABEL_58;
  }

  if (MeCab::Param::help_version(v73))
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v75 - v74) >> 3) > 1)
    {
      MeCab::Param::get<std::string>(v73, "output", &v72);
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      v20 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v72.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          v72.__r_.__value_.__l.__size_ = 1;
          v21 = v72.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v72.__r_.__value_.__s + 23) = 1;
          v21 = &v72;
        }

        LOWORD(v21->__r_.__value_.__l.__data_) = 45;
        v20 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      if (v20 >= 0)
      {
        v22 = &v72;
      }

      else
      {
        v22 = v72.__r_.__value_.__r.__words[0];
      }

      MeCab::ostream_wrapper::ostream_wrapper(&v70, v22);
      if ((*(v71 + *(*v71 - 24) + 32) & 5) != 0)
      {
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/eval.cpp", 58);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "(", 1);
        v25 = MEMORY[0x29C29A250](v24, 124);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ") [", 3);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "*ofs", 4);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "] ", 2);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "no such file or directory: ", 27);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v72;
        }

        else
        {
          v30 = v72.__r_.__value_.__r.__words[0];
        }

        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v72.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
        MeCab::die::~die(&v81);
      }

      v32 = v74;
      if (*(v74 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, *v74, *(v74 + 1));
        v32 = v74;
      }

      else
      {
        v33 = *v74;
        v69.__r_.__value_.__r.__words[2] = *(v74 + 2);
        *&v69.__r_.__value_.__l.__data_ = v33;
      }

      if (*(v32 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, *(v32 + 3), *(v32 + 4));
      }

      else
      {
        v68 = *(v32 + 1);
      }

      MeCab::Param::get<std::string>(v73, "level", &__p);
      if (*(v74 + 23) < 0)
      {
        v34 = *v74;
      }

      std::ifstream::basic_ifstream(&v81);
      if (*(v74 + 47) < 0)
      {
        v35 = *(v74 + 3);
      }

      std::ifstream::basic_ifstream(&v80);
      if ((v84[*(v81.__locale_ - 3)] & 5) != 0)
      {
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/eval.cpp", 58);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "(", 1);
        v38 = MEMORY[0x29C29A250](v37, 134);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ") [", 3);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "ifs1", 4);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "] ", 2);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "no such file or directory: ", 27);
        v43 = v74;
        if (*(v74 + 23) < 0)
        {
          v43 = *v74;
        }

        v44 = strlen(v43);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
        MeCab::die::~die(&v79);
      }

      if ((*(&v80 + *(v80.__locale_ - 3) + 32) & 5) != 0)
      {
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/eval.cpp", 58);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "(", 1);
        v47 = MEMORY[0x29C29A250](v46, 135);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ") [", 3);
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "ifs2", 4);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "] ", 2);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "no such file or directory: ", 27);
        v52 = v74;
        if (*(v74 + 23) < 0)
        {
          v52 = *v74;
        }

        v53 = strlen(v52);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
        MeCab::die::~die(&v79);
      }

      v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __p.__r_.__value_.__l.__size_;
      }

      if (!v54)
      {
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/eval.cpp", 58);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "(", 1);
        v57 = MEMORY[0x29C29A250](v56, 136);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ") [", 3);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "!level_str.empty()", 18);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "level_str is NULL", 17);
        MeCab::die::~die(&v79);
      }

      __src = 0;
      v65 = 0;
      v66 = 0;
      v79.__locale_ = &unk_2A1F35AF8;
      operator new[]();
    }

    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "Usage: ", 7);
    if (v77 >= 0)
    {
      v5 = &v76;
    }

    else
    {
      v5 = v76;
    }

    v6 = strlen(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " output answer", 14);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v81, MEMORY[0x29EDC93D0]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v81);
    std::ostream::put();
    std::ostream::flush();
LABEL_58:
    v18 = 1;
    goto LABEL_59;
  }

  v18 = 0;
LABEL_59:
  MeCab::Param::~Param(v73);
  std::ios_base::Init::~Init(&v63);
  v61 = *MEMORY[0x29EDCA608];
  return v18;
}

void sub_299144F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, std::locale a58)
{
  if (a49 < 0)
  {
    operator delete(a44);
  }

  a50 = &unk_2A1F35378;
  if (a51 != MEMORY[0x29EDC93C8] && a51)
  {
    (*(*a51 + 8))();
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  MeCab::Param::~Param(&a58);
  std::ios_base::Init::~Init(&a27);
  _Unwind_Resume(a1);
}

uint64_t mecab_test_gen(int a1, char **a2)
{
  v52 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C29A2E0](&v39);
  MeCab::Param::Param(v47);
  MeCab::Param::open(v47, a1, a2, &MeCab::TestSentenceGenerator::run(int,char **)::long_options);
  if (MeCab::Param::open(v47, a1, a2, &MeCab::TestSentenceGenerator::run(int,char **)::long_options))
  {
    if (MeCab::Param::help_version(v47))
    {
      v44.__locale_ = 0;
      v45 = 0;
      v46 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v44, v48, v49, 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
      if (v44.__locale_ == v45)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "-");
        v4 = v45;
        if (v45 >= v46)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44.__locale_) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v46 - v44.__locale_) >> 3) > v16)
          {
            v16 = 0x5555555555555556 * ((v46 - v44.__locale_) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v46 - v44.__locale_) >> 3) >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          v51.__end_cap_.__value_ = &v44;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v44, v17);
          }

          v18 = 8 * ((v45 - v44.__locale_) >> 3);
          v19 = *__p;
          *(v18 + 16) = v43;
          *v18 = v19;
          __p[1] = 0;
          v43 = 0;
          __p[0] = 0;
          v20 = 24 * v15 + 24;
          v21 = (24 * v15 - (v45 - v44.__locale_));
          memcpy((v18 - (v45 - v44.__locale_)), v44.__locale_, v45 - v44.__locale_);
          locale = v44.__locale_;
          v23 = v46;
          v44.__locale_ = v21;
          v45 = v20;
          v46 = 0;
          v51.__end_ = locale;
          v51.__end_cap_.__value_ = v23;
          v51.__first_ = locale;
          v51.__begin_ = locale;
          std::__split_buffer<std::string>::~__split_buffer(&v51);
          v45 = v20;
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v5 = *__p;
          *(v45 + 2) = v43;
          *v4 = v5;
          v45 = (v4 + 24);
        }
      }

      MeCab::Param::get<std::string>(v47, "output", &v51);
      end_high = HIBYTE(v51.__end_);
      v25 = HIBYTE(v51.__end_);
      if (SHIBYTE(v51.__end_) < 0)
      {
        end_high = v51.__begin_;
      }

      if (!end_high)
      {
        if (SHIBYTE(v51.__end_) < 0)
        {
          v51.__begin_ = 1;
          first = v51.__first_;
        }

        else
        {
          HIBYTE(v51.__end_) = 1;
          first = &v51;
        }

        *first = 45;
        v25 = HIBYTE(v51.__end_);
      }

      if (v25 >= 0)
      {
        v27 = &v51;
      }

      else
      {
        v27 = v51.__first_;
      }

      MeCab::ostream_wrapper::ostream_wrapper(&v40, v27);
      if ((*(v41 + *(*v41 - 24) + 32) & 5) != 0)
      {
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/eval.cpp", 58);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
        v30 = MEMORY[0x29C29A250](v29, 241);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") [", 3);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "*ofs", 4);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "] ", 2);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "permission denied: ", 19);
        if (SHIBYTE(v51.__end_) >= 0)
        {
          v35 = &v51;
        }

        else
        {
          v35 = v51.__first_;
        }

        if (SHIBYTE(v51.__end_) >= 0)
        {
          begin = HIBYTE(v51.__end_);
        }

        else
        {
          begin = v51.__begin_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, begin);
        MeCab::die::~die(__p);
      }

      __p[0] = &unk_2A1F35AF8;
      operator new[]();
    }

    v14 = 0;
  }

  else
  {
    v6 = MeCab::whatlog::str(&v50);
    std::string::basic_string[abi:ne200100]<0>(&v51, v6);
    if (SHIBYTE(v51.__end_) >= 0)
    {
      v7 = &v51;
    }

    else
    {
      v7 = v51.__first_;
    }

    if (SHIBYTE(v51.__end_) >= 0)
    {
      v8 = HIBYTE(v51.__end_);
    }

    else
    {
      v8 = v51.__begin_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n\n", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\ntry '--help' for more information.", 35);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v44, MEMORY[0x29EDC93D0]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v44);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v51.__end_) < 0)
    {
      operator delete(v51.__first_);
    }

    v14 = 0xFFFFFFFFLL;
  }

  MeCab::Param::~Param(v47);
  std::ios_base::Init::~Init(&v39);
  v37 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_299145AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, std::locale *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::locale a31, uint64_t a32, uint64_t a33, std::locale a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  MeCab::Param::~Param(&a34);
  std::ios_base::Init::~Init(&a14);
  _Unwind_Resume(a1);
}

uint64_t MeCab::Eval::read(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    operator new[]();
  }

  result = 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991463E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a21)
  {
    MEMORY[0x29C29A350](a21, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::ostream_wrapper::~ostream_wrapper(MeCab::ostream_wrapper *this)
{
  *this = &unk_2A1F35378;
  v1 = *(this + 1);
  if (v1 != MEMORY[0x29EDC93C8] && v1 != 0)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2A1F35378;
  v1 = *(this + 1);
  if (v1 != MEMORY[0x29EDC93C8] && v1 != 0)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::ostream_wrapper::ostream_wrapper(void *this, const char *a2)
{
  *this = &unk_2A1F35378;
  this[1] = 0;
  if (*a2 != 45 || a2[1])
  {
    operator new();
  }

  this[1] = MEMORY[0x29EDC93C8];
  return this;
}

void *MeCab::scoped_fixed_array<char *,512>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B58;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x10C80436913F5);
  }

  return a1;
}

void MeCab::scoped_fixed_array<char *,512>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B58;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x10C80436913F5);
  }

  JUMPOUT(0x29C29A380);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299146A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
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
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<std::vector<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void MeCab::istream_wrapper::~istream_wrapper(MeCab::istream_wrapper *this)
{
  *this = &unk_2A1F35398;
  v1 = *(this + 1);
  if (v1 != MEMORY[0x29EDC93B8] && v1 != 0)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2A1F35398;
  v1 = *(this + 1);
  if (v1 != MEMORY[0x29EDC93B8] && v1 != 0)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::istream_wrapper::istream_wrapper(void *this, const char *a2)
{
  *this = &unk_2A1F35398;
  this[1] = 0;
  if (*a2 != 45 || a2[1])
  {
    operator new();
  }

  this[1] = MEMORY[0x29EDC93B8];
  return this;
}

unsigned __int16 *Thai::seekToSyllableEnd(unsigned __int16 *a1, unint64_t a2)
{
  v2 = a1;
  if (a1 < a2)
  {
    if ((v4 = *a1, v4 == 46) || v4 == 3654 || ((v5 = v4 - 3585, v6 = v4 - 3648, v5 >= 0x2E) ? (v7 = v6 > 4) : (v7 = 0), !v7))
    {
      v8 = 0;
      while (1)
      {
        v9 = *v2;
        v10 = v9 - 3632;
        if ((v9 - 3648) >= 0xE && (v9 - 3585) >= 0x2Eu && (v9 - 3632) > 0xAu)
        {
          return v2;
        }

        if (v8)
        {
          v15 = Thai::isEndingChar(*v2) == 0;
          result = v2 + 1;
          if (!v15 && result < a2)
          {
            v14 = *result;
            if (v14 == 46 || v14 == 3654 || (v14 - 3585) < 0x2E || (v14 - 3648) < 5)
            {
              return result;
            }
          }
        }

        v15 = v10 > 3 || v10 == 1;
        if (!v15)
        {
          return v2 + 1;
        }

        if ((v9 - 3648) <= 4u)
        {
          break;
        }

        if (v9 == 3633)
        {
LABEL_37:
          if (Thai::isEndingChar(v9))
          {
            result = v2 + 1;
            if ((v2 + 1) < a2)
            {
              v19 = *result;
              if (v19 == 46 || v19 == 3654 || (v19 - 3585) < 0x2E || (v19 - 3648) < 5)
              {
                return result;
              }
            }
          }

          goto LABEL_43;
        }

        if (v9 == 3631)
        {
          return v2 + 1;
        }

        v16 = -1;
        v17 = &word_299181156;
        while (v16 != 11)
        {
          v18 = *v17++;
          ++v16;
          if (v18 == v9)
          {
            if (v16 > 0xB)
            {
              break;
            }

            goto LABEL_37;
          }
        }

LABEL_44:
        result = ++v2;
        if (v2 >= a2)
        {
          return result;
        }
      }

      if (v8)
      {
        return v2;
      }

LABEL_43:
      v8 = 1;
      goto LABEL_44;
    }
  }

  return v2;
}

uint64_t Thai::isEndingChar(int a1)
{
  if ((a1 - 3597) < 0xF)
  {
    return 1;
  }

  if ((a1 - 3585) < 0xB)
  {
    if (((0x6FFu >> (a1 - 1)) & 1) == 0)
    {
      goto LABEL_8;
    }

    return 1;
  }

  if ((a1 - 3614) < 0xD)
  {
    return 1;
  }

LABEL_8:
  v1 = 1;
  if ((a1 - 3628) > 0x1A || ((1 << (a1 - 44)) & 0x4000013) == 0)
  {
    v3 = (a1 - 3634) < 9 || (a1 - 3653) < 0xA;
    return a1 == 46 || v3;
  }

  return v1;
}

char *MeCab::FeatureIndex::getIndex(MeCab::FeatureIndex *this, char **a2, char **a3)
{
  v3 = (*this)++;
  v4 = *(v3 + 1);
  v22 = v4;
  if (v4 == 63)
  {
    *this = v3 + 2;
    v4 = *(v3 + 2);
  }

  if (v4 != 91)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 44);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "**p == '['", 10);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "getIndex(): unmatched '['", 25);
    MeCab::die::~die(&v24);
  }

  v11 = 0;
  v12 = MEMORY[0x29EDC93C0];
  while (1)
  {
    v13 = (*this + 1);
    *this = v13;
    v14 = *v13;
    if ((v14 - 48) >= 0xA)
    {
      break;
    }

    v11 = v14 + 10 * v11 - 48;
  }

  if (v14 != 93)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
    v17 = MEMORY[0x29C29A250](v16, 70);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "false", 5);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "unmatched '['", 13);
    MeCab::die::~die(&v23);
  }

  if (v11 >= a3)
  {
    return 0;
  }

  result = a2[v11];
  if (v22 == 63 && (!*result || *result == 42 && !result[1]))
  {
    return 0;
  }

  return result;
}

void MeCab::FeatureIndex::openTemplate(MeCab::FeatureIndex *this, const MeCab::Param *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  MeCab::Param::get<std::string>(a2, "dicdir", v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "feature.def");
  MeCab::create_filename(v14, __p, &v11);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14[0].__r_.__value_.__l.__data_);
  }

  std::ifstream::basic_ifstream(v14);
  if ((v14[1].__r_.__value_.__s.__data_[*(v14[0].__r_.__value_.__r.__words[0] - 24) + 8] & 5) != 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(", 1);
    v4 = MEMORY[0x29C29A250](v3, 85);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") [", 3);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ifs", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "] ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "no such file or directory: ", 27);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v11;
    }

    else
    {
      v9 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, size);
    MeCab::die::~die(__p);
  }

  operator new[]();
}

void sub_299147984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a29)
  {
    MEMORY[0x29C29A350](a29, 0x1000C8077774924);
  }

  std::ifstream::~ifstream(&a45);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
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

char *MeCab::FeatureIndex::strdup(MeCab::FeatureIndex *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = MeCab::ChunkFreeList<char>::alloc(this + 11, v4 + 1);

  return strncpy(v5, __s, v4 + 1);
}

void MeCab::DecoderFeatureIndex::open(MeCab::DecoderFeatureIndex *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "model", &__p);
  if (!MeCab::DecoderFeatureIndex::openBinaryModel(this, a2))
  {
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

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], p_p, size);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is not a binary model. reopen it as text mode...", 49);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v10, MEMORY[0x29EDC93D0]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v10);
    std::ostream::put();
    std::ostream::flush();
    MeCab::DecoderFeatureIndex::openTextModel(this, a2);
  }

  MeCab::FeatureIndex::openTemplate(this, a2);
}

void sub_299147DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MeCab::DecoderFeatureIndex::openBinaryModel(MeCab::DecoderFeatureIndex *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "model", &v40);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v40;
  }

  else
  {
    v4 = v40.__r_.__value_.__r.__words[0];
  }

  if ((MeCab::Mmap<char>::open(this + 344, v4, "r") & 1) == 0)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 161);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "mmap_.open(modelfile.c_str())", 29);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    v11 = MeCab::whatlog::str((this + 392));
    std::string::basic_string[abi:ne200100]<0>(&__p, v11);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    MeCab::die::~die(&v39);
  }

  v14 = *(this + 44);
  v15 = *(this + 45);
  v16 = *v14;
  *(this + 41) = v16;
  v17 = 16 * v16 + 36;
  if (v17 == v15)
  {
    *(this + 90) = v14 + 1;
    v18 = v14 + 9;
    *(this + 42) = v18;
    *(this + 89) = &v18[2 * v16];
    MeCab::Param::get<std::string>(a2, "charset", &__p);
    v21 = MeCab::decode_charset(*(this + 90), v19);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if (v21 != MeCab::decode_charset(v22, v20))
    {
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "(", 1);
      v25 = MEMORY[0x29C29A250](v24, 168);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ") [", 3);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "decode_charset(charset_) == decode_charset(to.c_str())", 54);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "] ", 2);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "model charset and dictionary charset are different. ", 52);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "model_charset=", 14);
      v31 = *(this + 90);
      v32 = strlen(v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " dictionary_charset=", 20);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
      MeCab::die::~die(&v39);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    MeCab::Mmap<char>::close(this + 344);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  return v17 == v15;
}

void sub_299148084(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MeCab::die::~die(&a19);
}

void MeCab::DecoderFeatureIndex::openTextModel(MeCab::DecoderFeatureIndex *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "model", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  MeCab::FeatureIndex::convert(a2, p_p);
}

void sub_2991481BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::FeatureIndex::convert(uint64_t a1, const char *a2)
{
  v12[72] = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v12);
  if ((*(&v12[4] + *(v12[0] - 24)) & 5) != 0)
  {
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x29C29A250](v4, 537);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "ifs", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "no such file or directory: ", 27);
    v10 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a2, v10);
    MeCab::die::~die(v11);
  }

  operator new[]();
}

void sub_299148DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, std::locale a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  MeCab::Iconv::~Iconv(&a15);
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

  if (v49)
  {
    operator delete(v49);
  }

  a35 = a12;
  if (a36)
  {
    MEMORY[0x29C29A350](a36, 0x1000C8077774924);
  }

  std::ifstream::~ifstream(&a49);
  _Unwind_Resume(a1);
}

uint64_t MeCab::DecoderFeatureIndex::clear(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

void MeCab::EncoderFeatureIndex::clearcache(char **this)
{
  v2 = (this + 47);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 46), this[47]);
  this[47] = 0;
  this[48] = 0;
  this[46] = v2;
  std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy((this + 33), this[34]);
  this[34] = 0;
  this[35] = 0;
  this[33] = (this + 34);
}

void MeCab::EncoderFeatureIndex::close(char **this)
{
  v2 = (this + 44);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 43), this[44]);
  this[44] = 0;
  this[45] = 0;
  this[43] = v2;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 46), this[47]);
  this[47] = 0;
  this[48] = 0;
  this[46] = (this + 47);
  this[41] = 0;
}

void *MeCab::DecoderFeatureIndex::close(MeCab::DecoderFeatureIndex *this)
{
  result = MeCab::Mmap<char>::close(this + 344);
  if (*(this + 711) < 0)
  {
    **(this + 86) = 0;
    *(this + 87) = 0;
  }

  else
  {
    *(this + 688) = 0;
    *(this + 711) = 0;
  }

  *(this + 41) = 0;
  return result;
}

double MeCab::FeatureIndex::calcCost(uint64_t a1, double *a2, double result)
{
  v3 = *a2;
  if (*(*a2 + 32) || *(*&v3 + 87) == 3)
  {
    v4 = *(a2 + 2);
    if (*(v4 + 40) || *(v4 + 87) == 2)
    {
      result = *(*&v3 + 112);
      a2[4] = result;
      v5 = *(a2 + 5);
      v6 = *v5;
      if (*v5 != -1)
      {
        v7 = *(a1 + 336);
        v8 = v5 + 1;
        do
        {
          result = result + *(v7 + 8 * v6);
          a2[4] = result;
          v9 = *v8++;
          v6 = v9;
        }

        while (v9 != -1);
      }
    }
  }

  return result;
}

uint64_t MeCab::ChunkFreeList<char>::alloc(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (a1[2] - v3) >> 4;
  v5 = a1[5];
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (!v6)
  {
LABEL_6:
    if (a1[6] > a2)
    {
      v11 = a1[6];
    }

    operator new[]();
  }

  v8 = a1[4];
  v9 = (v3 + 16 * v5 + 8);
  v10 = v5 + 1;
  while (v8 + a2 >= *(v9 - 1))
  {
    v8 = 0;
    a1[4] = 0;
    a1[5] = v10;
    v9 += 2;
    ++v10;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  result = *v9 + v8;
  a1[4] = v8 + a2;
  return result;
}

void MeCab::DecoderFeatureIndex::buildFeature(uint64_t a1, void *a2)
{
  a2[4] = 0;
  *(*a2 + 112) = 0;
  memset(&v28, 0, sizeof(v28));
  memset(&v27, 0, sizeof(v27));
  memset(&v26, 0, sizeof(v26));
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  std::string::basic_string[abi:ne200100]<0>(__p, *(a2[2] + 64));
  if ((MeCab::DictionaryRewriter::rewrite2(a1 + 192, __p, &v28, &v27, &v26) & 1) == 0)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 242);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "rewrite_.rewrite2(path->lnode->feature, &ufeature1, &lfeature1, &rfeature1)", 75);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " cannot rewrite pattern: ", 25);
    v11 = strlen(*(a2[2] + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, *(a2[2] + 64), v11);
    MeCab::die::~die(&v20);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *(*a2 + 64));
  if ((MeCab::DictionaryRewriter::rewrite2(a1 + 192, __p, &v25, &v24, &v23) & 1) == 0)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 249);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "rewrite_.rewrite2(path->rnode->feature, &ufeature2, &lfeature2, &rfeature2)", 75);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " cannot rewrite pattern: ", 25);
    v19 = strlen(*(*a2 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, *(*a2 + 64), v19);
    MeCab::die::~die(&v20);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  MeCab::FeatureIndex::buildUnigramFeature();
}

void sub_299149548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
  }

  if (*(v43 - 49) < 0)
  {
    operator delete(*(v42 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_299149BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a21)
  {
    MEMORY[0x29C29A350](a21, 0x10C80436913F5);
  }

  if (a24)
  {
    MEMORY[0x29C29A350](a24, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_29914A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24)
  {
    MEMORY[0x29C29A350](a24, 0x10C80436913F5);
  }

  if (a27)
  {
    MEMORY[0x29C29A350](a27, 0x10C80436913F5);
  }

  if (a30)
  {
    MEMORY[0x29C29A350](a30, 0x1000C8077774924);
  }

  *(v30 - 112) = a14;
  v32 = *(v30 - 104);
  if (v32)
  {
    MEMORY[0x29C29A350](v32, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::EncoderFeatureIndex::buildFeature(uint64_t a1, void *a2)
{
  a2[4] = 0;
  *(*a2 + 112) = 0;
  memset(&v48, 0, sizeof(v48));
  memset(&v47, 0, sizeof(v47));
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  memset(&v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  std::string::basic_string[abi:ne200100]<0>(__p, *(a2[2] + 64));
  if ((MeCab::DictionaryRewriter::rewrite2(a1 + 192, __p, &v48, &v47, &v46) & 1) == 0)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 277);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "rewrite_.rewrite2(path->lnode->feature, &ufeature1, &lfeature1, &rfeature1)", 75);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " cannot rewrite pattern: ", 25);
    v11 = strlen(*(a2[2] + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, *(a2[2] + 64), v11);
    MeCab::die::~die(&v49);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *(*a2 + 64));
  if ((MeCab::DictionaryRewriter::rewrite2(a1 + 192, __p, &v45, &v44, &v43) & 1) == 0)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 284);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "rewrite_.rewrite2(path->rnode->feature, &ufeature2, &lfeature2, &rfeature2)", 75);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " cannot rewrite pattern: ", 25);
    v19 = strlen(*(*a2 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, *(*a2 + 64), v19);
    MeCab::die::~die(&v49);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 296) = 0;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v45;
  }

  else
  {
    v20 = v45.__r_.__value_.__r.__words[0];
  }

  MeCab::StringBuffer::write((a1 + 288), v20);
  if (MeCab::StringBuffer::reserve((a1 + 288), 1))
  {
    *(*(a1 + 312) + (*(a1 + 296))++) = 32;
  }

  v21 = *(*a2 + 86);
  if (MeCab::StringBuffer::reserve((a1 + 288), 1))
  {
    *(*(a1 + 312) + (*(a1 + 296))++) = v21;
  }

  if (MeCab::StringBuffer::reserve((a1 + 288), 1))
  {
    *(*(a1 + 312) + (*(a1 + 296))++) = 0;
  }

  if (*(a1 + 321))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 312);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v22);
  v23 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 368, __p);
  if (a1 + 376 == v23)
  {
    MeCab::FeatureIndex::buildUnigramFeature();
  }

  *(*a2 + 128) = *(v23 + 56);
  ++*(v23 + 64);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 296) = 0;
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v46;
  }

  else
  {
    v24 = v46.__r_.__value_.__r.__words[0];
  }

  MeCab::StringBuffer::write((a1 + 288), v24);
  if (MeCab::StringBuffer::reserve((a1 + 288), 1))
  {
    *(*(a1 + 312) + (*(a1 + 296))++) = 32;
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v44;
  }

  else
  {
    v25 = v44.__r_.__value_.__r.__words[0];
  }

  MeCab::StringBuffer::write((a1 + 288), v25);
  if (MeCab::StringBuffer::reserve((a1 + 288), 1))
  {
    *(*(a1 + 312) + (*(a1 + 296))++) = 0;
  }

  if (*(a1 + 321))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(a1 + 312);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v26);
  v27 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 368, __p);
  if (a1 + 376 == v27)
  {
    MeCab::FeatureIndex::buildBigramFeature();
  }

  a2[5] = *(v27 + 56);
  ++*(v27 + 64);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (!a2[5])
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(", 1);
    v30 = MEMORY[0x29C29A250](v29, 322);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") [", 3);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "path->fvector", 13);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " fvector is NULL", 16);
    MeCab::die::~die(__p);
  }

  if (!*(*a2 + 128))
  {
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "(", 1);
    v36 = MEMORY[0x29C29A250](v35, 323);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") [", 3);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "path->rnode->fvector", 20);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "fevector is NULL", 16);
    MeCab::die::~die(__p);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_29914AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  operator delete(v38);
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
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(a1);
}

MeCab::StringBuffer *MeCab::StringBuffer::operator<<(MeCab::StringBuffer *a1, unint64_t a2)
{
  *&v10[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if (a2)
  {
    do
    {
      *p_s++ = (a2 % 0xA) | 0x30;
      v3 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v3);
  }

  else
  {
    p_s = v10;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v10;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
      v3 = v5++ >= v4;
    }

    while (!v3);
  }

  result = MeCab::StringBuffer::write(a1, &__s);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t MeCab::ChunkFreeList<int>::alloc(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (a1[2] - v3) >> 4;
  v5 = a1[5];
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (!v6)
  {
LABEL_6:
    if (a1[6] > a2)
    {
      v11 = a1[6];
    }

    operator new[]();
  }

  v8 = a1[4];
  v9 = (v3 + 16 * v5 + 8);
  v10 = v5 + 1;
  while (v8 + a2 >= *(v9 - 1))
  {
    v8 = 0;
    a1[4] = 0;
    a1[5] = v10;
    v9 += 2;
    ++v10;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  result = *v9 + 4 * v8;
  a1[4] = v8 + a2;
  return result;
}

void *MeCab::scoped_fixed_array<char *,64>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35BB8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x10C80436913F5);
  }

  return a1;
}

void *MeCab::scoped_fixed_array<char,2048>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B88;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8077774924);
  }

  return a1;
}

unint64_t MeCab::DecoderFeatureIndex::id(MeCab::DecoderFeatureIndex *this, char *__s)
{
  v4 = strlen(__s);
  v5 = std::__string_view_hash<char>::operator()[abi:ne200100](&v22, __s, v4);
  v6 = *(this + 89);
  v7 = *(this + 41);
  v8 = &v6[8 * v7];
  v9 = v6;
  if (v7)
  {
    v9 = *(this + 89);
    do
    {
      v10 = v7 >> 1;
      v11 = &v9[8 * (v7 >> 1)];
      v13 = *v11;
      v12 = (v11 + 1);
      v7 += ~(v7 >> 1);
      if (v13 < v5)
      {
        v9 = v12;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
  }

  if (v9 == v8 || *v9 != v5)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = (v9 - v6) >> 3;
  if (*&v6[8 * v14] != v5)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
    v17 = MEMORY[0x29C29A250](v16, 443);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "key_[n] == fp", 13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
    MeCab::die::~die(&v21);
  }

  return v14;
}

uint64_t MeCab::EncoderFeatureIndex::id(MeCab::EncoderFeatureIndex *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = (this + 352);
  v5 = *(this + 44);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = (this + 352);
  do
  {
    v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, __p);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v5 = *&v5[(v7 >> 4) & 8];
  }

  while (v5);
  if (v6 == v4 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v6 + 4) & 0x80) != 0)
  {
LABEL_8:
    v6 = (this + 352);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 != v6)
  {
    return *(v6 + 14);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, a2);
  v9 = *(this + 41);
  *__p = *v10;
  v13 = v11;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v14 = v9;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(this + 344, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  result = *(this + 41);
  *(this + 41) = result + 1;
  return result;
}

void sub_29914B288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::EncoderFeatureIndex::shrink(void *a1, unint64_t a2, void **a3)
{
  if (a2 < 2)
  {
    return;
  }

  __p = 0;
  v93 = 0;
  v94 = 0;
  v4 = a1[41];
  if (v4)
  {
    if (!(v4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v4);
    }

    std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[46];
  v6 = a1 + 47;
  if (v5 != a1 + 47)
  {
    do
    {
      v7 = v5[7];
      v8 = *v7;
      if (*v7 != -1)
      {
        v9 = v7 + 1;
        do
        {
          *(8 * v8) += v5[8];
          v10 = *v9++;
          v8 = v10;
        }

        while (v10 != -1);
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v55 = *v12 == v5;
          v5 = v12;
        }

        while (!v55);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  a1[41] = 0;
  v91[0] = 0;
  v91[1] = 0;
  v90 = v91;
  v13 = v93;
  if (v93)
  {
    v14 = 0;
    do
    {
      if (*(8 * v14) >= a2)
      {
        ++a1[41];
        v15 = v91[0];
        if (!v91[0])
        {
LABEL_24:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v16 = v15;
            v17 = *(v15 + 7);
            if (v17 <= v14)
            {
              break;
            }

            v15 = *v16;
            if (!*v16)
            {
              goto LABEL_24;
            }
          }

          if (v17 >= v14)
          {
            break;
          }

          v15 = v16[1];
          if (!v15)
          {
            goto LABEL_24;
          }
        }
      }

      ++v14;
    }

    while (v14 < v13 >> 3);
  }

  v18 = a1[43];
  v19 = (a1 + 44);
  if (v18 == (a1 + 44))
  {
    goto LABEL_126;
  }

  do
  {
    v20 = v91[0];
    if (v91[0])
    {
      v21 = *(v18 + 14);
      v22 = v91;
      do
      {
        if (*(v20 + 7) >= v21)
        {
          v22 = v20;
        }

        v20 = v20[*(v20 + 7) < v21];
      }

      while (v20);
      if (v22 != v91 && v21 >= *(v22 + 7))
      {
        *(v18 + 14) = *(v22 + 8);
        v35 = *(v18 + 1);
        if (v35)
        {
          do
          {
            v26 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v26 = *(v18 + 2);
            v55 = *v26 == v18;
            v18 = v26;
          }

          while (!v55);
        }

        goto LABEL_125;
      }
    }

    v23 = *(v18 + 1);
    v24 = v23;
    v25 = v18;
    if (v23)
    {
      do
      {
        v26 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v26 = *(v25 + 2);
        v55 = *v26 == v25;
        v25 = v26;
      }

      while (!v55);
    }

    v27 = v18;
    if (v23)
    {
      do
      {
        v28 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v28 = *(v27 + 2);
        v55 = *v28 == v27;
        v27 = v28;
      }

      while (!v55);
    }

    if (a1[43] == v18)
    {
      a1[43] = v28;
    }

    v29 = a1[44];
    --a1[45];
    v30 = *v18;
    v31 = v18;
    if (*v18)
    {
      v32 = *(v18 + 1);
      if (!v32)
      {
        v31 = v18;
LABEL_58:
        v34 = 0;
        v33 = *(v31 + 2);
        *(v30 + 16) = v33;
        goto LABEL_59;
      }

      do
      {
        v31 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    v30 = *(v31 + 1);
    if (v30)
    {
      goto LABEL_58;
    }

    v33 = *(v31 + 2);
    v34 = 1;
LABEL_59:
    v36 = *v33;
    if (*v33 == v31)
    {
      *v33 = v30;
      if (v31 == v29)
      {
        v36 = 0;
        v29 = v30;
      }

      else
      {
        v36 = v33[1];
      }
    }

    else
    {
      v33[1] = v30;
    }

    v37 = v31[24];
    if (v31 != v18)
    {
      v38 = *(v18 + 2);
      *(v31 + 2) = v38;
      v38[*v38 != v18] = v31;
      v40 = *v18;
      v39 = *(v18 + 1);
      *(v40 + 16) = v31;
      *v31 = v40;
      *(v31 + 1) = v39;
      if (v39)
      {
        *(v39 + 16) = v31;
      }

      v31[24] = v18[24];
      if (v29 == v18)
      {
        v29 = v31;
      }
    }

    if (!v29 || !v37)
    {
      goto LABEL_122;
    }

    if (!v34)
    {
      *(v30 + 24) = 1;
      goto LABEL_122;
    }

    while (1)
    {
      v41 = *(v36 + 2);
      v42 = *v41;
      v43 = v36[24];
      if (*v41 == v36)
      {
        break;
      }

      if ((v36[24] & 1) == 0)
      {
        v36[24] = 1;
        *(v41 + 24) = 0;
        v44 = v41[1];
        v45 = *v44;
        v41[1] = *v44;
        if (v45)
        {
          *(v45 + 16) = v41;
        }

        v46 = v41[2];
        v44[2] = v46;
        v46[*v46 != v41] = v44;
        *v44 = v41;
        v41[2] = v44;
        if (v29 == *v36)
        {
          v29 = v36;
        }

        v36 = *(*v36 + 8);
      }

      v47 = *v36;
      if (*v36 && v47[24] != 1)
      {
        v48 = *(v36 + 1);
        if (v48 && (v48[24] & 1) == 0)
        {
LABEL_108:
          v47 = v36;
        }

        else
        {
          v47[24] = 1;
          v36[24] = 0;
          v56 = *(v47 + 1);
          *v36 = v56;
          if (v56)
          {
            *(v56 + 16) = v36;
          }

          v57 = *(v36 + 2);
          *(v47 + 2) = v57;
          v57[*v57 != v36] = v47;
          *(v47 + 1) = v36;
          *(v36 + 2) = v47;
          v48 = v36;
        }

        v58 = *(v47 + 2);
        v47[24] = *(v58 + 24);
        *(v58 + 24) = 1;
        v48[24] = 1;
        v59 = *(v58 + 8);
        v60 = *v59;
        *(v58 + 8) = *v59;
        if (v60)
        {
          *(v60 + 16) = v58;
        }

        v61 = *(v58 + 16);
        v59[2] = v61;
        v61[*v61 != v58] = v59;
        *v59 = v58;
        goto LABEL_121;
      }

      v48 = *(v36 + 1);
      if (v48 && v48[24] != 1)
      {
        goto LABEL_108;
      }

      v36[24] = 0;
      v49 = *(v36 + 2);
      if (v49 == v29 || (v49[24] & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_100:
      v36 = *(*(v49 + 2) + 8 * (**(v49 + 2) == v49));
    }

    if ((v36[24] & 1) == 0)
    {
      v36[24] = 1;
      *(v41 + 24) = 0;
      v50 = *(v42 + 1);
      *v41 = v50;
      if (v50)
      {
        *(v50 + 16) = v41;
      }

      v51 = v41[2];
      *(v42 + 2) = v51;
      v51[*v51 != v41] = v42;
      *(v42 + 1) = v41;
      v41[2] = v42;
      v52 = *(v36 + 1);
      if (v29 == v52)
      {
        v29 = v36;
      }

      v36 = *v52;
    }

    v53 = *v36;
    if (*v36 && v53[24] != 1)
    {
      goto LABEL_117;
    }

    v54 = *(v36 + 1);
    if (!v54 || *(v54 + 24) == 1)
    {
      v36[24] = 0;
      v49 = *(v36 + 2);
      v55 = v49[24] != 1 || v49 == v29;
      if (v55)
      {
LABEL_102:
        v49[24] = 1;
        goto LABEL_122;
      }

      goto LABEL_100;
    }

    if (v53 && (v53[24] & 1) == 0)
    {
LABEL_117:
      v54 = v36;
      goto LABEL_118;
    }

    *(v54 + 24) = 1;
    v36[24] = 0;
    v62 = *v54;
    *(v36 + 1) = *v54;
    if (v62)
    {
      *(v62 + 16) = v36;
    }

    v63 = *(v36 + 2);
    v54[2] = v63;
    v63[*v63 != v36] = v54;
    *v54 = v36;
    *(v36 + 2) = v54;
    v53 = v36;
LABEL_118:
    v58 = v54[2];
    *(v54 + 24) = *(v58 + 24);
    *(v58 + 24) = 1;
    v53[24] = 1;
    v59 = *v58;
    v64 = *(*v58 + 8);
    *v58 = v64;
    if (v64)
    {
      *(v64 + 16) = v58;
    }

    v65 = *(v58 + 16);
    v59[2] = v65;
    v65[*v65 != v58] = v59;
    v59[1] = v58;
LABEL_121:
    *(v58 + 16) = v59;
LABEL_122:
    if (v18[55] < 0)
    {
      operator delete(*(v18 + 4));
    }

    operator delete(v18);
LABEL_125:
    v18 = v26;
  }

  while (v26 != v19);
LABEL_126:
  v66 = a1[46];
  if (v66 != v6)
  {
    v67 = v91[0];
    do
    {
      v68 = v66[7];
      v69 = *v68;
      v70 = v68;
      while (v69 != -1)
      {
        if (v67)
        {
          v71 = v91;
          v72 = v67;
          do
          {
            if (*(v72 + 7) >= v69)
            {
              v71 = v72;
            }

            v72 = v72[*(v72 + 7) < v69];
          }

          while (v72);
          if (v71 != v91 && v69 >= *(v71 + 7))
          {
            *v68++ = *(v71 + 8);
          }
        }

        v73 = v70[1];
        ++v70;
        v69 = v73;
      }

      *v68 = -1;
      v74 = v66[1];
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = v66[2];
          v55 = *v75 == v66;
          v66 = v75;
        }

        while (!v55);
      }

      v66 = v75;
    }

    while (v75 != v6);
  }

  v76 = a1[41];
  v88 = 0;
  v89 = 0;
  v87 = 0;
  if (v76)
  {
    std::vector<double>::__vallocate[abi:ne200100](&v87, v76);
  }

  v77 = 0;
  v78 = *a3;
  v79 = a3[1];
  v80 = v79 - *a3;
  if (v79 != *a3)
  {
    v81 = 0;
    v82 = v80 >> 3;
    v83 = v91[0];
    if (v82 <= 1)
    {
      v82 = 1;
    }

    do
    {
      if (v83)
      {
        v84 = v91;
        v85 = v83;
        do
        {
          if (*(v85 + 7) >= v81)
          {
            v84 = v85;
          }

          v85 = v85[*(v85 + 7) < v81];
        }

        while (v85);
        if (v84 != v91 && *(v84 + 7) <= v81)
        {
          *(8 * *(v84 + 8)) = v78[v81];
        }
      }

      ++v81;
    }

    while (v81 != v82);
  }

  if (&v87 != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, 0, 0, 0);
    v77 = v87;
  }

  if (v77)
  {
    v88 = v77;
    operator delete(v77);
  }

  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(v91[0]);
  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }
}

void sub_29914BB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a14);
  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void MeCab::FeatureIndex::compile(MeCab::FeatureIndex *this, const MeCab::Param *a2, const char *a3, const char *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  __p = 0;
  v5 = 0;
  v6 = 0;
  MeCab::FeatureIndex::convert(this, a2);
}

void sub_29914BD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::ofstream::~ofstream(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::EncoderFeatureIndex::reopen(uint64_t a1)
{
  v5[19] = *MEMORY[0x29EDCA608];
  (*(*a1 + 16))(a1);
  std::ifstream::basic_ifstream(v3);
  if ((*&v4[*(v3[0] - 24) + 16] & 5) == 0)
  {
    operator new[]();
  }

  v3[0] = *MEMORY[0x29EDC9518];
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29A160](v4);
  std::istream::~istream();
  MEMORY[0x29C29A320](v5);
  v1 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29914C930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  MeCab::Iconv::~Iconv(&a26);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  a34 = a12;
  if (a35)
  {
    MEMORY[0x29C29A350](a35, 0x1000C8077774924);
  }

  std::ifstream::~ifstream(&a46);
  _Unwind_Resume(a1);
}

void MeCab::Param::set<std::string>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v17[2] = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(v14, a2);
  if ((a4 & 1) != 0 || a1 + 16 == std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 8, v14))
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v17[0] = __p.__r_.__value_.__l.__size_;
    v7 = __p.__r_.__value_.__r.__words[0];
    *(v17 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    v16 = v14;
    v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, v14);
    v10 = v9;
    if (*(v9 + 79) < 0)
    {
      operator delete(*(v9 + 56));
    }

    v11 = v17[0];
    *(v10 + 56) = v7;
    *(v10 + 64) = v11;
    *(v10 + 71) = *(v17 + 7);
    *(v10 + 79) = v8;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_29914CB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MeCab::EncoderFeatureIndex::save(MeCab::EncoderFeatureIndex *this, const char *a2, const char *a3)
{
  v35[19] = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(", 1);
    v7 = MEMORY[0x29C29A250](v6, 665);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") [", 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "header", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
    MeCab::die::~die(&v33);
  }

  if (!*(this + 42))
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/feature_index.cpp", 67);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
    v12 = MEMORY[0x29C29A250](v11, 666);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") [", 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "alpha_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "] ", 2);
    MeCab::die::~die(&v33);
  }

  std::ofstream::basic_ofstream(&v33);
  v15 = v33;
  v16 = &v34[*(v33 - 24) - 8];
  v17 = *(v16 + 8) & 5;
  if (!v17)
  {
    *(v16 + 2) = *(v16 + 2) & 0xFFFFFEFB | 4;
    *&v34[*(v15 - 24) + 8] = 16;
    v18 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, a3, v18);
    std::ios_base::getloc(&v34[*(v33 - 24) - 8]);
    v19 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    v20 = *(this + 43);
    if (v20 != (this + 352))
    {
      do
      {
        v21 = MEMORY[0x29C29A240](&v33, *(*(this + 42) + 8 * *(v20 + 14)));
        LOBYTE(v32.__locale_) = 9;
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, &v32, 1);
        v23 = *(v20 + 55);
        if (v23 >= 0)
        {
          v24 = v20 + 32;
        }

        else
        {
          v24 = *(v20 + 4);
        }

        if (v23 >= 0)
        {
          v25 = *(v20 + 55);
        }

        else
        {
          v25 = *(v20 + 5);
        }

        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
        LOBYTE(v32.__locale_) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v32, 1);
        v27 = *(v20 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v20 + 2);
            v29 = *v28 == v20;
            v20 = v28;
          }

          while (!v29);
        }

        v20 = v28;
      }

      while (v28 != (this + 352));
    }
  }

  v33 = *MEMORY[0x29EDC9520];
  *&v34[*(v33 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C29A160](v34);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](v35);
  v30 = *MEMORY[0x29EDCA608];
  return v17 == 0;
}

void sub_29914CFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11)
{
  std::locale::~locale(&a10);
  std::ofstream::~ofstream(&a11);
  _Unwind_Resume(a1);
}

void MeCab::EncoderFeatureIndex::~EncoderFeatureIndex(char **this)
{
  *this = &unk_2A1F352A0;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 46), this[47]);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 43), this[44]);

  MeCab::FeatureIndex::~FeatureIndex(this);
}

{
  *this = &unk_2A1F352A0;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 46), this[47]);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 43), this[44]);
  MeCab::FeatureIndex::~FeatureIndex(this);

  JUMPOUT(0x29C29A380);
}

{
  *this = &unk_2A1F352A0;
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 46), this[47]);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy((this + 43), this[44]);

  MeCab::FeatureIndex::~FeatureIndex(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v145 = *(v8 + 16);
          v146 = *v8;
          v147 = *(v8 + 24);
          v148 = *(v8 + 8);
          if (v145 == *v8)
          {
            v149 = v147 < v148;
          }

          else
          {
            v149 = v145 < *v8;
          }

          v150 = *(a2 - 16);
          v151 = *(a2 - 8);
          v152 = v151 < v147;
          if (v150 != v145)
          {
            v152 = v150 < v145;
          }

          if (!v149)
          {
            if (!v152)
            {
              return result;
            }

            *(v8 + 16) = v150;
            *(a2 - 16) = v145;
            *(v8 + 24) = v151;
            *(a2 - 8) = v147;
            v131 = *(v8 + 16);
            v139 = *v8;
            v133 = *(v8 + 24);
            goto LABEL_278;
          }

          if (v152)
          {
            *v8 = v150;
            *(a2 - 16) = v146;
            *(v8 + 8) = v151;
          }

          else
          {
            *v8 = v145;
            *(v8 + 16) = v146;
            *(v8 + 8) = v147;
            *(v8 + 24) = v148;
            v217 = *(a2 - 16);
            v218 = *(a2 - 8);
            v219 = v218 < v148;
            if (v217 != v146)
            {
              v219 = v217 < v146;
            }

            if (!v219)
            {
              return result;
            }

            *(v8 + 16) = v217;
            *(a2 - 16) = v146;
            *(v8 + 24) = v218;
          }

          *(a2 - 8) = v148;
          return result;
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,0>(v8, (v8 + 16), (v8 + 32), (a2 - 16));
        case 5:
          result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48));
          v126 = *(a2 - 16);
          v127 = *(v8 + 48);
          v128 = *(a2 - 8);
          v129 = *(v8 + 56);
          v130 = v128 < v129;
          if (v126 != v127)
          {
            v130 = v126 < v127;
          }

          if (!v130)
          {
            return result;
          }

          *(v8 + 48) = v126;
          *(a2 - 16) = v127;
          *(v8 + 56) = v128;
          *(a2 - 8) = v129;
          v131 = *(v8 + 48);
          v132 = *(v8 + 32);
          v133 = *(v8 + 56);
          v134 = *(v8 + 40);
          v135 = v133 < v134;
          if (v131 != v132)
          {
            v135 = v131 < v132;
          }

          if (!v135)
          {
            return result;
          }

          *(v8 + 32) = v131;
          *(v8 + 48) = v132;
          *(v8 + 40) = v133;
          *(v8 + 56) = v134;
          v136 = *(v8 + 16);
          v137 = *(v8 + 24);
          v138 = v133 < v137;
          if (v131 != v136)
          {
            v138 = v131 < v136;
          }

          if (!v138)
          {
            return result;
          }

          *(v8 + 16) = v131;
          *(v8 + 32) = v136;
          *(v8 + 24) = v133;
          *(v8 + 40) = v137;
          v139 = *v8;
LABEL_278:
          v205 = *(v8 + 8);
          v206 = v133 < v205;
          if (v131 != v139)
          {
            v206 = v131 < v139;
          }

          if (v206)
          {
            *v8 = v131;
            *(v8 + 16) = v139;
            *(v8 + 8) = v133;
            *(v8 + 24) = v205;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v140 = *(a2 - 16);
        v141 = *v8;
        v142 = *(a2 - 8);
        v143 = *(v8 + 8);
        v144 = v142 < v143;
        if (v140 != v141)
        {
          v144 = v140 < *v8;
        }

        if (v144)
        {
          *v8 = v140;
          *(a2 - 16) = v141;
          *(v8 + 8) = v142;
          *(a2 - 8) = v143;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v167 = (v9 - 2) >> 1;
      v168 = v167;
      do
      {
        v169 = v168;
        if (v167 >= v168)
        {
          v170 = (2 * v168) | 1;
          v171 = v8 + 16 * v170;
          if (2 * v169 + 2 >= v9)
          {
            v172 = *v171;
          }

          else
          {
            v172 = *(v171 + 16);
            v173 = *(v171 + 8) < *(v171 + 24);
            result = *v171 < v172;
            if (*v171 != v172)
            {
              v173 = *v171 < v172;
            }

            if (v173)
            {
              v171 += 16;
            }

            else
            {
              v172 = *v171;
            }

            if (v173)
            {
              v170 = 2 * v169 + 2;
            }
          }

          v174 = v8 + 16 * v169;
          v175 = *v174;
          v176 = *(v171 + 8);
          v177 = *(v174 + 8);
          v178 = v176 < v177;
          if (v172 != *v174)
          {
            v178 = v172 < *v174;
          }

          if (!v178)
          {
            do
            {
              *v174 = v172;
              *(v174 + 8) = v176;
              v174 = v171;
              if (v167 < v170)
              {
                break;
              }

              v179 = (2 * v170) | 1;
              v171 = v8 + 16 * v179;
              v170 = 2 * v170 + 2;
              if (v170 >= v9)
              {
                v172 = *v171;
                v170 = v179;
              }

              else
              {
                v172 = *(v171 + 16);
                result = *v171;
                v180 = *(v171 + 8) < *(v171 + 24);
                if (*v171 != v172)
                {
                  v180 = *v171 < v172;
                }

                if (v180)
                {
                  v171 += 16;
                }

                else
                {
                  v172 = *v171;
                }

                if (!v180)
                {
                  v170 = v179;
                }
              }

              v176 = *(v171 + 8);
              v181 = v176 < v177;
              if (v172 != v175)
              {
                v181 = v172 < v175;
              }
            }

            while (!v181);
            *v174 = v175;
            *(v174 + 8) = v177;
          }
        }

        v168 = v169 - 1;
      }

      while (v169);
      while (2)
      {
        v182 = 0;
        v183 = *v8;
        v184 = *(v8 + 8);
        v185 = v8;
        do
        {
          v186 = &v185[2 * v182];
          v187 = v186 + 2;
          v188 = (2 * v182) | 1;
          v182 = 2 * v182 + 2;
          if (v182 >= v9)
          {
            v190 = *v187;
            v182 = v188;
          }

          else
          {
            v191 = v186[4];
            v189 = (v186 + 4);
            v190 = v191;
            v192 = *(v189 - 2);
            v193 = *(v189 - 1) < v189[1];
            v194 = v192 < v191;
            if (v192 == v191)
            {
              result = *(v189 - 1) < v189[1];
            }

            else
            {
              result = v194;
            }

            if (result)
            {
              v187 = v189;
            }

            else
            {
              v190 = *(v189 - 2);
            }

            if (!result)
            {
              v182 = v188;
            }
          }

          *v185 = v190;
          v185[1] = v187[1];
          v185 = v187;
        }

        while (v182 <= ((v9 - 2) >> 1));
        if (v187 != (a2 - 16))
        {
          *v187 = *(a2 - 16);
          v187[1] = *(a2 - 8);
          *(a2 - 16) = v183;
          *(a2 - 8) = v184;
          v195 = (v187 - v8 + 16) >> 4;
          v196 = v195 < 2;
          v197 = v195 - 2;
          if (!v196)
          {
            v198 = v197 >> 1;
            v199 = v8 + 16 * v198;
            v200 = *v199;
            v201 = *v187;
            v202 = *(v199 + 8);
            v184 = *(v187 + 1);
            v203 = v202 < v184;
            if (*v199 != *v187)
            {
              v203 = *v199 < *v187;
            }

            if (v203)
            {
              do
              {
                *v187 = v200;
                *(v187 + 1) = v202;
                v187 = v199;
                if (!v198)
                {
                  break;
                }

                v198 = (v198 - 1) >> 1;
                v199 = v8 + 16 * v198;
                v200 = *v199;
                v202 = *(v199 + 8);
                v204 = v202 < v184;
                if (*v199 != v201)
                {
                  v204 = *v199 < v201;
                }
              }

              while (v204);
              *v187 = v201;
LABEL_272:
              *(v187 + 1) = v184;
            }
          }

          a2 -= 16;
          v196 = v9-- <= 2;
          if (v196)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v187 = v183;
      goto LABEL_272;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 16);
    v12 = *(a2 - 8);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = *(v10 + 8);
      v16 = *(v8 + 8);
      v17 = *v10 < *v8;
      if (*v10 == *v8)
      {
        v17 = v15 < v16;
      }

      v18 = v12 < v15;
      if (v11 != v13)
      {
        v18 = v11 < v13;
      }

      if (v17)
      {
        if (v18)
        {
          *v8 = v11;
          *(a2 - 16) = v14;
          *(v8 + 8) = v12;
          goto LABEL_41;
        }

        *v8 = v13;
        *v10 = v14;
        *(v8 + 8) = v15;
        *(v10 + 8) = v16;
        v33 = *(a2 - 16);
        v34 = *(a2 - 8);
        v35 = v34 < v16;
        if (v33 != v14)
        {
          v35 = v33 < v14;
        }

        if (v35)
        {
          *v10 = v33;
          *(a2 - 16) = v14;
          *(v10 + 8) = v34;
LABEL_41:
          *(a2 - 8) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 16) = v13;
        *(v10 + 8) = v12;
        *(a2 - 8) = v15;
        v25 = *v8;
        v26 = *(v10 + 8);
        v27 = *(v8 + 8);
        v28 = v26 < v27;
        if (*v10 != *v8)
        {
          v28 = *v10 < *v8;
        }

        if (v28)
        {
          *v8 = *v10;
          *v10 = v25;
          *(v8 + 8) = v26;
          *(v10 + 8) = v27;
        }
      }

      v36 = v10 - 16;
      v37 = *(v10 - 16);
      v38 = *(v8 + 16);
      v39 = *(v10 - 8);
      v40 = *(v8 + 24);
      if (v37 == v38)
      {
        v41 = v39 < v40;
      }

      else
      {
        v41 = v37 < v38;
      }

      v42 = *(a2 - 32);
      v43 = *(a2 - 24);
      v44 = v43 < v39;
      if (v42 != v37)
      {
        v44 = v42 < v37;
      }

      if (v41)
      {
        if (v44)
        {
          *(v8 + 16) = v42;
          *(a2 - 32) = v38;
          *(v8 + 24) = v43;
          goto LABEL_64;
        }

        *(v8 + 16) = v37;
        *v36 = v38;
        *(v8 + 24) = v39;
        *(v10 - 8) = v40;
        v52 = *(a2 - 32);
        v53 = *(a2 - 24);
        v54 = v53 < v40;
        if (v52 != v38)
        {
          v54 = v52 < v38;
        }

        if (v54)
        {
          *v36 = v52;
          *(a2 - 32) = v38;
          *(v10 - 8) = v53;
LABEL_64:
          *(a2 - 24) = v40;
        }
      }

      else if (v44)
      {
        *v36 = v42;
        *(a2 - 32) = v37;
        *(v10 - 8) = v43;
        *(a2 - 24) = v39;
        v45 = *(v8 + 16);
        v46 = *(v10 - 8);
        v47 = *(v8 + 24);
        v48 = v46 < v47;
        if (*v36 != v45)
        {
          v48 = *v36 < v45;
        }

        if (v48)
        {
          *(v8 + 16) = *v36;
          *v36 = v45;
          *(v8 + 24) = v46;
          *(v10 - 8) = v47;
        }
      }

      v55 = v10 + 16;
      v56 = *(v10 + 16);
      v57 = *(v8 + 32);
      v58 = *(v10 + 24);
      v59 = *(v8 + 40);
      if (v56 == v57)
      {
        v60 = v58 < v59;
      }

      else
      {
        v60 = v56 < v57;
      }

      v61 = *(a2 - 48);
      v62 = *(a2 - 40);
      v63 = v62 < v58;
      if (v61 != v56)
      {
        v63 = v61 < v56;
      }

      if (v60)
      {
        if (v63)
        {
          *(v8 + 32) = v61;
          *(a2 - 48) = v57;
          *(v8 + 40) = v62;
          goto LABEL_82;
        }

        *(v8 + 32) = v56;
        *v55 = v57;
        *(v8 + 40) = v58;
        *(v10 + 24) = v59;
        v68 = *(a2 - 48);
        v69 = *(a2 - 40);
        v70 = v69 < v59;
        if (v68 != v57)
        {
          v70 = v68 < v57;
        }

        if (v70)
        {
          *v55 = v68;
          *(a2 - 48) = v57;
          *(v10 + 24) = v69;
LABEL_82:
          *(a2 - 40) = v59;
        }
      }

      else if (v63)
      {
        *v55 = v61;
        *(a2 - 48) = v56;
        *(v10 + 24) = v62;
        *(a2 - 40) = v58;
        v64 = *(v8 + 32);
        v65 = *(v10 + 24);
        v66 = *(v8 + 40);
        v67 = v65 < v66;
        if (*v55 != v64)
        {
          v67 = *v55 < v64;
        }

        if (v67)
        {
          *(v8 + 32) = *v55;
          *v55 = v64;
          *(v8 + 40) = v65;
          *(v10 + 24) = v66;
        }
      }

      v71 = *v10;
      v72 = *v36;
      v73 = *(v10 + 8);
      v74 = *(v10 - 8);
      if (*v10 == *v36)
      {
        v75 = v73 < v74;
      }

      else
      {
        v75 = *v10 < *v36;
      }

      v76 = *v55;
      v77 = *(v10 + 24);
      v78 = v77 < v73;
      if (*v55 != v71)
      {
        v78 = *v55 < v71;
      }

      if (v75)
      {
        if (!v78)
        {
          *v36 = v71;
          *v10 = v72;
          v79 = v76 < v72;
          if (v76 == v72)
          {
            v79 = v77 < v74;
          }

          *(v10 - 8) = v73;
          *(v10 + 8) = v74;
          v36 = v10;
          v73 = v77;
          v71 = v76;
          if (!v79)
          {
            v73 = v74;
            v71 = v72;
LABEL_100:
            v81 = *v8;
            *v8 = v71;
            *v10 = v81;
            v82 = *(v8 + 8);
            *(v8 + 8) = v73;
            *(v10 + 8) = v82;
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (!v78)
        {
          goto LABEL_100;
        }

        *v10 = v76;
        *v55 = v71;
        *(v10 + 8) = v77;
        *(v10 + 24) = v73;
        if (v76 == v72)
        {
          v80 = v77 < v74;
        }

        else
        {
          v80 = v76 < v72;
        }

        v55 = v10;
        v73 = v74;
        v71 = v72;
        if (!v80)
        {
          v73 = v77;
          v71 = v76;
          goto LABEL_100;
        }
      }

      *v36 = v76;
      *v55 = v72;
      *(v36 + 8) = v77;
      *(v55 + 8) = v74;
      goto LABEL_100;
    }

    v19 = *v8;
    v20 = *v10;
    v21 = *(v8 + 8);
    v22 = *(v10 + 8);
    v23 = *v8 < *v10;
    if (*v8 == *v10)
    {
      v23 = v21 < v22;
    }

    v24 = v12 < v21;
    if (v11 != v19)
    {
      v24 = v11 < v19;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 16) = v20;
        *(v10 + 8) = v12;
LABEL_59:
        *(a2 - 8) = v22;
        goto LABEL_101;
      }

      *v10 = v19;
      *v8 = v20;
      *(v10 + 8) = v21;
      *(v8 + 8) = v22;
      v49 = *(a2 - 16);
      v50 = *(a2 - 8);
      v51 = v50 < v22;
      if (v49 != v20)
      {
        v51 = v49 < v20;
      }

      if (v51)
      {
        *v8 = v49;
        *(a2 - 16) = v20;
        *(v8 + 8) = v50;
        goto LABEL_59;
      }
    }

    else if (v24)
    {
      *v8 = v11;
      *(a2 - 16) = v19;
      *(v8 + 8) = v12;
      *(a2 - 8) = v21;
      v29 = *v10;
      v30 = *(v8 + 8);
      v31 = *(v10 + 8);
      v32 = v30 < v31;
      if (*v8 != *v10)
      {
        v32 = *v8 < *v10;
      }

      if (v32)
      {
        *v10 = *v8;
        *v8 = v29;
        *(v10 + 8) = v30;
        *(v8 + 8) = v31;
      }
    }

LABEL_101:
    --a3;
    v83 = *v8;
    if (a4)
    {
      v84 = *(v8 + 8);
      goto LABEL_106;
    }

    v85 = *(v8 - 16);
    v84 = *(v8 + 8);
    v154 = v85 == v83;
    v86 = v85 < v83;
    if (v154)
    {
      v86 = *(v8 - 8) < v84;
    }

    if (v86)
    {
LABEL_106:
      v87 = 0;
      do
      {
        v88 = *(v8 + v87 + 16);
        v89 = *(v8 + v87 + 24) < v84;
        if (v88 != v83)
        {
          v89 = v88 < v83;
        }

        v87 += 16;
      }

      while (v89);
      v90 = v8 + v87;
      v91 = a2;
      if (v87 == 16)
      {
        v91 = a2;
        do
        {
          if (v90 >= v91)
          {
            break;
          }

          v94 = *(v91 - 16);
          v91 -= 16;
          v95 = v94 < v83;
          if (v94 == v83)
          {
            v95 = *(v91 + 8) < v84;
          }
        }

        while (!v95);
      }

      else
      {
        do
        {
          v92 = *(v91 - 16);
          v91 -= 16;
          v93 = v92 < v83;
          if (v92 == v83)
          {
            v93 = *(v91 + 8) < v84;
          }
        }

        while (!v93);
      }

      if (v90 >= v91)
      {
        v8 = v90;
      }

      else
      {
        v96 = *v91;
        v8 = v90;
        v97 = v91;
        do
        {
          *v8 = v96;
          *v97 = v88;
          v98 = *(v8 + 8);
          *(v8 + 8) = v97[1];
          *(v97 + 1) = v98;
          do
          {
            v99 = *(v8 + 16);
            v8 += 16;
            v88 = v99;
            v100 = *(v8 + 8) < v84;
            v101 = v99 < v83;
            if (v99 != v83)
            {
              v100 = v101;
            }
          }

          while (v100);
          do
          {
            v102 = *(v97 - 2);
            v97 -= 2;
            v96 = v102;
            v103 = v97[1] < v84;
            v104 = v102 < v83;
            if (v102 != v83)
            {
              v103 = v104;
            }
          }

          while (!v103);
        }

        while (v8 < v97);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v83;
      *(v8 - 8) = v84;
      if (v90 < v91)
      {
        goto LABEL_137;
      }

      v105 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *>(v7, v8 - 16);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (v105)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v105)
      {
LABEL_137:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,false>(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v106 = *(a2 - 16);
      v154 = v83 == v106;
      v107 = v83 < v106;
      if (v154)
      {
        v107 = v84 < *(a2 - 8);
      }

      if (v107)
      {
        do
        {
          v108 = *(v8 + 16);
          v8 += 16;
          v109 = v83 < v108;
          if (v83 == v108)
          {
            v109 = v84 < *(v8 + 8);
          }
        }

        while (!v109);
      }

      else
      {
        v110 = (v8 + 16);
        do
        {
          v8 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = *v110;
          v112 = v84 < *(v8 + 8);
          v154 = v83 == v111;
          v113 = v83 < v111;
          if (!v154)
          {
            v112 = v113;
          }

          v110 = (v8 + 16);
        }

        while (!v112);
      }

      v114 = a2;
      if (v8 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 16);
          v114 -= 16;
          v116 = v83 < v115;
          if (v83 == v115)
          {
            v116 = v84 < *(v114 + 8);
          }
        }

        while (v116);
      }

      if (v8 < v114)
      {
        v117 = *v8;
        v118 = *v114;
        do
        {
          *v8 = v118;
          *v114 = v117;
          v119 = *(v8 + 8);
          *(v8 + 8) = *(v114 + 8);
          *(v114 + 8) = v119;
          do
          {
            v120 = *(v8 + 16);
            v8 += 16;
            v117 = v120;
            v121 = v84 < *(v8 + 8);
            v122 = v83 < v120;
            if (v83 != v120)
            {
              v121 = v122;
            }
          }

          while (!v121);
          do
          {
            v123 = *(v114 - 16);
            v114 -= 16;
            v118 = v123;
            v124 = v84 < *(v114 + 8);
            v125 = v83 < v123;
            if (v83 != v123)
            {
              v124 = v125;
            }
          }

          while (v124);
        }

        while (v8 < v114);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v83;
      *(v8 - 8) = v84;
    }
  }

  v153 = v8 + 16;
  v154 = v8 == a2 || v153 == a2;
  v155 = v154;
  if (a4)
  {
    if ((v155 & 1) == 0)
    {
      v156 = 0;
      v157 = v8;
      do
      {
        v158 = *(v157 + 16);
        v159 = *v157;
        v160 = *(v157 + 24);
        v161 = *(v157 + 8);
        v157 = v153;
        v162 = v160 < v161;
        if (v158 != v159)
        {
          v162 = v158 < v159;
        }

        if (v162)
        {
          v163 = v156;
          while (1)
          {
            v164 = v8 + v163;
            *(v164 + 16) = v159;
            *(v164 + 24) = *(v8 + v163 + 8);
            if (!v163)
            {
              break;
            }

            v159 = *(v164 - 16);
            v165 = v160 < *(v164 - 8);
            if (v158 != v159)
            {
              v165 = v158 < v159;
            }

            v163 -= 16;
            if (!v165)
            {
              v166 = v8 + v163 + 16;
              goto LABEL_215;
            }
          }

          v166 = v8;
LABEL_215:
          *v166 = v158;
          *(v166 + 8) = v160;
        }

        v153 = v157 + 16;
        v156 += 16;
      }

      while (v157 + 16 != a2);
    }
  }

  else if ((v155 & 1) == 0)
  {
    v207 = (v8 + 24);
    do
    {
      v208 = *(v7 + 16);
      v209 = *v7;
      v210 = *(v7 + 24);
      v211 = *(v7 + 8);
      v7 = v153;
      v212 = v210 < v211;
      if (v208 != v209)
      {
        v212 = v208 < v209;
      }

      if (v212)
      {
        v213 = v207;
        do
        {
          v214 = v213;
          *(v213 - 1) = v209;
          v215 = *(v213 - 2);
          v213 -= 2;
          *v214 = v215;
          v209 = *(v214 - 5);
          v216 = v210 < *(v214 - 4);
          if (v208 != v209)
          {
            v216 = v208 < v209;
          }
        }

        while (v216);
        *(v213 - 1) = v208;
        *v213 = v210;
      }

      v153 = v7 + 16;
      v207 += 2;
    }

    while (v7 + 16 != a2);
  }

  return result;
}

unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,0>(unint64_t *result, unint64_t *a2, double *a3, double *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(a2 + 1);
  v7 = *(result + 1);
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      *(result + 1) = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    *(result + 1) = v6;
    *(a2 + 1) = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != v5)
    {
      v16 = *a3 < v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 1) = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    *(a2 + 1) = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = *(a2 + 1);
    v14 = *(result + 1);
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      *(result + 1) = v13;
      *(a2 + 1) = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = *(a2 + 1);
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      *(a2 + 1) = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = *(a2 + 1);
      v25 = *(result + 1);
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        *(result + 1) = v24;
        *(a2 + 1) = v25;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *a1;
        v7 = *(a2 - 8);
        v8 = *(a1 + 8);
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 16) = v6;
          *(a1 + 8) = v7;
LABEL_69:
          result = 1;
          *(a2 - 8) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 16);
      v28 = *a1;
      v29 = *(a1 + 24);
      v8 = *(a1 + 8);
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 16);
      v32 = *(a2 - 8);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 16) = v28;
          *(a1 + 8) = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 16) = v28;
        *(a1 + 8) = v29;
        *(a1 + 24) = v8;
        v64 = *(a2 - 16);
        v65 = *(a2 - 8);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 16) = v64;
          *(a2 - 16) = v28;
          *(a1 + 24) = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 16) = v31;
        *(a2 - 16) = v27;
        *(a1 + 24) = v32;
        *(a2 - 8) = v29;
        v47 = *(a1 + 16);
        v48 = *a1;
        v49 = *(a1 + 24);
        v50 = *(a1 + 8);
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 16) = v48;
          *(a1 + 8) = v49;
          result = 1;
          *(a1 + 24) = v50;
          return result;
        }
      }

      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,0>(a1, (a1 + 16), (a1 + 32), (a2 - 16));
      return 1;
    case 5:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,double> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48));
      v10 = *(a2 - 16);
      v11 = *(a1 + 48);
      v12 = *(a2 - 8);
      v13 = *(a1 + 56);
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 48) = v10;
        *(a2 - 16) = v11;
        *(a1 + 56) = v12;
        *(a2 - 8) = v13;
        v15 = *(a1 + 48);
        v16 = *(a1 + 32);
        v17 = *(a1 + 56);
        v18 = *(a1 + 40);
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 32) = v15;
          *(a1 + 48) = v16;
          *(a1 + 40) = v17;
          *(a1 + 56) = v18;
          v20 = *(a1 + 16);
          v21 = *(a1 + 24);
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 16) = v15;
            *(a1 + 32) = v20;
            *(a1 + 24) = v17;
            *(a1 + 40) = v21;
            v23 = *a1;
            v24 = *(a1 + 8);
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              *(a1 + 16) = v23;
              *(a1 + 8) = v17;
              result = 1;
              *(a1 + 24) = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 32;
  v35 = *(a1 + 32);
  v36 = (a1 + 16);
  v37 = *(a1 + 16);
  v38 = *a1;
  v39 = (a1 + 24);
  v40 = *(a1 + 24);
  v41 = (a1 + 8);
  v42 = *(a1 + 8);
  v43 = v37 < *a1;
  v44 = *(a1 + 40);
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = (a1 + 32);
      v39 = (a1 + 40);
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 16) = v38;
    if (v35 == v38)
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < v38;
    }

    v46 = (a1 + 16);
    *(a1 + 8) = v40;
    *(a1 + 24) = v42;
    v36 = (a1 + 32);
    v41 = (a1 + 24);
    v39 = (a1 + 40);
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    *(a1 + 40) = v40;
    v52 = v44 < v42;
    if (v35 != v38)
    {
      v52 = v35 < v38;
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = *(v53 + 8);
    v59 = v58 < *(v34 + 8);
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 48) = v57;
        *(v61 + 56) = *(a1 + v60 + 40);
        if (v60 == -32)
        {
          break;
        }

        v57 = *(v61 + 16);
        v62 = v58 < *(v61 + 24);
        if (v56 != v57)
        {
          v62 = v56 < v57;
        }

        v60 -= 16;
        if (!v62)
        {
          v63 = a1 + v60 + 48;
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      *(v63 + 8) = v58;
      if (++v55 == 8)
      {
        return v53 + 16 == a2;
      }
    }

    v34 = v53;
    v54 += 16;
    v53 += 16;
    if (v53 == a2)
    {
      return 1;
    }
  }
}