void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MeCab::scoped_fixed_array<char,2048>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35B88;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_fixed_array<char *,64>::~scoped_fixed_array(void *a1)
{
  *a1 = &unk_2A1F35BB8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x10C80436913F5);
  }

  JUMPOUT(0x29C29A380);
}

void std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(*a1);
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t mecab_strerror(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
  }

  v3 = *(*a1 + 232);

  return v3();
}

uint64_t mecab_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t mecab_lattice_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 312))();
  }

  return result;
}

uint64_t mecab_model_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

BOOL MeCab::CharProperty::open(MeCab::CharProperty *this, const MeCab::Param *a2)
{
  MeCab::Param::get<std::string>(a2, "dicdir", &v9);
  std::string::basic_string[abi:ne200100]<0>(__p, "char.bin");
  MeCab::create_filename(&v9, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v8;
  }

  else
  {
    v3 = v8.__r_.__value_.__r.__words[0];
  }

  v4 = MeCab::CharProperty::open(this, v3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_29914F74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL MeCab::CharProperty::open(MeCab::CharProperty *this, char *a2)
{
  if (MeCab::Mmap<char>::open(this + 8, a2, "r"))
  {
    v3 = *(this + 2);
    v4 = *(this + 3);

    return MeCab::CharProperty::open(this, v3, v4);
  }

  else
  {
    std::ios_base::clear((this + *(*(this + 49) - 24) + 392), 0);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x29C29A250](v7, 85);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "cmmap_.open(filename, r)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
    return 0;
  }
}

BOOL MeCab::CharProperty::open(MeCab::CharProperty *this, const char *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = (32 * *a2) + 0x40000;
  if (v6 == a3)
  {
    v7 = a2 + 4;
    v8 = *(this + 44);
    for (*(this + 45) = v8; v5; --v5)
    {
      v9 = *(this + 46);
      if (v8 >= v9)
      {
        v10 = *(this + 44);
        v11 = (v8 - v10) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
        }

        v12 = v9 - v10;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(this + 352, v14);
        }

        *(8 * v11) = v7;
        v8 = (8 * v11 + 8);
        v15 = *(this + 44);
        v16 = *(this + 45) - v15;
        v17 = (8 * v11 - v16);
        memcpy(v17, v15, v16);
        v18 = *(this + 44);
        *(this + 44) = v17;
        *(this + 45) = v8;
        *(this + 46) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v8++ = v7;
      }

      v7 += 32;
      *(this + 45) = v8;
    }

    *(this + 47) = v7;
  }

  else
  {
    std::ios_base::clear((this + *(*(this + 49) - 24) + 392), 0);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "(", 1);
    v21 = MEMORY[0x29C29A250](v20, 98);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") [", 3);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "fsize == size", 13);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "invalid file size", 17);
  }

  return v6 == a3;
}

uint64_t MeCab::CharProperty::id(MeCab::CharProperty *this, const char *__s1)
{
  v2 = *(this + 44);
  v3 = (*(this + 45) - v2) >> 3;
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (strcmp(__s1, *(v2 + 8 * v5)))
  {
    if (v3 == ++v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

void MeCab::CharProperty::compile(MeCab::CharProperty *this, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  std::ifstream::basic_ifstream(v30);
  std::string::basic_string[abi:ne200100]<0>(__p, "DEFAULT 1 0 0\nSPACE   0 1 0\n0x0020 SPACE\n");
  std::istringstream::basic_istringstream[abi:ne200100](&v24, __p, 8);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(&v30[4] + *(v30[0] - 24)) & 5) != 0)
  {
    v7 = strlen(this);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], this, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " is not found. minimum setting is used", 38);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "DEFAULT,0,0,0,*\nSPACE,0,0,0,*\n");
  std::istringstream::basic_istringstream[abi:ne200100](&v23, __p, 8);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  std::ifstream::basic_ifstream(__p);
  if ((v29[*(__p[0] - 3)] & 5) != 0)
  {
    v11 = strlen(a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], a2, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is not found. minimum setting is used.", 39);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v26, MEMORY[0x29EDC93D0]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ofstream::basic_ofstream(&v26);
  if ((*(&v26 + *(v26.__locale_ - 3) + 32) & 5) != 0)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
    v17 = MEMORY[0x29C29A250](v16, 157);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "ofs", 3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "permission denied: ", 19);
    v22 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a3, v22);
    MeCab::die::~die(v31);
  }

  v25 = &unk_2A1F35AF8;
  operator new[]();
}

void sub_299151790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  STACK[0x240] = &STACK[0x280];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  std::__tree<std::__value_type<std::string,MeCab::CharInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::CharInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::CharInfo>>>::destroy(STACK[0x2A0]);
  STACK[0x2C8] = a10;
  if (STACK[0x2D0])
  {
    MEMORY[0x29C29A350](STACK[0x2D0], 0x10C80436913F5);
  }

  STACK[0x2E0] = a11;
  if (STACK[0x2E8])
  {
    MEMORY[0x29C29A350](STACK[0x2E8], 0x1000C8077774924);
  }

  std::ofstream::~ofstream(&STACK[0x318], MEMORY[0x29EDC9520]);
  MEMORY[0x29C29A320](&STACK[0x4B8]);
  std::ifstream::~ifstream(&STACK[0x550]);
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a47);
  std::ifstream::~ifstream(&STACK[0x790]);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, __int128 *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x29EDC95A0] + 64;
  a1[15] = MEMORY[0x29EDC95A0] + 64;
  v7 = *(MEMORY[0x29EDC9530] + 16);
  v8 = *(MEMORY[0x29EDC9530] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x29EDC95A0] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_299151C88(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C29A320](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9530];
  v3 = *MEMORY[0x29EDC9530];
  *a1 = *MEMORY[0x29EDC9530];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x29C29A320](a1 + 120);
  return a1;
}

uint64_t MeCab::anonymous namespace::atohex(MeCab::_anonymous_namespace_ *this, const char *a2)
{
  if (strlen(this) < 3 || *this != 48 || (*(this + 1) | 0x20) != 0x78)
  {
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "(", 1);
    v5 = MEMORY[0x29C29A250](v4, 34);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") [", 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "std::strlen(s) >= 3 && s[0] == '0' && (s[1] == 'x' || s[1] == 'X')", 66);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "] ", 2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "no hex value: ", 14);
    v10 = strlen(this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, this, v10);
    MeCab::die::~die(&v25);
  }

  LOBYTE(v11) = *(this + 2);
  if (!v11)
  {
    return 0;
  }

  LODWORD(v12) = 0;
  v13 = 3;
  do
  {
    v14 = (v11 - 48);
    if (v14 > 9)
    {
      if ((v11 - 65) > 5u)
      {
        if ((v11 - 97) > 5u)
        {
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
          v17 = MEMORY[0x29C29A250](v16, 48);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ") [", 3);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "false", 5);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "no hex value: ", 14);
          v22 = strlen(this);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, this, v22);
          MeCab::die::~die(&v24);
        }

        v14 = v11 - 87;
      }

      else
      {
        v14 = v11 - 55;
      }
    }

    v11 = *(this + v13++);
    v12 = v14 + 16 * v12;
  }

  while (v11);
  return v12;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
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

  *(a1 + 8) = v7;
}

uint64_t MeCab::anonymous namespace::encode(void ****a1, uint64_t a2)
{
  if (a1[1] == *a1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 59);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "c.size()", 8);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "category size is empty", 22);
    MeCab::die::~die(&v42);
  }

  v10 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a2, *a1);
  if (a2 + 8 == v10)
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "(", 1);
    v13 = MEMORY[0x29C29A250](v12, 62);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") [", 3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "it != category->end()", 21);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] ", 2);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "category [", 10);
    v18 = *(*a1 + 23);
    if (v18 >= 0)
    {
      v19 = *a1;
    }

    else
    {
      v19 = **a1;
    }

    if (v18 >= 0)
    {
      v20 = *(*a1 + 23);
    }

    else
    {
      v20 = (*a1)[1];
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "] is undefined", 14);
    MeCab::die::~die(&v41);
  }

  v22 = *(v10 + 56);
  v23 = *a1;
  if (a1[1] != *a1)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a2, &v23[v24]);
      if (a2 + 8 == v26)
      {
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/char_property.cpp", 67);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "(", 1);
        v29 = MEMORY[0x29C29A250](v28, 69);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ") [", 3);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "it != category->end()", 21);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "] ", 2);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "category [", 10);
        v34 = &(*a1)[v24];
        v35 = *(v34 + 23);
        if (v35 >= 0)
        {
          v36 = &(*a1)[v24];
        }

        else
        {
          v36 = *v34;
        }

        if (v35 >= 0)
        {
          v37 = *(v34 + 23);
        }

        else
        {
          v37 = v34[1];
        }

        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v36, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "] is undefined", 14);
        MeCab::die::~die(&v40);
      }

      v22 = v22 & 0xFFFC0000 | ((1 << (*(v26 + 56) >> 18)) + v22) & 0x3FFFF;
      ++v25;
      v23 = *a1;
      v24 += 3;
    }

    while (v25 < 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  }

  return v22;
}

void **std::vector<MeCab::anonymous namespace::Range>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 32;
        v7 = (v3 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EF0ACA8, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t std::__split_buffer<MeCab::anonymous namespace::Range>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29A2B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  v6 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_299152658(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,MeCab::CharInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::CharInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::CharInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,MeCab::CharInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::CharInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::CharInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,MeCab::CharInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::CharInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::CharInfo>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL MeCab::Iconv::open(MeCab::Iconv *this, _anonymous_namespace_ *a2, _anonymous_namespace_ *a3)
{
  *(this + 1) = 0;
  if (!strcmp(v5, v7))
  {
    return 1;
  }

  v8 = MEMORY[0x29C29A590](v7, v5);
  result = v8 != -1;
  if (v8 == -1)
  {
    v8 = 0;
  }

  *(this + 1) = v8;
  return result;
}

const char *anonymous namespace::decode_charset_iconv(_anonymous_namespace_ *this, const char *a2)
{
  v3 = MeCab::decode_charset(this, a2);
  if (v3 < 6)
  {
    return off_29EF0AF08[v3];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "charset ", 8);
  v6 = strlen(this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, this, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " is not defined, use EUC-JP", 27);
  return "EUC-JP";
}

uint64_t MeCab::Iconv::convert(uint64_t a1, std::string *a2)
{
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!a2->__r_.__value_.__l.__size_)
    {
      return 1;
    }
  }

  else if (!*(&a2->__r_.__value_.__s + 23))
  {
    return 1;
  }

  if (!*(a1 + 8))
  {
    return 1;
  }

  if ((size & 0x80000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = 4 * size;
  v13 = 4 * size;
  v14 = size;
  memset(&v12, 0, sizeof(v12));
  std::string::reserve(&v12, 4 * size);
  v6 = a2;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v11 = v6;
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  v10 = v7;
  if (v5 >= 1)
  {
    bzero(v7, v5);
  }

  MEMORY[0x29C29A570](*(a1 + 8), 0, &v14, 0, &v13);
  while (1)
  {
    v8 = v14 == 0;
    if (!v14)
    {
      break;
    }

    if (MEMORY[0x29C29A570](*(a1 + 8), &v11, &v14, &v10, &v13) == -1)
    {
      goto LABEL_21;
    }
  }

  std::string::__assign_external(a2, v7, v5 - v13);
LABEL_21:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_299152920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::Iconv::~Iconv(MeCab::Iconv *this)
{
  *this = &unk_2A1F35220;
  if (*(this + 1))
  {
    MEMORY[0x29C29A580]();
  }
}

{
  MeCab::Iconv::~Iconv(this);

  JUMPOUT(0x29C29A380);
}

uint64_t *MeCab::get_char_category(unsigned int a1)
{
  v3 = a1;
  {
    if (v2)
    {
      MeCab::new_char_category_map(v2);
      MeCab::get_char_category(char32_t)::category_map = &MeCab::new_char_category_map(void)::m;
    }
  }

  result = std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::find<char32_t>(MeCab::get_char_category(char32_t)::category_map, &v3);
  if (result)
  {
    return *(result + 5);
  }

  return result;
}

uint64_t MeCab::new_char_category_map(MeCab *this)
{
  {
    MeCab::new_char_category_map(void)::m = 0u;
    *&qword_2A145E110 = 0u;
    dword_2A145E120 = 1065353216;
    __cxa_atexit(std::unordered_map<char32_t,MeCab::UnicodeCharCategory>::~unordered_map[abi:ne200100], &MeCab::new_char_category_map(void)::m, &dword_29912C000);
  }

  v1 = 33;
  v214 = 33;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v1) + 5) = 2;
    v1 = v214 + 1;
    v214 = v1;
  }

  while (v1 < 0x2D);
  v2 = 46;
  v214 = 46;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v2) + 5) = 2;
    v2 = v214 + 1;
    v214 = v2;
  }

  while (v2 < 0x30);
  v3 = 48;
  v214 = 48;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v3) + 5) = 1;
    v3 = v214 + 1;
    v214 = v3;
  }

  while (v3 < 0x3A);
  v4 = 58;
  v214 = 58;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v4) + 5) = 2;
    v4 = v214 + 1;
    v214 = v4;
  }

  while (v4 < 0x41);
  v5 = 91;
  v214 = 91;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v5) + 5) = 2;
    v5 = v214 + 1;
    v214 = v5;
  }

  while (v5 < 0x5F);
  v214 = 96;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x60u) + 5) = 2;
  v6 = 123;
  v214 = 123;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v6) + 5) = 2;
    v6 = v214 + 1;
    v214 = v6;
  }

  while (v6 < 0x7F);
  v7 = 161;
  v214 = 161;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v7) + 5) = 2;
    v7 = v214 + 1;
    v214 = v7;
  }

  while (v7 < 0xAA);
  v8 = 171;
  v214 = 171;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v8) + 5) = 2;
    v8 = v214 + 1;
    v214 = v8;
  }

  while (v8 < 0xAD);
  v9 = 174;
  v214 = 174;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v9) + 5) = 2;
    v9 = v214 + 1;
    v214 = v9;
  }

  while (v9 < 0xB2);
  v10 = 178;
  v214 = 178;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v10) + 5) = 1;
    v10 = v214 + 1;
    v214 = v10;
  }

  while (v10 < 0xB4);
  v214 = 180;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xB4u) + 5) = 2;
  v11 = 182;
  v214 = 182;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v11) + 5) = 2;
    v11 = v214 + 1;
    v214 = v11;
  }

  while (v11 < 0xB9);
  v214 = 185;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xB9u) + 5) = 1;
  v214 = 187;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xBBu) + 5) = 2;
  v12 = 188;
  v214 = 188;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v12) + 5) = 1;
    v12 = v214 + 1;
    v214 = v12;
  }

  while (v12 < 0xBF);
  v214 = 191;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xBFu) + 5) = 2;
  v214 = 215;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xD7u) + 5) = 2;
  v214 = 247;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF7u) + 5) = 2;
  v13 = 706;
  v214 = 706;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v13) + 5) = 2;
    v13 = v214 + 1;
    v214 = v13;
  }

  while (v13 < 0x2C6);
  v14 = 722;
  v214 = 722;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v14) + 5) = 2;
    v14 = v214 + 1;
    v214 = v14;
  }

  while (v14 < 0x2E0);
  v15 = 741;
  v214 = 741;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v15) + 5) = 2;
    v15 = v214 + 1;
    v214 = v15;
  }

  while (v15 < 0x2EC);
  v214 = 749;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2EDu) + 5) = 2;
  v16 = 751;
  v214 = 751;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v16) + 5) = 2;
    v16 = v214 + 1;
    v214 = v16;
  }

  while (v16 < 0x300);
  v214 = 885;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x375u) + 5) = 2;
  v214 = 894;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x37Eu) + 5) = 2;
  v17 = 900;
  v214 = 900;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v17) + 5) = 2;
    v17 = v214 + 1;
    v214 = v17;
  }

  while (v17 < 0x386);
  v214 = 903;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x387u) + 5) = 2;
  v214 = 1014;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x3F6u) + 5) = 2;
  v214 = 1154;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x482u) + 5) = 2;
  v18 = 1370;
  v214 = 1370;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v18) + 5) = 2;
    v18 = v214 + 1;
    v214 = v18;
  }

  while (v18 < 0x560);
  v19 = 1417;
  v214 = 1417;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v19) + 5) = 2;
    v19 = v214 + 1;
    v214 = v19;
  }

  while (v19 < 0x58B);
  v20 = 1421;
  v214 = 1421;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v20) + 5) = 2;
    v20 = v214 + 1;
    v214 = v20;
  }

  while (v20 < 0x590);
  v214 = 1470;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x5BEu) + 5) = 2;
  v214 = 1472;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x5C0u) + 5) = 2;
  v214 = 1475;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x5C3u) + 5) = 2;
  v214 = 1478;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x5C6u) + 5) = 2;
  v21 = 1523;
  v214 = 1523;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v21) + 5) = 2;
    v21 = v214 + 1;
    v214 = v21;
  }

  while (v21 < 0x5F5);
  v22 = 1542;
  v214 = 1542;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v22) + 5) = 2;
    v22 = v214 + 1;
    v214 = v22;
  }

  while (v22 < 0x610);
  v214 = 1563;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x61Bu) + 5) = 2;
  v23 = 1565;
  v214 = 1565;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v23) + 5) = 2;
    v23 = v214 + 1;
    v214 = v23;
  }

  while (v23 < 0x620);
  v24 = 1632;
  v214 = 1632;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v24) + 5) = 1;
    v24 = v214 + 1;
    v214 = v24;
  }

  while (v24 < 0x66A);
  v25 = 1642;
  v214 = 1642;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v25) + 5) = 2;
    v25 = v214 + 1;
    v214 = v25;
  }

  while (v25 < 0x66E);
  v214 = 1748;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x6D4u) + 5) = 2;
  v214 = 1758;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x6DEu) + 5) = 2;
  v214 = 1769;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x6E9u) + 5) = 2;
  v26 = 1776;
  v214 = 1776;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v26) + 5) = 1;
    v26 = v214 + 1;
    v214 = v26;
  }

  while (v26 < 0x6FA);
  v27 = 1789;
  v214 = 1789;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v27) + 5) = 2;
    v27 = v214 + 1;
    v214 = v27;
  }

  while (v27 < 0x6FF);
  v28 = 1792;
  v214 = 1792;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v28) + 5) = 2;
    v28 = v214 + 1;
    v214 = v28;
  }

  while (v28 < 0x70E);
  v29 = 1984;
  v214 = 1984;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v29) + 5) = 1;
    v29 = v214 + 1;
    v214 = v29;
  }

  while (v29 < 0x7CA);
  v30 = 2038;
  v214 = 2038;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v30) + 5) = 2;
    v30 = v214 + 1;
    v214 = v30;
  }

  while (v30 < 0x7FA);
  v31 = 2046;
  v214 = 2046;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v31) + 5) = 2;
    v31 = v214 + 1;
    v214 = v31;
  }

  while (v31 < 0x800);
  v32 = 2096;
  v214 = 2096;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v32) + 5) = 2;
    v32 = v214 + 1;
    v214 = v32;
  }

  while (v32 < 0x83F);
  v214 = 2142;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x85Eu) + 5) = 2;
  v214 = 2184;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x888u) + 5) = 2;
  v33 = 2404;
  v214 = 2404;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v33) + 5) = 2;
    v33 = v214 + 1;
    v214 = v33;
  }

  while (v33 < 0x966);
  v34 = 2406;
  v214 = 2406;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v34) + 5) = 1;
    v34 = v214 + 1;
    v214 = v34;
  }

  while (v34 < 0x970);
  v214 = 2416;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x970u) + 5) = 2;
  v35 = 2534;
  v214 = 2534;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v35) + 5) = 1;
    v35 = v214 + 1;
    v214 = v35;
  }

  while (v35 < 0x9F0);
  v36 = 2546;
  v214 = 2546;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v36) + 5) = 2;
    v36 = v214 + 1;
    v214 = v36;
  }

  while (v36 < 0x9F4);
  v37 = 2548;
  v214 = 2548;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v37) + 5) = 1;
    v37 = v214 + 1;
    v214 = v37;
  }

  while (v37 < 0x9FA);
  v38 = 2554;
  v214 = 2554;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v38) + 5) = 2;
    v38 = v214 + 1;
    v214 = v38;
  }

  while (v38 < 0x9FC);
  v214 = 2557;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x9FDu) + 5) = 2;
  v39 = 2662;
  v214 = 2662;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v39) + 5) = 1;
    v39 = v214 + 1;
    v214 = v39;
  }

  while (v39 < 0xA70);
  v214 = 2678;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xA76u) + 5) = 2;
  v40 = 2790;
  v214 = 2790;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v40) + 5) = 1;
    v40 = v214 + 1;
    v214 = v40;
  }

  while (v40 < 0xAF0);
  v41 = 2800;
  v214 = 2800;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v41) + 5) = 2;
    v41 = v214 + 1;
    v214 = v41;
  }

  while (v41 < 0xAF2);
  v42 = 2918;
  v214 = 2918;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v42) + 5) = 1;
    v42 = v214 + 1;
    v214 = v42;
  }

  while (v42 < 0xB70);
  v214 = 2928;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xB70u) + 5) = 2;
  v43 = 2930;
  v214 = 2930;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v43) + 5) = 1;
    v43 = v214 + 1;
    v214 = v43;
  }

  while (v43 < 0xB78);
  v44 = 3046;
  v214 = 3046;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v44) + 5) = 1;
    v44 = v214 + 1;
    v214 = v44;
  }

  while (v44 < 0xBF3);
  v45 = 3059;
  v214 = 3059;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v45) + 5) = 2;
    v45 = v214 + 1;
    v214 = v45;
  }

  while (v45 < 0xBFB);
  v46 = 3174;
  v214 = 3174;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v46) + 5) = 1;
    v46 = v214 + 1;
    v214 = v46;
  }

  while (v46 < 0xC70);
  v214 = 3191;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xC77u) + 5) = 2;
  v47 = 3192;
  v214 = 3192;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v47) + 5) = 1;
    v47 = v214 + 1;
    v214 = v47;
  }

  while (v47 < 0xC7F);
  v214 = 3199;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xC7Fu) + 5) = 2;
  v214 = 3204;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xC84u) + 5) = 2;
  v48 = 3302;
  v214 = 3302;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v48) + 5) = 1;
    v48 = v214 + 1;
    v214 = v48;
  }

  while (v48 < 0xCF0);
  v214 = 3407;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xD4Fu) + 5) = 2;
  v49 = 3416;
  v214 = 3416;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v49) + 5) = 1;
    v49 = v214 + 1;
    v214 = v49;
  }

  while (v49 < 0xD5F);
  v50 = 3430;
  v214 = 3430;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v50) + 5) = 1;
    v50 = v214 + 1;
    v214 = v50;
  }

  while (v50 < 0xD79);
  v214 = 3449;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xD79u) + 5) = 2;
  v51 = 3558;
  v214 = 3558;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v51) + 5) = 1;
    v51 = v214 + 1;
    v214 = v51;
  }

  while (v51 < 0xDF0);
  v214 = 3572;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xDF4u) + 5) = 2;
  v214 = 3647;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xE3Fu) + 5) = 2;
  v214 = 3663;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xE4Fu) + 5) = 2;
  v52 = 3664;
  v214 = 3664;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v52) + 5) = 1;
    v52 = v214 + 1;
    v214 = v52;
  }

  while (v52 < 0xE5A);
  v53 = 3674;
  v214 = 3674;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v53) + 5) = 2;
    v53 = v214 + 1;
    v214 = v53;
  }

  while (v53 < 0xE5C);
  v54 = 3792;
  v214 = 3792;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v54) + 5) = 1;
    v54 = v214 + 1;
    v214 = v54;
  }

  while (v54 < 0xEDA);
  v55 = 3841;
  v214 = 3841;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v55) + 5) = 2;
    v55 = v214 + 1;
    v214 = v55;
  }

  while (v55 < 0xF18);
  v56 = 3866;
  v214 = 3866;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v56) + 5) = 2;
    v56 = v214 + 1;
    v214 = v56;
  }

  while (v56 < 0xF20);
  v57 = 3872;
  v214 = 3872;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v57) + 5) = 1;
    v57 = v214 + 1;
    v214 = v57;
  }

  while (v57 < 0xF34);
  v214 = 3892;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF34u) + 5) = 2;
  v214 = 3894;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF36u) + 5) = 2;
  v214 = 3896;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF38u) + 5) = 2;
  v58 = 3898;
  v214 = 3898;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v58) + 5) = 2;
    v58 = v214 + 1;
    v214 = v58;
  }

  while (v58 < 0xF3E);
  v214 = 3973;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF85u) + 5) = 2;
  v59 = 4030;
  v214 = 4030;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v59) + 5) = 2;
    v59 = v214 + 1;
    v214 = v59;
  }

  while (v59 < 0xFC6);
  v60 = 4039;
  v214 = 4039;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v60) + 5) = 2;
    v60 = v214 + 1;
    v214 = v60;
  }

  while (v60 < 0xFCD);
  v61 = 4046;
  v214 = 4046;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v61) + 5) = 2;
    v61 = v214 + 1;
    v214 = v61;
  }

  while (v61 < 0xFDB);
  v62 = 4160;
  v214 = 4160;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v62) + 5) = 1;
    v62 = v214 + 1;
    v214 = v62;
  }

  while (v62 >> 1 < 0x825);
  v63 = 4170;
  v214 = 4170;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v63) + 5) = 2;
    v63 = v214 + 1;
    v214 = v63;
  }

  while (v63 >> 4 < 0x105);
  v64 = 4240;
  v214 = 4240;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v64) + 5) = 1;
    v64 = v214 + 1;
    v214 = v64;
  }

  while (v64 >> 1 < 0x84D);
  v65 = 4254;
  v214 = 4254;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v65) + 5) = 2;
    v65 = v214 + 1;
    v214 = v65;
  }

  while (v65 >> 5 < 0x85);
  v214 = 4347;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x10FBu) + 5) = 2;
  v66 = 4960;
  v214 = 4960;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v66) + 5) = 2;
    v66 = v214 + 1;
    v214 = v66;
  }

  while (v66 < 0x1369);
  v67 = 4969;
  v214 = 4969;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v67) + 5) = 1;
    v67 = v214 + 1;
    v214 = v67;
  }

  while (v67 < 0x137D);
  v68 = 5008;
  v214 = 5008;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v68) + 5) = 2;
    v68 = v214 + 1;
    v214 = v68;
  }

  while (v68 >> 1 < 0x9CD);
  v214 = 5120;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x1400u) + 5) = 2;
  v69 = 5741;
  v214 = 5741;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v69) + 5) = 2;
    v69 = v214 + 1;
    v214 = v69;
  }

  while (v69 < 0x166F);
  v70 = 5787;
  v214 = 5787;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v70) + 5) = 2;
    v70 = v214 + 1;
    v214 = v70;
  }

  while (v70 < 0x169D);
  v71 = 5867;
  v214 = 5867;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v71) + 5) = 2;
    v71 = v214 + 1;
    v214 = v71;
  }

  while (v71 >> 1 < 0xB77);
  v72 = 5870;
  v214 = 5870;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v72) + 5) = 1;
    v72 = v214 + 1;
    v214 = v72;
  }

  while (v72 < 0x16F1);
  v73 = 5941;
  v214 = 5941;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v73) + 5) = 2;
    v73 = v214 + 1;
    v214 = v73;
  }

  while (v73 < 0x1737);
  v74 = 6100;
  v214 = 6100;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v74) + 5) = 2;
    v74 = v214 + 1;
    v214 = v74;
  }

  while (v74 < 0x17D7);
  v75 = 6104;
  v214 = 6104;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v75) + 5) = 2;
    v75 = v214 + 1;
    v214 = v75;
  }

  while (v75 >> 2 < 0x5F7);
  v76 = 6112;
  v214 = 6112;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v76) + 5) = 1;
    v76 = v214 + 1;
    v214 = v76;
  }

  while (v76 >> 1 < 0xBF5);
  v77 = 6128;
  v214 = 6128;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v77) + 5) = 1;
    v77 = v214 + 1;
    v214 = v77;
  }

  while (v77 >> 1 < 0xBFD);
  v78 = 6144;
  v214 = 6144;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v78) + 5) = 2;
    v78 = v214 + 1;
    v214 = v78;
  }

  while (v78 < 0x180B);
  v79 = 6160;
  v214 = 6160;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v79) + 5) = 1;
    v79 = v214 + 1;
    v214 = v79;
  }

  while (v79 >> 1 < 0xC0D);
  v214 = 6464;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x1940u) + 5) = 2;
  v80 = 6468;
  v214 = 6468;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v80) + 5) = 2;
    v80 = v214 + 1;
    v214 = v80;
  }

  while (v80 >> 1 < 0xCA3);
  v81 = 6470;
  v214 = 6470;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v81) + 5) = 1;
    v81 = v214 + 1;
    v214 = v81;
  }

  while (v81 >> 4 < 0x195);
  v82 = 6608;
  v214 = 6608;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v82) + 5) = 1;
    v82 = v214 + 1;
    v214 = v82;
  }

  while (v82 < 0x19DB);
  v83 = 6622;
  v214 = 6622;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v83) + 5) = 2;
    v83 = v214 + 1;
    v214 = v83;
  }

  while (v83 >> 9 < 0xD);
  v84 = 6686;
  v214 = 6686;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v84) + 5) = 2;
    v84 = v214 + 1;
    v214 = v84;
  }

  while (v84 >> 5 < 0xD1);
  v85 = 6784;
  v214 = 6784;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v85) + 5) = 1;
    v85 = v214 + 1;
    v214 = v85;
  }

  while (v85 >> 1 < 0xD45);
  v86 = 6800;
  v214 = 6800;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v86) + 5) = 1;
    v86 = v214 + 1;
    v214 = v86;
  }

  while (v86 >> 1 < 0xD4D);
  v87 = 6816;
  v214 = 6816;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v87) + 5) = 2;
    v87 = v214 + 1;
    v214 = v87;
  }

  while (v87 < 0x1AA7);
  v88 = 6824;
  v214 = 6824;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v88) + 5) = 2;
    v88 = v214 + 1;
    v214 = v88;
  }

  while (v88 >> 1 < 0xD57);
  v89 = 6990;
  v214 = 6990;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v89) + 5) = 2;
    v89 = v214 + 1;
    v214 = v89;
  }

  while (v89 >> 4 < 0x1B5);
  v90 = 6992;
  v214 = 6992;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v90) + 5) = 1;
    v90 = v214 + 1;
    v214 = v90;
  }

  while (v90 >> 1 < 0xDAD);
  v91 = 7002;
  v214 = 7002;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v91) + 5) = 2;
    v91 = v214 + 1;
    v214 = v91;
  }

  while (v91 < 0x1B6B);
  v92 = 7028;
  v214 = 7028;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v92) + 5) = 2;
    v92 = v214 + 1;
    v214 = v92;
  }

  while (v92 >> 7 < 0x37);
  v93 = 7088;
  v214 = 7088;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v93) + 5) = 1;
    v93 = v214 + 1;
    v214 = v93;
  }

  while (v93 >> 1 < 0xDDD);
  v94 = 7164;
  v214 = 7164;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v94) + 5) = 2;
    v94 = v214 + 1;
    v214 = v94;
  }

  while (v94 >> 10 < 7);
  v95 = 7227;
  v214 = 7227;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v95) + 5) = 2;
    v95 = v214 + 1;
    v214 = v95;
  }

  while (v95 >> 6 < 0x71);
  v96 = 7232;
  v214 = 7232;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v96) + 5) = 1;
    v96 = v214 + 1;
    v214 = v96;
  }

  while (v96 >> 1 < 0xE25);
  v97 = 7248;
  v214 = 7248;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v97) + 5) = 1;
    v97 = v214 + 1;
    v214 = v97;
  }

  while (v97 >> 1 < 0xE2D);
  v98 = 7294;
  v214 = 7294;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v98) + 5) = 2;
    v98 = v214 + 1;
    v214 = v98;
  }

  while (v98 >> 7 < 0x39);
  v99 = 7360;
  v214 = 7360;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v99) + 5) = 2;
    v99 = v214 + 1;
    v214 = v99;
  }

  while (v99 >> 3 < 0x399);
  v214 = 7379;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x1CD3u) + 5) = 2;
  v214 = 8125;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x1FBDu) + 5) = 2;
  v100 = 8127;
  v214 = 8127;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v100) + 5) = 2;
    v100 = v214 + 1;
    v214 = v100;
  }

  while (v100 >> 1 < 0xFE1);
  v101 = 8141;
  v214 = 8141;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v101) + 5) = 2;
    v101 = v214 + 1;
    v214 = v101;
  }

  while (v101 >> 4 < 0x1FD);
  v102 = 8157;
  v214 = 8157;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v102) + 5) = 2;
    v102 = v214 + 1;
    v214 = v102;
  }

  while (v102 >> 5 < 0xFF);
  v103 = 8173;
  v214 = 8173;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v103) + 5) = 2;
    v103 = v214 + 1;
    v214 = v103;
  }

  while (v103 >> 4 < 0x1FF);
  v104 = 8189;
  v214 = 8189;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v104) + 5) = 2;
    v104 = v214 + 1;
    v214 = v104;
  }

  while (v104 < 0x1FFF);
  v105 = 8208;
  v214 = 8208;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v105) + 5) = 2;
    v105 = v214 + 1;
    v214 = v105;
  }

  while (v105 >> 3 < 0x405);
  v106 = 8240;
  v214 = 8240;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v106) + 5) = 2;
    v106 = v214 + 1;
    v214 = v106;
  }

  while (v106 < 0x205F);
  v214 = 8304;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2070u) + 5) = 1;
  v107 = 8308;
  v214 = 8308;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v107) + 5) = 1;
    v107 = v214 + 1;
    v214 = v107;
  }

  while (v107 < 0x207A);
  v108 = 8314;
  v214 = 8314;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v108) + 5) = 2;
    v108 = v214 + 1;
    v214 = v108;
  }

  while (v108 < 0x207F);
  v109 = 8320;
  v214 = 8320;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v109) + 5) = 1;
    v109 = v214 + 1;
    v214 = v109;
  }

  while (v109 < 0x208A);
  v110 = 8330;
  v214 = 8330;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v110) + 5) = 2;
    v110 = v214 + 1;
    v214 = v110;
  }

  while (v110 < 0x208F);
  v111 = 8352;
  v214 = 8352;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v111) + 5) = 2;
    v111 = v214 + 1;
    v214 = v111;
  }

  while (v111 < 0x20C1);
  v112 = 8448;
  v214 = 8448;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v112) + 5) = 2;
    v112 = v214 + 1;
    v214 = v112;
  }

  while (v112 < 0x2102);
  v113 = 8451;
  v214 = 8451;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v113) + 5) = 2;
    v113 = v214 + 1;
    v214 = v113;
  }

  while (v113 < 0x2107);
  v114 = 8456;
  v214 = 8456;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v114) + 5) = 2;
    v114 = v214 + 1;
    v214 = v114;
  }

  while (v114 < 0x210A);
  v214 = 8468;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2114u) + 5) = 2;
  v115 = 8470;
  v214 = 8470;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v115) + 5) = 2;
    v115 = v214 + 1;
    v214 = v115;
  }

  while (v115 < 0x2119);
  v116 = 8478;
  v214 = 8478;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v116) + 5) = 2;
    v116 = v214 + 1;
    v214 = v116;
  }

  while (v116 >> 2 < 0x849);
  v214 = 8485;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2125u) + 5) = 2;
  v214 = 8487;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2127u) + 5) = 2;
  v214 = 8489;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2129u) + 5) = 2;
  v214 = 8494;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x212Eu) + 5) = 2;
  v117 = 8506;
  v214 = 8506;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v117) + 5) = 2;
    v117 = v214 + 1;
    v214 = v117;
  }

  while (v117 >> 2 < 0x84F);
  v118 = 8512;
  v214 = 8512;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v118) + 5) = 2;
    v118 = v214 + 1;
    v214 = v118;
  }

  while (v118 < 0x2145);
  v119 = 8522;
  v214 = 8522;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v119) + 5) = 2;
    v119 = v214 + 1;
    v214 = v119;
  }

  while (v119 < 0x214E);
  v214 = 8527;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x214Fu) + 5) = 2;
  v120 = 8528;
  v214 = 8528;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v120) + 5) = 1;
    v120 = v214 + 1;
    v214 = v120;
  }

  while (v120 < 0x2183);
  v121 = 8581;
  v214 = 8581;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v121) + 5) = 1;
    v121 = v214 + 1;
    v214 = v121;
  }

  while (v121 < 0x218A);
  v122 = 8586;
  v214 = 8586;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v122) + 5) = 2;
    v122 = v214 + 1;
    v214 = v122;
  }

  while (v122 >> 2 < 0x863);
  v123 = 8592;
  v214 = 8592;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v123) + 5) = 2;
    v123 = v214 + 1;
    v214 = v123;
  }

  while (v123 < 0x242A);
  v124 = 9280;
  v214 = 9280;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v124) + 5) = 2;
    v124 = v214 + 1;
    v214 = v124;
  }

  while (v124 < 0x244B);
  v125 = 9312;
  v214 = 9312;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v125) + 5) = 1;
    v125 = v214 + 1;
    v214 = v125;
  }

  while (v125 >> 2 < 0x927);
  v126 = 9372;
  v214 = 9372;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v126) + 5) = 2;
    v126 = v214 + 1;
    v214 = v126;
  }

  while (v126 < 0x24EA);
  v127 = 9450;
  v214 = 9450;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v127) + 5) = 1;
    v127 = v214 + 1;
    v214 = v127;
  }

  while (v127 >> 8 < 0x25);
  v128 = 9472;
  v214 = 9472;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v128) + 5) = 2;
    v128 = v214 + 1;
    v214 = v128;
  }

  while (v128 < 0x2776);
  v129 = 10102;
  v214 = 10102;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v129) + 5) = 1;
    v129 = v214 + 1;
    v214 = v129;
  }

  while (v129 >> 2 < 0x9E5);
  v130 = 10132;
  v214 = 10132;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v130) + 5) = 2;
    v130 = v214 + 1;
    v214 = v130;
  }

  while (v130 >> 2 < 0xADD);
  v131 = 11126;
  v214 = 11126;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v131) + 5) = 2;
    v131 = v214 + 1;
    v214 = v131;
  }

  while (v131 < 0x2B96);
  v132 = 11159;
  v214 = 11159;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v132) + 5) = 2;
    v132 = v214 + 1;
    v214 = v132;
  }

  while (v132 >> 10 < 0xB);
  v133 = 11493;
  v214 = 11493;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v133) + 5) = 2;
    v133 = v214 + 1;
    v214 = v133;
  }

  while (v133 < 0x2CEB);
  v134 = 11513;
  v214 = 11513;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v134) + 5) = 2;
    v134 = v214 + 1;
    v214 = v134;
  }

  while (v134 < 0x2CFD);
  v214 = 11517;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2CFDu) + 5) = 1;
  v135 = 11518;
  v214 = 11518;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v135) + 5) = 2;
    v135 = v214 + 1;
    v214 = v135;
  }

  while (v135 >> 8 < 0x2D);
  v214 = 11632;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x2D70u) + 5) = 2;
  v136 = 11776;
  v214 = 11776;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v136) + 5) = 2;
    v136 = v214 + 1;
    v214 = v136;
  }

  while (v136 < 0x2E2F);
  v137 = 11824;
  v214 = 11824;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v137) + 5) = 2;
    v137 = v214 + 1;
    v214 = v137;
  }

  while (v137 < 0x2E5E);
  v138 = 11904;
  v214 = 11904;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v138) + 5) = 2;
    v138 = v214 + 1;
    v214 = v138;
  }

  while (v138 < 0x2E9A);
  v139 = 11931;
  v214 = 11931;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v139) + 5) = 2;
    v139 = v214 + 1;
    v214 = v139;
  }

  while (v139 >> 2 < 0xBBD);
  v140 = 12032;
  v214 = 12032;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v140) + 5) = 2;
    v140 = v214 + 1;
    v214 = v140;
  }

  while (v140 < 0x2FD6);
  v141 = 12272;
  v214 = 12272;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v141) + 5) = 2;
    v141 = v214 + 1;
    v214 = v141;
  }

  while (v141 < 0x3000);
  v142 = 12289;
  v214 = 12289;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v142) + 5) = 2;
    v142 = v214 + 1;
    v214 = v142;
  }

  while (v142 < 0x3005);
  v214 = 12295;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x3007u) + 5) = 1;
  v143 = 12296;
  v214 = 12296;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v143) + 5) = 2;
    v143 = v214 + 1;
    v214 = v143;
  }

  while (v143 < 0x3021);
  v144 = 12321;
  v214 = 12321;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v144) + 5) = 1;
    v144 = v214 + 1;
    v214 = v144;
  }

  while (v144 < 0x302A);
  v214 = 12336;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x3030u) + 5) = 2;
  v145 = 12342;
  v214 = 12342;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v145) + 5) = 2;
    v145 = v214 + 1;
    v214 = v145;
  }

  while (v145 >> 3 < 0x607);
  v146 = 12344;
  v214 = 12344;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v146) + 5) = 1;
    v146 = v214 + 1;
    v214 = v146;
  }

  while (v146 < 0x303B);
  v147 = 12349;
  v214 = 12349;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v147) + 5) = 2;
    v147 = v214 + 1;
    v214 = v147;
  }

  while (v147 >> 6 < 0xC1);
  v148 = 12443;
  v214 = 12443;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v148) + 5) = 2;
    v148 = v214 + 1;
    v214 = v148;
  }

  while (v148 < 0x309D);
  v214 = 12448;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x30A0u) + 5) = 2;
  v214 = 12539;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x30FBu) + 5) = 2;
  v149 = 12688;
  v214 = 12688;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v149) + 5) = 2;
    v149 = v214 + 1;
    v214 = v149;
  }

  while (v149 < 0x3192);
  v150 = 12690;
  v214 = 12690;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v150) + 5) = 1;
    v150 = v214 + 1;
    v214 = v150;
  }

  while (v150 < 0x3196);
  v151 = 12694;
  v214 = 12694;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v151) + 5) = 2;
    v151 = v214 + 1;
    v214 = v151;
  }

  while (v151 >> 5 < 0x18D);
  v152 = 12736;
  v214 = 12736;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v152) + 5) = 2;
    v152 = v214 + 1;
    v214 = v152;
  }

  while (v152 < 0x31E6);
  v214 = 12783;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x31EFu) + 5) = 2;
  v153 = 12800;
  v214 = 12800;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v153) + 5) = 2;
    v153 = v214 + 1;
    v214 = v153;
  }

  while (v153 < 0x321F);
  v154 = 12832;
  v214 = 12832;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v154) + 5) = 1;
    v154 = v214 + 1;
    v214 = v154;
  }

  while (v154 < 0x322A);
  v155 = 12842;
  v214 = 12842;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v155) + 5) = 2;
    v155 = v214 + 1;
    v214 = v155;
  }

  while (v155 >> 3 < 0x649);
  v156 = 12872;
  v214 = 12872;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v156) + 5) = 1;
    v156 = v214 + 1;
    v214 = v156;
  }

  while (v156 >> 4 < 0x325);
  v214 = 12880;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0x3250u) + 5) = 2;
  v157 = 12881;
  v214 = 12881;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v157) + 5) = 1;
    v157 = v214 + 1;
    v214 = v157;
  }

  while (v157 >> 5 < 0x193);
  v158 = 12896;
  v214 = 12896;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v158) + 5) = 2;
    v158 = v214 + 1;
    v214 = v158;
  }

  while (v158 >> 7 < 0x65);
  v159 = 12928;
  v214 = 12928;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v159) + 5) = 1;
    v159 = v214 + 1;
    v214 = v159;
  }

  while (v159 < 0x328A);
  v160 = 12938;
  v214 = 12938;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v160) + 5) = 2;
    v160 = v214 + 1;
    v214 = v160;
  }

  while (v160 < 0x32B1);
  v161 = 12977;
  v214 = 12977;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v161) + 5) = 1;
    v161 = v214 + 1;
    v214 = v161;
  }

  while (v161 >> 6 < 0xCB);
  v162 = 12992;
  v214 = 12992;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v162) + 5) = 2;
    v162 = v214 + 1;
    v214 = v162;
  }

  while (v162 >> 10 < 0xD);
  v163 = 19904;
  v214 = 19904;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v163) + 5) = 2;
    v163 = v214 + 1;
    v214 = v163;
  }

  while (v163 >> 9 < 0x27);
  v164 = 42128;
  v214 = 42128;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v164) + 5) = 2;
    v164 = v214 + 1;
    v214 = v164;
  }

  while (v164 < 0xA4C7);
  v165 = 42238;
  v214 = 42238;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v165) + 5) = 2;
    v165 = v214 + 1;
    v214 = v165;
  }

  while (v165 >> 8 < 0xA5);
  v166 = 42509;
  v214 = 42509;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v166) + 5) = 2;
    v166 = v214 + 1;
    v214 = v166;
  }

  while (v166 >> 4 < 0xA61);
  v167 = 42528;
  v214 = 42528;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v167) + 5) = 1;
    v167 = v214 + 1;
    v214 = v167;
  }

  while (v167 < 0xA62A);
  v214 = 42611;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xA673u) + 5) = 2;
  v214 = 42622;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xA67Eu) + 5) = 2;
  v168 = 42726;
  v214 = 42726;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v168) + 5) = 1;
    v168 = v214 + 1;
    v214 = v168;
  }

  while (v168 >> 4 < 0xA6F);
  v169 = 42738;
  v214 = 42738;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v169) + 5) = 2;
    v169 = v214 + 1;
    v214 = v169;
  }

  while (v169 < 0xA6F8);
  v170 = 42752;
  v214 = 42752;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v170) + 5) = 2;
    v170 = v214 + 1;
    v214 = v170;
  }

  while (v170 < 0xA717);
  v171 = 42784;
  v214 = 42784;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v171) + 5) = 2;
    v171 = v214 + 1;
    v214 = v171;
  }

  while (v171 < 0xA722);
  v172 = 42889;
  v214 = 42889;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v172) + 5) = 2;
    v172 = v214 + 1;
    v214 = v172;
  }

  while (v172 < 0xA78B);
  v173 = 43048;
  v214 = 43048;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v173) + 5) = 2;
    v173 = v214 + 1;
    v214 = v173;
  }

  while (v173 < 0xA82C);
  v174 = 43056;
  v214 = 43056;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v174) + 5) = 1;
    v174 = v214 + 1;
    v214 = v174;
  }

  while (v174 < 0xA836);
  v175 = 43062;
  v214 = 43062;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v175) + 5) = 2;
    v175 = v214 + 1;
    v214 = v175;
  }

  while (v175 < 0xA83A);
  v176 = 43124;
  v214 = 43124;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v176) + 5) = 2;
    v176 = v214 + 1;
    v214 = v176;
  }

  while (v176 < 0xA878);
  v177 = 43214;
  v214 = 43214;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v177) + 5) = 2;
    v177 = v214 + 1;
    v214 = v177;
  }

  while (v177 >> 4 < 0xA8D);
  v178 = 43216;
  v214 = 43216;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v178) + 5) = 1;
    v178 = v214 + 1;
    v214 = v178;
  }

  while (v178 < 0xA8DA);
  v179 = 43256;
  v214 = 43256;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v179) + 5) = 2;
    v179 = v214 + 1;
    v214 = v179;
  }

  while (v179 < 0xA8FB);
  v214 = 43260;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xA8FCu) + 5) = 2;
  v180 = 43264;
  v214 = 43264;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v180) + 5) = 1;
    v180 = v214 + 1;
    v214 = v180;
  }

  while (v180 < 0xA90A);
  v181 = 43310;
  v214 = 43310;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v181) + 5) = 2;
    v181 = v214 + 1;
    v214 = v181;
  }

  while (v181 >> 4 < 0xA93);
  v214 = 43359;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xA95Fu) + 5) = 2;
  v182 = 43457;
  v214 = 43457;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v182) + 5) = 2;
    v182 = v214 + 1;
    v214 = v182;
  }

  while (v182 < 0xA9CE);
  v183 = 43472;
  v214 = 43472;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v183) + 5) = 1;
    v183 = v214 + 1;
    v214 = v183;
  }

  while (v183 < 0xA9DA);
  v184 = 43486;
  v214 = 43486;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v184) + 5) = 2;
    v184 = v214 + 1;
    v214 = v184;
  }

  while (v184 >> 5 < 0x54F);
  v185 = 43504;
  v214 = 43504;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v185) + 5) = 1;
    v185 = v214 + 1;
    v214 = v185;
  }

  while (v185 < 0xA9FA);
  v186 = 43600;
  v214 = 43600;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v186) + 5) = 1;
    v186 = v214 + 1;
    v214 = v186;
  }

  while (v186 < 0xAA5A);
  v187 = 43612;
  v214 = 43612;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v187) + 5) = 2;
    v187 = v214 + 1;
    v214 = v187;
  }

  while (v187 >> 5 < 0x553);
  v188 = 43639;
  v214 = 43639;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v188) + 5) = 2;
    v188 = v214 + 1;
    v214 = v188;
  }

  while (v188 < 0xAA7A);
  v189 = 43742;
  v214 = 43742;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v189) + 5) = 2;
    v189 = v214 + 1;
    v214 = v189;
  }

  while (v189 >> 5 < 0x557);
  v190 = 43760;
  v214 = 43760;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v190) + 5) = 2;
    v190 = v214 + 1;
    v214 = v190;
  }

  while (v190 < 0xAAF2);
  v214 = 43867;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xAB5Bu) + 5) = 2;
  v191 = 43882;
  v214 = 43882;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v191) + 5) = 2;
    v191 = v214 + 1;
    v214 = v191;
  }

  while (v191 < 0xAB6C);
  v214 = 44011;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xABEBu) + 5) = 2;
  v192 = 44016;
  v214 = 44016;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v192) + 5) = 1;
    v192 = v214 + 1;
    v214 = v192;
  }

  while (v192 < 0xABFA);
  v193 = 63472;
  v214 = 63472;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v193) + 5) = 2;
    v193 = v214 + 1;
    v214 = v193;
  }

  while (v193 >> 4 < 0xF87);
  v194 = 63616;
  v214 = 63616;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v194) + 5) = 2;
    v194 = v214 + 1;
    v214 = v194;
  }

  while (v194 < 0xF882);
  v214 = 63619;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF883u) + 5) = 2;
  v214 = 63648;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xF8A0u) + 5) = 2;
  v195 = 63649;
  v214 = 63649;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v195) + 5) = 1;
    v195 = v214 + 1;
    v214 = v195;
  }

  while (v195 < 0xF8A8);
  v196 = 63656;
  v214 = 63656;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v196) + 5) = 2;
    v196 = v214 + 1;
    v214 = v196;
  }

  while (v196 < 0xF8B8);
  v197 = 63673;
  v214 = 63673;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v197) + 5) = 2;
    v197 = v214 + 1;
    v214 = v197;
  }

  while (v197 < 0xF8C1);
  v198 = 63703;
  v214 = 63703;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v198) + 5) = 2;
    v198 = v214 + 1;
    v214 = v198;
  }

  while (v198 >> 8 < 0xF9);
  v214 = 64297;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xFB29u) + 5) = 2;
  v199 = 64434;
  v214 = 64434;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v199) + 5) = 2;
    v199 = v214 + 1;
    v214 = v199;
  }

  while (v199 < 0xFBC3);
  v200 = 64830;
  v214 = 64830;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v200) + 5) = 2;
    v200 = v214 + 1;
    v214 = v200;
  }

  while (v200 >> 4 < 0xFD5);
  v214 = 64975;
  v215 = &v214;
  *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(0xFDCFu) + 5) = 2;
  v201 = 65020;
  v214 = 65020;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v201) + 5) = 2;
    v201 = v214 + 1;
    v214 = v201;
  }

  while (v201 >> 9 < 0x7F);
  v202 = 65040;
  v214 = 65040;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v202) + 5) = 2;
    v202 = v214 + 1;
    v214 = v202;
  }

  while (v202 < 0xFE1A);
  v203 = 65072;
  v214 = 65072;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v203) + 5) = 2;
    v203 = v214 + 1;
    v214 = v203;
  }

  while (v203 < 0xFE53);
  v204 = 65108;
  v214 = 65108;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v204) + 5) = 2;
    v204 = v214 + 1;
    v214 = v204;
  }

  while (v204 < 0xFE67);
  v205 = 65128;
  v214 = 65128;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v205) + 5) = 2;
    v205 = v214 + 1;
    v214 = v205;
  }

  while (v205 < 0xFE6C);
  v206 = 65281;
  v214 = 65281;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v206) + 5) = 2;
    v206 = v214 + 1;
    v214 = v206;
  }

  while (v206 >> 4 < 0xFF1);
  v207 = 65296;
  v214 = 65296;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v207) + 5) = 1;
    v207 = v214 + 1;
    v214 = v207;
  }

  while (v207 < 0xFF1A);
  v208 = 65306;
  v214 = 65306;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v208) + 5) = 2;
    v208 = v214 + 1;
    v214 = v208;
  }

  while (v208 < 0xFF21);
  v209 = 65339;
  v214 = 65339;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v209) + 5) = 2;
    v209 = v214 + 1;
    v214 = v209;
  }

  while (v209 < 0xFF41);
  v210 = 65371;
  v214 = 65371;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v210) + 5) = 2;
    v210 = v214 + 1;
    v214 = v210;
  }

  while (v210 < 0xFF66);
  v211 = 65504;
  v214 = 65504;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v211) + 5) = 2;
    v211 = v214 + 1;
    v214 = v211;
  }

  while (v211 < 0xFFE7);
  v212 = 65512;
  v214 = 65512;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(v212) + 5) = 2;
    v212 = v214 + 1;
    v214 = v212;
  }

  while (v212 < 0xFFEF);
  LODWORD(result) = 65532;
  v214 = 65532;
  do
  {
    v215 = &v214;
    *(std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(result) + 5) = 2;
    result = (v214 + 1);
    v214 = result;
  }

  while (result < 0xFFFE);
  return result;
}

uint64_t std::unordered_map<char32_t,MeCab::UnicodeCharCategory>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t const&>,std::tuple<>>(unsigned int a1)
{
  if (!*(&MeCab::new_char_category_map(void)::m + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&MeCab::new_char_category_map(void)::m + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&MeCab::new_char_category_map(void)::m + 1) <= a1)
    {
      v2 = a1 % DWORD2(MeCab::new_char_category_map(void)::m);
    }
  }

  else
  {
    v2 = (DWORD2(MeCab::new_char_category_map(void)::m) - 1) & a1;
  }

  v3 = *(MeCab::new_char_category_map(void)::m + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == a1)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&MeCab::new_char_category_map(void)::m + 1))
      {
        v5 %= *(&MeCab::new_char_category_map(void)::m + 1);
      }
    }

    else
    {
      v5 &= *(&MeCab::new_char_category_map(void)::m + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != a1)
  {
    goto LABEL_17;
  }

  return v4;
}

void std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&MeCab::new_char_category_map(void)::m + 1);
  if (prime > *(&MeCab::new_char_category_map(void)::m + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&MeCab::new_char_category_map(void)::m + 1))
  {
    v3 = vcvtps_u32_f32(qword_2A145E118 / *&dword_2A145E120);
    if (*(&MeCab::new_char_category_map(void)::m + 1) < 3uLL || (v4 = vcnt_s8(*(&MeCab::new_char_category_map(void)::m + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = MeCab::new_char_category_map(void)::m;
      *&MeCab::new_char_category_map(void)::m = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&MeCab::new_char_category_map(void)::m + 1) = 0;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::__emplace_unique_key_args<char32_t,std::piecewise_construct_t const&,std::tuple<char32_t &&>,std::tuple<>>(unsigned int a1)
{
  if (!*(&MeCab::new_char_category_map(void)::m + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&MeCab::new_char_category_map(void)::m + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&MeCab::new_char_category_map(void)::m + 1) <= a1)
    {
      v2 = a1 % DWORD2(MeCab::new_char_category_map(void)::m);
    }
  }

  else
  {
    v2 = (DWORD2(MeCab::new_char_category_map(void)::m) - 1) & a1;
  }

  v3 = *(MeCab::new_char_category_map(void)::m + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == a1)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&MeCab::new_char_category_map(void)::m + 1))
      {
        v5 %= *(&MeCab::new_char_category_map(void)::m + 1);
      }
    }

    else
    {
      v5 &= *(&MeCab::new_char_category_map(void)::m + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != a1)
  {
    goto LABEL_17;
  }

  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,MeCab::UnicodeCharCategory>>>::find<char32_t>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t MeCab::NBestGenerator::set(uint64_t *a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v5[8] = 0;
  v5[9] = 0;
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::alloc(v5 + 4);
  v8 = v7;
  *v7 = (*(*a2 + 24))(a2, v6);
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v10 = a1[2];
  v9 = a1[3];
  if (v10 >= v9)
  {
    v12 = (v10 - *v5) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::vector<MeCab::NBestGenerator::QueueElement *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *v5;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MeCab::NBestGenerator::QueueElement *>>(v5, v15);
    }

    v16 = (8 * v12);
    *v16 = v8;
    v11 = 8 * v12 + 8;
    v17 = a1[1];
    v18 = a1[2] - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = a1[1];
    a1[1] = v19;
    a1[2] = v11;
    a1[3] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v8;
    v11 = (v10 + 1);
  }

  a1[2] = v11;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MeCab::NBestGenerator::QueueElementComp &,std::__wrap_iter<MeCab::NBestGenerator::QueueElement **>>(a1[1], v11, &v22, (v11 - a1[1]) >> 3);
  return 1;
}

double MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::alloc(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  if (v2 == a1[6])
  {
    v2 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v3 = a1[1];
  if (v1 == (a1[2] - v3) >> 3)
  {
    operator new[]();
  }

  v4 = *(v3 + 8 * v1);
  a1[4] = v2 + 1;
  v5 = (v4 + 32 * v2);
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  return result;
}

BOOL MeCab::NBestGenerator::next(MeCab::NBestGenerator *this)
{
  do
  {
    v2 = *(this + 8);
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v4 == v3)
    {
      break;
    }

    v5 = *v4;
    v6 = v3 - v4;
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = *(this + 1);
      do
      {
        v9 = &v8[v7 + 1];
        v10 = (2 * v7) | 1;
        v11 = 2 * v7 + 2;
        if (v11 < v6)
        {
          v12 = *(*v9 + 16);
          v13 = *(v9[1] + 16);
          v9 += v12 > v13;
          if (v12 > v13)
          {
            v10 = v11;
          }
        }

        *v8 = *v9;
        v8 = v9;
        v7 = v10;
      }

      while (v10 <= ((v6 - 2) >> 1));
      v14 = v3 - 1;
      if (v3 - 1 == v9)
      {
        *v9 = v5;
      }

      else
      {
        *v9 = *v14;
        *v14 = v5;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MeCab::NBestGenerator::QueueElementComp &,std::__wrap_iter<MeCab::NBestGenerator::QueueElement **>>(v4, (v9 + 1), &v38, v9 + 1 - v4);
      }
    }

    *(this + 2) -= 8;
    v15 = *v5;
    v16 = *(*v5 + 91);
    if (v16 == 2)
    {
      v17 = v5[1];
      if (!v17)
      {
        return v4 != v3;
      }

      do
      {
        v18 = *v17;
        v15[1] = *v17;
        *v18 = v15;
        v17 = *(v17 + 8);
        v15 = v18;
      }

      while (v17);
    }

    else
    {
      for (i = v15[5]; i; i = *(i + 16))
      {
        MeCab::FreeList<MeCab::NBestGenerator::QueueElement>::alloc(this + 5);
        v21 = *(i + 8);
        v22 = *(i + 24);
        v20[3] = v5[3] + v22;
        v23 = *(v21 + 96) + v22 + v5[3];
        v20[1] = v5;
        v20[2] = v23;
        *v20 = v21;
        v25 = *(this + 2);
        v24 = *(this + 3);
        if (v25 >= v24)
        {
          v27 = *(this + 1);
          v28 = (v25 - v27) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::vector<MeCab::NBestGenerator::QueueElement *>::__throw_length_error[abi:ne200100]();
          }

          v29 = v24 - v27;
          v30 = v29 >> 2;
          if (v29 >> 2 <= (v28 + 1))
          {
            v30 = v28 + 1;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v31 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v30;
          }

          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MeCab::NBestGenerator::QueueElement *>>(this + 8, v31);
          }

          v32 = (8 * v28);
          *v32 = v20;
          v26 = 8 * v28 + 8;
          v33 = *(this + 1);
          v34 = *(this + 2) - v33;
          v35 = v32 - v34;
          memcpy(v32 - v34, v33, v34);
          v36 = *(this + 1);
          *(this + 1) = v35;
          *(this + 2) = v26;
          *(this + 3) = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v25 = v20;
          v26 = (v25 + 1);
        }

        *(this + 2) = v26;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MeCab::NBestGenerator::QueueElementComp &,std::__wrap_iter<MeCab::NBestGenerator::QueueElement **>>(*(this + 1), v26, &v39, (v26 - *(this + 1)) >> 3);
      }
    }
  }

  while (v16 != 2);
  return v4 != v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MeCab::NBestGenerator::QueueElement *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MeCab::NBestGenerator::QueueElementComp &,std::__wrap_iter<MeCab::NBestGenerator::QueueElement **>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 16);
    if (*(*v5 + 16) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 16) > v10);
      *v11 = v8;
    }
  }

  return result;
}

uint64_t MeCab::LBFGS::clear(MeCab::LBFGS *this)
{
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = *(this + 9);
  *(this + 13) = *(this + 12);
  result = *(this + 15);
  if (result)
  {
    result = MEMORY[0x29C29A380](result, 0x1000C40DF44A08DLL);
  }

  *(this + 15) = 0;
  return result;
}

void MeCab::LBFGS::lbfgs_optimize(MeCab::LBFGS *this, int a2, int a3, double *a4, double a5, double *a6, double *__b, double *a8, char a9, double a10, int *a11)
{
  v18 = a8 - 1;
  v209 = __b;
  v210 = a4;
  if (!*(this + 15))
  {
    operator new();
  }

  v19 = __b - 1;
  v20 = *a11;
  v21 = 0.0;
  v208 = __b - 1;
  if (*a11 == 2)
  {
    goto LABEL_28;
  }

  if (v20 == 1)
  {
    goto LABEL_82;
  }

  if (!v20)
  {
    *(this + 6) = 0;
    v22 = a2 + 2 * a3;
    if (a2 <= 0)
    {
      *(this + 10) = v22;
      *(this + 12) = v22 + a3 * a2;
      if (!a2)
      {
        v31 = 0.0;
        v19 = __b - 1;
LABEL_14:
        *(this + 8) = 1.0 / sqrt(v31);
        goto LABEL_15;
      }
    }

    else
    {
      memset_pattern16(__b, &unk_299181220, 8 * a2);
      __b = v209;
      *(this + 10) = v22;
      *(this + 12) = v22 + a3 * a2;
      v23 = (a2 + 1) - 1;
      v24 = &a8[v22];
      v25 = a6;
      v26 = v209;
      do
      {
        v27 = *v25++;
        v28 = v27;
        v29 = *v26++;
        *v24++ = -(v28 * v29);
        --v23;
      }

      while (v23);
    }

    v30 = 8 * a2;
    v31 = 0.0;
    v32 = a6;
    a4 = v210;
    v19 = v208;
    do
    {
      v33 = *v32++;
      v31 = v31 + v33 * v33;
      v30 -= 8;
    }

    while (v30);
    goto LABEL_14;
  }

  while (1)
  {
LABEL_15:
    v34 = *(this + 8);
    *(this + 4) = (v34 + 1);
    if (v34)
    {
      v21 = 0.0;
      if (a2)
      {
        v35 = *(this + 7);
        v36 = &v18[v35 + 1 + *(this + 12)];
        v37 = &a8[*(this + 10) + v35];
        v38 = 8 * a2;
        v39 = v38;
        v40 = v36;
        do
        {
          v41 = *v40++;
          v42 = v41;
          v43 = *v37++;
          v21 = v21 + v42 * v43;
          v39 -= 8;
        }

        while (v39);
        v44 = 0.0;
        do
        {
          v45 = *v36++;
          v44 = v44 + v45 * v45;
          v38 -= 8;
        }

        while (v38);
        if (a2 >= 1)
        {
          v46 = 0;
          v47 = vdupq_n_s64(a2 - 1);
          v48 = v19 + 2;
          v49 = v21 / v44;
          do
          {
            v50 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(vdupq_n_s64(v46), xmmword_2991806C0)));
            if (v50.i8[0])
            {
              *(v48 - 1) = v49;
            }

            if (v50.i8[4])
            {
              *v48 = v49;
            }

            v46 += 2;
            v48 += 2;
          }

          while (((a2 + 1) & 0xFFFFFFFE) != v46);
        }
      }

LABEL_28:
      v51 = *(this + 6);
      if (v51)
      {
        v52 = *(this + 6);
      }

      else
      {
        v52 = a3;
      }

      v18[v52 + a2] = 1.0 / v21;
      if (a2 >= 1)
      {
        v53 = (a2 + 1) - 1;
        v54 = a6;
        v55 = a8;
        do
        {
          v56 = *v54++;
          *v55++ = -v56;
          --v53;
        }

        while (v53);
      }

      v57 = *(this + 8);
      v58 = v57 - 1;
      if (v57 - 1 >= a3)
      {
        v58 = a3;
      }

      if (v58 < 1)
      {
        v62 = v51;
      }

      else
      {
        v59 = *(this + 10);
        v60 = *(this + 12);
        v61 = 1;
        v62 = v51;
        do
        {
          if (v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = a3;
          }

          v62 = v63 - 1;
          v64 = (v63 - 1) * a2;
          if (a2)
          {
            v65 = 0.0;
            v66 = 8 * a2;
            v67 = a8;
            do
            {
              v68 = v67[v64 + v59];
              v69 = *v67++;
              v65 = v65 + v68 * v69;
              v66 -= 8;
            }

            while (v66);
          }

          else
          {
            v65 = 0.0;
          }

          v70 = v64 + v60;
          v71 = v18[v63 + a2];
          v18[a3 + a2 + v63] = v65 * v71;
          if (a2 >= 1)
          {
            v72 = -(v65 * v71);
            v73 = a8;
            v74 = a2;
            do
            {
              *v73 = *v73 + v72 * v73[v70];
              ++v73;
              --v74;
            }

            while (v74);
          }

          v75 = v61++ == v58;
        }

        while (!v75);
        *(this + 5) = v70;
      }

      if (a2 >= 1)
      {
        v76 = (a2 + 1) - 1;
        v77 = __b;
        v78 = a8;
        do
        {
          v79 = *v77++;
          *v78 = v79 * *v78;
          ++v78;
          --v76;
        }

        while (v76);
      }

      if (v58 >= 1)
      {
        v80 = *(this + 12);
        v81 = *(this + 10);
        v82 = 1;
        do
        {
          v83 = v62 * a2;
          if (a2)
          {
            v84 = 0.0;
            v85 = 8 * a2;
            v86 = a8;
            do
            {
              v87 = v86[v83 + v80];
              v88 = *v86++;
              v84 = v84 + v87 * v88;
              v85 -= 8;
            }

            while (v85);
          }

          else
          {
            v84 = 0.0;
          }

          v89 = v83 + v81;
          if (a2 >= 1)
          {
            v90 = a8[a3 + a2 + v62] - v84 * a8[v62 + a2];
            v91 = a8;
            v92 = a2;
            do
            {
              *v91 = *v91 + v90 * v91[v89];
              ++v91;
              --v92;
            }

            while (v92);
          }

          if (v62 + 1 == a3)
          {
            v62 = 0;
          }

          else
          {
            ++v62;
          }

          v75 = v82++ == v58;
        }

        while (!v75);
        *(this + 3) = v89;
      }

      if (a2 >= 1)
      {
        v93 = *(this + 10) + v51 * a2;
        v94 = (a2 + 1) - 1;
        v95 = v93 + 1;
        v96 = a8;
        do
        {
          v97 = *v96++;
          v18[v95++] = v97;
          --v94;
        }

        while (v94);
      }

      *(this + 4) = 0;
      *(this + 7) = 0x3FF0000000000000;
      if (v57 != 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
      *(this + 4) = 0;
    }

    *(this + 7) = *(this + 8);
LABEL_79:
    if (a2 >= 1)
    {
      v98 = (a2 + 1) - 1;
      v99 = a6;
      v100 = a8;
      do
      {
        v101 = *v99++;
        *v100++ = v101;
        --v98;
      }

      while (v98);
    }

LABEL_82:
    v102 = *(this + 15);
    v103 = *(this + 9);
    v104 = *(this + 10) + *(this + 6) * a2;
    v105 = &v18[v104 + 1];
    if (v103 != -1)
    {
      *v102 = 1;
      if (a2 < 1)
      {
        goto LABEL_206;
      }

      if (*(this + 7) <= 0.0)
      {
        goto LABEL_124;
      }

      v106 = 8 * a2;
      v107 = 0.0;
      v108 = a6;
      do
      {
        v109 = *v108++;
        v110 = v109;
        v111 = *v105++;
        v107 = v107 + v110 * v111;
        v106 -= 8;
      }

      while (v106);
      *(v102 + 24) = v107;
      if (v107 >= 0.0)
      {
LABEL_124:
        v103 = *(this + 9);
        goto LABEL_206;
      }

      *(v102 + 4) = 1;
      *(this + 4) = 0;
      *(v102 + 16) = a5;
      *(v102 + 32) = v107 * 0.0001;
      *(v102 + 40) = xmmword_299181210;
      v112 = (a2 + 1) - 1;
      v113 = a4;
      v114 = __b;
      do
      {
        v115 = *v113++;
        *v114++ = v115;
        --v112;
      }

      while (v112);
      v117 = *(v102 + 16);
      v116 = *(v102 + 24);
      *(v102 + 56) = 0;
      *(v102 + 64) = v117;
      *(v102 + 72) = v116;
      *(v102 + 80) = 0;
      *(v102 + 88) = v117;
      *(v102 + 96) = v116;
      v118 = 0.0;
      v119 = 0.0;
      if (!*(v102 + 8))
      {
        goto LABEL_141;
      }

      goto LABEL_134;
    }

    *(this + 9) = 0;
    v120 = *(this + 4);
    *(this + 4) = v120 + 1;
    v121 = 0.0;
    if (a2)
    {
      v122 = 8 * a2;
      v123 = a6;
      do
      {
        v124 = *v123++;
        v125 = v124;
        v126 = *v105++;
        v121 = v121 + v125 * v126;
        v122 -= 8;
      }

      while (v122);
    }

    v103 = 0;
    v127 = (v102 + 8);
    v128 = *(this + 7);
    v129 = *(v102 + 32);
    v130 = *(v102 + 16) + v128 * v129;
    if (*(v102 + 8))
    {
      if (v128 <= *(v102 + 104) || v128 >= *(v102 + 112) || (v103 = 0, !*v102))
      {
        v103 = 6;
        *(this + 9) = 6;
      }
    }

    v131 = v128 != 1.0e20 || v130 < a5;
    if (!v131 && v121 <= v129)
    {
      v103 = 5;
      *(this + 9) = 5;
    }

    if (v128 == 1.0e-20 && (v130 < a5 || v121 >= v129))
    {
      v103 = 4;
      *(this + 9) = 4;
    }

    if (v120 >= 19)
    {
      v103 = 3;
      *(this + 9) = 3;
    }

    if (*v127 && *(v102 + 112) - *(v102 + 104) <= *(v102 + 112) * 1.0e-16)
    {
      v103 = 2;
      *(this + 9) = 2;
    }

    if (v130 >= a5)
    {
      v133 = 1;
      if (fabs(v121) <= *(v102 + 24) * -0.9)
      {
        goto LABEL_205;
      }
    }

    if (v103)
    {
      goto LABEL_206;
    }

    v134 = *(v102 + 4);
    if (v130 >= a5 && v134)
    {
      if (v121 >= *(v102 + 24) * 0.0001)
      {
        *(v102 + 4) = 0;
LABEL_129:
        goto LABEL_130;
      }
    }

    else if (!v134)
    {
      goto LABEL_129;
    }

    v135 = *(v102 + 64);
    if (v135 < a5 || v130 >= a5)
    {
      goto LABEL_129;
    }

    v136 = v135 - *(v102 + 56) * v129;
    v137 = *(v102 + 96);
    v214 = *(v102 + 88) - *(v102 + 80) * v129;
    *&v215.__locale_ = v136;
    v138 = *(v102 + 72) - v129;
    v212 = v137 - v129;
    v213 = v138;
    v139 = *(v102 + 32);
    v140 = v214 + *(v102 + 80) * v139;
    v141 = v139 + v213;
    *(v102 + 64) = *&v215.__locale_ + *(v102 + 56) * v139;
    *(v102 + 72) = v141;
    v142 = v139 + v212;
    *(v102 + 88) = v140;
    *(v102 + 96) = v142;
LABEL_130:
    __b = v209;
    a4 = v210;
    if (!*v127)
    {
      v118 = *(v102 + 56);
      v19 = v208;
LABEL_141:
      *(v102 + 104) = v118;
      v118 = *(this + 7) + (*(this + 7) - v118) * 4.0;
      v145 = 1;
      goto LABEL_142;
    }

    v119 = *(v102 + 80);
    v118 = *(v102 + 56);
    v143 = vabdd_f64(v119, v118);
    if (v143 >= *(v102 + 48) * 0.66)
    {
      *(this + 7) = v118 + (v119 - v118) * 0.5;
      v119 = *(v102 + 80);
      v118 = *(v102 + 56);
      v143 = vabdd_f64(v119, v118);
    }

    v19 = v208;
    v144 = *(v102 + 40);
    *(v102 + 40) = v143;
    *(v102 + 48) = v144;
LABEL_134:
    v145 = 0;
    if (v119 >= v118)
    {
      v146 = v118;
    }

    else
    {
      v146 = v119;
    }

    *(v102 + 104) = v146;
    if (v118 < v119)
    {
      v118 = v119;
    }

LABEL_142:
    *(v102 + 112) = v118;
    v147 = *(this + 7);
    if (v147 < 1.0e-20)
    {
      v147 = 1.0e-20;
    }

    if (v147 <= 1.0e20)
    {
      v148 = v147;
    }

    else
    {
      v148 = 1.0e20;
    }

    *(this + 7) = v148;
    if ((v145 & 1) == 0)
    {
      v149 = *(v102 + 104);
      if (v148 <= v149 || (v150 = *(v102 + 112), v148 >= v150) || *(this + 4) > 18 || !*v102 || v150 - v149 <= v150 * 1.0e-16)
      {
        *(this + 7) = *(v102 + 56);
      }
    }

    if (a9)
    {
      v133 = -1;
      if (a2 >= 1)
      {
        v151 = (a2 + 1) - 1;
        v152 = &a8[v104];
        v153 = __b;
        v154 = a6;
        v155 = a4;
        v156 = 1.0 / a10;
        do
        {
          v157 = *v153++;
          v158 = v157;
          v159 = *v154++;
          v160 = v159;
          if (v158 >= 0.0)
          {
            v161 = 0.0;
          }

          else
          {
            v161 = -1.0;
          }

          if (v158 > 0.0)
          {
            v161 = 1.0;
          }

          v162 = v160 - v156;
          v163 = v160 + v161 / a10;
          v164 = v156 + v160;
          if (v158 != 0.0)
          {
            v162 = v163;
          }

          v165 = *v152++;
          v166 = v165;
          if (v158 != 0.0)
          {
            v164 = v163;
          }

          v167 = fmin(v164, 0.0);
          if (v166 >= 0.0)
          {
            v168 = 0.0;
          }

          else
          {
            v168 = -1.0;
          }

          if (v166 > 0.0)
          {
            v168 = 1.0;
          }

          if (v162 <= 0.0)
          {
            v169 = 0.0;
          }

          else
          {
            v167 = v162;
            v169 = -1.0;
          }

          if (v167 >= 0.0)
          {
            v170 = v169;
          }

          else
          {
            v170 = 1.0;
          }

          if (v168 == v170)
          {
            v171 = v166;
          }

          else
          {
            v171 = 0.0;
          }

          if (v158 >= 0.0)
          {
            v172 = 0.0;
          }

          else
          {
            v172 = -1.0;
          }

          if (v158 > 0.0)
          {
            v172 = 1.0;
          }

          if (v158 != 0.0)
          {
            v170 = v172;
          }

          v173 = v158 + *(this + 7) * v171;
          if (v173 >= 0.0)
          {
            v174 = 0.0;
          }

          else
          {
            v174 = -1.0;
          }

          if (v173 > 0.0)
          {
            v174 = 1.0;
          }

          v175 = v170 <= 0.0;
          if (v170 >= 0.0)
          {
            v176 = 0.0;
          }

          else
          {
            v176 = -1.0;
          }

          if (!v175)
          {
            v176 = 1.0;
          }

          if (v174 != v176)
          {
            v173 = 0.0;
          }

          *v155++ = v173;
          --v151;
        }

        while (v151);
        goto LABEL_204;
      }
    }

    else
    {
      v133 = -1;
      if (a2 >= 1)
      {
        v177 = (a2 + 1) - 1;
        v178 = &a8[v104];
        v179 = __b;
        v180 = a4;
        do
        {
          v181 = *v179++;
          v182 = v181;
          v183 = *v178++;
          *v180++ = v182 + *(this + 7) * v183;
          --v177;
        }

        while (v177);
LABEL_204:
        v133 = -1;
      }
    }

LABEL_205:
    *(this + 9) = v133;
    v103 = v133;
LABEL_206:
    if (v103 != 1)
    {
      break;
    }

    v184 = *(this + 6);
    v185 = v184 * a2;
    *(this + 7) = v184 * a2;
    if (a2 >= 1)
    {
      v186 = (a2 + 1) - 1;
      v187 = *(this + 12) + v185 + 1;
      v188 = *(this + 10) + v185 + 1;
      v189 = a6;
      v190 = a8;
      do
      {
        v18[v188] = *(this + 7) * v18[v188];
        v191 = *v189++;
        v192 = v191;
        v193 = *v190++;
        v18[v187++] = v192 - v193;
        ++v188;
        --v186;
      }

      while (v186);
    }

    if (v184 + 1 == a3)
    {
      v194 = 0;
    }

    else
    {
      v194 = v184 + 1;
    }

    *(this + 6) = v194;
    v195 = 0.0;
    v196 = 0.0;
    if (a2)
    {
      v197 = 8 * a2;
      v198 = v197;
      v199 = a6;
      do
      {
        v200 = *v199++;
        v195 = v195 + v200 * v200;
        v198 -= 8;
      }

      while (v198);
      v196 = 0.0;
      v201 = a4;
      do
      {
        v202 = *v201++;
        v196 = v196 + v202 * v202;
        v197 -= 8;
      }

      while (v197);
      v195 = sqrt(v195);
    }

    if (v195 / fmax(sqrt(v196), 1.0) <= 0.0000001)
    {
      v203 = 0;
      goto LABEL_224;
    }
  }

  if (v103 == -1)
  {
    v203 = 1;
  }

  else
  {
    v204 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "The line search routine mcsrch failed: error code:", 50);
    v205 = MEMORY[0x29C29A250](v204, *(this + 9));
    std::ios_base::getloc((v205 + *(*v205 - 24)));
    v206 = std::locale::use_facet(&v215, MEMORY[0x29EDC93D0]);
    (v206->__vftable[2].~facet_0)(v206, 10);
    std::locale::~locale(&v215);
    std::ostream::put();
    std::ostream::flush();
    v203 = -1;
  }

LABEL_224:
  *a11 = v203;
}

double *anonymous namespace::mcstep(double *this, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double a9, double a10, double a11, double a12, int *a13, int *a14)
{
  *a13 = 0;
  if (!*a8)
  {
    v18 = *a3;
    goto LABEL_13;
  }

  v14 = *a7;
  v15 = *a4;
  v16 = *this;
  if (*a4 >= *this)
  {
    v17 = *this;
  }

  else
  {
    v17 = *a4;
  }

  if (v14 > v17)
  {
    if (v16 >= v15)
    {
      v15 = *this;
    }

    if (v14 < v15 && a12 >= a11)
    {
      v18 = *a3;
      if ((v14 - v16) * *a3 < 0.0)
      {
LABEL_13:
        v19 = fabs(v18);
        v20 = *a2;
        if (*a2 < a9)
        {
          *a13 = 1;
          v21 = v20 - a9;
          v22 = *a7;
          v23 = *this;
          v24 = *a7 - *this;
          v25 = v18 + v21 * 3.0 / v24 + a10;
          v26 = fabs(v25);
          if (v26 >= v19)
          {
            v19 = v26;
          }

          v27 = fabs(a10);
          if (v19 < v27)
          {
            v19 = v27;
          }

          v28 = v19 * sqrt(-v18 / v19 * (a10 / v19) + v25 / v19 * (v25 / v19));
          v29 = -v28;
          if (v22 >= v23)
          {
            v29 = v28;
          }

          v30 = v23 + (v25 + v29 - v18) / (v29 + v29 - v18 + a10) * v24;
          v31 = v23 + v18 / (v18 + v21 / v24) * 0.5 * v24;
          v32 = vabdd_f64(v30, v23);
          v33 = vabdd_f64(v31, v23);
          v34 = v30 + (v31 - v30) * 0.5;
          if (v32 < v33)
          {
            v34 = v30;
          }

          *a8 = 1;
          *a4 = v22;
          *a5 = a9;
          *a6 = a10;
          if (v34 >= a12)
          {
            v35 = a12;
          }

          else
          {
            v35 = v34;
          }

          if (v35 <= a11)
          {
            v35 = a11;
          }

          *a7 = v35;
          goto LABEL_76;
        }

        if (v18 / v19 * a10 >= 0.0)
        {
          v49 = fabs(a10);
          if (v49 < v19)
          {
            *a13 = 3;
            v50 = (v20 - a9) * 3.0;
            v48 = *a7;
            v51 = *this;
            v52 = v18 + v50 / (*a7 - *this) + a10;
            v53 = fabs(v52);
            if (v53 >= v19)
            {
              v19 = v53;
            }

            if (v19 < v49)
            {
              v19 = v49;
            }

            v54 = v19 * sqrt(fmax(-v18 / v19 * (a10 / v19) + v52 / v19 * (v52 / v19), 0.0));
            v55 = -v54;
            if (v48 <= v51)
            {
              v55 = v54;
            }

            if (v54 == 0.0 || (v56 = (v52 + v55 - a10) / (v55 + v18 - a10 + v55), v56 >= 0.0))
            {
              v46 = a12;
              if (v48 <= v51)
              {
                v46 = a11;
              }
            }

            else
            {
              v46 = v48 + v56 * (v51 - v48);
            }

            v64 = v48 + a10 / (a10 - v18) * (v51 - v48);
            v65 = vabdd_f64(v48, v46);
            v66 = vabdd_f64(v48, v64);
            v47 = 0;
            if (*a8)
            {
              v36 = 0;
              if (v65 < v66)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v36 = 1;
              if (v65 > v66)
              {
                goto LABEL_69;
              }
            }

            v46 = v64;
            goto LABEL_69;
          }

          *a13 = 4;
          if (*a8)
          {
            v36 = 0;
            v48 = *a7;
            v57 = *a4 - *a7;
            v58 = *a6;
            v59 = *a6 + (a9 - *a5) * 3.0 / v57 + a10;
            v60 = fabs(v59);
            v61 = fabs(*a6);
            if (v60 < v61)
            {
              v60 = v61;
            }

            if (v60 >= v49)
            {
              v49 = v60;
            }

            v62 = v49 * sqrt(-v58 / v49 * (a10 / v49) + v59 / v49 * (v59 / v49));
            if (v48 <= *a4)
            {
              v63 = v62;
            }

            else
            {
              v63 = -v62;
            }

            v46 = v48 + (v59 + v63 - a10) / (v58 + v63 + v63 - a10) * v57;
            v47 = 1;
          }

          else
          {
            v48 = *a7;
            v47 = 1;
            if (*a7 <= *this)
            {
              v46 = a11;
            }

            else
            {
              v46 = a12;
            }

            v36 = 1;
          }
        }

        else
        {
          v36 = 0;
          *a13 = 2;
          v37 = *a7;
          v38 = *this;
          v39 = v18 + (v20 - a9) * 3.0 / (*a7 - *this) + a10;
          v40 = fabs(v39);
          if (v40 >= v19)
          {
            v19 = v40;
          }

          v41 = fabs(a10);
          if (v19 < v41)
          {
            v19 = v41;
          }

          v42 = v19 * sqrt(-v18 / v19 * (a10 / v19) + v39 / v19 * (v39 / v19));
          v43 = -v42;
          if (v37 <= v38)
          {
            v43 = v42;
          }

          v44 = v37 + (v39 + v43 - a10) / (v18 + v43 + v43 - a10) * (v38 - v37);
          v45 = v37 + a10 / (a10 - v18) * (v38 - v37);
          if (vabdd_f64(v44, v37) <= vabdd_f64(v45, v37))
          {
            v46 = v45;
          }

          else
          {
            v46 = v44;
          }

          v47 = 1;
          *a8 = 1;
          *a4 = v38;
          *a5 = *a2;
          *a6 = *a3;
          v48 = *a7;
        }

LABEL_69:
        *this = v48;
        *a2 = a9;
        *a3 = a10;
        if (v46 >= a12)
        {
          v35 = a12;
        }

        else
        {
          v35 = v46;
        }

        if (v35 <= a11)
        {
          v35 = a11;
        }

        *a7 = v35;
        if (v47 & 1) != 0 || (v36)
        {
          return this;
        }

LABEL_76:
        v67 = *this + (*a4 - *this) * 0.66;
        v68 = v67 < v35;
        if (*a4 > *this)
        {
          v68 = v35 < v67;
        }

        if (!v68)
        {
          v35 = *this + (*a4 - *this) * 0.66;
        }

        *a7 = v35;
      }
    }
  }

  return this;
}

BOOL mecab_cost_train(int a1, char **a2)
{
  MEMORY[0x29C29A2E0](&v15);
  MeCab::Param::Param(v18);
  {
    if (MeCab::Param::help_version(v18))
    {
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = MeCab::whatlog::str(&v19);
    std::string::basic_string[abi:ne200100]<0>(__p, v6);
    if ((v17 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n\n", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\ntry '--help' for more information.", 35);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 1;
  }

  MeCab::Param::~Param(v18);
  std::ios_base::Init::~Init(&v15);
  return v5;
}

void sub_29915803C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::locale a20)
{
  std::locale::~locale((v20 - 40));
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MeCab::Param::~Param(&a20);
  std::ios_base::Init::~Init(&a13);
  _Unwind_Resume(a1);
}

uint64_t MeCab::anonymous namespace::CRFLearner::run(MeCab::_anonymous_namespace_::CRFLearner *this, MeCab::Param *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  MeCab::Param::get<std::string>(this, "dicdir", &v46);
  std::string::basic_string[abi:ne200100]<0>(&v47, "dicrc");
  MeCab::create_filename(&v46, &v47, v26);
  if ((v26[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v26;
  }

  else
  {
    v3 = v26[0].__r_.__value_.__r.__words[0];
  }

  if (!MeCab::Param::load(this, v3))
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/learner.cpp", 61);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 54);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "param->load(DCONF(DICRC))", 25);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "no such file or directory: ", 27);
    std::string::basic_string[abi:ne200100]<0>(&v23, "dicrc");
    v11 = __p;
    MeCab::create_filename(&v46, &v23, __p);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = __p[0].__r_.__value_.__r.__words[0];
    }

    v12 = strlen(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(v23.__locale_);
    }

    MeCab::die::~die(&v25);
  }

  if (SHIBYTE(v26[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26[0].__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47.__locale_);
  }

  v13 = *(this + 4);
  if (*(this + 5) - v13 == 48)
  {
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, *v13, *(v13 + 1));
      v13 = *(this + 4);
    }

    else
    {
      v14 = *v13;
      v45.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v45.__r_.__value_.__l.__data_ = v14;
    }

    if (*(v13 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      v44 = *(v13 + 1);
    }

    MeCab::Param::get<std::string>(this, "old-model", &v43);
    MeCab::FeatureIndex::FeatureIndex(__p);
    v41[1] = 0;
    v41[0] = 0;
    __p[0].__r_.__value_.__r.__words[0] = &unk_2A1F352A0;
    v40 = v41;
    v42[1] = 0;
    v42[0] = 0;
    v41[2] = v42;
    v37 = 0;
    v36 = 0;
    v38 = 0;
    v34 = 0;
    v33 = 0;
    v35 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v28 = 0;
    v27 = 0;
    v29 = 0;
    MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::Tokenizer(v26);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "Usage: ", 7);
  v16 = this + 56;
  if (*(this + 79) < 0)
  {
    v16 = *v16;
  }

  v17 = strlen(v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " corpus model", 13);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(v26, MEMORY[0x29EDC93D0]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(v26);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_29915A5E4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(STACK[0xC10]);
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

double MeCab::Param::get<double>(uint64_t a1, char *a2)
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
  v13 = 0.0;
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
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29A1B0](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = std::ws[abi:ne200100]<char,std::char_traits<char>>(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
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

void sub_29915AD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::Param::get<unsigned long>(uint64_t a1, char *a2)
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
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29A1D0](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = std::ws[abi:ne200100]<char,std::char_traits<char>>(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
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

void sub_29915B0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void **std::vector<MeCab::anonymous namespace::learner_thread>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 104;
      v6 = v3 - 104;
      v7 = v3 - 104;
      do
      {
        v8 = *v7;
        v7 -= 104;
        (*(v8 + 8))(v6);
        v5 -= 104;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void MeCab::Allocator<mecab_learner_node_t,mecab_learner_path_t>::Allocator(void *a1)
{
  *a1 = &unk_2A1F35C28;
  a1[1] = 0;
  operator new();
}

void sub_29915B350(_Unwind_Exception *exception_object)
{
  v9 = v1[10];
  if (v9)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  *v7 = v5;
  if (*v6)
  {
    (*(**v6 + 8))(*v6);
  }

  v1[6] = v4;
  v10 = v1[7];
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v1[4] = v3;
  v11 = v1[5];
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v1[2] = v2;
  v12 = v1[3];
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_ptr<MeCab::NBestGenerator>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35660;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::ChunkFreeList<char>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35CB8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::FreeList<mecab_learner_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35C88;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::FreeList<mecab_learner_node_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35C58;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MeCab::Allocator<mecab_learner_node_t,mecab_learner_path_t>::~Allocator(void *a1)
{
  MeCab::Allocator<mecab_learner_node_t,mecab_learner_path_t>::~Allocator(a1);

  JUMPOUT(0x29C29A380);
}

void MeCab::FreeList<mecab_learner_node_t>::~FreeList(void *a1)
{
  MeCab::FreeList<mecab_learner_node_t>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<mecab_learner_node_t>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F35140;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x1070C80728FD4AFLL);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::FreeList<mecab_learner_node_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35C58;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::FreeList<mecab_learner_path_t>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35C88;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::ChunkFreeList<char>>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35CB8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::NBestGenerator>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35660;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_array<trie_search_result_type_t>::~scoped_array(void *a1)
{
  *a1 = &unk_2A1F35478;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8094CA146DLL);
  }

  return a1;
}

void MeCab::scoped_array<trie_search_result_type_t>::~scoped_array(void *a1)
{
  *a1 = &unk_2A1F35478;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8094CA146DLL);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<double>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35560;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A380](v2, 0x1000C4000313F17);
  }

  return a1;
}

void MeCab::scoped_ptr<double>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35560;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A380](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x29C29A380);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C29A320](a1 + 128);
  return a1;
}

void *MeCab::scoped_ptr<unsigned long>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35520;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A380](v2, 0x1000C4000313F17);
  }

  return a1;
}

void MeCab::scoped_ptr<unsigned long>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35520;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A380](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::EncoderLearnerTagger::~EncoderLearnerTagger(MeCab::EncoderLearnerTagger *this)
{
  MeCab::EncoderLearnerTagger::~EncoderLearnerTagger(this);

  JUMPOUT(0x29C29A380);
}

{
  *this = &unk_2A1F35280;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  MeCab::LearnerTagger::~LearnerTagger(this);
}

void MeCab::LearnerTagger::~LearnerTagger(MeCab::LearnerTagger *this)
{
  MeCab::LearnerTagger::~LearnerTagger(this);

  JUMPOUT(0x29C29A380);
}

{
  *this = &unk_2A1F353F8;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  *(this + 4) = &unk_2A1F35458;
  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C29A350](v4, 0x1000C8077774924);
  }
}

void MeCab::scoped_string::scoped_string(MeCab::scoped_string *this)
{
  *this = &unk_2A1F353D8;
  *(this + 1) = 0;
  MeCab::scoped_string::reset_string(this, &unk_299185561);
}

void sub_29915BDC0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F35458;
  v3 = v1[1];
  if (v3)
  {
    MEMORY[0x29C29A350](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::scoped_string::~scoped_string(MeCab::scoped_string *this)
{
  *this = &unk_2A1F35458;
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_2A1F35458;
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_array<char>::~scoped_array(void *a1)
{
  *a1 = &unk_2A1F35458;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8077774924);
  }

  return a1;
}

void MeCab::scoped_array<char>::~scoped_array(void *a1)
{
  *a1 = &unk_2A1F35458;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A350](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29A380);
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void MeCab::anonymous namespace::learner_thread::run(MeCab::_anonymous_namespace_::learner_thread *this)
{
  v2 = 0.0;
  *(this + 3) = 0u;
  v3 = (this + 48);
  *(this + 2) = 0u;
  v4 = (this + 32);
  *(this + 8) = 0;
  v5 = *(this + 10);
  v6 = v3[5] - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  for (i = *(this + 8); i < *(this + 3); i += *(this + 9))
  {
    *(this + 8) = MeCab::EncoderLearnerTagger::gradient(*(*(this + 9) + 8 * i), *(this + 10), v2) + *(this + 8);
    *(this + 7) += MeCab::EncoderLearnerTagger::eval(*(*(this + 9) + 8 * i), v3, v4, v3 - 1);
  }
}

void MeCab::anonymous namespace::learner_thread::~learner_thread(MeCab::_anonymous_namespace_::learner_thread *this)
{
  *this = &unk_2A1F35BE8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2A1F35BE8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::LBFGS::~LBFGS(MeCab::LBFGS *this)
{
  MeCab::LBFGS::~LBFGS(this);

  JUMPOUT(0x29C29A380);
}

{
  *this = &unk_2A1F35200;
  MeCab::LBFGS::clear(this);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *MeCab::Allocator<mecab_learner_node_t,mecab_learner_path_t>::~Allocator(void *a1)
{
  *a1 = &unk_2A1F35C28;
  a1[13] = &unk_2A1F35478;
  v2 = a1[14];
  if (v2)
  {
    MEMORY[0x29C29A350](v2, 0x1000C8094CA146DLL);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  a1[8] = &unk_2A1F35660;
  v4 = a1[9];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[6] = &unk_2A1F35CB8;
  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[4] = &unk_2A1F35C88;
  v6 = a1[5];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  a1[2] = &unk_2A1F35C58;
  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::~Tokenizer(uint64_t a1)
{
  *a1 = &unk_2A1F35CE8;
  MeCab::Tokenizer<mecab_node_t,mecab_path_t>::close(a1);
  if (*(a1 + 1879) < 0)
  {
    operator delete(*(a1 + 1856));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 1592) = *MEMORY[0x29EDC9538];
  *(a1 + 1592 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 1600) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1687) < 0)
  {
    operator delete(*(a1 + 1664));
  }

  *(a1 + 1600) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1608));
  std::ostream::~ostream();
  MEMORY[0x29C29A320](a1 + 1704);
  MeCab::CharProperty::~CharProperty((a1 + 904));
  v4 = *(a1 + 864);
  if (v4)
  {
    *(a1 + 872) = v4;
    operator delete(v4);
  }

  MeCab::FreeList<mecab_dictionary_info_t>::~FreeList((a1 + 808));
  *(a1 + 792) = &unk_2A1F35458;
  v5 = *(a1 + 800);
  if (v5)
  {
    MEMORY[0x29C29A350](v5, 0x1000C8077774924);
  }

  *(a1 + 776) = &unk_2A1F35458;
  v6 = *(a1 + 784);
  if (v6)
  {
    MEMORY[0x29C29A350](v6, 0x1000C8077774924);
  }

  MeCab::Dictionary::~Dictionary((a1 + 40));
  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::~Tokenizer(uint64_t a1)
{
  MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::~Tokenizer(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<mecab_dictionary_info_t>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F35100;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x1070C802D7A0B02);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MeCab::FreeList<mecab_dictionary_info_t>::~FreeList(void *a1)
{
  MeCab::FreeList<mecab_dictionary_info_t>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void sub_29915D810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a25)
  {
    MEMORY[0x29C29A350](a25, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void MeCab::scoped_string::reset_string(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
  }

  operator new[]();
}

uint64_t MeCab::LearnerTagger::lookup(MeCab::LearnerTagger *this, uint64_t a2, double a3)
{
  result = *(*(this + 9) + 8 * a2);
  if (!result)
  {
    result = MeCab::Tokenizer<mecab_learner_node_t,mecab_learner_path_t>::lookup<false>(*(this + 1), (*(this + 6) + a2), *(this + 7), *(this + 2), a3);
    *(*(this + 9) + 8 * a2) = result;
  }

  return result;
}

uint64_t MeCab::EncoderLearnerTagger::eval(MeCab::EncoderLearnerTagger *this, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v5 = **(this + 12);
  v6 = *(v5 + 8);
  v7 = *(v5 + 48);
  v8 = *(v7 + 48);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v6;
    while (1)
    {
      v6 = *(v13 + 8);
      if (!v6)
      {
        break;
      }

      if (v11 == v10)
      {
        v14 = *(v7 + 76);
        if (v14 != *(v13 + 76))
        {
          goto LABEL_12;
        }

        v16 = *(this + 15);
        v15 = *(this + 16);
        if (strncmp(*(v7 + 56), *(v13 + 56), v14))
        {
          goto LABEL_12;
        }

        v28 = v12;
        v17 = *(v7 + 64);
        v18 = *(v13 + 64);
        v19 = *(v13 + 87) == 1 ? v15 : v16;
        v20 = strlen(v17);
        v21 = MeCab::repeat_find_if<char const*,char>(v17, &v17[v20], 44, v19);
        v22 = strlen(v18);
        if (v21 - v17 == MeCab::repeat_find_if<char const*,char>(v18, &v18[v22], 44, v19) - v18 && !strncmp(v17, v18, v21 - v17))
        {
          ++*a2;
          v12 = v28;
        }

        else
        {
LABEL_12:
          v12 = 1;
        }

        ++*a3;
        ++*a4;
        v11 = v10 + *(v6 + 78);
        v10 += *(v8 + 78);
      }

      else if (v11 >= v10)
      {
        v10 += *(v8 + 78);
        ++*a3;
        v12 = 1;
        v6 = v13;
      }

      else
      {
        v11 += *(v6 + 78);
        ++*a4;
        v12 = 1;
        v8 = v7;
      }

      v7 = v8;
      v8 = *(v8 + 48);
      v13 = v6;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    v23 = *a3;
    do
    {
      ++v23;
      v8 = *(v8 + 48);
    }

    while (v8);
    *a3 = v23;
    v6 = v13;
  }

  else
  {
    v12 = 0;
  }

LABEL_24:
  v24 = *(v6 + 8);
  if (v24)
  {
    v25 = *a4;
    do
    {
      ++v25;
      v24 = *(v24 + 8);
    }

    while (v24);
    *a4 = v25;
  }

  return v12;
}

uint64_t MeCab::LearnerTagger::connect(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v25 = a2;
    do
    {
      v5 = *(v4 + 96);
      v6 = *(v5 + 8 * a2);
      if (v6)
      {
        do
        {
          v7 = *(*(v4 + 16) + 40);
          if (!v7)
          {
            operator new();
          }

          v8 = v7[5];
          v9 = v7[6];
          v10 = v7[4];
          if (v10 == v9)
          {
            v10 = 0;
            ++v8;
            v7[4] = 0;
            v7[5] = v8;
          }

          v11 = v7[1];
          if (v8 == (v7[2] - v11) >> 3)
          {
            is_mul_ok(v9, 0x30uLL);
            operator new[]();
          }

          v12 = *(v11 + 8 * v8);
          v7[4] = v10 + 1;
          v13 = v12 + 48 * v10;
          *(v13 + 8) = 0u;
          *(v13 + 40) = 0;
          *(v13 + 24) = 0u;
          *v13 = v3;
          *(v13 + 24) = *(v3 + 40);
          *(v3 + 40) = v13;
          *(v13 + 8) = *(v6 + 32);
          *(v13 + 16) = v6;
          *(v6 + 32) = v13;
          result = (*(**(v4 + 24) + 24))(*(v4 + 24), v13);
          if ((result & 1) == 0)
          {
            v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/learner_tagger.cpp", 68);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "(", 1);
            v16 = MEMORY[0x29C29A250](v15, 307);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") [", 3);
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "feature_index_->buildFeature(path)", 34);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "] ", 2);
            MeCab::die::~die(&v27);
          }

          if (!*(v13 + 40))
          {
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/learner_tagger.cpp", 68);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "(", 1);
            v21 = MEMORY[0x29C29A250](v20, 308);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") [", 3);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "path->fvector", 13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] ", 2);
            MeCab::die::~die(&v26);
          }

          v6 = *(v6 + 16);
        }

        while (v6);
        v5 = *(v4 + 96);
      }

      v24 = v5 + 8 * *(v3 + 78);
      a2 = v25;
      *(v3 + 16) = *(v24 + 8 * v25);
      *(v24 + 8 * v25) = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
  }

  return result;
}

void std::vector<mecab_learner_node_t *>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<MeCab::NBestGenerator::QueueElement *>>(a1, v10);
      }

      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

double MeCab::EncoderLearnerTagger::gradient(MeCab::EncoderLearnerTagger *this, double *a2, double a3)
{
  v5 = *(this + 8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 9) + 8 * v6);
      if (v7)
      {
        do
        {
          v8 = *(this + 3);
          *(v7 + 112) = 0;
          if (*(v7 + 87) != 3)
          {
            v9 = *(v7 + 128);
            v10 = *v9;
            if (*v9 != -1)
            {
              v11 = *(v8 + 336);
              v12 = v9 + 1;
              a3 = 0.0;
              do
              {
                a3 = a3 + *(v11 + 8 * v10);
                *(v7 + 112) = a3;
                v13 = *v12++;
                v10 = v13;
              }

              while (v13 != -1);
            }
          }

          v14 = *(v7 + 40);
          if (v14)
          {
            v15 = 0;
            v16 = -1.0e37;
            do
            {
              MeCab::FeatureIndex::calcCost(*(this + 3), v14, a3);
              v17 = *(v14 + 32);
              v18 = *(v14 + 16);
              v14 = *(v14 + 24);
              a3 = v17 + *(v18 + 120);
              if (a3 > v16)
              {
                v16 = a3;
                v15 = v18;
              }
            }

            while (v14);
          }

          else
          {
            v15 = 0;
            v16 = -1.0e37;
          }

          *v7 = v15;
          *(v7 + 120) = v16;
          v7 = *(v7 + 24);
        }

        while (v7);
        v5 = *(this + 8);
      }

      v19 = v5 <= v6++;
    }

    while (!v19);
  }

  v20 = *(this + 9);
  v21 = *(v20 + 8 * v5);
  if (v21)
  {
    v22 = *v21;
    if (*v21)
    {
      do
      {
        v22[1] = v21;
        v21 = v22;
        v22 = *v22;
      }

      while (v22);
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      for (i = *(v20 + 8 * v23); i; i = *(i + 3))
      {
        i[12] = 0.0;
        v25 = *(i + 5);
        if (v25)
        {
          v26 = 0.0;
          v27 = *(i + 5);
          do
          {
            v28 = *(v27 + 32);
            v29 = *(*(v27 + 16) + 96);
            v30 = v28 + v29;
            if (v27 != v25)
            {
              if (v30 >= v26)
              {
                v31 = v26;
              }

              else
              {
                v31 = v28 + v29;
              }

              if (v26 >= v30)
              {
                v30 = v26;
              }

              if (v30 <= v31 + 50.0)
              {
                v32 = exp(v31 - v30);
                v30 = v30 + log(v32 + 1.0);
              }
            }

            i[12] = v30;
            v27 = *(v27 + 24);
            v26 = v30;
          }

          while (v27);
        }
      }

      v33 = v23++ == v5;
    }

    while (!v33);
  }

  if ((v5 & 0x80000000) == 0)
  {
    v34 = *(this + 12);
    v35 = v5 & 0x7FFFFFFF;
    do
    {
      for (j = *(v34 + 8 * v35); j; j = *(j + 2))
      {
        j[13] = 0.0;
        v37 = *(j + 4);
        if (v37)
        {
          v38 = 0.0;
          v39 = *(j + 4);
          do
          {
            v40 = *(v39 + 32);
            v41 = *(*v39 + 104);
            v42 = v40 + v41;
            if (v39 != v37)
            {
              if (v42 >= v38)
              {
                v43 = v38;
              }

              else
              {
                v43 = v40 + v41;
              }

              if (v38 >= v42)
              {
                v42 = v38;
              }

              if (v42 <= v43 + 50.0)
              {
                v44 = exp(v43 - v42);
                v42 = v42 + log(v44 + 1.0);
              }
            }

            j[13] = v42;
            v39 = *(v39 + 8);
            v38 = v42;
          }

          while (v39);
        }
      }

      v19 = v35-- <= 0;
    }

    while (!v19);
  }

  v45 = *(v20 + 8 * v5);
  if (!v45)
  {
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/learner_tagger.cpp", 68);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "(", 1);
    v49 = MEMORY[0x29C29A250](v48, 408);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ") [", 3);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "node != nullptr", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "] ", 2);
    MeCab::die::~die(&v72);
  }

  v46 = *(v45 + 96);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = *(this + 9);
    do
    {
      for (k = *(v53 + 8 * v52); k; k = *(k + 24))
      {
        for (m = *(k + 40); m; m = *(m + 3))
        {
          v56 = *m;
          if (*(*m + 32) || *(*&v56 + 87) == 3)
          {
            v57 = *(m + 2);
            if (*(v57 + 40) || *(v57 + 87) == 2)
            {
              v58 = exp(*(v57 + 96) + m[4] + *(*&v56 + 104) - v46);
              v59 = *(m + 5);
              v60 = *v59;
              if (*v59 != -1)
              {
                v61 = v59 + 1;
                do
                {
                  a2[v60] = v58 + a2[v60];
                  v62 = *v61++;
                  v60 = v62;
                }

                while (v62 != -1);
              }

              if (*(*&v56 + 87) != 3)
              {
                v63 = *(*&v56 + 128);
                v64 = *v63;
                if (*v63 != -1)
                {
                  v65 = v63 + 1;
                  do
                  {
                    a2[v64] = v58 + a2[v64];
                    v66 = *v65++;
                    v64 = v66;
                  }

                  while (v66 != -1);
                }
              }
            }
          }
        }
      }

      v33 = v52++ == v5;
    }

    while (!v33);
  }

  v67 = *(this + 17);
  v68 = *(this + 18) - v67;
  if (v68)
  {
    v69 = v68 >> 3;
    if (v69 <= 1)
    {
      v69 = 1;
    }

    do
    {
      v70 = *v67++;
      v46 = v46 - *(v70 + 32);
      --v69;
    }

    while (v69);
  }

  return v46;
}

char *MeCab::repeat_find_if<char const*,char>(char *result, char *a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = a3;
    while (1)
    {
      v7 = memchr(result, v6, a2 - result);
      v8 = v7 ? v7 : a2;
      if (v8 == a2)
      {
        break;
      }

      result = v8 + 1;
      if (!--v4)
      {
        return v8;
      }
    }

    return a2;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mecab_learner_path_t *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double MeCab::FreeList<mecab_learner_node_t>::alloc(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x90uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = (v5 + 144 * v3);
  result = 0.0;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  return result;
}

void MeCab::FreeList<mecab_learner_path_t>::~FreeList(void *a1)
{
  MeCab::FreeList<mecab_learner_path_t>::~FreeList(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::FreeList<mecab_learner_path_t>::~FreeList(void *a1)
{
  *a1 = &unk_2A1F35120;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29A350](v2[v5], 0x1070C805CA89F8DLL);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

BOOL MeCab::compressReading(std::string *a1)
{
  if (a1)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    memset(&v10, 0, sizeof(v10));
    std::string::reserve(&v10, size);
    v3 = a1;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = a1->__r_.__value_.__r.__words[0];
    }

    v4 = size >> 1;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if (size >= 1)
    {
      bzero(v5, size);
    }

    if (size >= 2)
    {
      v6 = size >> 1;
      v7 = v5;
      do
      {
        data_low = LOWORD(v3->__r_.__value_.__l.__data_);
        v3 = (v3 + 2);
        v7->__r_.__value_.__s.__data_[0] = MeCab::internal::encodeChar(data_low);
        v7 = (v7 + 1);
        --v6;
      }

      while (v6);
    }

    std::string::__assign_external(a1, v5, v4);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return a1 != 0;
}

void sub_29915E8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MeCab::internal::encodeChar(int a1)
{
  if (a1 > 96)
  {
    if (a1 > 251)
    {
      switch(a1)
      {
        case 252:
          return 66;
        case 12539:
          return -103;
        case 12540:
          return -102;
      }
    }

    else if ((a1 - 97) < 0x1A)
    {
      return (a1 - 57);
    }
  }

  else if (a1 <= 64)
  {
    if (a1 <= 47)
    {
      switch(a1)
      {
        case '*':
          return 1;
        case '+':
          return 2;
        case ',':
          return 3;
      }
    }

    else if ((a1 - 48) < 0xA)
    {
      return (a1 - 44);
    }
  }

  else if ((a1 - 65) < 0x1A)
  {
    return (a1 - 51);
  }

  v1 = a1 + 2;
  if ((a1 - 12353) >= 0x56)
  {
    return 0;
  }

  return v1;
}

uint64_t mecab_dict_index(int a1, char **a2)
{
  MEMORY[0x29C29A2E0](&v70);
  MeCab::Param::Param(v87);
  if (MeCab::Param::open(v87, a1, a2, &MeCab::DictionaryComplier::run(int,char **)::long_options))
  {
    if (!MeCab::Param::help_version(v87))
    {
LABEL_123:
      v32 = 0;
      goto LABEL_124;
    }

    MeCab::Param::get<std::string>(v87, "dicdir", &v86);
    MeCab::Param::get<std::string>(v87, "outdir", &v85);
    v4 = MeCab::Param::get<BOOL>(v87, "build-unknown");
    v5 = MeCab::Param::get<BOOL>(v87, "build-matrix");
    v6 = MeCab::Param::get<BOOL>(v87, "quantize");
    v7 = MeCab::Param::get<BOOL>(v87, "compress-feature");
    MeCab::Param::get<std::string>(v87, "language", &v84);
    v8 = MeCab::Param::get<BOOL>(v87, "build-charcategory");
    v9 = MeCab::Param::get<BOOL>(v87, "build-sysdic");
    v10 = MeCab::Param::get<BOOL>(v87, "build-model");
    v11 = MeCab::Param::get<BOOL>(v87, "assign-user-dictionary-costs");
    MeCab::Param::get<std::string>(v87, "userdic", &v83);
    v82 = 0;
    WORD2(v82) = 0;
    BYTE6(v82) = 0;
    if (v6)
    {
      BYTE4(v82) = 1;
    }

    if (v7)
    {
      *(&v82 + 5) = 257;
    }

    v81 = 0;
    v80 = v81;
    std::string::basic_string[abi:ne200100]<0>(&v77, "dicrc");
    MeCab::create_filename(&v86, &v77, &v91);
    if (SHIBYTE(v91.__end_) >= 0)
    {
      first = &v91;
    }

    else
    {
      first = v91.__first_;
    }

    if (!MeCab::Param::load(v87, first))
    {
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_compiler.cpp", 73);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "(", 1);
      v15 = MEMORY[0x29C29A250](v14, 122);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ") [", 3);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "param.load(DCONF(DICRC))", 24);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "] ", 2);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "no such file or directory: ", 27);
      std::string::basic_string[abi:ne200100]<0>(&v75, "dicrc");
      p_p = &__p;
      MeCab::create_filename(&v86, &v75, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v21 = strlen(p_p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, p_p, v21);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      MeCab::die::~die(v73);
    }

    if (SHIBYTE(v91.__end_) < 0)
    {
      operator delete(v91.__first_);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v77);
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (v89 != v88)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 3);
        if (v23 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__vallocate[abi:ne200100](&v77, v23);
        }

        std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v86;
      }

      else
      {
        v33 = v86.__r_.__value_.__r.__words[0];
      }

      MeCab::enum_csv_dictionaries(v33, &v77);
    }

    v34 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v83.__r_.__value_.__l.__size_;
    }

    if (v34)
    {
      if (v78 == v77)
      {
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_compiler.cpp", 73);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
        v37 = MEMORY[0x29C29A250](v36, 133);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") [", 3);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "dic.size()", 10);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "no dictionaries are specified", 29);
        MeCab::die::~die(&v91);
      }

      LODWORD(v91.__first_) = 1;
      MeCab::Param::set<int>(v87, "type", &v91, 1);
      if (v11)
      {
        MeCab::Dictionary::assignUserDictionaryCosts(v87);
      }

      MeCab::Dictionary::compile();
    }

    if (v4)
    {
LABEL_49:
      std::string::basic_string[abi:ne200100]<0>(&__p, "char.def");
      v41 = &v91;
      MeCab::create_filename(&v86, &__p, &v91);
      if (SHIBYTE(v91.__end_) < 0)
      {
        v41 = v91.__first_;
      }

      std::string::basic_string[abi:ne200100]<0>(v73, "unk.def");
      v42 = &v75;
      MeCab::create_filename(&v86, v73, &v75);
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v75.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(v71, "char.bin");
      MeCab::create_filename(&v85, v71, &v72);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v72;
      }

      else
      {
        v44 = v72.__r_.__value_.__r.__words[0];
      }

      MeCab::CharProperty::compile(v41, v42, v44, v43);
    }

    if (v5)
    {
      if (v8)
      {
        goto LABEL_49;
      }

      v56 = 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if ((v8 & 1) != 0 || ((v9 | v10) & 1) == 0)
      {
        goto LABEL_49;
      }

      v56 = 0;
      if (!(v10 & 1 | ((v9 & 1) == 0)))
      {
LABEL_90:
        if (v9)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v56)
        {
          if (!v6)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "matrix.def");
            v66 = &v91;
            MeCab::create_filename(&v86, &__p, &v91);
            if (SHIBYTE(v91.__end_) < 0)
            {
              v66 = v91.__first_;
            }

            std::string::basic_string[abi:ne200100]<0>(v73, "matrix.bin");
            MeCab::create_filename(&v85, v73, &v75);
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v75;
            }

            else
            {
              v68 = v75.__r_.__value_.__r.__words[0];
            }

            MeCab::Connector::compile(v66, v68, v67);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "matrix.def");
          v63 = &v91;
          MeCab::create_filename(&v86, &__p, &v91);
          if (SHIBYTE(v91.__end_) < 0)
          {
            v63 = v91.__first_;
          }

          std::string::basic_string[abi:ne200100]<0>(v73, "matrix.bin");
          MeCab::create_filename(&v85, v73, &v75);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = &v75;
          }

          else
          {
            v65 = v75.__r_.__value_.__r.__words[0];
          }

          MeCab::QuantizedConnector::compile(v63, v65, v64);
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          if (v74 < 0)
          {
            operator delete(v73[0]);
          }

          if (SHIBYTE(v91.__end_) < 0)
          {
            operator delete(v91.__first_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "\ndone!\n", 7);
        v91.__first_ = &v77;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v91);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        goto LABEL_123;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "model.def");
    MeCab::create_filename(&v86, &__p, &v91);
    if (SHIBYTE(v91.__end_) >= 0)
    {
      v46 = &v91;
    }

    else
    {
      v46 = v91.__first_;
    }

    v47 = MeCab::file_exists(v46, v45);
    if (SHIBYTE(v91.__end_) < 0)
    {
      operator delete(v91.__first_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "model.def");
      v48 = &v91;
      MeCab::create_filename(&v86, &__p, &v91);
      if (SHIBYTE(v91.__end_) < 0)
      {
        v48 = v91.__first_;
      }

      std::string::basic_string[abi:ne200100]<0>(v73, "model.bin");
      MeCab::create_filename(&v85, v73, &v75);
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v75;
      }

      else
      {
        v50 = v75.__r_.__value_.__r.__words[0];
      }

      MeCab::FeatureIndex::compile(v87, v48, v50, v49);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "model.def");
    v51 = &v91;
    MeCab::create_filename(&v86, &__p, &v91);
    if (SHIBYTE(v91.__end_) < 0)
    {
      v51 = v91.__first_;
    }

    v52 = strlen(v51);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v51, v52);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " is not found. skipped.", 23);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(&v75, MEMORY[0x29EDC93D0]);
    (v55->__vftable[2].~facet_0)(v55, 10);
    std::locale::~locale(&v75);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v91.__end_) < 0)
    {
      operator delete(v91.__first_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
LABEL_91:
      if (v78 == v77)
      {
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary_compiler.cpp", 73);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "(", 1);
        v59 = MEMORY[0x29C29A250](v58, 174);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ") [", 3);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "dic.size()", 10);
        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "] ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "no dictionaries are specified", 29);
        MeCab::die::~die(&v91);
      }

      LODWORD(v91.__first_) = 0;
      MeCab::Param::set<int>(v87, "type", &v91, 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "sys.dic");
      MeCab::create_filename(&v85, &__p, &v91);
      MeCab::Dictionary::compile();
    }

    goto LABEL_84;
  }

  v24 = MeCab::whatlog::str(&v90);
  std::string::basic_string[abi:ne200100]<0>(&v91, v24);
  if (SHIBYTE(v91.__end_) >= 0)
  {
    v25 = &v91;
  }

  else
  {
    v25 = v91.__first_;
  }

  if (SHIBYTE(v91.__end_) >= 0)
  {
    end_high = HIBYTE(v91.__end_);
  }

  else
  {
    end_high = v91.__begin_;
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], v25, end_high);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n\n", 2);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\ntry '--help' for more information.", 35);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v86, MEMORY[0x29EDC93D0]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v86);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v91.__end_) < 0)
  {
    operator delete(v91.__first_);
  }

  v32 = 0xFFFFFFFFLL;
LABEL_124:
  MeCab::Param::~Param(v87);
  std::ios_base::Init::~Init(&v70);
  return v32;
}

void sub_29915F7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, std::locale a61, uint64_t a62, int a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v67 - 105) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  a31 = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61.__locale_);
  }

  MeCab::Param::~Param(&a67);
  std::ios_base::Init::~Init(&a12);
  _Unwind_Resume(a1);
}

uint64_t MeCab::Param::get<BOOL>(uint64_t a1, char *a2)
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
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29A1A0](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = std::ws[abi:ne200100]<char,std::char_traits<char>>(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
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

  return v11 & 1;
}

void sub_29915FE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MeCab::anonymous namespace::toLanguage(void **a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145E0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E0E0))
  {
    operator new();
  }

  v2 = _MergedGlobals + 8;
  v3 = *(_MergedGlobals + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = _MergedGlobals + 8;
  do
  {
    v5 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a1);
    if ((v5 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v3 = *(v3 + ((v5 >> 4) & 8));
  }

  while (v3);
  if (v4 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (v4 + 32)) & 0x80) != 0)
  {
LABEL_9:
    v4 = v2;
  }

  if (_MergedGlobals + 8 == v4)
  {
    result = 0;
  }

  else
  {
    result = *(v4 + 56);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991600D4(_Unwind_Exception *a1)
{
  v4 = (v2 + 151);
  v5 = -160;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 32;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x29C29A380](v1, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_2A145E0E0);
      _Unwind_Resume(a1);
    }
  }
}

void MeCab::Param::set<int>(uint64_t a1, char *a2, unsigned int *a3, char a4)
{
  v28[2] = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(v18, a2);
  if ((a4 & 1) != 0 || a1 + 16 == std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 8, v18))
  {
    v7 = *a3;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
    __p = 0;
    v21 = 0uLL;
    v8 = MEMORY[0x29C29A250](&v23, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0 || (v9 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22, &__p), (*(v9 + *(*v9 - 24) + 32) & 5) != 0) || (v10 = std::ws[abi:ne200100]<char,std::char_traits<char>>(v22), (*(v10 + *(*v10 - 24) + 32) & 2) == 0))
    {
      operator new();
    }

    v16 = __p;
    v28[0] = v21;
    *(v28 + 7) = *(&v21 + 7);
    v17 = HIBYTE(v21);
    v22[0] = *MEMORY[0x29EDC9528];
    v11 = *(MEMORY[0x29EDC9528] + 72);
    *(v22 + *(v22[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    v23 = v11;
    v24 = MEMORY[0x29EDC9570] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29A320](&v27);
    v22[0] = v18;
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, v18);
    v13 = v12;
    if (*(v12 + 79) < 0)
    {
      operator delete(*(v12 + 56));
    }

    v14 = v28[0];
    *(v13 + 56) = v16;
    *(v13 + 64) = v14;
    *(v13 + 71) = *(v28 + 7);
    *(v13 + 79) = v17;
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_2991604BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MeCab::scoped_ptr<BOOL>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35580;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29A380](v2, 0x1000C4077774924);
  }

  return a1;
}

void MeCab::scoped_ptr<BOOL>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35580;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29A380](v1, 0x1000C4077774924);
  }

  JUMPOUT(0x29C29A380);
}

void *std::map<std::string,MeCab::Language>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[4 * a3];
    do
    {
      v7 = a1[1];
      if (*a1 == v4)
      {
        v9 = v4;
      }

      else
      {
        v8 = v4;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, v5);
        v7 = *v4;
        if ((v11 & 0x80) == 0)
        {
          if (v7)
          {
            v12 = v4;
            do
            {
              while (1)
              {
                v13 = v7;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (v7 + 32)) & 0x80) == 0)
                {
                  break;
                }

                v7 = *v13;
                v12 = v13;
                if (!*v13)
                {
                  goto LABEL_21;
                }
              }

              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13 + 4, v5) & 0x80) == 0)
              {
                goto LABEL_20;
              }

              v12 = v13 + 1;
              v7 = v13[1];
            }

            while (v7);
          }

LABEL_21:
          operator new();
        }
      }

      if (!v7)
      {
        goto LABEL_21;
      }

      v12 = v9 + 1;
LABEL_20:
      if (!*v12)
      {
        goto LABEL_21;
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_2991607A0(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__tree<std::__value_type<std::string,MeCab::CharInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::CharInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::CharInfo>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x29C29A170](&v20, a1, 0);
  if (v20 != 1)
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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_299160A08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x2991609C8);
  }

  __cxa_rethrow();
}

MeCab::Dictionary *MeCab::Dictionary::Dictionary(MeCab::Dictionary *this)
{
  *this = &unk_2A1F357B0;
  MeCab::Mmap<char>::Mmap(this + 8);
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](this + 54);
  *(this + 89) = 0;
  *(this + 696) = 0u;
  marisa::Trie::Trie(this + 91);
  return this;
}

void sub_299160B2C(_Unwind_Exception *a1)
{
  MeCab::whatlog::~whatlog((v1 + 432));
  if (*(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  MeCab::Mmap<char>::~Mmap(v1 + 8);
  _Unwind_Resume(a1);
}

void MeCab::Dictionary::~Dictionary(MeCab::Dictionary *this)
{
  *this = &unk_2A1F357B0;
  btrie_close(*(this + 45));
  *(this + 45) = 0;
  MeCab::Mmap<char>::close(this + 8);
  marisa::Trie::~Trie((this + 728));
  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(this + 54) = *MEMORY[0x29EDC9538];
  *(this + *(v3 - 24) + 432) = *(v2 + 24);
  *(this + 55) = MEMORY[0x29EDC9570] + 16;
  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  *(this + 55) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(this + 56);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](this + 544);
  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  MeCab::Mmap<char>::~Mmap(this + 8);
}

{
  MeCab::Dictionary::~Dictionary(this);

  JUMPOUT(0x29C29A380);
}

int *MeCab::Dictionary::commonPrefixSearch(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unint64_t a5, uint8x8_t a6)
{
  result = *(a1 + 360);
  if (result)
  {
    v7 = 0;
    return v7;
  }

  return result;
}

uint64_t MeCab::Dictionary::exactMatchSearch(MeCab::Dictionary *this, char *__s)
{
  v2 = *(this + 45);
  if (v2)
  {
    v4 = strlen(__s);
    btrie_exact_match_search(v2, __s, v4, v5);
  }

  return 0;
}

uint64_t MeCab::Dictionary::open(MeCab::Dictionary *this, std::string::value_type *a2, char *a3)
{
  btrie_close(*(this + 45));
  *(this + 45) = 0;
  MeCab::Mmap<char>::close(this + 8);
  std::string::__assign_external(this + 17, a2);
  if ((MeCab::Mmap<char>::open(this + 8, a2, a3) & 1) == 0)
  {
    std::ios_base::clear((this + *(*(this + 54) - 24) + 432), 0);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 54, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 166);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "dmmap_.open(file, mode)", 23);
    v17 = "no such file or directory: ";
LABEL_20:
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v17, 27);
    v35 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, a2, v35);
    return 0;
  }

  v6 = *(this + 3);
  if (v6 <= 0x63)
  {
    std::ios_base::clear((this + *(*(this + 54) - 24) + 432), 0);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 54, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "(", 1);
    v20 = MEMORY[0x29C29A250](v19, 169);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ") [", 3);
    v22 = "dmmap_.size() >= 100";
    v23 = 20;
LABEL_19:
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    v17 = "dictionary file is broken: ";
    goto LABEL_20;
  }

  v7 = *(this + 2);
  if (v6 != (*v7 ^ 0xEF718F77))
  {
    std::ios_base::clear((this + *(*(this + 54) - 24) + 432), 0);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 54, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "(", 1);
    v26 = MEMORY[0x29C29A250](v25, 180);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ") [", 3);
    v22 = "(magic ^ DictionaryMagicID) == dmmap_.size()";
    v23 = 44;
    goto LABEL_19;
  }

  *(this + 96) = v7[1];
  *(this + 97) = v7[2];
  *(this + 98) = v7[3];
  *(this + 99) = v7[4];
  *(this + 100) = v7[5];
  v8 = v7[6];
  v9 = v7[7];
  v11 = v7[8];
  v10 = v7[9];
  if ((v10 & 0x3FFFFF) != 0)
  {
    if (*(this + 180))
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(this + 180) = v10 >> 28;
    *(this + 724) = (v10 >> 26) & 3;
    *(this + 725) = HIBYTE(v10) & 3;
    *(this + 726) = (v10 >> 22) & 3;
    if (v10 >> 28)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 431) < 0)
  {
    v37 = *(this + 52);
    if (v37 == 36)
    {
      v50 = *(this + 51);
      if (!memcmp(v50, "/usr/share/tokenizer/zh/Hans/sys.dic", 0x24uLL))
      {
        v49 = 2;
      }

      else
      {
        if (memcmp(v50, "/usr/share/tokenizer/zh/Hant/sys.dic", 0x24uLL))
        {
          goto LABEL_12;
        }

        v49 = 3;
      }
    }

    else
    {
      if (v37 != 31)
      {
        goto LABEL_12;
      }

      v38 = *(this + 51);
      if (*v38 == 0x6168732F7273752FLL && v38[1] == 0x6E656B6F742F6572 && v38[2] == 0x2F616A2F72657A69 && *(v38 + 23) == 0x6369642E7379732FLL)
      {
        v49 = 1;
      }

      else
      {
        v42 = *v38;
        v43 = v38[1];
        v44 = v38[2];
        v45 = *(v38 + 23);
        if (v42 != 0x6168732F7273752FLL || v43 != 0x6E656B6F742F6572 || v44 != 0x2F6F6B2F72657A69 || v45 != 0x6369642E7379732FLL)
        {
          goto LABEL_12;
        }

        v49 = 5;
      }
    }

    *(this + 180) = v49;
  }

LABEL_12:
  *(this + 47) = v7 + 10;
  btrie_open(0, 0, v7 + 18, v8);
  *(this + 44) = v7 + v8 + 72;
  *(this + 45) = v27;
  v28 = v7 + v8 + v9 + 72;
  if (v11)
  {
    *(this + 46) = v28;
  }

  v29 = &v28[v11];
  if (*(this + 725) == 1 && *(this + 726) == 1)
  {
    marisa::Trie::map(this + 91, *(this + 46), v11);
  }

  if (v29 != (*(this + 2) + *(this + 3)))
  {
    std::ios_base::clear((this + *(*(this + 54) - 24) + 432), 0);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 54, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
    v32 = MEMORY[0x29C29A250](v31, 222);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") [", 3);
    v22 = "ptr == dmmap_.end()";
    v23 = 19;
    goto LABEL_19;
  }

  return 1;
}

void MeCab::Dictionary::assignUserDictionaryCosts(const MeCab::Param *a1)
{
  v58 = *MEMORY[0x29EDCA608];
  MeCab::Connector::Connector(v55);
  v54[1] = 0;
  v54[0] = 0;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v53 = v54;
  MeCab::FeatureIndex::FeatureIndex(v48);
  v48[0] = &unk_2A1F352E8;
  MeCab::Mmap<char>::Mmap(v49);
  v50 = 0;
  *&v49[344] = 0u;
  v43[0] = 0;
  v42 = v43;
  v44[1] = 0;
  v44[0] = 0;
  v43[1] = 0;
  v43[2] = v44;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  MeCab::CharProperty::CharProperty(v41);
  MeCab::Param::get<std::string>(a1, "dicdir", &v40);
  std::string::basic_string[abi:ne200100]<0>(__p, "matrix.def");
  MeCab::create_filename(&v40, __p, &v39);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "matrix.bin");
  MeCab::create_filename(&v40, __p, &v38);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "left-id.def");
  MeCab::create_filename(&v40, __p, &v37);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "right-id.def");
  MeCab::create_filename(&v40, __p, &v36);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rewrite.def");
  MeCab::create_filename(&v40, __p, &v35);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  MeCab::Param::get<std::string>(a1, "dictionary-charset", &__str);
  if (MeCab::Param::get<int>(a1, "cost-factor") <= 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(", 1);
    v4 = MEMORY[0x29C29A250](v3, 257);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") [", 3);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "factor > 0", 10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "cost factor needs to be positive value", 38);
    MeCab::die::~die(__p);
  }

  MeCab::Param::get<std::string>(a1, "config-charset", &v33);
  size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v33, &__str);
  }

  v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __str.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
    v12 = MEMORY[0x29C29A250](v11, 264);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") [", 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "!from.empty()", 13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "input dictionary charset is empty", 33);
    MeCab::die::~die(__p);
  }

  v32[0] = &unk_2A1F35220;
  v32[1] = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = v33.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (!MeCab::Iconv::open(v32, v16, p_str))
  {
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "(", 1);
    v20 = MEMORY[0x29C29A250](v19, 267);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ") [", 3);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "config_iconv.open(config_charset.c_str(), from.c_str())", 55);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "] ", 2);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "iconv_open() failed with from=", 30);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v33;
    }

    else
    {
      v25 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v33.__r_.__value_.__l.__size_;
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " to=", 4);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__str;
    }

    else
    {
      v29 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __str.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    MeCab::die::~die(__p);
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v35;
  }

  else
  {
    v31 = v35.__r_.__value_.__r.__words[0];
  }

  MeCab::DictionaryRewriter::open(v51, v31, v32);
  MeCab::DecoderFeatureIndex::open(v48, a1);
}

void sub_299162534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  MeCab::CharProperty::~CharProperty(&a77);
  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  if (SLOBYTE(STACK[0x48F]) < 0)
  {
    operator delete(STACK[0x478]);
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(&STACK[0x460], STACK[0x468]);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(&STACK[0x448], STACK[0x450]);
  STACK[0x4A8] = a10;
  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(STACK[0x758]);
  }

  MeCab::Mmap<char>::~Mmap(&STACK[0x600]);
  MeCab::FeatureIndex::~FeatureIndex(&STACK[0x4A8]);
  std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(v77 + 72, STACK[0x7D0]);
  STACK[0x4A8] = &STACK[0x7B0];
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4A8]);
  STACK[0x4A8] = &STACK[0x798];
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4A8]);
  STACK[0x4A8] = &STACK[0x780];
  std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4A8]);
  MeCab::Connector::~Connector(&STACK[0x7E8]);
  _Unwind_Resume(a1);
}

void MeCab::anonymous namespace::calcCost(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    if (a5)
    {
      if (!a6)
      {
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "(", 1);
        v18 = MEMORY[0x29C29A250](v17, 83);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") [", 3);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "property", 8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] ", 2);
        MeCab::die::~die(v33);
      }

      v32 = 0;
      v36 = 0;
      v34 = v37;
      v31 = v37;
      v37[2] = &v30;
      v37[0] = v33;
      v21 = a1[23];
      v22 = *(a1 + 1);
      v23 = v21 < 0;
      if (v21 >= 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = *a1;
      }

      if (!v23)
      {
        v22 = a1[23];
      }

      if ((*(a6 + 384) - 3) > 2)
      {
        v26 = *v24;
        if (*v24 < 0)
        {
          if (v22 >= 2 && (v26 & 0xE0) == 0xC0)
          {
            v25 = v24[1] & 0x3F | ((v26 & 0x1F) << 6);
          }

          else
          {
            v25 = 0;
            if (v22 >= 3 && (v26 & 0xF0) == 0xE0)
            {
              v25 = (v26 << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
            }
          }
        }

        else
        {
          v25 = *v24;
        }
      }

      else if (v22 < 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v24;
      }

      v35 = *(*(a6 + 376) + 4 * v25) >> 18;
      memset(&v29, 0, sizeof(v29));
      memset(&v28, 0, sizeof(v28));
      memset(&__p, 0, sizeof(__p));
      MeCab::DictionaryRewriter::rewrite2(a5, a2, &v29, &v28, &__p);
      MeCab::FeatureIndex::buildUnigramFeature();
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "(", 1);
    v13 = MEMORY[0x29C29A250](v12, 82);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") [", 3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "rewriter", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] ", 2);
    MeCab::die::~die(v33);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
  v8 = MEMORY[0x29C29A250](v7, 81);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") [", 3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "fi", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
  MeCab::die::~die(v33);
}

void sub_299162D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
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

  _Unwind_Resume(exception_object);
}

void MeCab::Dictionary::compile()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v106 = *MEMORY[0x29EDCA608];
  MeCab::Connector::Connector(v102);
  v100 = &unk_2A1F35620;
  v101 = 0;
  v98 = &unk_2A1F35640;
  v99 = 0;
  v96 = &unk_2A1F35D18;
  v97 = 0;
  v94 = &unk_2A1F355C0;
  v95 = 0;
  v92 = &unk_2A1F35600;
  v93 = 0;
  v90 = &unk_2A1F35D78;
  v91 = 0;
  v88 = &unk_2A1F35680;
  v89 = 0;
  v86 = &unk_2A1F35D48;
  v87 = 0;
  MeCab::Param::get<std::string>(v3, "dicdir", &v85);
  std::string::basic_string[abi:ne200100]<0>(&__dst, "matrix.def");
  MeCab::create_filename(&v85, &__dst, &v84);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "matrix.bin");
  MeCab::create_filename(&v85, &__dst, &v83);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "left-id.def");
  MeCab::create_filename(&v85, &__dst, &v82);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "right-id.def");
  MeCab::create_filename(&v85, &__dst, &v81);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "rewrite.def");
  MeCab::create_filename(&v85, &__dst, &v80);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "pos-id.def");
  MeCab::create_filename(&v85, &__dst, &v79);
  if (v105 < 0)
  {
    operator delete(__dst.__locale_);
  }

  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v72 = 0;
  memset(&v71, 0, sizeof(v71));
  memset(&v70, 0, sizeof(v70));
  MeCab::Param::get<std::string>(v3, "dictionary-charset", &__str);
  MeCab::Param::get<std::string>(v3, "charset", &v68);
  MeCab::Param::get<BOOL>(v3, "wakati");
  v67 = MeCab::Param::get<int>(v3, "type");
  MeCab::Param::get<std::string>(v3, "node-format", &v66);
  if (MeCab::Param::get<int>(v3, "cost-factor") <= 0)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x29C29A250](v5, 361);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") [", 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "factor > 0", 10);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "cost factor needs to be positive value", 38);
    MeCab::die::~die(&__dst);
  }

  MeCab::Param::get<std::string>(v3, "config-charset", &v65);
  size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v65.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v65, &__str);
  }

  v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __str.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
    v14 = MEMORY[0x29C29A250](v13, 369);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") [", 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "!from.empty()", 13);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "input dictionary charset is empty", 33);
    MeCab::die::~die(&__dst);
  }

  v18 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v68.__r_.__value_.__l.__size_;
  }

  if (!v18)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "(", 1);
    v21 = MEMORY[0x29C29A250](v20, 370);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") [", 3);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "!to.empty()", 11);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "output dictionary charset is empty", 34);
    MeCab::die::~die(&__dst);
  }

  v25 = *v2;
  v26 = v2[4];
  if (v2[5] == 1)
  {
    v27 = v2[6] == 1;
  }

  marisa::Trie::Trie(&v63);
  marisa::Agent::Agent(&v64);
  v62[0] = &unk_2A1F35220;
  memset(&v62[1], 0, 32);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v68;
  }

  else
  {
    v29 = v68.__r_.__value_.__r.__words[0];
  }

  if (!MeCab::Iconv::open(v62, p_str, v29))
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
    v32 = MEMORY[0x29C29A250](v31, 385);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") [", 3);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "iconv.open(from.c_str(), to.c_str())", 36);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "] ", 2);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "iconv_open() failed with from=", 30);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__str;
    }

    else
    {
      v37 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __str.__r_.__value_.__l.__size_;
    }

    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " to=", 4);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v68;
    }

    else
    {
      v41 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v68.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
    MeCab::die::~die(&__dst);
  }

  v61[0] = &unk_2A1F35220;
  v61[1] = 0;
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v65;
  }

  else
  {
    v43 = v65.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &__str;
  }

  else
  {
    v44 = __str.__r_.__value_.__r.__words[0];
  }

  if (!MeCab::Iconv::open(v61, v43, v44))
  {
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/dictionary.cpp", 64);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "(", 1);
    v47 = MEMORY[0x29C29A250](v46, 389);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ") [", 3);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "config_iconv.open(config_charset.c_str(), from.c_str())", 55);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "] ", 2);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "iconv_open() failed with from=", 30);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v65;
    }

    else
    {
      v52 = v65.__r_.__value_.__r.__words[0];
    }

    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v65.__r_.__value_.__l.__size_;
    }

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " to=", 4);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &__str;
    }

    else
    {
      v56 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = __str.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
    MeCab::die::~die(&__dst);
  }

  v58 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v58 = v66.__r_.__value_.__l.__size_;
  }

  if (v58)
  {
    operator new();
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v84;
  }

  else
  {
    v59 = v84.__r_.__value_.__r.__words[0];
  }

  if (!MeCab::Connector::openText(v102, v59))
  {
    v60 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
    if ((MeCab::Connector::open(v102, v60, "r") & 1) == 0)
    {
      v103 = 65537;
    }
  }

  operator new();
}

void sub_299166954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void **a63)
{
  MEMORY[0x29C29A220](&STACK[0x800]);
  std::ofstream::~ofstream(&STACK[0x810], MEMORY[0x29EDC9520]);
  MEMORY[0x29C29A320](&STACK[0x9B0]);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v75 + 23) < 0)
  {
    operator delete(*v75);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  a63 = *MEMORY[0x29EDC9530];
  *(&a63 + *(a63 - 3)) = *(MEMORY[0x29EDC9530] + 24);
  a65 = MEMORY[0x29EDC9570] + 16;
  if (a73 < 0)
  {
    operator delete(a72);
  }

  a65 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&a66);
  std::istream::~istream();
  MEMORY[0x29C29A320](&a74);
  MeCab::Iconv::~Iconv(&STACK[0x298]);
  MeCab::Iconv::~Iconv(&STACK[0x2A8]);
  a63 = &STACK[0x2B8];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a63);
  marisa::Agent::~Agent(&STACK[0x2D8]);
  marisa::Trie::~Trie(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

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

  a63 = &STACK[0x3A8];
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a63);
  a63 = &STACK[0x3C0];
  std::vector<std::pair<std::string,mecab_token_t *>>::__destroy_vector::operator()[abi:ne200100](&a63);
  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  v74[14] = a18;
  v77 = v74[15];
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v74[16] = a14;
  v78 = v74[17];
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v74[18] = a15;
  v79 = v74[19];
  if (v79)
  {
    (*(*v79 + 312))(v79);
  }

  v74[20] = a16;
  v80 = v74[21];
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  MeCab::scoped_ptr<MeCab::ContextID>::~scoped_ptr(&STACK[0x530]);
  v74[24] = a17;
  v81 = v74[25];
  if (v81)
  {
    (*(*v81 + 40))(v81);
  }

  MeCab::scoped_ptr<MeCab::POSIDGenerator>::~scoped_ptr(&STACK[0x550]);
  MeCab::scoped_ptr<MeCab::DictionaryRewriter>::~scoped_ptr(&STACK[0x560]);
  MeCab::Connector::~Connector(&STACK[0x570]);
  _Unwind_Resume(a1);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t MeCab::scoped_ptr<MeCab::DictionaryRewriter>::reset(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(v4 + 72, *(v4 + 80));
    v5 = (v4 + 48);
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v4 + 24);
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = v4;
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v5);
    result = MEMORY[0x29C29A380](v4, 0x1020C401749051DLL);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<MeCab::RewritePattern>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *MeCab::scoped_ptr<MeCab::CharProperty>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D48;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::StringBuffer>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35680;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::Lattice>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D78;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 312))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::Writer>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35600;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *MeCab::scoped_ptr<MeCab::DecoderFeatureIndex>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D18;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void MeCab::whatlog::~whatlog(std::locale *this)
{
  if (SHIBYTE(this[35].__locale_) < 0)
  {
    operator delete(this[33].__locale_);
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  this->__locale_ = *MEMORY[0x29EDC9538];
  *(this + *(v3 - 24)) = v2[3];
  this[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x29C29A320](&this[14]);
}

void marisa::Keyset::~Keyset(marisa::Keyset *this)
{
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(this + 6);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this + 3);

  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this);
}

void std::vector<std::pair<std::string,mecab_token_t *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void MeCab::scoped_ptr<MeCab::DictionaryRewriter>::~scoped_ptr(void *a1)
{
  MeCab::scoped_ptr<MeCab::DictionaryRewriter>::~scoped_ptr(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<MeCab::DictionaryRewriter>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35620;
  v2 = a1[1];
  if (v2)
  {
    std::__tree<std::__value_type<std::string,MeCab::FeatureSet>,std::__map_value_compare<std::string,std::__value_type<std::string,MeCab::FeatureSet>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MeCab::FeatureSet>>>::destroy(v2 + 72, *(v2 + 80));
    v4 = (v2 + 48);
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 24);
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = v2;
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x29C29A380](v2, 0x1020C401749051DLL);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::POSIDGenerator>::~scoped_ptr(void *a1)
{
  MeCab::scoped_ptr<MeCab::POSIDGenerator>::~scoped_ptr(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<MeCab::POSIDGenerator>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35640;
  v2 = a1[1];
  if (v2)
  {
    v4 = a1[1];
    std::vector<MeCab::RewritePattern>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x29C29A380](v2, 0x20C40960023A9);
  }

  return a1;
}

void MeCab::scoped_ptr<MeCab::DecoderFeatureIndex>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F35D18;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 40))(v1);
  }

  JUMPOUT(0x29C29A380);
}

void MeCab::scoped_ptr<MeCab::ContextID>::~scoped_ptr(void *a1)
{
  MeCab::scoped_ptr<MeCab::ContextID>::~scoped_ptr(a1);

  JUMPOUT(0x29C29A380);
}

void *MeCab::scoped_ptr<MeCab::ContextID>::~scoped_ptr(void *a1)
{
  *a1 = &unk_2A1F355C0;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v2 + 24, *(v2 + 32));
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x29C29A380](v2, 0x1032C40D2D3B4A1);
  }

  return a1;
}