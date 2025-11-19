void sub_2228888D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::exception a27)
{
  std::exception::~exception(&a27);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 + 184) == 1)
  {
    std::locale::~locale((v27 + 192));
    *(v27 + 184) = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(a10);
  if (*(v27 + 87) < 0)
  {
    operator delete(*a18);
  }

  v29 = *(v27 + 24);
  if (v29)
  {
    operator delete(v29);
  }

  __p = v27;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(std::string *this, std::string *__src, std::string *a3)
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
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, __src, a3, v7);
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

void sub_222888C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = v5 + 120 * a2;
      while (v4 != v13)
      {
        v4 -= 120;
        std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(v4);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0x222222222222222)
      {
        v10 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v5) >> 3);
        v11 = 0xDDDDDDDDDDDDDDDELL * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x111111111111111)
        {
          v12 = 0x222222222222222;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(v12);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0;
    v15 = v4 + 120 * v7;
    v16 = 120 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *(v4 + v14) = *a3;
      if (*(a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + v14 + 8), *(a3 + 8), *(a3 + 16));
      }

      else
      {
        v17 = *(a3 + 8);
        *(v4 + v14 + 24) = *(a3 + 24);
        *(v4 + v14 + 8) = v17;
      }

      v18 = v4 + v14;
      if (*(a3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 32), *(a3 + 32), *(a3 + 40));
      }

      else
      {
        v19 = *(a3 + 32);
        *(v18 + 48) = *(a3 + 48);
        *(v18 + 32) = v19;
      }

      v20 = v4 + v14;
      v21 = *(a3 + 56);
      *(v20 + 72) = *(a3 + 72);
      *(v20 + 56) = v21;
      *(v20 + 88) = 0;
      if (*(a3 + 88) == 1)
      {
        std::locale::locale((v20 + 96), (a3 + 96));
        *(v20 + 88) = 1;
      }

      v22 = *(a3 + 104);
      *(v20 + 112) = *(a3 + 112);
      *(v20 + 104) = v22;
      v14 += 120;
    }

    while (v16 != v14);
    a1[1] = v15;
  }
}

void sub_22288904C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t *a1)
{
  if (*(a1 + 60))
  {
    v3 = *a1;
    v2 = a1[1];
    if (v2 != *a1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        if (!a1[4] || (v6 = *(v3 + v4), (v6 & 0x80000000) != 0) || ((*(a1[3] + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
        {
          std::string::resize((v3 + v4 + 8), 0, 0);
          v3 = *a1;
          v2 = a1[1];
        }

        ++v5;
        v4 += 120;
      }

      while (v5 < 0xEEEEEEEEEEEEEEEFLL * ((v2 - v3) >> 3));
    }

    *(a1 + 13) = 0;
    *(a1 + 60) = 0;
    if (a1[4] && (v7 = *(a1 + 14), v7 >= 1))
    {
      v8 = 0;
      v9 = a1[3];
      while (((*(v9 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) != 0)
      {
        *(a1 + 13) = ++v8;
        if (v7 == v8)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v7) = v8;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
    LODWORD(v7) = *(a1 + 13);
  }

LABEL_18:
  v10 = *(a1 + 14);
  if (v7 >= v10)
  {
    if ((a1[11] & 4) != 0)
    {
      v19[0] = &unk_2835E6890;
      v19[1] = v7;
      v19[2] = v10;
      boost::throw_exception<boost::io::too_many_args>(v19);
    }
  }

  else
  {
    v12 = *a1;
    v11 = a1[1];
    if (v11 != *a1)
    {
      v13 = 0;
      do
      {
        if (*(v12 + 120 * v13) == *(a1 + 13))
        {
          *(a1 + 184);
          boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(v19, (a1 + 12));
        }

        ++v13;
      }

      while (v13 < 0xEEEEEEEEEEEEEEEFLL * ((v11 - v12) >> 3));
      LODWORD(v7) = *(a1 + 13);
    }
  }

  LODWORD(v14) = v7 + 1;
  *(a1 + 13) = v7 + 1;
  if (a1[4])
  {
    v15 = *(a1 + 14);
    if (v14 < v15)
    {
      v16 = a1[3];
      v14 = v14;
      v17 = v7 + 2;
      do
      {
        if (((*(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          break;
        }

        ++v14;
        *(a1 + 13) = v17++;
      }

      while (v15 != v14);
    }
  }

  return a1;
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[9] = 0;
  a1[3] = MEMORY[0x277D828C0] + 16;
  a1[1] = a2;
  operator new();
}

void sub_222889C7C(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  MEMORY[0x223DC4C10](v1);
  _Unwind_Resume(a1);
}

void boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(uint64_t a1, std::ios_base *this, const std::locale *a3)
{
  if (*(a1 + 32) == 1)
  {
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, (a1 + 40));
    std::locale::~locale(&v16);
    rdbuf = this->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(this->__rdbuf_, a1 + 40);
      std::locale::locale(&v15, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 40));
      std::locale::~locale(&v15);
    }

    v6 = &v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    std::ios_base::getloc(this);
    std::ios_base::imbue(this, a3);
    std::locale::~locale(&v16);
    v8 = this->__rdbuf_;
    if (v8)
    {
      (*(v8->__locale_ + 2))(this->__rdbuf_, a3);
      std::locale::locale(&v15, v8 + 1);
      std::locale::operator=(v8 + 1, a3);
      std::locale::~locale(&v15);
    }

    v6 = &v13;
  }

  std::locale::~locale(v6);
LABEL_10:
  if (*a1 != -1)
  {
    this->__width_ = *a1;
  }

  v9 = *(a1 + 8);
  if (v9 != -1)
  {
    this->__precision_ = v9;
  }

  v10 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (this[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(this);
      v11 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
      v12 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v16);
      this[1].__fmtflags_ = v12;
    }

    this[1].__fmtflags_ = v10;
  }

  this->__fmtflags_ = *(a1 + 20);
  std::ios_base::clear(this, *(a1 + 24));
  this->__exceptions_ = *(a1 + 28);
  std::ios_base::clear(this, this->__rdstate_);
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::overflow(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 48) = v4 + 1;
      *v4 = a2;
      return v2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v5 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  do
  {
    if (!__CFADD__(v8, v6))
    {
      operator new();
    }

    v9 = v8 >= 2;
    v8 >>= 1;
  }

  while (v9);
  memmove(0, v7, v6);
  if (*(a1 + 72) == 1)
  {
    operator delete(v7);
  }

  *(a1 + 72) = 1;
  v10 = *(a1 + 64) - v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48) - v11;
  v13 = v11 - v7;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(a1 + 56) = v6;
  *(a1 + 64) = v10;
  v16 = (v13 + v12);
  *(a1 + 40) = v13;
  *(a1 + 48) = v16;
  if ((*(a1 + 76) & 8) != 0)
  {
    v18 = v14 - v15;
    v17 = v16 + 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = v18;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v17 = 0;
  }

  *(a1 + 32) = v17;
  if (v16 == v6)
  {
    (*(*a1 + 104))(a1, v2);
  }

  else
  {
    *(a1 + 48) = v16 + 1;
    *v16 = v2;
  }

  return v2;
}

void *boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::clear_buffer(void *result)
{
  v1 = result;
  v17 = *MEMORY[0x277D85DE8];
  v2 = result[6];
  if (v2)
  {
    v3 = v2 == result[5];
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    result = (*(*result + 40))(v7, result, &v8, 16);
  }

  v4 = v1[3];
  if (v4)
  {
    v5 = v4 == v1[2];
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    result = (*(*v1 + 40))(v7, v1, &v8, 8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
    goto LABEL_13;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_14;
        }
      }

      goto LABEL_13;
    }
  }

  if ((a3 & 0x10) == 0)
  {
LABEL_13:
    v10 = -1;
    goto LABEL_14;
  }

  v10 = -1;
  if (v5 && (v4 & 0x8000000000000000) == 0)
  {
    v12 = a1[2];
    if (v4 <= a1[8] - v12)
    {
      v9 = v4 - v5 + v12;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

atomic_uint *boost::detail::sp_counted_base::release(atomic_uint *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v1 = this;
    v2 = this + 3;
    this = (*(*this + 16))(this);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return this;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    boost::detail::sp_counted_base::release(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(std::string *this, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = *(a2 + 13);
    v7 = *(a2 + 14);
    if (v6 < v7 && (a2[11] & 2) != 0)
    {
      v30[0] = &unk_2835E65D8;
      v30[1] = v6;
      v30[2] = v7;
      boost::throw_exception<boost::io::too_few_args>(v30);
    }

    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;
    v8 = *(a2 + 87);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = a2[9];
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * (v5 >> 3);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v4 + 56);
    do
    {
      v11 = *(v10 - 25);
      if (v11 < 0)
      {
        v11 = *(v10 - 5);
      }

      v12 = v11 + v8;
      if (*(v10 - 14) == -2 && v12 <= *v10)
      {
        v12 = *v10;
      }

      v13 = *(v10 - 1);
      if (v13 < 0)
      {
        v13 = *(v10 - 2);
      }

      v8 = v13 + v12;
      v10 += 15;
      --v9;
    }

    while (v9);
    std::string::reserve(this, v8);
    v14 = *(a2 + 87);
    if (v14 >= 0)
    {
      v15 = (a2 + 8);
    }

    else
    {
      v15 = a2[8];
    }

    if (v14 >= 0)
    {
      v16 = *(a2 + 87);
    }

    else
    {
      v16 = a2[9];
    }

    std::string::append(this, v15, v16);
    v17 = *a2;
    if (a2[1] != *a2)
    {
      v18 = 0;
      v19 = 40;
      do
      {
        v20 = *(v17 + v19 - 9);
        if (v20 >= 0)
        {
          v21 = (v17 + v19 - 32);
        }

        else
        {
          v21 = *(v17 + v19 - 32);
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + v19 - 9);
        }

        else
        {
          v22 = *(v17 + v19 - 24);
        }

        std::string::append(this, v21, v22);
        if (*(v17 + v19 - 40) == -2)
        {
          v23 = *(v17 + v19 + 16);
          size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            size = this->__r_.__value_.__l.__size_;
          }

          if (v23 > size)
          {
            std::string::append(this, v23 - size, *(v17 + v19 + 32));
          }
        }

        v25 = *(v17 + v19 + 15);
        if (v25 >= 0)
        {
          v26 = (v17 + v19 - 8);
        }

        else
        {
          v26 = *(v17 + v19 - 8);
        }

        if (v25 >= 0)
        {
          v27 = *(v17 + v19 + 15);
        }

        else
        {
          v27 = *(v17 + v19);
        }

        std::string::append(this, v26, v27);
        ++v18;
        v17 = *a2;
        v19 += 120;
      }

      while (v18 < 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
    }

    *(a2 + 60) = 1;
  }

  else if (*(a2 + 87) < 0)
  {
    v28 = a2[8];
    v29 = a2[9];

    std::string::__init_copy_ctor_external(this, v28, v29);
  }

  else
  {
    *this = *(a2 + 8);
  }
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  *a1 = &unk_2835E6620;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(i))
    {
      i -= 120;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    std::locale::~locale((a1 + 96));
    *(a1 + 88) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v7, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 212, v7);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_22288A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "0");
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t snlp::ssu::matcher::lookupCategoryTypeByString(const void **a1)
{
  v2 = 0;
  v3 = *(a1 + 23);
  v5 = *a1;
  v4 = a1[1];
  while (1)
  {
    v6 = strlen(EnumNamesSSUCategoryType(void)::names[v2]);
    v7 = v6;
    if ((v3 & 0x80) == 0)
    {
      break;
    }

    if (v6 == v4)
    {
      v8 = v5;
      if (v4 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_7;
    }

LABEL_8:
    if (++v2 == 3)
    {
      LOBYTE(v2) = 0;
      v9 = 0;
      return v2 | (v9 << 8);
    }
  }

  v8 = a1;
  if (v7 != v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  if (memcmp(v8, EnumNamesSSUCategoryType(void)::names[v2], v7))
  {
    goto LABEL_8;
  }

  v9 = 1;
  return v2 | (v9 << 8);
}

void snlp::ssu::matcher::logSimilaritySearchConfiguration(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 12) == 1)
  {
    std::to_string(&v13, *(a2 + 8));
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "missing");
  }

  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = *(a2 + 4);
    v8 = &v13;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v13.__r_.__value_.__r.__words[0];
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    *buf = 136316674;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2080;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Loaded similarity search configuration for category %s with calibratedScoreSigmoidParam=%f, calibratedScoreThreshold=%f, calibratedScoreThresholdAppShortcutAlwaysTrigger=%s, exactMatchThreshold=%f, maxAppMatchCount=%lu, negativeScoreClipMinimum=%f.", buf, 0x48u);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::unordered_map<SSUCategoryType,snlp::ssu::similarity::SSUSimilaritySearchConfiguration>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 16);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 16);
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 16) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

std::string *snlp::ssu::matcher::SSURequestHandler::SSURequestHandler(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  std::unordered_map<SSUCategoryType,snlp::ssu::similarity::SSUSimilaritySearchConfiguration>::unordered_map(&this[3], a2 + 72);
  v7 = *(a2 + 15);
  this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
  this[5].__r_.__value_.__r.__words[0] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 17);
  this[5].__r_.__value_.__l.__size_ = *(a2 + 16);
  this[5].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 19);
  this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
  this[6].__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_22288AED4(_Unwind_Exception *exception_object)
{
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

void snlp::ssu::matcher::SSUMatcherConfig::loadMatcherConfig(snlp::ssu::matcher::SSUMatcherConfig *this@<X0>, std::string *a2@<X8>)
{
  v57[19] = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::operator/[abi:ne200100](&v53, this, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::ifstream::basic_ifstream(__p);
  std::string::basic_string[abi:ne200100]<0>(v51, "Error reading SSU matcher config file: ");
  if (!v56)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35.__r_.__value_.__l.__data_, v51, "config file could not be opened");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_2835E6B78;
  }

  if (*(&__p[1].__r_.__value_.__r.__words[1] + *(__p[0].__r_.__value_.__r.__words[0] - 24)))
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35.__r_.__value_.__l.__data_, v51, "config file could not be read");
    std::runtime_error::runtime_error(v26, &v35);
    v26->__vftable = &unk_2835E6B78;
  }

  v49[0] = 0;
  v50 = 0;
  nlohmann::operator>>(__p, v49);
  *(&v35.__r_.__value_.__s + 23) = 6;
  strcpy(&v35, "params");
  v45 = v49;
  v46 = 0;
  v47 = 0;
  v48 = 0x8000000000000000;
  if (v49[0] == 1)
  {
    v46 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(v50, &v35);
    v36 = 0x8000000000000000;
    v35.__r_.__value_.__r.__words[0] = v49;
    *&v35.__r_.__value_.__r.__words[1] = (v50 + 1);
  }

  else if (v49[0] == 2)
  {
    v47 = v50[1];
    *&v35.__r_.__value_.__l.__data_ = v49;
    v36 = 0x8000000000000000;
    v35.__r_.__value_.__r.__words[2] = v50[1];
  }

  else
  {
    v48 = 1;
    *&v35.__r_.__value_.__l.__data_ = v49;
    v35.__r_.__value_.__r.__words[2] = 0;
    v36 = 1;
  }

  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(&v35, &v45) || *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v45) != 1)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, &v35);
    v22->__vftable = &unk_2835E6B78;
  }

  v5 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v45);
  *(&v35.__r_.__value_.__s + 23) = 11;
  strcpy(&v35, "perCategory");
  v41 = v5;
  v42 = 0;
  v43 = 0;
  v44 = 0x8000000000000000;
  v6 = *v5;
  if (v6 == 1)
  {
    v42 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(*(v5 + 1), &v35);
  }

  else if (v6 == 2)
  {
    v43 = *(*(v5 + 1) + 8);
  }

  else
  {
    v44 = 1;
  }

  v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v45);
  *&v35.__r_.__value_.__l.__data_ = v7;
  v35.__r_.__value_.__r.__words[2] = 0;
  v36 = 0x8000000000000000;
  v8 = *v7;
  if (v8 == 2)
  {
    v35.__r_.__value_.__r.__words[2] = *(*(v7 + 1) + 8);
  }

  else if (v8 == 1)
  {
    v35.__r_.__value_.__l.__size_ = *(v7 + 1) + 8;
  }

  else
  {
    v36 = 1;
  }

  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(&v35, &v41) || *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v41) != 1)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, &v35);
    v23->__vftable = &unk_2835E6B78;
  }

  v9 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v41);
  v37 = v9;
  v38 = 0;
  v39 = 0;
  v40 = 0x8000000000000000;
  v10 = *v9;
  if (v10 == 1)
  {
    v11 = *(v9 + 1);
    v14 = *(v11 + 8);
    v12 = v11 + 8;
    v13 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = v12;
    do
    {
      v16 = std::string::compare((v13 + 32), "APP_SHORTCUT");
      if (v16 >= 0)
      {
        v15 = v13;
      }

      v13 = *(v13 + ((v16 >> 28) & 8));
    }

    while (v13);
    if (v15 == v12 || std::string::compare((v15 + 32), "APP_SHORTCUT") >= 1)
    {
LABEL_34:
      v15 = v12;
    }

    v38 = v15;
  }

  else if (v10 == 2)
  {
    v39 = *(*(v9 + 1) + 8);
  }

  else
  {
    v40 = 1;
  }

  v17 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v41);
  *&v35.__r_.__value_.__l.__data_ = v17;
  v35.__r_.__value_.__r.__words[2] = 0;
  v36 = 0x8000000000000000;
  v18 = *v17;
  if (v18 == 2)
  {
    v35.__r_.__value_.__r.__words[2] = *(*(v17 + 1) + 8);
  }

  else if (v18 == 1)
  {
    v35.__r_.__value_.__l.__size_ = *(v17 + 1) + 8;
  }

  else
  {
    v36 = 1;
  }

  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,(decltype(nullptr))0>(&v35, &v37) || *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(&v37) != 1)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, &v35);
    v24->__vftable = &unk_2835E6B78;
  }

  v19 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(&v37);
  snlp::common::config::loadJsonConfig(&v35, v19, 6u);
  v33 = 6;
  strcpy(v32, "locale");
  v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(&v35, v32);
  if (!v20)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v27, &v31);
    v27->__vftable = &unk_2835E9238;
  }

  if (*(v20 + 16) != 4)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::string::append(&v54, " is not of expected type");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v28, &v31);
    v28->__vftable = &unk_2835E9238;
  }

  if (*(v20 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v20[5], v20[6]);
  }

  else
  {
    v34 = *(v20 + 5);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  snlp::ssu::matcher::loadSimilaritySearchConfigurations(v49, &v31);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    *a2 = v34;
  }

  std::unordered_map<SSUCategoryType,snlp::ssu::similarity::SSUSimilaritySearchConfiguration>::unordered_map(&a2[1], &v31);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&v31);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&v35);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v50, v49[0]);
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  __p[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
  *(__p[0].__r_.__value_.__r.__words + *(__p[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC47C0](&__p[0].__r_.__value_.__r.__words[2]);
  std::istream::~istream();
  MEMORY[0x223DC4C10](v57);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22288B820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (v65)
  {
    __cxa_free_exception(v63);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&a26);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v64 + 8), a43);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  std::ifstream::~ifstream(&a63, MEMORY[0x277D82808]);
  MEMORY[0x223DC4C10](&STACK[0x2E0]);
  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v5, "cannot get value");
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 214, v5);
  }

  return result;
}

void sub_22288BAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void snlp::common::config::loadJsonConfig(uint64_t a1, std::string *a2, unsigned int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3 >= 8)
  {
    v7 = SNLPOSLoggerForCategory(4);
    v6 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = a3;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &buf, 0x16u);
    }
  }

  else
  {
    v6 = off_2784B6F30[a3];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v31 = a2;
  v32 = 0;
  v33 = 0;
  v34 = 0x8000000000000000;
  v8 = a2->__r_.__value_.__s.__data_[0];
  if (a2->__r_.__value_.__s.__data_[0])
  {
    if (v8 == 2)
    {
      v33 = *a2->__r_.__value_.__l.__size_;
    }

    else if (v8 == 1)
    {
      v32 = *a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  while (1)
  {
    buf.__r_.__value_.__r.__words[2] = 0;
    *&buf.__r_.__value_.__l.__data_ = a2;
    v39[0] = 0x8000000000000000;
    if (v8 == 2)
    {
      buf.__r_.__value_.__r.__words[2] = *(a2->__r_.__value_.__l.__size_ + 8);
    }

    else if (v8 == 1)
    {
      buf.__r_.__value_.__l.__size_ = a2->__r_.__value_.__l.__size_ + 8;
    }

    else
    {
      v39[0] = 1;
    }

    if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>,(decltype(nullptr))0>(&v31, &buf))
    {
      break;
    }

    v9 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key(v31->__r_.__value_.__s.__data_[0], v32);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *v9, *(v9 + 8));
    }

    else
    {
      v10 = *v9;
      v30.__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v30.__r_.__value_.__l.__data_ = v10;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31) == 5)
    {
      v11 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31);
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v11, &buf);
      data = buf.__r_.__value_.__l.__data_;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v30;
      }

      LODWORD(v39[0]) = data;
      v40 = 0;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(a1, &buf.__r_.__value_.__l.__data_);
      goto LABEL_55;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31) == 6)
    {
      v13 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31);
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned int,0>(v13, &buf);
      v14 = buf.__r_.__value_.__l.__data_;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v30;
      }

      LODWORD(v39[0]) = v14;
      v40 = 1;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(a1, &buf.__r_.__value_.__l.__data_);
      goto LABEL_55;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31) == 7)
    {
      v15 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31);
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,float,0>(v15, &buf, v16);
      v17 = buf.__r_.__value_.__l.__data_;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v30;
      }

      LODWORD(v39[0]) = v17;
      v40 = 2;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(a1, &buf.__r_.__value_.__l.__data_);
      goto LABEL_55;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31) == 4)
    {
      v18 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31);
      buf.__r_.__value_.__s.__data_[0] = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v18, &buf);
      v19 = buf.__r_.__value_.__s.__data_[0];
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v30;
      }

      LOBYTE(v39[0]) = v19;
      v40 = 3;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(a1, &buf.__r_.__value_.__l.__data_);
LABEL_55:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v39);
      goto LABEL_56;
    }

    if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31) != 3)
    {
      if (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31))
      {
        std::operator+<char>();
        v22 = std::string::append(&v37, ".");
        v23 = *&v22->__r_.__value_.__l.__data_;
        buf.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&buf.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        v24 = SNLPOSLoggerForCategory(4);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_56;
        }

        v25 = __p;
        if (v36 < 0)
        {
          v25 = __p[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        std::operator+<char>();
        v27 = std::string::append(&v37, " is null.  This is currently expected behaviour.");
        v28 = *&v27->__r_.__value_.__l.__data_;
        buf.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&buf.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        v24 = SNLPOSLoggerForCategory(4);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_56;
        }

        v25 = __p;
        if (v36 < 0)
        {
          v25 = __p[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }
      }

      LODWORD(v37.__r_.__value_.__l.__data_) = 136315394;
      *(v37.__r_.__value_.__r.__words + 4) = v25;
      WORD2(v37.__r_.__value_.__r.__words[1]) = 2080;
      *(&v37.__r_.__value_.__r.__words[1] + 6) = p_buf;
      _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "[%s] %s", &v37, 0x16u);
LABEL_56:
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      v21 = buf.__r_.__value_.__r.__words[0];
      goto LABEL_58;
    }

    v20 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get_impl<std::string,0>(&v37, v20);
    std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>::pair[abi:ne200100]<std::string&,std::string const&,0>(&buf, &v30, &v37);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<int,unsigned int,float,BOOL,std::string>>>(a1, &buf.__r_.__value_.__l.__data_);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<int,unsigned int,float,BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v39);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = v37.__r_.__value_.__r.__words[0];
LABEL_58:
      operator delete(v21);
    }

LABEL_59:
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator++(&v31);
    LOBYTE(v8) = a2->__r_.__value_.__s.__data_[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "component_name");
  v31 = &buf;
  v30.__r_.__value_.__r.__words[0] = __p;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<std::string const&>>(a1, &buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_22288C164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v39);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::loadSimilaritySearchConfigurations(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v66.__r_.__value_.__s + 23) = 6;
  strcpy(&v66, "params");
  v79 = a1;
  v80 = 0;
  v81 = 0;
  v82 = 0x8000000000000000;
  v4 = *a1;
  if (v4 == 1)
  {
    v80 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(*(a1 + 1), &v66);
  }

  else if (v4 == 2)
  {
    v81 = *(*(a1 + 1) + 8);
  }

  else
  {
    v82 = 1;
  }

  std::string::basic_string[abi:ne200100]<0>(v77, "Error reading SSU matcher config file: ");
  *&v66.__r_.__value_.__l.__data_ = a1;
  v66.__r_.__value_.__r.__words[2] = 0;
  v67 = 0x8000000000000000;
  v5 = *a1;
  if (v5 == 2)
  {
    v66.__r_.__value_.__r.__words[2] = *(*(a1 + 1) + 8);
  }

  else if (v5 == 1)
  {
    v66.__r_.__value_.__l.__size_ = *(a1 + 1) + 8;
  }

  else
  {
    v67 = 1;
  }

  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>,(decltype(nullptr))0>(&v66, &v79) || *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v79) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v66);
    exception->__vftable = &unk_2835E6B78;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v79);
  *(&v66.__r_.__value_.__s + 23) = 11;
  strcpy(&v66, "perCategory");
  v73 = v6;
  v74 = 0;
  v75 = 0;
  v76 = 0x8000000000000000;
  v7 = *v6;
  if (v7 == 1)
  {
    v74 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<std::string>(*(v6 + 1), &v66);
  }

  else if (v7 == 2)
  {
    v75 = *(*(v6 + 1) + 8);
  }

  else
  {
    v76 = 1;
  }

  v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v79);
  *&v66.__r_.__value_.__l.__data_ = v8;
  v66.__r_.__value_.__r.__words[2] = 0;
  v67 = 0x8000000000000000;
  v9 = *v8;
  if (v9 == 2)
  {
    v66.__r_.__value_.__r.__words[2] = *(*(v8 + 1) + 8);
  }

  else if (v9 == 1)
  {
    v66.__r_.__value_.__l.__size_ = *(v8 + 1) + 8;
  }

  else
  {
    v67 = 1;
  }

  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>,(decltype(nullptr))0>(&v66, &v73) || *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v73) != 1)
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v43, &v66);
    v43->__vftable = &unk_2835E6B78;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v10 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v73);
  v11 = *v10;
  if (*v10)
  {
    if (v11 == 1)
    {
      v11 = *(*(v10 + 1) + 16);
    }

    else if (v11 == 2)
    {
      v11 = (*(*(v10 + 1) + 8) - **(v10 + 1)) >> 4;
    }

    else
    {
      v11 = 1;
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a2, vcvtps_u32_f32(v11 / *(a2 + 32)));
  v12 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(&v73);
  v13 = v12;
  v59 = v12;
  v60 = 0;
  v61 = 0x8000000000000000;
  v14 = *v12;
  if (*v12)
  {
    if (v14 == 2)
    {
      v60 = **(v12 + 1);
    }

    else if (v14 == 1)
    {
      *(&v59 + 1) = **(v12 + 1);
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 1;
  }

  nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(&v66, &v59);
  *&v57.__r_.__value_.__l.__data_ = v13;
  v57.__r_.__value_.__r.__words[2] = 0;
  v58 = 0x8000000000000000;
  v15 = *v13;
  if (v15 == 2)
  {
    v57.__r_.__value_.__r.__words[2] = *(*(v13 + 1) + 8);
  }

  else if (v15 == 1)
  {
    v57.__r_.__value_.__l.__size_ = *(v13 + 1) + 8;
  }

  else
  {
    v58 = 1;
  }

  nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(&v59, &v57);
LABEL_44:
  if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>,(decltype(nullptr))0>(&v66, &v59))
  {
    v16 = *v66.__r_.__value_.__l.__data_;
    if (v16 == 1)
    {
      p_p = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key(1, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      p_p = &v71;
      if (v16 == 2)
      {
        p_p = &__p;
        if (v68 != v69)
        {
          std::to_string(&v57, v68);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v57;
          v69 = v68;
          p_p = &__p;
        }
      }
    }

    v18 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v66);
    if (v18->__r_.__value_.__s.__data_[0] != 1)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v57.__r_.__value_.__l.__data_, v77, "category config value is not of object type");
      std::runtime_error::runtime_error(v40, &v57);
      v40->__vftable = &unk_2835E6B78;
    }

    v19 = snlp::ssu::matcher::lookupCategoryTypeByString(&p_p->__r_.__value_.__l.__data_);
    if (v19 <= 0xFFu)
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      v35 = SHIBYTE(p_p->__r_.__value_.__r.__words[2]);
      if (v35 >= 0)
      {
        v36 = p_p;
      }

      else
      {
        v36 = p_p->__r_.__value_.__r.__words[0];
      }

      if (v35 >= 0)
      {
        size = HIBYTE(p_p->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = p_p->__r_.__value_.__l.__size_;
      }

      v38 = std::string::append(&v54, v36, size);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v34, &v57);
      v34->__vftable = &unk_2835E6B78;
    }

    v20 = v19;
    snlp::common::config::loadJsonConfig(&v57, v18, 6u);
    std::string::basic_string[abi:ne200100]<0>(v52, "calibratedScoreSigmoidParam");
    LODWORD(v54) = snlp::ssu::utilities::getConfigValue<float>(&v57, v52);
    std::string::basic_string[abi:ne200100]<0>(v50, "calibratedScoreThreshold");
    DWORD1(v54) = snlp::ssu::utilities::getConfigValue<float>(&v57, v50);
    std::string::basic_string[abi:ne200100]<0>(v48, "calibratedScoreThresholdAppShortcutAlwaysTrigger");
    if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(&v57, v48))
    {
      v21 = COERCE_UNSIGNED_INT(snlp::ssu::utilities::getConfigValue<float>(&v57, v48)) | 0x100000000;
    }

    else
    {
      v21 = 0;
    }

    DWORD2(v54) = v21;
    BYTE12(v54) = BYTE4(v21);
    std::string::basic_string[abi:ne200100]<0>(v46, "exactMatchThreshold");
    LODWORD(v55) = snlp::ssu::utilities::getConfigValue<float>(&v57, v46);
    std::string::basic_string[abi:ne200100]<0>(v44, "maxAppMatchCount");
    v22 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(&v57, v44);
    if (!v22)
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::runtime_error::runtime_error(v41, &v84);
      v41->__vftable = &unk_2835E9238;
    }

    if (*(v22 + 16) != 1)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v32 = std::string::append(&v83, " is not of expected type");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v31, &v84);
      v31->__vftable = &unk_2835E9238;
    }

    *(&v55 + 1) = *(v22 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v84, "negativeScoreClipMinimum");
    Config = snlp::ssu::utilities::getConfigValue<float>(&v57, &v84.__r_.__value_.__l.__data_);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    snlp::ssu::matcher::logSimilaritySearchConfiguration(p_p, &v54);
    v23 = *(a2 + 8);
    if (!v23)
    {
      goto LABEL_87;
    }

    v24 = vcnt_s8(v23);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = v20;
      if (v23 <= v20)
      {
        v25 = v20 % v23;
      }
    }

    else
    {
      v25 = (v23 - 1) & v20;
    }

    v26 = *(*a2 + 8 * v25);
    if (!v26 || (v27 = *v26) == 0)
    {
LABEL_87:
      operator new();
    }

    while (1)
    {
      v28 = v27[1];
      if (v28 == v20)
      {
        if (*(v27 + 16) == v20)
        {
          v29 = Config;
          v30 = v55;
          *(v27 + 3) = v54;
          *(v27 + 5) = v30;
          *(v27 + 14) = v29;
          std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&v57);
          nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator++(&v66);
          ++v68;
          goto LABEL_44;
        }
      }

      else
      {
        if (v24.u32[0] > 1uLL)
        {
          if (v28 >= v23)
          {
            v28 %= v23;
          }
        }

        else
        {
          v28 &= v23 - 1;
        }

        if (v28 != v25)
        {
          goto LABEL_87;
        }
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_87;
      }
    }
  }

  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v72 < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }
}

void sub_22288CD4C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v1);
  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator->(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v5, "cannot get value");
    nlohmann::detail::invalid_iterator::create<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(exception, 214, v5);
  }

  return result;
}

void sub_22288D048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

float snlp::ssu::utilities::getConfigValue<float>(void *a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &unk_2835E9238;
  }

  if (*(v2 + 16) != 2)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v8, " is not of expected type");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v5, &v9);
    v5->__vftable = &unk_2835E9238;
  }

  return *(v2 + 10);
}

void sub_22288D1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

std::string *snlp::ssu::matcher::SSURequestHandler::SSURequestHandler(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v14;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v15;
  }

  std::unordered_map<SSUCategoryType,snlp::ssu::similarity::SSUSimilaritySearchConfiguration>::unordered_map(&this[3], a4 + 24);
  *&this[4].__r_.__value_.__r.__words[2] = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *&this[5].__r_.__value_.__r.__words[1] = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *&this[6].__r_.__value_.__l.__data_ = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  return this;
}

void sub_22288D33C(_Unwind_Exception *exception_object)
{
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

uint64_t snlp::ssu::matcher::SSUPersister::SSUPersister(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *a1 = 5;
  v7 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 32) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 48) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 64) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a6, *(a6 + 1));
  }

  else
  {
    v8 = *a6;
    *(a1 + 96) = *(a6 + 2);
    *(a1 + 80) = v8;
  }

  return a1;
}

void sub_22288D418(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::matcher::SSUPersister::SSUPersister(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
  }

  return a1;
}

void sub_22288D52C(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 72);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *snlp::ssu::matcher::SSUMatcher::SSUMatcher(std::string *this, __int128 *a2, uint64_t a3, std::string::size_type *a4, uint64_t a5, __int128 *a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  std::unordered_set<std::string>::unordered_set(&this[1], a3);
  snlp::ssu::matcher::SSUPersister::SSUPersister(&this[2].__r_.__value_.__r.__words[2], a5);
  snlp::ssu::matcher::SSURequestHandler::SSURequestHandler(this + 7, a6);
  v12 = a4[1];
  this[13].__r_.__value_.__r.__words[2] = *a4;
  this[14].__r_.__value_.__r.__words[0] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  this[14].__r_.__value_.__l.__size_ = 850045863;
  *&this[14].__r_.__value_.__r.__words[2] = 0u;
  *&this[15].__r_.__value_.__r.__words[1] = 0u;
  *&this[16].__r_.__value_.__l.__data_ = 0u;
  this[16].__r_.__value_.__r.__words[2] = 0;
  return this;
}

void sub_22288D634(_Unwind_Exception *a1)
{
  snlp::ssu::matcher::SSUPersister::~SSUPersister((v1 + 64));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

uint64_t *std::unique_ptr<snlp::ssu::matcher::SSUMatcher>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 344));
    v3 = *(v2 + 336);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 320);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 304);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v2 + 288);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v2 + 240);
    if (*(v2 + 239) < 0)
    {
      operator delete(*(v2 + 216));
    }

    if (*(v2 + 215) < 0)
    {
      operator delete(*(v2 + 192));
    }

    if (*(v2 + 191) < 0)
    {
      operator delete(*(v2 + 168));
    }

    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    v7 = *(v2 + 136);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(v2 + 120);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(v2 + 104);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 24);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(a1 + 176));
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v33 = std::string::append(&v38, ")");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v39, " does not exist.");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v40);
    exception->__vftable = &unk_2835E6B78;
  }

  if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) == 2)
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v40, "The getOutput method is not yet implemented for UINT_8.");
    std::runtime_error::runtime_error(v37, &v40);
    v37->__vftable = &unk_2835E6B78;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, a2);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v40, v7[5]);
  v8 = E5RT::OperandDescriptor::TensorDescriptor(v40.__r_.__value_.__l.__data_);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v8);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  a3[1].__r_.__value_.__r.__words[0] = 0;
  a3[1].__r_.__value_.__l.__size_ = 0;
  v10 = a3 + 1;
  a3[1].__r_.__value_.__r.__words[2] = 0;
  if (v40.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40.__r_.__value_.__l.__size_);
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 312), a2))
  {
    goto LABEL_34;
  }

  v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 312), a2);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (!E5RT::MemoryObject::TryAsBuffer(v11[5]))
  {
LABEL_34:
    v27 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v28 = std::string::append(&v38, ")");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v39, " does not exist.");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v27, &v40);
    v27->__vftable = &unk_2835E6B78;
  }

  if (!snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2))
  {
    v18 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 312), a2);
    if (!v18)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v19 = E5RT::MemoryObject::TryAsBuffer(v18[5]);
    E5RT::BufferObject::GetDataSpan(v19);
    v21 = v20;
    v22 = 0;
    memset(&v40, 0, sizeof(v40));
    if (2 * (v21 >> 1))
    {
      std::vector<int>::__vallocate[abi:ne200100](&v40, (2 * (v21 >> 1)) >> 1);
    }

    if (v10 == &v40)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) != 1)
  {
    if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) != 2)
    {
      return;
    }

    v23 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 312), a2);
    if (!v23)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v24 = E5RT::MemoryObject::TryAsBuffer(v23[5]);
    E5RT::BufferObject::GetDataSpan(v24);
    v26 = v25;
    v22 = 0;
    memset(&v40, 0, sizeof(v40));
    if (v26)
    {
      std::vector<int>::__vallocate[abi:ne200100](&v40, v26);
    }

    if (v10 == &v40)
    {
      goto LABEL_30;
    }

LABEL_29:
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3[1].__r_.__value_.__r.__words, 0, 0, 0);
    v22 = v40.__r_.__value_.__r.__words[0];
LABEL_30:
    if (!v22)
    {
      return;
    }

    v40.__r_.__value_.__l.__size_ = v22;
    v17 = v22;
    goto LABEL_32;
  }

  v12 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 312), a2);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = E5RT::MemoryObject::TryAsBuffer(v12[5]);
  DataSpan = E5RT::BufferObject::GetDataSpan(v13);
  if (v15 >= 4)
  {
    v16 = DataSpan;
  }

  else
  {
    v16 = 0;
  }

  memset(&v40, 0, sizeof(v40));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v40, v16, v16 + (v15 & 0xFFFFFFFFFFFFFFFCLL), v15 >> 2);
  if (v10 != &v40)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3[1].__r_.__value_.__r.__words, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_, (v40.__r_.__value_.__l.__size_ - v40.__r_.__value_.__r.__words[0]) >> 2);
  }

  v17 = v40.__r_.__value_.__r.__words[0];
  if (v40.__r_.__value_.__r.__words[0])
  {
    v40.__r_.__value_.__l.__size_ = v40.__r_.__value_.__r.__words[0];
LABEL_32:
    operator delete(v17);
  }
}

void sub_22288DD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v28);
  _Unwind_Resume(a1);
}

void sub_22288DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  JUMPOUT(0x22288DED8);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(E5RT::ExecutionStreamOperation **this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[22]);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[22]);
  v4 = OutputPorts;
  for (i = *(InputPorts + 16); i; i = *i)
  {
    snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindMemory(OutputPorts, i[5]);
  }

  for (j = *(v4 + 2); j; j = *j)
  {
    snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindMemory(OutputPorts, j[5]);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22288E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::getOutputs(const void **this@<X0>, void *a2@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 62, &v13);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 65, &v10);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 68, &v7);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 71, &v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_, (v13.__r_.__value_.__l.__size_ - v13.__r_.__value_.__r.__words[0]) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), v14, v15, (v15 - v14) >> 2);
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 6), v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_, (v10.__r_.__value_.__l.__size_ - v10.__r_.__value_.__r.__words[0]) >> 3);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 9), v11, v12, (v12 - v11) >> 2);
  a2[12] = 0;
  a2[13] = 0;
  a2[14] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 12), v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_, (v7.__r_.__value_.__l.__size_ - v7.__r_.__value_.__r.__words[0]) >> 3);
  a2[15] = 0;
  a2[16] = 0;
  a2[17] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 15), v8, v9, (v9 - v8) >> 2);
  a2[18] = 0;
  a2[19] = 0;
  a2[20] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a2 + 18), v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_, (v4.__r_.__value_.__l.__size_ - v4.__r_.__value_.__r.__words[0]) >> 3);
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 21), __p, v6, (v6 - __p) >> 2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4.__r_.__value_.__r.__words[0])
  {
    v4.__r_.__value_.__l.__size_ = v4.__r_.__value_.__r.__words[0];
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v7.__r_.__value_.__r.__words[0])
  {
    v7.__r_.__value_.__l.__size_ = v7.__r_.__value_.__r.__words[0];
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v10.__r_.__value_.__r.__words[0])
  {
    v10.__r_.__value_.__l.__size_ = v10.__r_.__value_.__r.__words[0];
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v13.__r_.__value_.__r.__words[0])
  {
    v13.__r_.__value_.__l.__size_ = v13.__r_.__value_.__r.__words[0];
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_22288E2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v26 = v23;
  v28 = *v26;
  if (*v26)
  {
    *(v21 + 19) = v28;
    operator delete(v28);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v24);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v22);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v21);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a15);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a21);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType((v25 - 80));
  _Unwind_Resume(a1);
}

void sub_22288E38C()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x22288E364);
}

void sub_22288E404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::forward(E5RT::ExecutionStreamOperation **this@<X0>, const nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType *a2@<X1>, void *a3@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(this);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::setInputs(this, a2);
  v6 = this[3];
  v7 = this[23];
  v8 = this[22];
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(this[3]);
  E5RT::ExecutionStream::ResetStream(this[3]);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::getOutputs(this, a3);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(this);
}

void nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::forward(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SNLPOSLoggerForCategory(7);
  v4 = os_signpost_id_generate(v3);
  v5 = SNLPOSLoggerForCategory(7);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Encoder Inference", "", buf, 2u);
    }
  }

  v7 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN Encoder Inference", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoTransformerE5MLModel::getPaddingMask(a2, &v8);
}

void sub_22288F688(_Unwind_Exception *a1)
{
  v2 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v2;
    operator delete(v2);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&STACK[0x238]);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType::~TransformerDecoderInputType(&STACK[0x780]);
  STACK[0x780] = &STACK[0x2F8];
  std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::__destroy_vector::operator()[abi:ne200100](&STACK[0x780]);
  v3 = STACK[0x328];
  if (STACK[0x328])
  {
    STACK[0x330] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v6;
    operator delete(v6);
  }

  v7 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v7;
    operator delete(v7);
  }

  v8 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v8;
    operator delete(v8);
  }

  v9 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v9;
    operator delete(v9);
  }

  v10 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v10;
    operator delete(v10);
  }

  v11 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v11;
    operator delete(v11);
  }

  v12 = STACK[0x400];
  if (STACK[0x400])
  {
    STACK[0x408] = v12;
    operator delete(v12);
  }

  v13 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v13;
    operator delete(v13);
  }

  v14 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v14;
    operator delete(v14);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType::~TransformerEncoderModuleInputType(&STACK[0x430]);
  v15 = STACK[0x538];
  if (STACK[0x538])
  {
    STACK[0x540] = v15;
    operator delete(v15);
  }

  v16 = STACK[0x520];
  if (STACK[0x520])
  {
    STACK[0x528] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x568];
  if (STACK[0x568])
  {
    STACK[0x570] = v17;
    operator delete(v17);
  }

  v18 = STACK[0x550];
  if (STACK[0x550])
  {
    STACK[0x558] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::inference_engine::BeamSearch::applyLogSoftmax@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = nlv4_inference_orchestrator::inference_engine::BeamSearch::logsumexp(a1, a2);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = v8 - *a2;
  if (v8 == *a2)
  {
    v12 = *(a1 + 16);
  }

  else
  {
    v10 = 0;
    v11 = v9 >> 2;
    v12 = *(a1 + 16);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      *(v12 + 4 * v10) = v7[v10] - v6;
      ++v10;
    }

    while (v11 != v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v13 = *(a1 + 24);

  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, v12, v13, (v13 - v12) >> 2);
}

float nlv4_inference_orchestrator::inference_engine::BeamSearch::logsumexp(uint64_t a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a2 + 1);
  v5 = *a2 == v3 || v4 == v3;
  v6 = *a2;
  if (!v5)
  {
    v7 = *v2;
    v6 = *a2;
    v8 = *a2 + 1;
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v7 < v9)
      {
        v7 = v10;
        v6 = v4;
      }

      v4 = v8;
    }

    while (v8 != v3);
  }

  v11 = *v6;
  v12 = 0.0;
  while (v2 != v3)
  {
    v13 = *v2++;
    v12 = v12 + expf(v13 - v11);
  }

  return v11 + logf(v12);
}

double nlv4_inference_orchestrator::inference_engine::BeamSearch::getTopKTokenIndicesAndScores@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6.n128_f32[0] = nlv4_inference_orchestrator::inference_engine::BeamSearch::findBorderScore(a1, a2);
  v7 = *a2;
  if (*(a2 + 8) == *a2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v8 = v6.n128_f32[0];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v7[v12];
      if (v13 > v8)
      {
        v14 = v10 - v11;
        v15 = (v10 - v11) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (-v11 >> 3 > v16)
        {
          v16 = -v11 >> 3;
        }

        if (-v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          if (!(v17 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = (v10 - v11) >> 4;
        v19 = 16 * v15;
        *v19 = v12;
        *(v19 + 8) = v13;
        v10 = 16 * v15 + 16;
        v20 = 16 * v15 - 16 * v18;
        memcpy((v19 - 16 * v18), v11, v14);
        *a3 = v20;
        a3[1] = v10;
        a3[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }

        v9 = v20;
        a3[1] = v10;
        v11 = v20;
      }

      if (*(a1 + 8) == (v10 - v11) >> 4)
      {
        break;
      }

      ++v12;
      v7 = *a2;
    }

    while (v12 < (*(a2 + 8) - *a2) >> 2);
  }

  v21 = 126 - 2 * __clz((v10 - v11) >> 4);
  if (v10 == v11)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,false>(v11, v10, v22, 1, v6).n128_u64[0];
  return result;
}

void sub_22288FF08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float nlv4_inference_orchestrator::inference_engine::BeamSearch::findBorderScore(uint64_t a1, float **a2)
{
  std::vector<float>::vector[abi:ne200100](&__p, *(a1 + 8) + 1);
  v5 = __p;
  v4 = v30;
  if (__p != v30)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = __p;
    if (*a2 != v7)
    {
      do
      {
        v9 = *v6++;
        *v8 = v9;
        v8 += 4;
      }

      while (v6 != v7 && v8 != v4);
    }

    v11 = (v8 - v5) >> 2;
    if (v11 >= 2)
    {
      v12 = (v11 - 2) >> 1;
      v13 = v12 + 1;
      v14 = &v5[v12];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v5, (v8 - v5) >> 2, v14--);
        --v13;
      }

      while (v13);
    }

    while (v6 != v7)
    {
      if (*v6 > *v5)
      {
        *v5 = *v6;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(v5, (v8 - v5) >> 2, v5);
      }

      ++v6;
    }

    if (v11 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *v5;
        v17 = v5;
        do
        {
          v18 = v17;
          v17 += v15 + 1;
          v19 = 2 * v15;
          v15 = (2 * v15) | 1;
          v20 = v19 + 2;
          if (v20 < v11 && *v17 > v17[1])
          {
            ++v17;
            v15 = v20;
          }

          *v18 = *v17;
        }

        while (v15 <= ((v11 - 2) >> 1));
        v8 -= 4;
        if (v17 != v8)
        {
          *v17 = *v8;
          *v8 = v16;
          v21 = (v17 - v5 + 4) >> 2;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (v22)
          {
            goto LABEL_28;
          }

          v24 = v23 >> 1;
          v25 = &v5[v24];
          v26 = *v25;
          v16 = *v17;
          if (*v25 <= *v17)
          {
            goto LABEL_28;
          }

          do
          {
            *v17 = v26;
            v17 = v25;
            if (!v24)
            {
              break;
            }

            v24 = (v24 - 1) >> 1;
            v25 = &v5[v24];
            v26 = *v25;
          }

          while (*v25 > v16);
        }

        *v17 = v16;
LABEL_28:
        v22 = v11-- <= 2;
      }

      while (!v22);
    }
  }

  v27 = *(__p + *(a1 + 8));
  v30 = __p;
  operator delete(__p);
  return v27;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_222890220(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, float *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 2)
    {
      v5 = v3 >> 1;
      v6 = (v3 >> 1) | 1;
      v7 = (result + 4 * v6);
      v8 = v5 + 2;
      if (v8 < a2 && *v7 > v7[1])
      {
        ++v7;
        v6 = v8;
      }

      v9 = *v7;
      v10 = *a3;
      if (*v7 <= *a3)
      {
        do
        {
          *a3 = v9;
          a3 = v7;
          if (v4 < v6)
          {
            break;
          }

          v11 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v12 = v11 + 2;
          if (v12 < a2 && *v7 > v7[1])
          {
            ++v7;
            v6 = v12;
          }

          v9 = *v7;
        }

        while (*v7 <= v10);
        *a3 = v10;
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 16);
  v10 = (a2 - 32);
  v11 = (a2 - 48);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = *(a2 - 8);
        if (result.n128_f32[0] >= *(v12 + 8))
        {
          return result;
        }

LABEL_111:
        result = *v12;
        v146 = *v12;
        v74 = *v9;
        *(v12 + 8) = *(a2 - 8);
        *v12 = v74;
LABEL_112:
        *(a2 - 8) = v146.n128_u32[2];
        *v9 = v146.n128_u64[0];
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v75 = *(v12 + 24);
      v76 = *(v12 + 40);
      if (v75 >= *(v12 + 8))
      {
        if (v76 < v75)
        {
          result = *(v12 + 16);
          *(v12 + 16) = *(v12 + 32);
          *(v12 + 24) = *(v12 + 40);
          *(v12 + 32) = result.n128_u64[0];
          *(v12 + 40) = result.n128_u32[2];
          if (*(v12 + 24) < *(v12 + 8))
          {
            result = *v12;
            v149 = *v12;
            *v12 = *(v12 + 16);
            *(v12 + 8) = *(v12 + 24);
            *(v12 + 16) = v149.n128_u64[0];
            *(v12 + 24) = v149.n128_u32[2];
          }
        }
      }

      else
      {
        if (v76 < v75)
        {
          result = *v12;
          v147 = *v12;
          *v12 = *(v12 + 32);
          *(v12 + 8) = *(v12 + 40);
          goto LABEL_183;
        }

        v151 = *v12;
        *v12 = *(v12 + 16);
        *(v12 + 8) = *(v12 + 24);
        *(v12 + 16) = v151.n128_u64[0];
        *(v12 + 24) = v151.n128_u32[2];
        if (v76 < *(v12 + 24))
        {
          result = *(v12 + 16);
          v147 = result;
          *(v12 + 16) = *(v12 + 32);
          *(v12 + 24) = *(v12 + 40);
LABEL_183:
          *(v12 + 32) = v147.n128_u64[0];
          *(v12 + 40) = v147.n128_u32[2];
        }
      }

      result.n128_u32[0] = *(a2 - 8);
      if (result.n128_f32[0] >= *(v12 + 40))
      {
        return result;
      }

      result = *(v12 + 32);
      v122 = *v9;
      *(v12 + 40) = *(a2 - 8);
      *(v12 + 32) = v122;
      *(a2 - 8) = result.n128_u32[2];
      *v9 = result.n128_u64[0];
      result.n128_u32[0] = *(v12 + 40);
      if (result.n128_f32[0] >= *(v12 + 24))
      {
        return result;
      }

      result = *(v12 + 16);
      *(v12 + 16) = *(v12 + 32);
      *(v12 + 24) = *(v12 + 40);
      *(v12 + 32) = result.n128_u64[0];
      *(v12 + 40) = result.n128_u32[2];
LABEL_187:
      result.n128_u32[0] = *(v12 + 24);
      if (result.n128_f32[0] < *(v12 + 8))
      {
        result = *v12;
        v152 = *v12;
        *v12 = *(v12 + 16);
        *(v12 + 8) = *(v12 + 24);
        *(v12 + 16) = v152.n128_u64[0];
        *(v12 + 24) = v152.n128_u32[2];
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2 - 16).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v77 = v12 + 16;
      v79 = v12 == a2 || v77 == a2;
      if (a4)
      {
        if (!v79)
        {
          v80 = 0;
          v81 = v12;
          do
          {
            result.n128_u32[0] = *(v81 + 24);
            v82 = *(v81 + 8);
            v81 = v77;
            if (result.n128_f32[0] < v82)
            {
              v83 = *v77;
              v84 = v80;
              while (1)
              {
                v85 = v12 + v84;
                *(v85 + 16) = *(v12 + v84);
                *(v85 + 24) = *(v12 + v84 + 8);
                if (!v84)
                {
                  break;
                }

                v84 -= 16;
                if (result.n128_f32[0] >= *(v85 - 8))
                {
                  v86 = v12 + v84 + 16;
                  goto LABEL_131;
                }
              }

              v86 = v12;
LABEL_131:
              *v86 = v83;
              *(v86 + 8) = result.n128_u32[0];
            }

            v77 = v81 + 16;
            v80 += 16;
          }

          while (v81 + 16 != a2);
        }
      }

      else if (!v79)
      {
        do
        {
          result.n128_u32[0] = *(a1 + 24);
          v117 = *(a1 + 8);
          a1 = v77;
          if (result.n128_f32[0] < v117)
          {
            v118 = *v77;
            do
            {
              v119 = v77;
              v120 = *(v77 - 16);
              v77 -= 16;
              *v119 = v120;
              *(v119 + 8) = *(v119 - 8);
            }

            while (result.n128_f32[0] < *(v119 - 24));
            *v77 = v118;
            *(v77 + 8) = result.n128_u32[0];
          }

          v77 = a1 + 16;
        }

        while (a1 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v87 = (v13 - 2) >> 1;
        v88 = v87;
        do
        {
          v89 = v88;
          if (v87 >= v88)
          {
            v90 = (2 * v88) | 1;
            v91 = v12 + 16 * v90;
            if (2 * v89 + 2 < v13 && *(v91 + 8) < *(v91 + 24))
            {
              v91 += 16;
              v90 = 2 * v89 + 2;
            }

            v92 = v12 + 16 * v89;
            v93 = *(v92 + 8);
            if (*(v91 + 8) >= v93)
            {
              v94 = *v92;
              do
              {
                v95 = v92;
                v92 = v91;
                v96 = *v91;
                *(v95 + 8) = *(v92 + 8);
                *v95 = v96;
                if (v87 < v90)
                {
                  break;
                }

                v97 = 2 * v90;
                v90 = (2 * v90) | 1;
                v91 = v12 + 16 * v90;
                v98 = v97 + 2;
                if (v98 < v13 && *(v91 + 8) < *(v91 + 24))
                {
                  v91 += 16;
                  v90 = v98;
                }
              }

              while (*(v91 + 8) >= v93);
              *v92 = v94;
              *(v92 + 8) = v93;
            }
          }

          v88 = v89 - 1;
        }

        while (v89);
        do
        {
          v99 = 0;
          result = *v12;
          v148 = *v12;
          v100 = v12;
          do
          {
            v101 = v100 + 16 * v99;
            v102 = v101 + 16;
            v103 = (2 * v99) | 1;
            v99 = 2 * v99 + 2;
            if (v99 >= v13)
            {
              v99 = v103;
            }

            else
            {
              result.n128_u32[0] = *(v101 + 24);
              v104 = *(v101 + 40);
              v105 = v101 + 32;
              if (result.n128_f32[0] >= v104)
              {
                v99 = v103;
              }

              else
              {
                v102 = v105;
              }
            }

            v106 = *v102;
            *(v100 + 8) = *(v102 + 8);
            *v100 = v106;
            v100 = v102;
          }

          while (v99 <= ((v13 - 2) >> 1));
          a2 -= 16;
          if (v102 == a2)
          {
            *(v102 + 8) = v148.n128_u32[2];
            *v102 = v148.n128_u64[0];
          }

          else
          {
            v107 = *a2;
            *(v102 + 8) = *(a2 + 8);
            *v102 = v107;
            *(a2 + 8) = v148.n128_u32[2];
            *a2 = v148.n128_u64[0];
            v108 = (v102 - v12 + 16) >> 4;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = v12 + 16 * v111;
              result.n128_u32[0] = *(v102 + 8);
              if (*(v112 + 8) < result.n128_f32[0])
              {
                v113 = *v102;
                do
                {
                  v114 = v102;
                  v102 = v112;
                  v115 = *v112;
                  *(v114 + 8) = *(v102 + 8);
                  *v114 = v115;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = v12 + 16 * v111;
                }

                while (*(v112 + 8) < result.n128_f32[0]);
                *v102 = v113;
                *(v102 + 8) = result.n128_u32[0];
              }
            }
          }

          v109 = v13-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = *(a2 - 8);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 8);
      if (v16 >= *(v12 + 8))
      {
        if (v15 < v16)
        {
          v125 = *v14;
          v20 = *v9;
          *(v14 + 8) = *(a2 - 8);
          *v14 = v20;
          *(a2 - 8) = v125.n128_u32[2];
          *v9 = v125.n128_u64[0];
          if (*(v14 + 8) < *(v12 + 8))
          {
            v126 = *v12;
            v21 = *v14;
            *(v12 + 8) = *(v14 + 8);
            *v12 = v21;
            *(v14 + 8) = v126.n128_u32[2];
            *v14 = v126.n128_u64[0];
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v123 = *v12;
          v17 = *v9;
          *(v12 + 8) = *(a2 - 8);
          *v12 = v17;
          goto LABEL_26;
        }

        v129 = *v12;
        v24 = *v14;
        *(v12 + 8) = *(v14 + 8);
        *v12 = v24;
        *(v14 + 8) = v129.n128_u32[2];
        *v14 = v129.n128_u64[0];
        if (*(a2 - 8) < *(v14 + 8))
        {
          v123 = *v14;
          v25 = *v9;
          *(v14 + 8) = *(a2 - 8);
          *v14 = v25;
LABEL_26:
          *(a2 - 8) = v123.n128_u32[2];
          *v9 = v123.n128_u64[0];
        }
      }

      v26 = (v14 - 16);
      v27 = *(v14 - 8);
      v28 = *(a2 - 24);
      if (v27 >= *(v12 + 24))
      {
        if (v28 < v27)
        {
          v131 = *v26;
          v30 = *v10;
          *(v14 - 8) = *(a2 - 24);
          v26->n128_u64[0] = v30;
          *(a2 - 24) = v131.n128_u32[2];
          *v10 = v131.n128_u64[0];
          if (*(v14 - 8) < *(v12 + 24))
          {
            v132 = *(v12 + 16);
            v31 = v26->n128_u64[0];
            *(v12 + 24) = *(v14 - 8);
            *(v12 + 16) = v31;
            *(v14 - 8) = DWORD2(v132);
            v26->n128_u64[0] = v132;
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v130 = *(v12 + 16);
          v29 = *v10;
          *(v12 + 24) = *(a2 - 24);
          *(v12 + 16) = v29;
          goto LABEL_38;
        }

        v134 = *(v12 + 16);
        v34 = v26->n128_u64[0];
        *(v12 + 24) = *(v14 - 8);
        *(v12 + 16) = v34;
        *(v14 - 8) = DWORD2(v134);
        v26->n128_u64[0] = v134;
        if (*(a2 - 24) < *(v14 - 8))
        {
          v130 = *v26;
          v35 = *v10;
          *(v14 - 8) = *(a2 - 24);
          v26->n128_u64[0] = v35;
LABEL_38:
          *(a2 - 24) = v130.n128_u32[2];
          *v10 = v130.n128_u64[0];
        }
      }

      v36 = (v14 + 16);
      v37 = *(v14 + 24);
      v38 = *(a2 - 40);
      if (v37 >= *(v12 + 40))
      {
        if (v38 < v37)
        {
          v136 = *v36;
          v40 = *v11;
          *(v14 + 24) = *(a2 - 40);
          *v36 = v40;
          *(a2 - 40) = DWORD2(v136);
          *v11 = v136;
          if (*(v14 + 24) < *(v12 + 40))
          {
            v137 = *(v12 + 32);
            v41 = *v36;
            *(v12 + 40) = *(v14 + 24);
            *(v12 + 32) = v41;
            *(v14 + 24) = DWORD2(v137);
            *v36 = v137;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v135 = *(v12 + 32);
          v39 = *v11;
          *(v12 + 40) = *(a2 - 40);
          *(v12 + 32) = v39;
          goto LABEL_47;
        }

        v138 = *(v12 + 32);
        v42 = *v36;
        *(v12 + 40) = *(v14 + 24);
        *(v12 + 32) = v42;
        *(v14 + 24) = DWORD2(v138);
        *v36 = v138;
        if (*(a2 - 40) < *(v14 + 24))
        {
          v135 = *v36;
          v43 = *v11;
          *(v14 + 24) = *(a2 - 40);
          *v36 = v43;
LABEL_47:
          *(a2 - 40) = DWORD2(v135);
          *v11 = v135;
        }
      }

      v44 = *(v14 + 8);
      v45 = *(v14 + 24);
      if (v44 >= *(v14 - 8))
      {
        if (v45 < v44)
        {
          v140 = *v14;
          *v14 = *v36;
          *(v14 + 8) = *(v14 + 24);
          *v36 = v140.n128_u64[0];
          *(v14 + 24) = v140.n128_u32[2];
          if (*(v14 + 8) < *(v14 - 8))
          {
            v141 = *v26;
            v26->n128_u64[0] = *v14;
            *(v14 - 8) = *(v14 + 8);
            *v14 = v141.n128_u64[0];
            *(v14 + 8) = v141.n128_u32[2];
          }
        }
      }

      else
      {
        if (v45 < v44)
        {
          v139 = *v26;
          v26->n128_u64[0] = *v36;
          *(v14 - 8) = *(v14 + 24);
          goto LABEL_56;
        }

        v142 = *v26;
        v26->n128_u64[0] = *v14;
        *(v14 - 8) = *(v14 + 8);
        *v14 = v142.n128_u64[0];
        *(v14 + 8) = v142.n128_u32[2];
        if (*(v14 + 24) < *(v14 + 8))
        {
          v139 = *v14;
          *v14 = *v36;
          *(v14 + 8) = *(v14 + 24);
LABEL_56:
          *v36 = v139.n128_u64[0];
          *(v14 + 24) = v139.n128_u32[2];
        }
      }

      result = *v12;
      v143 = *v12;
      v46 = *v14;
      *(v12 + 8) = *(v14 + 8);
      *v12 = v46;
      *(v14 + 8) = v143.n128_u32[2];
      *v14 = v143.n128_u64[0];
      goto LABEL_58;
    }

    v18 = *(v12 + 8);
    if (v18 >= *(v14 + 8))
    {
      if (v15 < v18)
      {
        result = *v12;
        v127 = *v12;
        v22 = *v9;
        *(v12 + 8) = *(a2 - 8);
        *v12 = v22;
        *(a2 - 8) = v127.n128_u32[2];
        *v9 = v127.n128_u64[0];
        if (*(v12 + 8) < *(v14 + 8))
        {
          result = *v14;
          v128 = *v14;
          v23 = *v12;
          *(v14 + 8) = *(v12 + 8);
          *v14 = v23;
          *(v12 + 8) = v128.n128_u32[2];
          *v12 = v128.n128_u64[0];
        }
      }

      goto LABEL_58;
    }

    if (v15 < v18)
    {
      result = *v14;
      v124 = *v14;
      v19 = *v9;
      *(v14 + 8) = *(a2 - 8);
      *v14 = v19;
LABEL_35:
      *(a2 - 8) = v124.n128_u32[2];
      *v9 = v124.n128_u64[0];
      goto LABEL_58;
    }

    result = *v14;
    v133 = *v14;
    v32 = *v12;
    *(v14 + 8) = *(v12 + 8);
    *v14 = v32;
    *(v12 + 8) = v133.n128_u32[2];
    *v12 = v133.n128_u64[0];
    if (*(a2 - 8) < *(v12 + 8))
    {
      result = *v12;
      v124 = *v12;
      v33 = *v9;
      *(v12 + 8) = *(a2 - 8);
      *v12 = v33;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 8);
LABEL_61:
      v47 = *v12;
      v48 = v12;
      do
      {
        v49 = v48;
        v48 += 16;
      }

      while (*(v49 + 24) < result.n128_f32[0]);
      v50 = a2;
      if (v49 == v12)
      {
        v53 = a2;
        while (v48 < v53)
        {
          v51 = v53 - 16;
          v54 = *(v53 - 8);
          v53 -= 16;
          if (v54 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v51 = v53;
      }

      else
      {
        do
        {
          v51 = v50 - 16;
          v52 = *(v50 - 8);
          v50 -= 16;
        }

        while (v52 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v48;
      if (v48 < v51)
      {
        v55 = v51;
        do
        {
          v144 = *v12;
          v56 = *v55;
          *(v12 + 8) = *(v55 + 8);
          *v12 = v56;
          *(v55 + 8) = v144.n128_u32[2];
          *v55 = v144.n128_u64[0];
          do
          {
            v57 = *(v12 + 24);
            v12 += 16;
          }

          while (v57 < result.n128_f32[0]);
          do
          {
            v58 = *(v55 - 8);
            v55 -= 16;
          }

          while (v58 >= result.n128_f32[0]);
        }

        while (v12 < v55);
      }

      if (v12 - 16 != a1)
      {
        v59 = *(v12 - 16);
        *(a1 + 8) = *(v12 - 8);
        *a1 = v59;
      }

      *(v12 - 16) = v47;
      *(v12 - 8) = result.n128_u32[0];
      if (v48 < v51)
      {
        goto LABEL_82;
      }

      v60 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *>(a1, v12 - 16);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *>(v12, a2))
      {
        a2 = v12 - 16;
        if (!v60)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v60)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,nlv4_inference_orchestrator::inference_engine::TokenIndexAndScore *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 8);
      if (*(v12 - 8) < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f32[0] >= *(a2 - 8))
      {
        v63 = v12 + 16;
        do
        {
          v12 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v64 = *(v63 + 8);
          v63 += 16;
        }

        while (result.n128_f32[0] >= v64);
      }

      else
      {
        v61 = v12;
        do
        {
          v12 = v61 + 16;
          v62 = *(v61 + 24);
          v61 += 16;
        }

        while (result.n128_f32[0] >= v62);
      }

      v65 = a2;
      if (v12 < a2)
      {
        v66 = a2;
        do
        {
          v65 = v66 - 16;
          v67 = *(v66 - 8);
          v66 -= 16;
        }

        while (result.n128_f32[0] < v67);
      }

      v68 = *a1;
      while (v12 < v65)
      {
        v145 = *v12;
        v69 = *v65;
        *(v12 + 8) = *(v65 + 8);
        *v12 = v69;
        *(v65 + 8) = v145.n128_u32[2];
        *v65 = v145.n128_u64[0];
        do
        {
          v70 = *(v12 + 24);
          v12 += 16;
        }

        while (result.n128_f32[0] >= v70);
        do
        {
          v71 = *(v65 - 8);
          v65 -= 16;
        }

        while (result.n128_f32[0] < v71);
      }

      if (v12 - 16 != a1)
      {
        v72 = *(v12 - 16);
        *(a1 + 8) = *(v12 - 8);
        *a1 = v72;
      }

      a4 = 0;
      *(v12 - 16) = v68;
      *(v12 - 8) = result.n128_u32[0];
    }
  }

  result.n128_u32[0] = *(v12 + 24);
  v73 = *(a2 - 8);
  if (result.n128_f32[0] >= *(v12 + 8))
  {
    if (v73 >= result.n128_f32[0])
    {
      return result;
    }

    result = *(v12 + 16);
    v116 = *v9;
    *(v12 + 24) = *(a2 - 8);
    *(v12 + 16) = v116;
    *(a2 - 8) = result.n128_u32[2];
    *v9 = result.n128_u64[0];
    goto LABEL_187;
  }

  if (v73 < result.n128_f32[0])
  {
    goto LABEL_111;
  }

  result = *v12;
  v150 = *v12;
  *v12 = *(v12 + 16);
  *(v12 + 8) = *(v12 + 24);
  *(v12 + 16) = v150.n128_u64[0];
  *(v12 + 24) = v150.n128_u32[2];
  result.n128_u32[0] = *(a2 - 8);
  if (result.n128_f32[0] < *(v12 + 24))
  {
    result = *(v12 + 16);
    v146 = result;
    v121 = *v9;
    *(v12 + 24) = *(a2 - 8);
    *(v12 + 16) = v121;
    goto LABEL_112;
  }

  return result;
}

void nlv4_inference_orchestrator::inference_engine::Trail::Trail(uint64_t a1, uint64_t *a2, _DWORD *a3, _BYTE *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = *a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 8, *a5, a5[1], (a5[1] - *a5) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 32, a5[3], a5[4], (a5[4] - a5[3]) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 56, *a6, a6[1], (a6[1] - *a6) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 80, a6[3], a6[4], (a6[4] - a6[3]) >> 2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 104, *a7, a7[1], (a7[1] - *a7) >> 3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 128, a7[3], a7[4], (a7[4] - a7[3]) >> 2);
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 200, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 224) = *a4;
  v15 = 1;
  __p[1] = 0;
  v14 = 0;
  __p[0] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, &v15, &v16, 1uLL);
}

void sub_222891344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v12 + 208) = v19;
    operator delete(v19);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v16);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v15);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v14);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v13);
  _Unwind_Resume(a1);
}

void sub_2228913C0()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 64) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2228913B0);
}

void sub_2228913E0()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2228913B8);
}

uint64_t std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::__emplace_back_slow_path<nlv4_inference_orchestrator::inference_engine::Trail const&>(uint64_t *a1, const nlv4_inference_orchestrator::inference_engine::Trail *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 0;
  v17 = 232 * v2;
  nlv4_inference_orchestrator::inference_engine::Trail::Trail((232 * v2), a2);
  v18 = (232 * v2 + 232);
  v6 = *a1;
  v7 = a1[1];
  v8 = 232 * v2 + *a1 - v7;
  if (*a1 != v7)
  {
    v9 = *a1;
    v10 = v17 + *a1 - v7;
    do
    {
      *v10 = *v9;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 8) = 0;
      *(v10 + 8) = *(v9 + 8);
      *(v10 + 24) = *(v9 + 3);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 32) = *(v9 + 2);
      *(v10 + 48) = *(v9 + 6);
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
      *(v10 + 56) = *(v9 + 56);
      *(v10 + 72) = *(v9 + 9);
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v10 + 80) = *(v9 + 5);
      *(v10 + 96) = *(v9 + 12);
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 120) = 0;
      *(v10 + 104) = *(v9 + 104);
      *(v10 + 120) = *(v9 + 15);
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      *(v10 + 128) = *(v9 + 8);
      *(v10 + 144) = *(v9 + 18);
      *(v9 + 16) = 0;
      *(v9 + 17) = 0;
      *(v9 + 18) = 0;
      *(v10 + 152) = 0;
      *(v10 + 160) = 0;
      *(v10 + 168) = 0;
      *(v10 + 152) = *(v9 + 152);
      *(v10 + 168) = *(v9 + 21);
      *(v9 + 19) = 0;
      *(v9 + 20) = 0;
      *(v9 + 21) = 0;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 192) = 0;
      *(v10 + 176) = *(v9 + 11);
      *(v10 + 192) = *(v9 + 24);
      *(v9 + 22) = 0;
      *(v9 + 23) = 0;
      *(v9 + 24) = 0;
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      *(v10 + 216) = 0;
      *(v10 + 200) = *(v9 + 200);
      *(v10 + 216) = *(v9 + 27);
      *(v9 + 25) = 0;
      *(v9 + 26) = 0;
      *(v9 + 27) = 0;
      *(v10 + 224) = *(v9 + 224);
      v9 = (v9 + 232);
      v10 += 232;
    }

    while (v9 != v7);
    do
    {
      nlv4_inference_orchestrator::inference_engine::Trail::~Trail(v6);
      v6 = (v11 + 232);
    }

    while (v6 != v7);
  }

  v12 = *a1;
  *a1 = v8;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlv4_inference_orchestrator::inference_engine::Trail>::~__split_buffer(&v16);
  return v15;
}

void sub_22289169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlv4_inference_orchestrator::inference_engine::Trail>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

nlv4_inference_orchestrator::inference_engine::Trail *nlv4_inference_orchestrator::inference_engine::Trail::Trail(nlv4_inference_orchestrator::inference_engine::Trail *this, const nlv4_inference_orchestrator::inference_engine::Trail *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 104, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 3);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 152, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 3);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 176, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 2);
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 200, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 3);
  *(this + 224) = *(a2 + 224);
  return this;
}

void sub_222891808(_Unwind_Exception *a1)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v4);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v3);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v2);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v1);
  _Unwind_Resume(a1);
}

void sub_222891874()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 64) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x222891864);
}

void sub_222891894()
{
  v2 = *v0;
  if (*v0)
  {
    *(v1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x22289186CLL);
}

void nlv4_inference_orchestrator::inference_engine::Trail::~Trail(nlv4_inference_orchestrator::inference_engine::Trail *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 2) = v10;
    operator delete(v10);
  }
}

uint64_t std::__split_buffer<nlv4_inference_orchestrator::inference_engine::Trail>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    nlv4_inference_orchestrator::inference_engine::Trail::~Trail((i - 232));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t nlv4_inference_orchestrator::inference_engine::Trail::getLastPrediction@<X0>(nlv4_inference_orchestrator::inference_engine::Trail *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), *(this + 22), *(this + 23), (*(this + 23) - *(this + 22)) >> 2);
}

void sub_222891A0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::Trail::getHidden@<X0>(nlv4_inference_orchestrator::inference_engine::Trail *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), *(this + 4), *(this + 5), (*(this + 5) - *(this + 4)) >> 2);
}

void sub_222891A84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::Trail::getMemory@<X0>(nlv4_inference_orchestrator::inference_engine::Trail *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 7), *(this + 8), (*(this + 8) - *(this + 7)) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), *(this + 10), *(this + 11), (*(this + 11) - *(this + 10)) >> 2);
}

void sub_222891AFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::Trail::getAttentionIndex@<X0>(nlv4_inference_orchestrator::inference_engine::Trail *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a2, *(this + 13), *(this + 14), (*(this + 14) - *(this + 13)) >> 3);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a2 + 3), *(this + 16), *(this + 17), (*(this + 17) - *(this + 16)) >> 2);
}

void sub_222891B74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(E5RT::ExecutionStreamOperation **this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[22]);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[22]);
  std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(void)::$_0>(*(InputPorts + 16), this);
  v4 = *(OutputPorts + 16);

  return std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(void)::$_0>(v4, this);
}

uint64_t std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(void)::$_0>(const void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = v3[5];
      v8[0] = (v3 + 2);
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 312), v3 + 2);
      v6 = v5[6];
      v8[0] = v5[5];
      v8[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindMemory(v5, v4, v8);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v3 = *v3;
    }

    while (v3);
  }

  return a2;
}

void sub_222891C88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindMemory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::BindMemoryObject();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_222891CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderE5MLModule::setInputs(const void **this, const nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType *a2)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 44, a2);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 47, a2 + 48);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 50, a2 + 96);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 53, a2 + 144);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 56, a2 + 240);

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 59, a2 + 192);
}

void snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(uint64_t a1, const void **a2, uint64_t a3)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*(a1 + 176));
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(InputPorts, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v47 = std::string::append(&v78, ")");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = std::string::append(&v79, " does not exist.");
    v50 = *&v49->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v80);
    exception->__vftable = &unk_2835E6B78;
  }

  if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) == 2)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v80, "The setInput method is not yet implemented for UINT_8.");
    std::runtime_error::runtime_error(v51, &v80);
    v51->__vftable = &unk_2835E6B78;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(InputPorts, a2);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = v7[5];
  v8 = v7[6];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a3 + 24);
  v10 = *(a3 + 32);
  E5RT::IOPort::GetMemoryObject(&v80, v9);
  v12 = E5RT::MemoryObject::TryAsBuffer(v80.__r_.__value_.__l.__data_);
  if (v80.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80.__r_.__value_.__l.__size_);
  }

  if (!v12)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v53 = std::string::append(&v79, ").");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v52, &v80);
    v52->__vftable = &unk_2835E6B78;
  }

  E5RT::IOPort::GetPortDescriptor(&v79, v9);
  v13 = E5RT::OperandDescriptor::TensorDescriptor(v79.__r_.__value_.__l.__data_);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v13);
  memset(&v80, 0, sizeof(v80));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v80, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  v15 = v10 - v11;
  if (v79.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79.__r_.__value_.__l.__size_);
  }

  v16 = v80.__r_.__value_.__r.__words[0];
  if (v80.__r_.__value_.__r.__words[0] == v80.__r_.__value_.__l.__size_)
  {
    v19 = 1;
  }

  else
  {
    v17 = 1;
    do
    {
      v18 = *v16;
      v16 += 2;
      v17 *= v18;
    }

    while (v16 != v80.__r_.__value_.__l.__size_);
    v19 = v17;
  }

  if (v15 >> 2 != v19)
  {
    v55 = v19;
    v56 = v15 >> 2;
    v57 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v58 = std::string::append(&v74, " buffer due to the input tensor being mismatched in size.  Buffer size is ");
    v59 = *&v58->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v73, v55);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v73;
    }

    else
    {
      v60 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v73.__r_.__value_.__l.__size_;
    }

    v62 = std::string::append(&v75, v60, size);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v76, "; input tensor contains ");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v72, v56);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v72;
    }

    else
    {
      v66 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v72.__r_.__value_.__l.__size_;
    }

    v68 = std::string::append(&v77, v66, v67);
    v69 = *&v68->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    v70 = std::string::append(&v78, " elements.");
    v71 = *&v70->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v57, &v79);
    v57->__vftable = &unk_2835E9238;
  }

  if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2))
  {
    if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) == 1)
    {
      E5RT::IOPort::GetMemoryObject(&v79, v9);
      v20 = E5RT::MemoryObject::TryAsBuffer(v79.__r_.__value_.__l.__data_);
      DataSpan = E5RT::BufferObject::GetDataSpan(v20);
      v23 = v22 >> 2;
      if (v22 >= 4)
      {
        v24 = DataSpan;
      }

      else
      {
        v24 = 0;
      }

      if (v79.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79.__r_.__value_.__l.__size_);
      }

      if ((4 * v23) >= 1)
      {
        bzero(v24, 4 * v23);
      }

      if (v10 != v11)
      {
        memmove(v24, *(a3 + 24), v10 - v11);
      }
    }

    else if (snlp::common::espresso_inference::e5ml::WeightsHandler::getDataTypeForPort((a1 + 192), a2) == 2)
    {
      E5RT::IOPort::GetMemoryObject(&v79, v9);
      v38 = E5RT::MemoryObject::TryAsBuffer(v79.__r_.__value_.__l.__data_);
      v39 = E5RT::BufferObject::GetDataSpan(v38);
      v41 = v40;
      if (v40)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      if (v79.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79.__r_.__value_.__l.__size_);
      }

      if (v41 >= 1)
      {
        bzero(v42, v41);
      }

      if (v10 != v11)
      {
        v43 = *(a3 + 24);
        v44 = (v43 + v15);
        do
        {
          v45 = *v43++;
          *v42++ = v45;
        }

        while (v43 != v44);
      }
    }
  }

  else
  {
    E5RT::IOPort::GetMemoryObject(&v79, v9);
    v25 = E5RT::MemoryObject::TryAsBuffer(v79.__r_.__value_.__l.__data_);
    v26 = E5RT::BufferObject::GetDataSpan(v25);
    v28 = v27 >> 1;
    if (v27 >= 2)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (v79.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79.__r_.__value_.__l.__size_);
    }

    if ((2 * v28) >= 1)
    {
      bzero(v29, 2 * v28);
    }

    if (v10 != v11)
    {
      v30 = *(a3 + 24);
      v31 = (v30 + v15);
      do
      {
        v32 = *v30++;
        _S0 = v32;
        __asm { FCVT            H0, S0 }

        *v29++ = _S0;
      }

      while (v30 != v31);
    }
  }

  if (v80.__r_.__value_.__r.__words[0])
  {
    v80.__r_.__value_.__l.__size_ = v80.__r_.__value_.__r.__words[0];
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_2228923CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v57 - 121) < 0)
  {
    operator delete(*(v57 - 144));
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
    if ((v56 & 1) == 0)
    {
LABEL_20:
      v59 = *(v57 - 112);
      if (v59)
      {
        *(v57 - 104) = v59;
        operator delete(v59);
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v56)
  {
    goto LABEL_20;
  }

  __cxa_free_exception(v55);
  goto LABEL_20;
}

uint64_t std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::push_back[abi:ne200100](uint64_t *a1, const nlv4_inference_orchestrator::inference_engine::Trail *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::__emplace_back_slow_path<nlv4_inference_orchestrator::inference_engine::Trail const&>(a1, a2);
  }

  else
  {
    nlv4_inference_orchestrator::inference_engine::Trail::Trail(a1[1], a2);
    result = v3 + 232;
    a1[1] = v3 + 232;
  }

  a1[1] = result;
  return result;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<nlv4_inference_orchestrator::inference_engine::Trail> &,std::__wrap_iter<nlv4_inference_orchestrator::inference_engine::Trail*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v50 = v3;
    v51 = v4;
    v7 = v5 >> 1;
    v8 = (a1 + 232 * (v5 >> 1));
    v9 = (a2 - 232);
    if (*v8 < *(a2 - 232))
    {
      v30 = *(a2 - 232);
      v31 = *(a2 - 224);
      v32 = *(a2 - 208);
      *(a2 - 224) = 0;
      *(a2 - 216) = 0;
      *(a2 - 208) = 0;
      v33 = *(a2 - 200);
      v34 = *(a2 - 184);
      *(a2 - 200) = 0;
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      v35 = *(a2 - 176);
      v36 = *(a2 - 160);
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      *(a2 - 160) = 0;
      v37 = *(a2 - 152);
      v38 = *(a2 - 136);
      *(a2 - 152) = 0;
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      v39 = *(a2 - 128);
      v40 = *(a2 - 112);
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      *(a2 - 112) = 0;
      v41 = *(a2 - 104);
      v42 = *(a2 - 88);
      *(a2 - 104) = 0;
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      v43 = *(a2 - 80);
      v44 = *(a2 - 64);
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v45 = *(a2 - 56);
      v46 = *(a2 - 40);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v47 = *(a2 - 32);
      v48 = *(a2 - 16);
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      v49 = *(a2 - 8);
      v10 = *v8;
      do
      {
        v11 = v8;
        *v9 = v10;
        v12 = *(v9 + 1);
        if (v12)
        {
          *(v9 + 2) = v12;
          operator delete(v12);
          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *(v9 + 3) = 0;
        }

        *(v9 + 2) = *(v11 + 2);
        *(v9 + 3) = *(v11 + 3);
        *(v11 + 1) = 0;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        v13 = *(v9 + 4);
        if (v13)
        {
          *(v9 + 5) = v13;
          operator delete(v13);
          *(v9 + 4) = 0;
          *(v9 + 5) = 0;
          *(v9 + 6) = 0;
        }

        *(v9 + 2) = *(v11 + 2);
        *(v9 + 6) = *(v11 + 6);
        *(v11 + 4) = 0;
        *(v11 + 5) = 0;
        *(v11 + 6) = 0;
        v14 = *(v9 + 7);
        if (v14)
        {
          *(v9 + 8) = v14;
          operator delete(v14);
          *(v9 + 7) = 0;
          *(v9 + 8) = 0;
          *(v9 + 9) = 0;
        }

        *(v9 + 14) = *(v11 + 14);
        *(v9 + 9) = *(v11 + 9);
        *(v11 + 7) = 0;
        *(v11 + 8) = 0;
        *(v11 + 9) = 0;
        v15 = *(v9 + 10);
        if (v15)
        {
          *(v9 + 11) = v15;
          operator delete(v15);
          *(v9 + 10) = 0;
          *(v9 + 11) = 0;
          *(v9 + 12) = 0;
        }

        *(v9 + 5) = *(v11 + 5);
        *(v9 + 12) = *(v11 + 12);
        *(v11 + 10) = 0;
        *(v11 + 11) = 0;
        *(v11 + 12) = 0;
        v16 = *(v9 + 13);
        if (v16)
        {
          *(v9 + 14) = v16;
          operator delete(v16);
          *(v9 + 13) = 0;
          *(v9 + 14) = 0;
          *(v9 + 15) = 0;
        }

        *(v9 + 26) = *(v11 + 26);
        *(v9 + 15) = *(v11 + 15);
        *(v11 + 13) = 0;
        *(v11 + 14) = 0;
        *(v11 + 15) = 0;
        v17 = *(v9 + 16);
        if (v17)
        {
          *(v9 + 17) = v17;
          operator delete(v17);
          *(v9 + 16) = 0;
          *(v9 + 17) = 0;
          *(v9 + 18) = 0;
        }

        *(v9 + 8) = *(v11 + 8);
        *(v9 + 18) = *(v11 + 18);
        *(v11 + 16) = 0;
        *(v11 + 17) = 0;
        *(v11 + 18) = 0;
        v18 = *(v9 + 19);
        if (v18)
        {
          *(v9 + 20) = v18;
          operator delete(v18);
          *(v9 + 19) = 0;
          *(v9 + 20) = 0;
          *(v9 + 21) = 0;
        }

        *(v9 + 38) = *(v11 + 38);
        *(v9 + 21) = *(v11 + 21);
        *(v11 + 19) = 0;
        *(v11 + 20) = 0;
        *(v11 + 21) = 0;
        v19 = *(v9 + 22);
        if (v19)
        {
          *(v9 + 23) = v19;
          operator delete(v19);
          *(v9 + 22) = 0;
          *(v9 + 23) = 0;
          *(v9 + 24) = 0;
        }

        *(v9 + 11) = *(v11 + 11);
        *(v9 + 24) = *(v11 + 24);
        *(v11 + 22) = 0;
        *(v11 + 23) = 0;
        *(v11 + 24) = 0;
        v20 = *(v9 + 25);
        if (v20)
        {
          *(v9 + 26) = v20;
          operator delete(v20);
          *(v9 + 25) = 0;
          *(v9 + 26) = 0;
          *(v9 + 27) = 0;
        }

        *(v9 + 50) = *(v11 + 50);
        *(v9 + 27) = *(v11 + 27);
        *(v11 + 25) = 0;
        *(v11 + 26) = 0;
        *(v11 + 27) = 0;
        *(v9 + 224) = *(v11 + 224);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 232 * v7);
        v10 = *v8;
        v9 = v11;
      }

      while (*v8 < v30);
      *v11 = v30;
      v21 = *(v11 + 1);
      if (v21)
      {
        *(v11 + 2) = v21;
        operator delete(v21);
        *(v11 + 1) = 0;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
      }

      *(v11 + 2) = v31;
      *(v11 + 3) = v32;
      v31 = 0uLL;
      v32 = 0;
      v22 = *(v11 + 4);
      if (v22)
      {
        *(v11 + 5) = v22;
        operator delete(v22);
        *(v11 + 4) = 0;
        *(v11 + 5) = 0;
        *(v11 + 6) = 0;
      }

      *(v11 + 2) = v33;
      *(v11 + 6) = v34;
      v33 = 0uLL;
      v34 = 0;
      v23 = *(v11 + 7);
      if (v23)
      {
        *(v11 + 8) = v23;
        operator delete(v23);
        *(v11 + 7) = 0;
        *(v11 + 8) = 0;
        *(v11 + 9) = 0;
      }

      *(v11 + 14) = v35;
      *(v11 + 9) = v36;
      v35 = 0uLL;
      v36 = 0;
      v24 = *(v11 + 10);
      if (v24)
      {
        *(v11 + 11) = v24;
        operator delete(v24);
        *(v11 + 10) = 0;
        *(v11 + 11) = 0;
        *(v11 + 12) = 0;
      }

      *(v11 + 5) = v37;
      *(v11 + 12) = v38;
      v37 = 0uLL;
      v38 = 0;
      v25 = *(v11 + 13);
      if (v25)
      {
        *(v11 + 14) = v25;
        operator delete(v25);
        *(v11 + 13) = 0;
        *(v11 + 14) = 0;
        *(v11 + 15) = 0;
      }

      *(v11 + 26) = v39;
      *(v11 + 15) = v40;
      v39 = 0uLL;
      v40 = 0;
      v26 = *(v11 + 16);
      if (v26)
      {
        *(v11 + 17) = v26;
        operator delete(v26);
        *(v11 + 16) = 0;
        *(v11 + 17) = 0;
        *(v11 + 18) = 0;
      }

      *(v11 + 8) = v41;
      *(v11 + 18) = v42;
      v41 = 0uLL;
      v42 = 0;
      v27 = *(v11 + 19);
      if (v27)
      {
        *(v11 + 20) = v27;
        operator delete(v27);
        *(v11 + 19) = 0;
        *(v11 + 20) = 0;
        *(v11 + 21) = 0;
      }

      *(v11 + 38) = v43;
      *(v11 + 21) = v44;
      v43 = 0uLL;
      v44 = 0;
      v28 = *(v11 + 22);
      if (v28)
      {
        *(v11 + 23) = v28;
        operator delete(v28);
        *(v11 + 22) = 0;
        *(v11 + 23) = 0;
        *(v11 + 24) = 0;
      }

      *(v11 + 11) = v45;
      *(v11 + 24) = v46;
      v45 = 0uLL;
      v46 = 0;
      v29 = *(v11 + 25);
      if (v29)
      {
        *(v11 + 26) = v29;
        operator delete(v29);
        *(v11 + 25) = 0;
        *(v11 + 26) = 0;
        *(v11 + 27) = 0;
      }

      *(v11 + 50) = v47;
      *(v11 + 27) = v48;
      v47 = 0uLL;
      v48 = 0;
      *(v11 + 224) = v49;
      nlv4_inference_orchestrator::inference_engine::Trail::~Trail(&v30);
    }
  }
}

void nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType::~TransformerDecoderInputType(nlv4_inference_orchestrator::inference_engine::TransformerDecoderInputType *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    *(this + 22) = v6;
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  v11 = *(this + 6);
  if (v11)
  {
    *(this + 7) = v11;
    operator delete(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    *(this + 4) = v12;
    operator delete(v12);
  }

  v13 = *this;
  if (*this)
  {
    *(this + 1) = v13;
    operator delete(v13);
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::less<nlv4_inference_orchestrator::inference_engine::Trail>,std::__wrap_iter<nlv4_inference_orchestrator::inference_engine::Trail*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v79 = v3;
    v80 = v4;
    v8 = 0;
    v9 = *a1;
    v61 = 0;
    v60 = 0uLL;
    v60 = *(a1 + 8);
    v61 = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v63 = 0;
    v62 = 0uLL;
    v62 = *(a1 + 32);
    v63 = *(a1 + 48);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v64 = 0uLL;
    v65 = 0;
    v64 = *(a1 + 56);
    v65 = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v66 = 0uLL;
    v67 = 0;
    v66 = *(a1 + 80);
    v67 = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v68 = 0uLL;
    v69 = 0;
    v68 = *(a1 + 104);
    v69 = *(a1 + 120);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v70 = 0uLL;
    v71 = 0;
    v70 = *(a1 + 128);
    v71 = *(a1 + 144);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v72 = 0uLL;
    v73 = 0;
    v72 = *(a1 + 152);
    v73 = *(a1 + 168);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v74 = 0uLL;
    v75 = 0;
    v74 = *(a1 + 176);
    v75 = *(a1 + 192);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    v76 = 0uLL;
    v77 = 0;
    v76 = *(a1 + 200);
    v77 = *(a1 + 216);
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    v78 = *(a1 + 224);
    v10 = (a3 - 2) >> 1;
    v11 = a1;
    v59 = v9;
    do
    {
      v12 = v11 + 232 * v8 + 232;
      v13 = 2 * v8;
      v8 = (2 * v8) | 1;
      v14 = v13 + 2;
      if (v14 < a3 && *v12 < *(v12 + 232))
      {
        v12 += 232;
        v8 = v14;
      }

      v15 = (v12 + 8);
      *v11 = *v12;
      v16 = *(v11 + 8);
      if (v16)
      {
        *(v11 + 16) = v16;
        operator delete(v16);
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
      }

      *(v11 + 8) = *(v12 + 8);
      *(v11 + 24) = *(v12 + 24);
      *v15 = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v17 = *(v11 + 32);
      if (v17)
      {
        *(v11 + 40) = v17;
        operator delete(v17);
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
      }

      *(v11 + 32) = *(v12 + 32);
      *(v11 + 48) = *(v12 + 48);
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v18 = *(v11 + 56);
      if (v18)
      {
        *(v11 + 64) = v18;
        operator delete(v18);
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        *(v11 + 72) = 0;
      }

      *(v11 + 56) = *(v12 + 56);
      *(v11 + 72) = *(v12 + 72);
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      v19 = *(v11 + 80);
      if (v19)
      {
        *(v11 + 88) = v19;
        operator delete(v19);
        *(v11 + 80) = 0;
        *(v11 + 88) = 0;
        *(v11 + 96) = 0;
      }

      *(v11 + 80) = *(v12 + 80);
      *(v11 + 96) = *(v12 + 96);
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 96) = 0;
      v20 = *(v11 + 104);
      if (v20)
      {
        *(v11 + 112) = v20;
        operator delete(v20);
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        *(v11 + 120) = 0;
      }

      *(v11 + 104) = *(v12 + 104);
      *(v11 + 120) = *(v12 + 120);
      *(v12 + 104) = 0;
      *(v12 + 112) = 0;
      *(v12 + 120) = 0;
      v21 = *(v11 + 128);
      if (v21)
      {
        *(v11 + 136) = v21;
        operator delete(v21);
        *(v11 + 128) = 0;
        *(v11 + 136) = 0;
        *(v11 + 144) = 0;
      }

      *(v11 + 128) = *(v12 + 128);
      *(v11 + 144) = *(v12 + 144);
      *(v12 + 128) = 0;
      *(v12 + 136) = 0;
      *(v12 + 144) = 0;
      v22 = *(v11 + 152);
      if (v22)
      {
        *(v11 + 160) = v22;
        operator delete(v22);
        *(v11 + 152) = 0;
        *(v11 + 160) = 0;
        *(v11 + 168) = 0;
      }

      *(v11 + 152) = *(v12 + 152);
      *(v11 + 168) = *(v12 + 168);
      *(v12 + 152) = 0;
      *(v12 + 160) = 0;
      *(v12 + 168) = 0;
      v23 = *(v11 + 176);
      if (v23)
      {
        *(v11 + 184) = v23;
        operator delete(v23);
        *(v11 + 176) = 0;
        *(v11 + 184) = 0;
        *(v11 + 192) = 0;
      }

      *(v11 + 176) = *(v12 + 176);
      *(v11 + 192) = *(v12 + 192);
      *(v12 + 176) = 0;
      *(v12 + 184) = 0;
      *(v12 + 192) = 0;
      v24 = *(v11 + 200);
      if (v24)
      {
        *(v11 + 208) = v24;
        operator delete(v24);
        *(v11 + 200) = 0;
        *(v11 + 208) = 0;
        *(v11 + 216) = 0;
      }

      *(v11 + 200) = *(v12 + 200);
      *(v11 + 216) = *(v12 + 216);
      *(v12 + 200) = 0;
      *(v12 + 208) = 0;
      *(v12 + 216) = 0;
      *(v11 + 224) = *(v12 + 224);
      v11 = v12;
    }

    while (v8 <= v10);
    if (a2 - 232 == v12)
    {
      *v12 = v59;
      v50 = *(v12 + 8);
      if (v50)
      {
        *(v12 + 16) = v50;
        operator delete(v50);
        *v15 = 0;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
      }

      *(v12 + 8) = v60;
      *(v12 + 24) = v61;
      v60 = 0uLL;
      v61 = 0;
      v51 = *(v12 + 32);
      if (v51)
      {
        *(v12 + 40) = v51;
        operator delete(v51);
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
        *(v12 + 48) = 0;
      }

      *(v12 + 32) = v62;
      *(v12 + 48) = v63;
      v62 = 0uLL;
      v63 = 0;
      v52 = *(v12 + 56);
      if (v52)
      {
        *(v12 + 64) = v52;
        operator delete(v52);
        *(v12 + 56) = 0;
        *(v12 + 64) = 0;
        *(v12 + 72) = 0;
      }

      *(v12 + 56) = v64;
      *(v12 + 72) = v65;
      v64 = 0uLL;
      v65 = 0;
      v53 = *(v12 + 80);
      if (v53)
      {
        *(v12 + 88) = v53;
        operator delete(v53);
        *(v12 + 80) = 0;
        *(v12 + 88) = 0;
        *(v12 + 96) = 0;
      }

      *(v12 + 80) = v66;
      *(v12 + 96) = v67;
      v66 = 0uLL;
      v67 = 0;
      v54 = *(v12 + 104);
      if (v54)
      {
        *(v12 + 112) = v54;
        operator delete(v54);
        *(v12 + 104) = 0;
        *(v12 + 112) = 0;
        *(v12 + 120) = 0;
      }

      *(v12 + 104) = v68;
      *(v12 + 120) = v69;
      v68 = 0uLL;
      v69 = 0;
      v55 = *(v12 + 128);
      if (v55)
      {
        *(v12 + 136) = v55;
        operator delete(v55);
        *(v12 + 128) = 0;
        *(v12 + 136) = 0;
        *(v12 + 144) = 0;
      }

      *(v12 + 128) = v70;
      *(v12 + 144) = v71;
      v70 = 0uLL;
      v71 = 0;
      v56 = *(v12 + 152);
      if (v56)
      {
        *(v12 + 160) = v56;
        operator delete(v56);
        *(v12 + 152) = 0;
        *(v12 + 160) = 0;
        *(v12 + 168) = 0;
      }

      *(v12 + 152) = v72;
      *(v12 + 168) = v73;
      v72 = 0uLL;
      v73 = 0;
      v57 = *(v12 + 176);
      if (v57)
      {
        *(v12 + 184) = v57;
        operator delete(v57);
        *(v12 + 176) = 0;
        *(v12 + 184) = 0;
        *(v12 + 192) = 0;
      }

      *(v12 + 176) = v74;
      *(v12 + 192) = v75;
      v74 = 0uLL;
      v75 = 0;
      v58 = *(v12 + 200);
      if (v58)
      {
        *(v12 + 208) = v58;
        operator delete(v58);
        *(v12 + 200) = 0;
        *(v12 + 208) = 0;
        *(v12 + 216) = 0;
      }

      *(v12 + 200) = v76;
      *(v12 + 216) = v77;
      v76 = 0uLL;
      v77 = 0;
      *(v12 + 224) = v78;
    }

    else
    {
      *v12 = *(a2 - 232);
      v25 = (a2 - 224);
      v26 = *(v12 + 8);
      if (v26)
      {
        *(v12 + 16) = v26;
        operator delete(v26);
        *v15 = 0;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
      }

      *(v12 + 8) = *(a2 - 224);
      *(v12 + 24) = *(a2 - 208);
      *v25 = 0;
      *(a2 - 216) = 0;
      *(a2 - 208) = 0;
      v27 = *(v12 + 32);
      if (v27)
      {
        *(v12 + 40) = v27;
        operator delete(v27);
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
        *(v12 + 48) = 0;
      }

      *(v12 + 32) = *(a2 - 200);
      *(v12 + 48) = *(a2 - 184);
      *(a2 - 200) = 0;
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      v28 = *(v12 + 56);
      if (v28)
      {
        *(v12 + 64) = v28;
        operator delete(v28);
        *(v12 + 56) = 0;
        *(v12 + 64) = 0;
        *(v12 + 72) = 0;
      }

      *(v12 + 56) = *(a2 - 176);
      *(v12 + 72) = *(a2 - 160);
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      *(a2 - 160) = 0;
      v29 = (a2 - 152);
      v30 = *(v12 + 80);
      if (v30)
      {
        *(v12 + 88) = v30;
        operator delete(v30);
        *(v12 + 80) = 0;
        *(v12 + 88) = 0;
        *(v12 + 96) = 0;
      }

      *(v12 + 80) = *(a2 - 152);
      *(v12 + 96) = *(a2 - 136);
      *v29 = 0;
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      v31 = (a2 - 128);
      v32 = *(v12 + 104);
      if (v32)
      {
        *(v12 + 112) = v32;
        operator delete(v32);
        *(v12 + 104) = 0;
        *(v12 + 112) = 0;
        *(v12 + 120) = 0;
      }

      *(v12 + 104) = *(a2 - 128);
      *(v12 + 120) = *(a2 - 112);
      *v31 = 0;
      *(a2 - 120) = 0;
      *(a2 - 112) = 0;
      v33 = (a2 - 104);
      v34 = *(v12 + 128);
      if (v34)
      {
        *(v12 + 136) = v34;
        operator delete(v34);
        *(v12 + 128) = 0;
        *(v12 + 136) = 0;
        *(v12 + 144) = 0;
      }

      *(v12 + 128) = *(a2 - 104);
      *(v12 + 144) = *(a2 - 88);
      *v33 = 0;
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      v35 = (a2 - 80);
      v36 = *(v12 + 152);
      if (v36)
      {
        *(v12 + 160) = v36;
        operator delete(v36);
        *(v12 + 152) = 0;
        *(v12 + 160) = 0;
        *(v12 + 168) = 0;
      }

      *(v12 + 152) = *(a2 - 80);
      *(v12 + 168) = *(a2 - 64);
      *v35 = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v37 = (a2 - 56);
      v38 = *(v12 + 176);
      if (v38)
      {
        *(v12 + 184) = v38;
        operator delete(v38);
        *(v12 + 176) = 0;
        *(v12 + 184) = 0;
        *(v12 + 192) = 0;
      }

      *(v12 + 176) = *(a2 - 56);
      *(v12 + 192) = *(a2 - 40);
      *v37 = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v39 = (a2 - 32);
      v40 = *(v12 + 200);
      if (v40)
      {
        *(v12 + 208) = v40;
        operator delete(v40);
        *(v12 + 200) = 0;
        *(v12 + 208) = 0;
        *(v12 + 216) = 0;
      }

      *(v12 + 200) = *(a2 - 32);
      *(v12 + 216) = *(a2 - 16);
      *v39 = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(v12 + 224) = *(a2 - 8);
      *(a2 - 232) = v59;
      v41 = *(a2 - 224);
      if (v41)
      {
        *(a2 - 216) = v41;
        operator delete(v41);
        *v25 = 0;
        *(a2 - 216) = 0;
        *(a2 - 208) = 0;
      }

      *(a2 - 224) = v60;
      *(a2 - 208) = v61;
      v60 = 0uLL;
      v61 = 0;
      v42 = *(a2 - 200);
      if (v42)
      {
        *(a2 - 192) = v42;
        operator delete(v42);
        *(a2 - 200) = 0;
        *(a2 - 192) = 0;
        *(a2 - 184) = 0;
      }

      *(a2 - 200) = v62;
      *(a2 - 184) = v63;
      v62 = 0uLL;
      v63 = 0;
      v43 = *(a2 - 176);
      if (v43)
      {
        *(a2 - 168) = v43;
        operator delete(v43);
        *(a2 - 176) = 0;
        *(a2 - 168) = 0;
        *(a2 - 160) = 0;
      }

      *(a2 - 176) = v64;
      *(a2 - 160) = v65;
      v64 = 0uLL;
      v65 = 0;
      v44 = *(a2 - 152);
      if (v44)
      {
        *(a2 - 144) = v44;
        operator delete(v44);
        *v29 = 0;
        *(a2 - 144) = 0;
        *(a2 - 136) = 0;
      }

      *(a2 - 152) = v66;
      *(a2 - 136) = v67;
      v66 = 0uLL;
      v67 = 0;
      v45 = *(a2 - 128);
      if (v45)
      {
        *(a2 - 120) = v45;
        operator delete(v45);
        *v31 = 0;
        *(a2 - 120) = 0;
        *(a2 - 112) = 0;
      }

      *(a2 - 128) = v68;
      *(a2 - 112) = v69;
      v68 = 0uLL;
      v69 = 0;
      v46 = *(a2 - 104);
      if (v46)
      {
        *(a2 - 96) = v46;
        operator delete(v46);
        *v33 = 0;
        *(a2 - 96) = 0;
        *(a2 - 88) = 0;
      }

      *(a2 - 104) = v70;
      *(a2 - 88) = v71;
      v70 = 0uLL;
      v71 = 0;
      v47 = *(a2 - 80);
      if (v47)
      {
        *(a2 - 72) = v47;
        operator delete(v47);
        *v35 = 0;
        *(a2 - 72) = 0;
        *(a2 - 64) = 0;
      }

      *(a2 - 80) = v72;
      *(a2 - 64) = v73;
      v72 = 0uLL;
      v73 = 0;
      v48 = *(a2 - 56);
      if (v48)
      {
        *(a2 - 48) = v48;
        operator delete(v48);
        *v37 = 0;
        *(a2 - 48) = 0;
        *(a2 - 40) = 0;
      }

      *(a2 - 56) = v74;
      *(a2 - 40) = v75;
      v74 = 0uLL;
      v75 = 0;
      v49 = *(a2 - 32);
      if (v49)
      {
        *(a2 - 24) = v49;
        operator delete(v49);
        *v39 = 0;
        *(a2 - 24) = 0;
        *(a2 - 16) = 0;
      }

      *(a2 - 32) = v76;
      *(a2 - 16) = v77;
      v76 = 0uLL;
      v77 = 0;
      *(a2 - 8) = v78;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<nlv4_inference_orchestrator::inference_engine::Trail> &,std::__wrap_iter<nlv4_inference_orchestrator::inference_engine::Trail*>>(a1, v12 + 232, 0x34F72C234F72C235 * ((v12 + 232 - a1) >> 3));
    }

    nlv4_inference_orchestrator::inference_engine::Trail::~Trail(&v59);
  }
}

void std::vector<nlv4_inference_orchestrator::inference_engine::Trail>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        nlv4_inference_orchestrator::inference_engine::Trail::~Trail((v4 - 232));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::pair<float,std::vector<unsigned long>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType::~TransformerEncoderModuleInputType(nlv4_inference_orchestrator::inference_engine::TransformerEncoderModuleInputType *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<float,std::vector<unsigned long>>>,std::pair<float,std::vector<unsigned long>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void nlv4_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(nlv4_inference_orchestrator::vocabulary::Vocabulary *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v3 = *(this + 23);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - v3) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Encountered unknown token ID");
    __cxa_throw(exception, off_2784B6760, MEMORY[0x277D825E0]);
  }

  v4 = (v3 + 24 * a2);
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 1);

    std::string::__init_copy_ctor_external(a3, v6, v7);
  }

  else
  {
    v5 = *v4;
    a3->__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&a3->__r_.__value_.__l.__data_ = v5;
  }
}

void std::vector<std::pair<std::string_view,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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

void nlv4_inference_orchestrator::placeholder::VerbExtractor::getVerbFromNLContext(nlv4_inference_orchestrator::placeholder::VerbExtractor *this@<X0>, const sirinluexternal::NLContext *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 11);
  if (v4 == *(a2 + 12))
  {
    *a3 = 0;
    a3[24] = 0;
    return;
  }

  v6 = *v4;
  v8 = *this;
  v7 = *(this + 1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v18 = 0;
  }

  v9 = v6[5];
  if (v9 && *(v9 + 8))
  {
    operator new();
  }

  v10 = v6[4];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      nlv4_inference_orchestrator::placeholder::VerbExtractor::getVerbFromUserDialogAct(this, v11, a3);
      goto LABEL_25;
    }
  }

  v12 = v6[1];
  if (v12)
  {
    v14 = v12 + 8;
    v13 = *(v12 + 8);
    if (*(v14 + 8) != v13)
    {
      nlv4_inference_orchestrator::placeholder::VerbExtractor::getVerbFromUserDialogAct(this, *v13, a3);
      goto LABEL_25;
    }
  }

  else
  {
    v15 = v6[3];
    if (v15)
    {
      if (*(v15 + 16) != *(v15 + 8))
      {
        operator new();
      }
    }

    else
    {
      v16 = v6[8];
      if (v16 && *(v16 + 8))
      {
        std::make_unique[abi:ne200100]<siri::ontology::UsoGraph,siri::ontology::OntologyVersion const&,0>();
      }

      v17 = v6[7];
      if (v17 && *(v17 + 16))
      {
        std::make_unique[abi:ne200100]<siri::ontology::UsoGraph,siri::ontology::OntologyVersion const&,0>();
      }
    }
  }

  *a3 = 0;
  a3[24] = 0;
LABEL_25:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_222893C94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  *v10 = 0;
  v10[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x222893C74);
}

void sub_222893D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::trees::TagExpander::expandTags(std::string *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  nlv4_inference_orchestrator::trees::TagExpander::expandMultiTagTags(a1, a2, v5);
  nlv4_inference_orchestrator::trees::TagExpander::expandNextTags(a1, v5, a3);
  v6 = v5;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_222893D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_222893E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer nlv4_inference_orchestrator::trees::TagExpander::expandMultiTagTags@<X0>(std::__split_buffer<std::string>::pointer result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    do
    {
      v7 = *(v3 + 23);
      if (v7 < 0)
      {
        v8 = *v3;
        v7 = *(v3 + 8);
      }

      else
      {
        v8 = v3;
      }

      v9 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
      if (v9 >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = v5->__r_.__value_.__r.__words[0];
      }

      if (v9 >= 0)
      {
        size = HIBYTE(v5->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v5->__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_26;
      }

      if (v7 >= size)
      {
        v13 = (v8 + v7);
        v14 = *v10;
        v15 = v8;
        while (1)
        {
          v16 = v7 - size;
          if (v16 == -1)
          {
            goto LABEL_14;
          }

          v17 = memchr(v15, v14, v16 + 1);
          if (!v17)
          {
            goto LABEL_14;
          }

          v18 = v17;
          if (!memcmp(v17, v10, size))
          {
            break;
          }

          v15 = v18 + 1;
          v7 = v13 - (v18 + 1);
          if (v7 < size)
          {
            goto LABEL_14;
          }
        }

        if (v18 != v13 && &v18[-v8] != -1)
        {
LABEL_26:
          nlv4_inference_orchestrator::trees::TagExpander::splitTagBySeparator(v5, v3);
        }
      }

LABEL_14:
      v12 = a3[1];
      if (v12 >= a3[2])
      {
        result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, v3);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a3, v3);
        result = v12 + 1;
      }

      a3[1] = result;
      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_2228940DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__split_buffer<std::string> *a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void ***a13)
{
  a13 = &a10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::PlyTreeCreator::constructTree(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a1, *(a1 + 8));
  }

  else
  {
    v4 = *a1;
  }

  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  memset(__p, 0, sizeof(__p));
  *v5 = 0u;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(&v4.__r_.__value_.__s + 23) = 0;
  v4.__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = *v5;
  *(a2 + 40) = __p[0];
  HIBYTE(__p[0]) = 0;
  LOBYTE(v5[0]) = 0;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = *&__p[1];
  *(a2 + 64) = __p[3];
  HIBYTE(__p[3]) = 0;
  LOBYTE(__p[1]) = 0;
  *(a2 + 72) = v7;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a2 + 88);
  *(a2 + 88) = *v8;
  *(a2 + 104) = *&v8[16];
  memset(v8, 0, 24);
  v3 = *&v8[40];
  *(a2 + 112) = *&v8[24];
  *(a2 + 128) = v3;
  v15[0] = v8;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v15);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "ROOT");
  std::string::basic_string[abi:ne200100]<0>(v5, ".");
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "value=");
  std::string::basic_string[abi:ne200100]<0>(&v7, "intent=");
  std::string::basic_string[abi:ne200100]<0>(&v8[8], "[next]");
  std::string::basic_string[abi:ne200100]<0>(&v8[32], "[startPayload]");
  std::string::basic_string[abi:ne200100]<0>(v9, "[leaf]");
  std::string::basic_string[abi:ne200100]<0>(v10, "[endPayload]");
  std::string::basic_string[abi:ne200100]<0>(v11, "[newGroup]");
  std::string::basic_string[abi:ne200100]<0>(&v12, "UserStatedTask");
  std::string::basic_string[abi:ne200100]<0>(v13, "task");
  std::string::basic_string[abi:ne200100]<0>(v15, "UserStarted");
  std::string::basic_string[abi:ne200100]<0>(v16, "UserContinued");
  std::string::basic_string[abi:ne200100]<0>(v17, "UserAccepted");
  std::string::basic_string[abi:ne200100]<0>(v18, "UserRejected");
  std::string::basic_string[abi:ne200100]<0>(v19, "UserDisambiguated");
  std::string::basic_string[abi:ne200100]<0>(v20, "UserCancelled");
  std::string::basic_string[abi:ne200100]<0>(v21, "UserWantedToRepeat");
  std::string::basic_string[abi:ne200100]<0>(v22, "UserAcknowledged");
  std::string::basic_string[abi:ne200100]<0>(v23, "UserWantedToProceed");
  std::string::basic_string[abi:ne200100]<0>(v24, "UserWantedToPause");
  std::string::basic_string[abi:ne200100]<0>(v25, "UserResponded");
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v12;
  }

  memset(v14, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v14, v15, &v27, 0xCuLL);
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2228947F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

void nlv4_inference_orchestrator::trees::PlyStateHandler::readTag(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 357) & 1) == 0)
  {
    v25 = *(a1 + 264);
    v26 = *(a1 + 272);
    if (v25 != v26)
    {
      v27 = *(a2 + 23);
      v28 = v27;
      v30 = *a2;
      v29 = *(a2 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v31 = *(a2 + 23);
      }

      else
      {
        v31 = *(a2 + 8);
      }

      if ((v27 & 0x80u) == 0)
      {
        v32 = a2;
      }

      else
      {
        v32 = *a2;
      }

      while (1)
      {
        v33 = *(v25 + 23);
        v34 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v33 = *(v25 + 8);
        }

        if (v33 == v31)
        {
          v35 = v34 >= 0 ? v25 : *v25;
          if (!memcmp(v35, v32, v31))
          {
            break;
          }
        }

        v25 += 24;
        if (v25 == v26)
        {
          goto LABEL_81;
        }
      }
    }

    if (v25 == v26)
    {
      v27 = *(a2 + 23);
      v30 = *a2;
      v29 = *(a2 + 8);
      v28 = *(a2 + 23);
LABEL_81:
      v43 = *(a1 + 72);
      if (v28 >= 0)
      {
        v44 = a2;
      }

      else
      {
        v44 = v30;
      }

      if (v28 >= 0)
      {
        v45 = v27;
      }

      else
      {
        v45 = v29;
      }

      v46 = *(a1 + 95);
      if (v46 >= 0)
      {
        v47 = (a1 + 72);
      }

      else
      {
        v47 = *(a1 + 72);
      }

      v48 = *(a1 + 80);
      if (v46 >= 0)
      {
        v49 = *(a1 + 95);
      }

      else
      {
        v49 = *(a1 + 80);
      }

      if (v45 && v49)
      {
        v50 = v49 - 1;
        v51 = v45 - 1;
        v52 = v47;
        while (*v44 == *v52)
        {
          ++v52;
          if (v51)
          {
            ++v44;
            v53 = v50--;
            --v51;
            if (v53)
            {
              continue;
            }
          }

          goto LABEL_101;
        }
      }

      else
      {
        v52 = v47;
LABEL_101:
        if (v52 == &v47[v49])
        {
          if (v28 < 0)
          {
            std::string::__init_copy_ctor_external(&v167, v30, v29);
            v46 = *(a1 + 95);
            v43 = *(a1 + 72);
            v48 = *(a1 + 80);
          }

          else
          {
            v167 = *a2;
          }

          size = HIBYTE(v167.__r_.__value_.__r.__words[2]);
          if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v167;
          }

          else
          {
            v72 = v167.__r_.__value_.__r.__words[0];
          }

          if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v167.__r_.__value_.__l.__size_;
          }

          if ((v46 & 0x80u) == 0)
          {
            v73 = (a1 + 72);
          }

          else
          {
            v73 = v43;
          }

          if ((v46 & 0x80u) == 0)
          {
            v74 = v46;
          }

          else
          {
            v74 = v48;
          }

          if (v74)
          {
            v75 = v72 + size;
            if (size >= v74)
            {
              v78 = *v73;
              v79 = v72;
              do
              {
                if (size - v74 == -1)
                {
                  break;
                }

                v80 = memchr(v79, v78, size - v74 + 1);
                if (!v80)
                {
                  break;
                }

                v76 = v80;
                if (!memcmp(v80, v73, v74))
                {
                  goto LABEL_158;
                }

                v79 = (v76 + 1);
                size = v75 - (v76 + 1);
              }

              while (size >= v74);
            }

            v76 = v75;
LABEL_158:
            if (v76 == v75)
            {
              v77 = -1;
            }

            else
            {
              v77 = v76 - v72;
            }
          }

          else
          {
            v77 = 0;
          }

          std::string::erase(&v167, v77, v74);
          nlv4_inference_orchestrator::trees::PlyStateHandler::constructIntent(a1, &v167);
          *(a1 + 357) = 1;
          if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v167.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else
    {

      nlv4_inference_orchestrator::trees::PlyStateHandler::constructUDA(a1, a2);
    }

    return;
  }

  v4 = (a1 + 96);
  v5 = *(a2 + 23);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v5 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 119);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 104);
  }

  if (v8 == v9)
  {
    v11 = v5 >= 0 ? a2 : *a2;
    v12 = (v10 >= 0 ? a1 + 96 : *v4);
    if (!memcmp(v11, v12, v8))
    {
      goto LABEL_122;
    }
  }

  v13 = *(a1 + 143);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 128);
  }

  if (v8 == v13)
  {
    v15 = v5 >= 0 ? a2 : v7;
    v16 = v14 >= 0 ? (a1 + 120) : *(a1 + 120);
    if (!memcmp(v15, v16, v8))
    {
      goto LABEL_122;
    }
  }

  v17 = *(a1 + 215);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 200);
  }

  if (v8 == v17)
  {
    v19 = v5 >= 0 ? a2 : v7;
    v20 = v18 >= 0 ? (a1 + 192) : *(a1 + 192);
    if (!memcmp(v19, v20, v8))
    {
      goto LABEL_122;
    }
  }

  v21 = *(a1 + 167);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a1 + 152);
  }

  if (v8 == v21)
  {
    if (v5 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = v7;
    }

    if (v22 >= 0)
    {
      v24 = (a1 + 144);
    }

    else
    {
      v24 = *(a1 + 144);
    }

    if (!memcmp(v23, v24, v8))
    {
      goto LABEL_122;
    }
  }

  else if (v5 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = v7;
  }

  v36 = *(a1 + 48);
  v37 = *(a1 + 71);
  if (v37 >= 0)
  {
    v36 = (a1 + 48);
  }

  v38 = *(a1 + 56);
  if (v37 >= 0)
  {
    v38 = *(a1 + 71);
  }

  if (v8 && v38)
  {
    v39 = v38 - 1;
    v40 = v8 - 1;
    v41 = v36;
    while (*v23 == *v41)
    {
      ++v41;
      if (v40)
      {
        ++v23;
        v42 = v39--;
        --v40;
        if (v42)
        {
          continue;
        }
      }

      goto LABEL_105;
    }
  }

  else
  {
    v41 = v36;
LABEL_105:
    if (v41 == &v36[v38])
    {
      goto LABEL_122;
    }
  }

  v54 = (a1 + 288);
  if (v5 >= 0)
  {
    v55 = a2;
  }

  else
  {
    v55 = v7;
  }

  v56 = *(a1 + 311);
  if (v56 < 0)
  {
    v54 = *(a1 + 288);
  }

  if (v56 < 0)
  {
    v56 = *(a1 + 296);
  }

  if (v8 && v56)
  {
    v57 = v56 - 1;
    v58 = v8 - 1;
    v59 = v54;
    while (*v55 == *v59)
    {
      ++v59;
      if (v58)
      {
        ++v55;
        v60 = v57--;
        --v58;
        if (v60)
        {
          continue;
        }
      }

      goto LABEL_121;
    }

    goto LABEL_219;
  }

  v59 = v54;
LABEL_121:
  if (v59 != &v54[v56])
  {
    goto LABEL_219;
  }

LABEL_122:
  if (*(a1 + 400))
  {
    v61 = *(a1 + 48);
    if (v5 >= 0)
    {
      v62 = a2;
    }

    else
    {
      v62 = v7;
    }

    v63 = *(a1 + 71);
    if (v63 >= 0)
    {
      v64 = (a1 + 48);
    }

    else
    {
      v64 = *(a1 + 48);
    }

    v65 = *(a1 + 56);
    if (v63 >= 0)
    {
      v66 = *(a1 + 71);
    }

    else
    {
      v66 = *(a1 + 56);
    }

    if (v8 && v66)
    {
      v67 = v66 - 1;
      v68 = v8 - 1;
      v69 = v64;
      while (*v62 == *v69)
      {
        ++v69;
        if (v68)
        {
          ++v62;
          v70 = v67--;
          --v68;
          if (v70)
          {
            continue;
          }
        }

        goto LABEL_140;
      }
    }

    else
    {
      v69 = v64;
LABEL_140:
      if (v69 == &v64[v66])
      {
        if (v5 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7, v6);
          v63 = *(a1 + 71);
          v61 = *(a1 + 48);
          v65 = *(a1 + 56);
        }

        else
        {
          __p = *a2;
        }

        v81 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v81 = __p.__r_.__value_.__l.__size_;
        }

        if ((v63 & 0x80u) == 0)
        {
          v83 = (a1 + 48);
        }

        else
        {
          v83 = v61;
        }

        if ((v63 & 0x80u) == 0)
        {
          v84 = v63;
        }

        else
        {
          v84 = v65;
        }

        if (v84)
        {
          v85 = p_p + v81;
          if (v81 >= v84)
          {
            v95 = *v83;
            v96 = p_p;
            do
            {
              if (v81 - v84 == -1)
              {
                break;
              }

              v97 = memchr(v96, v95, v81 - v84 + 1);
              if (!v97)
              {
                break;
              }

              v86 = v97;
              if (!memcmp(v97, v83, v84))
              {
                goto LABEL_184;
              }

              v96 = (v86 + 1);
              v81 = v85 - (v86 + 1);
            }

            while (v81 >= v84);
          }

          v86 = v85;
LABEL_184:
          if (v86 == v85)
          {
            v87 = -1;
          }

          else
          {
            v87 = v86 - p_p;
          }
        }

        else
        {
          v87 = 0;
        }

        std::string::erase(&__p, v87, v84);
        v88 = *(a1 + 368);
        v89 = *(a1 + 376);
        v90 = v89 - v88;
        if (v89 == v88)
        {
          v91 = 0;
        }

        else
        {
          v91 = 170 * (v89 - v88) - 1;
        }

        v92 = *(a1 + 392);
        if (v91 == *(a1 + 400) + v92)
        {
          v93 = v92 >= 0xAA;
          v94 = v92 - 170;
          if (!v93)
          {
            v98 = *(a1 + 384);
            v99 = *(a1 + 360);
            if (v90 < v98 - v99)
            {
              if (v98 != v89)
              {
                operator new();
              }

              operator new();
            }

            if (v98 == v99)
            {
              v100 = 1;
            }

            else
            {
              v100 = (v98 - v99) >> 2;
            }

            v168 = a1 + 360;
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v100);
          }

          *(a1 + 392) = v94;
          v167.__r_.__value_.__r.__words[0] = *v88;
          *(a1 + 368) = v88 + 1;
          std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 360), &v167);
          v88 = *(a1 + 368);
          v89 = *(a1 + 376);
        }

        if (v89 == v88)
        {
          v102 = 0;
        }

        else
        {
          v101 = *(a1 + 400) + *(a1 + 392);
          v102 = (v88[v101 / 0xAA] - 4080 * (v101 / 0xAA) + 24 * v101);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v102, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v103 = *&__p.__r_.__value_.__l.__data_;
          v102->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
          *&v102->__r_.__value_.__l.__data_ = v103;
        }

        ++*(a1 + 400);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    nlv4_inference_orchestrator::trees::PlyStateHandler::flushPathFragmentsOnStackToTree(a1);
    *(a1 + 356) = 0;
    std::deque<std::string>::__assign_with_size_random_access[abi:ne200100]<std::string const*>(a1 + 360);
    if (*(a1 + 352) == 1)
    {
      *(a1 + 352) = 0;
    }
  }

LABEL_219:
  v104 = *(a2 + 23);
  v106 = *a2;
  v105 = *(a2 + 8);
  if (v104 >= 0)
  {
    v107 = *(a2 + 23);
  }

  else
  {
    v107 = *(a2 + 8);
  }

  v108 = *(a1 + 119);
  v109 = v108;
  if ((v108 & 0x80u) != 0)
  {
    v108 = *(a1 + 104);
  }

  if (v107 == v108)
  {
    v110 = v104 >= 0 ? a2 : *a2;
    v111 = (v109 >= 0 ? a1 + 96 : *v4);
    if (!memcmp(v110, v111, v107))
    {
      ++*(a1 + 344);
      return;
    }
  }

  v112 = *(a1 + 143);
  v113 = v112;
  if ((v112 & 0x80u) != 0)
  {
    v112 = *(a1 + 128);
  }

  if (v107 == v112)
  {
    v114 = v104 >= 0 ? a2 : v106;
    v115 = v113 >= 0 ? (a1 + 120) : *(a1 + 120);
    if (!memcmp(v114, v115, v107))
    {
      *(a1 + 348) = *(a1 + 344);
      *(a1 + 352) = 1;
      return;
    }
  }

  v116 = *(a1 + 215);
  v117 = v116;
  if ((v116 & 0x80u) != 0)
  {
    v116 = *(a1 + 200);
  }

  if (v107 == v116)
  {
    v118 = v104 >= 0 ? a2 : v106;
    v119 = v117 >= 0 ? (a1 + 192) : *(a1 + 192);
    if (!memcmp(v118, v119, v107))
    {
      *(a1 + 356) = 1;
      return;
    }
  }

  v120 = *(a1 + 191);
  v121 = v120;
  if ((v120 & 0x80u) != 0)
  {
    v120 = *(a1 + 176);
  }

  if (v107 == v120)
  {
    if (v104 >= 0)
    {
      v122 = a2;
    }

    else
    {
      v122 = v106;
    }

    if (v121 >= 0)
    {
      v123 = (a1 + 168);
    }

    else
    {
      v123 = *(a1 + 168);
    }

    if (!memcmp(v122, v123, v107))
    {
      return;
    }
  }

  else if (v104 >= 0)
  {
    v122 = a2;
  }

  else
  {
    v122 = v106;
  }

  v124 = *(a1 + 311);
  v125 = *(a1 + 288);
  if (v124 >= 0)
  {
    v125 = (a1 + 288);
  }

  if (v124 < 0)
  {
    v124 = *(a1 + 296);
  }

  if (v107 && v124)
  {
    v126 = v124 - 1;
    v127 = v107 - 1;
    v128 = v125;
    while (*v122 == *v128)
    {
      ++v128;
      if (v127)
      {
        ++v122;
        v129 = v126--;
        --v127;
        if (v129)
        {
          continue;
        }
      }

      goto LABEL_278;
    }
  }

  else
  {
    v128 = v125;
LABEL_278:
    if (v128 == &v125[v124])
    {
      if (v104 < 0)
      {
        std::string::__init_copy_ctor_external(&v167, v106, v105);
      }

      else
      {
        v167 = *a2;
      }

      v154 = HIBYTE(v167.__r_.__value_.__r.__words[2]);
      if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = &v167;
      }

      else
      {
        v155 = v167.__r_.__value_.__r.__words[0];
      }

      if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v154 = v167.__r_.__value_.__l.__size_;
      }

      v156 = *(a1 + 311);
      if (v156 >= 0)
      {
        v157 = (a1 + 288);
      }

      else
      {
        v157 = *(a1 + 288);
      }

      if (v156 >= 0)
      {
        v158 = *(a1 + 311);
      }

      else
      {
        v158 = *(a1 + 296);
      }

      if (v158)
      {
        v159 = v155 + v154;
        if (v154 >= v158)
        {
          v162 = *v157;
          v163 = v155;
          do
          {
            v164 = v154 - v158;
            if (v164 == -1)
            {
              break;
            }

            v165 = memchr(v163, v162, v164 + 1);
            if (!v165)
            {
              break;
            }

            v160 = v165;
            if (!memcmp(v165, v157, v158))
            {
              goto LABEL_347;
            }

            v163 = (v160 + 1);
            v154 = v159 - (v160 + 1);
          }

          while (v154 >= v158);
        }

        v160 = v159;
LABEL_347:
        if (v160 == v159)
        {
          v161 = -1;
        }

        else
        {
          v161 = v160 - v155;
        }
      }

      else
      {
        v161 = 0;
      }

      std::string::erase(&v167, v161, v158);
      nlv4_inference_orchestrator::trees::PlyStateHandler::addNewPathFragments(a1, &v167);
    }
  }

  if (v104 >= 0)
  {
    v130 = a2;
  }

  else
  {
    v130 = v106;
  }

  v131 = *(a1 + 72);
  v132 = *(a1 + 95);
  if (v132 >= 0)
  {
    v131 = (a1 + 72);
  }

  v133 = *(a1 + 80);
  if (v132 >= 0)
  {
    v133 = *(a1 + 95);
  }

  if (v107 && v133)
  {
    v134 = v133 - 1;
    v135 = v107 - 1;
    v136 = v131;
    v137 = v130;
    while (*v137 == *v136)
    {
      ++v136;
      if (v135)
      {
        ++v137;
        v138 = v134--;
        --v135;
        if (v138)
        {
          continue;
        }
      }

      goto LABEL_295;
    }
  }

  else
  {
    v136 = v131;
LABEL_295:
    if (v136 == &v131[v133])
    {
      return;
    }
  }

  v139 = *(a1 + 264);
  v140 = *(a1 + 272);
  if (v139 != v140)
  {
    while (1)
    {
      v141 = *(v139 + 23);
      v142 = v141;
      if ((v141 & 0x80u) != 0)
      {
        v141 = *(v139 + 8);
      }

      if (v141 == v107)
      {
        v143 = v142 >= 0 ? v139 : *v139;
        if (!memcmp(v143, v130, v107))
        {
          break;
        }
      }

      v139 += 24;
      if (v139 == v140)
      {
        goto LABEL_308;
      }
    }
  }

  if (v139 == v140)
  {
LABEL_308:
    v144 = *(a1 + 167);
    v145 = v144;
    if ((v144 & 0x80u) != 0)
    {
      v144 = *(a1 + 152);
    }

    if (v107 != v144 || (v145 >= 0 ? (v146 = (a1 + 144)) : (v146 = *(a1 + 144)), memcmp(v130, v146, v107)))
    {
      v147 = *(a1 + 48);
      v148 = *(a1 + 71);
      if (v148 >= 0)
      {
        v147 = (a1 + 48);
      }

      v149 = *(a1 + 56);
      if (v148 >= 0)
      {
        v149 = *(a1 + 71);
      }

      if (v107 && v149)
      {
        v150 = v149 - 1;
        v151 = v107 - 1;
        v152 = v147;
        while (*v130 == *v152)
        {
          ++v152;
          if (v151)
          {
            ++v130;
            v153 = v150--;
            --v151;
            if (v153)
            {
              continue;
            }
          }

          goto LABEL_330;
        }

        goto LABEL_331;
      }

      v152 = v147;
LABEL_330:
      if (v152 != &v147[v149])
      {
LABEL_331:
        nlv4_inference_orchestrator::trees::PlyStateHandler::addNewPathFragments(a1, a2);
      }
    }
  }
}

void sub_222895528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::PlyStateHandler::~PlyStateHandler(nlv4_inference_orchestrator::trees::PlyStateHandler *this)
{
  v3 = *(this + 46);
  v2 = *(this + 47);
  if (v2 == v3)
  {
    v8 = (this + 400);
    v11 = *(this + 46);
  }

  else
  {
    v4 = *(this + 49);
    v5 = &v3[v4 / 0xAA];
    v6 = *v5;
    v7 = *v5 + 24 * v4 + -4080 * (v4 / 0xAA);
    v8 = (this + 400);
    v9 = v3[(*(this + 50) + v4) / 0xAA] + 24 * *(this + 50) + 24 * v4 + -4080 * ((*(this + 50) + v4) / 0xAA);
    if (v7 != v9)
    {
      do
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
          v6 = *v5;
        }

        v7 += 24;
        if (v7 - v6 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v9);
      v3 = *(this + 46);
      v2 = *(this + 47);
    }

    v11 = v2;
  }

  *v8 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(this + 47);
      v3 = (*(this + 46) + 8);
      *(this + 46) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 170;
  }

  *(this + 49) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(this + 46);
    v2 = *(this + 47);
  }

  if (v2 != v11)
  {
    *(this + 47) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v15 = *(this + 45);
  if (v15)
  {
    operator delete(v15);
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  v16 = (this + 264);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t nlv4_inference_orchestrator::trees::PlyStateHandler::flushPathFragmentsOnStackToTree(uint64_t this)
{
  v1 = *(this + 400);
  if (v1)
  {
    v2 = this;
    if ((v1 & 1) == 0)
    {
      v3 = v1 - 1;
      v4 = v3 + *(this + 392);
      v5 = *(this + 368);
      v6 = v4 / 0xAA;
      v7 = -4080 * (v4 / 0xAA);
      v8 = *(v5 + 8 * (v4 / 0xAA)) - 4080 * (v4 / 0xAA) + 24 * v4;
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *v8, *(v8 + 8));
        v5 = *(v2 + 368);
        v3 = *(v2 + 400) - 1;
        v4 = v3 + *(v2 + 392);
        v6 = v4 / 0xAA;
        v7 = -4080 * (v4 / 0xAA);
      }

      else
      {
        v9 = *v8;
        __p[0].__r_.__value_.__r.__words[2] = *(v8 + 16);
        *&__p[0].__r_.__value_.__l.__data_ = v9;
      }

      v20 = *(v5 + 8 * v6) + v7 + 24 * v4;
      if (*(v20 + 23) < 0)
      {
        operator delete(*v20);
        v3 = *(v2 + 400) - 1;
      }

      *(v2 + 400) = v3;
      std::deque<std::string>::__maybe_remove_back_spare[abi:ne200100]((v2 + 360));
      nlv4_inference_orchestrator::trees::PlyStateHandler::addNewPathFragments(v2, __p);
    }

    if (*(this + 352))
    {
      v10 = *(this + 348);
    }

    else
    {
      v10 = *(this + 344);
      *(this + 348) = v10;
      *(this + 352) = 1;
    }

    v11 = **(this + 312);
    if (0x8E38E38E38E38E39 * ((*(*(this + 312) + 8) - v11) >> 4) <= v10)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = (v11 + 144 * v10);
    MEMORY[0x223DC3240](__p, v12);
    v13 = v12[6];
    v14 = v12[8];
    v23 = v12[7];
    v24 = v14;
    v22 = v13;
    v15 = *(v2 + 344);
    v16 = **(v2 + 312);
    if (0x8E38E38E38E38E39 * ((*(*(v2 + 312) + 8) - v16) >> 4) <= v15)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v17 = (v16 + 144 * v15);
    MEMORY[0x223DC3240](v25, v17);
    v18 = v17[6];
    v19 = v17[8];
    v27 = v17[7];
    v28 = v19;
    v26 = v18;
    MEMORY[0x223DC3240](&v29, __p);
    v30 = v22;
    v31 = v23;
    v32 = v24;
    MEMORY[0x223DC3240](v33, v25);
    v33[6] = v26;
    v33[7] = v27;
    v33[8] = v28;
    v34 = 1;
    nlv4_inference_orchestrator::trees::PlyStateHandler::mergePathToTree(v2, &v29);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,nlv4_inference_orchestrator::trees::PayloadStartEnd>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
    MEMORY[0x223DC3250](v25);
    return MEMORY[0x223DC3250](__p);
  }

  return this;
}

void sub_222895A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*,nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

nlv4_inference_orchestrator::trees::TreeDecompressor *nlv4_inference_orchestrator::trees::TreeDecompressor::decompress(nlv4_inference_orchestrator::trees::TreeDecompressor *this, nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v2 = *(a2 + 11);
  v3 = a2 + 88;
  if (*(a2 + 12) != v2)
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v2 + v6);
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(v5, (v2 + v6 + 48)))
      {
        nlv4_inference_orchestrator::trees::TreeDecompressor::decompressNode(v5, a2, v8, v10);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *v10;
        *(a2 + 2) = v11;
        HIBYTE(v11) = 0;
        LOBYTE(v10[0]) = 0;
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 3));
        }

        *(a2 + 24) = v12;
        *(a2 + 5) = v13;
        HIBYTE(v13) = 0;
        LOBYTE(v12) = 0;
        if (*(a2 + 71) < 0)
        {
          operator delete(*(a2 + 6));
        }

        *(a2 + 3) = __p;
        *(a2 + 8) = v15;
        HIBYTE(v15) = 0;
        LOBYTE(__p) = 0;
        *(a2 + 72) = v16;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(v3);
        *(a2 + 88) = v17;
        *(a2 + 13) = v18;
        v18 = 0;
        v17 = 0uLL;
        v9 = v20;
        *(a2 + 7) = v19;
        *(a2 + 8) = v9;
        v21 = &v17;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v21);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(v10[0]);
        }
      }

      this = nlv4_inference_orchestrator::trees::TreeDecompressor::decompress(v5, v8);
      ++v7;
      v2 = *(a2 + 11);
      v6 += 144;
    }

    while (v7 < 0x8E38E38E38E38E39 * ((*(a2 + 12) - v2) >> 4));
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>,std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 87) < 0)
      {
        operator delete(v2[8]);
      }

      v6 = v2 + 5;
      std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::logModelOutput(uint64_t a1, const nlv4_inference_orchestrator::trees::TreeNode *a2, __n128 *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  nlv4_inference_orchestrator::trees::printTree(v11, a2);
  v6 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v11;
    if (v12 < 0)
    {
      v7 = v11[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = "NLv4";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "[insights-snlp-nlv4]: ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v18 = a4;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] %s[NLv4IO Ply tree] hypothesis=%zu:\n %s", &buf, 0x2Au);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  nlv4_inference_orchestrator::trees::join(&buf, __p, *a3);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v8 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    *__p = 134218242;
    *&__p[4] = a4;
    v14 = 2080;
    v15 = p_buf;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[NLv4IO Ply tags] hypothesis=%zu:\n %s", __p, 0x16u);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_222896160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void nlv4_inference_orchestrator::trees::join(std::string *a1, uint64_t a2, __n128 a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3.n128_u64[1];
  v5 = a3.n128_u64[0];
  if (a3.n128_u64[0] == a3.n128_u64[1])
  {
    v8 = *MEMORY[0x277D85DE8];

    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  else
  {
    if (*(a3.n128_u64[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *a3.n128_u64[0], *(a3.n128_u64[0] + 8));
    }

    else
    {
      v7 = *a3.n128_u64[0];
      v18.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&v18.__r_.__value_.__l.__data_ = v7;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    for (i = v5 + 24; i != v4; i += 24)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v19, &v18.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
      v10 = *(i + 23);
      if (v10 >= 0)
      {
        v11 = i;
      }

      else
      {
        v11 = *i;
      }

      if (v10 >= 0)
      {
        v12 = *(i + 23);
      }

      else
      {
        v12 = *(i + 8);
      }

      v13 = std::string::append(&v19, v11, v12);
      v14 = v13->__r_.__value_.__r.__words[0];
      v20[0] = v13->__r_.__value_.__l.__size_;
      *(v20 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
      v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      v18.__r_.__value_.__r.__words[0] = v14;
      v18.__r_.__value_.__l.__size_ = v20[0];
      *(&v18.__r_.__value_.__r.__words[1] + 7) = *(v20 + 7);
      *(&v18.__r_.__value_.__s + 23) = v15;
    }

    *a1 = v18;
    memset(&v18, 0, sizeof(v18));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

void sub_2228964E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::TreeManipulations::TreeManipulations(std::string *this, __int128 *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v2 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v2;
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::requiredForLocale();
}

void sub_222896954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12, void *a13, void **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v20 + 704);
  if (*(v20 + 703) < 0)
  {
    operator delete(*v23);
  }

  if (*(v20 + 679) < 0)
  {
    operator delete(*v22);
  }

  if (*(v20 + 655) < 0)
  {
    operator delete(*v21);
  }

  if (*(v20 + 631) < 0)
  {
    operator delete(*a14);
  }

  if (*(v20 + 607) < 0)
  {
    operator delete(*a9);
  }

  if (*(v20 + 583) < 0)
  {
    operator delete(*a10);
  }

  if (*(v20 + 559) < 0)
  {
    operator delete(*a11);
  }

  if (*(v20 + 535) < 0)
  {
    operator delete(*a12);
  }

  if (*(v20 + 511) < 0)
  {
    operator delete(*(v20 + 488));
  }

  if (*(v20 + 487) < 0)
  {
    operator delete(*(v20 + 464));
  }

  if (*(v20 + 463) < 0)
  {
    operator delete(*(v20 + 440));
  }

  if (*(v20 + 439) < 0)
  {
    operator delete(*(v20 + 416));
  }

  if (*(v20 + 415) < 0)
  {
    operator delete(*(v20 + 392));
  }

  if (*(v20 + 391) < 0)
  {
    operator delete(*(v20 + 368));
  }

  if (*(v20 + 367) < 0)
  {
    operator delete(*(v20 + 344));
  }

  if (*(v20 + 343) < 0)
  {
    operator delete(*(v20 + 320));
  }

  if (*(v20 + 319) < 0)
  {
    operator delete(*(v20 + 296));
  }

  if (*(v20 + 295) < 0)
  {
    operator delete(*(v20 + 272));
  }

  __p = a13;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v20 + 239) < 0)
  {
    operator delete(*(v20 + 216));
  }

  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::~ContactTypeSplit((v20 + 32));
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::requiredForLocale()
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v1, "de_DE");
  std::string::basic_string[abi:ne200100]<0>(v2, "en_AU");
  std::string::basic_string[abi:ne200100]<0>(v3, "en_CA");
  std::string::basic_string[abi:ne200100]<0>(v4, "en_GB");
  std::string::basic_string[abi:ne200100]<0>(v5, "en_IN");
  std::string::basic_string[abi:ne200100]<0>(v6, "en_US");
  std::string::basic_string[abi:ne200100]<0>(v7, "fr_FR");
  memset(v0, 0, sizeof(v0));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v0, v1, &v8, 7uLL);
}

void sub_222896E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v37 = &a36;
  v38 = -168;
  v39 = &a36;
  while (1)
  {
    v40 = *v39;
    v39 -= 24;
    if (v40 < 0)
    {
      operator delete(*(v37 - 23));
    }

    v37 = v39;
    v38 += 24;
    if (!v38)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::ContactTypeSplit(uint64_t a1, uint64_t *a2, unsigned int **a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_ContactTypeSplit");
  *(v6 + 3) = "contact_type_split";
  std::string::basic_string[abi:ne200100]<0>(v6 + 32, "contactType");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "emailType");
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>(a1 + 80, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getContactTypeMatchingSpans(a1, a3, a1 + 104);
  nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(a1, a3, a1 + 144);
  return a1;
}

void sub_222896F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table(v2 + 104);
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::IndexedToken>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getContactTypeMatchingSpans(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::isContactTypeMatchingSpan(this, v5))
      {
        v8 = v5[19];
        v13 = v8;
        *buf = &v13;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a3, v8);
        std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](v9 + 3, v5);
        ++v7;
      }

      v5 += 22;
    }

    while (v5 != v6);
  }

  v10 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(this + 3);
    *buf = 136315394;
    *&buf[4] = v11;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] After filtering, we have %lu contact type matching spans", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isPersonMatchingSpan(v5, a2))
      {
        v8 = v5[19];
        v18 = v8;
        *buf = &v18;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a3, v8);
        std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](v9 + 3, v5);
        ++v7;
      }

      v5 += 22;
    }

    while (v5 != v6);
    for (i = *(a3 + 16); i; i = *i)
    {
      v11 = i[3];
      v12 = i[4];
      v13 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v12 - v11) >> 3));
      if (v12 == v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::getPersonMatchingSpans(std::vector<sirinluinternal::MatchingSpan> const&)::$_0 &,sirinluinternal::MatchingSpan*,false>(v11, v12, v14, 1);
    }
  }

  v15 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 24);
    *buf = 136315394;
    *&buf[4] = v16;
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] After filtering, we have %lu person matching spans", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<sirinluinternal::MatchingSpan>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::PersonNameSplitHack(uint64_t a1, uint64_t *a2, nlv4_inference_orchestrator::post_processing::tree_manipulations::utils **a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_PersonNameSplit");
  v6[4] = 0;
  v6[3] = "person_name_split";
  v6[5] = 0;
  v6[6] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>((v6 + 4), *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
  nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::getPersonMatchingSpans(a1, a3, (a1 + 56));
  return a1;
}

void sub_2228974AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::getPersonMatchingSpans(uint64_t a1@<X0>, nlv4_inference_orchestrator::post_processing::tree_manipulations::utils **a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    if (nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isPersonMatchingSpan(v5, a2))
    {
      std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a3, v5);
    }

    v5 = (v5 + 88);
  }

  v7 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 24);
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v11 = 136315394;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] After filtering, we have %lu person matching spans", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::GroupNameTransform(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(a1, "TreeManipulation_GroupNameTransform");
  *(v6 + 3) = "group_name_transform";
  std::string::basic_string[abi:ne200100]<0>(v6 + 32, "smsGroupName");
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "personFullName");
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::IndexedToken*,nlv4_inference_orchestrator::orchestration::IndexedToken*>(a1 + 80, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
  nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::getSmsGroupNameSpans(a1, a3, (a1 + 104));
  nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::getPersonFullNameSpans(a1, a3, (a1 + 128));
  return a1;
}

void sub_2228976D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::getSmsGroupNameSpans(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  while (v5 != v6)
  {
    if (nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::isUVSmsGroupNameSpan(a1, v5))
    {
      std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a3, v5);
    }

    v5 += 11;
  }

  v7 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 24);
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v11 = 136315394;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] Found %lu smsGroupName matching spans", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}