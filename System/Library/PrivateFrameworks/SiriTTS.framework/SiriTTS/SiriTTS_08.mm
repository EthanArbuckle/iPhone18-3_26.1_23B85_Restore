void kaldi::quasar::TranslationUtil::PathElement::~PathElement(kaldi::quasar::TranslationUtil::PathElement *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v8 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(kaldi::quasar::TranslationUtil::PathElement *a1, kaldi::quasar::TranslationUtil::PathElement *a2, std::string *this)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    v6 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::PathElement(this, v6);
      v6 = (v6 + 240);
      this += 10;
      v5 -= 240;
    }

    while (v6 != a2);
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v4);
      v4 = (v4 + 240);
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    kaldi::quasar::TranslationUtil::PathElement::~PathElement((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(this + 24) = vnegq_f32(v2);
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 64, "{}");
  *(this + 88) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 240) = 0;
  *(this + 31) = this + 256;
  return this;
}

void sub_1C301F6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(uint64_t *a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          kaldi::quasar::TranslationUtil::PathElement::~PathElement((v10 - 240));
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x111111111111111)
    {
      v12 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x88888888888888)
      {
        v14 = 0x111111111111111;
      }

      else
      {
        v14 = v13;
      }

      std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1];
  v16 = v15 - v9;
  if (0xEEEEEEEEEEEEEEEFLL * ((v15 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::operator=(v9, v6);
        v6 += 240;
        v9 += 240;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v15 = (v15 - 240);
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v15);
    }

    a1[1] = v9;
  }

  else
  {
    if (v15 != v9)
    {
      v17 = v15 - v9;
      v18 = a2;
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::operator=(v9, v18);
        v18 += 240;
        v9 += 240;
        v17 -= 240;
      }

      while (v17);
      v15 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(&v16[v6], a3, v15);
  }
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(kaldi::quasar::TranslationUtil::PathElement *a1, kaldi::quasar::TranslationUtil::PathElement *a2, std::string *this)
{
  if (a1 == a2)
  {
    return this;
  }

  v4 = a1;
  v5 = 0;
  v6 = this;
  do
  {
    kaldi::quasar::TranslationUtil::PathElement::PathElement(v6, v4);
    v4 = (v4 + 240);
    v6 += 10;
    v5 -= 240;
  }

  while (v4 != a2);
  return v6;
}

uint64_t kaldi::JoinVectorToString<std::string>(uint64_t *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4 + v5;
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
      ++v6;
      v4 = *a1;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v6 < v11)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
        v4 = *a1;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      }

      v5 += 24;
    }

    while (v6 < v11);
  }

  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v15;
  v12 = MEMORY[0x1E69E54D8];
  *(a2 + 16) = v16;
  v17[0] = *v12;
  v13 = v12[9];
  *(v17 + *(v17[0] - 24)) = v12[8];
  v18 = v13;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C692AD30](&v22);
}

void sub_1C301FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::push_back[abi:ne200100](uint64_t a1, kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0xF0F0F0F0F0F0F0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x78787878787878)
    {
      v10 = 0xF0F0F0F0F0F0F0;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(v10);
    }

    v16 = 0;
    v17 = 272 * v7;
    kaldi::quasar::TranslationUtil::NbestElement::NbestElement((272 * v7), a2);
    v18 = 272 * v7 + 272;
    v11 = *(a1 + 8);
    v12 = (272 * v7 + *a1 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v18;
    *(a1 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(*(a1 + 8), a2);
    v6 = v4 + 272;
    *(a1 + 8) = v4 + 272;
  }

  *(a1 + 8) = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(unint64_t a1)
{
  if (a1 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](this, 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a2) >> 4));
  }

  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 6) = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v5 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v5;
  }

  *(this + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v6 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v6;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v7;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v8 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v8;
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  v9 = *(a2 + 240);
  *(this + 31) = this + 256;
  *(this + 240) = v9;
  *(this + 32) = 0;
  *(this + 33) = 0;
  v10 = *(a2 + 31);
  v11 = a2 + 256;
  if (v10 != v11)
  {
    do
    {
      std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(this + 31, this + 256, v10 + 4);
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v11);
  }

  return this;
}

void sub_1C301FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 143) < 0)
  {
    operator delete(*(v9 + 120));
  }

  if (*(v9 + 119) < 0)
  {
    operator delete(*(v9 + 96));
  }

  if (*(v9 + 87) < 0)
  {
    operator delete(*(v9 + 64));
  }

  a9 = v9;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(kaldi::quasar::TranslationUtil::NbestElement *a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    v6 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v6);
      v6 = (v6 + 272);
      this = (this + 272);
      v5 -= 272;
    }

    while (v6 != a2);
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v4);
      v4 = (v4 + 272);
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((i - 272));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  std::__tree<std::string>::destroy(this + 248, *(this + 32));
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

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = this;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::quasar::TranslationUtil::PathElement::~PathElement((v4 - 240));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F42EB598;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F42EB528;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F42EB560;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::NbestCompare(uint64_t a1, int a2, float a3, float a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "NbestCompare", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1527, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Initializing NbestCompare. alpha: ", 34);
    v5 = *(a1 + 4);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", sigma: ", 9);
    v7 = *(a1 + 8);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  return a1;
}

void sub_1C30206FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3)
{
  v6 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(272 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1C3020804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = a1;
    if (a4 == 2)
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::operator()(a3, a2 - 272, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(v8, a2 - 272);
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v15 = a1 + 272;
        if ((a1 + 272) != a2)
        {
          v16 = 0;
          v17 = a1;
          do
          {
            v18 = v17;
            v17 = v15;
            if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::operator()(a3, v15, v18))
            {
              kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v28, v17);
              v19 = v16;
              while (1)
              {
                kaldi::quasar::TranslationUtil::NbestElement::operator=(v8 + v19 + 272, v8 + v19);
                if (!v19)
                {
                  break;
                }

                v19 -= 272;
                if (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::operator()(a3, v28, v8 + v19))
                {
                  v20 = v8 + v19 + 272;
                  goto LABEL_22;
                }
              }

              v20 = v8;
LABEL_22:
              kaldi::quasar::TranslationUtil::NbestElement::operator=(v20, v28);
              kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v28);
            }

            v15 = v17 + 272;
            v16 += 272;
          }

          while ((v17 + 272) != a2);
        }
      }
    }

    else
    {
      v11 = a5;
      v12 = a4 >> 1;
      v13 = a1 + 272 * (a4 >> 1);
      if (a4 <= a6)
      {
        v27 = 0;
        v28[0] = a5;
        v28[1] = &v27;
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, (a1 + 272 * (a4 >> 1)), a3, a4 >> 1, a5);
        v27 = a4 >> 1;
        v21 = a4 - v12;
        v22 = (v11 + 272 * v12);
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>((v8 + 272 * (a4 >> 1)), a2, a3, v21, v22);
        v27 = a4;
        v23 = v11 + 272 * a4;
        v24 = v22;
        v25 = v11;
        while (v24 != v23)
        {
          if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::operator()(a3, v24, v25))
          {
            kaldi::quasar::TranslationUtil::NbestElement::operator=(v8, v24);
            v24 += 272;
          }

          else
          {
            kaldi::quasar::TranslationUtil::NbestElement::operator=(v8, v25);
            v25 += 272;
          }

          v8 = (v8 + 272);
          if (v25 == v22)
          {
            while (v24 != v23)
            {
              kaldi::quasar::TranslationUtil::NbestElement::operator=(v8, v24);
              v24 += 272;
              v8 = (v8 + 272);
            }

            goto LABEL_37;
          }
        }

        while (v25 != v22)
        {
          kaldi::quasar::TranslationUtil::NbestElement::operator=(v8, v25);
          v25 += 272;
          v8 = (v8 + 272);
        }

LABEL_37:
        if (v11 && v27)
        {
          for (i = 0; i < v27; ++i)
          {
            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v11);
            v11 = (v11 + 272);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a1 + 272 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v13, a2, a3, v14, v11, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v8, v13, a2, a3, v12, v14, v11, a6);
      }
    }
  }
}

void sub_1C3020B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((v4 - 272));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1892);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v243, "Nbestlist cannot be null");
    goto LABEL_321;
  }

  if ((*(a3 + 307) & 1) != 0 || (v197 = (a1 + 4096), *(a1 + 5237) == 1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1896);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v243, "Decoder not configured for string decoding (use SentencePiece ID decoding).");
    goto LABEL_321;
  }

  v7 = *(a1 + 136);
  if (v7 && *(v7 + 3925) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1899);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v243, "Model lacks full symbol tables (use SentencePiece ID decoding).");
LABEL_321:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v243);
  }

  v8 = *(a1 + 5200);
  v188 = *(a1 + 5188);
  v189 = *(a1 + 5224);
  v9 = *(a1 + 5192);
  v187 = *(a1 + 5196);
  *(a1 + 5200) = *(a3 + 228);
  *(a1 + 5224) = *(a3 + 216);
  if (*a3)
  {
    *(a1 + 5188) = *a3;
  }

  v10 = *(a3 + 4);
  if (v10 != 0.0)
  {
    *(a1 + 5192) = v10;
  }

  v11 = *(a3 + 8);
  if (v11)
  {
    *(a1 + 5196) = v11;
  }

  v12 = *(a3 + 160);
  if ((v12 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "ValidateDecodingParameters", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1755);
    v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Decoder beam (", 14);
    v183 = MEMORY[0x1C692A960](v182, v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v183, ") should not be negative.");
    goto LABEL_321;
  }

  v13 = *(a3 + 176);
  if (v13 < 0.0 || v13 > 1000.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "ValidateDecodingParameters", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1758);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Decoder confidence threshold (", 30);
    v184 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v184, ") should be in the range [0, 1000].");
    goto LABEL_321;
  }

  v14 = *(a3 + 172);
  if ((v14 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "ValidateDecodingParameters", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1761);
    v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Decoder maximum nbest list size (", 33);
    v186 = MEMORY[0x1C692A960](v185, v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v186, ") should not be negative.");
    goto LABEL_321;
  }

  v16 = *a4;
    ;
  }

  *(a4 + 8) = v16;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  kaldi::quasar::InputHammer::FilterTags((a1 + 8), a2, &v208, a3 + 64);
  kaldi::quasar::MultiLangDecorator::Apply(&v207, a1 + 120, &v208, a3 + 64, a3 + 88);
  if (*(a3 + 232) != 1)
  {
LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  v17 = *(a1 + 128);
  if (v17 > 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = dword_1C3844D00[v17];
  }

  v19 = *(a1 + 124);
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      v18 *= 2;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 5204) = v18;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1926);
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(&__p, a3);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1928, 2);
      v22 = *(a2 + 23);
      if (v22 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      if (v22 >= 0)
      {
        v24 = *(a2 + 23);
      }

      else
      {
        v24 = *(a2 + 8);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, v23, v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " -> ", 4);
      if (v210 >= 0)
      {
        v27 = &v208;
      }

      else
      {
        v27 = v208;
      }

      if (v210 >= 0)
      {
        v28 = HIBYTE(v210);
      }

      else
      {
        v28 = v209;
      }

      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " -> ", 4);
      if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v207;
      }

      else
      {
        v31 = v207.__r_.__value_.__r.__words[0];
      }

      if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v207.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v243);
    }
  }

  v204 = 0;
  v205 = 0;
  v206 = 0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v207;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TokenizeInputString(a1, &v203, &v204);
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (v205 == v204)
  {
    goto LABEL_303;
  }

  v200 = 0;
  v201 = 0;
  v202 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(&v200, *(a3 + 240), *(a3 + 248), (*(a3 + 248) - *(a3 + 240)) >> 4);
  v192 = a3;
  if (v197[1144] == 1)
  {
    std::vector<std::shared_ptr<Agglomerate>>::push_back[abi:ne200100](&v200, (a1 + 392));
  }

  v34 = v200;
  v33 = v201;
  if (v201 != v200 && *(a1 + 5220) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "FindInPhraseBooks", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1561);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "FindInPhraseBooks # ", 20);
      MEMORY[0x1C692A980](v35, (v201 - v200) >> 4);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
      v34 = v200;
      v33 = v201;
    }

    memset(&__p, 0, sizeof(__p));
    if (v34 == v33)
    {
      v38 = 0;
      v36 = 0;
      v37 = v33;
    }

    else
    {
      v36 = 0;
      do
      {
        if (*v34 && kaldi::quasar::PhraseBook::Find(*v34, &v208, &__p))
        {
          break;
        }

        v36 = (v36 + 1);
        v34 += 2;
      }

      while (v34 != v33);
      v33 = v200;
      v37 = v201;
      v38 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v37 - v33) >= 0x11 && __p.__r_.__value_.__l.__size_ != v38 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "FindInPhraseBooks", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1573);
      if (v36)
      {
        v39 = "Phrasebook fallback match";
      }

      else
      {
        v39 = "Phrasebook locale match";
      }

      if (v36)
      {
        v40 = 25;
      }

      else
      {
        v40 = 23;
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, v39, v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", phrasebook idx=", 17);
      MEMORY[0x1C692A960](v42, v36);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
      v38 = __p.__r_.__value_.__r.__words[0];
    }

    v43 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ != v38)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "Decode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1943);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Total # of phrasebook matches : ", 32);
        MEMORY[0x1C692A980](v44, 0xEEEEEEEEEEEEEEEFLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
        v43 = __p.__r_.__value_.__l.__size_;
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      for (; v38 != v43; v38 += 5)
      {
        v211 = 0uLL;
        v212 = 0;
        kaldi::SplitStringToVector(v38 + 2, " ", 1, &v211);
        memset(&v232, 0, sizeof(v232));
        v46 = *(&v211 + 1);
        for (j = v211; j != v46; ++j)
        {
          memset(&v243, 0, sizeof(v243));
          v245 = 0u;
          v246 = 0u;
          v247 = 0u;
          v248 = 0u;
          v249 = 0u;
          v250 = 0u;
          memset(v251, 0, 108);
          std::string::operator=(&v243, j);
          *&v249 = *(&v248 + 1);
          LODWORD(v254) = -1;
          std::vector<int>::push_back[abi:ne200100](&v248 + 1, &v254);
          *&v248 = 0;
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v232, &v243);
          kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v243);
        }

        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v243);
        std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(&v243, v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_, 0xEEEEEEEEEEEEEEEFLL * ((v232.__r_.__value_.__l.__size_ - v232.__r_.__value_.__r.__words[0]) >> 4));
        v244 = 0;
        *&v245 = 0;
        *&v246 = 0xAAAAAAAAAAAAAAABLL * ((*(&v211 + 1) - v211) >> 3);
        DWORD2(v246) = 5;
        std::string::operator=(&v247, v38 + 3);
        std::vector<kaldi::quasar::TranslationUtil::NbestElement>::push_back[abi:ne200100](a4, &v243);
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v243);
        v243.__r_.__value_.__r.__words[0] = &v232;
        std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v243);
        v243.__r_.__value_.__r.__words[0] = &v211;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v243);
      }
    }

    v243.__r_.__value_.__r.__words[0] = &__p;
    std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v243);
  }

  v47 = *(a1 + 136);
  if (v47 && *(v47 + 3922) == 1 && *(v47 + 3923) == 1)
  {
    v197[1608] = 1;
  }

  v48 = *(a1 + 5220);
  v49 = v192;
  if (*(a4 + 8) == *a4)
  {
    if (v48 == 3)
    {
      goto LABEL_116;
    }

LABEL_102:
    if (v197[800] == 1)
    {
      memset(&__p, 0, sizeof(__p));
      v212 = 0;
      v211 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v211, v204, v205, 0xAAAAAAAAAAAAAAABLL * (v205 - v204));
      v50 = kaldi::quasar::TorchEncoderDecoder::InputSymbols(*(a1 + 136));
      v51 = kaldi::quasar::TorchEncoderDecoder::UnkSourceId(*(a1 + 136));
      if (*(&v211 + 1) != v211)
      {
        v52 = v51;
        v53 = 0;
        do
        {
          v54 = kaldi::quasar::TorchEncoderDecoder::Reverse(*(a1 + 136));
          LODWORD(v55) = v53;
          if (v54)
          {
            v55 = ~v53 - 0x5555555555555555 * ((*(&v211 + 1) - v211) >> 3);
          }

          v56 = (*(*v50 + 96))(v50, v211 + 24 * v55);
          if (v56 == -1 && v52 == -1)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v243, "Symbolize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 497);
            v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Couldn't find symbol ", 21);
            v177 = v211 + 24 * v53;
            v178 = *(v177 + 23);
            if (v178 >= 0)
            {
              v179 = v211 + 24 * v53;
            }

            else
            {
              v179 = *v177;
            }

            if (v178 >= 0)
            {
              v180 = *(v177 + 23);
            }

            else
            {
              v180 = *(v177 + 8);
            }

            v181 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, v179, v180);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v181, " or <unk> UNK symbol", 20);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v243);
          }

          if (v56 == -1)
          {
            v58 = v52;
          }

          else
          {
            v58 = v56;
          }

          LODWORD(v243.__r_.__value_.__l.__data_) = v58 - 1;
          std::vector<int>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, &v243);
          ++v53;
        }

        while (v53 != 0xAAAAAAAAAAAAAAABLL * ((*(&v211 + 1) - v211) >> 3));
      }

      v243.__r_.__value_.__r.__words[0] = &v211;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v243);
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &__p, v192);
    }

    goto LABEL_116;
  }

  if (v48 == 2)
  {
    goto LABEL_102;
  }

LABEL_116:
  if (v47 && *(v47 + 3922) == 1)
  {
    if (*(v47 + 3923) == 1)
    {
      v59 = *a4;
      v60 = *(a4 + 8);
      if (*a4 != v60)
      {
        do
        {
          v62 = *v59;
          v61 = v59[1];
          if (v61 != *v59)
          {
            v63 = 0;
            v64 = -152;
            do
            {
              if (v63)
              {
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v62[v64], *&v62[v64 + 240], *&v62[v64 + 248], (*&v62[v64 + 248] - *&v62[v64 + 240]) >> 2);
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&(*v59)[v64 + 24], *&(*v59)[v64 + 264], *&(*v59)[v64 + 272], (*&(*v59)[v64 + 272] - *&(*v59)[v64 + 264]) >> 2);
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&(*v59)[v64 + 48], *&(*v59)[v64 + 288], *&(*v59)[v64 + 296], (*&(*v59)[v64 + 296] - *&(*v59)[v64 + 288]) >> 2);
                v62 = *v59;
                v61 = v59[1];
              }

              ++v63;
              v64 += 240;
            }

            while (v63 < 0xEEEEEEEEEEEEEEEFLL * ((v61 - v62) >> 4));
            if (v62 != v61 && *(v61 - 54) == *(a1 + 5180))
            {
              kaldi::quasar::TranslationUtil::PathElement::~PathElement((v61 - 240));
              v59[1] = v65;
            }
          }

          v59 += 34;
        }

        while (v59 != v60);
      }
    }

    kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(a4);
    v49 = v192;
    kaldi::quasar::TranslationUtil::MergeAlignments(a4);
  }

  v66 = *(v49 + 200);
  if (v66 && *(v49 + 184) == 3)
  {
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v66, *(v49 + 180), *(v49 + 220), *(v49 + 224));
  }

  if (*(a1 + 5248) == 1)
  {
    v67 = *a4;
    v190 = *(a4 + 8);
    if (*a4 != v190)
    {
      v198 = *MEMORY[0x1E69E54D8];
      v193 = *(MEMORY[0x1E69E54D8] + 72);
      v194 = *(MEMORY[0x1E69E54D8] + 64);
      v191 = a2;
      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v243);
        memset(&v232, 0, sizeof(v232));
        memset(v233, 0, sizeof(v233));
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        __dst = 0u;
        memset(v242, 0, sizeof(v242));
        v254 = 0;
        v255 = 0;
        v256 = 0;
        v69 = *v67;
        v68 = v67[1];
        if (*v67 != v68)
        {
          v70 = 0;
          do
          {
            *&v234 = vadd_f32(*(v69 + 80), *&v234);
            std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v234 + 8, v235, *(v69 + 88), *(v69 + 96), (*(v69 + 96) - *(v69 + 88)) >> 2);
            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v240 + 8, __dst, *(v69 + 184), *(v69 + 192), (*(v69 + 192) - *(v69 + 184)) >> 2);
            v71 = *(v69 + 23);
            if (v71 >= 0)
            {
              v72 = v69;
            }

            else
            {
              v72 = *v69;
            }

            if (v71 >= 0)
            {
              v73 = *(v69 + 23);
            }

            else
            {
              v73 = *(v69 + 8);
            }

            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243.__r_.__value_.__r.__words[2], v72, v73);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " ", 1);
            std::vector<std::string>::push_back[abi:ne200100](v233, v69);
            LODWORD(__p.__r_.__value_.__l.__data_) = v70;
            std::vector<int>::push_back[abi:ne200100](&v239, &__p);
            if (kaldi::quasar::BPE::IsIntraWord(a1 + 152, v69))
            {
              kaldi::quasar::BPE::StripSeparator(a1 + 152, v69, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &__p;
              }

              else
              {
                v75 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = __p.__r_.__value_.__l.__size_;
              }

              std::string::append(&v232, v75, v76);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v77 = *(v69 + 23);
              if (v77 >= 0)
              {
                v78 = v69;
              }

              else
              {
                v78 = *v69;
              }

              if (v77 >= 0)
              {
                v79 = *(v69 + 23);
              }

              else
              {
                v79 = *(v69 + 8);
              }

              std::string::append(&v232, v78, v79);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v254, &v232);
              memset(&__p, 0, sizeof(__p));
              memset(v227, 0, sizeof(v227));
              v228 = 0u;
              v229 = 0u;
              v230 = 0u;
              memset(v231, 0, 108);
              kaldi::quasar::TranslationUtil::PathElement::operator=(&v232, &__p);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&__p);
            }

            v69 += 240;
            ++v70;
          }

          while (v69 != v68);
          v80 = HIBYTE(v232.__r_.__value_.__r.__words[2]);
          if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v80 = v232.__r_.__value_.__l.__size_;
          }

          if (v80)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
            v81 = *v67;
            v82 = v67[1];
            while (v81 != v82)
            {
              v83 = v81[23];
              if (v83 >= 0)
              {
                v84 = v81;
              }

              else
              {
                v84 = *v81;
              }

              if (v83 >= 0)
              {
                v85 = v81[23];
              }

              else
              {
                v85 = *(v81 + 1);
              }

              v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], v84, v85);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, " ", 1);
              v81 += 240;
            }

            if (*(a1 + 132))
            {
              v211 = 0uLL;
              v212 = 0;
              v213 = 0u;
              v214 = 0u;
              v215 = 0u;
              v216 = 0u;
              v217 = 0u;
              v218 = 0u;
              v219 = 0u;
              v220 = 0u;
              v221 = 0u;
              v222 = 0u;
              v223 = 0u;
              memset(v224, 0, sizeof(v224));
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v254, &v211);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v211);
            }

            else
            {
              LODWORD(v211) = v70;
              std::vector<int>::push_back[abi:ne200100](&v239, &v211);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v254, &v232);
            }

            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v211, "JoinBPEUnitsInNbestList", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1829);
              v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v211, "Error converting BPE to word list ", 34);
              if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v232;
              }

              else
              {
                v88 = v232.__r_.__value_.__r.__words[0];
              }

              if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v232.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v232.__r_.__value_.__l.__size_;
              }

              v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v88, v89);
              v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "( ", 2);
              std::stringbuf::str();
              if ((v253 & 0x80u) == 0)
              {
                v92 = v252;
              }

              else
              {
                v92 = v252[0];
              }

              if ((v253 & 0x80u) == 0)
              {
                v93 = v253;
              }

              else
              {
                v93 = v252[1];
              }

              v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, ")", 1);
              if (v253 < 0)
              {
                operator delete(v252[0]);
              }

              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v211);
            }

            __p.__r_.__value_.__r.__words[0] = v198;
            *(__p.__r_.__value_.__r.__words + *(v198 - 24)) = v194;
            __p.__r_.__value_.__r.__words[2] = v193;
            v226 = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v229) < 0)
            {
              operator delete(*(&v228 + 1));
            }

            v226 = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(v227);
            std::iostream::~basic_iostream();
            MEMORY[0x1C692AD30](v231);
          }
        }

        if (v67 != &v254)
        {
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(v67, v254, v255, 0xEEEEEEEEEEEEEEEFLL * ((v255 - v254) >> 4));
        }

        *(v67 + 88) = 1;
        __p.__r_.__value_.__r.__words[0] = &v254;
        std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&__p);
        kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v232);
        v243.__r_.__value_.__r.__words[0] = v198;
        *(v243.__r_.__value_.__r.__words + *(v198 - 24)) = v194;
        v243.__r_.__value_.__r.__words[2] = v193;
        v244 = MEMORY[0x1E69E5548] + 16;
        a2 = v191;
        v49 = v192;
        if (SHIBYTE(v249) < 0)
        {
          operator delete(*(&v248 + 1));
        }

        v244 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v245);
        std::iostream::~basic_iostream();
        MEMORY[0x1C692AD30](v251);
        v67 += 34;
      }

      while (v67 != v190);
    }
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "JoinBPEUnitsInNbestList", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1835);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Not applying BPE to target", 26);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
  }

  v95 = *(v49 + 200);
  if (v95 && *(v49 + 184) == 4)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v243, "PostProcessNbestList", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1869);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Word level LM re-scoring", 24);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v243);
      v95 = *(v49 + 200);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v95, *(v49 + 180), *(v49 + 220), *(v49 + 224));
  }

  v96 = *a4;
  v97 = *(a4 + 8);
  while (v96 != v97)
  {
    std::string::operator=(v96 + 5, a2);
    std::string::operator=(v96 + 6, a2);
    v96 = (v96 + 272);
  }

  kaldi::quasar::NNMTTransliterator::Transliterate<std::vector<kaldi::quasar::TranslationUtil::NbestElement>>(a1 + 408, a4);
  if (kaldi::g_kaldi_verbose_level > 0)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v243, "PostProcessNbestList", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 1879, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Applying confidence scores to n-best list", 41);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v243);
  }

  v98 = *(v49 + 176);
  std::string::basic_string[abi:ne200100]<0>(&v243, "");
  kaldi::quasar::TimeBlock::TimeBlock(&v211, (a1 + 4856), a1 + 5696, &v243);
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  v100 = *a4;
  v199 = *(a4 + 8);
  if (*a4 != v199)
  {
    v195 = v98;
    do
    {
      if ((*(v100 + 14) - 5) > 1)
      {
        if (v197[1577] == 1)
        {
          kaldi::Matrix<float>::Matrix(&v232);
          if (*(a1 + 5136) == *(a1 + 5128) || v197[1579] != 1)
          {
            kaldi::quasar::TorchEncoderDecoder::Align(*(a1 + 136), v100 + 21, v100 + 24, a1 + 5632, &v232);
            if (kaldi::g_kaldi_verbose_level >= 1)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v243, "AssignConfidencesFromConfidenceModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-beam-decoder.h", 2248, 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v243, "Alignment cost ", 15);
              std::ostream::operator<<();
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v243);
            }
          }

          else
          {
            v260 = 0;
            v261 = 0;
            v262 = 0;
            v257 = 0;
            v258 = 0;
            v259 = 0;
            v103 = *v100;
            v104 = v100[1];
            if (*v100 == v104)
            {
              v109 = 0;
              v110 = 0;
            }

            else
            {
              do
              {
                v105 = *(v103 + 11);
                v106 = *(v103 + 12);
                while (v105 != v106)
                {
                  LODWORD(v243.__r_.__value_.__l.__data_) = *v105;
                  std::vector<int>::push_back[abi:ne200100](&v260, &v243);
                  ++v105;
                }

                v107 = *(v103 + 23);
                v108 = *(v103 + 24);
                while (v107 != v108)
                {
                  LODWORD(v243.__r_.__value_.__l.__data_) = *v107;
                  std::vector<float>::push_back[abi:ne200100](&v257, &v243);
                  ++v107;
                }

                v103 += 240;
              }

              while (v103 != v104);
              v109 = v260;
              v110 = v261;
            }

            v122 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
            kaldi::Matrix<float>::Resize(&v232, (v110 - v109) >> 2, (v122 + 1), 0, 0);
            if (v261 == v260)
            {
              v129 = 0;
            }

            else
            {
              v123 = 0;
              v124 = LODWORD(v232.__r_.__value_.__r.__words[1]);
              do
              {
                kaldi::SubMatrix<float>::SubMatrix(&v243, &v232, v123, 1, 0, v124);
                kaldi::CuMatrixBase<float>::CopyToMat<float>(*(a1 + 5128) + 48 * *&v260[4 * v123], &v243, 111, v125, v126);
                kaldi::CuMatrixBase<float>::~CuMatrixBase(&v243);
                v127 = v257[v123];
                v128 = kaldi::MatrixBase<float>::NumCols(&v232);
                v124 = LODWORD(v232.__r_.__value_.__r.__words[1]);
                *(v232.__r_.__value_.__r.__words[0] + 4 * LODWORD(v232.__r_.__value_.__r.__words[2]) * v123++ + 4 * v128 - 4) = v127;
                v129 = (v261 - v260) >> 2;
              }

              while (v129 > v123);
            }

            v130 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
            kaldi::Matrix<float>::Matrix(&v243, v129, v130, 0, 0);
            v131 = v100[24];
            if (v100[25] != v131)
            {
              v132 = 0;
              do
              {
                v133 = *&v131[4 * v132];
                kaldi::SubMatrix<float>::SubMatrix(&__p, &v243, v132, 1, 0, LODWORD(v243.__r_.__value_.__r.__words[1]));
                v134 = (v133 - 1);
                kaldi::SubMatrix<float>::SubMatrix(&v254, a1 + 5632, v134, 1, 0, *(a1 + 5640));
                kaldi::SubMatrix<float>::SubMatrix(v252, a1 + 5632, v134, 1, 0, *(a1 + 5640));
                kaldi::MatrixBase<float>::CopyFromMat<float>(&__p, v252, 111, v135, v136);
                kaldi::CuMatrixBase<float>::~CuMatrixBase(v252);
                kaldi::CuMatrixBase<float>::~CuMatrixBase(&v254);
                kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
                ++v132;
                v131 = v100[24];
              }

              while (v132 < (v100[25] - v131) >> 2);
            }

            v137 = kaldi::MatrixBase<float>::NumCols(&v232);
            kaldi::SubMatrix<float>::SubMatrix(&__p, &v232, 0, HIDWORD(v232.__r_.__value_.__r.__words[1]), 0, (v137 - 1));
            kaldi::MatrixBase<float>::MulElements(&__p, &v243, v138, v139, v140);
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
            kaldi::Matrix<float>::~Matrix(&v243);
            if (v257)
            {
              v258 = v257;
              operator delete(v257);
            }

            if (v260)
            {
              v261 = v260;
              operator delete(v260);
            }
          }

          v141 = kaldi::MatrixBase<float>::NumRows(&v232);
          v142 = kaldi::MatrixBase<float>::NumCols(&v232);
          kaldi::CuMatrix<float>::CuMatrix(&v243, v141, v142, 0, 0, 0);
          kaldi::CuMatrixBase<float>::CopyFromMat(&v243, &v232, 111, v143, v144);
          v145 = kaldi::MatrixBase<float>::NumRows(&v232);
          kaldi::CuMatrix<float>::CuMatrix(&__p, v145, 1, 0, 0, 0);
          kaldi::nnet1::Nnet::Feedforward((a1 + 5256), &v243, &__p, 0xFFFFFFFF, 0);
          kaldi::Matrix<float>::Resize(&v232, HIDWORD(__p.__r_.__value_.__r.__words[2]), LODWORD(__p.__r_.__value_.__r.__words[2]), 0, 0);
          kaldi::CuMatrixBase<float>::CopyToMat<float>(&__p, &v232, 111, v146, v147);
          for (k = 0; k != kaldi::MatrixBase<float>::NumRows(&v232); ++k)
          {
            std::vector<float>::push_back[abi:ne200100](v100 + 27, (v232.__r_.__value_.__r.__words[0] + 4 * LODWORD(v232.__r_.__value_.__r.__words[2]) * k + 4));
          }

          v149 = *v100;
          v150 = v100[1];
          v151 = *v100;
          if (v150 == *v100)
          {
            LODWORD(v164) = 0;
          }

          else
          {
            v152 = 0;
            v153 = 0xEEEEEEEEEEEEEEEFLL * ((v150 - *v100) >> 4);
            v154 = *(v100 + 88);
            if (v153 <= 1)
            {
              v155 = 1;
            }

            else
            {
              v155 = 0xEEEEEEEEEEEEEEEFLL * ((v150 - *v100) >> 4);
            }

            do
            {
              if (v154)
              {
                v156 = &v151[240 * v152];
                v157 = *(v156 + 20);
                v158 = *(v156 + 21);
                if (v157 == v158)
                {
                  v159 = 0.0;
                }

                else
                {
                  v159 = 0.0;
                  v160 = v157;
                  do
                  {
                    v161 = *v160++;
                    v159 = v159 + *&v100[27][4 * v161];
                  }

                  while (v160 != v158);
                }

                v162 = v159 / (v158 - v157);
              }

              else
              {
                v162 = *&v100[27][4 * v152];
              }

              *&v151[240 * v152++ + 232] = llround(v162 * 998.0 + 1.0);
            }

            while (v152 != v155);
            LODWORD(v163) = 0;
            do
            {
              v163 = *(v151 + 58) + v163;
              v151 += 240;
            }

            while (v151 != v150);
            v164 = v163 / v153;
          }

          *(v100 + 240) = v164 < v195;
          kaldi::CuMatrix<float>::~CuMatrix(&__p);
          kaldi::CuMatrix<float>::~CuMatrix(&v243);
          kaldi::Matrix<float>::~Matrix(&v232);
        }

        else
        {
          v112 = *v100;
          v111 = v100[1];
          if (*v100 != v111)
          {
            do
            {
              if (*(v100 + 88) == 1)
              {
                v113 = *(v112 + 23);
                v114 = *(v112 + 24);
                if (v113 == v114)
                {
                  LODWORD(v119) = 0;
                }

                else
                {
                  v115 = 0;
                  do
                  {
                    v116 = expf(-*v113);
                    *&v243.__r_.__value_.__l.__data_ = v116;
                    std::vector<float>::push_back[abi:ne200100](v100 + 27, &v243);
                    v115 += llround(v116 * 998.0 + 1.0);
                    ++v113;
                  }

                  while (v113 != v114);
                  v117 = *(v112 + 23);
                  v118 = *(v112 + 24);
                  if (v117 == v118)
                  {
                    LODWORD(v119) = 0;
                  }

                  else
                  {
                    v119 = v115 / ((v118 - v117) >> 2);
                  }
                }
              }

              else
              {
                LODWORD(v119) = llround(expf(-*(v112 + 21)) * 998.0 + 1.0);
              }

              *(v112 + 58) = v119;
              v112 += 240;
            }

            while (v112 != v111);
            v112 = *v100;
            v111 = v100[1];
          }

          LODWORD(v120) = 0;
          if (v111 != v112)
          {
            v121 = 0xEEEEEEEEEEEEEEEFLL * ((v111 - v112) >> 4);
            do
            {
              v120 = *(v112 + 58) + v120;
              v112 += 240;
            }

            while (v112 != v111);
            v120 /= v121;
          }

          *(v100 + 240) = v120 < v195;
        }
      }

      else
      {
        *(v100 + 240) = 0;
        v101 = *v100;
        v102 = v100[1];
        while (v101 != v102)
        {
          if (*(v100 + 88) == 1)
          {
            LODWORD(v243.__r_.__value_.__l.__data_) = 1065353216;
            std::vector<float>::push_back[abi:ne200100](v100 + 27, &v243);
          }

          *(v101 + 58) = 1000;
          v101 += 240;
        }
      }

      v100 += 34;
    }

    while (v100 != v199);
  }

  if (v197[1578])
  {
    v165 = *a4;
    v166 = *(a4 + 8);
    v167 = v166 - *a4;
    v168 = 0xF0F0F0F0F0F0F0F1 * (v167 >> 4);
    if (v167 < 1)
    {
      v174 = 0;
      v170 = 0;
    }

    else
    {
      v169 = MEMORY[0x1E69E5398];
      v170 = 0xF0F0F0F0F0F0F0F1 * (v167 >> 4);
      while (1)
      {
        v171 = operator new(272 * v170, v169);
        if (v171)
        {
          break;
        }

        v172 = v170 >> 1;
        v173 = v170 > 1;
        v170 >>= 1;
        if (!v173)
        {
          v174 = 0;
          v170 = v172;
          goto LABEL_297;
        }
      }

      v174 = v171;
    }

LABEL_297:
    std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v165, v166, &v243, v168, v174, v170);
    if (v174)
    {
      operator delete(v174);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(&v211, v99);
  v175 = *(v192 + 172);
  if (v175 && 0xF0F0F0F0F0F0F0F1 * ((*(a4 + 8) - *a4) >> 4) > v175)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::resize(a4, v175);
  }

  *(a1 + 5224) = v189;
  *(a1 + 5200) = v8;
  *(a1 + 5188) = v188;
  *(a1 + 5192) = v9;
  *(a1 + 5196) = v187;
  v243.__r_.__value_.__r.__words[0] = &v200;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](&v243);
LABEL_303:
  v243.__r_.__value_.__r.__words[0] = &v204;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v243);
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v210) < 0)
  {
    operator delete(v208);
  }
}

void kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    do
    {
      if (v1[1] != *v1)
      {
        v3 = (*(*v1 + 144) - *(*v1 + 136)) >> 2;
        v12 = 0;
        if (v3 >= 1)
        {
          v4 = 0;
          do
          {
            v5 = v1[1];
            if (*v1 == v5)
            {
              v11 = 0;
            }

            else
            {
              v6 = 0;
              v7 = 0;
              v8 = 0.0;
              v9 = *v1;
              do
              {
                v10 = *(v9 + 136);
                if (*(v10 + 4 * v4) > v8)
                {
                  v7 = v6;
                  v8 = *(v10 + 4 * v4);
                }

                ++v6;
                v9 += 240;
              }

              while (v9 != v5);
              v11 = v7;
            }

            std::vector<int>::push_back[abi:ne200100]((*v1 + 240 * v11 + 112), &v12);
            v4 = v12 + 1;
            v12 = v4;
          }

          while (v4 < v3);
        }
      }

      v1 += 34;
    }

    while (v1 != v2);
  }
}

void kaldi::quasar::TranslationUtil::MergeAlignments(char ***a1)
{
  v2 = *a1;
  v1 = a1[1];
  v65 = v1;
  while (v2 != v1)
  {
    v4 = *v2;
    v3 = v2[1];
    v5 = *v2;
    if (*v2 != v3)
    {
      while (1)
      {
        v6 = *(v5 + 11);
        v7 = *(v5 + 12);
        if (v6 != v7)
        {
          while ((*v6 & 0x80000000) == 0)
          {
            if (++v6 == v7)
            {
              goto LABEL_9;
            }
          }
        }

        if (v6 != v7)
        {
          return;
        }

LABEL_9:
        v8 = *(v5 + 14);
        v9 = *(v5 + 15);
        if (v8 != v9)
        {
          while ((*v8 & 0x80000000) == 0)
          {
            if (++v8 == v9)
            {
              goto LABEL_14;
            }
          }
        }

        if (v8 != v9)
        {
          return;
        }

LABEL_14:
        v5 += 240;
        if (v5 == v3)
        {
          if (v4 == v3)
          {
            break;
          }

          v10 = 0;
          v11 = *v2;
          do
          {
            v13 = *(v11 + 11);
            v12 = *(v11 + 12);
            if (v13 != v12)
            {
              while ((*v13 & 0x80000000) == 0)
              {
                if (++v13 == v12)
                {
                  goto LABEL_29;
                }
              }

              if (v13 != v12)
              {
                for (i = v13 + 1; i != v12; ++i)
                {
                  if ((*i & 0x80000000) == 0)
                  {
                    *v13++ = *i;
                  }
                }
              }
            }

            if (v13 != v12)
            {
              v12 = v13;
              *(v11 + 12) = v13;
            }

LABEL_29:
            v16 = *(v11 + 14);
            v15 = *(v11 + 15);
            if (v16 != v15)
            {
              while ((*v16 & 0x80000000) == 0)
              {
                if (++v16 == v15)
                {
                  goto LABEL_41;
                }
              }

              if (v16 != v15)
              {
                for (j = v16 + 1; j != v15; ++j)
                {
                  if ((*j & 0x80000000) == 0)
                  {
                    *v16++ = *j;
                  }
                }
              }
            }

            if (v16 != v15)
            {
              v15 = v16;
              *(v11 + 15) = v16;
            }

LABEL_41:
            v18 = *(v11 + 11);
            if (v18 != v12)
            {
              v19 = v18 + 1;
              if (v18 + 1 != v12)
              {
                v20 = *v18;
                v21 = v18 + 1;
                do
                {
                  v23 = *v21++;
                  v22 = v23;
                  v24 = v20 < v23;
                  if (v20 <= v23)
                  {
                    v20 = v22;
                  }

                  if (v24)
                  {
                    v18 = v19;
                  }

                  v19 = v21;
                }

                while (v21 != v12);
              }

              if (v10 <= *v18 + 1)
              {
                v10 = *v18 + 1;
              }
            }

            v25 = *(v11 + 14);
            if (v25 != v15)
            {
              v26 = v25 + 1;
              if (v25 + 1 != v15)
              {
                v27 = *v25;
                v28 = v25 + 1;
                do
                {
                  v30 = *v28++;
                  v29 = v30;
                  v31 = v27 < v30;
                  if (v27 <= v30)
                  {
                    v27 = v29;
                  }

                  if (v31)
                  {
                    v25 = v26;
                  }

                  v26 = v28;
                }

                while (v28 != v15);
              }

              v32 = *v25;
              if (v10 <= v32 + 1)
              {
                v10 = v32 + 1;
              }
            }

            v11 += 240;
          }

          while (v11 != v3);
          goto LABEL_64;
        }
      }
    }

    v10 = 0;
LABEL_64:
    v33 = -286331153 * ((v3 - v4) >> 4);
    v34 = v10;
    LOBYTE(v77[0]) = 0;
    std::vector<BOOL>::vector(__p, v33);
    std::vector<std::vector<BOOL>>::vector[abi:ne200100](v78, v10);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    LOBYTE(v76) = 0;
    std::vector<BOOL>::vector(__p, v33);
    std::vector<std::vector<BOOL>>::vector[abi:ne200100](v77, v10);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(&v76, v10);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(&v75, v33);
    v73 = 0u;
    v74 = 0u;
    *__p = 0u;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v35 = *v2;
    v36 = v2[1];
    v66 = v2;
    if (*v2 != v36)
    {
      v37 = 0;
      do
      {
        v38 = *(v35 + 11);
        v39 = *(v35 + 12);
        v40 = v37 >> 6;
        if (v38 != v39)
        {
          v41 = v78[0];
          v42 = *(v35 + 11);
          do
          {
            v43 = *v42++;
            *(*(v41 + 24 * v43) + 8 * v40) |= 1 << v37;
          }

          while (v42 != v39);
        }

        v44 = *(v35 + 14);
        v45 = *(v35 + 15);
        if (v44 != v45)
        {
          v46 = 1 << v37;
          do
          {
            v47 = *v44;
            *(*(v77[0] + 24 * v47) + 8 * v40) |= v46;
            if ((*(*(v78[0] + 24 * v47) + 8 * v40) & v46) != 0)
            {
              v68 = __PAIR64__(v37, v47);
              std::deque<std::pair<int,int>>::push_back(__p, &v68);
              *(v76 + ((*v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v44;
              *(v75 + v40) |= v46;
            }

            ++v44;
          }

          while (v44 != v45);
          v38 = *(v35 + 11);
          v44 = *(v35 + 14);
        }

        *(v35 + 12) = v38;
        *(v35 + 15) = v44;
        ++v37;
        v35 += 240;
      }

      while (v35 != v36);
      while (*(&v74 + 1))
      {
        v48 = *(*(__p[1] + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
        *&v74 = v74 + 1;
        --*(&v74 + 1);
        if (v74 >= 0x400)
        {
          operator delete(*__p[1]);
          __p[1] = __p[1] + 8;
          *&v74 = v74 - 512;
        }

        v49 = v70;
        if (v70 >= v71)
        {
          v51 = (v70 - v69) >> 3;
          if ((v51 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v52 = (v71 - v69) >> 2;
          if (v52 <= v51 + 1)
          {
            v52 = v51 + 1;
          }

          if (v71 - v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v69, v53);
          }

          *(8 * v51) = v48;
          v50 = 8 * v51 + 8;
          v54 = (8 * v51 - (v70 - v69));
          memcpy(v54, v69, v70 - v69);
          v55 = v69;
          v69 = v54;
          v70 = v50;
          v71 = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v70 = v48;
          v50 = (v49 + 8);
        }

        v56 = HIDWORD(v48);
        v70 = v50;
        v57 = -1;
        v67 = v48;
        do
        {
          v58 = (v57 + v48);
          v59 = -3;
          do
          {
            if ((v58 & 0x80000000) == 0 && v58 < v34)
            {
              v60 = (v56 + v59 + 2);
              if ((v60 & 0x80000000) == 0 && v60 < v33)
              {
                v61 = v60 >> 6;
                v62 = 1 << (v56 + v59 + 2);
                if ((*(v75 + (v60 >> 6)) & v62) == 0 && ((*(*(v78[0] + 24 * v58) + 8 * v61) & v62) != 0 || (*(*(v77[0] + 24 * v58) + 8 * v61) & v62) != 0))
                {
                  LODWORD(v68) = v58;
                  HIDWORD(v68) = v56 + v59 + 2;
                  std::deque<std::pair<int,int>>::push_back(__p, &v68);
                  *(v76 + (v58 >> 6)) |= 1 << v58;
                  *(v75 + v61) |= v62;
                }
              }
            }

            v59 += 2;
          }

          while (v59 < 0);
          ++v57;
          LODWORD(v48) = v67;
        }

        while (v57 != 2);
      }
    }

    v63 = v69;
    v64 = v70;
    if (v69 != v70)
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](&(*v66)[240 * *(v63 + 1) + 88], v63);
        v63 += 8;
      }

      while (v63 != v64);
      v63 = v69;
    }

    if (v63)
    {
      v70 = v63;
      operator delete(v63);
    }

    std::deque<char *>::~deque[abi:ne200100](__p);
    if (v75)
    {
      operator delete(v75);
    }

    if (v76)
    {
      operator delete(v76);
    }

    __p[0] = v77;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v78;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](__p);
    v2 = v66 + 34;
    v1 = v65;
  }
}

void sub_1C30232AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  a17 = (v27 - 136);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = (v27 - 112);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::vector<std::vector<BOOL>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<BOOL>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void *std::deque<std::pair<int,int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<std::pair<int,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1C30239C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_back<std::pair<int,int> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = &v10[-4 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 4;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[v20];
    if (&v21[-4 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -4 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

uint64_t kaldi::quasar::TranslationUtil::PathElement::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  v6 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 10);
  if (v6)
  {
    *(a1 + 96) = v6;
    operator delete(v6);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v7 = *(a1 + 112);
  if (v7)
  {
    *(a1 + 120) = v7;
    operator delete(v7);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 136);
  if (v8)
  {
    *(a1 + 144) = v8;
    operator delete(v8);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 19);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  v9 = *(a1 + 160);
  if (v9)
  {
    *(a1 + 168) = v9;
    operator delete(v9);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  v10 = *(a1 + 184);
  if (v10)
  {
    *(a1 + 192) = v10;
    operator delete(v10);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 25);
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  v11 = *(a1 + 208);
  if (v11)
  {
    *(a1 + 216) = v11;
    operator delete(v11);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 208) = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a1 + 232) = *(a2 + 58);
  return a1;
}

uint64_t kaldi::quasar::NNMTTransliterator::Transliterate<std::vector<kaldi::quasar::TranslationUtil::NbestElement>>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v31 = *MEMORY[0x1E69E9840];
  v3 = result + 4096;
  if (*(result + 4192) || *(result + 4200) == 1)
  {
    v4 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      v5 = *(MEMORY[0x1E69E54D8] + 64);
      v14 = v5;
      v15 = *MEMORY[0x1E69E54D8];
      v13 = *(MEMORY[0x1E69E54D8] + 72);
      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v19);
        v7 = *v4;
        v6 = *(v4 + 8);
        while (v7 != v6)
        {
          memset(&v30, 0, sizeof(v30));
          kaldi::SplitStringToVector(v7, "\", 1, &v30);
          if (v30.__r_.__value_.__l.__size_ != v30.__r_.__value_.__r.__words[0])
          {
            v28 = 0;
            __p = 0;
            v29 = 0;
            memset(s, 0, sizeof(s));
            kaldi::SplitStringToVector(v30.__r_.__value_.__l.__data_, "_", 1, s);
            kaldi::JoinVectorToString<std::string>(s, &__p);
            if (v29 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v29 >= 0)
            {
              v9 = HIBYTE(v29);
            }

            else
            {
              v9 = v28;
            }

            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, p_p, v9);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
            v25 = s;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p);
            }
          }

          __p = &v30;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
          v7 += 10;
        }

        std::stringbuf::str();
        kaldi::Trim(&v18);
        if (*(v2 + 4192) || (*(v3 + 104) & 1) != 0)
        {
          std::wstring_convert<std::codecvt_utf8<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::wstring_convert[abi:ne200100]();
        }

        std::string::basic_string[abi:ne200100]<0>(&v16, "");
        if (*(v4 + 119) < 0)
        {
          operator delete(*(v4 + 96));
        }

        *(v4 + 96) = v16;
        *(v4 + 112) = v17;
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        v19[0] = v15;
        *(v19 + *(v15 - 24)) = v14;
        v20 = v13;
        v21 = MEMORY[0x1E69E5548] + 16;
        if (v23 < 0)
        {
          operator delete(v22[7].__locale_);
        }

        v21 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v22);
        std::iostream::~basic_iostream();
        result = MEMORY[0x1C692AD30](&v24);
        v4 += 272;
      }

      while (v4 != v12);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3025A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&STACK[0x310]);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
  _Unwind_Resume(a1);
}

void sub_1C3025DB8()
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x1C3025D40);
}

uint64_t kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~DecodeOptions(uint64_t a1)
{
  v3 = (a1 + 328);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v3 = (a1 + 240);
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t FrontendNNModule::model_infer@<X0>(uint64_t a1@<X0>, std::string::size_type a2@<X1>, void *a3@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v10 = *(a1 + 176);
    if (v10 != 6)
    {
      if (v10 == 7 && **v6 == 762541172 && *(*v6 + 3) == 1886154285)
      {
        goto LABEL_16;
      }

LABEL_178:
      exception = __cxa_allocate_exception(0x10uLL);
      if (*(a1 + 191) < 0)
      {
        v6 = *v6;
      }

      StringFormatter::StringFormatter(&buf, "Unable to do model inference with model_framework:'%s'", v6);
      MEMORY[0x1C692A510](exception, &buf);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v8 = *v6;
LABEL_30:
    v16 = *v8;
    v17 = *(v8 + 2);
    if (v16 != 1701147234 || v17 != 25978)
    {
      goto LABEL_178;
    }

    v19 = *(a1 + 232);
    if (!v19)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v29 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
      {
        v31 = (a1 + 104);
        if (*(a1 + 127) < 0)
        {
          v31 = *v31;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v31;
        _os_log_impl(&dword_1C2F95000, v29, OS_LOG_TYPE_ERROR, "#[%s] gets NN Model failed", &buf, 0xCu);
      }

      v32 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v32 = *v32;
      }

      Diagnostics::log(3, "#[%s] gets NN Model failed", v30, v32);
      operator new();
    }

    v20 = *(a1 + 240);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v72 = v20;
    if (*(a1 + 264))
    {
      (*(*a1 + 80))(&v84, a1);
      if (!v84.__r_.__value_.__r.__words[0])
      {
        goto LABEL_64;
      }

      v21 = (v84.__r_.__value_.__r.__words[0] + 40);
      v22 = *(v84.__r_.__value_.__r.__words[0] + 63);
      v23 = *(v84.__r_.__value_.__r.__words[0] + 48);
      if (v22 >= 0)
      {
        v24 = *(v84.__r_.__value_.__r.__words[0] + 63);
      }

      else
      {
        v24 = *(v84.__r_.__value_.__r.__words[0] + 48);
      }

      v25 = *(a1 + 167);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a1 + 152);
      }

      if (v24 == v25 && (v22 >= 0 ? (v27 = (v84.__r_.__value_.__r.__words[0] + 40)) : (v27 = *v21), v26 >= 0 ? (v28 = (a1 + 144)) : (v28 = *(a1 + 144)), !memcmp(v27, v28, v24)))
      {
LABEL_64:
        std::string::basic_string[abi:ne200100]<0>(&buf, "");
      }

      else if (v22 < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *v21, v23);
      }

      else
      {
        buf = *v21;
      }

      if (v84.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84.__r_.__value_.__l.__size_);
      }

      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v42 = *(a1 + 256);
        if (v42)
        {
          v43 = a1 + 256;
          do
          {
            v44 = std::less<std::string>::operator()[abi:ne200100](a1 + 248, (v42 + 32), &buf.__r_.__value_.__l.__data_);
            if (v44)
            {
              v45 = 8;
            }

            else
            {
              v45 = 0;
            }

            if (!v44)
            {
              v43 = v42;
            }

            v42 = *(v42 + v45);
          }

          while (v42);
          if (v43 != a1 + 256 && !std::less<std::string>::operator()[abi:ne200100](a1 + 248, &buf.__r_.__value_.__l.__data_, (v43 + 32)))
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v46 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              p_buf = &buf;
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              LODWORD(v84.__r_.__value_.__l.__data_) = 136315138;
              *(v84.__r_.__value_.__r.__words + 4) = p_buf;
              _os_log_impl(&dword_1C2F95000, v46, OS_LOG_TYPE_INFO, "Switching to %s G2P", &v84, 0xCu);
            }

            v49 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v49 = buf.__r_.__value_.__r.__words[0];
            }

            Diagnostics::log(6, "Switching to %s G2P", v47, v49);
            v19 = *(v43 + 56);
            v50 = *(v43 + 64);
            if (v50)
            {
              atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
            }

            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }
          }
        }
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v86 = 0;
    *v85 = 0;
    v87 = 0;
    memset(&buf, 0, sizeof(buf));
    v51 = *(a2 + 23);
    if (*(v19 + 11784) == 1)
    {
      if (v51 < 0)
      {
        std::string::__init_copy_ctor_external(&v84, *a2, *(a2 + 8));
      }

      else
      {
        v84 = *a2;
      }

      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TokenizeInputString(v19, &v84, &buf);
    }

    else
    {
      if (v51 < 0)
      {
        std::string::__init_copy_ctor_external(&v84, *a2, *(a2 + 8));
      }

      else
      {
        v84 = *a2;
      }

      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TokenizeInputString(v19 + 5888, &v84, &buf);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v52 = a2;
    std::string::basic_string[abi:ne200100]<0>(&__p, "@@");
    v78.__r_.__value_.__r.__words[0] = 0;
    v77 = 0;
    v75.__r_.__value_.__r.__words[0] = 0;
    v54 = buf.__r_.__value_.__l.__size_;
    v53 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0] == buf.__r_.__value_.__l.__size_)
    {
      if (*v85 != v86)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v55 = 0;
      __pos = 0;
      v56 = 0;
      v57 = 0;
      do
      {
        if (*(v53 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v53, *(v53 + 8));
        }

        else
        {
          v58 = *v53;
          __str.__r_.__value_.__r.__words[2] = *(v53 + 16);
          *&__str.__r_.__value_.__l.__data_ = v58;
        }

        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = __str.__r_.__value_.__l.__size_;
        }

        if (v83 >= 0)
        {
          v61 = HIBYTE(v83);
        }

        else
        {
          v61 = v82;
        }

        v62 = v60 - v61;
        if (v60 <= v61)
        {
          goto LABEL_154;
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ < v62)
          {
LABEL_177:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v63 = __str.__r_.__value_.__l.__size_ - v62 >= v61 ? v61 : __str.__r_.__value_.__l.__size_ - v62;
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (HIBYTE(__str.__r_.__value_.__r.__words[2]) < v62)
          {
            goto LABEL_177;
          }

          v63 = HIBYTE(__str.__r_.__value_.__r.__words[2]) - v62 >= v61 ? v61 : HIBYTE(__str.__r_.__value_.__r.__words[2]) - v62;
          p_str = &__str;
        }

        v65 = v83 >= 0 ? &__p : __p;
        if (!memcmp(p_str + v62, v65, v63) && v63 == v61)
        {
          if (v56 - v61 + v60 < 0x3E9)
          {
            v56 = v56 - v61 + v60;
          }

          else
          {
            v57 += v56;
            v79.__r_.__value_.__r.__words[0] = v57;
            EncoderDecoder::align_original_position(v52, &v78, &v79, &v77, &v75);
            v55 = v75.__r_.__value_.__r.__words[0];
            std::string::basic_string(&v79, v52, __pos, v75.__r_.__value_.__r.__words[0] - __pos, &v74);
            std::vector<std::string>::push_back[abi:ne200100](v85, &v79);
            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v79.__r_.__value_.__l.__data_);
            }

            v78.__r_.__value_.__r.__words[0] = v57;
            v77 = v77 + v56;
            v68 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v68 = __str.__r_.__value_.__l.__size_;
            }

            v69 = HIBYTE(v83);
            if (v83 < 0)
            {
              v69 = v82;
            }

            v56 = v68 - v69;
            __pos = v55;
          }
        }

        else
        {
LABEL_154:
          v67 = v60 + v56;
          v57 += v60 + v56;
          v79.__r_.__value_.__r.__words[0] = v57;
          EncoderDecoder::align_original_position(v52, &v78, &v79, &v77, &v75);
          v56 = 0;
          v55 = v75.__r_.__value_.__r.__words[0];
          v78.__r_.__value_.__r.__words[0] = v57;
          v77 = v77 + v67;
          v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if (v59 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v53 += 24;
      }

      while (v53 != v54);
      if (*v85 != v86)
      {
        if (v55 != __pos)
        {
          std::string::basic_string(&__str, v52, __pos, v55 - __pos, &v79);
          std::vector<std::string>::push_back[abi:ne200100](v85, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

LABEL_174:
        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p);
        }

        __p = &buf;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        operator new();
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](v85, v52);
    goto LABEL_174;
  }

  v7 = *(a1 + 191);
  v8 = (a1 + 168);
  if (v7 == 6)
  {
    goto LABEL_30;
  }

  if (v7 != 7)
  {
    goto LABEL_178;
  }

  if (*v6 != 762541172 || *(a1 + 171) != 1886154285)
  {
    goto LABEL_178;
  }

LABEL_16:
  if (!*(a1 + 272) || !*(a1 + 288))
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v12 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v14 = *v14;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_ERROR, "#[%s] gets NN Model failed", &buf, 0xCu);
    }

    v15 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      v15 = *v15;
    }

    Diagnostics::log(3, "#[%s] gets NN Model failed", v13, v15);
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *a2, *(a2 + 8));
  }

  else
  {
    v76 = *a2;
  }

  UTFString::lstrip(&v76);
  UTFString::rstrip(&v76);
  v33 = *&v76.__r_.__value_.__l.__data_;
  v34 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  memset(&v76, 0, sizeof(v76));
  if (v34 < 0)
  {
    operator delete(v33);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (*(&v33 + 1))
    {
LABEL_68:
      std::chrono::steady_clock::now();
      v35 = *(a1 + 304);
      BBPE::encode_and_return_vector();
    }
  }

  else if (v34)
  {
    goto LABEL_68;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v36 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v38 = a2;
    }

    else
    {
      v38 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v38;
  }

  if (*(a2 + 23) >= 0)
  {
    v39 = a2;
  }

  else
  {
    v39 = *a2;
  }

  *a3 = 0;
  a3[1] = 0;
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C30296AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, void *a45, std::__shared_weak_count *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a26[1].__shared_owners_ = v70;
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (STACK[0x278])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x278]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  STACK[0x240] = &a70;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  _Unwind_Resume(a1);
}

size_t *std::vector<std::tuple<std::string,unsigned long,unsigned long>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned long,unsigned long>>>(v10);
    }

    v11 = 40 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v11 + 24) = *(a2 + 3);
    *(v11 + 32) = *(a2 + 4);
    v6 = 40 * v7 + 40;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::tuple<std::string,unsigned long,unsigned long>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 32) = *(a2 + 4);
    v6 = v3 + 40;
  }

  v2[1] = v6;
  return result;
}

void std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void create_pronunciation_with_phone_sequence(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = a1;
  std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(1uLL);
}

void sub_1C302A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  *(v9 - 128) = va;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v9 - 128));
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void split_by_delimiter(void *a1, std::string *__str, unsigned __int8 a3)
{
  v6 = 0;
  v7 = a3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_2:
  v8 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  size = __str->__r_.__value_.__l.__size_;
  if ((v8 & 0x80u) == 0)
  {
    v10 = __str;
  }

  else
  {
    v10 = __str->__r_.__value_.__r.__words[0];
  }

  v11 = v6;
  if ((v8 & 0x80) != 0)
  {
    while (v11 < size)
    {
LABEL_9:
      if (v10->__r_.__value_.__s.__data_[v11] == v7)
      {
        std::string::basic_string(&v13, __str, v6, v11 - v6, &v12);
        std::vector<std::string>::push_back[abi:ne200100](a1, &v13);
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }

        v6 = v11 + 1;
        goto LABEL_2;
      }

      ++v11;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (v11 < v8)
    {
      goto LABEL_9;
    }

    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  std::string::basic_string(&v13, __str, v6, size - v6, &v12);
  std::vector<std::string>::push_back[abi:ne200100](a1, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1C302AAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 40) = result;
  }

  return result;
}

uint64_t fst::CountStates<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v8 = 0;
  (*(*a1 + 128))(a1, &v6);
  v4 = 0;
  while (1)
  {
    while (!v6)
    {
      v5 = v8;
      if (v8 >= v7)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_13:
      v8 = v5 + 1;
    }

    if ((*(*v6 + 16))(v6))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v6)
    {
      v5 = v8;
      goto LABEL_13;
    }

    (*(*v6 + 32))();
  }

  if (v6)
  {
    (*(*v6 + 8))();
  }

  return v4;
}

void sub_1C302AD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>::reserve(v4, a2);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v9 = *a3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  v7 = *(v6[8] + 8 * a2);
  v25 = *v7;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, v7[1], v7[2], (v7[2] - v7[1]) >> 2);
  v21 = v9;
  v23 = 0;
  v24 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v10, v11, (v11 - v10) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(v6[8], a2, &v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v8 = (*(*v6 + 24))(v6);
  v17 = v25;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, v26, v27, (v27 - v26) >> 2);
  v13 = v9;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, v10, v11, (v11 - v10) >> 2);
  v6[1] = v6[1] & 4 | fst::SetFinalProperties<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>(v8, &v17, &v13);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_1C302B04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    *(v23 - 48) = v25;
    operator delete(v25);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 8 * a2);
  v4 = *a3;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a3[1], a3[2], (a3[2] - a3[1]) >> 2);
  *v3 = v4;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3 + 1, __p, v6, (v6 - __p) >> 2);
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1C302B130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::BPE::IsIntraWord(uint64_t a1, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = *(a1 + 159);
  if (v5 >= 0)
  {
    v6 = *(a1 + 159);
  }

  else
  {
    v6 = *(a1 + 144);
  }

  v9 = v4 >= v6;
  v7 = v4 - v6;
  if (!v9)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if (v6 == -1 || v3 < v7)
    {
LABEL_36:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v3 - v7 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v3 - v7;
    }

    a2 = *a2;
  }

  else
  {
    v9 = v6 != -1 && v2 >= v7;
    if (!v9)
    {
      goto LABEL_36;
    }

    v10 = v2 - v7;
    if (v10 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v10;
    }
  }

  if (v5 >= 0)
  {
    v13 = (a1 + 136);
  }

  else
  {
    v13 = *(a1 + 136);
  }

  v14 = memcmp(a2 + v7, v13, v11);
  return v11 == v6 && v14 == 0;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t kaldi::quasar::TranslationUtil::PathElement::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 == a2)
  {
    std::string::operator=((a1 + 56), (a2 + 56));
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    std::string::operator=((a1 + 56), (a2 + 56));
    *(a1 + 80) = *(a2 + 80);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 184), *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 208), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 2);
  }

  *(a1 + 232) = *(a2 + 232);
  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
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

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
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
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

uint64_t EncoderDecoder::decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 11776);
  if (*(a1 + 11784) == 1)
  {
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeOptions(v8, *(a1 + 11776), *(a1 + 5224), *(a1 + 5200));
    v9 = v6;
    v10 = 1;
    v13 = 0;
    v11 = 0;
    v12 = 1;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, v8, a3);
  }

  else
  {
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeOptions(v8, *(a1 + 11776), *(a1 + 11112), *(a1 + 11088));
    v9 = v6;
    v10 = 1;
    v13 = 0;
    v11 = 0;
    v12 = 1;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1 + 5888, a2, v8, a3);
  }

  return kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~DecodeOptions(v8);
}

void EncoderDecoder::decode_chunk_and_merge(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v7 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1C2F95000, v7, OS_LOG_TYPE_DEBUG, "  [clean chunk]: %s", &buf, 0xCu);
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  Diagnostics::log(7, "  [clean chunk]: %s", v8, v10);
  EncoderDecoder::decode(a1, a2, &v61);
  v11 = v61;
  if (v62 != v61)
  {
    v12 = 0;
    do
    {
      v13 = *a3;
      v14 = *(a3 + 1);
      v15 = 0xF0F0F0F0F0F0F0F1 * ((v14 - *a3) >> 4);
      if (v15 <= v12)
      {
        v33 = (v11 + 272 * v12);
        v34 = *(a3 + 2);
        if (v14 >= v34)
        {
          v36 = v15 + 1;
          if (v15 + 1 > 0xF0F0F0F0F0F0F0)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v37 = 0xF0F0F0F0F0F0F0F1 * ((v34 - v13) >> 4);
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0x78787878787878)
          {
            v38 = 0xF0F0F0F0F0F0F0;
          }

          else
          {
            v38 = v36;
          }

          v66 = a3;
          if (v38)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(v38);
          }

          *&buf = 0;
          *(&buf + 1) = 272 * v15;
          v65 = 272 * v15;
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement((272 * v15), v33);
          *&v65 = v65 + 272;
          v53 = *(a3 + 1);
          v54 = (*(&buf + 1) + *a3 - v53);
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(*a3, v53, v54);
          v55 = *a3;
          *a3 = v54;
          v56 = *(a3 + 2);
          v60 = v65;
          *(a3 + 8) = v65;
          *&v65 = v55;
          *(&v65 + 1) = v56;
          *&buf = v55;
          *(&buf + 1) = v55;
          std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(&buf);
          v35 = v60;
        }

        else
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(*(a3 + 1), v33);
          v35 = v14 + 272;
          *(a3 + 1) = v14 + 272;
        }

        *(a3 + 1) = v35;
      }

      else
      {
        v16 = v13 + 272 * v12;
        v17 = *(v16 + 1);
        if (*v16 == v17 || (v18 = *&v17[-7].__r_.__value_.__r.__words[2], data = v17[-6].__r_.__value_.__l.__data_, v20 = v17[-7].__r_.__value_.__r.__words[2], v20 == data))
        {
          v32 = 0;
        }

        else
        {
          v21 = v20 + 1;
          if (v20 + 1 != data)
          {
            v22 = *v20;
            v23 = v20 + 1;
            do
            {
              v25 = *v23++;
              v24 = v25;
              v26 = v22 < v25;
              if (v22 <= v25)
              {
                v22 = v24;
              }

              if (v26)
              {
                v20 = v21;
              }

              v21 = v23;
            }

            while (v23 != data);
          }

          v27 = *v20;
          v28 = *a4;
          v29 = (a4[1] - *a4) >> 5;
          if (v29 > v27)
          {
            v30 = v29 - v27;
            v31 = -1;
            v32 = v27;
            while (1)
            {
              if (v27 == v32)
              {
                if (v29 <= v32)
                {
                  goto LABEL_67;
                }

                v31 = *(v28 + 32 * v32 + 24);
              }

              else
              {
                if (v29 <= v32)
                {
LABEL_67:
                  std::vector<int>::__throw_out_of_range[abi:ne200100]();
                }

                if (*(v28 + 32 * v32 + 24) != v31)
                {
                  goto LABEL_45;
                }

                ++v32;
              }

              ++v27;
              if (!--v30)
              {
                goto LABEL_45;
              }
            }
          }

          v32 = v27;
        }

LABEL_45:
        v39 = (v11 + 272 * v12);
        v40 = *v39;
        v41 = v39[1];
        while (v40 != v41)
        {
          v42 = *(v40 + 11);
          v43 = *(v40 + 12);
          while (v42 != v43)
          {
            *v42++ += v32;
          }

          v44 = *(v16 + 2);
          if (v17 >= v44)
          {
            v45 = 0xEEEEEEEEEEEEEEEFLL * ((v17 - *v16) >> 4);
            v46 = v45 + 1;
            if (v45 + 1 > 0x111111111111111)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v47 = 0xEEEEEEEEEEEEEEEFLL * ((v44 - *v16) >> 4);
            if (2 * v47 > v46)
            {
              v46 = 2 * v47;
            }

            if (v47 >= 0x88888888888888)
            {
              v48 = 0x111111111111111;
            }

            else
            {
              v48 = v46;
            }

            v66 = v16;
            if (v48)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(v48);
            }

            *&buf = 0;
            *(&buf + 1) = 240 * v45;
            v65 = 240 * v45;
            kaldi::quasar::TranslationUtil::PathElement::PathElement((240 * v45), v40);
            *&v65 = v65 + 240;
            v49 = *(v16 + 1);
            v50 = (*(&buf + 1) + *v16 - v49);
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(*v16, v49, v50);
            v51 = *v16;
            *v16 = v50;
            *(&buf + 1) = v51;
            v52 = *(v16 + 2);
            v59 = v65;
            *&v65 = v51;
            *(v16 + 8) = v59;
            *(&v65 + 1) = v52;
            *&buf = v51;
            std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(&buf);
            v17 = v59;
          }

          else
          {
            kaldi::quasar::TranslationUtil::PathElement::PathElement(v17, v40);
            v17 += 10;
            *(v16 + 1) = v17;
          }

          *(v16 + 1) = v17;
          v40 = (v40 + 240);
        }
      }

      ++v12;
      v11 = v61;
    }

    while (0xF0F0F0F0F0F0F0F1 * ((v62 - v61) >> 4) > v12);
  }

  *&buf = &v61;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&buf);
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1C302BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t FrontendNNModule::top1_result_aligned@<X0>(char *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2[1] == *a2)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v8 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = a1 + 104;
      if (a1[127] < 0)
      {
        v10 = *v10;
      }

      *buf = 136315138;
      v14 = v10;
      _os_log_impl(&dword_1C2F95000, v8, OS_LOG_TYPE_ERROR, "#[%s] no paths in n_best", buf, 0xCu);
    }

    v11 = a1 + 104;
    if (a1[127] < 0)
    {
      v11 = *v11;
    }

    result = Diagnostics::log(3, "#[%s] no paths in n_best", v9, v11);
    *a3 = 0;
    a3[1] = 0;
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *(*a1 + 120);
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned long,unsigned long>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::string,unsigned long,unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void FrontendNNModule::passdown_leading_empty_token(FrontendNNModule *this)
{
  v1 = *(this + 44);
  v2 = *(this + 45);
  if (v2 != v1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(v6 + 8) != 1952807028)
      {
        break;
      }

      v7 = *(v6 + 55);
      if (v7 < 0)
      {
        v7 = *(v6 + 40);
      }

      if (v7)
      {
        break;
      }

      if (v5 >= (v2 - v1) >> 4)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, (v1 + v4));
      v10 = 0u;
      v9 = 0u;
      FrontendNNModule::update_phrasing_item(this, v8, 0, 0);
      Agglomerate::set<TokenPhrasingItem>(*(*(*(this + 5) + (((*(this + 9) + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(this + 72) + *(this + 64) - 1)), v8);
      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }

      ++v5;
      v1 = *(this + 44);
      v2 = *(this + 45);
      v4 += 16;
    }

    while (v5 < (v2 - v1) >> 4);
  }
}

void sub_1C302BE94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TokenPhrasingItem::~TokenPhrasingItem(va);
  _Unwind_Resume(a1);
}

void PronounceNNImpl::post_fix(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 495);
  if (v4 < 0)
  {
    if (*(a1 + 480) != 11)
    {
      goto LABEL_10;
    }

    v5 = *(a1 + 472);
  }

  else
  {
    v5 = (a1 + 472);
    if (v4 != 11)
    {
      goto LABEL_10;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 3);
  if (v6 != 0x6E2D6E6568707968 || v7 != 0x6873616E2D6E6568)
  {
LABEL_10:
    v9 = std::map<std::string,std::shared_ptr<FastRewriter>>::at(*(a1 + 216), (a1 + 144));
    (*(**v9 + 16))(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *a3 = __p;
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    goto LABEL_15;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10 = 0;
LABEL_22:
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = size - v10;
  if (size >= v10 && v14 >= 1)
  {
    v15 = p_p + size;
    v16 = p_p + v10;
    do
    {
      v17 = memchr(v16, 32, v14);
      if (!v17)
      {
        break;
      }

      if (*v17 == 32)
      {
        if (v17 != v15)
        {
          v18 = v17 - p_p;
          if (v18 != -1)
          {
            v19 = std::string::replace(&__p, v18, 1uLL, " # ");
            std::string::operator=(&__p, v19);
            v10 = v18 + 3;
            if (v18 != -4)
            {
              goto LABEL_22;
            }

            v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }
        }

        break;
      }

      v16 = v17 + 1;
      v14 = v15 - v16;
    }

    while (v15 - v16 >= 1);
  }

  if (v12 < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *a3 = __p;
  }

  v20 = 0;
LABEL_42:
  v21 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((v21 & 0x80u) == 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = a3->__r_.__value_.__r.__words[0];
  }

  if ((v21 & 0x80u) != 0)
  {
    v21 = a3->__r_.__value_.__l.__size_;
  }

  v23 = v21 - v20;
  if (v21 >= v20 && v23 >= 1)
  {
    v24 = (v22 + v21);
    v25 = (v22 + v20);
    do
    {
      v26 = memchr(v25, 45, v23);
      if (!v26)
      {
        break;
      }

      if (*v26 == 45)
      {
        if (v26 != v24)
        {
          v27 = &v26[-v22];
          if (v27 != -1)
          {
            v28 = std::string::replace(a3, v27, 1uLL, " ");
            std::string::operator=(a3, v28);
            v20 = v27 + 1;
            if (v27 != -2)
            {
              goto LABEL_42;
            }
          }
        }

        break;
      }

      v25 = v26 + 1;
      v23 = v24 - v25;
    }

    while (v24 - v25 >= 1);
  }

LABEL_15:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C302C17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PhonemeRepresentation::Word>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 3;
          v18 = v10;
          std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v18);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      std::vector<PhonemeRepresentation::Word>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Word *,PhonemeRepresentation::Word *,PhonemeRepresentation::Word *>(a2, a3, v9);
    v17 = a1[1];
    while (v17 != v16)
    {
      v17 -= 3;
      v18 = v17;
      std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v18);
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Word *,PhonemeRepresentation::Word *,PhonemeRepresentation::Word *>(a2, (a2 + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(a1, (a2 + v15), a3, a1[1]);
  }
}

__n128 Agglomerate::set<TokenPronunciationItem>(uint64_t a1, uint64_t a2)
{
  v6 = &v12;
  if (!v3)
  {
    operator new();
  }

  Agglomerate::ItemHolder<TokenPronunciationItem>::ItemHolder(&v6, a2);
  if (v3 != &v6)
  {
    std::vector<PhonemeRepresentation::Word>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>((v3 + 8), v7, v8, 0xAAAAAAAAAAAAAAABLL * (v8 - v7));
  }

  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  v4 = v9;
  *(v3 + 48) = v10;
  *(v3 + 32) = v4;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  *(v3 + 56) = v11;
  v6 = &unk_1F42F3568;
  v12 = &v7;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v12);
  return result;
}

uint64_t Agglomerate::ItemHolder<TokenPronunciationItem>::ItemHolder(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42F3568;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(a1 + 8, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 40);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = *(a2 + 48);
  return a1;
}

void sub_1C302C58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void FrontendNNModule::update_phrasing_item(FrontendNNModule *this, TokenPhrasingItem *a2, char a3, char a4)
{
  *a2 = a3;
  *(a2 + 1) = a4;
  v5 = *(this + 9);
  {
    operator new();
  }

  v8 = *(v7 + 40);
  if (*(v8 + 8) == 1)
  {
    operator new();
  }

  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 2);
  *(a2 + 1) = v10;
  *(a2 + 2) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(v8 + 9) == 1)
  {
    operator new();
  }

  v13 = *(v8 + 32);
  v12 = *(v8 + 40);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 4);
  *(a2 + 3) = v13;
  *(a2 + 4) = v12;
  if (v14)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void Agglomerate::set<TokenPhrasingItem>(uint64_t a1, uint64_t a2)
{
  v8 = &v12;
  if (!v3)
  {
    operator new();
  }

  Agglomerate::ItemHolder<TokenPhrasingItem>::ItemHolder(&v8, a2);
  *(v3 + 8) = v9;
  v4 = v10;
  v10 = 0uLL;
  v5 = *(v3 + 24);
  *(v3 + 16) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v11;
  v11 = 0uLL;
  v7 = *(v3 + 40);
  *(v3 + 32) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v8 = &unk_1F42F2A00;
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  else
  {
    v8 = &unk_1F42F2A00;
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }
}

uint64_t Agglomerate::ItemHolder<TokenPhrasingItem>::ItemHolder(uint64_t result, uint64_t a2)
{
  *result = &unk_1F42F2A00;
  *(result + 8) = *a2;
  v2 = *(a2 + 16);
  *(result + 16) = *(a2 + 8);
  *(result + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(result + 32) = *(a2 + 24);
  *(result + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t FrontendNNModule::is_last_chunk(FrontendNNModule *this)
{
  v1 = *(this + 45);
  if (*(this + 44) == v1)
  {
    v4 = 0;
  }

  else
  {
    v2 = *(v1 - 16);
    if (v2 + 8 == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(*(v3 + 40) + 8);
    }
  }

  return v4 & 1;
}

void std::vector<std::tuple<std::string,unsigned long,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::string,unsigned long,unsigned long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::string,unsigned long,unsigned long>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t PronounceNNImpl::postfix_alignment(void)::$_1::operator()(void *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = a2;
  v4 = a1[9];
  if (v4 <= *a2)
  {
LABEL_13:
    std::__throw_out_of_range[abi:ne200100]("deque");
  }

  v6 = a1[8];
  v7 = a1[5];
  v8 = *(*(v7 + (((v6 + *a2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v6 + *a2));
  if (v8 + 8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(v9 + 40) + 8);
  }

  v11 = 0;
  while (1)
  {
    if (v4 <= *v3)
    {
      goto LABEL_13;
    }

    v13 = *(v12 + 24);
    v11 += v13;
    v14 = v10[1];
    if (v11 > v14 || *(v12 + 16) + v13 > *v10 + v14)
    {
      return 1;
    }

    if (++v3 == a3)
    {
      return 0;
    }
  }
}

void PronounceNNImpl::postfix_alignment(void)::$_2::operator()(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 == v3)
  {
    return;
  }

  if (v3 - v2 == 8)
  {
    v5 = *v2;
    if (a1[9] > v5)
    {
      v6 = (*(a1[5] + (((a1[8] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v5));
      v7 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v8;
      *(v10 + 16) = *(v9 + 8);
      if (!v8)
      {
        return;
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      return;
    }

LABEL_158:
    std::__throw_out_of_range[abi:ne200100]("deque");
  }

  v12 = *(v3 - 8);
  if (a1[9] <= v12)
  {
    goto LABEL_158;
  }

  v14 = (*(a1[5] + (((a1[8] + v12) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v12));
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v123 = v15;
  if (v16 + 8 == v17)
  {
    v121 = 0;
  }

  else
  {
    v121 = (*(v17 + 40) + 8);
  }

  if (v16 + 8 == v18)
  {
    goto LABEL_154;
  }

  v120 = a1;
  v19 = a1 + 4;
  v122 = *(v18 + 40);
  std::deque<std::shared_ptr<Agglomerate>>::deque(&v132, a1 + 4);
  v119 = v16;
  memset(&v131, 0, sizeof(v131));
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v20 = *a2;
  v21 = *(a2 + 8) - *a2;
  v125 = a1 + 4;
  if (v21 == 8)
  {
    goto LABEL_89;
  }

  v22 = 0;
  v23 = v21 >> 3;
  v124 = 1;
  do
  {
    if (v23 <= v22)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v24 = v20[v22] - v22;
    if (v135.i64[1] <= v24)
    {
      std::__throw_out_of_range[abi:ne200100]("deque");
    }

    v25 = (*(v133 + (((v135.i64[0] + v24) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v135.i8[0] + v24));
    v26 = *v25;
    v27 = v25[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = v26 + 8;
    if (v26 + 8 == v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v28 + 40) + 8;
    }

    v32 = v31;
    if (v29 == v31)
    {
      v124 = 0;
      goto LABEL_84;
    }

    v126 = v31;
    v33 = *(v31 + 40);
    size = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v131.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::operator+<char>();
    }

    else if (*(v30 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v136, *(v30 + 24), *(v30 + 32));
    }

    else
    {
      v136 = *(v30 + 24);
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v136;
    }

    else
    {
      v35 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v136.__r_.__value_.__l.__size_;
    }

    std::string::append(&v131, v35, v36);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
      if (v22)
      {
LABEL_42:
        PhonemeEncoding::join_words(&v136, v128, v129, (v33 + 8));
        goto LABEL_45;
      }
    }

    else if (v22)
    {
      goto LABEL_42;
    }

    memset(&v136, 0, sizeof(v136));
    std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(&v136, *(v33 + 8), *(v33 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v33 + 16) - *(v33 + 8)) >> 3));
LABEL_45:
    std::vector<PhonemeRepresentation::Word>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(&v128, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3));
    v127.__r_.__value_.__r.__words[0] = &v136;
    std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v127);
    v37 = v133;
    v38 = v134;
    v39 = &v133[v135.i64[0] >> 8];
    if (v134 == v133)
    {
      v41 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](&v133[v135.i64[0] >> 8], 0, v24);
      v43 = 0;
    }

    else
    {
      v40 = 16 * v135.u8[0];
      v41 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](&v133[v135.i64[0] >> 8], *v39 + v40, v24);
      v43 = *v39 + v40;
    }

    if (v42 == v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = ((v42 - *v41) >> 4) + 32 * (v41 - v39) - ((v43 - *v39) >> 4);
    }

    v45 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](v39, v43, v44);
    v47 = v45;
    v48 = v46;
    v49 = (v46 - *v45) >> 4;
    if (v44 <= (v135.i64[1] - 1) >> 1)
    {
      if (v49 < 0)
      {
        v59 = 254 - v49;
        v53 = &v45[-(v59 >> 8)];
        v54 = *v53 + 16 * ~v59;
      }

      else
      {
        v52 = v49 + 1;
        v53 = &v45[v52 >> 8];
        v54 = *v53 + 16 * v52;
      }

      v32 = v126;
      if (v45 == v39)
      {
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v43, v46, v53, v54);
        v19 = v125;
      }

      else
      {
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, *v45, v46, v53, v54);
        v61 = v136.__r_.__value_.__r.__words[2];
        v60 = v136.__r_.__value_.__l.__size_;
        v62 = v47 - 1;
        if (v47 - 1 == v39)
        {
          v19 = v125;
        }

        else
        {
          v19 = v125;
          do
          {
            v63 = *v62--;
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v63, v63 + 4096, v60, v61);
            v61 = v136.__r_.__value_.__r.__words[2];
            v60 = v136.__r_.__value_.__l.__size_;
          }

          while (v62 != v39);
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v43, *v62 + 4096, v60, v61);
        v32 = v126;
      }

      v70 = *(v43 + 8);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      v135 = vaddq_s64(v135, xmmword_1C3844B60);
      if (v135.i64[0] >= 0x200uLL)
      {
        operator delete(*v133++);
        v135.i64[0] -= 256;
      }
    }

    else
    {
      if (v49 < 0)
      {
        v55 = 254 - v49;
        v50 = ~v55;
        v51 = &v45[-(v55 >> 8)];
      }

      else
      {
        v50 = v49 + 1;
        v51 = &v45[(v49 + 1) >> 8];
      }

      v56 = &(*v51)[v50];
      v57 = &v37[(v135.i64[0] + v135.i64[1]) >> 8];
      if (v38 == v37)
      {
        v58 = 0;
      }

      else
      {
        v58 = &(*v57)[(v135.i8[0] + v135.i8[8])];
      }

      v32 = v126;
      if (v51 == v57)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v56, v58, v45, v48);
        v68 = v136.__r_.__value_.__r.__words[2];
        v19 = v125;
      }

      else
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v56, *v51 + 256, v45, v48);
        v65 = v136.__r_.__value_.__r.__words[2];
        v64 = v136.__r_.__value_.__l.__size_;
        v66 = v51 + 1;
        if (v51 + 1 == v57)
        {
          v19 = v125;
        }

        else
        {
          v19 = v125;
          do
          {
            v67 = *v66++;
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, v67, v67 + 256, v64, v65);
            v65 = v136.__r_.__value_.__r.__words[2];
            v64 = v136.__r_.__value_.__l.__size_;
          }

          while (v66 != v57);
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(&v136, *v66, v58, v64, v65);
        v68 = v136.__r_.__value_.__r.__words[2];
        v32 = v126;
      }

      v69 = *(v68 + 8);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      --v135.i64[1];
      std::deque<std::shared_ptr<Agglomerate>>::__maybe_remove_back_spare[abi:ne200100](&v132);
    }

LABEL_84:
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v29 == v32)
    {
      break;
    }

    ++v22;
    v20 = *a2;
    v23 = (*(a2 + 8) - *a2) >> 3;
  }

  while (v23 - 1 > v22);
  if (v124)
  {
LABEL_89:
    if (v19 == &v132)
    {
      goto LABEL_124;
    }

    v71 = (v135.i64[0] >> 5) & 0x7FFFFFFFFFFFFF8;
    v72 = v133;
    if (v134 == v133)
    {
      v75 = 0;
      v73 = 0;
    }

    else
    {
      v73 = *(v133 + v71) + 16 * v135.u8[0];
      v74 = ((v135.i64[1] + v135.i64[0]) >> 5) & 0x7FFFFFFFFFFFFF8;
      if (*(v133 + v74) + 16 * (v135.i8[8] + v135.i8[0]) == v73)
      {
        v75 = 0;
      }

      else
      {
        v75 = ((v135.i8[8] + v135.i8[0]) | (32 * (v74 - v71))) - v135.u8[0];
        v76 = v120[9];
        if (v76 < v75)
        {
          v78 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100]((v133 + v71), *(v133 + v71) + 16 * v135.u8[0], v76);
          v79 = v77;
          v80 = v120[8];
          v81 = v120[5];
          v82 = (v81 + 8 * (v80 >> 8));
          if (v120[6] == v81)
          {
            v83 = 0;
          }

          else
          {
            v83 = *v82 + 16 * v80;
          }

          v136.__r_.__value_.__r.__words[0] = v82;
          v136.__r_.__value_.__l.__size_ = v83;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>>>((v72 + v71), v73, v78, v77, &v136.__r_.__value_.__l.__data_);
          std::deque<std::shared_ptr<Agglomerate>>::__append_with_size[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>>(v125, v78, v79, v75 - v120[9]);
          goto LABEL_124;
        }
      }
    }

    v84 = v120[8];
    v85 = v120[5];
    v86 = (v85 + 8 * (v84 >> 8));
    if (v120[6] == v85)
    {
      v87 = 0;
    }

    else
    {
      v87 = *v86 + 16 * v84;
    }

    v88 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100]((v133 + v71), v73, v75);
    v136.__r_.__value_.__r.__words[0] = v86;
    v136.__r_.__value_.__l.__size_ = v87;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>>>((v72 + v71), v73, v88, v89, &v136.__r_.__value_.__l.__data_);
    v90 = v120[8];
    v91 = v120[9];
    v92 = v120[5];
    v93 = v120[6];
    v94 = (v92 + 8 * ((v90 + v91) >> 8));
    if (v93 == v92)
    {
      v95 = 0;
    }

    else
    {
      v95 = *v94 + 16 * (v90 + v91);
    }

    if (v95 != v136.__r_.__value_.__l.__size_)
    {
      v96 = ((v95 - *v94) >> 4) + 32 * (v94 - v136.__r_.__value_.__r.__words[0]);
      v97 = v136.__r_.__value_.__l.__size_ - *v136.__r_.__value_.__l.__data_;
      v98 = v96 - (v97 >> 4);
      if (v98 >= 1)
      {
        v99 = (v92 + 8 * (v90 >> 8));
        if (v93 == v92)
        {
          v100 = 0;
        }

        else
        {
          v100 = *v99 + 16 * v90;
        }

        if (v136.__r_.__value_.__l.__size_ == v100)
        {
          v101 = 0;
        }

        else
        {
          v101 = (v97 >> 4) + 32 * (v136.__r_.__value_.__r.__words[0] - v99) - ((v100 - *v99) >> 4);
        }

        v102 = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](v99, v100, v101);
        if (v103 != v95)
        {
          v104 = v102;
          v105 = v103;
          do
          {
            v106 = *(v105 + 8);
            if (v106)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v106);
            }

            v105 += 16;
            if (v105 - *v104 == 4096)
            {
              v107 = v104[1];
              ++v104;
              v105 = v107;
            }
          }

          while (v105 != v95);
          v91 = v120[9];
        }

        v120[9] = v91 - v98;
          ;
        }
      }
    }

LABEL_124:
    v109 = *v121;
    *(v108 + 16) = *v121;
    v110 = v121[1];
    *(v108 + 24) = v110;
    *(v122 + 56) = v109;
    *(v122 + 64) = v110;
    PhonemeEncoding::join_words(&v136, v128, v129, (v122 + 8));
    if ((v122 + 8) != &v136)
    {
      std::vector<PhonemeRepresentation::Word>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>((v122 + 8), v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v136.__r_.__value_.__l.__size_ - v136.__r_.__value_.__r.__words[0]) >> 3));
    }

    v127.__r_.__value_.__r.__words[0] = &v136;
    std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v127);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v111 = v131.__r_.__value_.__l.__size_;
    }

    if (v111)
    {
      v112 = &v127;
      std::string::basic_string[abi:ne200100](&v127, v111 + 1);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v112 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v113 = &v131;
      }

      else
      {
        v113 = v131.__r_.__value_.__r.__words[0];
      }

      memmove(v112, v113, v111);
      *(&v112->__r_.__value_.__l.__data_ + v111) = 32;
      v114 = *(v108 + 55);
      if (v114 >= 0)
      {
        v115 = (v108 + 32);
      }

      else
      {
        v115 = *(v108 + 32);
      }

      if (v114 >= 0)
      {
        v116 = *(v108 + 55);
      }

      else
      {
        v116 = *(v108 + 40);
      }

      v117 = std::string::append(&v127, v115, v116);
      v118 = *&v117->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v118;
      v117->__r_.__value_.__l.__size_ = 0;
      v117->__r_.__value_.__r.__words[2] = 0;
      v117->__r_.__value_.__r.__words[0] = 0;
    }

    else if (*(v108 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v136, *(v108 + 32), *(v108 + 40));
    }

    else
    {
      v136 = *(v108 + 32);
    }

    if (*(v108 + 55) < 0)
    {
      operator delete(*(v108 + 32));
    }

    *(v108 + 32) = v136;
    *(&v136.__r_.__value_.__s + 23) = 0;
    v136.__r_.__value_.__s.__data_[0] = 0;
    if (v111 && SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    std::string::operator=((v122 + 32), (v108 + 32));
  }

  v136.__r_.__value_.__r.__words[0] = &v128;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v136);
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](&v132);
LABEL_154:
  v11 = v123;
  if (v123)
  {
    goto LABEL_7;
  }
}

void sub_1C302D698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  *(v34 - 128) = &a25;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100]((v34 - 128));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::deque<std::shared_ptr<Agglomerate>>::~deque[abi:ne200100](&a34);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::deque<std::shared_ptr<Agglomerate>>::__append_with_size[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>>(void *a1, void *a2, void *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = v9 - v8;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 32 * (v9 - v8) - 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      v19 = (v18 >> 8) + 1;
    }

    else
    {
      v19 = v18 >> 8;
    }

    if (v19 >= v13 >> 8)
    {
      v20 = v13 >> 8;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 >> 8)
    {
      for (a1[4] = v13 - (v20 << 8); v20; --v20)
      {
        v28 = a1[1];
        v39[0] = *v28;
        a1[1] = v28 + 1;
        std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(a1, v39);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = a1[3] - *a1;
      if (v21 > (v22 >> 3) - (v10 >> 3))
      {
        v23 = v10 >> 3;
        v24 = v22 >> 2;
        v25 = v21 + (v10 >> 3);
        if (v24 <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        v27 = v23 - v20;
        v41 = a1;
        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v26);
        }

        v39[0] = 0;
        v39[1] = 8 * v27;
        v40 = 8 * v27;
        operator new();
      }

      if (v21)
      {
        if (a1[3] != a1[2])
        {
          operator new();
        }

        operator new();
      }

      for (a1[4] = v13 - (v20 << 8); v20; --v20)
      {
        v29 = a1[1];
        v39[0] = *v29;
        a1[1] = v29 + 1;
        std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(a1, v39);
      }
    }

    v12 = a1[5];
    v8 = a1[1];
    v9 = a1[2];
    v14 = a1[4] + v12;
  }

  v30 = (v8 + 8 * (v14 >> 8));
  if (v9 == v8)
  {
    v31 = 0;
  }

  else
  {
    v31 = *v30 + 16 * v14;
  }

  result = std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](v30, v31, a4);
  if (v31 != v33)
  {
    do
    {
      if (v30 == result)
      {
        v34 = v33;
      }

      else
      {
        v34 = *v30 + 4096;
      }

      if (v31 == v34)
      {
        v34 = v31;
      }

      else
      {
        v35 = v31;
        do
        {
          *v35 = *a3;
          v36 = a3[1];
          v35[1] = v36;
          if (v36)
          {
            atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
          }

          a3 += 2;
          if ((a3 - *a2) == 4096)
          {
            v37 = a2[1];
            ++a2;
            a3 = v37;
          }

          v35 += 2;
        }

        while (v35 != v34);
        v12 = a1[5];
      }

      v12 += (v34 - v31) >> 4;
      a1[5] = v12;
      if (v30 == result)
      {
        break;
      }

      v38 = v30[1];
      ++v30;
      v31 = v38;
    }

    while (v38 != v33);
  }

  return result;
}

void sub_1C302DBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::shared_ptr<Agglomerate>>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = (v3 >> 5) & 0x7FFFFFFFFFFFFF8;
  v5 = a2[1];
  if (a2[2] == v5)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = (*(v5 + v4) + 16 * v3);
  v7 = a2[5] + v3;
  v8 = (v7 >> 5) & 0x7FFFFFFFFFFFFF8;
  if ((*(v5 + v8) + 16 * v7) == v6)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = ((*(a2 + 40) + v3) | (32 * (v8 - v4))) - a2[4];
LABEL_6:
  std::deque<std::shared_ptr<Agglomerate>>::__append_with_size[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>>(a1, (v5 + v4), v6, v9);
  return a1;
}

uint64_t *std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>::operator+[abi:ne200100](uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
      v5 = *result;
    }

    else
    {
      result += v3 >> 8;
      v4 = *result;
    }
  }

  return result;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> *,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> *,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate> **,long,256l>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a2) >> 4;
      }

      if (v13)
      {
        v14 = -16 * v13;
        v15 = (v11 - 16);
        do
        {
          v16 = *v15;
          *v15 = 0;
          *(v15 + 1) = 0;
          v17 = *(a5 - 8);
          *(a5 - 16) = v16;
          a5 -= 16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          --v15;
          v14 += 16;
        }

        while (v14);
      }

      v11 -= 16 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = v18 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = a5;
}

void PhonemeEncoding::join_words(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v64 = *a4;
    v65 = a4[1];
    v66 = 0xAAAAAAAAAAAAAAABLL * ((v65 - *a4) >> 3);

    std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(a1, v64, v65, v66);
  }

  else
  {
    v6 = *a4;
    v7 = a4[1];
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(a1, a2, a3, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3));
    if (v6 != v7)
    {
      v8 = *(a4[1] - 24);
      if (*(a4[1] - 16) != v8)
      {
        v9 = 0;
        do
        {
          v10 = (v8 + (v9 << 6));
          v11 = a1[1];
          v12 = *(v11 - 16);
          if (v9)
          {
            v13 = *(v11 - 8);
            if (v12 >= v13)
            {
              v19 = *(v11 - 24);
              v20 = (v12 - v19) >> 6;
              if ((v20 + 1) >> 58)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v21 = v13 - v19;
              v22 = v21 >> 5;
              if (v21 >> 5 <= (v20 + 1))
              {
                v22 = v20 + 1;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFC0)
              {
                v23 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              v75 = v11 - 24;
              if (v23)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(v23);
              }

              v72 = 0;
              v73 = (v20 << 6);
              v74 = (v20 << 6);
              std::allocator_traits<std::allocator<PhonemeRepresentation::Syllable>>::construct[abi:ne200100]<PhonemeRepresentation::Syllable,PhonemeRepresentation::Syllable const&,0>(v20 << 6, v10);
              *&v74 = v74 + 64;
              v29 = *(v11 - 24);
              v30 = *(v11 - 16);
              v31 = v73 + v29 - v30;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*>(v11 - 24, v29, v30, v31);
              v32 = *(v11 - 24);
              *(v11 - 24) = v31;
              v73 = v32;
              v33 = *(v11 - 8);
              v67 = v74;
              *&v74 = v32;
              *(v11 - 16) = v67;
              *(&v74 + 1) = v33;
              v72 = v32;
              std::__split_buffer<PhonemeRepresentation::Syllable>::~__split_buffer(&v72);
              v14 = v67;
            }

            else
            {
              std::allocator_traits<std::allocator<PhonemeRepresentation::Syllable>>::construct[abi:ne200100]<PhonemeRepresentation::Syllable,PhonemeRepresentation::Syllable const&,0>(*(v11 - 16), v10);
              v14 = v12 + 64;
              *(v11 - 16) = v12 + 64;
            }

            *(v11 - 16) = v14;
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "#");
            v15 = *(v12 - 40);
            v16 = *(v12 - 32);
            if (v15 >= v16)
            {
              v24 = *(v12 - 48);
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v24) >> 3);
              v26 = v25 + 1;
              if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v24) >> 3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x555555555555555)
              {
                v28 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              v75 = v12 - 48;
              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(v28);
              }

              v34 = 24 * v25;
              v72 = 0;
              v73 = v34;
              *(&v74 + 1) = 0;
              v35 = *__p;
              *(v34 + 16) = v70;
              *v34 = v35;
              __p[1] = 0;
              v70 = 0;
              __p[0] = 0;
              *&v74 = 24 * v25 + 24;
              v36 = *(v12 - 48);
              v37 = *(v12 - 40);
              v38 = 24 * v25 + v36 - v37;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(v12 - 48, v36, v37, v38);
              v39 = *(v12 - 48);
              *(v12 - 48) = v38;
              v73 = v39;
              v40 = *(v12 - 32);
              v68 = v74;
              *&v74 = v39;
              *(v12 - 40) = v68;
              *(&v74 + 1) = v40;
              v72 = v39;
              std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(&v72);
              v18 = v68;
            }

            else
            {
              v17 = *__p;
              *(v15 + 16) = v70;
              *v15 = v17;
              v18 = v15 + 24;
              __p[1] = 0;
              v70 = 0;
              __p[0] = 0;
            }

            *(v12 - 40) = v18;
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }

            v41 = v10[2];
            v42 = v10[3];
            v43 = v42 - v41;
            if (v42 - v41 >= 1)
            {
              v44 = *(a1[1] - 16);
              v46 = v44 - 48;
              v45 = *(v44 - 48);
              v48 = *(v44 - 40);
              v47 = *(v44 - 32);
              if (v47 - v48 >= v43)
              {
                __p[0] = *(v44 - 40);
                v71 = v48;
                v72 = (v44 - 48);
                v73 = &v71;
                *&v74 = __p;
                BYTE8(v74) = 0;
                if (v42 != v41)
                {
                  v54 = v48;
                  do
                  {
                    if (*(v41 + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(v54, *v41, *(v41 + 8));
                      v54 = __p[0];
                    }

                    else
                    {
                      v55 = *v41;
                      v54->__r_.__value_.__r.__words[2] = *(v41 + 16);
                      *&v54->__r_.__value_.__l.__data_ = v55;
                    }

                    v41 += 24;
                    __p[0] = ++v54;
                  }

                  while (v41 != v42);
                  v48 = v54;
                }

                BYTE8(v74) = 1;
                std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](&v72);
                *(v44 - 40) = v48;
              }

              else
              {
                v49 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v45) >> 3);
                v50 = v49 - 0x5555555555555555 * (v43 >> 3);
                if (v50 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v51 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3);
                v52 = 2 * v51;
                if (2 * v51 <= v50)
                {
                  v52 = v49 - 0x5555555555555555 * (v43 >> 3);
                }

                if (v51 >= 0x555555555555555)
                {
                  v53 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v53 = v52;
                }

                v75 = v44 - 48;
                if (v53)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(v53);
                }

                v56 = 24 * v49;
                v72 = 0;
                v73 = v56;
                v74 = v56;
                v57 = v56 + v43;
                do
                {
                  if (*(v41 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(v56, *v41, *(v41 + 8));
                  }

                  else
                  {
                    v58 = *v41;
                    *(v56 + 16) = *(v41 + 16);
                    *v56 = v58;
                  }

                  v56 += 24;
                  v41 += 24;
                  v43 -= 24;
                }

                while (v43);
                *&v74 = v57;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(v46, v48, *(v44 - 40), v57);
                *&v74 = v74 + *(v44 - 40) - v48;
                *(v44 - 40) = v48;
                v59 = *(v44 - 48);
                v60 = v73 + v59 - v48;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(v46, v59, v48, v60);
                v73 = v60;
                v61 = *(v44 - 48);
                *(v44 - 40) = v61;
                *(v44 - 48) = v73;
                v73 = v61;
                v62 = *(v44 - 40);
                *(v44 - 40) = v74;
                *&v74 = v62;
                v63 = *(v44 - 32);
                *(v44 - 32) = *(&v74 + 1);
                *(&v74 + 1) = v63;
                v72 = v73;
                std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(&v72);
              }
            }
          }

          ++v9;
          v8 = *(a4[1] - 24);
        }

        while (v9 < (*(a4[1] - 16) - v8) >> 6);
      }
    }
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 16;
    do
    {
      v7 = v5 - 16;
      v6 = *(v5 - 16);
      *(a3 + 8) = *(v5 - 8);
      *a3 = v6;
      if (a3 != v5 - 16)
      {
        std::vector<PhonemeRepresentation::Phoneme>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>((a3 + 16), *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 3));
      }

      std::string::operator=((a3 + 40), (v5 + 24));
      a3 += 64;
      v5 += 64;
    }

    while (v7 + 64 != a2);
  }

  return a3;
}

void std::vector<PhonemeRepresentation::Syllable>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    std::vector<PhonemeRepresentation::Syllable>::__vdeallocate(a1);
    if (!(a4 >> 58))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<PhonemeRepresentation::Syllable>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 6)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *>(a2, a3, v8);
    for (i = *(a1 + 8); i != v13; std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](i))
    {
      i -= 64;
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *,PhonemeRepresentation::Syllable *>(a2, a2 + v12, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(a1, a2 + v12, a3, *(a1 + 8));
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Word *,PhonemeRepresentation::Word *,PhonemeRepresentation::Word *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<PhonemeRepresentation::Syllable>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(a3, *v5, v5[1], (v5[1] - *v5) >> 6);
      }

      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<PhonemeRepresentation::Phoneme>::__assign_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
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

      std::vector<PhonemeRepresentation::Phoneme>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
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
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(a1, (v6 + v12), a3, end);
  }
}

void std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> const*,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>,0>(char **a1, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v13 = a2;
    goto LABEL_19;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = (a3 - v7) >> 4 >= v11 >> 4 ? v11 >> 4 : (a3 - v7) >> 4;
    if (v12)
    {
      break;
    }

LABEL_15:
    v17 = *(v6 + 1);
    v6 += 8;
    v10 = v17;
    a5 = v17;
  }

  v13 = &v7[16 * v12];
  do
  {
    v15 = *v7;
    v14 = *(v7 + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(a5 + 1);
    *a5 = v15;
    *(a5 + 1) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v7 += 16;
    a5 += 16;
  }

  while (v7 != v13);
  if (v13 != a3)
  {
    v7 = v13;
    goto LABEL_15;
  }

  if ((*v6 + 4096) == a5)
  {
    v18 = *(v6 + 1);
    v6 += 8;
    a5 = v18;
  }

LABEL_19:
  *a1 = v13;
  a1[1] = v6;
  a1[2] = a5;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate> const*,std::shared_ptr<Agglomerate> const&,std::shared_ptr<Agglomerate> const* const*,long,256l>,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>>>(char **a1, char *a2, char **a3, char *a4, char **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = *a1 + 4096; ; i = v12 + 4096)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> const*,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>,0>(&v14, a2, i, v7, v8);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Agglomerate> const*,std::__deque_iterator<std::shared_ptr<Agglomerate>,std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>&,std::shared_ptr<Agglomerate>**,long,256l>,0>(&v14, a2, a4, v7, v8);
  result = *&v15;
  *a5 = v15;
  return result;
}

void Agglomerate::ItemHolder<TokenPronunciationItem>::~ItemHolder(uint64_t a1)
{
  *a1 = &unk_1F42F3568;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = (a1 + 8);
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x1C692AE10);
}

void Agglomerate::ItemHolder<TokenPhrasingItem>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F2A00;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1C692AE10);
}

BOOL std::deque<std::shared_ptr<Agglomerate>>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 32 * (v1 - v2) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x200)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x1FF;
}

__n128 Agglomerate::set<TokenExtractionItem>(uint64_t a1, uint64_t *a2)
{
  v5[0] = &v8;
  if (!v3)
  {
    operator new();
  }

  Agglomerate::ItemHolder<TokenExtractionItem>::ItemHolder(v5, a2);
  *(v3 + 8) = v5[1];
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  result = v6;
  *(v3 + 32) = v7;
  *(v3 + 16) = result;
  return result;
}

uint64_t Agglomerate::ItemHolder<TokenExtractionItem>::ItemHolder(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = &unk_1F42E4990;
  *(a1 + 8) = v3;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[1], a2[2]);
  }

  else
  {
    v4 = *(a2 + 1);
    *(a1 + 32) = a2[3];
    *(a1 + 16) = v4;
  }

  return a1;
}

void std::vector<PhonemeRepresentation::Word>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PhonemeRepresentation::Word const*>,std::__wrap_iter<PhonemeRepresentation::Word const*>>(void ***a1, void **a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<PhonemeRepresentation::Word>::__move_range(a1, a2, a1[1], &a2[3 * a5]);

        std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Word const*,PhonemeRepresentation::Word const*,PhonemeRepresentation::Word*>(v6, &v6[v19], a2);
      }

      else
      {
        v33 = a1[1];
        v34 = v10;
        v28 = a1;
        v29 = &v33;
        v30 = &v34;
        v17 = v10;
        LOBYTE(v31) = 0;
        if ((a3 + v15) != a4)
        {
          v17 = v10;
          v18 = (a3 + v15);
          do
          {
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(v17, *v18, v18[1], (v18[1] - *v18) >> 6);
            v18 += 3;
            v17 = (v34 + 24);
            v34 += 24;
          }

          while (v18 != a4);
        }

        a1[1] = v17;
        if (v15 >= 1)
        {
          std::vector<PhonemeRepresentation::Word>::__move_range(a1, a2, v10, &a2[3 * a5]);
          std::__copy_impl::operator()[abi:ne200100]<PhonemeRepresentation::Word const*,PhonemeRepresentation::Word const*,PhonemeRepresentation::Word*>(v6, (v6 + v15), a2);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * (v9 - v11);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v32 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(v14);
      }

      v20 = (8 * (a2 - v11));
      v28 = 0;
      v29 = v20;
      v30 = v20;
      v31 = 0;
      v21 = &v20[3 * a5];
      v22 = 24 * a5;
      do
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(v20, *v6, v6[1], (v6[1] - *v6) >> 6);
        v20 += 3;
        v6 += 3;
        v22 -= 24;
      }

      while (v22);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(a1, a2, a1[1], v21);
      v23 = *a1;
      v24 = (v21 + a1[1] - a2);
      a1[1] = a2;
      v25 = (v29 + v23 - a2);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(a1, v23, a2, v25);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v24;
      v27 = a1[2];
      a1[2] = v31;
      v30 = v26;
      v31 = v27;
      v28 = v26;
      v29 = v26;
      std::__split_buffer<PhonemeRepresentation::Word>::~__split_buffer(&v28);
    }
  }
}

void sub_1C302EEC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void PhonemeEncodingLegacy::phoneme_string(uint64_t a1@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *a2;
  v21 = a2[1];
  if (*a2 != v21)
  {
    for (i = 0; ; ++i)
    {
      if (i)
      {
        std::string::append(a3, " _");
      }

      v8 = *v4;
      v7 = v4[1];
      if (*v4 != v7)
      {
        break;
      }

LABEL_39:
      v4 += 3;
      if (v4 == v21)
      {
        return;
      }
    }

    v9 = 0;
LABEL_7:
    if (v9)
    {
      std::string::append(a3, " .");
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    while (1)
    {
      if (v11 == v10)
      {
        ++v9;
        v8 += 64;
        if (v8 == v7)
        {
          goto LABEL_39;
        }

        goto LABEL_7;
      }

      v12 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v12 & 0x8000000000000000) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
        if (!size)
        {
          goto LABEL_28;
        }

        v13 = a3->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&a3->__r_.__value_.__s + 23))
        {
          goto LABEL_28;
        }

        v13 = a3;
        size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      if (v13->__r_.__value_.__s.__data_[size - 1] != 46)
      {
        break;
      }

      v15 = *(v11 + 23);
      if (v15 < 0)
      {
        if (*(v11 + 8) != 1)
        {
          break;
        }

        v16 = *v11;
      }

      else
      {
        v16 = v11;
        if (v15 != 1)
        {
          break;
        }
      }

      if (*v16 != 35)
      {
        break;
      }

      v17 = a3->__r_.__value_.__r.__words[0];
      if ((v12 & 0x80000000) != 0)
      {
        v12 = a3->__r_.__value_.__l.__size_;
      }

      else
      {
        v17 = a3;
      }

      v17->__r_.__value_.__s.__data_[v12 - 1] = 35;
LABEL_37:
      v11 += 24;
    }

    std::string::push_back(a3, 32);
LABEL_28:
    v18 = *(v11 + 23);
    if (v18 >= 0)
    {
      v19 = v11;
    }

    else
    {
      v19 = *v11;
    }

    if (v18 >= 0)
    {
      v20 = *(v11 + 23);
    }

    else
    {
      v20 = *(v11 + 8);
    }

    std::string::append(a3, v19, v20);
    if (*v8)
    {
      if (std::__tree<std::string>::__count_unique<std::string>(a1 + 144, v11))
      {
        std::string::push_back(a3, 58);
      }
    }

    goto LABEL_37;
  }
}

void sub_1C302F0A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GryphonAnalysis::Storage(GryphonAnalysis *this)
{
  {
    NeverDestructed<GryphonAnalysis::Variables>::NeverDestructed<>();
  }

  return GryphonAnalysis::Storage(void)::s;
}

void ExtractFeaturesImpl::punctuation(std::string *this, uint64_t a2, uint64_t a3)
{
  do
  {
    (*(**(a2 + 16) + 16))(&v13);
    v6 = v13;
    {
      v11 = 3;
    }

    else
    {
      v9 = *(v7 + 40);
      if (*(v9 + 8) == 1886809699)
      {
        if (*(v9 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(this, *(v9 + 32), *(v9 + 40));
        }

        else
        {
          v10 = *(v9 + 32);
          this->__r_.__value_.__r.__words[2] = *(v9 + 48);
          *&this->__r_.__value_.__l.__data_ = v10;
        }

        v11 = 1;
      }

      else
      {
        if (v8 == v12)
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }

        if (v8 == v12)
        {
          ++a3;
        }
      }
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  while (v11 == 2);
  if (v11 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(this, "");
  }
}

void sub_1C302F280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ExtractFeaturesToPipeline::extract_word_features(ExtractFeaturesToPipeline *this, const std::string *a2)
{
  v27 = 0u;
  memset(&__p, 0, sizeof(__p));
  *v25 = 0u;
  *v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  v20[0] = *(this + 84);
  v4 = *(this + 74);
  if (v4)
  {
    LODWORD(v4) = *v4;
  }

  v20[1] = v4;
  v21 = a2->__r_.__value_.__r.__words[0];
  std::string::operator=(v22, a2 + 3);
  std::string::operator=(&v23[1], a2 + 1);
  std::string::operator=(v25, a2 + 4);
  std::string::operator=(&__p, a2 + 6);
  v5 = (this + 808);
  v6 = *(this + 101);
  v7 = *(this + 102);
  if (v6 >= v7)
  {
    v9 = *(this + 100);
    v10 = 0xF0F0F0F0F0F0F0F1 * ((v6 - v9) >> 3);
    if (v10 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xF0F0F0F0F0F0F0F1 * ((v7 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0xF0F0F0F0F0F0F0)
    {
      v13 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v13 = v12;
    }

    v32 = this + 800;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<WordFeature>>(v13);
    }

    v29 = 0;
    v30 = 136 * v10;
    v31 = 136 * v10;
    WordFeature::WordFeature(136 * v10, v20);
    *&v31 = v31 + 136;
    v14 = *(this + 101);
    v15 = *(this + 100);
    v16 = v30 + v15 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WordFeature>,WordFeature*>(this + 800, v15, v14, v16);
    v17 = *(this + 100);
    *(this + 100) = v16;
    v18 = *(this + 102);
    v19 = v31;
    *v5 = v31;
    *&v31 = v17;
    *(&v31 + 1) = v18;
    v29 = v17;
    v30 = v17;
    std::__split_buffer<WordFeature>::~__split_buffer(&v29);
    v8 = v19;
  }

  else
  {
    WordFeature::WordFeature(*(this + 101), v20);
    v8 = v6 + 136;
    *v5 = v6 + 136;
  }

  *v5 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_1C302F4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<WordFeature>::~__split_buffer(v3 - 72);
  WordFeature::~WordFeature(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<WordFeature>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t WordFeature::WordFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
  }

  return a1;
}

void sub_1C302F628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WordFeature>,WordFeature*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v9;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      v10 = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 88) = v10;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      v11 = *(v6 + 112);
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 112) = v11;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      v6 += 136;
      a4 += 136;
    }

    while (v6 != a3);
    v16 = a4;
    v14 = 1;
    do
    {
      std::allocator_traits<std::allocator<WordFeature>>::destroy[abi:ne200100]<WordFeature,0>(v5);
      v5 += 136;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<WordFeature>,WordFeature*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<WordFeature>,WordFeature*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 72));
      }

      if (*(v3 - 73) < 0)
      {
        operator delete(*(v3 - 96));
      }

      if (*(v3 - 97) < 0)
      {
        operator delete(*(v3 - 120));
      }

      v3 -= 136;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<WordFeature>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 136;
    std::allocator_traits<std::allocator<WordFeature>>::destroy[abi:ne200100]<WordFeature,0>(v3 - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

int64x2_t ExtractFeaturesImpl::extract_silence(ExtractFeaturesImpl *this, uint64_t a2)
{
  *(this + 696) = 0;
  *(this + 81) = 0;
  *(this + 77) = 1;
  *(this + 83) = 0;
  *(this + 78) = 1;
  MEMORY[0x1C692A640](this + 400, "SIL");
  MEMORY[0x1C692A640](this + 424, "null");
  *(this + 700) = 0;
  std::string::basic_string[abi:ne200100]<0>(v7, "sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*this + 160))(this, v7, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  result = vaddq_s64(*(this + 680), vdupq_n_s64(1uLL));
  *(this + 680) = result;
  return result;
}

void sub_1C302F98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void ExtractFeaturesToPipeline::extract_phon_pronunciation(uint64_t a1, const std::string *a2, unsigned int a3, std::string *__str)
{
  memset(&v50, 0, sizeof(v50));
  v51 = 0;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  v52 = v7;
  v53 = v7;
  v54 = 0x8000000080000000;
  v55 = 0u;
  *v56 = 0u;
  v57 = 0u;
  memset(&__p, 0, sizeof(__p));
  v59 = v7;
  *v60 = v7;
  *&v60[16] = v7;
  v61 = v7;
  v62 = 0x7FFFFFFF;
  std::string::operator=(&__p, __str);
  std::vector<MarkerRecord>::__vdeallocate(&v55);
  v55 = *(a1 + 928);
  v56[0] = *(a1 + 944);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  std::vector<MarkerRecord>::clear[abi:ne200100]((a1 + 928));
  *&v52 = a3;
  DWORD2(v52) = *(a1 + 696);
  v8 = *(a1 + 664);
  if (v8 == *(a1 + 624) - 1)
  {
    if (*(a1 + 648) == *(a1 + 616) - 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }
  }

  else if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = *(a1 + 648) != 0;
  }

  HIDWORD(v52) = v9;
  v10 = *(a1 + 600);
  if (v10 && ((v11 = *(a1 + 616), (v12 = *(v10 + 16) - 1) != 0) || v11 != 1))
  {
    v24 = *(a1 + 648);
    if (v24 == v11 - 1)
    {
      if (*(a1 + 640) == v12)
      {
        v25 = *(a1 + 608);
        if (v25 && *(a1 + 632) != *(v25 + 24) - 1)
        {
          LODWORD(v13) = 1;
        }

        else
        {
          LODWORD(v13) = 3;
        }
      }

      else
      {
        LODWORD(v13) = 6;
      }
    }

    else if (v24)
    {
      LODWORD(v13) = 5;
    }

    else
    {
      v13 = *(a1 + 640);
      if (v13)
      {
        LODWORD(v13) = 4;
      }
    }
  }

  else
  {
    LODWORD(v13) = 2;
  }

  LODWORD(v53) = v13;
  v14 = *(*(*(a1 + 488) + 48) + 276) - 7;
  if (v14 > 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = dword_1C38583CC[v14];
  }

  DWORD1(v53) = v15;
  std::string::operator=(&v50, a2);
  v16 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v16 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 3)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }

    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else if (v16 != 3)
  {
    goto LABEL_26;
  }

  v18 = LOWORD(a2->__r_.__value_.__l.__data_) == 26995 && a2->__r_.__value_.__s.__data_[2] == 108;
LABEL_27:
  v51 = v18;
  v19 = *(a1 + 648);
  v20 = *(a1 + 640);
  *&v59 = __PAIR64__(v20, v19);
  *v60 = 0;
  *(&v59 + 1) = DWORD2(v52) != 0;
  if (v18)
  {
    v21 = 0;
    v22 = 0;
    *&v60[28] = 0;
    memset(&v60[4], 0, 20);
LABEL_58:
    v32 = 0;
    LODWORD(v61) = 0;
    v30 = *(a1 + 600);
    goto LABEL_59;
  }

  v23 = *(a1 + 664);
  *&v60[4] = v23 == 0;
  if (v23)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19 == 0;
    HIDWORD(v59) = v22;
  }

  v26 = *(a1 + 624) - 1;
  *&v60[12] = v23 == v26;
  if (v23 == v26)
  {
    v21 = v19 == *(a1 + 616) - 1;
    *v60 = v21;
  }

  else
  {
    v21 = 0;
  }

  if (v23)
  {
    v27 = v23 == v26;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  *&v60[8] = v28;
  *&v60[16] = 0;
  if (v19)
  {
    v29 = 0;
    *&v60[28] = 0;
  }

  else
  {
    *&v60[28] = v20 == 0;
    if (v20)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 632) == 0;
    }
  }

  *&v60[20] = v29;
  if (v19 != *(a1 + 616) - 1)
  {
    goto LABEL_58;
  }

  v30 = *(a1 + 600);
  if (v30)
  {
    v31 = *(v30 + 16) - 1;
    LODWORD(v61) = v20 == v31;
    if (v20 != v31)
    {
      *&v60[24] = 0;
      goto LABEL_61;
    }
  }

  else
  {
    LODWORD(v61) = 1;
  }

  v48 = *(a1 + 608);
  if (v48)
  {
    v32 = *(a1 + 632) == *(v48 + 24) - 1;
  }

  else
  {
    v32 = 1;
  }

LABEL_59:
  *&v60[24] = v32;
  if (!v30)
  {
    v33 = 1;
LABEL_64:
    v34 = *(a1 + 608);
    if (v34 && *(a1 + 632) != *(v34 + 24) - 1)
    {
      v35 = 4;
    }

    else
    {
      v35 = 5;
    }

    DWORD1(v61) = v35;
    if (!v20)
    {
      goto LABEL_79;
    }

    if (v33)
    {
LABEL_74:
      LODWORD(v20) = 2;
      goto LABEL_79;
    }

    v31 = *(v30 + 16) - 1;
    goto LABEL_73;
  }

  v31 = *(v30 + 16) - 1;
LABEL_61:
  if (v20 == v31)
  {
    v33 = 0;
    goto LABEL_64;
  }

  if (!v20)
  {
    if (*(a1 + 632) || (v49 = *(a1 + 608)) == 0 || *(v49 + 24) == 1)
    {
      v36 = 3;
    }

    else
    {
      v36 = 1;
    }

    LODWORD(v20) = 0;
    DWORD1(v61) = v36;
    goto LABEL_79;
  }

  DWORD1(v61) = 2;
LABEL_73:
  if (v20 == v31)
  {
    goto LABEL_74;
  }

  LODWORD(v20) = 1;
LABEL_79:
  *(&v61 + 1) = __PAIR64__(v22, v20);
  v62 = v21;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v50.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_88;
    }

    v37 = v50.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) != 3)
    {
      goto LABEL_88;
    }

    v37 = &v50;
  }

  data_low = LOWORD(v37->__r_.__value_.__l.__data_);
  v39 = v37->__r_.__value_.__s.__data_[2];
  if (data_low == 26995 && v39 == 108)
  {
    v44 = 3;
    goto LABEL_94;
  }

LABEL_88:
  v41 = *(a1 + 576);
  if (v41 + 8 == v42 || (v43 = *(a1 + 608)) != 0 && *(a1 + 632) != *(v43 + 24) - 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = *(*(v42 + 40) + 8);
  }

LABEL_94:
  v45 = *(a1 + 700);
  *(&v53 + 1) = __PAIR64__(*(a1 + 704), v44);
  LODWORD(v54) = v45;
  std::string::operator=(&v56[1], &v50);
  v46 = *(a1 + 784);
  if (v46 >= *(a1 + 792))
  {
    v47 = std::vector<PhoneFeature>::__emplace_back_slow_path<PhoneFeature const&>((a1 + 776), &v50);
  }

  else
  {
    PhoneFeature::PhoneFeature(*(a1 + 784), &v50);
    v47 = v46 + 216;
    *(a1 + 784) = v46 + 216;
  }

  *(a1 + 784) = v47;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  v63 = &v55;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v63);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_1C302FF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 784) = v10;
  PhoneFeature::~PhoneFeature(&a9);
  _Unwind_Resume(a1);
}

void std::vector<MarkerRecord>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MarkerRecord>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhoneFeature>>(unint64_t a1)
{
  if (a1 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<PhoneFeature>::__emplace_back_slow_path<PhoneFeature const&>(uint64_t *a1, const PhoneFeature *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v5 = 0x12F684BDA12F684;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhoneFeature>>(v5);
  }

  v12 = 0;
  v13 = 216 * v2;
  PhoneFeature::PhoneFeature((216 * v2), a2);
  v14 = 216 * v2 + 216;
  v6 = a1[1];
  v7 = 216 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhoneFeature>,PhoneFeature*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<PhoneFeature>::~__split_buffer(&v12);
  return v11;
}

void sub_1C3030130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PhoneFeature>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void PhoneFeature::PhoneFeature(std::string *this, const PhoneFeature *a2)
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

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 52);
  this[3].__r_.__value_.__r.__words[0] = 0;
  *(this[2].__r_.__value_.__r.__words + 4) = v7;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  *&this[1].__r_.__value_.__r.__words[2] = v6;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  std::vector<MarkerRecord>::__init_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(&this[3], *(a2 + 9), *(a2 + 10), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  *&this[6].__r_.__value_.__l.__data_ = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 11);
  v12 = *(a2 + 12);
  LODWORD(this[8].__r_.__value_.__r.__words[2]) = *(a2 + 52);
  *&this[7].__r_.__value_.__r.__words[1] = v11;
  *&this[8].__r_.__value_.__l.__data_ = v12;
  *&this[6].__r_.__value_.__r.__words[2] = v10;
}

void sub_1C303025C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhoneFeature>,PhoneFeature*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 52) = *(v6 + 52);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v10 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v10;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 96) = 0;
      v11 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v11;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(v6 + 120) = 0;
      *(a4 + 144) = *(v6 + 144);
      v13 = *(v6 + 176);
      v12 = *(v6 + 192);
      v14 = *(v6 + 160);
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 176) = v13;
      *(a4 + 192) = v12;
      *(a4 + 160) = v14;
      v6 += 216;
      a4 += 216;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<PhoneFeature>>::destroy[abi:ne200100]<PhoneFeature,0>(v5);
      v5 += 216;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<PhoneFeature>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 216;
    std::allocator_traits<std::allocator<PhoneFeature>>::destroy[abi:ne200100]<PhoneFeature,0>(v3 - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MarkerRecord>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v25 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(v10);
    }

    v11 = 56 * v7;
    v22 = 0;
    v23 = v11;
    v24 = v11;
    *v11 = *a2;
    v12 = (v11 + 8);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *(a2 + 8), *(a2 + 16));
      v14 = v23;
      v15 = v24;
    }

    else
    {
      v13 = *(a2 + 8);
      *(v11 + 24) = *(a2 + 24);
      *&v12->__r_.__value_.__l.__data_ = v13;
      v14 = v11;
      v15 = v11;
    }

    v16 = *(a2 + 32);
    *(v11 + 48) = *(a2 + 48);
    *(v11 + 32) = v16;
    *&v24 = v15 + 56;
    v17 = a1[1];
    v18 = v14 + *a1 - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*>(a1, *a1, v17, v18);
    v19 = *a1;
    *a1 = v18;
    v20 = a1[2];
    v21 = v24;
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    std::__split_buffer<MarkerRecord>::~__split_buffer(&v22);
    v6 = v21;
  }

  else
  {
    std::vector<MarkerRecord>::__construct_one_at_end[abi:ne200100]<MarkerRecord const&>(a1, a2);
    v6 = v5 + 56;
  }

  a1[1] = v6;
}

void sub_1C3030578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MarkerRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ExtractFeaturesToPipeline::start_word_pronunciation(ExtractFeaturesToPipeline *this)
{
  v7 = 0u;
  memset(v8, 0, 26);
  v6 = 0x7FFFFFFF00000003;
  v1 = *(this + 62);
  if (v1)
  {
    v2 = (v1 + 48);
    v3 = (v1 + 56);
  }

  else
  {
    v4 = *(this + 61);
    v2 = (v4 + 8);
    v3 = (v4 + 16);
  }

  v5 = *v3;
  v8[1] = *v2;
  v8[2] = v5;
  std::vector<MarkerRecord>::push_back[abi:ne200100](this + 116, &v6);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 56;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MarkerRecord>,MarkerRecord*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<MarkerRecord>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 48));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ExtractFeaturesImpl::is_paragraph_break(uint64_t a1)
{
  if (a1 + 8 == v2)
  {
    return 0;
  }

  if (*(*(v2 + 40) + 8) != 1651664235)
  {
    return 0;
  }

  return a1 + 8 != v3 && *(*(v3 + 40) + 12) == 1;
}

void Agglomerate::ItemHolder<TokenExtractionItem>::~ItemHolder(uint64_t a1)
{
  *a1 = &unk_1F42E4990;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1C692AE10);
}

uint64_t std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhoneFeature>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C303089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void FrontendFeature::FrontendFeature(FrontendFeature *this, const FrontendFeature *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(this, *a2, *(a2 + 1), 0x84BDA12F684BDA13 * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v4)
  {
    std::vector<WordFeature>::__vallocate[abi:ne200100](this + 24, 0xF0F0F0F0F0F0F0F1 * ((v5 - v4) >> 3));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<Prompt>::__init_with_size[abi:ne200100]<Prompt*,Prompt*>(this + 48, *(a2 + 6), *(a2 + 7), 0x8E38E38E38E38E39 * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v7;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v8 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v8;
  }

  *(this + 144) = *(a2 + 144);
}

void sub_1C3030A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 119) < 0)
  {
    operator delete(*(v9 + 96));
  }

  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v10;
  std::vector<WordFeature>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<PhoneFeature>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhoneFeature>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhoneFeature>,PhoneFeature*,PhoneFeature*,PhoneFeature*>(int a1, PhoneFeature *a2, PhoneFeature *a3, std::string *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  v7 = this;
  do
  {
    PhoneFeature::PhoneFeature(v7, v5);
    v5 = (v5 + 216);
    v7 += 9;
    v6 -= 216;
  }

  while (v5 != a3);
  return v7;
}

void std::vector<WordFeature>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<WordFeature>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<WordFeature>,WordFeature*,WordFeature*,WordFeature*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      WordFeature::WordFeature(v4, v6);
      v6 += 136;
      v4 = v11 + 136;
      v11 += 136;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<WordFeature>,WordFeature*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<Prompt>::__init_with_size[abi:ne200100]<Prompt*,Prompt*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Prompt>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3030CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void Agglomerate::set<std::shared_ptr<FrontendInput>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void FrontendFeatureLogModule::process_data(uint64_t *a1, uint64_t *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v81 = *a2;
  v82 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v81);
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v82);
  }

  v4 = *a2;
  {
    goto LABEL_186;
  }

  v6 = *(*v5 + 16);
  v71 = *(*v5 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v70 = v6;
  if (*(a1 + 272) == 1)
  {
    v7 = v71[3];
    v8 = v71[4];
    if (v7 != v8)
    {
      while (1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v89, "");
        for (i = 0; ; ++i)
        {
          v10 = *(v7 + 39);
          if ((v10 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= v10)
          {
            goto LABEL_32;
          }

          v11 = v7 + 16;
LABEL_16:
          v12 = *(v11 + i);
          std::string::basic_string[abi:ne200100]<0>(&v75, "");
          PhoneConversion::get_string_phone(&__p, v12, &v75);
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

          std::string::append(&v89, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v76) < 0)
          {
            operator delete(v75);
          }

          v15 = *(v7 + 39);
          if (v15 < 0)
          {
            v15 = *(v7 + 24);
          }

          if (i == v15 - 1)
          {
            v16 = "";
          }

          else
          {
            v16 = " ";
          }

          std::string::append(&v89, v16);
        }

        if (i < *(v7 + 24))
        {
          break;
        }

LABEL_32:
        UTFString::remove_invalid_utf8_codes(&__p, (v7 + 40));
        std::operator+<char>();
        v17 = std::string::append(&v99, "\t");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v89;
        }

        else
        {
          v19 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v89.__r_.__value_.__l.__size_;
        }

        v21 = std::string::append(&v88, v19, v20);
        v75 = *&v21->__r_.__value_.__l.__data_;
        *&v76 = *(&v21->__r_.__value_.__l + 2);
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v22 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
        {
          Censor::global_plaintext(&v88, &v75);
          v23 = (v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v88 : v88.__r_.__value_.__r.__words[0];
          LODWORD(v99.__r_.__value_.__l.__data_) = 136315138;
          *(v99.__r_.__value_.__r.__words + 4) = v23;
          _os_log_impl(&dword_1C2F95000, v22, OS_LOG_TYPE_INFO, "%s", &v99, 0xCu);
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }
        }

        Censor::global_plaintext(&v88, &v75);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v88;
        }

        else
        {
          v25 = v88.__r_.__value_.__r.__words[0];
        }

        Diagnostics::log(6, "%s", v24, v25);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v76) < 0)
        {
          operator delete(v75);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v7 += 136;
        if (v7 == v8)
        {
          goto LABEL_62;
        }
      }

      v11 = *(v7 + 16);
      goto LABEL_16;
    }
  }

LABEL_62:
  if (*(a1[35] + 168) == 1)
  {
    (*(*a1 + 64))(a1);
  }

  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v79, a1[21]);
  v26 = v71;
  v27 = v79;
  if (!v79)
  {
    goto LABEL_182;
  }

  Observable::emit(v79, "tts.feature.frontend", v71);
  if (*(v71 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v71[12], v71[13]);
  }

  else
  {
    __str = *(v71 + 4);
  }

  v28 = *a2;
  {
    v30 = *(*v29 + 8);
    v31 = *(*v29 + 16);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=(&__str, v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(&v88, 0, sizeof(v88));
  std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(&v88, *v71, v71[1], 0x84BDA12F684BDA13 * ((v71[1] - *v71) >> 3));
  std::string::operator=(&v75, &__str);
  v32 = v88.__r_.__value_.__l.__size_;
  v33 = v88.__r_.__value_.__r.__words[0];
  if (v88.__r_.__value_.__l.__size_ != v88.__r_.__value_.__r.__words[0])
  {
    v34 = 0;
    do
    {
      v35 = v33 + 216 * v34;
      v36 = *(v35 + 72);
      v37 = *(v35 + 80);
      if (v36 != v37)
      {
        do
        {
          if (*v36 == 3 && *(v36 + 40) != 0)
          {
            std::vector<MarkerRecord>::push_back[abi:ne200100](&v76 + 1, v36);
          }

          v36 += 56;
        }

        while (v36 != v37);
        v32 = v88.__r_.__value_.__l.__size_;
        v33 = v88.__r_.__value_.__r.__words[0];
      }

      ++v34;
    }

    while (0x84BDA12F684BDA13 * ((v32 - v33) >> 3) > v34);
  }

  v39 = v77;
  if (*(&v76 + 1) != v77)
  {
    v89.__r_.__value_.__r.__words[0] = *(v77 - 56);
    if (*(v77 - 25) < 0)
    {
      std::string::__init_copy_ctor_external(&v89.__r_.__value_.__r.__words[1], *(v77 - 48), *(v77 - 40));
    }

    else
    {
      v40 = *(v77 - 48);
      v90 = *(v77 - 32);
      *&v89.__r_.__value_.__r.__words[1] = v40;
    }

    v41 = *(v39 - 8);
    v91 = *(v39 - 24);
    v92 = v41;
    v42 = *(&v91 + 1) + v91;
    v43 = *(v71 + 119);
    if ((v43 & 0x80u) != 0)
    {
      v43 = v71[13];
    }

    v44 = v43 - v42;
    if (v43 > v42)
    {
      std::string::basic_string(&v99, v71 + 4, *(&v91 + 1) + v91, 0xFFFFFFFFFFFFFFFFLL, &__p);
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v86, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
      }

      else
      {
        v86 = v99;
      }

      UTFString::lstrip(&v86);
      UTFString::rstrip(&v86);
      v87 = v86;
      memset(&v86, 0, sizeof(v86));
      v45 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = v87.__r_.__value_.__l.__size_;
      }

      if (v45)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "\x1B");
        if (UTFString::startswith(&v87.__r_.__value_.__l.__data_, &__p))
        {
          v46 = 0;
        }

        else
        {
          v47 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v87;
          }

          else
          {
            v48 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v47 = v87.__r_.__value_.__l.__size_;
          }

          if (v47 >= 6)
          {
            v49 = v48 + v47;
            v50 = v48;
            do
            {
              v51 = memchr(v50, 115, v47 - 5);
              if (!v51)
              {
                break;
              }

              if (*v51 == 1634037875 && *(v51 + 2) == 15979)
              {
                goto LABEL_114;
              }

              v50 = (v51 + 1);
              v47 = v49 - v50;
            }

            while (v49 - v50 > 5);
            v51 = v49;
LABEL_114:
            v46 = v51 == v49 || v51 - v48 == -1;
            v26 = v71;
          }

          else
          {
            v46 = 1;
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v46)
        {
          *&v85[2] = 0u;
          v84 = 0;
          *&__p.__r_.__value_.__r.__words[1] = 0u;
          *v85 = v42;
          *&v85[8] = v44;
          __p.__r_.__value_.__r.__words[0] = 0x7FFFFFFF00000003;
          std::string::operator=(&__p.__r_.__value_.__r.__words[1], &v87);
          std::vector<MarkerRecord>::push_back[abi:ne200100](&v76 + 1, &__p);
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }
        }
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__size_);
    }
  }

  v89.__r_.__value_.__r.__words[0] = &v88;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v89);
  SharedObjectPool::get_if<TrackSubstitutions>(&v86, a1[21]);
  if (v86.__r_.__value_.__r.__words[0])
  {
    TrackSubstitutions::reset_text(v86.__r_.__value_.__l.__data_);
  }

  Observable::emit(v27, "tts.feature.wordmarkers", &v75);
  Observable::emit(v27, "tts.feature.normalizedtext", v26 + 9);
  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v73, a1[21]);
  if (v73 && *(v73 + 84) == 3)
  {
    FrontendFeatureLogModuleInternal::phoneme_by_words_hydra(&v87, *v26, v26[1]);
    goto LABEL_174;
  }

  memset(&v87, 0, sizeof(v87));
  memset(&__p, 0, sizeof(__p));
  std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(&__p, *v26, v26[1], 0x84BDA12F684BDA13 * ((v26[1] - *v26) >> 3));
  v54 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    goto LABEL_173;
  }

  v55 = 0;
  LODWORD(v56) = 0;
  do
  {
    PhoneFeature::PhoneFeature(&v89, (v54 + 216 * v55));
    v57 = __p.__r_.__value_.__r.__words[0];
    v58 = *(__p.__r_.__value_.__r.__words[0] + 216 * v55 + 144);
    memset(&v88, 0, sizeof(v88));
    if (0x84BDA12F684BDA13 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) > v56)
    {
      v56 = v56;
      v59 = 216 * v56 + 96;
      do
      {
        if (v98 != *(v57 + v59 + 52))
        {
          break;
        }

        if (v58 != *(v57 + v59 + 48))
        {
          std::string::basic_string[abi:ne200100]<0>(&v99, ".");
          std::vector<std::string>::push_back[abi:ne200100](&v88, &v99);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          v57 = __p.__r_.__value_.__r.__words[0];
          v58 = *(__p.__r_.__value_.__r.__words[0] + v59 + 48);
        }

        v60 = (v57 + v59);
        v61 = *(v57 + v59 + 23);
        if (v61 < 0)
        {
          v64 = *(v60 + 1);
          if (v64 == 1)
          {
            v68 = **v60;
LABEL_161:
            if (v68 == 35)
            {
              goto LABEL_164;
            }

            goto LABEL_162;
          }

          if (v64 != 3)
          {
            goto LABEL_162;
          }

          v63 = *v60;
        }

        else
        {
          v62 = v61;
          if (v61 == 1)
          {
            v68 = *v60;
            goto LABEL_161;
          }

          v63 = v60;
          if (v62 != 3)
          {
            goto LABEL_162;
          }
        }

        v65 = *v63;
        v66 = *(v63 + 2);
        if (v65 == 26995 && v66 == 108)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v88, v60);
LABEL_164:
          LODWORD(v56) = v56 + 1;
          break;
        }

LABEL_162:
        std::vector<std::string>::push_back[abi:ne200100](&v88, v60);
        ++v56;
        v57 = __p.__r_.__value_.__r.__words[0];
        v59 += 216;
      }

      while (0x84BDA12F684BDA13 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) > v56);
    }

    std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v87, &v88);
    v99.__r_.__value_.__r.__words[0] = &v88;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v99);
    if (v97 < 0)
    {
      operator delete(v96);
    }

    if (v95 < 0)
    {
      operator delete(v94);
    }

    v88.__r_.__value_.__r.__words[0] = &v93;
    std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v88);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v55 = v56;
    v54 = __p.__r_.__value_.__r.__words[0];
  }

  while (0x84BDA12F684BDA13 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) > v56);
  v27 = v79;
LABEL_173:
  v89.__r_.__value_.__r.__words[0] = &__p;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v89);
LABEL_174:
  Observable::emit(v27, "tts.feature.phonemes", &v87);
  v89.__r_.__value_.__r.__words[0] = &v87;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v89);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (v86.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86.__r_.__value_.__l.__size_);
  }

  v89.__r_.__value_.__r.__words[0] = &v76 + 8;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v89);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_182:
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

LABEL_186:
  v69 = *MEMORY[0x1E69E9840];
}