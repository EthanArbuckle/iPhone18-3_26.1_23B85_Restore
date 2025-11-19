void sub_26257C600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0xC90]) == 1)
  {
    v12 = STACK[0x878];
    if (STACK[0x878] != a10)
    {
      if (v12)
      {
        MEMORY[0x26672B1B0](v12, 0x1000C4052888210);
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(v10 - 120, *(v10 - 112));
  _Unwind_Resume(a1);
}

void TBuffer<wchar_t>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1048) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 1048))
    {
LABEL_9:
      bzero((*a1 + 4 * v4), 4 * (v5 - v4));
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

uint64_t TParamManager::getConfigHandles(uint64_t this, unint64_t *a2, unint64_t a3)
{
  v3 = *(this + 72);
  if (((*(this + 80) - v3) >> 5) - 1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = ((*(this + 80) - v3) >> 5) - 1;
  }

  if (v4)
  {
    v5 = (v4 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_26286B680;
    v8 = a2 + 1;
    v9 = vdupq_n_s64(1uLL);
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v7));
      v12 = vaddq_s64(v7, v9);
      if (v11.i8[0])
      {
        *(v8 - 1) = v12.i64[0];
      }

      if (v11.i8[4])
      {
        *v8 = v12.u64[1];
      }

      v7 = vaddq_s64(v7, v10);
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
  }

  return this;
}

void TBoolParam::~TBoolParam(void **this)
{
  v2 = 0;
  *this = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

{
  v2 = 0;
  *this = &unk_2875295A0;
  while (1)
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
    if (v2 == -6)
    {
      TParam::~TParam(this);

      JUMPOUT(0x26672B1B0);
    }
  }
}

{
  v2 = 0;
  *this = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

uint64_t TBoolParam::getValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + TParam::getValidConfig(a1, a2) + 152))
  {
    v4 = "t";
  }

  else
  {
    v4 = "f";
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

uint64_t TBoolParam::getValueOriginal(uint64_t a1, uint64_t a2, uint64_t a3)
{
    ;
  }

  if (*(a1 + a2 + 152))
  {
    v4 = "t";
  }

  else
  {
    v4 = "f";
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

void TFloatParam::~TFloatParam(void **this)
{
  TParam::~TParam(this);

  JUMPOUT(0x26672B1B0);
}

void TIntParam::~TIntParam(void **this)
{
  TParam::~TParam(this);

  JUMPOUT(0x26672B1B0);
}

void TStringParam::~TStringParam(void **this)
{
  *this = &unk_287528A10;
  v3 = this + 169;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
}

{
  *this = &unk_287528A10;
  v3 = this + 169;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
  MEMORY[0x26672B1B0]();
}

{
  *this = &unk_287528A10;
  v3 = this + 169;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
}

uint64_t TStringParam::getValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 24 * TParam::getValidConfig(a1, a2);
  v5 = (v4 + 152);
  if (v4[175] < 0)
  {
    v5 = *v5;
  }

  return TBuffer<wchar_t>::assign(a3, v5);
}

uint64_t TStringParam::getValueOriginal(TStringParam *a1, uint64_t a2, uint64_t a3)
{
  Original = TStringParam::getOriginal(a1, a2);

  return TBuffer<wchar_t>::assign(a3, Original);
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,64ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

void TLocaleInfo::TLocaleInfo(TLocaleInfo *this)
{
  TCollation::TCollation((this + 16));
  *this = "e";
  *(this + 80) = wcscmp("e", "t") == 0;
  *(this + 1) = "U";
  *(this + 16) = 2;
  *(this + 9) = 4;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B3A570, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void TException::~TException(void **this)
{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
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

void virtual thunk tostd::wostringstream::~wostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();

  JUMPOUT(0x26672B170);
}

{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();
  MEMORY[0x26672B170](&v1[14]);

  JUMPOUT(0x26672B1B0);
}

void std::wostringstream::~wostringstream(uint64_t a1)
{
  v2 = a1 + 112;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  MEMORY[0x26672B170](v2);

  JUMPOUT(0x26672B1B0);
}

uint64_t std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x26672B1B0);
}

std::wstringbuf::pos_type *__cdecl std::wstringbuf::seekoff(std::wstringbuf::pos_type *__return_ptr retstr, std::wstringbuf::pos_type *this, std::wstringbuf::off_type a3, std::ios_base::seekdir __way, std::ios_base::openmode __wch)
{
  v5 = *(&this->__st_._mbstateL + 11);
  v6 = *(&this->__st_._mbstateL + 6);
  if (v5 < v6)
  {
    *(&this->__st_._mbstateL + 11) = v6;
    v5 = v6;
  }

  if ((__wch & 0x18) == 0 || __way == cur && (__wch & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v9 = 0;
    if (__way)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = __way;
    goto LABEL_21;
  }

  v8 = &this->__st_._mbstateL + 8;
  if (this->__st_.__mbstate8[87] < 0)
  {
    v8 = *v8;
  }

  v9 = (v5 - v8) >> 2;
  if (__way == beg)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (__way == end)
  {
    v11 = v9;
  }

  else
  {
    if (__way != cur)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((__wch & 8) != 0)
    {
      v10 = *(&this->__st_._mbstateL + 3) - *(&this->__st_._mbstateL + 2);
    }

    else
    {
      v10 = v6 - *(&this->__st_._mbstateL + 5);
    }

    v11 = v10 >> 2;
  }

LABEL_21:
  v7 = -1;
  v12 = v11 + a3;
  if (v12 >= 0 && v9 >= v12 && (!v12 || ((__wch & 8) == 0 || *(&this->__st_._mbstateL + 3)) && ((__wch & 0x10) == 0 || v6)))
  {
    if ((__wch & 8) != 0)
    {
      *(&this->__st_._mbstateL + 3) = *(&this->__st_._mbstateL + 2) + 4 * v12;
      *(&this->__st_._mbstateL + 4) = v5;
    }

    if ((__wch & 0x10) != 0)
    {
      *(&this->__st_._mbstateL + 6) = *(&this->__st_._mbstateL + 5) + 4 * v12;
    }

    v7 = v12;
  }

LABEL_7:
  *(&retstr->__st_._mbstateL + 6) = 0u;
  *(&retstr->__st_._mbstateL + 7) = 0u;
  *(&retstr->__st_._mbstateL + 4) = 0u;
  *(&retstr->__st_._mbstateL + 5) = 0u;
  *(&retstr->__st_._mbstateL + 2) = 0u;
  *(&retstr->__st_._mbstateL + 3) = 0u;
  *retstr->__st_.__mbstate8 = 0u;
  *(&retstr->__st_._mbstateL + 1) = 0u;
  retstr->__off_ = v7;
  return this;
}

std::wstringbuf::int_type std::wstringbuf::underflow(std::wstringbuf *this)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  if ((this->__mode_ & 8) == 0)
  {
    return -1;
  }

  einp = this->__einp_;
  if (einp < hm)
  {
    this->__einp_ = hm;
    einp = hm;
  }

  ninp = this->__ninp_;
  if (ninp < einp)
  {
    return *ninp;
  }

  else
  {
    return -1;
  }
}

std::wstringbuf::int_type std::wstringbuf::pbackfail(std::wstringbuf *this, std::wstringbuf::int_type __c)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  ninp = this->__ninp_;
  if (this->__binp_ < ninp)
  {
    if (__c == -1)
    {
      __c = 0;
      v5 = ninp - 1;
      goto LABEL_10;
    }

    if ((this->__mode_ & 0x10) != 0 || *(ninp - 1) == __c)
    {
      *(ninp - 1) = __c;
      v5 = ninp - 1;
LABEL_10:
      this->__ninp_ = v5;
      this->__einp_ = hm;
      return __c;
    }
  }

  return -1;
}

void sub_26257D7D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26257D6B0);
}

uint64_t std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(uint64_t a1, uint64_t a2)
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
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v7 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (!v10 || (v8 >= 0 ? (v11 = (v3 + 32)) : (v11 = *(v3 + 32)), v6 >= 0 ? (v12 = a2) : (v12 = *a2), (v13 = wmemcmp(v11, v12, v10)) == 0))
    {
      if (v9 < v7)
      {
        v13 = -1;
      }

      else
      {
        v13 = v7 < v9;
      }
    }

    if (v13 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v13 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v14 = *(v5 + 55);
  if (v14 >= 0)
  {
    v15 = *(v5 + 55);
  }

  else
  {
    v15 = *(v5 + 40);
  }

  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  if (v15 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (v18 && (v16 >= 0 ? (v19 = a2) : (v19 = *a2), v14 >= 0 ? (v20 = (v5 + 32)) : (v20 = *(v5 + 32)), (v21 = wmemcmp(v19, v20, v18)) != 0))
  {
    if (v21 < 0)
    {
      return v2;
    }
  }

  else if (v17 < v15)
  {
    return v2;
  }

  return v5;
}

void std::vector<std::wstring>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(a1, v11);
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
    std::__split_buffer<std::wstring>::~__split_buffer(&v18);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::wstring>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::wstring>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::wstring>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
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

uint64_t TBoolParam::TBoolParam(uint64_t a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 0, a2);
  *v3 = &unk_2875295A0;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  TBoolParam::setOriginal(v3, 0, 0);
  return a1;
}

void sub_26257DC98(_Unwind_Exception *a1)
{
  TBoolParam::TBoolParam(v1);
  TParam::~TParam(v1);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::TFloatParam(uint64_t a1, uint64_t a2)
{
  v3 = TParam::TParam(a1, 3, a2);
  *v3 = &unk_287528F10;
  TFloatParam::setOriginal(v3, 0, 0.0);
  return a1;
}

uint64_t TBuffer<wchar_t>::assign(uint64_t a1, int *a2)
{
  TBuffer<wchar_t>::resize(a1, 0);
  v4 = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a1, 0, a2, v4 - 1);
}

uint64_t TBuffer<wchar_t>::insert(uint64_t result, unint64_t a2, int *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 1048) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  v9 = v6 + a4;
  v10 = *(result + 8);
  if (v6 < v5 && v9 < v10)
  {
    v12 = v5 + a4;
    if (v10 < v5 + a4)
    {
      v12 = *(result + 8);
    }

    v13 = v12 - v9;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (*result + 4 * v12 - 4);
    do
    {
      *v14 = v14[-a4];
      --v14;
      --v13;
    }

    while (v13);
  }

  v15 = v10 - v6;
  if (v10 > v6)
  {
    if (v15 >= a4)
    {
      v15 = a4;
    }

    if (v15)
    {
      v16 = (*result + 4 * v6);
      do
      {
        v17 = *a3++;
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }
  }

  *(result + 16) = v5 + a4;
  if (v5 + a4 < v10)
  {
    *(*result + 4 * (v5 + a4)) = 0;
  }

  return result;
}

void std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned long,std::wstring>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned long,std::wstring>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t TRegisterable<TParamManager>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TParamManager>::getRegistry(void)::s_registry;
}

void TRegisterable<TParamManager>::~TRegisterable(void *a1)
{
  TRegisterable<TParamManager>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::wstring>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::wstring>,0>(uint64_t a1)
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

uint64_t std::wstringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82870] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::wstringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26257E2B4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::wstringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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

std::wstringbuf::string_type *__cdecl std::wstringbuf::str(std::wstringbuf::string_type *__return_ptr retstr, std::wstringbuf::string_type *this)
{
  v2 = this[4].__r_.__value_.__s.__data_[0];
  if ((v2 & 0x10) != 0)
  {
    size = this[3].__r_.__value_.__r.__words[2];
    data = this[2].__r_.__value_.__l.__data_;
    if (size < data)
    {
      this[3].__r_.__value_.__r.__words[2] = data;
      size = data;
    }

    v5 = this[1].__r_.__value_.__r.__words[2];
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      *&retstr->__r_.__value_.__l.__data_ = 0uLL;
      retstr->__r_.__value_.__r.__words[2] = 0;
      return this;
    }

    v5 = this->__r_.__value_.__r.__words[2];
    size = this[1].__r_.__value_.__l.__size_;
  }

  return std::wstring::__init_with_size[abi:ne200100]<wchar_t *,wchar_t *>(retstr, v5, size, (size - v5) >> 2);
}

_BYTE *std::wstring::__init_with_size[abi:ne200100]<wchar_t *,wchar_t *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(__dst, v5);
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

void std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::wstring>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::wstring>::clear[abi:ne200100](void ***a1)
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

void std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::wstring*,std::wstring*>(std::vector<std::wstring> *a1, std::wstring *__str, std::wstring *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::wstring>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::wstring>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::wstring::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::wstring::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring*,std::wstring*,std::wstring*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::wstring>::__vdeallocate(std::vector<std::wstring> *this)
{
  if (this->__begin_)
  {
    std::vector<std::wstring>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::wstring>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring*,std::wstring*,std::wstring*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
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
        std::wstring::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::wstring::__init_copy_ctor_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>::operator()[abi:ne200100](uint64_t a1)
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

uint64_t std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(uint64_t a1, const __int32 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a1 + 8;
  do
  {
    v6 = wcscmp(*(v3 + 32), v4);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || wcscmp(v4, *(v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const*&&>,std::tuple<>>(uint64_t a1, const __int32 **a2)
{
  v2 = *std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__find_equal<wchar_t const*>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__find_equal<wchar_t const*>(uint64_t a1, void *a2, const __int32 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        if ((wcscmp(v6, v8) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if ((wcscmp(v8, v6) & 0x80000000) == 0)
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

LABEL_10:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::wstring>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned long,std::wstring>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<unsigned long,std::wstring>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<unsigned long,std::wstring>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
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

uint64_t std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__find_equal<std::wstring>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__find_equal<std::wstring>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = (v4 + 4);
        v9 = *(v4 + 55);
        v10 = v9;
        v11 = (v9 & 0x80u) == 0 ? v9 : v7[5];
        v12 = *(a3 + 23);
        v13 = v12 >= 0 ? *(a3 + 23) : *(a3 + 8);
        v14 = v11 >= v13 ? v13 : v11;
        if (v14)
        {
          v15 = v12 >= 0 ? a3 : *a3;
          v16 = v10 >= 0 ? v8 : *v8;
          v17 = wmemcmp(v15, v16, v14);
          if (v17)
          {
            break;
          }
        }

        if (v13 >= v11)
        {
          goto LABEL_20;
        }

LABEL_40:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_46;
        }
      }

      if (v17 < 0)
      {
        goto LABEL_40;
      }

LABEL_20:
      v18 = *(a3 + 23);
      if (v18 >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = *(a3 + 8);
      }

      v20 = *(v7 + 55);
      if (v20 >= 0)
      {
        v21 = *(v7 + 55);
      }

      else
      {
        v21 = v7[5];
      }

      if (v19 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (v22 && (v20 >= 0 ? (v23 = v8) : (v23 = *v8), v18 >= 0 ? (v24 = a3) : (v24 = *a3), (v25 = wmemcmp(v23, v24, v22)) != 0))
      {
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (v21 >= v19)
      {
        goto LABEL_46;
      }

      v5 = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_46;
      }
    }
  }

  v7 = (a1 + 8);
LABEL_46:
  *a2 = v7;
  return v5;
}

void *std::vector<wchar_t const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<wchar_t const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<wchar_t const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26257F454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<wchar_t const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__count_unique<wchar_t const*>(uint64_t a1, const __int32 **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = 1;
    do
    {
      v5 = v2[4];
      if ((wcscmp(v3, v5) & 0x80000000) == 0)
      {
        if ((wcscmp(v5, v3) & 0x80000000) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(uint64_t a1, const __int32 **a2)
{
  v2 = *std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__find_equal<wchar_t const*>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::wstring>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::wstring>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::wstring>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26672B020](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

  MEMORY[0x26672B030](v13);
  return a1;
}

void sub_26257F954(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26672B030](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26257F934);
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

void sub_26257FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *TStringParam::getOriginal(TStringParam *this, uint64_t a2)
{
    ;
  }

  result = this + 24 * a2 + 152;
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void MrecInitModule_corpus_word(void)
{
  if (!gParDebugCorpusFindCorrelatedDocuments)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugCorpusFindCorrelatedDocuments", byte_26286BF90, byte_26286BF90, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugCorpusFindCorrelatedDocuments = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugCorpusFindCorrelatedDocuments);
  }
}

void Corpus::~Corpus(Corpus *this)
{
  DgnDelete<CharInfo>(*this);
  *this = 0;
  DgnDelete<DgnStream>(*(this + 2));
  *(this + 2) = 0;
  DgnDelete<DgnStream>(*(this + 3));
  *(this + 3) = 0;
  DgnDelete<DgnStream>(*(this + 4));
  *(this + 4) = 0;
  DgnDelete<RealDFile>(*(this + 1));
  *(this + 1) = 0;
  HuffmanDecoder<unsigned int,unsigned long long>::~HuffmanDecoder(this + 400);
  HuffmanDecoder<unsigned int,unsigned long long>::~HuffmanDecoder(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
}

uint64_t DgnDelete<CharInfo>(uint64_t result)
{
  if (result)
  {
    inited = MrecInitModule_sdpres_sdapi();

    return MemChunkFree(inited, 0);
  }

  return result;
}

void (***DgnDelete<RealDFile>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void Corpus::printSize(Corpus *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 300, &v370);
  if (v371)
  {
    v15 = v370;
  }

  else
  {
    v15 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26286BF90, a3, &unk_26286BF90, v15);
  DgnString::~DgnString(&v370);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26286BF90);
  v20 = *this;
  if (*this)
  {
    v370 = 0;
    v368 = 0;
    v369 = 0;
    v21 = (a3 + 1);
    CharInfo::printSize(v20, 0xFFFFFFFFLL, v21, &v370, &v369, &v368);
    *a4 += v370;
    *a5 += v369;
    *a6 += v368;
  }

  else
  {
    v21 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  v365 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 302, &v370);
  if (v371)
  {
    v28 = v370;
  }

  else
  {
    v28 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v21, &unk_26286BF90, v23, v23, v28, v22, v22, 0);
  DgnString::~DgnString(&v370);
  *a4 += v22;
  *a5 += v22;
  v29 = *(this + 1);
  if (v29)
  {
    v370 = 0;
    v368 = 0;
    v369 = 0;
    (*(*v29 + 16))(v29, 0xFFFFFFFFLL, v21, &v370, &v369, &v368);
    *a4 += v370;
    *a5 += v369;
    *a6 += v368;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 303, &v370);
  if (v371)
  {
    v35 = v370;
  }

  else
  {
    v35 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v21, &unk_26286BF90, v23, v23, v35, v30, v30, 0);
  DgnString::~DgnString(&v370);
  *a4 += v30;
  *a5 += v30;
  v36 = *(this + 2);
  if (v36)
  {
    v370 = 0;
    v368 = 0;
    v369 = 0;
    (*(*v36 + 16))(v36, 0xFFFFFFFFLL, v21, &v370, &v369, &v368);
    *a4 += v370;
    *a5 += v369;
    *a6 += v368;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 4;
  }

  else
  {
    v37 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 305, &v370);
  if (v371)
  {
    v42 = v370;
  }

  else
  {
    v42 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, v21, &unk_26286BF90, v23, v23, v42, v37, v37, 0);
  DgnString::~DgnString(&v370);
  *a4 += v37;
  *a5 += v37;
  v43 = *(this + 3);
  if (v43)
  {
    v370 = 0;
    v368 = 0;
    v369 = 0;
    (*(*v43 + 16))(v43, 0xFFFFFFFFLL, v21, &v370, &v369, &v368);
    *a4 += v370;
    *a5 += v369;
    *a6 += v368;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 4;
  }

  else
  {
    v44 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 307, &v370);
  if (v371)
  {
    v49 = v370;
  }

  else
  {
    v49 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v21, &unk_26286BF90, v23, v23, v49, v44, v44, 0);
  DgnString::~DgnString(&v370);
  *a4 += v44;
  *a5 += v44;
  v50 = *(this + 4);
  if (v50)
  {
    v370 = 0;
    v368 = 0;
    v369 = 0;
    (*(*v50 + 16))(v50, 0xFFFFFFFFLL, v21, &v370, &v369, &v368);
    *a4 += v370;
    *a5 += v369;
    *a6 += v368;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 4;
  }

  else
  {
    v51 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 309, &v370);
  if (v371)
  {
    v56 = v370;
  }

  else
  {
    v56 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26286BF90, v23, v23, v56, v51, v51, 0);
  DgnString::~DgnString(&v370);
  *a4 += v51;
  *a5 += v51;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v61 = v370;
  }

  else
  {
    v61 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v21, &unk_26286BF90, v23, v23, v61, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v66 = v370;
  }

  else
  {
    v66 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26286BF90, v23, v23, v66, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v71 = v370;
  }

  else
  {
    v71 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v21, &unk_26286BF90, v23, v23, v71, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v76 = v370;
  }

  else
  {
    v76 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v21, &unk_26286BF90, v23, v23, v76, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v81 = v370;
  }

  else
  {
    v81 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v21, &unk_26286BF90, v23, v23, v81, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v86 = v370;
  }

  else
  {
    v86 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, v21, &unk_26286BF90, v23, v23, v86, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v91 = v370;
  }

  else
  {
    v91 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v21, &unk_26286BF90, v23, v23, v91, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v92 = 12;
  }

  else
  {
    v92 = 16;
  }

  v93 = *(this + 24);
  v94 = *(this + 25);
  if (v94 >= v93)
  {
    v95 = 0;
    if (v93 > 0)
    {
      v92 += 4 * (v93 - 1) + 4;
    }

    v96 = v92 + 4 * (v94 - v93);
  }

  else
  {
    v95 = 4 * v93;
    v96 = v92;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v101 = v370;
  }

  else
  {
    v101 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v21, &unk_26286BF90, v23, v23, v101, v96, v92, v95);
  DgnString::~DgnString(&v370);
  *a4 += v96;
  *a5 += v92;
  *a6 += v95;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 28);
  v104 = *(this + 29);
  v105 = v104 >= v103;
  v106 = v104 - v103;
  if (v105)
  {
    if (v103 > 0)
    {
      v107 = (v103 - 1) + v102 + 1;
    }

    else
    {
      v107 = v102;
    }

    v102 = v107 + v106;
    v103 = 0;
  }

  else
  {
    v107 = v102;
  }

  v108 = v103;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v113 = v370;
  }

  else
  {
    v113 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v110, v111, v112, v21, &unk_26286BF90, v23, v23, v113, v102, v107, v108);
  DgnString::~DgnString(&v370);
  *a4 += v102;
  *a5 += v107;
  *a6 += v108;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v114 = 12;
  }

  else
  {
    v114 = 16;
  }

  v115 = *(this + 32);
  v116 = *(this + 33);
  if (v116 >= v115)
  {
    v117 = 0;
    if (v115 > 0)
    {
      v114 += 4 * (v115 - 1) + 4;
    }

    v118 = v114 + 4 * (v116 - v115);
  }

  else
  {
    v117 = 4 * v115;
    v118 = v114;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v123 = v370;
  }

  else
  {
    v123 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v120, v121, v122, v21, &unk_26286BF90, v23, v23, v123, v118, v114, v117);
  DgnString::~DgnString(&v370);
  *a4 += v118;
  *a5 += v114;
  *a6 += v117;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v124 = 12;
  }

  else
  {
    v124 = 16;
  }

  v125 = *(this + 36);
  v126 = *(this + 37);
  if (v126 >= v125)
  {
    v127 = 0;
    if (v125 > 0)
    {
      v124 += 4 * (v125 - 1) + 4;
    }

    v128 = v124 + 4 * (v126 - v125);
  }

  else
  {
    v127 = 4 * v125;
    v128 = v124;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v133 = v370;
  }

  else
  {
    v133 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v21, &unk_26286BF90, v23, v23, v133, v128, v124, v127);
  DgnString::~DgnString(&v370);
  *a4 += v128;
  *a5 += v124;
  *a6 += v127;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 12;
  }

  else
  {
    v134 = 16;
  }

  v135 = *(this + 40);
  v136 = *(this + 41);
  if (v136 >= v135)
  {
    v137 = 0;
    if (v135 > 0)
    {
      v134 += 8 * (v135 - 1) + 8;
    }

    v138 = v134 + 8 * (v136 - v135);
  }

  else
  {
    v137 = 8 * v135;
    v138 = v134;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v143 = v370;
  }

  else
  {
    v143 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v140, v141, v142, v21, &unk_26286BF90, v23, v23, v143, v138, v134, v137);
  DgnString::~DgnString(&v370);
  *a4 += v138;
  *a5 += v134;
  *a6 += v137;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v144 = 12;
  }

  else
  {
    v144 = 16;
  }

  v145 = *(this + 44);
  v146 = *(this + 45);
  if (v146 >= v145)
  {
    v147 = 0;
    if (v145 > 0)
    {
      v144 += 4 * (v145 - 1) + 4;
    }

    v148 = v144 + 4 * (v146 - v145);
  }

  else
  {
    v147 = 4 * v145;
    v148 = v144;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v153 = v370;
  }

  else
  {
    v153 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v150, v151, v152, v21, &unk_26286BF90, v23, v23, v153, v148, v144, v147);
  DgnString::~DgnString(&v370);
  *a4 += v148;
  *a5 += v144;
  *a6 += v147;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v154 = 12;
  }

  else
  {
    v154 = 16;
  }

  v155 = *(this + 48);
  v156 = *(this + 49);
  if (v156 >= v155)
  {
    v157 = 0;
    if (v155 > 0)
    {
      v154 += 2 * (v155 - 1) + 2;
    }

    v158 = v154 + 2 * (v156 - v155);
  }

  else
  {
    v157 = 2 * v155;
    v158 = v154;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v163 = v370;
  }

  else
  {
    v163 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v21, &unk_26286BF90, v23, v23, v163, v158, v154, v157);
  DgnString::~DgnString(&v370);
  *a4 += v158;
  *a5 += v154;
  *a6 += v157;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 12;
  }

  else
  {
    v164 = 16;
  }

  v165 = *(this + 52);
  v166 = *(this + 53);
  if (v166 >= v165)
  {
    v167 = 0;
    if (v165 > 0)
    {
      v164 += 4 * (v165 - 1) + 4;
    }

    v168 = v164 + 4 * (v166 - v165);
  }

  else
  {
    v167 = 4 * v165;
    v168 = v164;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v173 = v370;
  }

  else
  {
    v173 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v170, v171, v172, v21, &unk_26286BF90, v23, v23, v173, v168, v164, v167);
  DgnString::~DgnString(&v370);
  *a4 += v168;
  *a5 += v164;
  *a6 += v167;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v178 = v370;
  }

  else
  {
    v178 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v21, &unk_26286BF90, v23, v23, v178, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 12;
  }

  else
  {
    v179 = 16;
  }

  v180 = *(this + 58);
  v181 = *(this + 59);
  if (v181 >= v180)
  {
    v182 = 0;
    if (v180 > 0)
    {
      v179 += 4 * (v180 - 1) + 4;
    }

    v183 = v179 + 4 * (v181 - v180);
  }

  else
  {
    v182 = 4 * v180;
    v183 = v179;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v188 = v370;
  }

  else
  {
    v188 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v21, &unk_26286BF90, v23, v23, v188, v183, v179, v182);
  DgnString::~DgnString(&v370);
  *a4 += v183;
  *a5 += v179;
  *a6 += v182;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v193 = v370;
  }

  else
  {
    v193 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v190, v191, v192, v21, &unk_26286BF90, v23, v23, v193, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v194 = 4;
  }

  else
  {
    v194 = 8;
  }

  v195 = *(this + 31);
  v366 = v21;
  if (v195)
  {
    v196 = sizeObject(v195 + 32);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v197 = 8;
    }

    else
    {
      v197 = 12;
    }

    v198 = 2;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v200 = 8;
    }

    else
    {
      v198 = 3;
      v200 = 16;
    }

    v199 = *(v195 + 96) << v198;
    v201 = v196 + v194 + v200 + v197 + sizeObject<HuffmanSymbol<unsigned int,unsigned long long> *>(v195 + 120, 0) + v199 + 18;
    v202 = *(this + 31);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v194 = 4;
    }

    else
    {
      v194 = 8;
    }

    if (v202)
    {
      v203 = sizeObject(v202 + 32);
      v204 = 12;
      v205 = 8;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v206 = 8;
      }

      else
      {
        v206 = 12;
      }

      v207 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v207 = 3;
      }

      v208 = *(v202 + 96) << v207;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v209 = 8;
      }

      else
      {
        v209 = 16;
      }

      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v205 = 4;
      }

      else
      {
        v204 = 16;
      }

      v210 = *(v202 + 128);
      v21 = v366;
      if (v210 >= 1)
      {
        v211 = v210 + 1;
        v212 = (*(v202 + 120) + 8 * v210 - 8);
        do
        {
          v213 = *v212--;
          v204 += v205 + 16 * (v213 != 0);
          --v211;
        }

        while (v211 > 1);
      }

      v194 += v203 + v209 + v206 + v208 + v204 + 18;
      v214 = *(this + 31);
      if (v214)
      {
        v202 = sizeObject(v214 + 32);
      }

      else
      {
        v202 = 0;
      }
    }

    else
    {
      v21 = v366;
    }
  }

  else
  {
    v202 = 0;
    v201 = v194;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v219 = v370;
  }

  else
  {
    v219 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v216, v217, v218, v21, &unk_26286BF90, v23, v23, v219, v201, v194, v202);
  DgnString::~DgnString(&v370);
  *a4 += v201;
  *a5 += v194;
  *a6 += v202;
  v220 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v220 = 12;
  }

  v221 = *(this + 66);
  v222 = *(this + 67);
  v223 = v220 + 4 * (v221 - 1) + 4;
  if (v221 <= 0)
  {
    v223 = v220;
  }

  if (v222 >= v221)
  {
    v224 = v223;
  }

  else
  {
    v224 = v220;
  }

  if (v222 >= v221)
  {
    v225 = v223 + 4 * (v222 - v221);
  }

  else
  {
    v225 = v220;
  }

  if (v222 >= v221)
  {
    v226 = 0;
  }

  else
  {
    v226 = 4 * v221;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v231 = v370;
  }

  else
  {
    v231 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v227, v228, v229, v230, v21, &unk_26286BF90, v23, v23, v231, v225, v224, v226);
  DgnString::~DgnString(&v370);
  *a4 += v225;
  *a5 += v224;
  *a6 += v226;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v232 = 12;
  }

  else
  {
    v232 = 16;
  }

  v233 = *(this + 70);
  v234 = *(this + 71);
  if (v234 >= v233)
  {
    v235 = 0;
    if (v233 > 0)
    {
      v232 += 4 * (v233 - 1) + 4;
    }

    v236 = v232 + 4 * (v234 - v233);
  }

  else
  {
    v235 = 4 * v233;
    v236 = v232;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v241 = v370;
  }

  else
  {
    v241 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v237, v238, v239, v240, v21, &unk_26286BF90, v23, v23, v241, v236, v232, v235);
  DgnString::~DgnString(&v370);
  *a4 += v236;
  *a5 += v232;
  *a6 += v235;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v242 = 4;
  }

  else
  {
    v242 = 8;
  }

  v243 = *(this + 36);
  if (v243)
  {
    v244 = sizeObject(v243 + 32);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v245 = 8;
    }

    else
    {
      v245 = 12;
    }

    v246 = 2;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v248 = 8;
    }

    else
    {
      v246 = 3;
      v248 = 16;
    }

    v247 = *(v243 + 96) << v246;
    v249 = v244 + v242 + v248 + v245 + sizeObject<HuffmanSymbol<unsigned int,unsigned long long> *>(v243 + 120, 0) + v247 + 18;
    v250 = *(this + 36);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v242 = 4;
    }

    else
    {
      v242 = 8;
    }

    if (v250)
    {
      v251 = sizeObject(v250 + 32);
      v252 = 12;
      v253 = 8;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v254 = 8;
      }

      else
      {
        v254 = 12;
      }

      v255 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v255 = 3;
      }

      v256 = *(v250 + 96) << v255;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v257 = 8;
      }

      else
      {
        v257 = 16;
      }

      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v253 = 4;
      }

      else
      {
        v252 = 16;
      }

      v258 = *(v250 + 128);
      v21 = v366;
      if (v258 >= 1)
      {
        v259 = v258 + 1;
        v260 = (*(v250 + 120) + 8 * v258 - 8);
        do
        {
          v261 = *v260--;
          v252 += v253 + 16 * (v261 != 0);
          --v259;
        }

        while (v259 > 1);
      }

      v242 += v251 + v257 + v254 + v256 + v252 + 18;
      v262 = *(this + 36);
      if (v262)
      {
        v250 = sizeObject(v262 + 32);
      }

      else
      {
        v250 = 0;
      }
    }

    else
    {
      v21 = v366;
    }
  }

  else
  {
    v250 = 0;
    v249 = v242;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v267 = v370;
  }

  else
  {
    v267 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v263, v264, v265, v266, v21, &unk_26286BF90, v23, v23, v267, v249, v242, v250);
  DgnString::~DgnString(&v370);
  *a4 += v249;
  *a5 += v242;
  *a6 += v250;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v272 = v370;
  }

  else
  {
    v272 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v269, v270, v271, v21, &unk_26286BF90, v23, v23, v272, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  v273 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 304, 0);
  v274 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 304, 1);
  v275 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 304, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v280 = v370;
  }

  else
  {
    v280 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v276, v277, v278, v279, v21, &unk_26286BF90, v23, v23, v280, v273, v274, v275);
  DgnString::~DgnString(&v370);
  *a4 += v273;
  *a5 += v274;
  *a6 += v275;
  v281 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 400, 0);
  v282 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 400, 1);
  v283 = HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(this + 400, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v288 = v370;
  }

  else
  {
    v288 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v284, v285, v286, v287, v21, &unk_26286BF90, v23, v23, v288, v281, v282, v283);
  DgnString::~DgnString(&v370);
  *a4 += v281;
  *a5 += v282;
  *a6 += v283;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v293 = v370;
  }

  else
  {
    v293 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v289, v290, v291, v292, v21, &unk_26286BF90, v23, v23, v293, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v298 = v370;
  }

  else
  {
    v298 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v294, v295, v296, v297, v21, &unk_26286BF90, v23, v23, v298, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v303 = v370;
  }

  else
  {
    v303 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v21, &unk_26286BF90, v23, v23, v303, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v308 = v370;
  }

  else
  {
    v308 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v304, v305, v306, v307, v21, &unk_26286BF90, v23, v23, v308, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v313 = v370;
  }

  else
  {
    v313 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v309, v310, v311, v312, v21, &unk_26286BF90, v23, v23, v313, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v318 = v370;
  }

  else
  {
    v318 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v314, v315, v316, v317, v21, &unk_26286BF90, v23, v23, v318, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v323 = v370;
  }

  else
  {
    v323 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v319, v320, v321, v322, v21, &unk_26286BF90, v23, v23, v323, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v328 = v370;
  }

  else
  {
    v328 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v324, v325, v326, v327, v21, &unk_26286BF90, v23, v23, v328, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v333 = v370;
  }

  else
  {
    v333 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v329, v330, v331, v332, v21, &unk_26286BF90, v23, v23, v333, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v338 = v370;
  }

  else
  {
    v338 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v334, v335, v336, v337, v21, &unk_26286BF90, v23, v23, v338, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v343 = v370;
  }

  else
  {
    v343 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v339, v340, v341, v342, v21, &unk_26286BF90, v23, v23, v343, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v348 = v370;
  }

  else
  {
    v348 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v344, v345, v346, v347, v21, &unk_26286BF90, v23, v23, v348, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v353 = v370;
  }

  else
  {
    v353 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v349, v350, v351, v352, v21, &unk_26286BF90, v23, v23, v353, 4, 4, 0);
  DgnString::~DgnString(&v370);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 311, &v370);
  if (v371)
  {
    v358 = v370;
  }

  else
  {
    v358 = &unk_26286BF90;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v354, v355, v356, v357, v21, &unk_26286BF90, v23, v23, v358, 8, 8, 0);
  DgnString::~DgnString(&v370);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/corpus.cpp", 312, &v370);
  if (v371)
  {
    v363 = v370;
  }

  else
  {
    v363 = &unk_26286BF90;
  }

  v364 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v359, v360, v361, v362, v365, &unk_26286BF90, (35 - v365), (35 - v365), v363, *a4, *a5, *a6);
  DgnString::~DgnString(&v370);
}

uint64_t sizeObject<unsigned int>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return 4 * v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      v7 = result + 4 * (v6 - 1) + 4;
      if (v6 <= 0)
      {
        v7 = result;
      }

      if (!a2)
      {
        v7 += 4 * (v5 - v6);
      }

      if (v5 >= v6)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t sizeObject<unsigned long long>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return 8 * v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      v7 = result + 8 * (v6 - 1) + 8;
      if (v6 <= 0)
      {
        v7 = result;
      }

      if (!a2)
      {
        v7 += 8 * (v5 - v6);
      }

      if (v5 >= v6)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t writeObject<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject<char>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject<unsigned long long>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject<unsigned short>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

void readObject<unsigned int>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

void readObject<char>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *a2;
  if (*(a2 + 12) < v8)
  {
    v9 = 0;
    *(a2 + 12) = realloc_array(v7, &v9, v8, *(a2 + 8), *(a2 + 8), 1);
    v7 = v9;
    *a2 = v9;
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, v7, v6, a3);
}

void readObject<unsigned short>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<short>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

unint64_t DgnPrimArray<unsigned long long>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 8 * v6, 8 * v5, 8 * v5, 1);
  *(a1 + 12) = result >> 3;
  *a1 = v8;
  return result;
}

uint64_t HuffmanDecoder<unsigned int,unsigned long long>::~HuffmanDecoder(uint64_t a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 16);

  return DgnPrimArray<unsigned int>::~DgnPrimArray(a1);
}

uint64_t sizeObject<HuffmanSymbol<unsigned int,unsigned long long> *>(uint64_t a1, int a2)
{
  v2 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 4;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    if (v5 >= 1)
    {
      v6 = v5 + 1;
      v7 = (*a1 + 8 * v5 - 8);
      do
      {
        v8 = *v7--;
        result += v2 + 16 * (v8 != 0);
        --v6;
      }

      while (v6 > 1);
    }

    if (!a2)
    {
      v9 = (*(a1 + 12) - v5);
      v10 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v10 = 3;
      }

      result += v9 << v10;
    }
  }

  return result;
}

uint64_t HuffmanDecoder<unsigned int,unsigned long long>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned long long>(a1, a2);
  v5 = sizeObject<unsigned char>(a1 + 16, a2);
  v6 = sizeObject<unsigned int>(a1 + 32, a2);
  v7 = sizeObject<unsigned int>(a1 + 48, a2);
  v8 = sizeObject<unsigned int>(a1 + 80, a2);
  v9 = 12;
  if (a2 == 3)
  {
    v9 = 0;
  }

  return v9 + v4 + v5 + v6 + v7 + v8;
}

uint64_t sizeObject<unsigned char>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      if (v6 > 0)
      {
        v7 = result + (v6 - 1) + 1;
      }

      else
      {
        v7 = result;
      }

      if (!a2)
      {
        v7 += v5 - v6;
      }

      if (v5 >= v6)
      {
        return v7;
      }
    }
  }

  return result;
}

unint64_t DgnPrimArray<char>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = (*(a1 + 12) + v3);
  v8 = 0;
  result = realloc_array(*a1, &v8, v6, v5, v5, 1);
  *(a1 + 12) = result;
  *a1 = v8;
  return result;
}

void DgnPool::~DgnPool(DgnPool *this)
{
  DgnPool::deleteAllWithoutDestroying(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);
}

void *DgnPool::deleteAllWithoutDestroying(DgnPool *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(this + 2) + 8 * v3);
      if (v4)
      {
        MemChunkFree(v4, 0);
      }

      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  v6 = *(this + 2);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  result = *(this + 4);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0;
  return result;
}

uint64_t writeObject<unsigned char>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t DgnPool::addChunk(DgnPool *this)
{
  v2 = *(this + 6);
  if (v2 == 1)
  {
    v3 = 15360;
  }

  else
  {
    v3 = 64512;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3072;
  }

  v5 = *this;
  v6 = v4 / v5;
  v7 = MemChunkSuggestAllocExtraItems(v5 * v6 + 12, v5, 0);
  v8 = v7 + v6;
  result = MemChunkAlloc((v7 + v6) * *this + 12, 0);
  v10 = result;
  v11 = ((result + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(this + 6);
  if (v12 == *(this + 7))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(this + 16, 1, 1);
    v12 = *(this + 6);
  }

  *(*(this + 2) + 8 * v12) = v10;
  *(this + 6) = v12 + 1;
  v13 = *(this + 10);
  if (v13 == *(this + 11))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(this + 32, 1, 1);
    v13 = *(this + 10);
  }

  *(*(this + 4) + 4 * v13) = v8;
  ++*(this + 10);
  *(this + 12) += v8;
  v14 = *(this + 1);
  *(this + 1) = v11;
  if (v8 >= 2)
  {
    v15 = *this;
    v16 = v11;
    do
    {
      v11 = (v16 + v15);
      *v16 = v16 + v15;
      v16 = (v16 + v15);
    }

    while (v8-- > 2);
  }

  *v11 = v14;
  return result;
}

void readObject<unsigned char>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *a2;
  if (*(a2 + 12) < v8)
  {
    v9 = 0;
    *(a2 + 12) = realloc_array(v7, &v9, v8, *(a2 + 8), *(a2 + 8), 1);
    v7 = v9;
    *a2 = v9;
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, v7, v6, a3);
}

{
  LODWORD(v10) = 0;
  readObject(a1, &v10, a3);
  v6 = v10;
  v7 = *(a2 + 8);
  if (v10)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = MemChunkAlloc(v10, 0);
    *a2 = v9;
    *(a2 + 8) = v6;
    v7 = v6;
  }

  else
  {
    v9 = *a2;
  }

  readObjectArray(a1, v9, v7, a3);
}

void *TSegmenter::TSegmenter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_287523E28;
  a1[1] = 0;
  TAllocator::TAllocator((a1 + 2), 2048);
  a1[7] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = a3;
  a1[13] = a4;
  a1[1] = 5;
  (*(*a1 + 16))(a1);
  a1[11] = *(a3 + 72);
  return a1;
}

void sub_2625826F8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  TAllocator::clear((v1 + 16));
  _Unwind_Resume(a1);
}

void TSegmenter::~TSegmenter(TSegmenter *this)
{
  v2 = *(this + 8);
  *(this + 9) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  TAllocator::clear((this + 16));
}

unsigned __int8 *TSegmenter::findSegmentEnd(void *a1, unsigned __int8 *a2, int *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v10 = a1[12];
  if (*(v10 + 64) != 2)
  {
    v33 = 0;
    v34 = 0;
    memset(v126, 0, 32);
    for (i = a2; ; ++i)
    {
      v36 = *i;
      if (v36 <= 0x20 && ((1 << v36) & 0x100003E01) != 0)
      {
        break;
      }

      v38 = v36 >> 6;
      v39 = 1 << v36;
      v40 = *(v126 + v38);
      if ((v40 & v39) == 0)
      {
        *(v126 + v38) = v40 | v39;
        ++v34;
      }

      ++v33;
    }

    if (v34 >= 0x1F)
    {
      *a3 = 5;
      v41 = *(a5 + 16);
      v42 = &unk_26286BF94;
      v43 = a5;
      v44 = 6;
LABEL_269:
      TBuffer<wchar_t>::insert(v43, v41, v42, v44);
      return i;
    }

    if (v33 >= 0x100)
    {
      *a3 = 5;
LABEL_268:
      v41 = *(v5 + 16);
      v42 = &unk_26286BFB0;
      v43 = v5;
      v44 = 16;
      goto LABEL_269;
    }
  }

  v129 = 0;
  v11 = TLocaleInfo::multiByteToUnicode(v10, a2, &v129);
  if (v11 == -1)
  {
    LODWORD(v126[0]) = 0;
      ;
    }

    *a3 = 5;
    v41 = *(v5 + 16);
    v42 = &unk_26286BFF4;
    v43 = v5;
    v44 = 8;
    goto LABEL_269;
  }

  v12 = v11;
  v125 = v5;
  if (a1[11] >= 3uLL)
  {
    v13 = v129;
    {
      operator new();
    }

    v15 = v13 < 65281 && v13 != 12288;
    if (v13 <= 65510 && !v15 && ((v13 - 65471) > 0x20 || TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13) != v13))
    {
      v16 = v129;
      {
        operator new();
      }

      v129 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v16);
      *a4 |= 2uLL;
    }
  }

  v128 = 0;
  v17 = &v8[v12];
  v18 = TLocaleInfo::multiByteToUnicode(a1[12], v17, &v128);
  v19 = v18;
  if (*v17)
  {
    v20 = v18 == -1;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    do
    {
      v21 = TLocaleInfo::composeCharacter(a1[12], v129, v128);
      if (!v21)
      {
        break;
      }

      v22 = (v128 & 0x7FFFFFFB) != 0x670 && v128 >= 0x660;
      v23 = v22 ? 1 : 4;
      v24 = v128 >= 1611 ? v23 : 1;
      *a4 |= v24;
      v129 = v21;
      v17 += v19;
      v25 = TLocaleInfo::multiByteToUnicode(a1[12], v17, &v128);
      v19 = v25;
    }

    while (*v17 && v25 != -1);
  }

  v27 = a1[13];
  if (v27)
  {
    v28 = *v27;
    v29 = v129;
    if (*v27)
    {
      v30 = v27 + 2;
      do
      {
        v31 = *(v30 - 1);
        if (!v31)
        {
          break;
        }

        if (v129 == v28)
        {
          v129 = *(v30 - 1);
          *a4 |= 8uLL;
          v29 = v31;
          break;
        }

        v32 = *v30;
        v30 += 2;
        v28 = v32;
      }

      while (v32);
    }
  }

  else
  {
    v29 = v129;
  }

  {
    operator new();
  }

  if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29))
  {
    v45 = 1;
    goto LABEL_76;
  }

  v46 = v129;
  {
    operator new();
  }

  v45 = 0;
  if (v46 > 159)
  {
    if (v46 >= 12288)
    {
      if (v46 == 12288)
      {
        goto LABEL_76;
      }

      v47 = 65279;
    }

    else
    {
      if (v46 == 160)
      {
        goto LABEL_76;
      }

      v47 = 8203;
    }

    if (v46 == v47)
    {
      goto LABEL_76;
    }
  }

  else if (v46 <= 0x20 && ((1 << v46) & 0x100002600) != 0)
  {
    goto LABEL_76;
  }

  v98 = v129;
  {
    operator new();
  }

  if (TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v98))
  {
    v99 = 1;
    i = v17;
    if (*v17 && v19 != -1)
    {
      v99 = 1;
      i = v17;
      do
      {
        v100 = v128;
        {
          operator new();
        }

        if (!TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v100))
        {
          break;
        }

        ++v99;
        i += v19;
        v101 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
        v19 = v101;
      }

      while (*i && v101 != -1);
    }

    if (v99 > a1[1])
    {
      v43 = v125;
      *a3 = 5;
      v41 = *(v125 + 16);
      v42 = &unk_26286C018;
      v44 = 32;
      goto LABEL_269;
    }

    v118 = 3;
    goto LABEL_328;
  }

  v109 = v129;
  {
    operator new();
  }

  if (v109 >= 48 && (v109 < 0x3A || v109 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v109) != -1))
  {
    v45 = 2;
    goto LABEL_76;
  }

  v117 = v129;
  {
    operator new();
  }

  v45 = 5;
  if (v117 - 1 >= 8 && v117 - 11 >= 2 && v117 != 0xFFFF)
  {
    if (v117 - 14 < 0x12)
    {
      v45 = 5;
      goto LABEL_76;
    }

    if (a1[11] < 3uLL || !TLocaleInfo::isDiacritic(a1[12], v129))
    {
      v45 = 4;
      goto LABEL_76;
    }

    if (isComposableDiacriticInContext(0, v129, a1[12]))
    {
      v119 = v125;
      *a3 = 5;
      v120 = *(v125 + 16);
      v121 = &unk_26286C09C;
      v122 = 9;
      goto LABEL_329;
    }

    v118 = 4;
LABEL_328:
    v119 = v125;
    *a3 = v118;
    LODWORD(v126[0]) = v129;
    v120 = *(v125 + 16);
    v121 = v126;
    v122 = 1;
LABEL_329:
    TBuffer<wchar_t>::insert(v119, v120, v121, v122);
    return v17;
  }

LABEL_76:
  *a3 = v45;
  v48 = *(v125 + 16);
  LODWORD(v126[0]) = v129;
  v123 = v48;
  TBuffer<wchar_t>::insert(v125, v48, v126, 1uLL);
  if (*v17 && v19 != -1)
  {
    i = v17;
    v124 = v8;
    while (1)
    {
      v49 = v128;
      if (!v128)
      {
        goto LABEL_266;
      }

      v50 = v129;
      v51 = a1[12];
      v52 = *a3;
      if (*a3 > 1)
      {
        break;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          {
            operator new();
          }

          isAlpha = TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49);
          goto LABEL_154;
        }

LABEL_106:
        {
          operator new();
        }

        if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49))
        {
          goto LABEL_265;
        }

        {
          operator new();
        }

        if (v49 > 159)
        {
          if (v49 >= 12288)
          {
            if (v49 == 12288)
            {
              goto LABEL_265;
            }

            v54 = 65279;
          }

          else
          {
            if (v49 == 160)
            {
              goto LABEL_265;
            }

            v54 = 8203;
          }

          if (v49 == v54)
          {
LABEL_265:
            v8 = v124;
            goto LABEL_266;
          }
        }

        else if (v49 <= 0x20 && ((1 << v49) & 0x100002600) != 0)
        {
          goto LABEL_265;
        }

        {
          operator new();
        }

        isPunct = TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49);
        if (isPunct)
        {
          goto LABEL_265;
        }

        GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(isPunct);
        if (v49 >= 48)
        {
          if (v49 < 0x3A)
          {
            goto LABEL_265;
          }

          if (v49 >= 0x660)
          {
            GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v49);
            if (GlobalLocaleInfo != -1)
            {
              goto LABEL_265;
            }
          }
        }

        v58 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
        if (TLocaleInfo::isJunk(v58, v49))
        {
          goto LABEL_265;
        }

        if (isComposableDiacriticInContext(0, v50, v51))
        {
          goto LABEL_265;
        }

        v59 = isComposableDiacriticInContext(v50, v49, v51);
        if (v59)
        {
          goto LABEL_265;
        }

        v60 = TLocaleInfo::getGlobalLocaleInfo(v59);
        if ((v50 - 19968) >> 4 <= 0x51A)
        {
          v55 = 12293;
LABEL_140:
          if (v49 != v55)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }

        v61 = TLocaleInfo::getGlobalLocaleInfo(v60);
        if ((v49 - 19968) >> 4 < 0x51B)
        {
          goto LABEL_265;
        }

        TLocaleInfo::getGlobalLocaleInfo(v61);
        v62 = isKatakana(v50);
        v63 = v62;
        v64 = TLocaleInfo::getGlobalLocaleInfo(v62);
        if (v63)
        {
          isAlpha = TLocaleInfo::isSmallKatakana(v64, v49);
LABEL_153:
          if (v50 == 12540)
          {
            goto LABEL_265;
          }

LABEL_154:
          if ((isAlpha & 1) == 0)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }

        v65 = isKatakana(v49);
        if (v65)
        {
          goto LABEL_265;
        }

        v66 = TLocaleInfo::getGlobalLocaleInfo(v65);
        if ((v50 - 12353) < 0x53 || (v50 - 12540) < 3 || (v50 - 12445) <= 1)
        {
          v67 = TLocaleInfo::getGlobalLocaleInfo(v66);
          isAlpha = TLocaleInfo::isSmallHiragana(v67, v49);
          goto LABEL_153;
        }

        v86 = TLocaleInfo::getGlobalLocaleInfo(v66);
        if ((v49 - 12353) < 0x53 || (v49 - 12540) < 3 || (v49 - 12445) < 2)
        {
          goto LABEL_265;
        }

        v87 = TLocaleInfo::getGlobalLocaleInfo(v86);
        v88 = TLocaleInfo::getGlobalLocaleInfo(v87);
        v89 = v49 - 3585;
        if ((v50 - 3585) > 0x5A)
        {
          if (v89 < 0x5B)
          {
            goto LABEL_265;
          }

          v90 = TLocaleInfo::getGlobalLocaleInfo(v88);
          if (v50 >= 1425)
          {
            v92 = v50 < 0x5F5 || (v50 - 64285) < 0x33;
            TLocaleInfo::getGlobalLocaleInfo(v90);
            if (v49 >= 1425)
            {
              if (v49 >= 0x5F5)
              {
                if ((((v49 - 64285) < 0x33) ^ v92))
                {
                  goto LABEL_265;
                }
              }

              else if (!v92)
              {
                goto LABEL_265;
              }
            }

            else if (v92)
            {
              goto LABEL_265;
            }
          }

          else
          {
            TLocaleInfo::getGlobalLocaleInfo(v90);
            if (v49 >= 1425 && (v49 < 0x5F5 || (v49 - 64285) < 0x33))
            {
              goto LABEL_265;
            }
          }
        }

        else
        {
          if (v89 > 0x5A)
          {
            goto LABEL_265;
          }

          if ((v49 - 3663) >= 0xFFFFFFD5)
          {
            if (v49 > 0xE3A)
            {
              if (v49 > 0xE44)
              {
                goto LABEL_155;
              }
            }

            else if (v49 > 0xE2F || (v49 & 0xE7D) == 0xE24)
            {
              goto LABEL_155;
            }
          }

          if ((v50 - 3653) < 0xFFFFFFFB)
          {
            goto LABEL_265;
          }
        }

        goto LABEL_155;
      }

      {
        operator new();
      }

      if (v50 <= 8202)
      {
        if (v50 != 32 && v50 != 160)
        {
LABEL_145:
          if (v50 != 13 || v49 != 10)
          {
            goto LABEL_265;
          }

          goto LABEL_155;
        }
      }

      else if (v50 != 8203 && v50 != 65279 && v50 != 12288)
      {
        goto LABEL_145;
      }

      {
        operator new();
      }

      if (v49 > 8202)
      {
        if (v49 == 8203 || v49 == 12288)
        {
          goto LABEL_155;
        }

        v55 = 65279;
        goto LABEL_140;
      }

      if (v49 != 32 && v49 != 160)
      {
        goto LABEL_265;
      }

LABEL_155:
      if (a1[11] >= 3uLL)
      {
        v68 = v128;
        {
          operator new();
        }

        v70 = v68 < 65281 && v68 != 12288;
        if (v68 <= 65510 && !v70 && ((v68 - 65471) > 0x20 || TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v68) != v68))
        {
          v71 = v128;
          {
            operator new();
          }

          v128 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v71);
          *a4 |= 2uLL;
        }
      }

      v72 = v129;
      v129 = v128;
      i += v19;
      v73 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
      v19 = v73;
      v74 = *i;
      if (v72 == 3661)
      {
        v8 = v124;
        if ((v129 & 0xFFFFFFFC) == 0xE48 && v128 == 3634 && *i && v73 != -1)
        {
          *(*v125 + 4 * *(v125 + 16) - 4) = v129;
          v129 = 3661;
          v74 = *i;
        }

        if (!v74)
        {
          goto LABEL_192;
        }

LABEL_176:
        if (v73 != -1)
        {
          do
          {
            v75 = TLocaleInfo::composeCharacter(a1[12], v129, v128);
            if (!v75)
            {
              break;
            }

            v76 = (v128 & 0x7FFFFFFB) != 0x670 && v128 >= 0x660;
            v77 = v76 ? 1 : 4;
            v78 = v128 >= 1611 ? v77 : 1;
            *a4 |= v78;
            v129 = v75;
            i += v19;
            v79 = TLocaleInfo::multiByteToUnicode(a1[12], i, &v128);
            v19 = v79;
          }

          while (*i && v79 != -1);
        }

        goto LABEL_192;
      }

      v8 = v124;
      if (*i)
      {
        goto LABEL_176;
      }

LABEL_192:
      v81 = a1[13];
      if (v81)
      {
        v82 = *v81;
        if (*v81)
        {
          v83 = v81 + 2;
          while (*(v83 - 1))
          {
            if (v129 == v82)
            {
              v129 = *(v83 - 1);
              *a4 |= 8uLL;
              break;
            }

            v84 = *v83;
            v83 += 2;
            v82 = v84;
            if (!v84)
            {
              break;
            }
          }
        }
      }

      if ((i - v8) <= 0xFF)
      {
        LODWORD(v126[0]) = v129;
        TBuffer<wchar_t>::insert(v125, *(v125 + 16), v126, 1uLL);
      }

      if (*i)
      {
        v85 = v19 == -1;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        goto LABEL_266;
      }
    }

    switch(v52)
    {
      case 2:
        {
          operator new();
        }

        if (v49 < 48 || v49 >= 0x3A && (v49 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v49) == -1))
        {
          goto LABEL_265;
        }

        goto LABEL_155;
      case 5:
        {
          operator new();
        }

        if ((v49 - 1) >= 8 && (v49 - 11) >= 2 && v49 != 0xFFFF && (v49 - 32) < 0xFFFFFFEE)
        {
          goto LABEL_265;
        }

        goto LABEL_155;
      case 3:
        goto LABEL_265;
    }

    goto LABEL_106;
  }

  i = v17;
LABEL_266:
  if ((i - v8) >= 0x100)
  {
    v5 = v125;
    *a3 = 5;
    TBuffer<wchar_t>::resize(v125, v123);
    goto LABEL_268;
  }

  if (*a3 != 4)
  {
    if (*a3 != 5)
    {
      return i;
    }

    TBuffer<wchar_t>::resize(v125, v123);
    v41 = *(v125 + 16);
    v42 = &unk_26286C0C4;
    v43 = v125;
    v44 = 11;
    goto LABEL_269;
  }

  v94 = a1[12];
  v96 = *(v125 + 8);
  v95 = *(v125 + 16);
  if (v95 >= v96)
  {
    if (*(v125 + 1048))
    {
      LODWORD(v126[0]) = 0;
      TBuffer<wchar_t>::insert(v125, v95, v126, 1uLL);
      --*(v125 + 16);
      v97 = *v125;
    }

    else
    {
      v97 = *v125;
      if (v96)
      {
        *(v97 + 4 * v96 - 4) = 0;
      }
    }
  }

  else
  {
    v97 = *v125;
    *(*v125 + 4 * v95) = 0;
  }

  if (TLocaleInfo::isKtivMenukad(v94, (v97 + 4 * v123)))
  {
    *&v126[0] = &v126[1] + 8;
    v104 = 256;
    *(v126 + 8) = xmmword_26286B6F0;
    v127 = 1;
    v105 = a1[12];
    v107 = *(v125 + 8);
    v106 = *(v125 + 16);
    if (v106 >= v107)
    {
      if (*(v125 + 1048))
      {
        v130[0] = 0;
        TBuffer<wchar_t>::insert(v125, v106, v130, 1uLL);
        --*(v125 + 16);
        v108 = *v125;
      }

      else
      {
        v108 = *v125;
        if (v107)
        {
          *(v108 + 4 * v107 - 4) = 0;
        }
      }
    }

    else
    {
      v108 = *v125;
      *(*v125 + 4 * v106) = 0;
    }

    TLocaleInfo::ktivMenukadToKtivMaleh(*&v104, v103, v105, (v108 + 4 * v123), v126);
    TBuffer<wchar_t>::resize(v125, v123);
    if (*&v126[1])
    {
      v110 = TBuffer<wchar_t>::c_str(v126);
      v111 = v110;
      v112 = 0;
      v113 = *(v125 + 16);
        ;
      }

      v115 = v112 - 1;
    }

    else
    {
      *a3 = 5;
      v113 = *(v125 + 16);
      v111 = &unk_26286C0F4;
      v115 = 6;
    }

    TBuffer<wchar_t>::insert(v125, v113, v111, v115);
    if (v127 == 1 && *&v126[0] != (&v126[1] + 8) && *&v126[0] != 0)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return i;
}

void sub_262583B58(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TLocaleInfo::getGlobalLocaleInfo(TLocaleInfo *this)
{
  {
    operator new();
  }

  return TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
}

void sub_262583D28(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

BOOL isComposableDiacriticInContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 768)
  {
    return 0;
  }

  if (a2 < 0x370)
  {
    goto LABEL_4;
  }

  if (a2 > 0xE30)
  {
    if (a2 > 0xE4E)
    {
      return 0;
    }

    if (a2 > 0xE33)
    {
      if (a2 - 3655 > 0xFFFFFFF3)
      {
        return 0;
      }
    }

    else if (a2 != 3633)
    {
      return 0;
    }
  }

  else if (a2 != 1600)
  {
    if (a2 >= 0x64B)
    {
      if (a2 >= 0x660 && (a2 & 0xFFB) != 0x670)
      {
        result = 0;
        if (a2 != 2364 || *(a3 + 72) <= 3uLL)
        {
          return result;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  {
    operator new();
  }

  return a2 - 3585 > 0x5A || TLocaleInfo::composeCharacter(a3, a1, a2) != 0;
}

void sub_262583EA4(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TBuffer<wchar_t>::c_str(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 1048))
    {
      v5 = 0;
      TBuffer<wchar_t>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
      return *a1;
    }

    else
    {
      result = *a1;
      if (v3)
      {
        *(result + 4 * v3 - 4) = 0;
      }
    }
  }

  else
  {
    result = *a1;
    *(*a1 + 4 * v2) = 0;
  }

  return result;
}

uint64_t TSegmenter::getSegment(TSegmenter *this, char *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = &a2[-*(this + 7)];
  v5 = *(this + 8);
  v6 = (this + 64);
  if (v4 >= (*(this + 9) - v5) >> 3)
  {
    v13 = 0;
    std::vector<TSegment const*>::resize(this + 8, 2 * v4 + 2, &v13);
    v5 = *v6;
  }

  result = *(v5 + 8 * v4);
  if (!result)
  {
    v18 = 4;
    v17 = 0;
    v13 = v15;
    v14 = xmmword_26286B6F0;
    v16 = 1;
    SegmentEnd = TSegmenter::findSegmentEnd(this, a2, &v18, &v17, &v13);
    if ((*(&v14 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v14 + 1) + 1);
    }

    v10 = TAllocator::allocate((this + 16), v9);
    if (*(&v14 + 1) >= v14)
    {
      if (v16)
      {
        v19 = 0;
        TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v19, 1uLL);
        v11 = v13;
        --*(&v14 + 1);
      }

      else
      {
        v11 = v13;
        if (v14)
        {
          v13[v14 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v13;
      v13[*(&v14 + 1)] = 0;
    }

    wcscpy(v10, v11);
    v12 = TAllocator::allocate((this + 16), 32);
    *v12 = v10;
    *(v12 + 8) = SegmentEnd;
    *(v12 + 16) = v17;
    *(v12 + 24) = v18;
    *(*v6 + 8 * v4) = v12;
    if (v16 == 1 && v13 != v15)
    {
      if (v13)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    return *(*v6 + 8 * v4);
  }

  return result;
}

void sub_262584120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v9)
  {
    if (a9)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void std::vector<TSegment const*>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TSegment const*>::__append(a1, a2 - v3, a3);
  }
}

uint64_t TSegmenter::getPreviousSegment(TSegmenter *this, char *a2)
{
  v3 = *(this + 7);
  if (v3 == a2)
  {
    return 0;
  }

  v5 = a2 - v3;
  v6 = *(this + 8);
  v7 = (*(this + 9) - v6) >> 3;
  v8 = a2 - v3 - 1;
  if ((a2 - v3) <= 1)
  {
    v5 = 1;
  }

  while (1)
  {
    if (v8 < v7)
    {
      result = *(v6 + 8 * v8);
      if (result)
      {
        break;
      }
    }

    --v8;
    if (!--v5)
    {
      result = TSegmenter::getSegment(this, v3);
      v10 = *(this + 7);
      return result;
    }
  }

  v11 = *(result + 8);
  if (v11 < a2)
  {
    do
    {
      v12 = *(this + 7);
      result = TSegmenter::getSegment(this, v11);
      v11 = *(result + 8);
    }

    while (v11 < a2);
    v13 = *(this + 7);
  }

  return result;
}

uint64_t TLocaleInfo::isPunct(uint64_t a1, unsigned int a2)
{
  if (a2 > 255)
  {
    if (a2 < 0x5BE)
    {
      return 0;
    }

    if (a2 <= 0x6E9)
    {
      if (a2 - 1470 < 0x37 && ((0x60000000000125uLL >> (a2 + 66)) & 1) != 0)
      {
        return 1;
      }

      v3 = a2 & 0x7FE;
      return a2 == 1563 || v3 == 1566 || a2 - 1542 < 0xA || v3 == 1642 || v3 == 1644 || a2 == 1748 || a2 == 1758 || a2 == 1769;
    }

    if (a2 >= 0xE2F)
    {
      if (a2 <= 0xE5B)
      {
        return a2 == 3654 || (a2 & 0xFEF) == 3631 || a2 == 3663 || a2 > 0xE59;
      }

      v16 = a2 >> 4;
      if (a2 >> 4 >= 0x201)
      {
        if (a2 >> 2 <= 0xC3E)
        {
          return v16 < 0x267 || a2 - 12289 < 4 || a2 - 12294 < 0x17 || a2 == 12539;
        }

        if (a2 >= 0xFF01)
        {
          if (v16 < 0xFF1)
          {
            return 1;
          }

          result = 1;
          if ((a2 - 65504 > 0xE || a2 == 65511) && (a2 - 65306 > 0x26 || ((1 << (a2 - 26)) & 0x7E0000007FLL) == 0))
          {
            return a2 - 65371 < 0xB;
          }

          return result;
        }
      }
    }

    return 0;
  }

  if (a2 - 33 < 0xF)
  {
    return 1;
  }

  result = 1;
  if (a2 - 91 > 0x24 || ((1 << (a2 - 91)) & 0x1F0000003FLL) == 0)
  {
    v15 = a2 - 161 < 0x1F || (a2 & 0xFFFFFFDF) == 215;
    return a2 - 58 < 7 || v15;
  }

  return result;
}

uint64_t TLocaleInfo::isJunk(uint64_t a1, int a2)
{
  v2 = a2 == 0xFFFF || (a2 - 14) < 0x12;
  v3 = (a2 - 11) < 2 || v2;
  if ((a2 - 1) >= 8)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t TLocaleInfo::isDiacritic(uint64_t a1, unsigned int a2)
{
  if (a2 < 768)
  {
    return 0;
  }

  if (a2 < 0x370)
  {
    return 1;
  }

  if (a2 > 0xE30)
  {
    v4 = a2 - 3655 < 0xFFFFFFF4;
    if (a2 <= 0xE33)
    {
      v4 = a2 == 3633;
    }

    return a2 <= 0xE4E && v4;
  }

  else
  {
    if (a2 == 1600)
    {
      return 1;
    }

    if (a2 < 0x64B)
    {
      return 0;
    }

    result = 1;
    if (a2 >= 0x660 && (a2 & 0xFFB) != 0x670)
    {
      if (a2 == 2364)
      {
        return *(a1 + 72) > 3uLL;
      }

      return 0;
    }
  }

  return result;
}

uint64_t isKatakana(int a1)
{
  v1 = (a1 - 12540) < 3 || (a1 - 65438) < 2;
  v2 = (a1 - 12443) < 4 || v1;
  if ((a1 - 12449) >= 0x56)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 - 65382) >= 0x38)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t TLocaleInfo::isSmallKatakana(uint64_t a1, int a2)
{
  v2 = (a2 - 12443) >= 4 && (a2 - 12540) >= 3;
  if (!v2 || (a2 - 65382) < 0xB)
  {
    return 1;
  }

  result = 1;
  if (((a2 - 12449) > 0x22 || ((1 << (a2 + 95)) & 0x400000155) == 0) && ((a2 - 12515) > 0xB || ((1 << (a2 + 29)) & 0x815) == 0) && (a2 - 65438) >= 2)
  {
    return 0;
  }

  return result;
}

BOOL TLocaleInfo::isSmallHiragana(uint64_t a1, int a2)
{
  result = 1;
  v3 = (a2 - 12419) > 0x1B || ((1 << (a2 + 125)) & 0xC000815) == 0;
  if (v3 && ((a2 - 12353) > 8 || ((1 << (a2 - 65)) & 0x155) == 0))
  {
    return (a2 - 12540) < 3;
  }

  return result;
}

void std::vector<TSegment const*>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t StringIdCollSearchCmp(unsigned __int16 *a1, EnvMgr **a2)
{
  Name = EnvMgr::getName(a2[1], *a1);
  v4 = Name;
  v5 = *(a2 + 26);
  v6 = *a2;
  if (v5 == 1)
  {
    v7 = strlen(v6);

    return ustrncmp(v4, v6, v7);
  }

  else
  {

    return ustrcmp(Name, v6);
  }
}

uint64_t StringIdCollSearchCmpFromStringId(unsigned __int16 *a1, EnvMgr **a2)
{
  Name = EnvMgr::getName(a2[1], *a2);
  v5 = *(a2 + 12);
  v6 = *(a2 + 26);
  v8 = Name;
  v9 = *(a2 + 1);
  v10 = v5;
  v11 = v6;
  return StringIdCollSearchCmp(a1, &v8);
}

void MrecInitModule_filesrc_audiosrc(void)
{
  if (!gParDebugSimulateRealTime)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSimulateRealTime", byte_26286C11A, byte_26286C11A, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSimulateRealTime = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSimulateRealTime);
  }
}

uint64_t SnapTime::recordTime(SnapTime *this, char a2, char a3, char a4, char a5)
{
  if ((a2 & 1) != 0 || gShadowDiagnosticComputeFullTimingStats == 1)
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  *this = v9;
  if ((a3 & 1) != 0 || gShadowDiagnosticComputeFullTimingStats == 1)
  {
    CurrentMicrosec = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  }

  else
  {
    CurrentMicrosec = 0;
  }

  *(this + 1) = CurrentMicrosec;
  if ((a4 & 1) != 0 || gShadowDiagnosticComputeFullTimingStats == 1)
  {
    CurrentTickMicrosec = ClockTimer::getCurrentTickMicrosec(&ClockTimer::smClockTimer);
  }

  else
  {
    CurrentTickMicrosec = 0;
  }

  *(this + 2) = CurrentTickMicrosec;
  if ((a5 & 1) != 0 || gShadowDiagnosticComputeFullTimingStats == 1)
  {
    result = ClockTimer::getCurrentCpuMicrosec(&ClockTimer::smClockTimer);
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void MrecInitLibrary_prefilt(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_lexnet_prefilt();
  MrecInitModule_lookahsc_prefilt();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_retlist_prefilt();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_treepref_prefilt();
}

void MrecInitLibrarySet_throughPrefilt(void)
{
  MrecInitLibrarySet_throughGerm();

  MrecInitLibrary_prefilt();
}

uint64_t sizeObject<DgnPrimArray<double>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<unsigned long long>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

WaveData *DgnDelete<WaveData>(WaveData *result)
{
  if (result)
  {
    WaveData::~WaveData(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

unint64_t DgnArray<DgnPrimArray<double>>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 16 * v6, 16 * v5, 16 * v5, 1);
  *(a1 + 12) = result >> 4;
  *a1 = v8;
  return result;
}

double DgnPrimArray<double>::copyArraySlice(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 12);
  if (a4 <= v8)
  {
    *(a1 + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1, a4 - v8, 0);
    *(a1 + 8) = a4;
  }

  v9 = *a2;
  v10 = *a1;
  v11 = a4;
  do
  {
    result = *(v9 + 8 * a3);
    *v10++ = result;
    ++a3;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sizeObject<EnergyInfo>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 8 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 8 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t sizeObject<FrameTypeInfo>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 4 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 4 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

unint64_t DgnPrimArray<int>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    *(result + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
    *(v7 + 8) = a4;
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  do
  {
    *v10++ = *(v9 + 4 * a3++);
    --v11;
  }

  while (v11);
  return result;
}

void MrecInitModule_hiersc_pel(void)
{
  if (!gParDebugShowHierarchicalPelStats)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowHierarchicalPelStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowHierarchicalPelStats = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowHierarchicalPelStats);
  }
}

uint64_t HS_PackedIntGenoneScoringFunction(uint64_t this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v8 = this;
    v9 = 0;
    v10 = *(*(*(this + 16) + 488) + 32);
    v11 = a3;
    do
    {
      v12 = *(v8 + 776) + 120 * (*(v8 + 792) - 1);
      if (*(*(v12 + 104) + *(**(v12 + 56) + 4 * (v9 + *(*(*(v8 + 16) + 272) + 4 * a2)))) == 1)
      {
        this = OnDemandPelScorer::getPackedIntComponentScore(v8, a2, v9);
        ++*a5;
      }

      else
      {
        this = *(v8 + 760);
      }

      v13 = this >> v10;
      if (this >> v10 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v9++] = v13;
    }

    while (v11 != v9);
  }

  return this;
}

uint64_t HS_PackedIntPelScoringFunction(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v4 = *(this + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v25 = v4;
  v6 = (*(v4 + 272) + 4 * v5);
  v7 = *v6;
  LODWORD(v4) = v6[1];
  v8 = 20000;
  v9 = (v4 - v7);
  if (v4 != v7)
  {
    v11 = 0;
    v12 = *(this + 2);
    v13 = *(v25 + 360) + 4 * *(*(v25 + 456) + 4 * a2);
    v14 = *(this + 131);
    v15 = *(*(v25 + 488) + 32);
    v16 = 1;
    v17 = 20000;
    do
    {
      v18 = *(this + 97) + 120 * (*(this + 198) - 1);
      if (*(*(v18 + 104) + *(**(v18 + 56) + 4 * (v11 + *(*(*(this + 2) + 272) + 4 * v5)))) == 1)
      {
        PackedIntComponentScore = OnDemandPelScorer::getPackedIntComponentScore(this, v5, v11);
        ++*a3;
      }

      else
      {
        PackedIntComponentScore = *(this + 190);
      }

      v20 = *(v13 + 4 * v11);
      if (v14)
      {
        v8 = (v20 >> v15) + (PackedIntComponentScore >> v15);
        if ((v16 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = (v20 + PackedIntComponentScore) >> v15;
        if ((v16 & 1) == 0)
        {
LABEL_10:
          if (*(this + 130) == 1)
          {
            if (v17 < v8)
            {
              v8 = v17;
            }
          }

          else
          {
            v22 = v8 - v17;
            v21 = v8 - v17 < 0;
            if (v8 >= v17)
            {
              v8 = v17;
            }

            if (v21)
            {
              v22 = -v22;
            }

            if (v22 < *(v25 + 512))
            {
              v8 -= *(*(v25 + 504) + 4 * v22);
            }
          }
        }
      }

      v16 = 0;
      ++v11;
      v17 = v8;
    }

    while (v9 != v11);
  }

  v23 = *(this + 151) + v8;
  if (v23 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v23;
  }
}

uint64_t HScorer::HScorer(uint64_t a1, const PelMgr *a2, const GenoneClassTree *a3, const VarClassMgr *a4, const FmpeMgr *a5, const NeuralNet *a6, const Imelda *a7, int a8, double a9, double a10, BOOL a11, void *a12, void *a13, int a14)
{
  OnDemandPelScorer::OnDemandPelScorer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *v15 = &unk_287523B40;
  *(v15 + 704) = 0u;
  *(v15 + 728) = 0u;
  *(v15 + 744) = 0u;
  v16 = (v15 + 776);
  *(v15 + 776) = 0u;
  *(v15 + 664) = 0u;
  *(v15 + 680) = 0u;
  *(v15 + 760) = a14;
  v17 = *(v15 + 16);
  if (*(v17 + 12) != 1)
  {
    return a1;
  }

  *(a1 + 760) = a14 << *(*(v17 + 488) + 32);
  v18 = *(v17 + 620);
  *(a1 + 792) = v18;
  if (!v18)
  {
    v19 = 0;
LABEL_6:
    if (v19 < v18)
    {
      v20 = v18 - v19;
      v21 = 120 * v19;
      do
      {
        v22 = *v16 + v21;
        *(v22 + 104) = 0uLL;
        *(v22 + 88) = 0uLL;
        *(v22 + 32) = 0x3E8000F4240;
        v21 += 120;
        --v20;
      }

      while (v20);
    }

    goto LABEL_9;
  }

  DgnArray<HScorerLevel>::reallocElts(v15 + 776, v18, 0);
  v19 = *(a1 + 784);
  if (v19 <= v18)
  {
    goto LABEL_6;
  }

  DgnArray<HScorerLevel>::destructAt(v16, v18, v19 - v18);
LABEL_9:
  *(a1 + 784) = v18;
  if (*(a1 + 792) >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      HScorerLevel::init(*(a1 + 776) + v23, *(a1 + 16), v24, *(a1 + 131), a1, *(*a12 + 4 * v24), *(*a13 + 4 * v24));
      ++v24;
      v23 += 120;
    }

    while (v24 < *(a1 + 792));
  }

  return a1;
}

{
  return HScorer::HScorer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_2625853B0(_Unwind_Exception *a1)
{
  DgnArray<HScorerLevel>::releaseAll(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 704);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 680);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  OnDemandPelScorer::~OnDemandPelScorer(v1);
  _Unwind_Resume(a1);
}

unint64_t HScorerLevel::init(unint64_t this, const PelMgr *a2, unsigned int a3, char a4, const HScorer *a5, int a6, unsigned int a7)
{
  v9 = this;
  *this = a2;
  *(this + 8) = a3;
  *(this + 20) = a4;
  *(this + 80) = a5;
  *(this + 28) = *(a2 + 33);
  v10 = *(a2 + 155);
  if (v10)
  {
    v11 = *(*(a2 + 80) + 4 * a3);
    *(this + 24) = v11;
    v12 = *(a2 + 86) + 16 * a3;
    *(this + 56) = *(a2 + 78) + 16 * a3;
    *(this + 64) = v12;
    v13 = *(this + 100);
    v14 = v11;
    if (v11 > v13)
    {
      this = DgnPrimArray<unsigned long long>::reallocElts(this + 88, v11 - v13, 0);
      v14 = *(v9 + 6);
    }

    *(v9 + 24) = v11;
    if (*(v9 + 29) >= v14)
    {
      v10 = v14;
    }

    else
    {
      v16 = 0;
      this = realloc_array(v9[13], &v16, v14, *(v9 + 28), *(v9 + 28), 1);
      *(v9 + 29) = this;
      v9[13] = v16;
      v10 = *(v9 + 6);
    }
  }

  else
  {
    v14 = 0;
    *(this + 24) = 0;
    *(this + 96) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(v9 + 28) = v14;
  *(v9 + 8) = a6;
  *(v9 + 9) = (a7 * 0.01 * v10 + 0.5);
  if (*(*v9 + 620))
  {
    v15 = *(*v9 + 656) + 24 * *(v9 + 2);
  }

  else
  {
    v15 = 0;
  }

  v9[9] = v15;
  return this;
}

void HScorer::~HScorer(HScorer *this)
{
  *this = &unk_287523B40;
  DgnArray<HScorerLevel>::releaseAll(this + 776);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 704);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 680);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 664);

  OnDemandPelScorer::~OnDemandPelScorer(this);
}

{
  HScorer::~HScorer(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t (*HScorer::getGenoneScoringFunction(HScorer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v9 = *(this + 2);
  if (*(v9 + 16) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 418, "pel/hiersc", 1, "%.500s", a7, a8, "MIC models");
    v9 = *(this + 2);
  }

  if (*(v9 + 536))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 420, "pel/hiersc", 1, "%.500s", a7, a8, "shortlists");
    v9 = *(this + 2);
  }

  if (*(v9 + 12) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 422, "pel/hiersc", 1, "%.500s", a7, a8, "a scoring type other than PackedInt");
  }

  return HS_PackedIntGenoneScoringFunction;
}

uint64_t (*HScorer::getPelScoringFunction(HScorer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v9 = *(this + 2);
  if (*(v9 + 16) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 481, "pel/hiersc", 1, "%.500s", a7, a8, "MIC models");
    v9 = *(this + 2);
  }

  if (*(v9 + 536))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 483, "pel/hiersc", 1, "%.500s", a7, a8, "shortlists");
    v9 = *(this + 2);
  }

  if (*(v9 + 12) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 485, "pel/hiersc", 1, "%.500s", a7, a8, "a scoring type other than PackedInt");
  }

  return HS_PackedIntPelScoringFunction;
}

void HScorer::beginPelSyncRecog(HScorer *this, uint64_t a2, const AdaptConfig *a3, const CTFTMgr *a4, BOOL a5, char a6, char a7, double a8)
{
  *(this + 94) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  OnDemandPelScorer::beginPelSyncRecog(this, a2, a3, a4, 1, a6, a7, a8, 0.0);
}

int64x2_t HScorer::beginPelFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OnDemandPelScorer::beginPelFrame();
  v27 = 0u;
  v28 = 0u;
  SnapTime::recordTime(&v27, 1, 0, 0, 0);
  v13 = a1 + 216;
  v14 = *(a1 + 96);
  if (v14 && *(*(v14 + 32) + 16) == **(v14 + 32))
  {
    LinearTransform::doTransform(*(*(a1 + 32) + 224), a4, a1 + 216, v8, v9, v10, v11, v12);
    v15 = a4;
    a4 = 0;
  }

  else
  {
    v15 = a1 + 216;
    v13 = a4;
  }

  v16 = *(a1 + 32);
  if (*(v16 + 8) == *v16)
  {
    if (*(v16 + 56) == 1)
    {
      if (a5)
      {
        ++*(a5 + 32);
      }

      v17 = *(v16 + 64);
      if (a4)
      {
LABEL_10:
        LinearTransform::doTransform(v17, a4, v15, v8, v9, v10, v11, v12);
        a4 = 0;
LABEL_16:
        v18 = v13;
        goto LABEL_18;
      }

LABEL_15:
      LinearTransform::doTransform(v17, v13, v15, v8, v9, v10, v11, v12);
      goto LABEL_16;
    }

    if (*(v16 + 96))
    {
      if (a5)
      {
        ++*(a5 + 32);
      }

      v17 = *(v16 + 104);
      if (a4)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  v18 = v15;
  v15 = v13;
LABEL_18:
  v19 = (a1 + 728);
  v20 = *(a1 + 32);
  if (*(v20 + 12) == *v20)
  {
    if (*(v20 + 136) == 1)
    {
      v21 = *(v20 + 144);
      if (a4)
      {
LABEL_21:
        LinearTransform::doTransform(v21, a4, v18, v8, v9, v10, v11, v12);
        a4 = 0;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (*(v20 + 176))
    {
      v21 = *(v20 + 184);
      if (a4)
      {
        goto LABEL_21;
      }

LABEL_24:
      LinearTransform::doTransform(v21, v15, v18, v8, v9, v10, v11, v12);
      goto LABEL_26;
    }
  }

  v18 = v15;
LABEL_26:
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = v18;
  }

  HScorer::computeHierarchy(a1, v22, (a1 + 720), v8, v9, v10, v11, v12);
  v25 = 0u;
  v26 = 0u;
  SnapTime::recordTime(&v25, 1, 0, 0, 0);
  result = vaddq_s64(*v19, vsubq_s64(v25, v27));
  v24 = vaddq_s64(*(a1 + 744), vsubq_s64(v26, v28));
  *v19 = result;
  *(a1 + 744) = v24;
  return result;
}

void HScorer::computeHierarchy(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 16) + 12) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 813, "pel/hiersc", 1, "%.500s", a7, a8, "a scoring type other than PackedInt");
  }

  v11 = *(a1 + 792);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 776);
    do
    {
      v14 = v13 + 120 * v12;
      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 88);
        v18 = *(v14 + 104);
        v19 = (v17 + 4);
        do
        {
          *(v19 - 1) = 20046;
          *v19 = v16;
          *(v18 + v16++) = 0;
          v19 += 2;
        }

        while (v15 != v16);
      }

      ++v12;
    }

    while (v12 != v11);
    v20 = 0;
    v21 = 0;
    do
    {
      HScorerLevel::computeHierarchy(*(a1 + 776) + v20, a2, a3, a4, a5, a6, a7, a8);
      ++v21;
      v20 += 120;
    }

    while (v21 < *(a1 + 792));
  }
}

double HScorer::endPelFrame(OnDemandPelScorer *this, int a2, PelStats *a3)
{
  *(a3 + 104) = vaddq_s64(*(a3 + 104), *(this + 728));
  *(a3 + 120) = vaddq_s64(*(a3 + 120), *(this + 744));
  *(a3 + 21) += *(this + 90);
  *(this + 94) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  return OnDemandPelScorer::endPelFrame(this, a2, a3);
}

void HScorerLevel::computeHierarchy(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*a1 + 12) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/hiersc.cpp", 1142, "pel/hiersc", 1, "%.500s", a7, a8, "scoring type other than packed integer");
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *(*(a1 + 80) + 776) + 120 * (v11 - 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1;
  if (*(*a1 + 620))
  {
    v14 = (*(v13 + 672) + 16 * v11);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = 0;
    v17 = *(*(v13 + 488) + 32);
    v18 = 0x7FFF;
    do
    {
      if (!v12 || *(*(v12 + 104) + *(**(v12 + 56) + 4 * v16)) == 1)
      {
        ++*a3;
        HierarchyComponentScorePackedInt = HScorerLevel::getHierarchyComponentScorePackedInt(a1, a2, v16);
        v20 = *(*v14 + 4 * v16);
        v21 = (v20 + HierarchyComponentScorePackedInt) >> v17;
        v22 = (v20 >> v17) + (HierarchyComponentScorePackedInt >> v17);
        if (*(a1 + 20) != 1)
        {
          v22 = v21;
        }

        if (v18 >= v22)
        {
          v18 = v22;
        }

        *(*(a1 + 88) + 8 * v16) = v22;
      }

      ++v16;
    }

    while (v16 != v15);
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 32) + v18;
    do
    {
      if ((!v12 || *(*(v12 + 104) + *(**(v12 + 56) + 4 * v23)) == 1) && *(*(a1 + 88) + 8 * v23) <= v25)
      {
        *(*(a1 + 104) + v23) = 1;
        ++v24;
      }

      ++v23;
    }

    while (v23 != v15);
    v26 = *(a1 + 36);
    if (v24 > v26)
    {
      QuickFindFirstK::quickfindFirstK((a1 + 88), 0, v15 - 1, v26 - 1);
      v27 = *(a1 + 36);
      v28 = *(a1 + 24);
      if (v28)
      {
        bzero(*(a1 + 104), v28);
      }

      if (v27)
      {
        v29 = *(a1 + 104);
        v30 = (*(a1 + 88) + 4);
        do
        {
          v31 = *v30;
          v30 += 2;
          *(v29 + v31) = 1;
          --v27;
        }

        while (v27);
      }
    }
  }
}

uint64_t HScorerLevel::getHierarchyComponentScorePackedInt(uint64_t result, void *a2, int a3)
{
  v3 = *(result + 28);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = result;
  LODWORD(result) = 0;
  v5 = (*(v4[9] + 16) + 2 * v3 + *v4[9] + (*(*v4 + 148) * a3) - 1);
  do
  {
    v6 = *(*a2 - 1 + v3) - *(v5 - 1);
    v7 = *v5;
    v5 -= 2;
    result = (result + v6 * v7 * v6);
  }

  while (v3-- > 1);
  return result;
}

uint64_t QuickFindFirstK::quickfindFirstK(uint64_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  v5 = a3;
  LODWORD(v6) = a2;
  v7 = a1;
  v8 = a2 + (a3 - a2) / 2;
  while (1)
  {
    result = QuickFindFirstK::quickfindFirstKpartition(a1, a2, a3, v8);
    if (result == a4)
    {
      break;
    }

    if (result <= a4)
    {
      v6 = (result + 1);
    }

    else
    {
      v5 = result - 1;
      v6 = v6;
    }

    v8 = v6 + (v5 - v6) / 2;
    a1 = v7;
    a2 = v6;
    a3 = v5;
  }

  return result;
}

uint64_t QuickFindFirstK::quickfindFirstKpartition(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = (*a1 + 8 * a4);
  v5 = *v4;
  if (a4 != a3)
  {
    v6 = *v4;
    *v4 = *(*a1 + 8 * a3);
    *(*a1 + 8 * a3) = v6;
  }

  if (a2 >= a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2;
    do
    {
      v8 = *a1;
      v9 = a2;
      if (*(*a1 + 8 * a2) < v5)
      {
        if (a2 != v7)
        {
          v10 = *(v8 + 8 * v7);
          *(v8 + 8 * v7) = *(v8 + 8 * a2);
          *(*a1 + 8 * a2) = v10;
        }

        v7 = (v7 + 1);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a3 != v9 + 1);
  }

  if (v7 != a3)
  {
    v11 = *(*a1 + 8 * a3);
    *(*a1 + 8 * a3) = *(*a1 + 8 * v7);
    *(*a1 + 8 * v7) = v11;
  }

  return v7;
}

void *DgnArray<HScorerLevel>::releaseAll(uint64_t a1)
{
  DgnArray<HScorerLevel>::destructAt(a1, 0, *(a1 + 8));
  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t DgnArray<HScorerLevel>::destructAt(uint64_t result, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 > a2)
  {
    v4 = result;
    v5 = v3;
    v6 = a2;
    v7 = 120 * v3;
    do
    {
      --v5;
      v8 = *v4 + v7;
      *(v8 - 120) = 0;
      *(v8 - 80) = 0u;
      *(v8 - 64) = 0u;
      *(v8 - 48) = 0;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v8 - 16);
      result = DgnIArray<Utterance *>::~DgnIArray(v8 - 32);
      v7 -= 120;
    }

    while (v5 > v6);
  }

  return result;
}

unint64_t DgnArray<HScorerLevel>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 120 * v6, 120 * v5, 120 * v5, 1);
  *(a1 + 12) = result / 0x78;
  *a1 = v8;
  return result;
}

BOOL DSMHandle::open(DSMHandle *this, const DgnString *a2, char **a3, const char **a4, unint64_t a5, int a6, int a7)
{
  if (a6)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 2);
  v15 = MemChunkAlloc(8uLL, 0);
  v16 = v15;
  if (v14 > 1)
  {
    v17 = &unk_287527588;
  }

  else
  {
    v17 = &unk_287527CB0;
  }

  *v15 = v17;
  v18 = FileSpec::FileSpec(&v45);
  if (*(a2 + 2))
  {
    v19 = *a2;
  }

  else
  {
    v19 = &byte_262899963;
  }

  if (*(a4 + 2))
  {
    v20 = *a4;
  }

  else
  {
    v20 = &byte_262899963;
  }

  FileSpec::fillFromPathAndName(v18, v19, v20);
  if (a7)
  {
    v21 = v13 | 0x200;
  }

  else
  {
    v21 = v13;
  }

  if (v46)
  {
    v22 = v45;
  }

  else
  {
    v22 = &byte_262899963;
  }

  v23 = (*(*v16 + 16))(v16, v22, v21);
  *this = v23;
  if (a7)
  {
    if (v23 == -1)
    {
      if (*(a3 + 2))
      {
        v26 = *a3;
      }

      else
      {
        v26 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 113, "mrecutil/dsmsetdata", 1, "%.500s %.500s", v24, v25, v26);
      v23 = *this;
    }

    if (fstat(v23, &v44) < 0)
    {
      if (*(a3 + 2))
      {
        v29 = *a3;
      }

      else
      {
        v29 = &byte_262899963;
      }

      if (*(a4 + 2))
      {
        v30 = *a4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 118, "mrecutil/dsmsetdata", 3, "%.500s %.500s", v27, v28, v29);
    }

    st_size = v44.st_size;
    v32 = v44.st_size == 0;
    if (!v44.st_size)
    {
      fstatvfs(*this, &v43);
      if (v43.f_bsize * v43.f_bavail <= a5)
      {
        if (v46)
        {
          v33 = v45;
        }

        else
        {
          v33 = &byte_262899963;
        }

        (*(*v16 + 24))(v16, v33);
        if (*(a3 + 2))
        {
          v36 = *a3;
        }

        else
        {
          v36 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 130, "mrecutil/dsmsetdata", 1, "%.500s %.500s", v34, v35, v36);
      }
    }

    v37 = ftruncate(*this, a5);
    if (st_size || !v37)
    {
      if (!v37)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v46)
      {
        v40 = v45;
      }

      else
      {
        v40 = &byte_262899963;
      }

      (*(*v16 + 24))(v16, v40);
    }

    if (*(a3 + 2))
    {
      v41 = *a3;
    }

    else
    {
      v41 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 140, "mrecutil/dsmsetdata", 1, "%.500s %.500s", v38, v39, v41);
  }

  else
  {
    v32 = 0;
  }

LABEL_53:
  (**v16)(v16);
  MemChunkFree(v16, 0);
  FileSpec::~FileSpec(&v45);
  return v32;
}

BOOL DSMMappedPtr::remap(DSMMappedPtr *this, int a2, int a3, BOOL *a4)
{
  *a4 = 0;
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return mprotect(*this, *(this + 1), v4) == 0;
}

uint64_t DSMGlobalRecord::copyAsShared(uint64_t result, uint64_t *a2, int a3)
{
  if (result != a2)
  {
    *(result + 40) = a3;
    __dmb(0xBu);
    v3 = *a2;
    v4 = a2[1];
    *result = *a2;
    *(result + 8) = v4;
    v5 = a2[2];
    v6 = a2[3];
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = *(a2 + 8);
    v8 = *(a2 + 9);
    *(result + 32) = v7;
    *(result + 36) = v8;
    v9 = *(a2 + 11);
    *(result + 44) = v9;
    *(result + 48) = *(a2 + 10) ^ v4 ^ v3 ^ v5 ^ v6 ^ ((v4 ^ v3 ^ v5 ^ v6) >> 32) ^ v7 ^ v8 ^ v9;
    __dmb(0xBu);
    *(result + 40) = *(a2 + 10);
  }

  return result;
}

double DSMGlobalRecord::reset(DSMGlobalRecord *this)
{
  result = 0.0;
  *(this + 10) = 0;
  __dmb(0xBu);
  *this = 0u;
  *(this + 2) = 0;
  *(this + 3) = -1;
  *(this + 4) = 0;
  v2 = *(this + 10);
  *(this + 11) = 0;
  *(this + 12) = v2;
  return result;
}

BOOL DSMSetData::checkMaybeResetGlobalRecord(DSMSetData *this, DSMGlobalRecord *a2)
{
  if (*(a2 + 10) == 2)
  {
    DSMGlobalRecord::isProcessAlive(*(a2 + 3));
  }

  v3 = veorq_s8(*a2, *(a2 + 1));
  *v3.i8 = veor_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v4 = *(a2 + 12);
  v5 = *(a2 + 8) ^ *(a2 + 10) ^ *(a2 + 9) ^ *(a2 + 11) ^ v3.i32[1] ^ v3.i32[0];
  if (v5 != v4)
  {
    *(a2 + 10) = 1;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = -1;
    *(a2 + 4) = 0;
    v6 = *(a2 + 10);
    *(a2 + 11) = 0;
    *(a2 + 12) = v6;
  }

  return v5 != v4;
}

void DSMSetData::refMaybeCreateSetRecordBlobEx(DSMSetData *this)
{
  v2 = *(this + 71);
  if (v2 <= 0x3FF)
  {
    DgnArray<DSMLocalRecord>::reallocElts(this + 272, 1024 - v2, 0);
  }

  v3 = *(this + 70);
  if (v3 <= 0x400)
  {
    if (v3 != 1024)
    {
      v6 = 80 * v3 + 72;
      do
      {
        v7 = (*(this + 34) + v6);
        *(v7 - 3) = -1;
        *(v7 - 2) = -1;
        *(v7 - 1) = 0;
        *(v7 - 8) = 0;
        __dmb(0xBu);
        *(v7 - 18) = 0uLL;
        *(v7 - 7) = -1;
        *(v7 - 6) = -1;
        *(v7 - 5) = 0;
        *(v7 - 7) = 0;
        *v7 = 0;
        v6 += 80;
      }

      while (v6 != 81992);
    }
  }

  else if (v3 >= 1025)
  {
    v4 = 80 * v3 - 32;
    do
    {
      --v3;
      v5 = *(this + 34) + v4;
      DSMMappedPtr::~DSMMappedPtr((v5 + 8));
      DSMHandle::~DSMHandle((v5 + 4));
      DSMHandle::~DSMHandle(v5);
      v4 -= 80;
    }

    while (v3 > 0x400);
  }

  *(this + 70) = 1024;
  DgnString::DgnString(&v81, (this + 16));
  DgnString::operator+=(&v81, "-lock");
  if (DWORD2(v81))
  {
    v8 = v81;
  }

  else
  {
    v8 = &byte_262899963;
  }

  DgnSharedLock::create((this + 112), v8);
  DgnString::~DgnString(&v81);
  v9 = DgnString::DgnString(&v88, (this + 16));
  DgnString::operator+=(v9, "-record");
  v85 = 0;
  __dmb(0xBu);
  v81 = 0u;
  v82 = 0;
  v83 = -1;
  v84 = 0;
  v86 = 0;
  v87 = v85;
  if (v89)
  {
    v10 = v88;
  }

  else
  {
    v10 = &byte_262899963;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = (v10 + 1);
    do
    {
      HIDWORD(v14) = v12;
      LODWORD(v14) = v12;
      v12 = (v14 >> 19) + v11;
      v15 = *v13++;
      v11 = v15;
    }

    while (v15);
    v16 = -1640531527 * v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = getpid();
  v18 = v17;
  PlatformAbsoluteTime = ClockTimer::getPlatformAbsoluteTime(v17);
  v20 = sysconf(29);
  v21 = v18;
  if (v20 <= 0x10000)
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = v20;
  }

  v23 = (2 * v22);
  v75[0] = PlatformAbsoluteTime;
  v75[1] = v23;
  v75[2] = v23;
  v75[3] = v21;
  v76 = 0;
  v77 = v16;
  v78 = 4;
  v79 = 1;
  v80 = ((PlatformAbsoluteTime ^ v21) >> 32) ^ PlatformAbsoluteTime ^ v21 ^ 4 ^ v16 ^ 1;
  v73 = this + 112;
  v74 = DgnSharedLock::acquire(this + 14, 0xEA60u);
  if (v74)
  {
    if (*(this + 6))
    {
      v26 = *(this + 2);
    }

    else
    {
      v26 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 364, "mrecutil/dsmsetdata", 5, "%.500s", v24, v25, v26);
  }

  v72 = -1;
  v27 = DSMHandle::open(&v72, this, &v88, &v88, (2 * v22), 1, 1);
  v28 = mmap(0, (2 * v22), 3, 1, v72, 0);
  v32 = v28;
  v70 = v28;
  v71 = (2 * v22);
  v33 = !v27;
  if (v28 != -1)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    DSMHandle::unlink(this, &v88, v29);
LABEL_35:
    if (v89)
    {
      LOBYTE(v34) = v88;
    }

    else
    {
      v34 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 384, "mrecutil/dsmsetdata", 2, "%.500s %.500s", v30, v31, v34);
    v32 = v70;
    goto LABEL_39;
  }

  if (v28 == -1)
  {
    goto LABEL_35;
  }

LABEL_39:
  v69 = PlatformAbsoluteTime;
  v35 = v22 >> 4;
  v36 = v32 + v22;
  v68 = v16;
  if (v27)
  {
    DSMGlobalRecord::copyAsShared(v32, v75, 2);
    v37 = (v32 + 7161);
    for (i = 1024; i > 1; --i)
    {
      DSMGlobalRecord::copyAsShared(v37, &v81, 0);
      v37 -= 56;
    }

    v39 = v22 >> 4;
    v40 = (v32 + v22);
    do
    {
      *v40++ = xmmword_26286C150;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = v32[1];
    v42 = v32[2];
    v43 = *v32 ^ v32[3] ^ v41 ^ v42;
    v44 = HIDWORD(v43) ^ v43;
    v45 = *(v32 + 8);
    v46 = *(v32 + 9);
    v47 = *(v32 + 11);
    if ((v45 ^ *(v32 + 10) ^ v46 ^ v47 ^ v44) == *(v32 + 12) && *(v32 + 10) == 4 && v41 == v23 && v42 == v23)
    {
      *(v32 + 11) = v47 + 1;
      *(v32 + 12) = v45 ^ *(v32 + 10) ^ v46 ^ (v47 + 1) ^ v44;
    }

    else
    {
      v28 = DSMGlobalRecord::copyAsShared(v32, v75, 2);
    }

    v48 = (v32 + 7);
    v49 = 1023;
    do
    {
      LOBYTE(v28) = DSMSetData::checkMaybeResetGlobalRecord(v28, v48);
      v48 = (v48 + 56);
      --v49;
    }

    while (v49);
  }

  v50 = 0;
  while (*(v32 + v22) != -1)
  {
    ++v50;
    v22 += 16;
    if (v35 == v50)
    {
      LODWORD(v50) = v35;
      break;
    }
  }

  v51 = v50 - (v50 == v35);
  v52 = &v36[16 * v51];
  *v52 = v21;
  v52[1] = v69;
  *(this + 36) = v21;
  *(this + 74) = v51;
  v53 = v32[3];
  v54 = *v32;
  v55 = v73;
  if (v73)
  {
    if (!v74)
    {
      *(v73 + 8) = 0;
      sem_post(*v55);
    }

    v73 = 0;
  }

  v56 = mprotect(v70, v71, 1);
  v60 = !v27;
  if (!v56)
  {
    v60 = 1;
  }

  if (v60)
  {
    if (!v56)
    {
      goto LABEL_69;
    }
  }

  else
  {
    DSMHandle::unlink(this, &v88, v57);
  }

  v61 = &byte_262899963;
  if (v89)
  {
    LOBYTE(v61) = v88;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 466, "mrecutil/dsmsetdata", 2, "%.500s %.500s", v58, v59, v61);
LABEL_69:
  v62 = *(this + 34);
  *(v62 + 24) = pthread_self();
  v63 = v72;
  v72 = -1;
  v64 = *(v62 + 48);
  if (v64 != -1)
  {
    close(v64);
  }

  *(v62 + 48) = v63;
  v65 = v70;
  v66 = v71;
  v70 = -1;
  if (v65 != -1)
  {
    munmap(*(v62 + 56), *(v62 + 64));
  }

  *(v62 + 56) = v65;
  *(v62 + 64) = v66;
  *(v62 + 72) = 0;
  *(v62 + 40) = 8;
  *(v62 + 44) = v68;
  *v62 = v54;
  *(v62 + 8) = v23;
  *(v62 + 16) = v53;
  *(v62 + 32) = 0x400000000;
  if (*(this + 66) <= *(this + 67))
  {
    v67 = *(this + 32);
    if (v67)
    {
      MemChunkFree(v67, 0);
    }

    *(this + 67) = 0;
  }

  *(this + 66) = 1024;
  *(this + 32) = v65;
  DSMMappedPtr::~DSMMappedPtr(&v70);
  DSMHandle::~DSMHandle(&v72);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v73);
  DgnString::~DgnString(&v88);
}

void sub_262586C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char a16, uint64_t a17)
{
  DSMMappedPtr::~DSMMappedPtr(&a13);
  DSMHandle::~DSMHandle(&a16);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&a17);
  DgnString::~DgnString((v17 - 104));
  _Unwind_Resume(a1);
}

void DSMHandle::unlink(const char **this, const char **a2, const DgnString *a3)
{
  FileSpec::FileSpec(&v8);
  if (*(this + 2))
  {
    v5 = *this;
  }

  else
  {
    v5 = &byte_262899963;
  }

  if (*(a2 + 2))
  {
    v6 = *a2;
  }

  else
  {
    v6 = &byte_262899963;
  }

  FileSpec::fillFromPathAndName(&v8, v5, v6);
  if (v9)
  {
    v7 = v8;
  }

  else
  {
    v7 = &byte_262899963;
  }

  if (*(this + 2) > 1u)
  {
    unlink(v7);
  }

  else
  {
    shm_unlink(v7);
  }

  FileSpec::~FileSpec(&v8);
}

uint64_t *Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (!*(a1 + 2))
    {
      *(v2 + 8) = 0;
      sem_post(*v2);
    }

    *a1 = 0;
  }

  return a1;
}

void DSMSetData::getDSMName(DSMSetData *this, uint64_t a2, uint64_t a3, unsigned int a4, DgnString *a5)
{
  *(a5 + 2) = 0;
  v15 = -1;
  DgnString::DgnString(&v13);
  DSMSetData::getSysReserveName(this, a3, a2, &v13);
  DSMHandle::open(&v15, this, &v13, &v13, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  DgnString::~DgnString(&v13);
  if (v15 != -1 || (DgnString::DgnString(&v13), DSMSetData::getSysName(this, a3, a2, &v13), DSMHandle::open(&v15, this, &v13, &v13, 0xFFFFFFFFFFFFFFFFLL, 0, 0), DgnString::~DgnString(&v13), v15 != -1))
  {
    v13 = -1;
    v14 = 0;
    v10 = sysconf(29);
    v11 = ((v10 - 1) + a4) & ~(v10 - 1);
    v12 = mmap(0, v11, 1, 1, v15, 0);
    v13 = v12;
    v14 = v11;
    if (v12 != -1)
    {
      DgnString::operator=(a5, v12 + 16);
    }

    DSMMappedPtr::~DSMMappedPtr(&v13);
  }

  DSMHandle::~DSMHandle(&v15);
}

void DSMSetData::getSysReserveName(DSMSetData *this, uint64_t a2, uint64_t a3, DgnString *a4)
{
  DgnString::operator=(a4, (this + 16));
  DgnString::makeStringPrintf("-%08X-%08X-reserve", v7, v8, v9, v10, a2, a3);
  DgnString::operator+=(a4, v11);
  DgnString::~DgnString(v11);
}

void sub_262586FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DSMSetData::getSysName(DSMSetData *this, uint64_t a2, uint64_t a3, DgnString *a4)
{
  DgnString::operator=(a4, (this + 16));
  DgnString::makeStringPrintf("-%08X-%08X", v7, v8, v9, v10, a2, a3);
  DgnString::operator+=(a4, v11);
  DgnString::~DgnString(v11);
}

void sub_262587020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DSMSetData::printSize(DSMSetData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 669, &v80);
  if (DWORD2(v80))
  {
    v15 = v80;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v80);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  v20 = sizeObject(this + 16);
  v21 = sizeObject(this + 16);
  v22 = sizeObject(this + 16);
  v23 = (a3 + 1);
  v78 = a3;
  v24 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v29 = v80;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v23, &byte_262899963, v24, v24, v29, v20, v21, v22);
  DgnString::~DgnString(&v80);
  *a4 += v20;
  *a5 += v21;
  *a6 += v22;
  v30 = sizeObject(this + 32, 0);
  v31 = sizeObject(this + 32, 1);
  v32 = sizeObject(this + 32, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v37 = v80;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v23, &byte_262899963, v24, v24, v37, v30, v31, v32);
  DgnString::~DgnString(&v80);
  *a4 += v30;
  *a5 += v31;
  *a6 += v32;
  v38 = sizeObject(this + 112, 0);
  v39 = sizeObject(this + 112, 1);
  v40 = sizeObject(this + 112, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v45 = v80;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v23, &byte_262899963, v24, v24, v45, v38, v39, v40);
  DgnString::~DgnString(&v80);
  *a4 += v38;
  *a5 += v39;
  *a6 += v40;
  v46 = sizeObject<DSMGlobalRecord>(this + 256, 0);
  v47 = sizeObject<DSMGlobalRecord>(this + 256, 1);
  LODWORD(v80) = 0;
  __dmb(0xBu);
  v48 = *(this + 66);
  if (v48 <= *(this + 67))
  {
    v49 = 0;
  }

  else
  {
    v49 = 52 * v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v54 = v80;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v23, &byte_262899963, v24, v24, v54, v46, v47, v49);
  DgnString::~DgnString(&v80);
  *a4 += v46;
  *a5 += v47;
  *a6 += v49;
  v55 = sizeObject<DSMLocalRecord>(this + 272, 0);
  v56 = sizeObject<DSMLocalRecord>(this + 272, 1);
  v86 = -1;
  v87[0] = -1;
  v87[1] = 0;
  v84 = 0;
  __dmb(0xBu);
  v80 = 0u;
  v81 = -1;
  v82 = -1;
  v83 = 0;
  v85 = 0;
  v88 = 0;
  DSMMappedPtr::~DSMMappedPtr(v87);
  DSMHandle::~DSMHandle((&v86 + 4));
  DSMHandle::~DSMHandle(&v86);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v61 = v80;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v23, &byte_262899963, v24, v24, v61, v55, v56, 0);
  DgnString::~DgnString(&v80);
  *a4 += v55;
  *a5 += v56;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v66 = v80;
  }

  else
  {
    v66 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v23, &byte_262899963, v24, v24, v66, 8, 8, 0);
  DgnString::~DgnString(&v80);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 672, &v80);
  if (DWORD2(v80))
  {
    v71 = v80;
  }

  else
  {
    v71 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v23, &byte_262899963, v24, v24, v71, 4, 4, 0);
  DgnString::~DgnString(&v80);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmsetdata.cpp", 675, &v80);
  if (DWORD2(v80))
  {
    v76 = v80;
  }

  else
  {
    v76 = &byte_262899963;
  }

  v77 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v78, &byte_262899963, (35 - v78), (35 - v78), v76, *a4, *a5, *a6);
  DgnString::~DgnString(&v80);
}

void sub_2625875C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DSMGlobalRecord>(uint64_t a1, int a2)
{
  __dmb(0xBu);
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return 52 * v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      if (v6 >= v5)
      {
        if (v5 >= 1)
        {
          v7 = v5 + 1;
          v8 = (*a1 + 56 * v5 - 16);
          do
          {
            v9 = *v8;
            v8 -= 14;
            --v7;
          }

          while (v7 > 1);
          result += 52 * (v5 - 1) + 52;
        }

        if (!a2)
        {
          result += 52 * (v6 - v5);
        }
      }
    }
  }

  return result;
}

uint64_t sizeObject<DSMLocalRecord>(uint64_t a1, int a2)
{
  v2 = 0;
  v14 = -1;
  v15 = -1;
  v16 = 0;
  v12 = 0;
  __dmb(0xBu);
  v9 = -1;
  v10 = -1;
  v3 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 4;
  }

  v8 = 0uLL;
  v11 = 0;
  v13 = 0;
  v17 = 0;
  if (a2 != 3)
  {
    v2 = gShadowDiagnosticShowIdealizedObjectSizes ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = v3 + 68;
      v5 = *(a1 + 8);
      v6 = v2 + v3 + (v3 + 68) * (v5 - 1) + 68;
      if (v5 >= 1)
      {
        v2 = v6;
      }

      if (!a2)
      {
        v2 += v4 * (*(a1 + 12) - v5);
      }
    }
  }

  DSMLocalRecord::~DSMLocalRecord(&v8);
  return v2;
}

void DSMMappedPtr::~DSMMappedPtr(DSMMappedPtr *this)
{
  v2 = *this;
  if (v2 != -1)
  {
    munmap(v2, *(this + 1));
  }

  *this = -1;
}

void DSMHandle::~DSMHandle(DSMHandle *this)
{
  v2 = *this;
  if (v2 != -1)
  {
    close(v2);
  }

  *this = -1;
}

unint64_t DgnArray<DSMLocalRecord>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 80 * v6, 80 * v5, 80 * v5, 1);
  *(a1 + 12) = result / 0x50;
  *a1 = v8;
  return result;
}

void DSMLocalRecord::~DSMLocalRecord(DSMLocalRecord *this)
{
  DSMMappedPtr::~DSMMappedPtr((this + 56));
  DSMHandle::~DSMHandle((this + 52));
  DSMHandle::~DSMHandle((this + 48));
}

uint64_t writeObjectChecksum(uint64_t a1, int *a2)
{
  v4 = *a2;
  (*(*a1 + 80))(a1, &v4, 4);
  v5 = (*(*a1 + 48))(a1);
  return (*(*a1 + 80))(a1, &v5, 4);
}

void readObjectChecksumAndVerify(DgnStream *a1, int a2)
{
  v11 = 0;
  (*(*a1 + 72))(a1, &v11, 4, 1);
  if (v11 != a2)
  {
    if (*(a1 + 6))
    {
      v6 = *(a1 + 2);
    }

    else
    {
      v6 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 36, "dfutil/dobj", 2, "%.500s %u %u", v4, v5, v6);
  }

  v7 = (*(*a1 + 48))(a1);
  v12 = 0;
  (*(*a1 + 72))(a1, &v12, 4, 1);
  if (v12 != v7)
  {
    if (*(a1 + 6))
    {
      v10 = *(a1 + 2);
    }

    else
    {
      v10 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 40, "dfutil/dobj", 3, "%.500s %u %u", v8, v9, v10);
  }
}

uint64_t writeObject(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *a2;
  result = (*(*a1 + 80))(a1, &v6, 1);
  *a3 ^= *a2;
  return result;
}

{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 1, a3);
  writeObject(a1, a2 + 2, a3);

  return writeObject(a1, a2 + 3, a3);
}

uint64_t readObject(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 1, 1);
  v6 = v7;
  *a2 = v7;
  *a3 ^= v6;
  return result;
}

{
  readObject(a1, a2, a3);
  readObject(a1, a2 + 1, a3);
  readObject(a1, a2 + 2, a3);

  return readObject(a1, a2 + 3, a3);
}

uint64_t writeObject(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v6 = *a2;
  result = (*(*a1 + 80))(a1, &v6, 2);
  *a3 ^= *a2;
  return result;
}

uint64_t readObject(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 2, 1);
  v6 = v7;
  *a2 = v7;
  *a3 ^= v6;
  return result;
}

uint64_t writeObject(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v6 = *a2;
  result = (*(*a1 + 80))(a1, &v6, 2);
  *a3 ^= *a2;
  return result;
}

{
  writeObject(a1, a2, a3);

  return writeObject(a1, a2 + 1, a3);
}

uint64_t readObject(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 2, 1);
  v6 = v7;
  *a2 = v7;
  *a3 ^= v6;
  return result;
}

{
  readObject(a1, a2, a3);

  return readObject(a1, a2 + 1, a3);
}

uint64_t writeObject(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = *a2;
  result = (*(*a1 + 80))(a1, &v6, 4);
  *a3 ^= *a2;
  return result;
}

{
  v6 = *a2;
  v4 = v6;
  result = (*(*a1 + 80))(a1, &v6, 4);
  *a3 ^= v4;
  return result;
}

{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 1, a3);

  return writeObject<PrefilterResultFrame>(a1, (a2 + 2), a3);
}

{
  writeObject(a1, a2, a3);

  return writeObject(a1, a2 + 1, a3);
}

{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 1, a3);
  writeObject(a1, a2 + 2, a3);

  return writeObject(a1, a2 + 3, a3);
}

uint64_t readObject(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 4, 1);
  v6 = v7;
  *a2 = v7;
  *a3 ^= v6;
  return result;
}

{
  readObject(a1, a2, a3);

  return readObject(a1, a2 + 1, a3);
}

{
  readObject(a1, a2, a3);
  readObject(a1, a2 + 1, a3);
  readObject(a1, a2 + 2, a3);

  return readObject(a1, a2 + 3, a3);
}

uint64_t writeObject(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  result = (*(*a1 + 80))(a1, &v6, 8);
  *a3 ^= *a2 ^ *(a2 + 1);
  return result;
}

uint64_t readObject(uint64_t a1, void *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 8, 1);
  v6 = v7;
  *a2 = v7;
  *a3 ^= v6 ^ HIDWORD(v6);
  return result;
}

uint64_t writeObject(DgnStream *a1, const double *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  checkValidityOfDouble(&v12, a2, a3, a4, a5, a6, a7, a8);
  result = (*(*a1 + 80))(a1, &v12, 8);
  *a3 ^= *a2 ^ *(a2 + 1);
  return result;
}

double readObject(DgnStream *a1, double *a2, unsigned int *a3)
{
  v13 = 0.0;
  (*(*a1 + 72))(a1, &v13, 8, 1);
  checkValidityOfDouble(&v13, v5, v6, v7, v8, v9, v10, v11);
  result = v13;
  *a2 = v13;
  *a3 ^= LODWORD(result) ^ HIDWORD(result);
  return result;
}

uint64_t writeObject(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v6 = *a2;
  v4 = v6;
  result = (*(*a1 + 80))(a1, &v6, 1);
  *a3 ^= v4;
  return result;
}

{
  v6 = (a2 + 2);
  v5 = *a2;
  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v5 == 2);
  }

  v9 = v7;
  writeObject(a1, &v9, a3);
  return writeObject(a1, v6, a3);
}

uint64_t readObject(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  v7 = 0;
  result = (*(*a1 + 72))(a1, &v7, 1, 1);
  v6 = v7;
  *a2 = v7 != 0;
  *a3 ^= v6;
  return result;
}

uint64_t writeObjectArray(uint64_t a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7;
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 1);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, a3);
  }

  return result;
}

{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7;
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 1);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, a3);
  }

  return result;
}

void readObjectArray(DgnStream *a1, char *a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 1, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 250, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

void readObjectArray(DgnStream *a1, unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 1, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 276, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

uint64_t writeObjectArray(uint64_t a1, __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7;
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 2);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, 2 * a3);
  }

  return result;
}

{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7;
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 2);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, 2 * a3);
  }

  return result;
}

void readObjectArray(DgnStream *a1, __int16 *a2, unsigned int a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 2, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, 2 * a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 302, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

void readObjectArray(DgnStream *a1, unsigned __int16 *a2, unsigned int a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 2, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, 2 * a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 328, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

uint64_t writeObjectArray(uint64_t a1, int *a2, unsigned int a3, _DWORD *a4)
{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7;
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 4);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, 4 * a3);
  }

  return result;
}

void readObjectArray(DgnStream *a1, int *a2, unsigned int a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 4, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, 4 * a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 354, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

void readObjectArray(DgnStream *a1, unsigned int *a2, unsigned int a3, unsigned int *a4)
{
  v15 = 0;
  (*(*a1 + 72))(a1, &v15, 4, 1);
  v8 = v15;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, 4 * a3, 1);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = *(a1 + 2);
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 380, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

uint64_t writeObjectArray(uint64_t a1, uint64_t *a2, unsigned int a3, _DWORD *a4)
{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7 ^ HIDWORD(v7);
  v12 = v7;
  result = (*(*a1 + 80))(a1, &v12, 8);
  if (a3)
  {
    return (*(*a1 + 80))(a1, a2, 8 * a3);
  }

  return result;
}

uint64_t writeObjectArray(DgnStream *a1, const double *a2, unsigned int a3, unsigned int *a4)
{
  v7 = 0;
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 ^= v10;
      --v8;
    }

    while (v8);
  }

  *a4 ^= v7 ^ HIDWORD(v7);
  v21 = v7;
  result = (*(*a1 + 80))(a1, &v21, 8);
  if (a3)
  {
    v19 = a3;
    v20 = a2;
    do
    {
      checkValidityOfDouble(v20++, v12, v13, v14, v15, v16, v17, v18);
      --v19;
    }

    while (v19);
    return (*(*a1 + 80))(a1, a2, 8 * a3);
  }

  return result;
}

void readObjectArray(DgnStream *a1, double *a2, unsigned int a3, unsigned int *a4)
{
  v24 = 0;
  (*(*a1 + 72))(a1, &v24, 8, 1);
  v8 = v24;
  if (a3)
  {
    (*(*a1 + 72))(a1, a2, 8 * a3, 1);
    v16 = a3;
    v17 = a2;
    v18 = a3;
    do
    {
      checkValidityOfDouble(v17++, v9, v10, v11, v12, v13, v14, v15);
      --v18;
    }

    while (v18);
    v19 = 0;
    do
    {
      v20 = *a2++;
      v19 ^= v20;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = 0;
  }

  if (v8 != v19)
  {
    if (*(a1 + 6))
    {
      v21 = *(a1 + 2);
    }

    else
    {
      v21 = &byte_262899963;
    }

    (*(*a1 + 40))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 486, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v22, v23, v21);
  }

  *a4 ^= HIDWORD(v19) ^ v19;
}

uint64_t writeObjectArray(DgnStream *a1, const BOOL *a2, unsigned int a3, unsigned int *a4)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&v10, a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v10[v8] = a2[v8];
      ++v8;
    }

    while (a3 != v8);
  }

  writeObjectArray(a1, v10, v11, a4);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
}

uint64_t DgnPrimArray<unsigned char>::DgnPrimArray(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2)
  {
    v5 = 0;
    *(a1 + 12) = realloc_array(0, &v5, a2, 0, 0, 1);
    *a1 = v5;
  }

  *(a1 + 8) = a2;
  return a1;
}

uint64_t readObjectArray(DgnStream *a1, BOOL *a2, unsigned int a3, unsigned int *a4)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&v12, a3);
  readObjectArray(a1, v12, v13, a4);
  if (a3)
  {
    v8 = v12;
    v9 = a3;
    do
    {
      v10 = *v8++;
      *a2++ = v10 != 0;
      --v9;
    }

    while (v9);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
}

void readObject(RealDFileSubFileStream *a1, unsigned __int16 *a2, unsigned int *a3)
{
  *v6 = 0;
  RealDFileSubFileStream::readBytes(a1, v6, 2u);
  v5 = *v6;
  *a2 = *v6;
  *a3 ^= v5;
}

void readObject(RealDFileSubFileStream *a1, unsigned int *a2, unsigned int *a3)
{
  *v6 = 0;
  RealDFileSubFileStream::readBytes(a1, v6, 4u);
  v5 = *v6;
  *a2 = *v6;
  *a3 ^= v5;
}

void readObjectArray(char **a1, char *a2, unsigned int a3, unsigned int *a4)
{
  v15 = 0;
  RealDFileSubFileStream::readBytes(a1, &v15, 1u);
  v8 = v15;
  if (a3)
  {
    RealDFileSubFileStream::readBytes(a1, a2, a3);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2++;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = a1[2];
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 5))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 276, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

{
  *v15 = 0;
  RealDFileSubFileStream::readBytes(a1, v15, 2u);
  v8 = *v15;
  if (a3)
  {
    RealDFileSubFileStream::readBytes(a1, a2, 2 * a3);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2;
      a2 += 2;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = a1[2];
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 5))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 302, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

{
  *v15 = 0;
  RealDFileSubFileStream::readBytes(a1, v15, 2u);
  v8 = *v15;
  if (a3)
  {
    RealDFileSubFileStream::readBytes(a1, a2, 2 * a3);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2;
      a2 += 2;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = a1[2];
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 5))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 328, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

{
  *v15 = 0;
  RealDFileSubFileStream::readBytes(a1, v15, 4u);
  v8 = *v15;
  if (a3)
  {
    RealDFileSubFileStream::readBytes(a1, a2, 4 * a3);
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a2;
      a2 += 4;
      v9 ^= v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    if (*(a1 + 6))
    {
      v12 = a1[2];
    }

    else
    {
      v12 = &byte_262899963;
    }

    (*(*a1 + 5))(a1);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/primioi.inl", 380, "dfutil/dobj", 4, "%.500s %llu %llu %llu %u %.500s", v13, v14, v12);
  }

  *a4 ^= v9;
}

uint64_t writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a2 + 8);
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  (*(*a1 + 80))(a1, &v12, 4);
  *a3 ^= v9;
  if (*(a2 + 8))
  {
    v10 = *a2;
  }

  else
  {
    v10 = &byte_262899963;
  }

  return writeObjectArray(a1, v10, v9, a3);
}

{
  v8 = *(a2 + 8);
  v6 = v8;
  (*(*a1 + 80))(a1, &v8, 4);
  *a3 ^= v6;
  return writeObjectArray(a1, *a2, (v6 + 31) >> 5, a3);
}

{
  writeObject<DFileChecksumBucket>(a1, a2, a3);

  return writeObject(a1, (a2 + 16), a3);
}

{
  LOWORD(v8) = *a2;
  writeObject(a1, &v8, a3);
  LOWORD(v8) = *(a2 + 2);
  writeObject(a1, &v8, a3);
  LOWORD(v8) = *(a2 + 4);
  writeObject(a1, &v8, a3);
  LOWORD(v8) = *(a2 + 6);
  writeObject(a1, &v8, a3);
  LOWORD(v8) = *(a2 + 8);
  writeObject(a1, &v8, a3);
  writeObject(a1, (a2 + 12), a3);
  writeObject(a1, (a2 + 16), a3);
  writeObject(a1, (a2 + 18), a3);
  v8 = *(a2 + 20);
  writeObject(a1, &v8, a3);
  v7 = *(a2 + 24);
  return writeObject(a1, &v7, a3);
}

void readObject(DgnStream *a1, DgnString *a2, unsigned int *a3)
{
  v8 = 0;
  (*(*a1 + 72))(a1, &v8, 4, 1);
  v6 = v8;
  *a3 ^= v8;
  Buffer = DgnString::getBuffer(a2, v6);
  readObjectArray(a1, Buffer, v6, a3);
}

void readObject(DgnStream *a1, BitArray *a2, unsigned int *a3)
{
  v7 = 0;
  (*(*a1 + 72))(a1, &v7, 4, 1);
  v6 = v7;
  *a3 ^= v7;
  BitArray::setSize(a2, v6);
  readObjectArray(a1, *a2, (v6 + 31) >> 5, a3);
}

int *writeSharedObject(DgnSharedMemStream *a1, BitArray *a2, unsigned int *a3)
{
  v19 = *(a2 + 2);
  v6 = v19;
  result = (*(*a1 + 80))(a1, &v19, 4);
  *a3 ^= v6;
  v13 = v6 + 31;
  v14 = (v6 + 31) >> 3;
  if ((v14 & 0x1FFFFFFC) != 0)
  {
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, v14 & 0x1FFFFFFC, v8, v9, v10, v11, v12);
    if (result)
    {
      v15 = result;
      result = BitArray::releaseAll(a2);
      *(a2 + 2) = v6;
      *a2 = v15;
    }

    else
    {
      v15 = *a2;
    }

    if (v13 >= 0x20)
    {
      v16 = 0;
      v17 = v13 >> 5;
      do
      {
        v18 = *v15++;
        v16 ^= v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    *a3 ^= v16;
  }

  return result;
}

uint64_t readSharedObject(DgnSharedMemStream *a1, BitArray *a2, unsigned int *a3)
{
  v18 = 0;
  (*(*a1 + 72))(a1, &v18, 4, 1);
  v12 = v18;
  *a3 ^= v18;
  if (v12)
  {
    SharedBytes = DgnSharedMemStream::readSharedBytes(a1, ((v12 + 31) >> 3) & 0x1FFFFFFC, v6, v7, v8, v9, v10, v11);
    result = BitArray::releaseAll(a2);
    *(a2 + 2) = v12;
    *a2 = SharedBytes;
    if ((v12 + 31) >= 0x20)
    {
      v15 = 0;
      v16 = (v12 + 31) >> 5;
      do
      {
        v17 = *SharedBytes++;
        v15 ^= v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v15 = 0;
    }

    *a3 ^= v15;
  }

  else
  {
    result = BitArray::releaseAll(a2);
    *(a2 + 2) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t writeObject<double>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = *(a2 + 8);
  v6 = v8;
  (*(*a1 + 80))(a1, &v8, 4);
  *a3 ^= v6;
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject(DgnStream *a1, const DgnMatrix *a2, unsigned int *a3)
{
  v9 = *a2;
  v6 = v9;
  (*(*a1 + 80))(a1, &v9, 4);
  *a3 ^= v6;
  v10 = *(a2 + 1);
  v7 = v10;
  (*(*a1 + 80))(a1, &v10, 4);
  *a3 ^= v7;
  return writeObject<double>(a1, a2 + 8, a3);
}

void RealDFileSubFileStream::readBytes(RealDFileSubFileStream *this, char *a2, unsigned int a3)
{
  v5 = RealDFileSubFileStream::basicRead(this, a2, a3);
  if (v5 < a3)
  {
    *(this + 76) = 1;

    RealDFileSubFileStream::throwUnexpectedEof(this, a3, v5, v6, v7, v8, v9, v10);
  }
}

size_t RealDFileSubFileStream::basicRead(RealDFileSubFileStream *this, char *a2, unsigned int a3)
{
  v5 = *(this + 5);
  v6 = *(v5 + 19) + (*(this + 34) << 7);
  v7 = *(v6 + 108) + ((*(v6 + 96) - 1) << 12);
  v8 = *(this + 10);
  v9 = v7 - v8;
  if (v9)
  {
    v11 = *(this + 22);
    v12 = v8 & 0xFFF;
    if (v9 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v9;
    }

    v14 = 4096 - v12;
    if (4096 - v12 >= v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    RealDFile::doReadFromBigCache(v5, *(this + 22), v12, a2, v10);
    if (v13 > v14)
    {
      LODWORD(v15) = v10;
      do
      {
        v13 -= v15;
        if (v13 >= 0x1000)
        {
          v15 = 4096;
        }

        else
        {
          v15 = v13;
        }

        v16 = *(this + 5);
        ++v11;
        v17 = *(v16 + 144);
        if (v17 > v11)
        {
          v18 = (*(v16 + 136) + 2 * v11);
          while (1)
          {
            v19 = *v18++;
            if (v19 == *(this + 34))
            {
              break;
            }

            if (v17 == ++v11)
            {
              v11 = *(v16 + 144);
              break;
            }
          }
        }

        RealDFile::doReadFromBigCache(v16, v11, 0, &a2[v10], v15);
        v10 = (v10 + v15);
      }

      while (v13 > 0x1000);
    }

    v20 = *(this + 10) + v10;
    *(this + 10) = v20;
    if ((v20 & 0xFFF) == 0)
    {
      v21 = *(this + 5);
      ++v11;
      v22 = *(v21 + 144);
      if (v22 > v11)
      {
        v23 = (*(v21 + 136) + 2 * v11);
        while (1)
        {
          v24 = *v23++;
          if (v24 == *(this + 34))
          {
            break;
          }

          if (v22 == ++v11)
          {
            v11 = v22;
            break;
          }
        }
      }
    }

    *(this + 22) = v11;
  }

  else
  {
    v10 = 0;
    *a2 = 0;
  }

  return v10;
}

void RealDFile::doReadFromBigCache(RealDFile *this, int a2, unsigned int a3, char *__dst, size_t __n)
{
  v5 = __n;
  v9 = (*(this + 54) + a2);
  if (v9 >= *(this + 86) || (v10 = *(*(this + 42) + 8 * v9)) == 0)
  {
    RealDFile::fillBigCache(this, *(this + 54) + a2);
    v10 = *(*(this + 42) + 8 * v9);
  }

  if (v5 > 8)
  {
    v12 = (*v10 + a3);

    memcpy(__dst, v12, v5);
  }

  else if (v5)
  {
    v11 = v5;
    do
    {
      *__dst++ = *(*v10 + a3++);
      --v11;
    }

    while (v11);
  }
}

double UttFileMgr::startupUttFileMgr(UttFileMgr *this)
{
  v1 = MemChunkAlloc(0x40uLL, 0);
  *v1 = 0u;
  *&result = 0x10000001DLL;
  v1[2] = 0x10000001DLL;
  *(v1 + 6) = 1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v1 + 14) = 0;
  UttFileMgr::smpUttFileMgr = v1;
  return result;
}