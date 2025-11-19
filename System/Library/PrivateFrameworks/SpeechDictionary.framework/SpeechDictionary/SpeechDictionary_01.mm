void sub_26B2E6EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x26D6753C0](v2, 0x10A1C40DD1828A3);
  SLTokenBuilder::~SLTokenBuilder(va);
  _Unwind_Resume(a1);
}

void SLTokenBuilder::SLTokenBuilder(SLTokenBuilder *this, SLToken *a2)
{
  SLWordBuilder::SLWordBuilder(this);
  *v3 = &unk_287BD3C40;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = a2;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
}

{
  SLWordBuilder::SLWordBuilder(this);
  *v3 = &unk_287BD3C40;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = a2;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
}

void SLTokenBuilder::Build(SLTokenBuilder *this)
{
  v2 = this + 16;
  if ((*(this + 39) & 0x80000000) == 0)
  {
    if (!*(this + 39))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 3))
  {
    v2 = *v2;
LABEL_6:
    SLToken::SetText(*(this + 5), v2);
  }

LABEL_7:
  *(*(this + 5) + 16) |= 0x40u;
}

void SLTokenBuilder::SLTokenBuilder(SLTokenBuilder *this, SLWordBuilder *a2, int a3)
{
  SLWordBuilder::SLWordBuilder(this);
  *v6 = &unk_287BD3C40;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = 0;
  v7 = (*(*a2 + 104))(a2);
  if (!a3 || !(*(*a2 + 112))(a2))
  {
    *(this + 64) = 0;
LABEL_6:
    *(this + 7) = a2;
    operator new();
  }

  *(this + 64) = v7 != 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  *(this + 5) = v7;
  *(this + 7) = 0;
}

void sub_26B2E7128(_Unwind_Exception *a1)
{
  MEMORY[0x26D6753C0](v2, 0x10F0C4034644DEDLL);
  if (v1[39] < 0)
  {
    operator delete(*v3);
  }

  SLWordBuilder::~SLWordBuilder(v1);
  _Unwind_Resume(a1);
}

void SLTokenBuilder::~SLTokenBuilder(SLTokenBuilder *this)
{
  *this = &unk_287BD3C40;
  if (*(this + 7))
  {
    v2 = *(this + 5);
    if (v2)
    {
      SLToken::~SLToken(v2);
      MEMORY[0x26D6753C0]();
    }
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  SLWordBuilder::~SLWordBuilder(this);
}

{
  SLTokenBuilder::~SLTokenBuilder(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLTokenBuilder::Forward(SLTokenBuilder *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    (***(this + 7))(*(this + 7), *(*(this + 5) + 24));
    v3 = *(this + 39);
    if (v3 < 0)
    {
      v4 = *(this + 2);
      v3 = *(this + 3);
    }

    else
    {
      v4 = this + 16;
    }

    (*(**(this + 7) + 16))(*(this + 7), v4, v3);
    v7 = *(this + 5);
    if (*(v7 + 1))
    {
      (*(**(this + 7) + 24))(*(this + 7));
      v7 = *(this + 5);
    }

    if (*(v7 + 2))
    {
      (*(**(this + 7) + 24))(*(this + 7));
      v7 = *(this + 5);
    }

    if (*(v7 + 40))
    {
      (*(**(this + 7) + 40))(*(this + 7), *(v7 + 32));
      v7 = *(this + 5);
    }

    v9 = v7 + 80;
    v8 = *(v7 + 80);
    if (*(v9 + 8) != v8)
    {
      v10 = 0;
      do
      {
        v11 = *(v8 + 8 * v10);
        (*(**(this + 7) + 56))(*(this + 7));
        v12 = *(v11 + 32);
        if (*(v11 + 40) != v12)
        {
          v13 = 0;
          do
          {
            (*(**(this + 7) + 72))(*(this + 7), *(v12 + v13++));
            v12 = *(v11 + 32);
          }

          while (v13 < *(v11 + 40) - v12);
        }

        SLWordBuilder::SetPartOfSpeech(*(this + 7), *v11);
        (*(**(this + 7) + 88))(*(this + 7), v11 + 4);
        (*(**(this + 7) + 96))(*(this + 7));
        ++v10;
        v8 = *(*(this + 5) + 80);
      }

      while (v10 < (*(*(this + 5) + 88) - v8) >> 3);
    }

    (*(**(this + 7) + 48))(*(this + 7));
    result = (*(**(this + 7) + 104))(*(this + 7));
    if (result)
    {
      *(result + 16) = *(result + 16) & 0xFFFFFFE7 | (8 * ((*(*(this + 5) + 16) >> 3) & 3));
    }
  }

  else
  {
    v5 = *(*this + 136);

    return v5(this);
  }

  return result;
}

uint64_t SLTokenBuilder::SetPosition(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 40);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return this;
}

void SLTokenBuilder::AddPhoneme(SLTokenBuilder *this, char a2)
{
  v2 = *(this + 6);
  v4 = v2[5];
  v3 = v2[6];
  if (v4 >= v3)
  {
    v6 = v2[4];
    v7 = (v4 - v6);
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v4 - v6;
    *v7 = a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    v2[4] = 0;
    v2[5] = v7 + 1;
    v2[6] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  v2[5] = v5;
}

__n128 SLTokenBuilder::SetTags(SLTokenBuilder *this, __n128 *a2)
{
  result = *a2;
  *(*(this + 6) + 4) = *a2;
  return result;
}

void SLTokenBuilder::EndHomograph(SLTokenBuilder *this)
{
  v2 = *(this + 5);
  v1 = *(this + 6);
  *v1 = *(this + 3);
  v4 = v2[11];
  v3 = v2[12];
  if (v4 >= v3)
  {
    v6 = v2[10];
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v6;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>((v2 + 10), v10);
    }

    v11 = (8 * v7);
    *v11 = v1;
    v5 = 8 * v7 + 8;
    v12 = v2[10];
    v13 = v2[11] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = v2[10];
    v2[10] = v14;
    v2[11] = v5;
    v2[12] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = v1;
    v5 = (v4 + 1);
  }

  v2[11] = v5;
}

void SLTmpLookup::~SLTmpLookup(SLTmpLookup *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    SLToken::~SLToken(v1);
    MEMORY[0x26D6753C0]();
  }
}

void SLMorphEng::Store_S_or_Z(SLMorphEng *this, SLToken *a2)
{
  v4 = *(a2 + 10);
  if (*(a2 + 11) != v4)
  {
    v17 = v2;
    v18 = v3;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      v8 = SLPhonEng::sFlags[*(*(v7 + 40) - 1)];
      if ((*(*(v7 + 40) - 1) & 0xFE) != 0x2A && (*&v8 & 0x20000) == 0)
      {
        if ((v8 & 6) == 2)
        {
          v13 = 42;
          v10 = v7 + 32;
          v11 = &v13;
        }

        else
        {
          v12 = 43;
          v10 = v7 + 32;
          v11 = &v12;
        }
      }

      else
      {
        v16 = 60;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v16);
        v15 = 25;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v15);
        v14 = 43;
        v10 = v7 + 32;
        v11 = &v14;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v10, v11);
      ++v6;
      v4 = *(a2 + 10);
    }

    while (v6 < (*(a2 + 11) - v4) >> 3);
  }
}

void SLMorphEng::Store_T_or_D(SLMorphEng *this, SLToken *a2)
{
  v4 = *(a2 + 10);
  if (*(a2 + 11) != v4)
  {
    v15 = v2;
    v16 = v3;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      if ((*(*(v7 + 40) - 1) & 0xFE) == 0x30)
      {
        v14 = 60;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v14);
        v13 = 25;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v13);
        v12 = 49;
        v8 = v7 + 32;
        v9 = &v12;
      }

      else if ((SLPhonEng::sFlags[*(*(v7 + 40) - 1)] & 6) == 2)
      {
        v11 = 48;
        v8 = v7 + 32;
        v9 = &v11;
      }

      else
      {
        v10 = 49;
        v8 = v7 + 32;
        v9 = &v10;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v8, v9);
      ++v6;
      v4 = *(a2 + 10);
    }

    while (v6 < (*(a2 + 11) - v4) >> 3);
  }
}

uint64_t SLMorphEng::MorphLookup_Y(SLMorphEng *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  v11 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v13 = p_dst->__r_.__value_.__s.__data_[0];
  if ((v13 & 0x80000000) != 0)
  {
    v14 = __maskrune(v13, 0x8000uLL);
  }

  else
  {
    v14 = *(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x8000;
  }

  if (v14)
  {
    v15 = 89;
  }

  else
  {
    v15 = 121;
  }

  std::string::append((a5 + 16), 1uLL, v15);
  v16 = *(a5 + 39);
  if (v16 < 0)
  {
    v11 = *(a5 + 2);
    v16 = *(a5 + 3);
  }

  if ((**a4)(a4, v11, v16, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v17 = SLMorph::RestoreSuffix(this, a5, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_26B2E7D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t SLMorphEng_S::MorphLookup(SLMorphEng_S *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  v11 = &a2[a3 - v9];
  std::string::basic_string[abi:ne200100](&__dst, v11, v9);
  v12 = *(v11 - 1);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = ___toupper_l(v12, *(*(this + 5) + 8));
  }

  else
  {
    v13 = *(MEMORY[0x277D85DE0] + 4 * v12 + 2108);
  }

  if (v13 == 83 && **(this + 3) == 83 || !(**a4)(a4, a2, v10, a5, a4))
  {
    v14 = 0;
  }

  else
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v14 = SLMorph::RestoreSuffix(this, a5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_26B2E7EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void SLMorphEng_S::AddAffix(SLMorphEng_S *this, SLToken *a2)
{
  SLMorphEng::Store_S_or_Z(this, a2);
  if (**(this + 3) == 39)
  {
    v4 = *(a2 + 10);
    if (*(a2 + 11) != v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = (*(v4 + 8 * v5) + 4);
        if (!SLWordTagSet::find(v6, 84))
        {
          v7 = *v6;
          if (v7 <= 6)
          {
            v8 = v7 + 1;
            *v6 = v8;
            *(v6 + v8) = 84;
          }
        }

        if (SLWordTagSet::find((*(*(a2 + 10) + 8 * v5) + 4), 76))
        {
          break;
        }

        ++v5;
        v4 = *(a2 + 10);
        if (v5 >= (*(a2 + 11) - v4) >> 3)
        {
          return;
        }
      }

      v9[0] = 4980737;
      SLToken::SelectHomographs(a2, 0x7FFFFFFF, v9);
    }
  }
}

uint64_t SLMorphEng_ES::MorphLookup(SLMorphEng_ES *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  v11 = &a2[a3 - v9];
  std::string::basic_string[abi:ne200100](&__str, v11, v9);
  if (v10 >= 3)
  {
    v12 = *(v11 - 1);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = ___toupper_l(v12, *(*(this + 5) + 8));
    }

    else
    {
      v13 = *(MEMORY[0x277D85DE0] + 4 * v12 + 2108);
    }

    switch(v13)
    {
      case 'H':
        v16 = *(v11 - 2);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = ___toupper_l(v16, *(*(this + 5) + 8));
        }

        else
        {
          v17 = *(MEMORY[0x277D85DE0] + 4 * v16 + 2108);
        }

        if ((v17 | 0x10) == 0x53)
        {
          goto LABEL_21;
        }

        break;
      case 'S':
        v14 = *(v11 - 2);
        if ((v14 & 0x80000000) != 0)
        {
          v15 = ___toupper_l(v14, *(*(this + 5) + 8));
        }

        else
        {
          v15 = *(MEMORY[0x277D85DE0] + 4 * v14 + 2108);
        }

        if (v15 == 83)
        {
          goto LABEL_21;
        }

        break;
      case 'X':
        goto LABEL_21;
    }
  }

  if ((**a4)(a4, a2, v10 + 1, a5, a4))
  {
    std::string::basic_string(&v22, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v24);
    v18 = SLMorph::RestoreSuffix(this, a5, &v22);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v19 = &v22;
    goto LABEL_28;
  }

LABEL_21:
  if (!(**a4)(a4, a2, v10, a5, a4))
  {
    v18 = 0;
    goto LABEL_29;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __str;
  }

  v18 = SLMorph::RestoreSuffix(this, a5, &v21);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v19 = &v21;
LABEL_28:
  operator delete(v19->__r_.__value_.__l.__data_);
LABEL_29:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_26B2E81EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLMorphEng_ES::POSFromSuffix(SLMorphEng_ES *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) == v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 8 * v5);
    if (!SLWordTagSet::find((v6 + 4), 68))
    {
      break;
    }

    ++v5;
    v2 = *(a2 + 10);
    if (v5 >= (*(a2 + 11) - v2) >> 3)
    {
      return 0;
    }
  }

  v7 = 1;
  if (*v6 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *(this + 15) = v9;
  SLToken::ChooseHomograph(a2, v6);
  v10 = *(this + 15);
  if (v10 != 16499)
  {
    *v6 = v10;
  }

  return v7;
}

uint64_t SLMorphEng_IES::MorphLookup(SLMorphEng_IES *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  if (SLMorphEng::MorphLookup_Y(this, a2, a3, a4, a5))
  {
    return 1;
  }

  v11 = *(this + 4) - 2;
  v12 = a3 - v11;
  std::string::basic_string[abi:ne200100](&__dst, &a2[v12], v11);
  if ((**a4)(a4, a2, v12, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v10 = SLMorph::RestoreSuffix(this, a5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_26B2E8400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t SLMorphEng_E::MorphLookup(SLMorphEng_E *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  v11 = &a2[a3 - v9];
  std::string::basic_string[abi:ne200100](&__dst, v11, v9);
  v12 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v14 = p_dst->__r_.__value_.__s.__data_[0];
  v15 = MEMORY[0x277D85DE0];
  if ((v14 & 0x80000000) != 0)
  {
    v16 = __maskrune(v14, 0x8000uLL);
  }

  else
  {
    v16 = *(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x8000;
  }

  if (v16)
  {
    v17 = 69;
  }

  else
  {
    v17 = 101;
  }

  std::string::append((a5 + 16), 1uLL, v17);
  v18 = *(v11 - 1);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = ___toupper_l(v18, *(*(this + 5) + 8));
  }

  else
  {
    v19 = *(v15 + 4 * v18 + 2108);
  }

  HIDWORD(v21) = v19 - 65;
  LODWORD(v21) = v19 - 65;
  v20 = v21 >> 1;
  v22 = v20 > 0xA;
  v23 = (1 << v20) & 0x495;
  if (v22 || v23 == 0)
  {
    v28 = *(a5 + 39);
    if (v28 < 0)
    {
      v12 = *(a5 + 2);
      v28 = *(a5 + 3);
    }

    if ((**a4)(a4, v12, v28, a5, a4))
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v35 = __dst;
      }

      v31 = SLMorph::RestoreSuffix(this, a5, &v35, 1);
      v32 = v31;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
        if (v32)
        {
LABEL_45:
          v27 = 1;
          goto LABEL_51;
        }
      }

      else if (v31)
      {
        goto LABEL_45;
      }
    }
  }

  v25 = *(v11 - 1);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = ___toupper_l(*(v11 - 1), *(*(this + 5) + 8));
  }

  else
  {
    v26 = *(v15 + 4 * v25 + 2108);
  }

  if ((v26 - 65) > 0x14)
  {
    goto LABEL_38;
  }

  if (((1 << (v26 - 65)) & 0x104931) != 0)
  {
    goto LABEL_22;
  }

  if (v26 == 83)
  {
    if (v10 >= 2)
    {
      v29 = *(v11 - 2);
      v30 = (v29 & 0x80000000) != 0 ? ___toupper_l(v29, *(*(this + 5) + 8)) : *(v15 + 4 * v29 + 2108);
      if (v30 != 83 && (v30 != 85 || v10 == 2))
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
LABEL_38:
    if (v10 >= 3 && *(v11 - 2) == v25)
    {
      std::string::insert(&__dst, 0, 1uLL, v25);
      --v10;
    }
  }

LABEL_22:
  if (!(**a4)(a4, a2, v10, a5, a4))
  {
LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v27 = SLMorph::RestoreSuffix(this, a5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_51:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v27;
}

void sub_26B2E8758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLMorphEng_ED::POSFromSuffix(SLMorphEng_ED *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) == v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(v2 + 8 * v5);
    if (!SLWordTagSet::find((v7 + 4), 68) && !SLWordTagSet::find((v7 + 4), 64))
    {
      if (!v6)
      {
        v6 = v7;
      }

      if ((*v7 & 2) != 0)
      {
        break;
      }
    }

    ++v5;
    v2 = *(a2 + 10);
    if (v5 >= (*(a2 + 11) - v2) >> 3)
    {
      v7 = v6;
      if (!v6)
      {
        return 0;
      }

      break;
    }
  }

  SLToken::ChooseHomograph(a2, v7);
  v8 = *(this + 15);
  if (v8 != 16499)
  {
    *v7 = v8;
  }

  return 1;
}

void SLMorphEng_ISH::SLMorphEng_ISH(SLMorphEng_ISH *this, const SLMorphTraits *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 423362563;
  v10 = 44;
  *SLMorph::SLMorph(this, "ISH", &v9, a2, 64, 16499, 0, a8) = &unk_287BD3D10;
  v8 = *MEMORY[0x277D85DE8];
}

void SLMorphEng_ISH::~SLMorphEng_ISH(SLMorphEng_ISH *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLMorphEng_IER::POSFromSuffix(SLMorphEng_IER *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) == v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 8 * v5);
    if (!SLWordTagSet::find((v6 + 4), 68) && !SLWordTagSet::find((v6 + 4), 64))
    {
      break;
    }

    ++v5;
    v2 = *(a2 + 10);
    if (v5 >= (*(a2 + 11) - v2) >> 3)
    {
      return 0;
    }
  }

  if (*v6 & 2) == 0 || (*v6)
  {
    v8 = 64;
  }

  else
  {
    v8 = 1;
  }

  *(this + 15) = v8;
  SLToken::ChooseHomograph(a2, v6);
  v9 = *(this + 15);
  if (v9 != 16499)
  {
    *v6 = v9;
  }

  return 1;
}

char *SLMorphEng_ILY::AddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      v7 = *(v2 + 8 * v5);
      v8 = *(v7 + 40);
      if (*(v8 - 1) == 3)
      {
        *(v8 - 1) = 25;
        v8 = *(v7 + 40);
      }

      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7 + 32, v8, v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

uint64_t SLMorphEng_BLY::MorphLookup(SLMorphEng_BLY *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v10 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16);
  v11 = a2[a3 - 1];
  if ((v11 & 0x80000000) != 0)
  {
    v12 = __maskrune(v11, 0x8000uLL);
  }

  else
  {
    v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x8000;
  }

  if (v12)
  {
    v13 = 69;
  }

  else
  {
    v13 = 101;
  }

  v14 = *(a5 + 39);
  if (v14 < 0)
  {
    v15 = *(a5 + 2);
    v14 = *(a5 + 3);
  }

  else
  {
    v15 = v10;
  }

  v16 = &v15[v14];
  v17 = *(v16 - 1);
  *(v16 - 1) = v13;
  v18 = *(a5 + 39);
  if (v18 < 0)
  {
    v19 = *(a5 + 2);
    v18 = *(a5 + 3);
  }

  else
  {
    v19 = v10;
  }

  result = (**a4)(a4, v19, v18, a5, a4);
  if (result)
  {
    result = (*(*this + 48))(this, *(a5 + 5));
    if (result)
    {
      v21 = *(a5 + 39);
      if (v21 < 0)
      {
        v10 = *(a5 + 2);
        v21 = *(a5 + 3);
      }

      v10[v21 - 1] = v17;
      return 1;
    }
  }

  return result;
}

char *SLMorphEng_BLY::AddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      v7 = *(v2 + 8 * v5);
      v8 = *(v7 + 40);
      if (&v8[-*(v7 + 32)] >= 2)
      {
        v9 = *(v7 + 40);
        if (*(v8 - 2) == 11)
        {
          *(v8 - 2) = 60;
          v8 = *(v7 + 40);
        }
      }

      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7 + 32, v8, v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

uint64_t SLMorphEng_UM::MorphLookup(SLMorphEng_UM *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  v11 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v13 = p_dst->__r_.__value_.__s.__data_[0];
  if ((v13 & 0x80000000) != 0)
  {
    v14 = __maskrune(v13, 0x8000uLL);
  }

  else
  {
    v14 = *(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x8000;
  }

  if (v14)
  {
    v15 = "UM";
  }

  else
  {
    v15 = "um";
  }

  std::string::append((a5 + 16), v15);
  v16 = *(a5 + 39);
  if (v16 < 0)
  {
    v11 = *(a5 + 2);
    v16 = *(a5 + 3);
  }

  if ((**a4)(a4, v11, v16, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v17 = SLMorph::RestoreSuffix(this, a5, &__p, 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_26B2E8E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

char *SLMorphEng_UM::AddAffix(char *this, SLToken *a2)
{
  v3 = *(a2 + 10);
  v2 = *(a2 + 11);
  if (v2 != v3)
  {
    v5 = this;
    v6 = 0;
    v7 = this + 50;
    do
    {
      v8 = *(v3 + 8 * v6);
      this = (v8 + 32);
      v9 = *(v8 + 40);
      if ((v9 - *(v8 + 32)) >= 2)
      {
        *(v8 + 40) = v9 - 2;
        this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this, (v9 - 2), v7, &v7[*(v5 + 24)], *(v5 + 24));
        v3 = *(a2 + 10);
        v2 = *(a2 + 11);
      }

      ++v6;
    }

    while (v6 < (v2 - v3) >> 3);
  }

  return this;
}

uint64_t SLMorphEng_CALLY::MorphLookup(SLMorphEng_CALLY *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4) - 1;
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  if ((**a4)(a4, a2, v10, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v11 = SLMorph::RestoreSuffix(this, a5, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_26B2E8FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t SLMorphEng_OR::MorphLookup(SLMorphEng_OR *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  v11 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v13 = p_dst->__r_.__value_.__s.__data_[0];
  if ((v13 & 0x80000000) != 0)
  {
    v14 = __maskrune(v13, 0x8000uLL);
  }

  else
  {
    v14 = *(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x8000;
  }

  if (v14)
  {
    v15 = 69;
  }

  else
  {
    v15 = 101;
  }

  std::string::append((a5 + 16), 1uLL, v15);
  v16 = *(a5 + 39);
  if (v16 < 0)
  {
    v11 = *(a5 + 2);
    v16 = *(a5 + 3);
  }

  if ((**a4)(a4, v11, v16, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = __dst;
    }

    v17 = SLMorph::RestoreSuffix(this, a5, &v22, 1);
    v18 = v17;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
      if (v18)
      {
        goto LABEL_18;
      }
    }

    else if (v17)
    {
LABEL_18:
      v19 = 1;
      goto LABEL_27;
    }
  }

  if ((**a4)(a4, a2, v10, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v19 = SLMorph::RestoreSuffix(this, a5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_27:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v19;
}

void sub_26B2E923C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLMorphEng_Elvis::MorphLookup(SLMorphEng_Elvis *this, const char *a2, unint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = (a5 + 16);
  MEMORY[0x26D6752F0](a5 + 16, a2, a3 - 1);
  if (a3 >= 2)
  {
    v11 = a2[a3 - 2];
    if ((v11 & 0x80000000) != 0)
    {
      v12 = __maskrune(v11, 0x8000uLL);
    }

    else
    {
      v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x8000;
    }

    if (v12)
    {
      v10 = 71;
    }

    else
    {
      v10 = 103;
    }
  }

  else
  {
    v10 = 71;
  }

  std::string::append(v9, 1uLL, v10);
  v13 = *(a5 + 39);
  if (v13 < 0)
  {
    v14 = *(a5 + 2);
    v13 = *(a5 + 3);
  }

  else
  {
    v14 = v9;
  }

  result = (**a4)(a4, v14, v13, a5, a4);
  if (result)
  {
    v16 = *(a5 + 39);
    if (v16 < 0)
    {
      v9 = *(a5 + 2);
      v16 = *(a5 + 3);
    }

    v9->__r_.__value_.__s.__data_[v16 - 1] = 39;
  }

  return result;
}

void SLMorphEng_Elvis::AddAffix(SLMorphEng_Elvis *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      v5 = *(v4 + 40);
      if ((v5 - *(v4 + 32)) >= 2 && *(v5 - 1) == 37)
      {
        *(v5 - 1) = 36;
        v6 = *(v4 + 40);
        if (*(v6 - 2) == 4)
        {
          *(v6 - 2) = 25;
        }
      }

      ++v3;
      v2 = *(a2 + 10);
    }

    while (v3 < (*(a2 + 11) - v2) >> 3);
  }
}

uint64_t SLMorphEng_Apostrophe::AddAffix(uint64_t this, SLToken *a2)
{
  if (**(this + 24) == 83)
  {
    v3 = *(a2 + 10);
    if (*(a2 + 11) != v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v3 + 8 * v4) + 4);
        this = SLWordTagSet::find(v5, 84);
        if ((this & 1) == 0)
        {
          v6 = *v5;
          if (v6 <= 6)
          {
            v7 = v6 + 1;
            *v5 = v7;
            *(v5 + v7) = 84;
          }
        }

        ++v4;
        v3 = *(a2 + 10);
      }

      while (v4 < (*(a2 + 11) - v3) >> 3);
    }
  }

  return this;
}

char *SLMorphEng_Saur::AddAffix(char *this, SLToken *a2)
{
  v4 = *(a2 + 10);
  if (*(a2 + 11) != v4)
  {
    v15 = v2;
    v16 = v3;
    v6 = this;
    v7 = 0;
    v8 = this + 50;
    do
    {
      v9 = *(v4 + 8 * v7);
      v10 = *(v9 + 40);
      if (*(v10 - 2) == 9)
      {
        v11 = v10 - 2;
        v12 = memchr(*(v9 + 32), 1, &v10[-*(v9 + 32) - 2]);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v10 - 2;
        }

        if (v13 != v10)
        {
          *v13 = 58;
          v11 = (*(v9 + 40) - 2);
        }

        v14 = 1;
        std::vector<unsigned char>::insert((v9 + 32), v11, &v14);
        v10 = *(v9 + 40);
      }

      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v9 + 32, v10, v8, &v8[*(v6 + 48)], *(v6 + 48));
      ++v7;
      v4 = *(a2 + 10);
    }

    while (v7 < (*(a2 + 11) - v4) >> 3);
  }

  return this;
}

char *std::vector<unsigned char>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v24 = a1;
    if (v13)
    {
      operator new();
    }

    v21 = 0;
    v22 = (__src - v10);
    v23 = (__src - v10);
    std::__split_buffer<unsigned char>::emplace_back<unsigned char>(&v21, a3);
    v14 = v22;
    memcpy(v23, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v22;
    *&v23 = v23 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_26B2E974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLMorphEng_BILITY::MorphLookup(SLMorphEng_BILITY *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4) - 1;
  v10 = a3 - v9;
  v11 = &a2[a3 - v9];
  std::string::basic_string[abi:ne200100](&__dst, v11, v9);
  v12 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  std::string::append((a5 + 16), 1uLL, v11[1]);
  v13 = v11[2];
  if ((v13 & 0x80000000) != 0)
  {
    v14 = __maskrune(v13, 0x8000uLL);
  }

  else
  {
    v14 = *(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x8000;
  }

  if (v14)
  {
    v15 = 69;
  }

  else
  {
    v15 = 101;
  }

  std::string::append((a5 + 16), 1uLL, v15);
  v16 = *(a5 + 39);
  if (v16 < 0)
  {
    v12 = *(a5 + 2);
    v16 = *(a5 + 3);
  }

  if ((**a4)(a4, v12, v16, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v17 = SLMorph::RestoreSuffix(this, a5, &__p, 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_26B2E98F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

BOOL SLMorphEng_BILITY::POSFromSuffix(SLMorphEng_BILITY *this, SLToken *a2)
{
  v3 = *(a2 + 10);
  v2 = *(a2 + 11);
  if (v2 == v3)
  {
    v3 = *(a2 + 11);
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 8 * v6);
      if ((*(this + 16) & *v7) != 0 && *(v7 + 5) - *(v7 + 4) > 5uLL && ((v8 = *(v7 + 5), v9 = *(v8 - 4), v9 != 25) ? (v10 = v9 == 11) : (v10 = 1), v10 && *(v8 - 3) == 47 && *(v8 - 2) == 11 && *(v8 - 1) == 33))
      {
        *v7 = *(this + 15);
        ++v6;
      }

      else
      {
        v11 = v3 + 8 * v6;
        v12 = v2 - (v11 + 8);
        if (v2 != v11 + 8)
        {
          memmove((v3 + 8 * v6), (v11 + 8), v2 - (v11 + 8));
        }

        *(a2 + 11) = v11 + v12;
        SLHomograph::~SLHomograph(v7);
        MEMORY[0x26D6753C0]();
      }

      v3 = *(a2 + 10);
      v2 = *(a2 + 11);
    }

    while (v6 < (v2 - v3) >> 3);
  }

  return v3 != v2;
}

char *SLMorphEng_BILITY::AddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      v7 = *(v2 + 8 * v5);
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = v9;
      while (v10 != v8)
      {
        v11 = *--v10;
        if (v11 == 1)
        {
          v12 = v10 + 1;
          goto LABEL_8;
        }
      }

      v12 = *(v7 + 32);
LABEL_8:
      if (v12 != v8)
      {
        *(v12 - 1) = 58;
        v13 = *(v7 + 32);
        v9 = *(v7 + 40);
      }

      *(v7 + 40) = v9 - 3;
      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7 + 32, (v9 - 3), v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

uint64_t SLMorphEng_ITOUS::MorphLookup(SLMorphEng_ITOUS *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4) - 2;
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  v11 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  v12 = a2[v10];
  if ((v12 & 0x80000000) != 0)
  {
    v13 = __maskrune(v12, 0x8000uLL);
  }

  else
  {
    v13 = *(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x8000;
  }

  if (v13)
  {
    v14 = 89;
  }

  else
  {
    v14 = 121;
  }

  std::string::append((a5 + 16), 1uLL, v14);
  v15 = *(a5 + 39);
  if (v15 < 0)
  {
    v11 = *(a5 + 2);
    v15 = *(a5 + 3);
  }

  if ((**a4)(a4, v11, v15, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v16 = SLMorph::RestoreSuffix(this, a5, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_26B2E9CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void SLMorphEng_ITOUS::AddAffix(SLMorphEng_ITOUS *this, SLToken *a2)
{
  v4 = *(a2 + 10);
  if (*(a2 + 11) != v4)
  {
    v9 = v2;
    v10 = v3;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      *(*(v7 + 40) - 1) = 25;
      v8 = 42;
      std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v8);
      ++v6;
      v4 = *(a2 + 10);
    }

    while (v6 < (*(a2 + 11) - v4) >> 3);
  }
}

uint64_t SLMorphEng_Tion::SLMorphEng_Tion(uint64_t a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v11 = SLMorph::SLMorph(a1, a2, a3, a6, 1, a7, 0, a8);
  *v11 = &unk_287BD3D78;
  v11[11] = a4;
  *(a1 + 96) = strlen(a4);
  v12 = *(a5 + 8);
  *(a1 + 104) = *a5;
  *(a1 + 112) = v12;
  *(a1 + 114) = memchr((a1 + 50), 1, *(a1 + 48)) != 0;
  return a1;
}

uint64_t SLMorphEng_Tion::MorphLookup(SLMorphEng_Tion *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  v11 = a5 + 16;
  MEMORY[0x26D6752F0](a5 + 16, a2, v10);
  std::string::append((a5 + 16), *(this + 11), *(this + 12));
  v12 = *(a5 + 39);
  if (v12 < 0)
  {
    v11 = *(a5 + 2);
    v12 = *(a5 + 3);
  }

  if ((**a4)(a4, v11, v12, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v13 = SLMorph::RestoreSuffix(this, a5, &__p, *(this + 24));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26B2E9F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

BOOL SLMorphEng_Tion::POSFromSuffix(SLMorphEng_Tion *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 11);
  if (v3 == v2)
  {
    v2 = *(a2 + 11);
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v2 + 8 * v6);
      if ((*(this + 16) & *v7) != 0 && !memcmp((*(v7 + 5) - *(this + 52)), this + 106, *(this + 52)))
      {
        *v7 = *(this + 15);
        ++v6;
      }

      else
      {
        v8 = v2 + 8 * v6;
        if (v3 != v8 + 8)
        {
          memmove(v8, (v8 + 8), v3 - (v8 + 8));
        }

        *(a2 + 11) = v3 - 8;
        SLHomograph::~SLHomograph(v7);
        MEMORY[0x26D6753C0]();
        v2 = *(a2 + 10);
        v3 = *(a2 + 11);
      }
    }

    while (v6 < (v3 - v2) >> 3);
  }

  return v3 != v2;
}

char *SLMorphEng_Tion::AddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      v7 = *(v2 + 8 * v5);
      v8 = *(v7 + 40);
      if (*(v4 + 114) == 1)
      {
        v9 = memchr(*(v7 + 32), 1, &v8[-*(v7 + 32)]);
        if (v9)
        {
          v10 = v9 == v8;
        }

        else
        {
          v10 = 1;
        }

        v11 = v8;
        if (!v10)
        {
          do
          {
            *v9 = 58;
            v9 = memchr(v9 + 1, 1, v8 - (v9 + 1));
            if (v9)
            {
              v12 = v9 == v8;
            }

            else
            {
              v12 = 1;
            }
          }

          while (!v12);
          v11 = *(v7 + 40);
        }
      }

      else
      {
        v11 = *(v7 + 40);
      }

      v13 = *(v4 + 104);
      if (*(v4 + 104))
      {
        v14 = &v8[-v13];
        v15 = &v14[v13];
        v16 = v11 - v15;
        if (v11 != v15)
        {
          memmove(v14, v15, v16);
        }

        v11 = &v14[v16];
        *(v7 + 40) = &v14[v16];
      }

      if (*(v11 - 1) == 58)
      {
        *(v7 + 40) = --v11;
      }

      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7 + 32, v11, v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

void SLMorphEng_Brit::SLMorphEng_Brit(SLMorphEng_Brit *this, const char *a2, const char *a3, const SLMorphTraits *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v10 = SLMorph::SLMorph(this, a2, v12, a4, 16499, 16499, 0, a8);
  *v10 = &unk_287BD3DE0;
  v10[11] = a3;
  *(this + 12) = strlen(a3);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t SLMorphEng_Brit::MorphLookup(SLMorphEng_Brit *this, const char *a2, uint64_t a3, uint64_t (***a4)(SLDictionary *, std::string *, uint64_t, SLTokenBuilder *, SLDictionary *), SLTokenBuilder *a5)
{
  v8 = (a5 + 16);
  MEMORY[0x26D6752F0](a5 + 16, a2, a3 - *(this + 4));
  std::string::append(v8, *(this + 11), *(this + 12));
  v9 = *(a5 + 39);
  if (v9 < 0)
  {
    v8 = *(a5 + 2);
    v9 = *(a5 + 3);
  }

  v10 = **a4;

  return v10(a4, v8, v9, a5, a4);
}

BOOL SLMorphEng_Brit::POSFromSuffix(SLMorphEng_Brit *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 11);
  if (v3 == v2)
  {
    v2 = *(a2 + 11);
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 8 * v5);
      if (SLWordTagSet::find((v6 + 4), 68) || SLWordTagSet::find((v6 + 4), 64))
      {
        v7 = *(a2 + 10);
        v8 = *(a2 + 11);
        v9 = v7 + 8 * v5;
        v10 = v8 - (v9 + 8);
        if (v8 != v9 + 8)
        {
          memmove((v7 + 8 * v5), (v9 + 8), v8 - (v9 + 8));
        }

        *(a2 + 11) = v9 + v10;
        if (v6)
        {
          SLHomograph::~SLHomograph(v6);
          MEMORY[0x26D6753C0]();
        }
      }

      else
      {
        ++v5;
      }

      v2 = *(a2 + 10);
      v3 = *(a2 + 11);
    }

    while (v5 < (v3 - v2) >> 3);
  }

  return v3 != v2;
}

uint64_t SLTionRules::Lookup(SLTionRules *this, const char *a2, unint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  if (a3 < 5 || strncasecmp_l(&a2[a3 - 4], "TION", 4uLL, *(*(this + 5) + 8)))
  {
    return 0;
  }

  return SLEncyclopedia::Lookup(this, a2, a3, a4, a5);
}

uint64_t SLMorphEng_NameEnding::Lookup(SLMorphEng_NameEnding *this, const char *a2, unint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  if (a3 < 4)
  {
    return 0;
  }

  v9 = a3 - 2;
  v10 = __toupper(a2[a3 - 2]);
  if (a2[a3 - 1] != 78)
  {
    return 0;
  }

  v11 = v10;
  v12 = v10;
  result = memchr("AEIO", v10, 5uLL);
  if (!result)
  {
    return result;
  }

  result = memchr("DLNST", a2[a3 - 3], 6uLL);
  if (!result)
  {
    return result;
  }

  SLTokenBuilder::SLTokenBuilder(v33, a4, 1);
  MEMORY[0x26D6752F0](v34, a2, a3);
  HIDWORD(v14) = v12 - 65;
  LODWORD(v14) = v12 - 65;
  v15 = off_279CD9CC8[(v14 >> 1)];
  v16 = *v15;
  if (!*v15)
  {
LABEL_34:
    SLTokenBuilder::~SLTokenBuilder(v33);
    return 0;
  }

  if (v11 << 24 == 1325400064 || v11 << 24 == 1090519040)
  {
    v18 = 11;
  }

  else
  {
    v18 = 25;
  }

  v32 = v9;
  while (1)
  {
    v19 = (v35 & 0x80u) == 0 ? v34 : v34[0];
    *(v19 + v9) = v16;
    v20 = (v35 & 0x80u) == 0 ? v34 : v34[0];
    v21 = (v35 & 0x80u) == 0 ? v35 : v34[1];
    if ((**a5)(a5, v20, v21, v33, a5))
    {
      v22 = v36[10];
      if (v36[11] != v22)
      {
        v23 = 0;
        do
        {
          v24 = *(v22 + 8 * v23);
          if (SLWordTagSet::find((v24 + 4), 64))
          {
            *(v24[5] - 2) = v18;
            ++v23;
          }

          else
          {
            v25 = v36;
            v26 = v36[10];
            v27 = v36[11];
            v28 = v26 + 8 * v23;
            v29 = v27 - (v28 + 8);
            if (v27 != v28 + 8)
            {
              memmove((v26 + 8 * v23), (v28 + 8), v27 - (v28 + 8));
            }

            v25[11] = v28 + v29;
            if (v24)
            {
              SLHomograph::~SLHomograph(v24);
              MEMORY[0x26D6753C0]();
            }
          }

          v22 = v36[10];
          v30 = v36[11];
        }

        while (v23 < (v30 - v22) >> 3);
        v9 = v32;
        if (v22 != v30)
        {
          break;
        }
      }
    }

    v31 = *++v15;
    v16 = v31;
    if (!v31)
    {
      goto LABEL_34;
    }
  }

  v36[3] = "Dictionary+Morph";
  SLTokenBuilder::Forward(v33);
  SLTokenBuilder::~SLTokenBuilder(v33);
  return 1;
}

void sub_26B2EA6F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SLTokenBuilder::~SLTokenBuilder(va);
  _Unwind_Resume(a1);
}

void SLMorphRulesEng::SLMorphRulesEng(SLMorphRulesEng *this)
{
  v2 = *MEMORY[0x277D85DE8];
  SLDictionary::SLDictionary(this);
  v1[3] = 0;
  v1[4] = 0;
  *v1 = &unk_287BD3E48;
  SLMorphTraits::SLMorphTraits((v1 + 5), "en_US.UTF-8", 16499);
  operator new();
}

void sub_26B2ED050(_Unwind_Exception *a1)
{
  MEMORY[0x26D6753C0](v3, 0x10F1C40852DCFC7);
  SLMorphTraits::~SLMorphTraits(v2);
  SLMorphRules::~SLMorphRules(v1);
  _Unwind_Resume(a1);
}

void SLMorphRulesEng::~SLMorphRulesEng(locale_t *this)
{
  *this = &unk_287BD3E48;
  SLMorphTraits::~SLMorphTraits(this + 5);

  SLMorphRules::~SLMorphRules(this);
}

{
  *this = &unk_287BD3E48;
  SLMorphTraits::~SLMorphTraits(this + 5);

  SLMorphRules::~SLMorphRules(this);
}

{
  *this = &unk_287BD3E48;
  SLMorphTraits::~SLMorphTraits(this + 5);
  SLMorphRules::~SLMorphRules(this);

  JUMPOUT(0x26D6753C0);
}

void SLFlatMorphRulesEng::SLFlatMorphRulesEng(SLFlatMorphRulesEng *this, SLDictionary *a2, char a3)
{
  SLDictionary::SLDictionary(this);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = a2;
  *v5 = &unk_287BD3E70;
  if ((a3 & 1) == 0)
  {
    operator new();
  }
}

void sub_26B2ED4F4(_Unwind_Exception *a1)
{
  MEMORY[0x26D6753C0](v2, 0x10A1C40AFD1EA57);
  SLFlatMorphRules::~SLFlatMorphRules(v1);
  _Unwind_Resume(a1);
}

void SLMorphEng_S::~SLMorphEng_S(SLMorphEng_S *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_ES::~SLMorphEng_ES(SLMorphEng_ES *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_IES::~SLMorphEng_IES(SLMorphEng_IES *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_E::~SLMorphEng_E(SLMorphEng_E *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_ED::~SLMorphEng_ED(SLMorphEng_ED *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Y::~SLMorphEng_Y(SLMorphEng_Y *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_IER::~SLMorphEng_IER(SLMorphEng_IER *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_ILY::~SLMorphEng_ILY(SLMorphEng_ILY *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_BLY::~SLMorphEng_BLY(SLMorphEng_BLY *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_UM::~SLMorphEng_UM(SLMorphEng_UM *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_CALLY::~SLMorphEng_CALLY(SLMorphEng_CALLY *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_OR::~SLMorphEng_OR(SLMorphEng_OR *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Elvis::~SLMorphEng_Elvis(SLMorphEng_Elvis *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Apostrophe::~SLMorphEng_Apostrophe(SLMorphEng_Apostrophe *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Saur::~SLMorphEng_Saur(SLMorphEng_Saur *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_BILITY::~SLMorphEng_BILITY(SLMorphEng_BILITY *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_ITOUS::~SLMorphEng_ITOUS(SLMorphEng_ITOUS *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Tion::~SLMorphEng_Tion(SLMorphEng_Tion *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_Brit::~SLMorphEng_Brit(SLMorphEng_Brit *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLTionRules::~SLTionRules(SLTionRules *this)
{
  SLEncyclopedia::~SLEncyclopedia(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_NameEnding::~SLMorphEng_NameEnding(SLMorphEng_NameEnding *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLFlatMorphRulesEng::~SLFlatMorphRulesEng(SLFlatMorphRulesEng *this)
{
  SLFlatMorphRules::~SLFlatMorphRules(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng::~SLMorphEng(SLMorphEng *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLPrefixMorphEng::~SLPrefixMorphEng(SLPrefixMorphEng *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphEng_BILITY::SLMorphEng_BILITY(SLMorphEng_BILITY *this, const SLMorphTraits *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 8;
  v10 = 0x330192104012F3CLL;
  *SLMorph::SLMorph(this, "BILITY", &v9, a2, 1, 64, 0, a8) = &unk_287BD4678;
  v8 = *MEMORY[0x277D85DE8];
}

void *std::__split_buffer<unsigned char>::emplace_back<unsigned char>(void *result, char *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if ((2 * &v4[-*result]) > 1)
      {
        v10 = 2 * &v4[-*result];
      }

      operator new();
    }

    v7 = (v6 + 1) / -2;
    v8 = &v5[-((v6 + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-((v6 + 1) / 2)], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v8[v9];
    v3[1] = &v5[v7];
    v3[2] = &v8[v9];
  }

  *v4 = *a2;
  ++v3[2];
  return result;
}

const char *SLTagEng::Name(SLTagEng *this)
{
  if (this <= 0x3FF)
  {
    return SLTag::Name(this);
  }

  if (this <= 0x423)
  {
    return SLTagEng::sName[this - 1024];
  }

  return "";
}

char *SLBndEng::Name(SLBndEng *this)
{
  v1 = &SLBnd::sName[this];
  if (this >= 4)
  {
    v1 = &SLBndEng::sName[this - 4];
  }

  return *v1;
}

uint64_t SLPhonEng::Find(SLPhonEng *this, int a2)
{
  v2 = 72;
  switch(this)
  {
    case '!':
      return v2;
    case '%':
      return 0;
    case '+':
      return 74;
    case ',':
      return 68;
    case '-':
      return 61;
    case '.':
      return 70;
    case '/':
      return 62;
    case '1':
      return 1;
    case '2':
      return 58;
    case '3':
      return 59;
    case ':':
      return 69;
    case '=':
      return 60;
    case '>':
      return 65;
    case '?':
      return 71;
    case 'A':
      if (a2 > 86)
      {
        switch(a2)
        {
          case 'W':
            return 16;
          case 'X':
            return 11;
          case 'Y':
            return 14;
          default:
            goto LABEL_74;
        }
      }

      else
      {
        switch(a2)
        {
          case 'A':
            return 7;
          case 'E':
            return 6;
          case 'O':
            return 9;
          default:
            goto LABEL_74;
        }
      }

    case 'C':
      return 52;
    case 'D':
      return 41;
    case 'E':
      if (a2 == 89)
      {
        v2 = 13;
      }

      else
      {
        v2 = -1;
      }

      v6 = a2 == 72;
      v7 = 5;
      goto LABEL_59;
    case 'I':
      v2 = 4;
      v3 = 3;
      if (a2 == 88)
      {
        v4 = 25;
      }

      else
      {
        v4 = -1;
      }

      v5 = a2 == 89;
      goto LABEL_35;
    case 'J':
      return 53;
    case 'N':
      return 37;
    case 'O':
      if (a2 == 89)
      {
        v2 = 15;
      }

      else
      {
        v2 = -1;
      }

      v6 = a2 == 87;
      v7 = 17;
LABEL_59:
      if (v6)
      {
        return v7;
      }

      return v2;
    case 'S':
      return 44;
    case 'T':
      return 40;
    case 'U':
      v2 = 10;
      v3 = 8;
      if (a2 == 87)
      {
        v4 = 18;
      }

      else
      {
        v4 = -1;
      }

      v5 = a2 == 88;
LABEL_35:
      if (!v5)
      {
        v3 = v4;
      }

      if (a2 != 72)
      {
        v2 = v3;
      }

      break;
    case 'Z':
      v2 = 45;
      break;
    case '\\':
      v2 = 63;
      break;
    case '_':
      v2 = 2;
      break;
    case 'b':
      v2 = 47;
      break;
    case 'd':
      v2 = 49;
      break;
    case 'f':
      v2 = 38;
      break;
    case 'g':
      v2 = 51;
      break;
    case 'h':
      v2 = 34;
      break;
    case 'k':
      v2 = 50;
      break;
    case 'l':
      v2 = 33;
      break;
    case 'm':
      v2 = 35;
      break;
    case 'n':
      v2 = 36;
      break;
    case 'p':
      v2 = 46;
      break;
    case 'r':
      v2 = 32;
      break;
    case 's':
      v2 = 42;
      break;
    case 't':
      v2 = 48;
      break;
    case 'v':
      v2 = 39;
      break;
    case 'w':
      v2 = 30;
      break;
    case 'y':
      v2 = 31;
      break;
    case 'z':
      v2 = 43;
      break;
    case '~':
      v2 = 75;
      break;
    default:
LABEL_74:
      v2 = -1;
      break;
  }

  return v2;
}

const char *SLElementNamesEng::TagName(SLElementNamesEng *this, SLTag *a2)
{
  if (a2 <= 0x3FF)
  {
    return SLTag::Name(a2);
  }

  if (a2 <= 0x423)
  {
    return SLTagEng::sName[a2 - 1024];
  }

  return "";
}

char *SLElementNamesEng::BndName(SLElementNamesEng *this, unsigned int a2)
{
  v2 = &SLBnd::sName[a2];
  if (a2 >= 4)
  {
    v2 = &SLBndEng::sName[a2 - 4];
  }

  return *v2;
}

void SLElementNamesEng::~SLElementNamesEng(SLElementNamesEng *this)
{
  SLElementNames::~SLElementNames(this);

  JUMPOUT(0x26D6753C0);
}

void SLPostLexerImpl::SLPostLexerImpl(SLPostLexerImpl *this, SLLexer *a2, SLDictLookup *a3, SLPronouncer *a4)
{
  SLLexerInstance::SLLexerInstance(this, 0, -1);
  *v8 = &unk_287BD4B80;
  SLLexerBuffer::SLLexerBuffer((v8 + 12), a2, 1);
  *this = &unk_287BD4A28;
  *(this + 12) = &unk_287BD4B10;
  *(this + 21) = a3;
  *(this + 22) = a4;
  SLDissecter::Create(a4, v9);
}

void sub_26B2EE344(_Unwind_Exception *a1)
{
  SLLexerBuffer::~SLLexerBuffer(v2);
  SLLexer::~SLLexer(v1);
  _Unwind_Resume(a1);
}

void SLPostLexerImpl::clear(SLPostLexerImpl *this)
{
  *(this + 121) = 256;
  *(this + 244) = 0;
  v2 = *(this + 16);
  v3 = *(this + 17);
  *(this + 20) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 17);
      v2 = (*(this + 16) + 8);
      *(this + 16) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  *(this + 19) = v6;
}

void SLPostLexerImpl::~SLPostLexerImpl(SLPostLexerImpl *this)
{
  *this = &unk_287BD4A28;
  v2 = (this + 96);
  *(this + 12) = &unk_287BD4B10;
  v3 = *(this + 23);
  if (v3)
  {
    MEMORY[0x26D6753C0](v3, 0x1000C405D080610);
  }

  for (i = 0; i != -96; i -= 24)
  {
    if (*(this + i + 431) < 0)
    {
      operator delete(*(this + i + 408));
    }
  }

  v5 = *(this + 27);
  if (v5)
  {
    *(this + 28) = v5;
    operator delete(v5);
  }

  SLLexerBuffer::~SLLexerBuffer(v2);

  SLLexer::~SLLexer(this);
}

{
  SLPostLexerImpl::~SLPostLexerImpl(this);

  JUMPOUT(0x26D6753C0);
}

void non-virtual thunk toSLPostLexerImpl::~SLPostLexerImpl(SLPostLexerImpl *this)
{
  SLPostLexerImpl::~SLPostLexerImpl((this - 96));
}

{
  SLPostLexerImpl::~SLPostLexerImpl((this - 96));

  JUMPOUT(0x26D6753C0);
}

SLToken *SLPostLexerImpl::NextToken(SLPostLexerImpl *this)
{
  if (*(this + 243) == 1)
  {
    v2 = SLLexerBuffer::operator[](this + 12, 0);
    if (v2)
    {
      v3 = v2;
      if (*v2 == 13 && **(v2 + 7) == 9)
      {
        *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
        SLToken::~SLToken(v3);
        MEMORY[0x26D6753C0]();
      }
    }

    *(this + 243) = 0;
  }

  v4 = SLLexerBuffer::operator[](this + 12, 0);
  if (v4)
  {
    while (1)
    {
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      if ((*(v4 + 16) & 0x40) == 0)
      {
        if (*(this + 240) == 1)
        {
          if (v4 != *(this + 31))
          {
            *(this + 31) = v4;
            __p.__r_.__value_.__r.__words[0] = v4;
            std::deque<SLToken *>::push_front(this + 15, &__p);
            return v4;
          }

          v5 = *(v4 + 6);
          if (v5)
          {
            CFRelease(v5);
            *(v4 + 6) = 0;
          }

          *(this + 31) = 0;
        }

        SLTokenList::SLTokenList(&__p);
        v7 = 0;
        switch(*v4)
        {
          case 0:
            SLPostLexerImpl::HandleAlpha(this, v4);
            goto LABEL_75;
          case 1:
            SLPostLexerImpl::HandleNumber(this, v4, &__p);
            goto LABEL_75;
          case 2:
            SLPostLexerImpl::HandleAlphaNumeric(this, v4, &__p);
            goto LABEL_75;
          case 4:
          case 5:
            SLPostLexerImpl::HandleInsert(this, v4, &__p);
            goto LABEL_75;
          case 6:
            SLPostLexerImpl::HandleParagraph(this, v4, &__p);
            goto LABEL_75;
          case 7:
            SLPostLexerImpl::HandleURL(this, v4, &__p);
            goto LABEL_75;
          case 0xA:
            SLPostLexerImpl::HandleCitChar(this, v4, &__p);
          case 0xB:
            goto LABEL_54;
          case 0xC:
            v7 = 1;
LABEL_54:
            SLPostLexerImpl::HandleLiteral(this, v4, v7, &__p);
            goto LABEL_75;
          case 0xD:
            (*(*this + 104))(this, v4, 0);
            goto LABEL_75;
          case 0xE:
            (*(**(this + 22) + 24))(*(this + 22), v4, &__p);
            SLToken::~SLToken(v4);
            MEMORY[0x26D6753C0]();
            goto LABEL_75;
          case 0x11:
            SLPostLexerImpl::HandleRomanNumeral(this, v4, &__p);
            goto LABEL_75;
          case 0x12:
            SLPostLexerImpl::HandleTime(this, v4, &__p);
            goto LABEL_75;
          case 0x13:
            SLPostLexerImpl::HandleElapsedTime(this, v4, &__p);
            goto LABEL_75;
          case 0x14:
            SLPostLexerImpl::HandleNumericPair(this, v4, &__p);
            goto LABEL_75;
          case 0x15:
            SLPostLexerImpl::HandleDimensions(this, v4, &__p);
            goto LABEL_75;
          case 0x16:
            (*(*this + 136))(this, v4, &__p);
            goto LABEL_75;
          case 0x17:
            SLPostLexerImpl::HandleMusicalKey(v6, v4, &__p);
          case 0x18:
            SLPostLexerImpl::HandleDate(this, v4, &__p);
            goto LABEL_75;
          case 0x19:
            *(this + 64) = *(v4 + 3);
            goto LABEL_93;
          case 0x1A:
            SLPostLexerImpl::HandleFraction(this, v4);
            goto LABEL_75;
          case 0x1B:
            SLPostLexerImpl::HandleLegalSection(this, v4, &__p);
            goto LABEL_75;
          case 0x1C:
            SLPostLexerImpl::HandleGeoLoc(this, v4, &__p);
            goto LABEL_75;
          case 0x1D:
            SLPostLexerImpl::HandleDottedNumbers(this, v4, &__p);
            goto LABEL_75;
          case 0x1E:
            SLPostLexerImpl::HandleRange(this, v4, &__p);
            goto LABEL_75;
          case 0x1F:
            SLPostLexerImpl::HandleNumericBullet(this, v4, &__p);
          case 0x20:
            SLPostLexerImpl::HandleEmoji(this, v4, &__p);
            goto LABEL_75;
          case 0x21:
            SLPostLexerImpl::HandleIPA(this, v4, &__p);
LABEL_75:
            if (__p.__r_.__value_.__r.__words[2])
            {
              SLPostLexerImpl::push_front(this, &__p);
            }

            std::__list_imp<SLToken *>::clear(&__p);
            goto LABEL_78;
          default:
LABEL_93:
            std::__list_imp<SLToken *>::clear(&__p);
            return v4;
        }
      }

      Class = SLTokenGetClass(v4);
      if (Class != 32)
      {
        if (Class <= 0x2F && ((1 << Class) & 0xC80000000000) != 0)
        {
          *(this + 260) = 0;
        }

        return v4;
      }

      v9 = *(v4 + 4);
      if ((v9 & 0x4000) != 0)
      {
        *(v4 + 4) = v9 & 0xFFFFBFF7 | 8;
      }

      if (!*v4 && (((*(v4 + 8) - *(v4 + 7)) >> 1) - 3) <= 0xFFFFFFFFFFFFFFFDLL && !SLToken::HasTag(v4, 70))
      {
        *(this + 244) = (*(v4 + 4) & 0x18) == 16;
      }

      if (SLPostLexerImpl::HasPossessive(this, v4))
      {
        SLPostLexerImpl::HandlePossessive(this, v4);
      }

      v10 = SLLexerBuffer::operator[](this + 12, 0);
      if (v10)
      {
        v11 = v10;
        if (*v10 - 1 <= 1)
        {
          (*(*this + 120))(this, v4, v10);
        }

        if (*(v11 + 18))
        {
          v12 = SLLexerBuffer::operator[](this + 12, 1uLL);
          if (v12 && !*v12)
          {
            SLPostLexerImpl::Transcribe(v12, v12, 2, 0, ((*(v12 + 8) - *(v12 + 7)) >> 1) - 1, &__p);
            SLTmpLookup::SLTmpLookup(v21, &__p, *(this + 21));
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v21[0])
            {
              v13 = v22;
            }

            else
            {
              v13 = 0;
            }

            SLPostLexerImpl::PredictRomanNumeral(this, v11, v4, v13);
            SLTmpLookup::~SLTmpLookup(v21);
          }

          else
          {
            SLPostLexerImpl::PredictRomanNumeral(this, v11, v4, 0);
          }
        }

        if (!*v11)
        {
          v14 = *(v11 + 7);
          if (*(v11 + 8) - v14 == 4 && (SLChar::sCharClass[*v14 & 0x3F | (SLChar::sUniMap[*v14 >> 6] << 6)] & 0x9F) == 1 && (*(v11 + 17) & 0x40) == 0)
          {
            (*(*this + 128))(this, v4, v11);
          }
        }
      }

      if ((*(this + 257) & 1) == 0)
      {
        break;
      }

      if (!SLToken::HasTag(v4, 68))
      {
        break;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 4521985;
      if (SLToken::SelectHomographs(v4, 0x7FFFFFFF, &__p))
      {
        break;
      }

      SLToken::SetType(v4, 11);
      v15 = *(v4 + 8);
      if (*(v15 - 2) == 46)
      {
        v16 = v15 - 4;
        memmove(v15 - 4, v15 - 2, 2uLL);
        *(v4 + 8) = v16 + 2;
      }

      __p.__r_.__value_.__r.__words[0] = v4;
      std::deque<SLToken *>::push_front(this + 15, &__p);
LABEL_78:
      v4 = SLLexerBuffer::operator[](this + 12, 0);
      if (!v4)
      {
        goto LABEL_79;
      }
    }

    v17 = *(v4 + 2);
    if (v17 == 5)
    {
      v18 = 1;
LABEL_89:
      *(v4 + 2) = v18;
    }

    else if (v17 == 1)
    {
      *(this + 260) = 2;
    }

    else if (!*(v4 + 2))
    {
      v18 = *(this + 260);
      goto LABEL_89;
    }
  }

  else
  {
LABEL_79:
    SLPostLexerImpl::clear(this);
  }

  return v4;
}

BOOL SLPostLexerImpl::HasPossessive(SLPostLexerImpl *this, SLToken *a2)
{
  v4 = SLLexerBuffer::operator[](this + 12, 0);
  v5 = 0;
  if ((*(a2 + 16) & 1) == 0)
  {
    v6 = v4;
    if (v4)
    {
      if (*v4)
      {
        return 0;
      }

      if (*(v4 + 8) - *(v4 + 7) != 6)
      {
        return 0;
      }

      if ((*(v4 + 16) & 0x40) != 0)
      {
        return 0;
      }

      v7 = (*(**(this + 22) + 176))(*(this + 22));
      if (!v7)
      {
        return 0;
      }

      SLPostLexerImpl::Transcribe(v7, v6, 2, 0, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, &__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 2)
        {
          return LOWORD(__p.__r_.__value_.__l.__data_) == 21287;
        }

        return 0;
      }

      v5 = __p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 21287;
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v5;
}

void SLPostLexerImpl::HandlePossessive(SLPostLexerImpl *this, SLToken *a2)
{
  v4 = SLLexerBuffer::operator[](this + 12, 0);
  *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
  std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
  *(v4[7] + 1) += SLChar::sToUpper[*(v4[7] + 1) & 0x3F | (SLChar::sUniMap[*(v4[7] + 1) >> 6] << 6)];
  SLToken::AppendToken(a2, v4);
  (*(**(this + 22) + 192))(*(this + 22), a2);
  SLToken::~SLToken(v4);

  JUMPOUT(0x26D6753C0);
}

void SLPostLexerImpl::PredictRomanNumeral(SLPostLexerImpl *this, SLToken *a2, SLToken *a3, SLToken *a4)
{
  v8 = *(a2 + 4);
  if ((v8 & 0x1000) != 0)
  {
    IsRomanOrdinal = SLPostLexerImpl::IsRomanOrdinal(this, a2);
    v8 = *(a2 + 4);
    if ((IsRomanOrdinal & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((v8 & 0x200) != 0 && ((*(**(this + 22) + 176))(*(this + 22)) & 1) == 0)
  {
LABEL_7:
    v8 = *(a2 + 4);
LABEL_8:
    v10 = v8 & 0xFFFEFFFF;
LABEL_9:
    *(a2 + 4) = v10;
    goto LABEL_36;
  }

  if (a3)
  {
    if (SLToken::HasTag(a3, 84))
    {
      goto LABEL_7;
    }

    if (SLToken::HasTag(a3, 82))
    {
      v11 = *(a2 + 7);
      if (*(a2 + 8) - v11 == 4 && *v11 == 73 && !*(a3 + 5))
      {
        goto LABEL_7;
      }

      SLToken::SetType(a2, 17);
      v12 = 5373953;
      goto LABEL_34;
    }
  }

  if (a4 && SLToken::HasTag(a4, 88))
  {
    SLToken::SetType(a2, 17);
    v13 = *(a2 + 4);
    if ((v13 & 0x400) == 0)
    {
      *(a2 + 4) = v13 | 0x20000;
    }

    v23[0] = 5767169;
    v14 = a4;
    goto LABEL_35;
  }

  if (a3)
  {
    v15 = *(a2 + 7);
    v16 = *v15;
    if (memchr("XVI", v16, 4uLL))
    {
      v17 = *(a2 + 8) - v15;
      if (v17 == 4)
      {
        if ((*(a2 + 16) & 1) == 0)
        {
          if (SLPostLexerImpl::IsInitial(this, a2, 1uLL))
          {
            return;
          }

          v16 = **(a2 + 7);
        }

        if (v16 == 73 || v16 == 88)
        {
          if (!SLToken::HasTag(a3, 80))
          {
            goto LABEL_7;
          }

          goto LABEL_31;
        }
      }

      if (SLToken::HasTag(a3, 80))
      {
LABEL_31:
        SLToken::SetType(a2, 17);
        v18 = *(a2 + 4);
        if ((v18 & 0x400) == 0)
        {
          *(a2 + 4) = v18 | 0x420000;
        }

        v12 = 5242881;
LABEL_34:
        v23[0] = v12;
        v14 = a3;
LABEL_35:
        SLToken::SelectHomographs(v14, 0x7FFFFFFF, v23);
        goto LABEL_36;
      }

      if (a4 && v17 == 4 && SLToken::HasTag(a4, 64))
      {
        goto LABEL_7;
      }

      HasTag = SLToken::HasTag(a3, 64);
      if (HasTag)
      {
        SLToken::SetType(a2, 17);
        v23[0] = 4194305;
        SLToken::SelectHomographs(a3, 1, v23);
      }

      else
      {
        if (!SLPostLexerImpl::LooksLikeName(HasTag, a3, 0))
        {
          goto LABEL_36;
        }

        SLToken::SetType(a2, 17);
      }

      v22 = *(a2 + 4);
      if ((v22 & 0x400) == 0)
      {
        v10 = v22 | 0x420000;
        goto LABEL_9;
      }
    }
  }

LABEL_36:
  v19 = *(a2 + 4);
  if (*a2 == 17)
  {
    if ((*(a2 + 4) & 0x1400) != 0x1000)
    {
      return;
    }

    v20 = v19 | 0x20000;
  }

  else
  {
    v20 = v19 & 0xFFFFFBFF;
  }

  *(a2 + 4) = v20;
}

void *SLPostLexerImpl::HandleAlpha(SLPostLexerImpl *this, SLToken *a2)
{
  SLTokenList::SLTokenList(v33);
  v4 = SLLexerBuffer::operator[](this + 12, 0);
  v5 = v4;
  if (v4)
  {
    v4 = SLLexerBuffer::operator[](this + 12, 1uLL);
    v6 = v4;
    v7 = a2 + 16;
    if ((*(a2 + 18) & 1) != 0 && !*v5)
    {
      SLPostLexerImpl::Transcribe(v4, v5, 2, 0, ((*(v5 + 8) - *(v5 + 7)) >> 1) - 1, &__p);
      SLTmpLookup::SLTmpLookup(v31, &__p, *(this + 21));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v31[0] == 1)
      {
        SLPostLexerImpl::PredictRomanNumeral(this, a2, 0, v32);
        if (*a2 == 17)
        {
          __p.__r_.__value_.__r.__words[0] = a2;
          std::deque<SLToken *>::push_front(this + 15, &__p);
          SLTmpLookup::~SLTmpLookup(v31);
          return std::__list_imp<SLToken *>::clear(v33);
        }
      }

      SLTmpLookup::~SLTmpLookup(v31);
    }
  }

  else
  {
    v6 = 0;
    v7 = a2 + 16;
  }

  SLPostLexerImpl::Classify(v4, a2);
  v9 = (*(a2 + 8) - *(a2 + 7)) >> 1;
  v10 = v9 - 1;
  if (v9 == 4)
  {
    if (v5 && *v5 == 1)
    {
      Unit = SLPostLexerImpl::FindUnit(this, a2, 0, v10, 36);
      if (Unit)
      {
        goto LABEL_31;
      }

      v13 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = SLPostLexerImpl::FindUnit(this, a2, 0, v13, 60);
    if (v14 && (SLPostLexerImpl::HandleDayAbbr(this, v14, a2) & 1) != 0)
    {
      return std::__list_imp<SLToken *>::clear(v33);
    }

    goto LABEL_35;
  }

  if (v9 != 3)
  {
    if (v9 == 2)
    {
      if (*(a2 + 5))
      {
        IsInitial = SLPostLexerImpl::IsInitial(this, a2, 0);
        if (IsInitial)
        {
          return std::__list_imp<SLToken *>::clear(v33);
        }
      }

      if (v6)
      {
        if (*v5 == 13 && *v6 == 13 && ((*(v5 + 4) | *v7) & 1) == 0 && **(v5 + 7) == 46)
        {
          *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
          std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
          SLToken::~SLToken(v5);
          MEMORY[0x26D6753C0]();
          SLToken::SetType(a2, 11);
          __p.__r_.__value_.__r.__words[0] = a2;
          std::deque<SLToken *>::push_front(this + 15, &__p);
          return std::__list_imp<SLToken *>::clear(v33);
        }
      }

      else if (!v5)
      {
        goto LABEL_47;
      }

      if (*v7)
      {
        v16 = 1;
        if (!v5)
        {
          goto LABEL_88;
        }

LABEL_51:
        if (!v16)
        {
          goto LABEL_88;
        }

        if (*v5)
        {
          goto LABEL_88;
        }

        if (*(v5 + 8) - *(v5 + 7) != 4)
        {
          goto LABEL_88;
        }

        SLPostLexerImpl::Classify(IsInitial, v5);
        if (*(a2 + 5) != *(v5 + 5))
        {
          goto LABEL_88;
        }

        v17 = **(a2 + 7);
        v18 = **(v5 + 7);
        SLToken::SetType(a2, 11);
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = SLLexerBuffer::operator[](this + 12, v19);
          v22 = v21;
          if (!v21)
          {
            break;
          }

          if (*v21)
          {
            goto LABEL_62;
          }

          if (*(v21 + 8) - *(v21 + 7) != 4)
          {
            goto LABEL_62;
          }

          SLPostLexerImpl::Classify(v21, v21);
          if (*(a2 + 5) != v22[5])
          {
            goto LABEL_62;
          }

          SLToken::SetType(v22, 11);
          ++v20;
          ++v19;
        }

        while ((v22[16] & 1) != 0);
        v20 = v19 + 1;
LABEL_62:
        if (v17 == v18 && v20 == 2)
        {
          *(SLLexerBuffer::operator[](this + 12, 0) + 2) = 3;
        }

        __p.__r_.__value_.__r.__words[0] = a2;
        std::deque<SLToken *>::push_front(this + 15, &__p);
        return std::__list_imp<SLToken *>::clear(v33);
      }

LABEL_47:
      IsInitial = (*(*this + 80))(this, **(a2 + 7));
      if (!IsInitial)
      {
        SLToken::SetType(a2, 11);
        __p.__r_.__value_.__r.__words[0] = a2;
        std::deque<SLToken *>::push_front(this + 15, &__p);
        return std::__list_imp<SLToken *>::clear(v33);
      }

      v16 = *v7 & 1;
      if (!v5)
      {
LABEL_88:
        SLPostLexerImpl::HandleApostrophes(this, a2, v33);
        SLPostLexerImpl::push_front(this, v33);
        return std::__list_imp<SLToken *>::clear(v33);
      }

      goto LABEL_51;
    }

LABEL_35:
    if (!v5 && (v7[2] & 4) == 0)
    {
      goto LABEL_88;
    }

    v15 = SLPostLexerImpl::FindUnit(this, a2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 62);
    if (!v15 || (SLPostLexerImpl::HandleMonthAbbr(this, v15, a2) & 1) == 0)
    {
      goto LABEL_88;
    }

    return std::__list_imp<SLToken *>::clear(v33);
  }

  if (!v5 || *(a2 + 5) != 2)
  {
    if (v5 && *v5 == 1)
    {
LABEL_42:
      Unit = SLPostLexerImpl::FindUnit(this, a2, 0, v10, 36);
      if (!Unit)
      {
        goto LABEL_88;
      }

LABEL_31:
      SLPostLexerImpl::HandleCurrency(this, Unit, a2);
      return std::__list_imp<SLToken *>::clear(v33);
    }

LABEL_77:
    if (v6 && (*v7 & 1) == 0 && *v5 == 13 && **(v5 + 7) == 46 && *v6 == 1)
    {
      SLToken::AppendToken(a2, v5);
      v27 = SLPostLexerImpl::FindUnit(this, a2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 36);
      if (v27)
      {
        *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
        SLToken::~SLToken(v5);
        MEMORY[0x26D6753C0]();
        SLPostLexerImpl::HandleCurrency(this, v27, a2);
        return std::__list_imp<SLToken *>::clear(v33);
      }

      v28 = *(a2 + 8);
      *(v28 - 4) = 0;
      *(a2 + 8) = v28 - 2;
      --*(a2 + 5);
      *(a2 + 4) &= ~1u;
    }

    goto LABEL_88;
  }

  v11 = *v5;
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      if ((*(v5 + 17) & 0x10) == 0 && *(v5 + 8) - *(v5 + 7) == 12)
      {
        goto LABEL_68;
      }

      goto LABEL_42;
    }

    goto LABEL_77;
  }

  if (*(v5 + 8) - *(v5 + 7) != 22)
  {
    goto LABEL_77;
  }

LABEL_68:
  v23 = SLPostLexerImpl::FindUnit(this, a2, 0, v10, 58);
  if (!v23)
  {
    goto LABEL_88;
  }

  if (*v5 == 2)
  {
    v24 = 0;
    v25 = *(v5 + 7);
    do
    {
      if (v24 == 10)
      {
        if (SLChar::sCharClass[*(v25 + 10) & 0x3F | (SLChar::sUniMap[*(v25 + 10) >> 6] << 6)] != 6)
        {
          goto LABEL_88;
        }
      }

      else if (SLChar::sCharClass[*(v25 + v24) & 0x3F | (SLChar::sUniMap[*(v25 + v24) >> 6] << 6)] != 2)
      {
        goto LABEL_88;
      }

      v24 += 2;
    }

    while (v24 != 20);
    v26 = 7;
  }

  else
  {
    v26 = 11;
  }

  SLToken::SetType(v5, v26);
  (*(**(this + 22) + 232))(*(this + 22), v23, v33, *(a2 + 4), *(a2 + 5));
  SLPostLexerImpl::push_front(this, v33);
  SLToken::~SLToken(a2);
  MEMORY[0x26D6753C0]();
  return std::__list_imp<SLToken *>::clear(v33);
}

void SLPostLexerImpl::HandleNumber(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  if ((*(this + 256) & 0x20) != 0)
  {
    if (SLPostLexerImpl::HasPossessive(this, a2))
    {
      v19 = SLLexerBuffer::operator[](this + 12, 0);
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      SLToken::AppendToken(a2, v19);
      if (v19)
      {
        SLToken::~SLToken(v19);
        MEMORY[0x26D6753C0]();
      }
    }

    goto LABEL_25;
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x800000) == 0)
  {
    if ((v6 & 0x1000) != 0 || ((*(*this + 200))(this, a2) & 1) == 0)
    {
      if (SLPostLexerImpl::HandleTokenInDictionary(this, a2) & 1) != 0 || (SLPostLexerImpl::HandleURLInSymbols(this, a2, a3))
      {
        return;
      }

      v7 = SLLexerBuffer::operator[](this + 12, 0);
      v8 = v7;
      v9 = *(a2 + 4);
      v10 = 0;
      if (v7)
      {
        v11 = *v7;
        if (*v7)
        {
          v12 = v11 == 11;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12;
        if (v11 != 13 || (v9 & 1) != 0)
        {
          v18 = 0;
        }

        else
        {
          v14 = **(v7 + 7);
          v15 = v14 > 0x2B;
          v16 = (1 << v14) & 0x82000000001;
          v17 = v15 || v16 == 0;
          v10 = 1;
          v18 = !v17;
        }
      }

      else
      {
        v13 = 0;
        v18 = 0;
      }

      v22 = v9 & 0x20000;
      v23 = (v9 >> 17) & 1;
      if ((v9 & 0x1000) == 0)
      {
        v24 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
        if (v22)
        {
LABEL_35:
          if (((v10 ^ 1 | ((*(a2 + 4) & 0x80u) >> 7)) & 1) == 0)
          {
            v25 = **(v7 + 7);
            v12 = v25 == **(*(**(this + 22) + 216))(*(this + 22), 207);
            v23 = (v9 >> 17) & 1;
            if (v12 && (*(v8 + 16) & 1) == 0)
            {

              SLPostLexerImpl::HandleThousandsSeparators(this, a2, 35);
              return;
            }
          }

          goto LABEL_114;
        }

        if ((v9 & 1) == 0 || v13 != 1)
        {
          if (!v10)
          {
            goto LABEL_114;
          }

          if (**(v7 + 7) != 35)
          {
            goto LABEL_35;
          }
        }

        if (*(this + 257))
        {
          goto LABEL_114;
        }

        if ((~v9 & 0x200001) != 0)
        {
          v42 = *(v7 + 8) - *(v7 + 7);
        }

        else
        {
          v41 = *(v7 + 7);
          v42 = *(v7 + 8) - v41;
          if (v42 == 4)
          {
            if ((SLChar::sCharClass[*v41 & 0x3F | (SLChar::sUniMap[*v41 >> 6] << 6)] & 0x1F) == 1)
            {
              goto LABEL_114;
            }

            v42 = 4;
          }
        }

        Unit = SLPostLexerImpl::FindUnit(this, v7, 0, (v42 >> 1) - 1, 124);
        if (!Unit)
        {
          Unit = SLPostLexerImpl::FindUnit(this, v8, 0, ((*(v8 + 64) - *(v8 + 56)) >> 1) - 1, 35);
          if (!Unit)
          {
            goto LABEL_114;
          }
        }

        v65 = Unit;
        v66 = **Unit;
        if ((v66 - 43) <= 0x15 && ((1 << (v66 - 43)) & 0x200005) != 0)
        {
          goto LABEL_114;
        }

        v71 = v18;
        v88[0] = 0;
        if (*(v8 + 16))
        {
          v75 = 0;
          UnitModifier = 0;
        }

        else
        {
          v72 = SLLexerBuffer::operator[](this + 12, 1uLL);
          v73 = SLLexerBuffer::operator[](this + 12, 2uLL);
          UnitModifier = SLPostLexerImpl::FindUnitModifier(this, v72, v73, v88);
          v75 = v88[0];
          v66 = **v65;
        }

        if (v66 != 33 || v75 || !SLLexerBuffer::operator[](this + 12, 1uLL) || *SLLexerBuffer::operator[](this + 12, 1uLL) == 13)
        {
          v76 = *(v8 + 32);
          v77 = *(v8 + 40);
          *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
          std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
          if (!v75)
          {
            v78 = *(*(v8 + 64) - 4);
            if ((SLChar::sCharClass[v78 & 0x3F | (SLChar::sUniMap[v78 >> 6] << 6)] & 0x9F) == 0x81 && SLPostLexerImpl::FollowedByPeriod(this, v8))
            {
              v80 = SLLexerBuffer::operator[](this + 12, 0);
              *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
              std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
              if (v80)
              {
                SLToken::~SLToken(v80);
                MEMORY[0x26D6753C0]();
              }

              ++v77;
            }
          }

          SLToken::~SLToken(v8);
          MEMORY[0x26D6753C0]();
          SLDissecter::DissectNumber(*(this + 23), a2, 0, v24, &v82);
          (*(**(this + 22) + 48))(*(this + 22), a2, a3, &v82, 0, 0);
          v53 = BYTE2(v82) == 0;
          v60 = v75;
          v56 = this;
          v57 = v65;
          v58 = a3;
          v55 = v76;
          v54 = v77;
          v59 = UnitModifier;
          goto LABEL_93;
        }

        v18 = v71;
        v23 = (v9 >> 17) & 1;
LABEL_114:
        SLDissecter::DissectNumber(*(this + 23), a2, 0, v24, &v82);
        if (v8)
        {
          if ((*(a2 + 4) & 0x8000) == 0 && !*v8)
          {
            *(v8 + 16) |= 0x40000u;
            if ((v86 - 1) <= 0x1F)
            {
              v68 = SLPostLexerImpl::FindUnit(this, v8, 0, ((*(v8 + 64) - *(v8 + 56)) >> 1) - 1, 62);
              if (v68)
              {
                v69 = v68;
                *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
                std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
                if (SLPostLexerImpl::HandleMonthAbbr(this, v69, v8))
                {
                  v23 = 513;
                }

                else
                {
                  *v88 = v8;
                  std::deque<SLToken *>::push_front(this + 15, v88);
                }
              }
            }
          }
        }

        if (v8 && (v9 & 1) == 0 && *v8 == 26 && !v84 && !v85)
        {
          *(v8 + 16) |= 0x400u;
        }

        v70 = v23 | (*(a2 + 4) >> 3) & 0x80;
        if ((*(this + 256) & 0x40) != 0 || v70 || v24 != 4 || (v18 & 1) != 0 || v83 != 4 || (v86 - 1100) > 0x3E7)
        {
          (*(**(this + 22) + 48))(*(this + 22), a2, a3, &v82, v70, 0);
          if (v18)
          {
            if (!*(v8 + 1))
            {
              *(a3 + 24) = 2;
            }
          }

          goto LABEL_140;
        }

        v62 = *(**(this + 22) + 96);
        goto LABEL_136;
      }

      SLDissecter::DissectUnit(*(this + 23), a2, v88);
      v26 = v89;
      v81 = v90;
      v87 = 0;
      if (v9)
      {
        v29 = 0;
      }

      else
      {
        v27 = SLLexerBuffer::operator[](this + 12, 0);
        v28 = SLLexerBuffer::operator[](this + 12, 1uLL);
        v29 = SLPostLexerImpl::FindUnitModifier(this, v27, v28, &v87);
      }

      v79 = v18;
      if (v92 == 1)
      {
        v30 = *(*(a2 + 7) + 2 * v91);
        v31 = (SLChar::sCharClass[v30 & 0x3F | (SLChar::sUniMap[v30 >> 6] << 6)] & 0x1F) == 1;
      }

      else
      {
        v31 = 0;
      }

      v32 = v87;
      if (v87 || v88[0] != 0 && !v31)
      {
        v35 = SLPostLexerImpl::FindUnit(this, a2, v91, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 124);
        if (!v35)
        {
          v40 = SLPostLexerImpl::FindUnit(this, a2, v91, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 35);
          if (v40 || !v88[0])
          {
LABEL_72:
            if (!v40)
            {
              goto LABEL_94;
            }

            goto LABEL_73;
          }

          CommonCountable = SLPostLexerImpl::FindCommonCountable(this, a2, v91);
LABEL_71:
          v40 = CommonCountable;
          goto LABEL_72;
        }
      }

      else
      {
        v33 = v91;
        if (!v31)
        {
          v36 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
          v37 = this;
          v38 = a2;
          v39 = 35;
          goto LABEL_70;
        }

        v34 = *(a2 + 7);
        if ((SLChar::sCharClass[*(v34 + 2 * v91) & 0x3F | (SLChar::sUniMap[*(v34 + 2 * v91) >> 6] << 6)] & 0x9F) != 0x81)
        {
          operator new();
        }

        v35 = SLPostLexerImpl::FindUnit(this, a2, v91, ((*(a2 + 8) - v34) >> 1) - 1, 35);
        if (!v35)
        {
          v33 = v91;
          v36 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
          v37 = this;
          v38 = a2;
          v39 = 124;
LABEL_70:
          CommonCountable = SLPostLexerImpl::FindUnit(v37, v38, v33, v36, v39);
          goto LABEL_71;
        }
      }

      v40 = v35;
LABEL_73:
      v44 = *v40;
      v45 = **v40;
      if (v45 != 64)
      {
        v46 = v26;
        v47 = v29;
        v48 = v22 >> 17;
        if (v45 == 45)
        {
          v50 = v23;
          v51 = 0;
          v40 = 0;
          v49 = 1;
        }

        else if (v45 == 43)
        {
          v49 = 0;
          v40 = 0;
          v50 = v23 | 2;
          v51 = 1;
        }

        else
        {
          v50 = v23;
          v49 = 0;
          v51 = 0;
        }

        goto LABEL_87;
      }

      v52 = *(v44 + 1);
      if ((v52 & 0x80000000) != 0 || (*(MEMORY[0x277D85DE0] + 4 * v52 + 60) & 0x400) == 0)
      {
LABEL_82:
        v46 = v26;
        v47 = v29;
        v49 = 0;
        v40 = 0;
        v51 = v52 == 43;
        if (v52 == 43)
        {
          v50 = 3;
        }

        else
        {
          v50 = 1;
        }

        v48 = 1;
LABEL_87:
        SLDissecter::DissectNumber(*(this + 23), a2, v46, v81, &v82);
        if (!v51 && !v48 || !v88[0] && !v85)
        {
          if (!v40)
          {
            if ((v49 | v48) & 1 | !v51 | ((*(this + 256) & 0x40) >> 6) & 1 || v81 != 4 || (v79 & 1) != 0 || v83 != 4 || (v86 - 1100) > 0x3E7)
            {
              (*(**(this + 22) + 48))(*(this + 22), a2, a3, &v82, v50, v92);
              if (v49)
              {
                v63 = *(*a3 + 16);
                if (v63)
                {
                  (*(*this + 208))(this, v63, *(a2 + 7) + 2 * v91, *(a2 + 7) + 2 * v91 + 2 * v92);
                  *(v63 + 16) = *(v63 + 16) & 0xFFFFBFBF | 0x4000;
                  *(v63 + 3) = 0;
                }
              }

              goto LABEL_140;
            }

            v62 = *(**(this + 22) + 96);
LABEL_136:
            v62();
            goto LABEL_140;
          }

          (*(**(this + 22) + 48))(*(this + 22), a2, a3, &v82, 0, 0);
          v53 = (v88[0] | BYTE2(v82)) == 0;
          v54 = v92;
          v55 = v91 + *(a2 + 4);
          v91 = v55;
          v56 = this;
          v57 = v40;
          v58 = a3;
          v59 = v47;
          v60 = v32;
LABEL_93:
          SLPostLexerImpl::AppendFullUnit(v56, v57, v58, v55, v54, v53, v59, v60);
LABEL_140:
          SLToken::~SLToken(a2);
          MEMORY[0x26D6753C0]();
          return;
        }

        goto LABEL_94;
      }

      if (*(*(a2 + 7) + 2 * v81 - 2) == v52)
      {
        LOBYTE(v52) = *(v44 + 2);
        goto LABEL_82;
      }

LABEL_94:
      SLDissecter::DissectNumber(*(this + 23), a2, v89, v90, &v82);
      if (v84)
      {
        v61 = 7;
      }

      else
      {
        v61 = 2;
      }

      SLToken::SetType(a2, v61);
      *(a2 + 4) &= ~0x1000u;
      v93 = a2;
      v20 = (this + 120);
      v21 = &v93;
      goto LABEL_26;
    }

LABEL_25:
    SLToken::SetType(a2, 11);
    v82 = a2;
    v20 = (this + 120);
    v21 = &v82;
LABEL_26:
    std::deque<SLToken *>::push_front(v20, v21);
    return;
  }

  SLPostLexerImpl::HandleElapsedSymbol(this, a2, a3);
}

void *SLPostLexerImpl::HandleFraction(SLPostLexerImpl *this, SLToken *a2)
{
  SLTokenList::SLTokenList(v30);
  v4 = *(a2 + 4);
  if ((v4 & 0x1000) != 0)
  {
    SLDissecter::DissectUnit(*(this + 23), a2, v27);
    v26 = 0;
    if (*(a2 + 16))
    {
      UnitModifier = 0;
    }

    else
    {
      v7 = SLLexerBuffer::operator[](this + 12, 0);
      v8 = SLLexerBuffer::operator[](this + 12, 1uLL);
      UnitModifier = SLPostLexerImpl::FindUnitModifier(this, v7, v8, &v26);
    }

    Unit = SLPostLexerImpl::FindUnit(this, a2, v28, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 124);
    if (!Unit && (Unit = SLPostLexerImpl::FindUnit(this, a2, v28, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 35)) == 0 || ((v11 = **Unit - 43, v12 = v11 > 0x15, v13 = (1 << v11) & 0x200005, !v12) ? (v14 = v13 == 0) : (v14 = 1), !v14))
    {
      operator new();
    }

    (*(**(this + 22) + 80))(*(this + 22), a2, v30);
    v28 += *(a2 + 4);
    SLPostLexerImpl::AppendFullUnit(this, Unit, v30, v28, v29, (v4 >> 10) & 1, UnitModifier, v26);
  }

  else
  {
    v5 = SLLexerBuffer::operator[](this + 12, 0);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    if (*v5)
    {
      goto LABEL_4;
    }

    v15 = SLPostLexerImpl::FindUnit(this, v5, 0, ((*(v5 + 8) - *(v5 + 7)) >> 1) - 1, 124);
    if (!v15)
    {
      v15 = SLPostLexerImpl::FindUnit(this, v6, 0, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, 35);
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    v27[0] = 0;
    if (*(v6 + 16))
    {
      v19 = 0;
      v18 = 0;
    }

    else
    {
      v16 = SLLexerBuffer::operator[](this + 12, 1uLL);
      v17 = SLLexerBuffer::operator[](this + 12, 2uLL);
      v18 = SLPostLexerImpl::FindUnitModifier(this, v16, v17, v27);
      v19 = v27[0];
    }

    v20 = **v15 == 33 && v19 == 0;
    if (!v20 || !SLLexerBuffer::operator[](this + 12, 1uLL) || *SLLexerBuffer::operator[](this + 12, 1uLL) == 13)
    {
      v21 = *(v6 + 4);
      v22 = *(v6 + 5);
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      if (!v19)
      {
        v23 = *(*(v6 + 8) - 4);
        if ((SLChar::sCharClass[v23 & 0x3F | (SLChar::sUniMap[v23 >> 6] << 6)] & 0x9F) == 0x81 && SLPostLexerImpl::FollowedByPeriod(this, v6))
        {
          v25 = SLLexerBuffer::operator[](this + 12, 0);
          *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
          std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
          if (v25)
          {
            SLToken::~SLToken(v25);
            MEMORY[0x26D6753C0]();
          }

          ++v22;
        }
      }

      SLToken::~SLToken(v6);
      MEMORY[0x26D6753C0]();
      (*(**(this + 22) + 80))(*(this + 22), a2, v30);
      SLPostLexerImpl::AppendFullUnit(this, v15, v30, v21, v22, (v4 >> 10) & 1, v18, v19);
    }

    else
    {
LABEL_4:
      (*(**(this + 22) + 80))(*(this + 22), a2, v30);
    }
  }

  SLToken::~SLToken(a2);
  MEMORY[0x26D6753C0]();
  SLPostLexerImpl::push_front(this, v30);
  return std::__list_imp<SLToken *>::clear(v30);
}

void sub_26B2F0B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__list_imp<SLToken *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t SLPostLexerImpl::HandleLegalSection(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  result = (*(**(this + 22) + 144))(*(this + 22), a2, a3);
  if (a2)
  {
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  return result;
}

SLToken *SLPostLexerImpl::HandleGeoLoc(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = *(a2 + 4);
  SLDissecter::DissectGeoLoc(*(this + 23), a2, v12);
  if ((v6 & 0x400) != 0 && ((*(a2 + 17) & 2) == 0 || !v13) && *(*(a2 + 7) + 2 * (((*(a2 + 8) - *(a2 + 7)) >> 1) - 2)) != *(*(a2 + 8) - 6))
  {
    v7 = *(this + 28);
    if (v7 != *(this + 27))
    {
      if ((*(*this + 72))(this, *(v7 - 2)))
      {
        operator new();
      }
    }
  }

  (*(**(this + 22) + 152))(*(this + 22), a2, a3, v12);
  SLToken::~SLToken(a2);
  result = MEMORY[0x26D6753C0]();
  if ((v6 & 0x400) == 0)
  {
    result = SLLexerBuffer::operator[](this + 12, 0);
    if (result)
    {
      v9 = result;
      if (!*result && *(result + 8) - *(result + 7) == 4)
      {
        result = (*(*this + 192))(this, result);
        if (result)
        {
          *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
          std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
          v10 = *(this + 22);
          Unit = SLPostLexerImpl::FindUnit(this, v9, 0, ((*(v9 + 8) - *(v9 + 7)) >> 1) - 1, 94);
          (*(*v10 + 240))(v10, Unit, a3, 0, *(v9 + 4), *(v9 + 5));
          SLToken::~SLToken(v9);
          return MEMORY[0x26D6753C0]();
        }
      }
    }
  }

  return result;
}

void SLPostLexerImpl::HandleDottedNumbers(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  SLDissecter::DissectDottedNumber(*(this + 23), a2, &v6);
  (*(**(this + 22) + 160))(*(this + 22), a2, a3, &v6);
  if (a2)
  {
    SLToken::~SLToken(a2);
    MEMORY[0x26D6753C0]();
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_26B2F0F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::HandleLiteral(SLPostLexerImpl *this, SLToken *a2, uint64_t a3, SLTokenList *a4)
{
  if (a3)
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(a2 + 4) >> 3) & 0x80;
  if (SLPostLexerImpl::HasApostrophe(this, a2))
  {
    v10 = *(*(a2 + 8) + 2 * (a3 << 63 >> 63) - 4);
    if ((SLChar::sToUpper[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] + v10) == 83)
    {
      v11 = SLLexerBuffer::operator[](this + 12, 0);
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      if (v11)
      {
        SLToken::~SLToken(v11);
        MEMORY[0x26D6753C0]();
      }
    }
  }

  v12 = v9 | v8;
  if (*(a2 + 8) - *(a2 + 7) == 4)
  {
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = SLLexerBuffer::operator[](this + 12, v13 - 1);
      if (!v15)
      {
        break;
      }

      v16 = *v15;
      if (v16 != 13 && v16 != 11)
      {
        break;
      }

      v18 = v15[7];
      if (v15[8] - v18 != 4)
      {
        break;
      }

      v19 = *v18;
      v13 = v14 + 1;
    }

    while (v19 == **(a2 + 7));
    if (v14 >= 4)
    {
      v20 = SLLexerBuffer::operator[](this + 12, 0);
      v21 = SLLexerBuffer::operator[](this + 12, 1uLL);
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      do
      {
        v22 = SLLexerBuffer::operator[](this + 12, 0);
        *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
        if (v22)
        {
          SLToken::~SLToken(v22);
          MEMORY[0x26D6753C0]();
        }

        --v14;
      }

      while (v14 > 3);
      v24 = v21;
      std::deque<SLToken *>::push_front(this + 15, &v24);
      v24 = v20;
      std::deque<SLToken *>::push_front(this + 15, &v24);
    }
  }

  result = (*(**(this + 22) + 16))(*(this + 22), a2, a4, v12);
  if (a2)
  {
    SLToken::~SLToken(a2);
    return MEMORY[0x26D6753C0]();
  }

  return result;
}

void SLPostLexerImpl::HandleEmoji(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  memset(&__p, 0, sizeof(__p));
  v6 = *(a2 + 7);
  v7 = (*(a2 + 8) - v6) >> 1;
  if (v7 <= 4)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v20 = *v6;
        if (v20 >> 11 >= 0x1B)
        {
          v21 = v6[1];
          if (v21 < 0xE000)
          {
            goto LABEL_40;
          }
        }

        SLChar::PushUTF8(&__p, v20);
        v12 = 2;
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_41;
        }

        v10 = *v6;
        if (v10 >> 11 < 0x1B || (v11 = v6[1], v11 >> 13 > 6))
        {
          SLChar::PushUTF8(&__p, v10);
          v8 = 4;
          v9 = 2;
          goto LABEL_39;
        }

        SLChar::PushUTF8(&__p, v10, v11);
        v12 = 4;
      }

      v6 = (*(a2 + 7) + v12);
    }

    SLChar::PushUTF8(&__p, *v6);
    goto LABEL_41;
  }

  if (v7 > 8)
  {
    if (v7 == 9)
    {
      SLChar::PushUTF8(&__p, *v6, v6[1]);
      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 4));
      v17 = *(a2 + 7);
      v18 = *(v17 + 6);
      if (v18 >> 11 < 0x1B || (v19 = *(v17 + 8), v19 >> 13 > 6))
      {
        SLChar::PushUTF8(&__p, v18);
        SLChar::PushUTF8(&__p, *(*(a2 + 7) + 8));
      }

      else
      {
        SLChar::PushUTF8(&__p, v18, v19);
      }

      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 10));
      v8 = 14;
      v9 = 12;
    }

    else
    {
      if (v7 != 12)
      {
        goto LABEL_41;
      }

      SLChar::PushUTF8(&__p, *v6, v6[1]);
      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 4));
      v13 = *(a2 + 7);
      v14 = *(v13 + 6);
      if (v14 >> 11 < 0x1B || (v15 = *(v13 + 8), v15 >> 13 > 6))
      {
        SLChar::PushUTF8(&__p, v14);
        SLChar::PushUTF8(&__p, *(*(a2 + 7) + 8));
      }

      else
      {
        SLChar::PushUTF8(&__p, v14, v15);
      }

      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 10));
      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 12), *(*(a2 + 7) + 14));
      SLChar::PushUTF8(&__p, *(*(a2 + 7) + 16));
      v8 = 20;
      v9 = 18;
    }

    goto LABEL_39;
  }

  if (v7 != 5)
  {
    if (v7 != 6)
    {
      goto LABEL_41;
    }

    SLChar::PushUTF8(&__p, *v6, v6[1]);
    SLChar::PushUTF8(&__p, *(*(a2 + 7) + 4));
    v8 = 8;
    v9 = 6;
    goto LABEL_39;
  }

  v16 = *v6;
  if (v16 != 55356 || (v16 = 55356, v6[1] != 56825) || v6[2] != 55356 || v6[3] != 56828)
  {
LABEL_25:
    SLChar::PushUTF8(&__p, v16, v6[1]);
    v8 = 6;
    v9 = 4;
LABEL_39:
    v22 = *(a2 + 7);
    v20 = *(v22 + v9);
    v21 = *(v22 + v8);
LABEL_40:
    SLChar::PushUTF8(&__p, v20, v21);
    goto LABEL_41;
  }

  if (isInMainlandChina(void)::onceToken != -1)
  {
    SLPostLexerImpl::HandleEmoji();
  }

  if ((isInMainlandChina(void)::isInMainlandChina & 1) == 0)
  {
    v6 = *(a2 + 7);
    v16 = *v6;
    goto LABEL_25;
  }

LABEL_41:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24 = (*(**(this + 22) + 208))(*(this + 22), p_p);
  if (v24)
  {
    (*(**(this + 22) + 232))(*(this + 22), v24, a3, *(a2 + 4), *(a2 + 5));
    SLToken::~SLToken(a2);
    MEMORY[0x26D6753C0]();
  }

  else
  {
    (*(*this + 136))(this, a2, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26B2F1728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLPostLexerImpl::HandleAlphaNumeric(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  if (SLPostLexerImpl::HandleTokenInDictionary(this, a2) & 1) != 0 || (SLPostLexerImpl::HandleURLInSymbols(this, a2, a3))
  {
    return;
  }

  v38 = 0;
  v39 = this;
  v41 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(a2 + 7);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v42 = a2;
  do
  {
    v20 = SLChar::sCharClass[*(v16 + 2 * v8) & 0x3F | (SLChar::sUniMap[*(v16 + 2 * v8) >> 6] << 6)];
    v21 = v20 & 0x1F;
    v43 = v8;
    v22 = v10;
    v23 = v38;
    if (v21 <= 1)
    {
      if (v20 & 0x1F) == 0 || (v13)
      {
LABEL_10:
        if ((v14 & v17 & 1) == 0)
        {
          if ((v14 & 1) == 0)
          {
            if (v43 - v18 >= 2 && *(v41 + 2))
            {
              v40 = (*(*(*v41 + 16) + 16) & 1) == 0;
            }

            operator new();
          }

LABEL_19:
          operator new();
        }

LABEL_18:
        operator new();
      }

      if ((v20 & 0x80) != 0)
      {
        v15 |= (v20 & 0x20) >> 5;
        if (v6 > 1 && v38 == 0)
        {
          v22 = v10 | 8;
        }

        v23 = v38 + 1;
      }

      else
      {
        v15 |= (v20 & 0x20) >> 5;
        if (v38)
        {
          v22 = v10 | 8;
        }

        else
        {
          ++v7;
        }

        ++v6;
      }

      v13 = 0;
      v10 = v22 | (v20 >> 1) & 0x20;
      v14 = 1;
      v38 = v23;
      goto LABEL_37;
    }

    if (v21 == 2)
    {
      if (v14)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v14 = 0;
      v13 = 1;
LABEL_37:
      v24 = v42;
      v25 = v43;
      goto LABEL_38;
    }

    if (v21 == 6)
    {
      goto LABEL_10;
    }

    v24 = v42;
    v25 = v43;
    v18 = v11;
    v19 = v9;
    if (v21 == 3)
    {
      v17 = v12 | (v43 - v11 == 1);
    }

    else
    {
      v17 = v12;
    }

LABEL_38:
    v8 = v25 + 1;
    v16 = *(v24 + 7);
    v9 = v19;
    v11 = v18;
    v12 = v17;
  }

  while (v8 <= ((*(v24 + 8) - v16) >> 1) - 1);
  *(v41 + 2);
  v27 = *(v41 + 1);
  if (v27 != v41)
  {
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = v27[1];
      if (v29)
      {
        v31 = *(v27[2] + 16) | (v30 == v41);
      }

      else
      {
        v31 = 0;
      }

      if (v28 == 1)
      {
        v32 = v27[2];
        if (*(v41 + 2) != 2)
        {
          goto LABEL_48;
        }

        if (*v32 == 1)
        {
          goto LABEL_49;
        }

        if (!**(*(v41 + 1) + 16))
        {
          SLTokenList::SLTokenList(v45);
          SLTokenList::SLTokenList(v44);
          if (!SLPostLexerImpl::HandleLookup(v39, *(*(v41 + 1) + 16), 0, v45) || !SLToken::HasTag(*(*(v41 + 1) + 16), 64) || !SLPostLexerImpl::HandleLookup(v39, *(*v41 + 16), 0, v44) || !SLToken::HasTag(*(*v41 + 16), 64))
          {
            *(v27[2] + 2) = 4;
          }

          std::__list_imp<SLToken *>::clear(v44);
          std::__list_imp<SLToken *>::clear(v45);
        }

        else
        {
LABEL_48:
          *(v32 + 2) = 4;
        }
      }

LABEL_49:
      v33 = v27[2];
      if (*v33)
      {
        goto LABEL_60;
      }

      v34 = *(v33 + 4);
      v35 = *(v33 + 5);
      if ((v34 & 0x10) != 0 && (v35 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
LABEL_59:
        SLToken::SetType(v33, 11);
        goto LABEL_60;
      }

      if (v35 == 1)
      {
        if ((v31 & (v30 != v41)) != 1 || **(v30 + 2))
        {
          goto LABEL_59;
        }

        if (v28)
        {
          if ((*(*v39 + 96))(v39, **(v33 + 7), (v34 >> 4) & 1))
          {
            goto LABEL_76;
          }
        }

        else if ((*(*v39 + 88))(v39, **(v33 + 7), (v34 >> 4) & 1))
        {
LABEL_76:
          *(v27[2] + 4) |= 0x4000u;
          ++v28;
          goto LABEL_60;
        }

        SLToken::SetType(v27[2], 11);
        *(v27[2] + 2) = 5;
      }

LABEL_60:
      v36 = v27[2];
      if (v30 != v41)
      {
        *(v36 + 4) |= 0x200000u;
      }

      v37 = *v36;
      v24 = v42;
      if (v37 == 12)
      {
        v28 += *(v36 + 5) / 2;
      }

      else if (v37 == 11)
      {
        v28 += *(v36 + 5);
      }

      else
      {
        ++v28;
      }

      v29 = *(v36 + 16) & 1;
      v27 = v27[1];
    }

    while (v27 != v41);
  }

  if (*(v39 + 241) == 1)
  {
    operator new();
  }

  if (v24)
  {
    SLToken::~SLToken(v24);
    MEMORY[0x26D6753C0]();
  }
}

void sub_26B2F241C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  MEMORY[0x26D6753C0](v1, 0x10F0C4034644DEDLL);
  _Unwind_Resume(a1);
}

void SLPostLexerImpl::HandleURL(SLPostLexerImpl *this, int64x2_t *a2, SLTokenList **a3)
{
  if ((a2[1].i8[1] & 4) != 0)
  {
    v6 = a2[4].i64[0];
    v7 = v6 - 4;
    memmove((v6 - 4), (v6 - 2), 2uLL);
    v8 = a2[3].i64[1];
    a2[4].i64[0] = v7 + 2;
    v9 = v7 - v8;
    if (v9)
    {
      memmove(v8, (v8 + 2), v9);
    }

    a2[4].i64[0] = v8 + v9;
    a2[2] = vaddq_s64(a2[2], xmmword_26B34DDE0);
    a2[1].i32[0] = a2[1].i32[0] & 0xFFFFFBFE | 1;
  }

  if (SLPostLexerImpl::HandleTokenInDictionary(this, a2) & 1) != 0 || (SLPostLexerImpl::HandleURLInSymbols(this, a2, a3))
  {
    return;
  }

  if ((a2[1].i8[0] & 1) == 0)
  {
    v10 = SLLexerBuffer::operator[](this + 12, 0);
    if (v10)
    {
      v11 = v10;
      if (*v10 == 7)
      {
        a2[2].i64[1] += *(v10 + 5);
        std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&a2[3].i64[1], (a2[4].i64[0] - 2), *(v10 + 7), (*(v10 + 8) - 2), (*(v10 + 8) - 2 - *(v10 + 7)) >> 1);
        a2[1].i32[0] = a2[1].i32[0] & 0xFFFFFFFE | *(v11 + 4) & 1;
        *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
        SLToken::~SLToken(v11);
LABEL_12:
        MEMORY[0x26D6753C0]();
        v17 = a2;
        std::deque<SLToken *>::push_front(this + 15, &v17);
        return;
      }

      v12 = SLLexerBuffer::operator[](this + 12, 1uLL);
      if (v12)
      {
        if (*v11 == 13)
        {
          v13 = v12;
          if (*v12 == 7 && (*(v11 + 16) & 1) == 0)
          {
            a2[2].i64[1] += *(v12 + 5) + *(v11 + 5);
            std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&a2[3].i64[1], (a2[4].i64[0] - 2), *(v11 + 7), (*(v11 + 8) - 2), (*(v11 + 8) - 2 - *(v11 + 7)) >> 1);
            std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&a2[3].i64[1], (a2[4].i64[0] - 2), *(v13 + 7), (*(v13 + 8) - 2), (*(v13 + 8) - 2 - *(v13 + 7)) >> 1);
            a2[1].i32[0] = a2[1].i32[0] & 0xFFFFFFFE | *(v13 + 4) & 1;
            *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
            std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
            *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
            std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
            SLToken::~SLToken(v11);
            MEMORY[0x26D6753C0]();
            SLToken::~SLToken(v13);
            goto LABEL_12;
          }
        }
      }
    }
  }

  HasPossessive = SLPostLexerImpl::HasPossessive(this, a2);
  (*(**(this + 22) + 40))(*(this + 22), a2, a3);
  if (!HasPossessive)
  {
    goto LABEL_24;
  }

  v15 = a3[1];
  while (a3 != v15)
  {
    a3 = *a3;
    v16 = a3[2];
    if (*v16 != 15)
    {
      SLPostLexerImpl::HandlePossessive(this, v16);
      break;
    }
  }

  if (a2)
  {
LABEL_24:
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }
}

void SLPostLexerImpl::HandleCitChar(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v5 = *(this + 28);
  if (v5 == *(this + 27) || !(*(*this + 72))(this, *(v5 - 2), **(a2 + 7)))
  {
    v7 = (*(*this + 72))(this, **(a2 + 7), *(*(a2 + 7) + 4));
    v6 = SLLexerBuffer::operator[](this + 12, 0);
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = SLLexerBuffer::operator[](this + 12, 0);
  }

  if ((*(a2 + 16) & 1) == 0 && v6 && !*v6)
  {
    operator new();
  }

LABEL_8:
  operator new();
}

uint64_t SLPostLexerImpl::HandleInsert(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  if (**(a2 + 7) != 40 || (*(a2 + 16) & 1) != 0 || (result = SLPostLexerImpl::IsCopyright(this, a2, a3), (result & 1) == 0))
  {
    v7 = SLLexerBuffer::operator[](this + 12, 0);
    v8 = SLLexerBuffer::operator[](this + 12, 1uLL);
    if (SLChar::sCharClass[**(a2 + 7) & 0x3F | (SLChar::sUniMap[**(a2 + 7) >> 6] << 6)] == 4 && (*(a2 + 16) & 1) == 0 && v7)
    {
      v9 = *v7;
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      if (v7[8] - v7[7] == 6)
      {
        if (!v8 || *v8 != 4 || (v10 = *v8[7], !(*(*this + 72))(this)))
        {
          SLToken::~SLToken(a2);

          JUMPOUT(0x26D6753C0);
        }

        v9 = *v7;
LABEL_13:
        if (v9 == 28 && (v7[2] & 0x600) == 0x400)
        {
          SLDissecter::DissectGeoLoc(*(this + 23), v7, v23);
          if (v24 == 2)
          {
            v11 = *(this + 28);
            if (v11 != *(this + 27) && ((*(*this + 72))(this, *(v11 - 2), *(v7[7] + v25)) & 1) != 0)
            {
              SLToken::~SLToken(a2);
              return MEMORY[0x26D6753C0]();
            }
          }
        }
      }
    }

    if (SLPostLexerImpl::SeenMatchingParenQuote(this, **(a2 + 7), (*(a2 + 4) & 4) != 0, a3))
    {
      SLToken::SetType(a2, 15);
      v12 = *(a2 + 4);
      if ((v12 & 6) != 0)
      {
        goto LABEL_41;
      }

      v12 |= 4u;
LABEL_40:
      *(a2 + 4) = v12;
LABEL_41:
      if (*a2 == 15)
      {
        v20 = *(a2 + 7);
        v21 = *v20;
        if ((v12 & 2) != 0)
        {
          v22 = 40;
          if (v21 != 40 && v21 != 91 && v21 != 123)
          {
            v22 = 96;
          }
        }

        else
        {
          v22 = 41;
          if (v21 != 41 && v21 != 93 && v21 != 125)
          {
            v22 = 39;
          }
        }

        *v20 = v22;
      }

      *(a2 + 4) = v12 | 0x40;
      SLTokenList::push_back(a3, a2);
    }

    v13 = *(a2 + 4);
    if ((v13 & 4) != 0)
    {
      v12 = v13 & 0xFFFFFFFB;
      goto LABEL_40;
    }

    if (*a2 != 4 || (v14 = SLLexerBuffer::operator[](this + 12, 0)) == 0)
    {
LABEL_38:
      SLToken::SetType(a2, 15);
      v12 = *(a2 + 4) | 2;
      goto LABEL_40;
    }

    v15 = v14;
    v16 = 1;
    while (1)
    {
      v17 = v16 - 1;
      v18 = *v15;
      if (v18 == 28)
      {
        break;
      }

      if (v18 != 4)
      {
        goto LABEL_36;
      }

      v19 = (*(*this + 72))(this, **(a2 + 7), *v15[7]);
      if (v17 > 0x62 || (v19 & 1) != 0)
      {
        goto LABEL_38;
      }

LABEL_37:
      v15 = SLLexerBuffer::operator[](this + 12, v16++);
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    if ((*(v15 + 17) & 4) != 0 && *(v15[7] + ((v15[8] - v15[7]) >> 1) - 2) != *(v15[8] - 3))
    {
      if ((*(*this + 72))(this, **(a2 + 7)))
      {
        SLDissecter::DissectGeoLoc(*(this + 23), v15, v23);
        if ((*(a2 + 17) & 2) == 0 || !v24)
        {
          operator new();
        }
      }
    }

LABEL_36:
    if (v17 > 0x62)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t (***SLPostLexerImpl::HandleParagraph(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3))(void)
{
  v6 = SLLexerBuffer::operator[](this + 12, 0);
  if (v6)
  {
    v7 = v6;
    if (*v6 == 13 && **(v6 + 7) == 9)
    {
      *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
      std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
      SLToken::~SLToken(v7);
      MEMORY[0x26D6753C0]();
    }
  }

  v8 = *(a2 + 4);
  if ((v8 & 0x400) == 0)
  {
LABEL_6:
    *(this + 242) = 0;
    *(this + 28) = *(this + 27);
    *(a2 + 4) = v8 | 0x40;

    SLTokenList::push_back(a3, a2);
  }

  if (*(this + 242) != 1 || (*(this + 242) = 0, (result = SLLexerBuffer::operator[](this + 12, 0)) == 0))
  {
LABEL_18:
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  v10 = 1;
  do
  {
    v11 = *result;
    if (v11 == 13)
    {
      if (*result[7] == 9)
      {
        v8 = *(a2 + 4) & 0xFFFFFBFF;
        goto LABEL_6;
      }
    }

    else if (v11 == 6)
    {
      break;
    }

    result = SLLexerBuffer::operator[](this + 12, v10++);
  }

  while (result);
  if (a2)
  {
    goto LABEL_18;
  }

  return result;
}

void SLPostLexerImpl::HandleRange(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = *(this + 22);
  v7 = (*(*v6 + 216))(v6, 215);
  (*(*v6 + 232))(v6, v7, a3, *(a2 + 4), *(a2 + 5));
  v8 = SLLexerBuffer::operator[](this + 12, 0);
  if (v8)
  {
    *(v8 + 1) = 2;
  }

  SLToken::~SLToken(a2);

  JUMPOUT(0x26D6753C0);
}

uint64_t (***SLPostLexerImpl::HandleRomanNumeral(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3))(void)
{
  if ((*(this + 256) & 0x80) != 0)
  {
    SLToken::SetType(a2, 11);

    SLTokenList::push_back(a3, a2);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x200) != 0)
  {
    *(a2 + 4) = v5 & 0xFFFFFDFF;

    SLPostLexerImpl::StripPossessive(this, a2, a3);
  }

  if ((v5 & 0x1000) != 0)
  {
    SLDissecter::DissectRoman(*(this + 23), a2, &v12);
    v10 = SLDissecter::EvaluateRoman(*(this + 23), a2, v13);
    if ((*(a2 + 18) & 2) == 0)
    {
      operator new();
    }

    (*(**(this + 22) + 72))(*(this + 22), a2, v13.location, v13.length, v10, a3, 1, v14);
  }

  else
  {
    v7 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
    v8 = *(this + 22);
    v16.location = 0;
    v16.length = v7;
    v9 = SLDissecter::EvaluateRoman(*(this + 23), a2, v16);
    (*(*v8 + 72))(v8, a2, 0, v7, v9, a3, (*(a2 + 4) >> 17) & 1, 0);
  }

  SLToken::~SLToken(a2);
  MEMORY[0x26D6753C0]();
  result = SLLexerBuffer::operator[](this + 12, 0);
  if (result)
  {
    *(result + 4) |= 0x40000u;
  }

  return result;
}

void SLPostLexerImpl::HandleTime(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = SLLexerBuffer::operator[](this + 12, 0);
  if (v6)
  {
    v7 = SLLexerBuffer::operator[](this + 12, 1uLL);
    memset(&__p, 0, sizeof(__p));
    if (v7 && *v6 == 13 && SLChar::sCharClass[**(v6 + 7) & 0x3F | (SLChar::sUniMap[**(v6 + 7) >> 6] << 6)] == 6 && (*v7 & 0xFE) == 0x12)
    {
      SLToken::SetType(v6, 30);
    }

    if ((*(this + 256) & 0x40) != 0)
    {
LABEL_54:
      SLToken::SetType(a2, 19);
      SLTokenList::push_back(a3, a2);
    }

    if ((*(a2 + 17) & 0x10) != 0 || (*v6 | 2) != 2)
    {
      size = 0;
      LODWORD(v8) = 0;
    }

    else
    {
      SLPostLexerImpl::Transcribe(v7, v6, 2, 0, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, &v17);
      __p = v17;
      v8 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      size = v17.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    memset(&__p, 0, sizeof(__p));
    if ((*(this + 256) & 0x40) != 0)
    {
      goto LABEL_54;
    }

    size = 0;
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = size;
  }

  if (!v10)
  {
    goto LABEL_34;
  }

  if ((v8 & 0x80) != 0)
  {
    if (size != 2)
    {
      if (size == 4)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
        if (*__p.__r_.__value_.__l.__data_ == 776810049)
        {
          goto LABEL_35;
        }

LABEL_27:
        data = p_p->__r_.__value_.__l.__data_;
        v13 = 776810064;
        goto LABEL_33;
      }

LABEL_34:
      v6 = 0;
      v14 = 32;
      goto LABEL_38;
    }

    if (*__p.__r_.__value_.__l.__data_ == 19777)
    {
      goto LABEL_35;
    }

    data = *__p.__r_.__value_.__l.__data_;
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 4)
      {
        if (LODWORD(__p.__r_.__value_.__l.__data_) == 776810049)
        {
          goto LABEL_35;
        }

        p_p = &__p;
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    if (LOWORD(__p.__r_.__value_.__l.__data_) == 19777)
    {
      goto LABEL_35;
    }

    data = LOWORD(__p.__r_.__value_.__l.__data_);
  }

  v13 = 19792;
LABEL_33:
  if (data != v13)
  {
    goto LABEL_34;
  }

LABEL_35:
  v15 = &__p;
  if ((v8 & 0x80u) != 0)
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  v14 = v15->__r_.__value_.__s.__data_[0];
LABEL_38:
  SLDissecter::DissectTime(*(this + 23), a2, &v19);
  if (v6)
  {
    v22 = v14;
    v23 = (*(v6 + 4) - *(a2 + 4));
    v24 = v10;
  }

  else
  {
    v14 = v22;
  }

  if (v14 == 32)
  {
    v16 = 25;
  }

  else
  {
    v16 = 13;
  }

  if (v16 <= v19 || v20 > 0x3Bu || v21 > 0x3Cu)
  {
    if ((*(a2 + 17) & 0x10) != 0 || v20 > 0x3Bu || v21 >= 0x3Cu)
    {
      SLToken::SetType(a2, 7);
      SLTokenList::push_back(a3, a2);
    }

    goto LABEL_54;
  }

  if (v6)
  {
    *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
    SLToken::~SLToken(v6);
    MEMORY[0x26D6753C0]();
  }

  (*(**(this + 22) + 112))(*(this + 22), a2, a3, &v19);
  if (a2)
  {
    SLToken::~SLToken(a2);
    MEMORY[0x26D6753C0]();
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26B2F3820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (v13 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::HandleElapsedTime(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = SLLexerBuffer::operator[](this + 12, 0);
  if (v6)
  {
    v7 = v6;
    v8 = SLLexerBuffer::operator[](this + 12, 1uLL);
    if (v8)
    {
      if (*v7 == 13 && SLChar::sCharClass[**(v7 + 7) & 0x3F | (SLChar::sUniMap[**(v7 + 7) >> 6] << 6)] == 6 && (*v8 & 0xFE) == 0x12)
      {
        SLToken::SetType(v7, 30);
      }
    }
  }

  SLDissecter::DissectTime(*(this + 23), a2, v10);
  if (v10[1] > 0x3Bu || v10[2] > 0x3Bu)
  {
    SLToken::SetType(a2, 7);
    SLTokenList::push_back(a3, a2);
  }

  (*(**(this + 22) + 120))(*(this + 22), a2, a3, v10);
  if ((*(a2 + 17) & 0x10) != 0)
  {
    operator new();
  }

  SLToken::~SLToken(a2);
  return MEMORY[0x26D6753C0]();
}

uint64_t SLPostLexerImpl::HandleDate(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  SLDissecter::DissectDate(*(this + 23), a2, v9);
  if (v9[0] != 1 || v9[4] - 1 > 0xB || v9[5] - 1 > 0x1F)
  {
    SLToken::SetType(a2, 2);
    *(a2 + 4) &= ~0x400u;
    SLTokenList::push_back(a3, a2);
  }

  result = (*(**(this + 22) + 104))(*(this + 22), a2, a3, v9);
  if (a2)
  {
    SLToken::~SLToken(a2);
    return MEMORY[0x26D6753C0]();
  }

  return result;
}

uint64_t SLPostLexerImpl::HandleNumericPair(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  result = (*(**(this + 22) + 128))(*(this + 22), a2, a3);
  if (a2)
  {
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  return result;
}

uint64_t SLPostLexerImpl::HandleDimensions(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  result = (*(**(this + 22) + 136))(*(this + 22), a2, a3);
  if (a2)
  {
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  return result;
}

void SLPostLexerImpl::HandleMusicalKey(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v3 = *(*(a2 + 7) + 2);
  if (v3 == 35)
  {
    LOWORD(v3) = 9839;
  }

  v4 = v3;
  operator new();
}

void SLPostLexerImpl::HandleIPA(SLPostLexerImpl *this, int64x2_t *a2, SLTokenList *a3)
{
  v4 = this;
  v5 = a2[3].i64[1];
  v6 = (a2[4].i64[0] - v5) >> 1;
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_21:
    v16 = 208;
    if ((a2[1].i8[1] & 4) == 0)
    {
      v16 = 200;
    }

    v17 = *(v4 + v16);
    if (v17)
    {
      SLPostLexerImpl::Transcribe(this, a2, 0, 1uLL, ((a2[4].i64[0] - a2[3].i64[1]) >> 1) - 2, &v38);
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      std::vector<unsigned char>::vector[abi:ne200100](__p, 2 * size);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v38.__r_.__value_.__l.__size_;
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v38;
      }

      else
      {
        v20 = v38.__r_.__value_.__r.__words[0];
      }

      v21 = __p[0];
      v22 = (*(*v17 + 32))(v17, v19, v20, __p[1] - __p[0], __p[0]);
      v23 = (*(*v4 + 144))(v4, v21, v22);
      v25 = a2[5].i64[1];
      v24 = a2[6].u64[0];
      if (v25 >= v24)
      {
        v27 = a2[5].i64[0];
        v28 = (v25 - v27) >> 3;
        if ((v28 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a2[5].i64, v31);
        }

        v32 = (8 * v28);
        *v32 = v23;
        v26 = 8 * v28 + 8;
        v33 = a2[5].i64[0];
        v34 = a2[5].i64[1] - v33;
        v35 = v32 - v34;
        memcpy(v32 - v34, v33, v34);
        v36 = a2[5].i64[0];
        a2[5].i64[0] = v35;
        a2[5].i64[1] = v26;
        a2[6].i64[0] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v25 = v23;
        v26 = (v25 + 1);
      }

      a2[5].i64[1] = v26;
      a2[1].i32[0] |= 0x40u;
      a2[2] = vaddq_s64(a2[2], xmmword_26B34DDE0);
      operator new();
    }

    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  v8 = 0;
  v9 = v6 - 2;
  while (1)
  {
    v10 = *(v5 + 2 * v8);
    if (v10 == 32)
    {
      break;
    }

    if (v10 == 44)
    {
      v11 = v8;
      goto LABEL_7;
    }

    v12 = v8 + 1;
LABEL_16:
    v8 = v12;
    if (v12 == v7)
    {
      goto LABEL_21;
    }
  }

  v11 = 0;
LABEL_7:
  v12 = v8 + 1;
  if (v8 + 1 < v7)
  {
    v13 = v9 - v8;
    v14 = (v8 + 1);
    do
    {
      v15 = *(v5 + 2 * v14);
      if (v15 == 32)
      {
        this = v11;
      }

      else
      {
        this = v14;
        if (v15 != 44)
        {
          if (v11)
          {
            operator new();
          }

          operator new();
        }
      }

      v14 = (v14 + 1);
      v11 = this;
      --v13;
    }

    while (v13);
  }

  goto LABEL_16;
}

uint64_t *SLPostLexerImpl::push_front(SLPostLexerImpl *this, const SLTokenList *a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 2) && SLPostLexerImpl::HasPossessive(this, *(*a2 + 16));
    v6 = SLLexerBuffer::operator[](this + 12, v5);
    if (v6)
    {
      if (!*(v6 + 1))
      {
        *(v6 + 1) = v4;
      }
    }
  }

  return SLLexerBuffer::push_front((this + 96), a2);
}

void SLPostLexerImpl::Classify(SLPostLexerImpl *this, SLToken *a2)
{
  if (*(a2 + 3))
  {
    v2 = *(a2 + 4);
    goto LABEL_3;
  }

  *(a2 + 3) = 1;
  *(a2 + 5) = 0;
  v2 = *(a2 + 4) & 0xFFFFFFE7;
  *(a2 + 4) = v2;
  v3 = *(a2 + 7);
  v4 = (*(a2 + 8) - v3) >> 1;
  v5 = v4 - 1;
  if (v4 != 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *v3++;
      v13 = SLChar::sCharClass[v12 & 0x3F | (SLChar::sUniMap[v12 >> 6] << 6)];
      if ((v13 & 0x1F) == 4)
      {
        v6 = v8 + 1;
        *(a2 + 4) = ++v8;
      }

      else if ((v13 & 0x1F) == 1)
      {
        if ((v13 & 0x80) != 0)
        {
          if (!(v9 & 1 | (v7 < 2u)))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if ((v9 & 1) == 0)
          {
            if (v6)
            {
              v9 = 0;
              v8 = v6;
              if ((v13 & 0x40) == 0)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v8 = 0;
              v9 = 0;
              *(a2 + 5) = ++v7;
              if ((v13 & 0x40) == 0)
              {
                goto LABEL_20;
              }
            }

LABEL_19:
            v2 |= 0x20u;
            *(a2 + 4) = v2;
LABEL_20:
            v10 |= (v13 & 0x20) >> 5;
            v11 = 1;
            goto LABEL_21;
          }

LABEL_17:
          v2 |= 8u;
          *(a2 + 4) = v2;
        }

        v9 = 1;
        if ((v13 & 0x40) != 0)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_21:
      if (!--v5)
      {
        if (v11)
        {
          if ((v9 & 1) == 0)
          {
            v2 |= 0x10u;
          }

          if ((v10 & 1) == 0)
          {
            v2 |= 0x100u;
          }

          if ((v9 & 1 & v10) == 0)
          {
            *(a2 + 4) = v2;
          }
        }

        break;
      }
    }
  }

LABEL_3:
  if ((v2 & 0x4000) != 0)
  {
    *(a2 + 4) = v2 & 0xFFFFFFE7;
  }
}

uint64_t SLPostLexerImpl::IsInitial(SLPostLexerImpl *this, SLToken *a2, unint64_t a3)
{
  v3 = *(a2 + 7);
  if (*(a2 + 8) - v3 != 4)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if ((SLChar::sCharClass[*v3 & 0x3F | (SLChar::sUniMap[*v3 >> 6] << 6)] & 0x9F) != 1)
  {
    return 0;
  }

  v7 = SLLexerBuffer::operator[](this + 12, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*v7 != 13)
  {
    return 0;
  }

  if ((*(v7 + 16) & 1) == 0)
  {
    return 0;
  }

  if (**(v7 + 7) != 46)
  {
    return 0;
  }

  v9 = SLLexerBuffer::operator[](this + 12, a3 + 1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (*v9 || !SLPostLexerImpl::LooksLikeName(v9, v9, 1) && !SLPostLexerImpl::IsInitial(this, v10, a3 + 2))
  {
    return 0;
  }

  if (a3 > 1)
  {
    return 1;
  }

  if (a3 == 1)
  {
    *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
  }

  *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
  v11 = 1;
  std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
  SLToken::~SLToken(v8);
  MEMORY[0x26D6753C0]();
  SLToken::SetType(a2, 11);
  ++*(a2 + 5);
  v13 = a2;
  std::deque<SLToken *>::push_front(this + 15, &v13);
  return v11;
}

void *SLPostLexerImpl::HandleCurrency(uint64_t a1, char **a2, SLToken *a3)
{
  SLTokenList::SLTokenList(v31);
  v8 = SLLexerBuffer::operator[]((a1 + 96), 0);
  *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
  std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
  if ((*(v8 + 16) & 0x81) == 0)
  {
    v21 = SLLexerBuffer::operator[]((a1 + 96), 0);
    if (v21)
    {
      if (*v21 == 13 && (v21[2] & 1) == 0)
      {
        v22 = *v21[7];
        if (v22 == **(*(**(a1 + 176) + 216))(*(a1 + 176), 207))
        {
          SLPostLexerImpl::HandleThousandsSeparators(a1, v8, 43);
          v8 = SLLexerBuffer::operator[]((a1 + 96), 0);
          *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
          std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
        }
      }
    }
  }

  if ((*(v8 + 17) & 0x10) != 0)
  {
    SLDissecter::DissectUnit(*(a1 + 184), v8, v26);
    if (v26[0])
    {
      v17 = 42;
    }

    else
    {
      v17 = 43;
    }

    Unit = SLPostLexerImpl::FindUnit(a1, v8, v29, ((*(v8 + 8) - *(v8 + 7)) >> 1) - 1, v17);
    if (!Unit)
    {
      SLDissecter::DissectNumber(*(a1 + 184), v8, v27, v28, v24);
      if (v25)
      {
        v23 = 7;
      }

      else
      {
        v23 = 2;
      }

      SLToken::SetType(v8, v23);
      v32[0] = v8;
      std::deque<SLToken *>::push_front((a1 + 120), v32);
      v32[0] = a3;
      std::deque<SLToken *>::push_front((a1 + 120), v32);
      return std::__list_imp<SLToken *>::clear(v31);
    }

    v14 = v27;
    v13 = v28;
    v4 = v30;
    v3 = *(v8 + 4) + v29;
    v15 = 63;
  }

  else
  {
    v10 = *(v8 + 7);
    v9 = *(v8 + 8);
    v11 = SLLexerBuffer::operator[]((a1 + 96), 0);
    v12 = v11;
    v13 = ((v9 - v10) >> 1) - 1;
    if (v11 && !*v11)
    {
      Unit = SLPostLexerImpl::FindUnit(a1, v11, 0, ((*(v11 + 8) - *(v11 + 7)) >> 1) - 1, 42);
      if (Unit)
      {
        *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
        v3 = *(v12 + 4);
        v4 = *(v12 + 5);
        v15 = SLToken::Capitalization(v12);
        SLToken::~SLToken(v12);
        MEMORY[0x26D6753C0]();
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      Unit = 0;
    }
  }

  SLDissecter::DissectNumber(*(a1 + 184), v8, v14, v13, v24);
  if (Unit || (v18 = v25) == 0 || strchr(*a2, 59) && v18 == 2 || !(*(*a1 + 112))(a1, a2, v8))
  {
    (*(**(a1 + 176) + 88))(*(a1 + 176), a2, a3, v8, v24, Unit, v3, v4, v15, v31);
  }

  else
  {
    (*(**(a1 + 176) + 48))(*(a1 + 176), v8, v31, v24, 0, 0);
  }

  v19 = SLLexerBuffer::operator[]((a1 + 96), 0);
  if (v19)
  {
    *(v19 + 1) = 2;
  }

  SLPostLexerImpl::push_front(a1, v31);
  if (a3)
  {
    SLToken::~SLToken(a3);
    MEMORY[0x26D6753C0]();
  }

  SLToken::~SLToken(v8);
  MEMORY[0x26D6753C0]();
  return std::__list_imp<SLToken *>::clear(v31);
}

uint64_t SLPostLexerImpl::HandleDayAbbr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SLLexerBuffer::operator[]((a1 + 96), 0);
  SLPostLexerImpl::Transcribe(v6, a3, 2, 0, ((*(a3 + 64) - *(a3 + 56)) >> 1) - 1, &__p);
  SLTmpLookup::SLTmpLookup(v20, &__p, *(a1 + 168));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20[0] != 1 || (HasTag = SLToken::HasTag(v21, 64), (v20[0] & 1) == 0) || *(a3 + 5) == 1 && !HasTag)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_39;
  }

  if ((*(a3 + 16) & 1) == 0)
  {
    if (*v6 != 13)
    {
      goto LABEL_39;
    }

    if (**(v6 + 7) == 46)
    {
      v6 = SLLexerBuffer::operator[]((a1 + 96), 1uLL);
      if (v6)
      {
        v8 = 1;
        LODWORD(v9) = 1;
        goto LABEL_19;
      }

LABEL_39:
      v13 = 0;
      goto LABEL_17;
    }
  }

  v8 = 0;
  LODWORD(v9) = 0;
LABEL_19:
  v15 = *v6;
  if (v15 == 13)
  {
    if (**(v6 + 7) != 44)
    {
      goto LABEL_39;
    }

    v9 = (v9 + 1);
    v16 = SLLexerBuffer::operator[]((a1 + 96), v9);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_39;
    }

    v15 = *v16;
  }

  if (v15)
  {
LABEL_24:
    if (v15 == 18 || v15 == 24)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

  if (!SLPostLexerImpl::FindUnit(a1, v6, 0, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, 62))
  {
    v15 = *v6;
    goto LABEL_24;
  }

  v17 = *(v6 + 8) - *(v6 + 7) == 8 && (*(v6 + 16) & 1) == 0;
  v18 = SLLexerBuffer::operator[]((a1 + 96), (v9 + 1));
  if (!v18)
  {
    goto LABEL_39;
  }

  if (v17)
  {
    v15 = *v18;
    if (v15 != 13)
    {
      goto LABEL_38;
    }

    if (*v18[7] == 46)
    {
      v18 = SLLexerBuffer::operator[]((a1 + 96), (v9 + 2));
      if (!v18)
      {
        goto LABEL_39;
      }
    }
  }

  v15 = *v18;
LABEL_38:
  if (v15 != 1)
  {
    goto LABEL_39;
  }

LABEL_13:
  SLTokenList::SLTokenList(&__p);
  (*(**(a1 + 176) + 232))(*(a1 + 176), a2, &__p, *(a3 + 32), *(a3 + 40));
  v10 = *(__p.__r_.__value_.__l.__size_ + 16);
  v11 = SLToken::Capitalization(a3);
  SLToken::SetCapitalization(v10, v11);
  SLToken::~SLToken(a3);
  MEMORY[0x26D6753C0]();
  if (v8)
  {
    v12 = SLLexerBuffer::operator[]((a1 + 96), 0);
    *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
    if (v12)
    {
      SLToken::~SLToken(v12);
      MEMORY[0x26D6753C0]();
    }
  }

  SLPostLexerImpl::push_front(a1, &__p);
  std::__list_imp<SLToken *>::clear(&__p);
  v13 = 1;
LABEL_17:
  SLTmpLookup::~SLTmpLookup(v20);
  return v13;
}

uint64_t SLPostLexerImpl::HandleMonthAbbr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = SLLexerBuffer::operator[]((a1 + 96), 0);
  SLPostLexerImpl::Transcribe(v6, a3, 2, 0, ((*(a3 + 64) - *(a3 + 56)) >> 1) - 1, &__p);
  SLTmpLookup::SLTmpLookup(v32, &__p, *(a1 + 168));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = v32[0] == 1 && SLToken::HasTag(v33, 64);
  v8 = *(a3 + 16);
  v9 = (v8 & 1) == 0 && *v6 == 13 && **(v6 + 7) == 46;
  if (v32[0] == 1)
  {
    if (*(a3 + 5) == 1 && v7)
    {
      v10 = (v8 >> 18) & 1;
    }

    else
    {
      v10 = *(a3 + 5) == 1;
    }

    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 1;
    if (v8)
    {
      goto LABEL_18;
    }
  }

  if (*v6 != 13)
  {
    goto LABEL_65;
  }

LABEL_18:
  if (v10)
  {
    if (v9)
    {
      v11 = SLLexerBuffer::operator[]((a1 + 96), 1uLL);
      v6 = v11;
      if (!v11)
      {
        goto LABEL_64;
      }

      if (*v11 == 1)
      {
        goto LABEL_38;
      }

      if (*v11)
      {
        goto LABEL_64;
      }

      v12 = *(v11 + 4);
      if ((v12 & 0x10000) == 0)
      {
        v9 = (SLChar::sCharClass[**(v11 + 7) & 0x3F | (SLChar::sUniMap[**(v11 + 7) >> 6] << 6)] & 0x9F) == 129;
        goto LABEL_43;
      }

      if ((v12 & 0x1000) == 0 || !memchr("MDL", **(v11 + 7), 4uLL) && SLPostLexerImpl::IsRomanOrdinal(a1, v6))
      {
        SLToken::SetType(v6, 17);
        if (*v6 != 1)
        {
          goto LABEL_62;
        }

LABEL_38:
        LOBYTE(v9) = 1;
        goto LABEL_44;
      }
    }

    else if (!v6)
    {
      goto LABEL_64;
    }

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      v6 = SLLexerBuffer::operator[]((a1 + 96), 1uLL);
    }

    if (!v6)
    {
      goto LABEL_65;
    }

    v13 = *v6;
    if (!*v6)
    {
      v14 = *(v6 + 4);
      if ((v14 & 0x10000) != 0)
      {
        v15 = *(v6 + 7);
        if (((((*(v6 + 8) - v15) >> 1) - 3) < 0xFFFFFFFFFFFFFFFELL || *v15 != 73) && ((v14 & 0x1000) == 0 || !memchr("MDL", *v15, 4uLL) && SLPostLexerImpl::IsRomanOrdinal(a1, v6)))
        {
          SLToken::SetType(v6, 17);
        }
      }

      v13 = *v6;
    }

    if ((v13 | 0x10) != 0x11)
    {
      goto LABEL_65;
    }
  }

LABEL_43:
  if (*v6 == 1)
  {
LABEL_44:
    if ((*(v6 + 17) & 0x10) != 0)
    {
      SLDissecter::DissectUnit(*(a1 + 184), v6, &__p);
      Unit = SLPostLexerImpl::FindUnit(a1, v6, v28, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, 35);
      v18 = 0;
      if (Unit)
      {
        v20 = *Unit;
        if (*v20 == 64 && !strchr(v20, 43))
        {
          v18 = 1;
        }
      }

      v16 = v28;
      v17 = v29;
    }

    else
    {
      v16 = 0;
      v17 = ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1;
      v18 = 1;
    }

    SLDissecter::DissectNumber(*(a1 + 184), v6, v16, v17, &__p);
    if (v29 | v30)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    if ((v10 | v21))
    {
      if ((v31 - 1) >= 0x20)
      {
        v21 = 0;
      }

      if (v21)
      {
        *(v6 + 4) |= 0x20000u;
      }

      if (!v9)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

LABEL_65:
    v25 = 0;
    goto LABEL_66;
  }

  if (v9)
  {
LABEL_62:
    v22 = SLLexerBuffer::operator[]((a1 + 96), 0);
    *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
    if (v22)
    {
      SLToken::~SLToken(v22);
      MEMORY[0x26D6753C0]();
    }
  }

LABEL_64:
  SLTokenList::SLTokenList(&__p);
  (*(**(a1 + 176) + 232))(*(a1 + 176), a2, &__p, *(a3 + 32), *(a3 + 40));
  v23 = *(__p.__r_.__value_.__l.__size_ + 16);
  v24 = SLToken::Capitalization(a3);
  SLToken::SetCapitalization(v23, v24);
  SLToken::~SLToken(a3);
  MEMORY[0x26D6753C0]();
  SLPostLexerImpl::push_front(a1, &__p);
  std::__list_imp<SLToken *>::clear(&__p);
  v25 = 1;
LABEL_66:
  SLTmpLookup::~SLTmpLookup(v32);
  return v25;
}

void SLPostLexerImpl::HandleApostrophes(const void **this, SLToken *a2, SLTokenList *a3)
{
  v3 = a3;
  v6 = *(a2 + 7);
  v7 = (a2 + 56);
  v8 = *(a2 + 8) - v6;
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - 1;
  if (v8 >> 1 == 1 || ((v11 = SLChar::sCharClass[*v6 & 0x3F | (SLChar::sUniMap[*v6 >> 6] << 6)], v8 >> 1 != 2) ? (v12 = SLChar::sCharClass[*(*(a2 + 8) - 4) & 0x3F | (SLChar::sUniMap[*(*(a2 + 8) - 4) >> 6] << 6)] == 4) : (v12 = 0), v11 != 4 ? (v13 = v12) : (v13 = v12 + 1), v11 != 4 ? (v14 = !v12) : (v14 = 0), v14))
  {

    SLPostLexerImpl::HandleLookup(this, a2, 1, a3);
    return;
  }

  v40 = *(a2 + 4);
  if (v11 == 4)
  {
    v15 = !v12;
    v16 = v10 != 3;
    if (v10 == 3 && (v15 & 1) == 0)
    {
      if ((SLChar::sCharClass[v6[1] & 0x3F | (SLChar::sUniMap[v6[1] >> 6] << 6)] & 0x9F) == 1)
      {
        if (v13 >= v40)
        {
          v38 = 0;
          v39 = 0;
          if (!v12)
          {
            goto LABEL_46;
          }

LABEL_38:
          if ((*(*this + 9))(this, **v7, *(*v7 + 2), v3))
          {
            SLToken::SetType(a2, 10);
            v43 = a2;
            std::deque<SLToken *>::push_front(this + 15, &v43);
            return;
          }

          goto LABEL_43;
        }

        goto LABEL_33;
      }

      v16 = 0;
      v15 = 0;
    }
  }

  else
  {
    v17 = this[28];
    if (v17 == this[27])
    {
      v15 = !v12;
      v16 = 1;
    }

    else
    {
      if ((*(*this + 9))(this, *(v17 - 1), *(*(a2 + 8) - 4), a3))
      {
        if (v13 < v40)
        {
          goto LABEL_40;
        }

        if (!v12)
        {
          return;
        }

        v38 = 0;
        v39 = 1;
LABEL_43:
        v23 = *(a2 + 8);
        *(a2 + 8) = v23 - 2;
        v24 = *(v23 - 4);
        LOWORD(v43) = v24;
        *(v23 - 4) = 0;
        --*(a2 + 4);
        v25 = *(a2 + 4);
        --*(a2 + 5);
        if (SLPostLexerImpl::HandleLookup(this, a2, v39, a3))
        {
          operator new();
        }

        *(*(a2 + 8) - 2) = v24;
        v42 = 0;
        std::vector<unsigned short>::push_back[abi:ne200100](v7, &v42);
        v26 = *(a2 + 5) + 1;
        *(a2 + 5) = v26;
        ++*(a2 + 4);
        if (v11 == 4)
        {
LABEL_48:
          v27 = *(a2 + 4);
          v29 = *(a2 + 7);
          v28 = *(a2 + 8);
          LOWORD(v43) = *v29;
          v30 = v28 - (v29 + 2);
          if (v28 == v29 + 2)
          {
            v33 = v29;
            v31 = v27;
            v32 = v26;
          }

          else
          {
            memmove(v29, v29 + 2, v28 - (v29 + 2));
            v31 = *(a2 + 4);
            v32 = *(a2 + 5);
            v33 = *(a2 + 7);
          }

          *(a2 + 8) = &v29[v30];
          *(a2 + 4) = v31 + 1;
          *(a2 + 5) = v32 - 1;
          --*(a2 + 4);
          v34 = ((&v29[v30] - v33) >> 1) - 1;
          v35 = *(a2 + 5);
          if (v34 > v35)
          {
            v36 = *(a2 + 5);
            do
            {
              if ((SLChar::sCharClass[*&v33[2 * v35] & 0x3F | (SLChar::sUniMap[*&v33[2 * v35] >> 6] << 6)] & 0x9F) != 1)
              {
                break;
              }

              *(a2 + 5) = ++v36;
              v35 = v36;
            }

            while (v34 > v36);
          }

          SLPostLexerImpl::HandleLookup(this, a2, v38, a3);
          operator new();
        }

        return;
      }

      v15 = !v12;
      v16 = 1;
      v3 = a3;
    }
  }

  v37 = v16;
  v38 = v15;
  v39 = v11 != 4;
  if (SLPostLexerImpl::HandleLookup(this, a2, 0, v3))
  {
    return;
  }

  if (v13 < v40)
  {
    if (v11 == 4)
    {
LABEL_33:
      v18 = 1;
      do
      {
        v19 = SLChar::sCharClass[*(*v7 + v18) & 0x3F | (SLChar::sUniMap[*(*v7 + v18) >> 6] << 6)];
        ++v18;
      }

      while (v19 != 4);
      goto LABEL_42;
    }

LABEL_40:
    v20 = v9 - 2;
    v21 = (*v7 + 2 * v9 - 6);
    do
    {
      v22 = *v21--;
      --v20;
    }

    while (SLChar::sCharClass[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] != 4);
LABEL_42:
    operator new();
  }

  if (v12)
  {
    if (!v37)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  if (v11 == 4)
  {
LABEL_46:
    v26 = *(a2 + 5);
    goto LABEL_48;
  }
}

uint64_t SLPostLexerImpl::IsRomanOrdinal(SLPostLexerImpl *this, SLToken *a2)
{
  SLDissecter::DissectRoman(*(this + 23), a2, &v9);
  Unit = SLPostLexerImpl::FindUnit(this, a2, v11, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 35);
  if (Unit)
  {
    v5 = *Unit;
    if (**Unit == 64)
    {
      if (!v5[1])
      {
        return 1;
      }

      if (!v5[2])
      {
        v6 = v5[1];
        if (((SLDissecter::EvaluateRoman(*(this + 23), a2, v10) % 0xAu) | 0x30) == v6)
        {
          return 1;
        }
      }
    }
  }

  v7 = v10.length >= 2 && v12 == 1;
  if (v7 && memchr("abcd", *(*(a2 + 7) + 2 * v11), 5uLL))
  {
    *(a2 + 4) |= 0x400u;
    return 1;
  }

  result = 0;
  *(a2 + 4) &= 0xFFFEEFFF;
  return result;
}

uint64_t SLPostLexerImpl::PeekMatchingQuote(SLPostLexerImpl *this, uint64_t a2)
{
  v2 = *(this + 28);
  if (v2 == *(this + 27))
  {
    return 0;
  }

  else
  {
    return (*(*this + 72))(this, *(v2 - 2), a2);
  }
}

uint64_t SLPostLexerImpl::HandleLookup(SLPostLexerImpl *this, SLToken *a2, int a3, SLTokenList *a4)
{
  v7 = this;
  v8 = 0;
  memset(&__str, 0, sizeof(__str));
  if ((*(a2 + 16) & 8) != 0)
  {
    SLPostLexerImpl::Transcribe(this, a2, 0, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &v43);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v43;
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    this = SLDictLookup::Lookup(*(v7 + 21), *(*(v7 + 21) + 8), p_str, size, a2, 1);
    if (this)
    {
      goto LABEL_51;
    }

    *(a2 + 4) &= ~8u;
    v8 = 8;
  }

  SLPostLexerImpl::Transcribe(this, a2, 2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &v43);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v43;
  v11 = *(a2 + 4);
  if ((v11 & 0x20) != 0)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__str;
    }

    else
    {
      v15 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = __str.__r_.__value_.__l.__size_;
    }

    v17 = SLDictLookup::Lookup(*(v7 + 21), *(*(v7 + 21) + 8), v15, v16, a2, 1);
    if (v17)
    {
      goto LABEL_51;
    }

    v18 = (*(a2 + 8) - *(a2 + 7)) >> 1;
    if (v18 == 2)
    {
      SLToken::SetType(a2, 11);
      SLTokenList::push_back(a4, a2);
    }

    SLPostLexerImpl::Transcribe(v17, a2, 1, 0, v18 - 1, &v43);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v43;
    if ((*(a2 + 4) & 0x10) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_44;
  }

  if ((((*(a2 + 8) - *(a2 + 7)) >> 1) - 3) <= 2)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__str;
    }

    else
    {
      v12 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __str.__r_.__value_.__l.__size_;
    }

    if (!SLDictLookup::Lookup(*(v7 + 21), *(*(v7 + 21) + 24), v12, v13, a2, 0))
    {
LABEL_30:
      if (a3)
      {
        v14 = 0;
LABEL_57:
        *(a2 + 4) |= v8;
        if (*(a2 + 4) && (*(**(v7 + 22) + 176))(*(v7 + 22)))
        {
          v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = __str.__r_.__value_.__l.__size_;
          }

          std::string::basic_string(&v43, &__str, v21 - 2, 0xFFFFFFFFFFFFFFFFLL, &v46);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            v22 = v43.__r_.__value_.__r.__words[0];
            if (v43.__r_.__value_.__l.__size_ != 2)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
              goto LABEL_82;
            }
          }

          else
          {
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) != 2)
            {
              goto LABEL_82;
            }

            v22 = &v43;
          }

          v25 = *v22 == 21287 && ((*(a2 + 8) - *(a2 + 7)) >> 1) - 3 == *(a2 + 5);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
            if (v25)
            {
LABEL_80:
              SLPostLexerImpl::StripPossessive(v22, a2, a4);
            }
          }

          else if (v25)
          {
            goto LABEL_80;
          }
        }

LABEL_82:
        if ((*(a2 + 16) & 8) != 0 || *(a2 + 4))
        {
          (*(**(v7 + 22) + 32))(*(v7 + 22), a2, a4);
          SLToken::~SLToken(a2);
          MEMORY[0x26D6753C0]();
LABEL_68:
          v23 = 1;
          goto LABEL_69;
        }

        SLTokenList::SLTokenList(&v43);
        v26 = *(a2 + 4);
        if ((v26 & 0x8000) != 0)
        {
          v27 = 4;
        }

        else
        {
          v27 = 2;
        }

        if (SLPostLexerImpl::FollowedByPeriod(v7, a2))
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, 46, &v42);
          SLPostLexerImpl::HandleAbbreviation(v7);
        }

        if ((*(a2 + 17) & 0x80) != 0 && (((*(a2 + 8) - *(a2 + 7)) >> 1) - 5) <= 0xFFFFFFFFFFFFFFFBLL)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v41, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            v41 = __str;
          }

          SLPostLexerImpl::HandleNameInitial();
        }

        if (v14)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &__str;
          }

          else
          {
            v28 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = __str.__r_.__value_.__l.__size_;
          }

          v30 = SLAgglomerate::Lookup(*(*(v7 + 21) + 32), v28, v29, v27, (v26 & 0x8000) != 0, &v43);
          v31 = *(a2 + 4);
          if (v30)
          {
            v32 = *(a2 + 4);
            *(*(v43.__r_.__value_.__r.__words[0] + 16) + 16) |= *(a2 + 4) & 1;
            v33 = *(a2 + 4) & 0x10;
            SLToken::~SLToken(a2);
            MEMORY[0x26D6753C0]();
            if (v43.__r_.__value_.__r.__words[2])
            {
              v34 = *(v43.__r_.__value_.__l.__size_ + 16);
              if (v34)
              {
                *(v34 + 16) |= v33;
                if (((*(*v7 + 184))(v7, v34) & 1) == 0)
                {
                  *(v34 + 2) = 2;
                }

                v35 = ((*(v34 + 64) - *(v34 + 56)) >> 1) - 1;
                *(v34 + 32) = v32;
                *(v34 + 40) = v35;
                v36 = v43.__r_.__value_.__l.__size_;
                v38 = *v43.__r_.__value_.__l.__size_;
                v37 = *(v43.__r_.__value_.__l.__size_ + 8);
                *(v38 + 8) = v37;
                *v37 = v38;
                --v43.__r_.__value_.__r.__words[2];
                operator delete(v36);
                SLTokenList::push_back(a4, v34);
              }
            }

            std::__list_imp<SLToken *>::clear(&v43);
            goto LABEL_68;
          }
        }

        else
        {
          v31 = *(a2 + 4);
        }

        if (*(v7 + 241) != 1 || (v31 & 0x100) != 0 || (((*(a2 + 8) - *(a2 + 7)) >> 1) - 52) < 0xFFFFFFFFFFFFFFCDLL)
        {
          if ((v31 & 0x110) != 0 || (((*(a2 + 8) - *(a2 + 7)) >> 1) - 52) <= 0xFFFFFFFFFFFFFFCCLL)
          {
            SLToken::SetType(a2, 11);
          }

          else
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = &__str;
            }

            else
            {
              v39 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v40 = __str.__r_.__value_.__l.__size_;
            }

            SLDictLookup::Lookup(*(v7 + 21), *(*(v7 + 21) + 16), v39, v40, a2, 0);
          }

          SLTokenList::push_back(a4, a2);
        }

        SLToken::clear(a2);
        operator new();
      }

      goto LABEL_72;
    }

    if ((((*(a2 + 8) - *(a2 + 7)) >> 1) - 5) >= 0xFFFFFFFFFFFFFFFCLL && !SLToken::HasTag(a2, 90) && !SLToken::HasTag(a2, 70) && (*(v7 + 244) & 1) == 0 && (SLPostLexerImpl::FollowedByAllCaps(v7) & 1) == 0)
    {
      *(a2 + 4) &= ~0x40u;
      SLToken::clear(a2);
      goto LABEL_30;
    }

LABEL_51:
    if (SLToken::HasTag(a2, 78))
    {
      if ((*(v7 + 256) & 0x80) != 0)
      {
        LODWORD(v43.__r_.__value_.__l.__data_) = 5111809;
      }

      else
      {
        LODWORD(v43.__r_.__value_.__l.__data_) = 5177345;
      }

      SLToken::ExcludeHomographs(a2, &v43);
    }

    if (SLPostLexerImpl::FollowedByPeriod(v7, a2))
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, 46, &__p);
      SLPostLexerImpl::HandleAbbreviation(v7);
    }

    SLTokenList::push_back(a4, a2);
  }

LABEL_44:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__str;
  }

  else
  {
    v19 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  if (SLDictLookup::Lookup(*(v7 + 21), *(*(v7 + 21) + 8), v19, v20, a2, 1))
  {
    goto LABEL_51;
  }

  if (a3)
  {
    v14 = 1;
    goto LABEL_57;
  }

LABEL_72:
  v23 = 0;
  *(a2 + 4) |= v8;
LABEL_69:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_26B2F629C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MEMORY[0x26D6753C0](v31, 0x10F0C4034644DEDLL);
  std::__list_imp<SLToken *>::clear(&a22);
  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  _Unwind_Resume(a1);
}

BOOL SLPostLexerImpl::FollowedByPeriod(SLPostLexerImpl *this, SLToken *a2)
{
  v3 = SLLexerBuffer::operator[](this + 12, 0);
  v4 = 0;
  if ((*(a2 + 16) & 1) == 0 && v3)
  {
    return (*(a2 + 5) + *(a2 + 4)) == v3[4] && *v3 == 13 && *v3[7] == 46;
  }

  return v4;
}

void SLPostLexerImpl::HandleAbbreviation(uint64_t a1)
{
  SLLexerBuffer::operator[]((a1 + 96), 0);
  SLLexerBuffer::operator[]((a1 + 96), 1uLL);
  operator new();
}

void sub_26B2F68C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t SLPostLexerImpl::FollowedByAllCaps(SLPostLexerImpl *this)
{
  v2 = 0;
  while (1)
  {
    result = SLLexerBuffer::operator[](this + 12, v2);
    if (!result)
    {
      break;
    }

    v4 = result;
    if (!*result)
    {
      SLPostLexerImpl::Classify(result, result);
      v6 = *(v4 + 5);
      if (((*(v4 + 64) - *(v4 + 56)) >> 1) - 1 != v6)
      {
        return 0;
      }

      SLPostLexerImpl::Transcribe(v5, v4, 2, 0, v6, &__p);
      SLTmpLookup::SLTmpLookup(v9, &__p, *(this + 21));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v9[0] & 1) == 0)
      {
        SLTmpLookup::~SLTmpLookup(v9);
        return 1;
      }

      HasTag = SLToken::HasTag(v10, 70);
      SLTmpLookup::~SLTmpLookup(v9);
      if (!HasTag)
      {
        return 1;
      }
    }

    if (++v2 == 7)
    {
      return 0;
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void SLPostLexerImpl::StripPossessive(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v4 = *(a2 + 7);
  v3 = *(a2 + 8);
  operator new();
}

void SLPostLexerImpl::Transcribe(SLPostLexerImpl *a1@<X0>, SLToken *a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, std::string *a6@<X8>)
{
  SLPostLexerImpl::Classify(a1, a2);
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (a4 < a5)
  {
    do
    {
      v11 = *(*(a2 + 7) + 2 * a4);
      v12 = v11 & 0x3F | (SLChar::sUniMap[v11 >> 6] << 6);
      if (SLChar::sCharClass[v12] == 4)
      {
        std::string::push_back(a6, 39);
      }

      else if (v11 != 173)
      {
        if (a3 == 2)
        {
          LOWORD(v11) = SLChar::sToUpper[v12] + v11;
          v13 = v11;
          if (v11 <= 0xFB02u)
          {
            if (v11 == 64256)
            {
              goto LABEL_32;
            }

            if (v11 != 64257)
            {
              if (v11 != 64258)
              {
                goto LABEL_41;
              }

              goto LABEL_27;
            }

            goto LABEL_36;
          }

          if (v11 - 64261 >= 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (a3 != 1)
          {
            if (a3)
            {
              LOWORD(v11) = 0;
            }

            goto LABEL_41;
          }

          LOWORD(v11) = SLChar::sFoldAll[v12] + v11;
          v13 = v11;
          if (v11 <= 0xFB01u)
          {
            if (v11 <= 0x1E9Du)
            {
              switch(v11)
              {
                case 0xC6u:
                  v14 = 65;
LABEL_39:
                  std::string::push_back(a6, v14);
                  LOWORD(v11) = 69;
                  break;
                case 0x132u:
                  std::string::push_back(a6, 73);
                  LOWORD(v11) = 74;
                  break;
                case 0x152u:
                  v14 = 79;
                  goto LABEL_39;
              }

LABEL_41:
              SLChar::PushUTF8(a6, v11);
              goto LABEL_42;
            }

            if (v11 == 7838)
            {
              LOWORD(v11) = 83;
              std::string::push_back(a6, 83);
              goto LABEL_41;
            }

            if (v11 != 64256)
            {
              if (v11 != 64257)
              {
                goto LABEL_41;
              }

              goto LABEL_36;
            }

LABEL_32:
            LOWORD(v11) = 70;
            std::string::push_back(a6, 70);
            goto LABEL_41;
          }

          if (v11 <= 0xFB04u)
          {
            if (v11 == 64258)
            {
              goto LABEL_27;
            }

LABEL_24:
            if (v13 != 64259)
            {
              if (v13 != 64260)
              {
                goto LABEL_41;
              }

              std::string::push_back(a6, 70);
LABEL_27:
              std::string::push_back(a6, 70);
              LOWORD(v11) = 76;
              goto LABEL_41;
            }

            std::string::push_back(a6, 70);
LABEL_36:
            std::string::push_back(a6, 70);
            LOWORD(v11) = 73;
            goto LABEL_41;
          }

          if (v11 - 64261 >= 2)
          {
            goto LABEL_41;
          }
        }

        std::string::push_back(a6, 83);
        LOWORD(v11) = 84;
        goto LABEL_41;
      }

LABEL_42:
      ++a4;
    }

    while (a5 != a4);
  }
}

void sub_26B2F7158(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::HasApostrophe(SLPostLexerImpl *this, SLToken *a2)
{
  v4 = SLLexerBuffer::operator[](this + 12, 0);
  result = 0;
  if ((*(a2 + 16) & 1) == 0 && v4)
  {
    if (*v4 == 4 && SLChar::sCharClass[*v4[7] & 0x3F | (SLChar::sUniMap[*v4[7] >> 6] << 6)] == 4)
    {
      v6 = *(this + 28);
      if (v6 == *(this + 27))
      {
        return 1;
      }

      else
      {
        return (*(*this + 72))(this, *(v6 - 2)) ^ 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SLPostLexerImpl::HandleTokenInDictionary(SLPostLexerImpl *this, SLToken *a2)
{
  SLTokenList::SLTokenList(v13);
  HasPossessive = SLPostLexerImpl::HasPossessive(this, a2);
  v5 = HasPossessive;
  SLPostLexerImpl::Classify(HasPossessive, a2);
  if (*(a2 + 5) == 2)
  {
    v6 = *(a2 + 7);
    if (v6[2] == 45 && ((SLChar::sCharClass[*v6 & 0x3F | (SLChar::sUniMap[*v6 >> 6] << 6)] & 0x3F) == 0x21 || (SLChar::sCharClass[v6[1] & 0x3F | (SLChar::sUniMap[v6[1] >> 6] << 6)] & 0x3F) == 0x21))
    {
      goto LABEL_15;
    }
  }

  if (!SLPostLexerImpl::HasApostrophe(this, a2))
  {
LABEL_10:
    if (SLPostLexerImpl::HandleLookup(this, a2, 0, v13))
    {
      if (v5)
      {
        SLPostLexerImpl::HandlePossessive(this, *(v13[0] + 16));
      }

      SLPostLexerImpl::push_front(this, v13);
      goto LABEL_14;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v7 = SLLexerBuffer::operator[](this + 12, 0);
  *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
  std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
  v8 = (*(a2 + 8) - 2);
  LOWORD(v14) = 39;
  std::vector<unsigned short>::insert(a2 + 7, v8, &v14);
  ++*(a2 + 5);
  if (!SLPostLexerImpl::HandleLookup(this, a2, 0, v13))
  {
    --*(a2 + 5);
    v9 = *(a2 + 8);
    v10 = v9 - 4;
    memmove((v9 - 4), (v9 - 2), 2uLL);
    *(a2 + 8) = v10 + 2;
    v14 = v7;
    std::deque<SLToken *>::push_front(this + 15, &v14);
    goto LABEL_10;
  }

  SLPostLexerImpl::push_front(this, v13);
  if (v7)
  {
    SLToken::~SLToken(v7);
    MEMORY[0x26D6753C0]();
  }

LABEL_14:
  v11 = 1;
LABEL_16:
  std::__list_imp<SLToken *>::clear(v13);
  return v11;
}

void sub_26B2F745C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<SLToken *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t SLPostLexerImpl::HandleURLInSymbols(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  SLPostLexerImpl::Transcribe(this, a2, 2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &v8);
  v4 = std::string::insert(&v8, 0, "//");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v10 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((*(**(this + 22) + 208))(*(this + 22), v6))
  {
    operator new();
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B2F7668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::FindUnit(SLPostLexerImpl *this, SLToken *a2, unint64_t a3, unint64_t a4, int a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  SLPostLexerImpl::Transcribe(this, a2, 0, a3, a4, &v19);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10.__i_ = &v19;
  }

  else
  {
    v10.__i_ = v19.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v19, v10, a5);
  __p = v19;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v19.__r_.__value_.__r.__words[0];
  }

  v12 = (*(**(this + 22) + 208))(*(this + 22), p_p);
  if (!v12)
  {
    if (a5 == 43 || a4 - a3 > 1 || *(*(a2 + 7) + 2 * a3) >= 0x100u)
    {
      SLPostLexerImpl::Transcribe(0, a2, 2, a3, a4, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13.__i_ = &v19;
      }

      else
      {
        v13.__i_ = v19.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v19, v13, a5);
      v21[0] = v19.__r_.__value_.__l.__size_;
      v14 = v19.__r_.__value_.__r.__words[0];
      *(v21 + 7) = *(&v19.__r_.__value_.__r.__words[1] + 7);
      v15 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      memset(&v19, 0, sizeof(v19));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        __p.__r_.__value_.__r.__words[0] = v14;
        __p.__r_.__value_.__l.__size_ = v21[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v21 + 7);
        *(&__p.__r_.__value_.__s + 23) = v15;
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v14 = __p.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = v14;
        __p.__r_.__value_.__l.__size_ = v21[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v21 + 7);
        *(&__p.__r_.__value_.__s + 23) = v15;
      }

      if (v15 >= 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = v14;
      }

      v12 = (*(**(this + 22) + 208))(*(this + 22), v16);
    }

    else
    {
      v12 = 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_26B2F78FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::FindCommonCountable(SLPostLexerImpl *this, SLToken *a2, unint64_t a3)
{
  SLPostLexerImpl::Transcribe(this, a2, 2, a3, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &__p);
  SLTmpLookup::SLTmpLookup(v6, &__p, *(this + 21));
  if (v6[0] == 1 && SLToken::HasTag(v7, 86))
  {
    v4 = SLPostLexerImpl::GenerateSymbol(this, &__p, 0x7FFFFFFF, 86, 0);
  }

  else
  {
    v4 = 0;
  }

  SLTmpLookup::~SLTmpLookup(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_26B2F7A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  SLTmpLookup::~SLTmpLookup(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SLPostLexerImpl::IsCopyright(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = SLLexerBuffer::operator[](this + 12, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(v6 + 7);
  if (*(v6 + 8) - v8 != 4)
  {
    return 0;
  }

  if ((SLChar::sToUpper[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8) != 67)
  {
    return 0;
  }

  if (*(v6 + 16))
  {
    return 0;
  }

  v9 = SLLexerBuffer::operator[](this + 12, 1uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (**(v9 + 7) != 41)
  {
    return 0;
  }

  v11 = SLLexerBuffer::operator[](this + 12, 2uLL);
  if (!v11)
  {
    return 0;
  }

  if (*v11 == 1)
  {
    if ((*(v11 + 17) & 0x10) != 0 || v11[8] - v11[7] != 10)
    {
      return 0;
    }

LABEL_18:
    *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
    *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
    SLToken::~SLToken(v7);
    MEMORY[0x26D6753C0]();
    SLToken::~SLToken(v10);
    MEMORY[0x26D6753C0]();
    SLToken::SetType(a2, 11);
    **(a2 + 7) = 169;
    *(a2 + 5) = 3;
    SLTokenList::push_back(a3, a2);
  }

  if (!*v11)
  {
    v12 = v11[7];
    if ((v11[2] & 0x11000) == 0x10000 && (SLChar::sToUpper[*v12 & 0x3F | (SLChar::sUniMap[*v12 >> 6] << 6)] + *v12) == 77)
    {
      goto LABEL_18;
    }

    SLPostLexerImpl::Transcribe(v11, v11, 2, 0, ((v11[8] - v12) >> 1) - 1, &__p);
    v13 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "COPYRIGHT");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t SLPostLexerImpl::SeenMatchingParenQuote(SLPostLexerImpl *this, uint64_t a2, char a3, SLTokenList *a4)
{
  v14 = a2;
  v5 = *(this + 28);
  v6 = (this + 216);
  if (v5 != *(this + 27))
  {
    v9 = *(v5 - 2);
    v10 = (*(*this + 72))(this, v9, a2);
    v11 = *(this + 28);
    if (v10)
    {
      *(this + 28) = v11 - 2;
      return 1;
    }

    v13 = v11 - *v6;
    if (v13 >= 3 && (a2 == 41 || a2 == 93 || a2 == 125 || v9 != 40 && v9 != 91 && v9 != 123) && (*(*this + 72))(this, *(*v6 + v13 - 4), a2))
    {
      *(this + 28) -= 4;
      operator new();
    }
  }

  if ((a3 & 1) == 0)
  {
    std::vector<unsigned short>::push_back[abi:ne200100](v6, &v14);
  }

  return 0;
}

uint64_t *SLLexerBuffer::insert(SLLexerBuffer *this, uint64_t a2, SLToken *a3)
{
  v10 = a3;
  v4 = *(this + 4);
  if (*(this + 5) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 8 * (*(this + 7) >> 9)) + 8 * (*(this + 7) & 0x1FFLL);
  }

  v9[0] = v4 + 8 * (*(this + 7) >> 9);
  v9[1] = v5;
  v6 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](v9, a2);
  return std::deque<SLToken *>::insert((this + 24), v6, v7, &v10);
}

uint64_t SLPostLexerImpl::MatchingParenQuote(SLPostLexerImpl *this, int a2, int a3)
{
  result = 0;
  if (a2 > 8217)
  {
    if (a2 > 8244)
    {
      v9 = a2 == 8250 && a3 == 8249;
      if (a2 == 8249)
      {
        v10 = a3 == 8250;
      }

      else
      {
        v10 = v9;
      }

      v11 = a2 == 8246 && a3 == 8243;
      if (a2 == 8245)
      {
        v12 = a3 == 8242;
      }

      else
      {
        v12 = v11;
      }

      if (a2 <= 8248)
      {
        return v12;
      }

      else
      {
        return v10;
      }
    }

    else
    {
      if ((a2 - 8218) < 2)
      {
LABEL_47:
        v13 = a3 == 8218 && a2 != 8218;
        return a3 == 8217 || v13;
      }

      if ((a2 - 8222) < 2 || a2 == 8220)
      {
        if (a3 == 8221)
        {
          return 1;
        }

        else
        {
          return a3 == 8222 && a2 != 8222;
        }
      }
    }
  }

  else if (a2 <= 95)
  {
    v4 = a3 == 41;
    v5 = a3 == 93;
    if (a2 != 91)
    {
      v5 = 0;
    }

    if (a2 != 40)
    {
      v4 = v5;
    }

    v6 = a3 == 34;
    v8 = a3 == 39 || a3 == 180;
    if (a2 != 39)
    {
      v8 = 0;
    }

    if (a2 != 34)
    {
      v6 = v8;
    }

    if (a2 <= 39)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a2 > 170)
    {
      switch(a2)
      {
        case 171:
          v17 = a3 == 187;
          break;
        case 187:
          v17 = a3 == 171;
          break;
        case 8216:
          goto LABEL_47;
        default:
          return result;
      }

      return v17;
    }

    v14 = a3 == 180;
    if (a3 == 96)
    {
      v14 = 1;
    }

    v15 = a3 == 39 || v14;
    v16 = a3 == 125;
    if (a2 != 123)
    {
      v16 = 0;
    }

    if (a2 == 96)
    {
      return v15;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

const void **SLPostLexerImpl::HandlePunct(SLPostLexerImpl *this, SLToken *a2)
{
  v4 = SLLexerBuffer::operator[](this + 12, 0);
  if (v4 && *v4 == 1 && (*(a2 + 17) & 0x20) != 0 && (Unit = SLPostLexerImpl::FindUnit(this, a2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, 36)) != 0)
  {

    return SLPostLexerImpl::HandleCurrency(this, Unit, a2);
  }

  else
  {
    if (**(a2 + 7) == 45)
    {
      SLToken::~SLToken(a2);

      JUMPOUT(0x26D6753C0);
    }

    SLToken::SetType(a2, 11);
    v7 = a2;
    return std::deque<SLToken *>::push_front(this + 15, &v7);
  }
}

uint64_t SLPostLexerImpl::GenerateSymbol(uint64_t a1, const std::string *a2, int a3, __int16 a4, __int16 a5)
{
  v9 = *(a1 + 264);
  v10 = a1 + 336;
  std::string::operator=((a1 + 336 + 24 * v9), a2);
  v11 = *(a1 + 264);
  v12 = (v10 + 24 * v11);
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = a1 + 16 * v9;
  *(v13 + 272) = v12;
  *(v13 + 280) = a3;
  *(v13 + 284) = a4;
  *(v13 + 286) = a5;
  *(a1 + 264) = (v11 + 1) & 3;
  return v13 + 272;
}

uint64_t SLPostLexerImpl::FindUnitModifier(SLPostLexerImpl *this, SLToken *a2, SLToken *a3, char *a4)
{
  *a4 = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 7);
  if (*(a2 + 8) - v4 != 4)
  {
    return 0;
  }

  result = 0;
  v9 = *v4;
  if (v9 <= 178)
  {
    if (v9 != 47)
    {
      if (v9 != 178)
      {
        return result;
      }

      v11 = 50;
      goto LABEL_20;
    }

    v10 = 47;
LABEL_14:
    v11 = 0;
    *a4 = v10;
    if (!a3 || (*(a2 + 4) & 1) != 0)
    {
      goto LABEL_20;
    }

    result = SLPostLexerImpl::FindUnit(this, a3, 0, ((*(a3 + 8) - *(a3 + 7)) >> 1) - 1, 124);
    if (!result)
    {
      result = SLPostLexerImpl::FindUnit(this, a3, 0, ((*(a3 + 8) - *(a3 + 7)) >> 1) - 1, 35);
      if (!result)
      {
        result = SLPostLexerImpl::FindCommonCountable(this, a3, 0);
        if (!result)
        {
          v11 = 0;
          goto LABEL_20;
        }
      }
    }

    return result;
  }

  if (v9 == 179)
  {
    v11 = 51;
LABEL_20:
    result = 0;
    *a4 = v11;
    return result;
  }

  if (v9 == 8901 || v9 == 183)
  {
    v10 = 42;
    goto LABEL_14;
  }

  return result;
}

uint64_t SLPostLexerImpl::AppendFullUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = a8;
  UnitModifier = a7;
  v10 = a6;
  if (a7)
  {
    v13 = a8 == 42;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (a6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = (*(**(a1 + 176) + 240))(*(a1 + 176), a2, a3, v15, a4, a5);
  if (v8)
  {
    do
    {
      v17 = UnitModifier;
      UnitModifier = 0;
      v18 = *(SLLexerBuffer::operator[]((a1 + 96), 0) + 4);
      v28 = 0;
      v19 = v8;
      if (v19 >= 50)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if ((v18 & 1) == 0)
      {
        v21 = SLLexerBuffer::operator[]((a1 + 96), v20);
        v22 = SLLexerBuffer::operator[]((a1 + 96), (v20 + 1));
        UnitModifier = SLPostLexerImpl::FindUnitModifier(a1, v21, v22, &v28);
      }

      v10 &= v15 ^ 1;
      if (v10)
      {
        if (UnitModifier)
        {
          v23 = v28 == 42;
        }

        else
        {
          v23 = 0;
        }

        v15 = !v23;
      }

      else
      {
        v15 = 0;
      }

      v24 = *(a1 + 176);
      v25 = SLLexerBuffer::operator[]((a1 + 96), (v20 - 1));
      (*(*v24 + 248))(v24, v17, v19, v15, a3, v25[4], v25[5]);
      v26 = SLLexerBuffer::operator[]((a1 + 96), 0);
      *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
      result = std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
      if (v26)
      {
        SLToken::~SLToken(v26);
        result = MEMORY[0x26D6753C0]();
      }

      if (v19 <= 49)
      {
        v27 = SLLexerBuffer::operator[]((a1 + 96), 0);
        *(a1 + 152) = vaddq_s64(*(a1 + 152), xmmword_26B34D790);
        result = std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 120, 1);
        if (v27)
        {
          SLToken::~SLToken(v27);
          result = MEMORY[0x26D6753C0]();
        }
      }

      LOBYTE(v8) = v28;
    }

    while (v28);
  }

  return result;
}

void SLPostLexerImpl::HandleElapsedSymbol(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v6 = SLLexerBuffer::operator[](this + 12, 0);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  if ((*(v6 + 18) & 0x80) == 0)
  {
    goto LABEL_26;
  }

  SLDissecter::DissectUnit(*(this + 23), a2, v24);
  SLPostLexerImpl::Transcribe(v8, a2, 2, v25, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &v23);
  SLDissecter::DissectUnit(*(this + 23), v7, v24);
  SLPostLexerImpl::Transcribe(v9, v7, 2, v25, ((*(v7 + 8) - *(v7 + 7)) >> 1) - 1, &__p);
  for (i = 0; ; i = v21 + 1)
  {
    v21 = i;
    if (((*(*this + 152))(this, &v23, &v21) & 1) == 0 || (v20 = v21 + 1, ((*(*this + 152))(this, &__p, &v20) & 1) == 0))
    {
LABEL_16:
      for (j = 0; ; ++j)
      {
        v16 = SLLexerBuffer::operator[](this + 12, j);
        if (!v16)
        {
          break;
        }

        v17 = *(v16 + 4);
        if ((v17 & 0x800000) == 0)
        {
          break;
        }

        *(v16 + 4) = v17 & 0xFF7FFFFF;
      }

      v18 = 1;
      goto LABEL_21;
    }

    if ((*(*this + 160))(this, v21, v20))
    {
      break;
    }
  }

  for (k = 1; ; ++k)
  {
    v12 = SLLexerBuffer::operator[](this + 12, k);
    v13 = v12;
    if (!v12 || (*(v12 + 18) & 0x80) == 0)
    {
      break;
    }

    SLDissecter::DissectUnit(*(this + 23), v12, v24);
    SLPostLexerImpl::Transcribe(v14, v13, 2, v25, ((*(v13 + 8) - *(v13 + 7)) >> 1) - 1, &v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v19;
    v19.__r_.__value_.__r.__words[0] = v20 + 1;
    if (!(*(*this + 152))(this, &__p, &v19) || ((*(*this + 160))(this, v20, v19.__r_.__value_.__r.__words[0]) & 1) == 0)
    {
      goto LABEL_16;
    }

    v20 = v19.__r_.__value_.__r.__words[0];
  }

  SLPostLexerImpl::PronounceElapsed(this, a2, v21, a3);
  v18 = 0;
LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
LABEL_26:
    *(a2 + 4) &= ~0x800000u;
    SLTokenList::push_back(a3, a2);
  }
}

void sub_26B2F88BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

const void **SLPostLexerImpl::HandleThousandsSeparators(SLPostLexerImpl *this, SLToken *a2, char a3)
{
  v6 = **(*(**(this + 22) + 216))(*(this + 22), 207);
  SLDissecter::DissectNumber(*(this + 23), a2, 0, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, v30);
  if (v33 <= 0x3E7 && v30[4] == 0 && v31 >= *(a2 + 5))
  {
    v8 = SLLexerBuffer::operator[](this + 12, 1uLL);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 3;
      while (1)
      {
        v13 = v8;
        v14 = *v8;
        if (v14 != 1)
        {
          break;
        }

        if (v9)
        {
          goto LABEL_40;
        }

        v15 = v8[7];
        if (SLChar::sCharClass[*v15 & 0x3F | (SLChar::sUniMap[*v15 >> 6] << 6)] != 2)
        {
          goto LABEL_40;
        }

        v16 = *(v8 + 4);
        if ((v16 & 0x1000) != 0)
        {
          SLDissecter::DissectUnit(*(this + 23), v8, v29);
          if (LOBYTE(v29[0]))
          {
            v17 = a3 == 43;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v18 = 42;
          }

          else
          {
            v18 = a3;
          }

          a3 = v18;
          if (!SLPostLexerImpl::FindUnit(this, a2, v29[3], ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, v18))
          {
            goto LABEL_40;
          }

          v11 = v29[1];
          v19 = v29[2];
        }

        else
        {
          v19 = ((v8[8] - v15) >> 1) - 1;
        }

        SLDissecter::DissectNumber(*(this + 23), v13, v11, v19, v30);
        if (v31 != 3 || v32)
        {
          goto LABEL_40;
        }

        v9 = *(v13 + 40) != 3 || (v16 & 0x1000) != 0;
        if ((*(v13 + 16) & 1) == 0)
        {
          v20 = SLLexerBuffer::operator[](this + 12, v12 - 1);
          if (v20)
          {
            if (*v20 == 13 && *v20[7] == v6 && (v20[2] & 1) == 0)
            {
              v8 = SLLexerBuffer::operator[](this + 12, v12);
              v12 += 2;
              v10 = v13;
              if (v8)
              {
                continue;
              }
            }
          }
        }

        v21 = 0;
        goto LABEL_34;
      }

      if (*v8)
      {
        if (v14 == 2 || v14 == 14)
        {
          v25 = v8[7];
          v26 = ((v8[8] - v25) >> 1) - 1;
          if (v26 >= 5)
          {
            v27 = 0;
            while (1)
            {
              v28 = v27 == 3 ? 6 : 2;
              if (v28 != SLChar::sCharClass[*&v25[2 * v27] & 0x3F | (SLChar::sUniMap[*&v25[2 * v27] >> 6] << 6)])
              {
                break;
              }

              if (v26 == ++v27)
              {
                v10 = v8;
                goto LABEL_55;
              }
            }
          }
        }

        else
        {
          v13 = 0;
LABEL_55:
          v21 = v13;
          v13 = v10;
          if (v10)
          {
            do
            {
              while (1)
              {
LABEL_34:
                v22 = SLLexerBuffer::operator[](this + 12, 0);
                *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
                std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
                if (v22 == v21)
                {
                  operator new();
                }

                SLToken::AppendToken(a2, v22);
                if (v22)
                {
                  break;
                }

                if (!v13)
                {
                  goto LABEL_40;
                }
              }

              SLToken::~SLToken(v22);
              MEMORY[0x26D6753C0]();
            }

            while (v22 != v13);
          }
        }
      }
    }
  }

LABEL_40:
  *(a2 + 4) |= 0x80u;
  v29[0] = a2;
  return std::deque<SLToken *>::push_front(this + 15, v29);
}

void SLPostLexerImpl::PronounceElapsed(SLPostLexerImpl *this, SLToken *a2, uint64_t a3, SLTokenList *a4)
{
  v18 = a3;
  do
  {
    while (1)
    {
      SLDissecter::DissectUnit(*(this + 23), a2, v13);
      SLPostLexerImpl::Transcribe(v7, a2, 2, v16, ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1, &__p);
      (*(*this + 152))(this, &__p, &v18);
      SLDissecter::DissectNumber(*(this + 23), a2, v14, v15, v11);
      (*(**(this + 22) + 48))(*(this + 22), a2, a4, v11, 0, 0);
      v16 += *(a2 + 4);
      (*(*this + 168))(this, &__p, v18, v11[2] == 0, v10);
      *(a4 + 24) = 2;
      (*(**(this + 22) + 232))(*(this + 22), v10, a4, v16, v17);
      SLToken::~SLToken(a2);
      MEMORY[0x26D6753C0]();
      v8 = SLLexerBuffer::operator[](this + 12, 0);
      a2 = v8;
      if (!v8)
      {
        goto LABEL_4;
      }

      if ((*(v8 + 18) & 0x80) != 0)
      {
        *(v8 + 1) = (*(**(this + 22) + 168))(*(this + 22), 0);
        *(this + 152) = vaddq_s64(*(this + 152), xmmword_26B34D790);
        std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 120, 1);
        ++v18;
        v9 = 1;
      }

      else
      {
LABEL_4:
        v9 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while ((v9 & 1) != 0);
}

void sub_26B2F8FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

BOOL SLPostLexerImpl::LooksLikeName(SLPostLexerImpl *this, SLToken *a2, int a3)
{
  if (*a2)
  {
    return 0;
  }

  v3 = *(a2 + 7);
  if ((((*(a2 + 8) - v3) >> 1) - 1) < 2)
  {
    return 0;
  }

  if (a3 && (SLChar::sCharClass[v3[1] & 0x3F | (SLChar::sUniMap[v3[1] >> 6] << 6)] & 0x1F) == 1)
  {
    return 1;
  }

  if ((SLChar::sCharClass[*v3 & 0x3F | (SLChar::sUniMap[*v3 >> 6] << 6)] & 0x9F) != 1)
  {
    return 0;
  }

  v5 = SLChar::sCharClass[v3[1] & 0x3F | (SLChar::sUniMap[v3[1] >> 6] << 6)];
  if ((v5 & 0x1F) != 4)
  {
    if ((v5 & 0x1F) == 1)
    {
      return (v5 >> 7) & 1;
    }

    return 0;
  }

  return (SLChar::sCharClass[v3[2] & 0x3F | (SLChar::sUniMap[v3[2] >> 6] << 6)] & 0x9F) == 1;
}

char *std::vector<unsigned short>::insert(void *a1, char *__src, _WORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v28 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v25 = 0;
    v26 = 2 * v16;
    v27 = (2 * v16);
    std::__split_buffer<unsigned short>::emplace_back<unsigned short>(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_26B2F92E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPostLexerImpl::HandleUnknownChar(SLPostLexerImpl *this, SLToken *a2, SLTokenList *a3)
{
  SLToken::SetType(a2, 0);
  result = SLPostLexerImpl::HandleTokenInDictionary(this, a2);
  if (a2 && (result & 1) == 0)
  {
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  return result;
}

void SLPostLexer::Create(SLPostLexer *this, SLLexer *a2, SLDictLookup *a3, CFLocaleRef locale, const __CFLocale *a5)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0))
  {
    operator new();
  }

  SLCreatePostLexerEng(this, a2, a3);
}

const void **std::deque<SLToken *>::push_front(const void **result, void *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<SLToken *>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 9)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

const void **std::deque<SLToken *>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<SLToken **>::emplace_front<SLToken **&>(a1, v11);
}

void sub_26B2F97E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SLToken::SLToken(SLToken *this, const SLToken *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 1) = v5;
  *(this + 2) = v6;
  *this = v4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 1);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<SLHomograph *>::__init_with_size[abi:ne200100]<SLHomograph **,SLHomograph **>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
}

void sub_26B2F98BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B2F9938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SLHomograph *>::__init_with_size[abi:ne200100]<SLHomograph **,SLHomograph **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SLHomograph *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B2F99B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SLHomograph *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

const __CFString *___ZL17isInMainlandChinav_block_invoke()
{
  result = CPGetDeviceRegionCode();
  if (result)
  {
    result = CFStringCompare(result, @"CH", 0);
    isInMainlandChina(void)::isInMainlandChina = result == 0;
  }

  return result;
}

uint64_t *std::deque<SLToken *>::insert(int64x2_t *a1, char *a2, uint64_t a3, void **a4)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v10 - *v9) >> 3);
  }

  v12 = a1[2].i64[1];
  v13 = v12 - v11;
  if (v11 >= v12 - v11)
  {
    if (v8 == v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = ((v8 - v7) << 6) - 1;
    }

    if (v18 == v12 + v6)
    {
      std::deque<SLToken *>::__add_back_capacity(a1);
      v12 = a1[2].i64[1];
      v13 = v12 - v11;
    }

    if (v12 == v11)
    {
      *(*(a1->i64[1] + (((a1[2].i64[0] + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[2].i64[0] + v11) & 0x1FF)) = *a4;
      a1[2].i64[1] = v11 + 1;
    }

    else
    {
      v49 = a4;
      v19 = a1[2].i64[0] + v12;
      v20 = a1->i64[1];
      v21 = (v20 + 8 * (v19 >> 9));
      if (a1[1].i64[0] == v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = (*v21 + 8 * (v19 & 0x1FF));
      }

      v34 = std::prev[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v21, v22);
      v35 = v33;
      if (v33 == a4)
      {
        v49 = v22;
        a4 = v22;
      }

      *v22 = *v33;
      ++a1[2].i64[1];
      if (v13 >= 2)
      {
        v36 = ((v22 - *v21) >> 3) - v13;
        if (v36 < 1)
        {
          v44 = 511 - v36;
          v37 = &v21[-8 * (v44 >> 9)];
          v38 = (*v37 + 8 * (~v44 & 0x1FF));
        }

        else
        {
          v37 = &v21[8 * (v36 >> 9)];
          v38 = (*v37 + 8 * (v36 & 0x1FF));
        }

        v21 = std::deque<SLToken *>::__move_backward_and_check(a1, v37, v38, v34, v35, v21, v22, &v49);
        v22 = v45;
        a4 = v49;
      }

      if (v22 == *v21)
      {
        v22 = (*(v21 - 1) + 4096);
      }

      *(v22 - 1) = *a4;
    }
  }

  else
  {
    if (v6)
    {
      if (v11)
      {
LABEL_10:
        v51 = a4;
        v14 = a1[2].u64[0];
        v15 = a1->i64[1];
        v16 = (v15 + 8 * (v14 >> 9));
        if (a1[1].i64[0] == v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = (*v16 + 8 * (a1[2].i64[0] & 0x1FF));
        }

        v49 = (v15 + 8 * (v14 >> 9));
        v50 = v17;
        std::prev[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v16, v17);
        if (v17 == a4)
        {
          v51 = v28;
          a4 = v28;
        }

        *v28 = *v17;
        a1[2] = vaddq_s64(a1[2], xmmword_26B34D7E0);
        if (v11 != 1)
        {
          v29 = &v17[-*v16] >> 3;
          if (v29 < 0)
          {
            v39 = 510 - v29;
            v31 = &v16[-(v39 >> 9)];
            v32 = (*v31 + 8 * (~v39 & 0x1FF));
          }

          else
          {
            v30 = v29 + 1;
            v31 = &v16[v30 >> 9];
            v32 = (*v31 + 8 * (v30 & 0x1FF));
          }

          v40 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](&v49, v11);
          v42 = std::deque<SLToken *>::__move_and_check(a1, v31, v32, v40, v41, v49, v50, &v51);
          v17 = v43;
          v49 = v42;
          v50 = v43;
          a4 = v51;
        }

        *v17 = *a4;
        goto LABEL_48;
      }
    }

    else
    {
      std::deque<SLToken *>::__add_front_capacity(a1);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v23 = a1[2].u64[0];
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 9));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25 + 8 * (a1[2].i64[0] & 0x1FF);
    }

    if (v26 == *v25)
    {
      v26 = *(v25 - 1) + 4096;
    }

    *(v26 - 8) = *a4;
    v27 = a1[2].i64[1] + 1;
    a1[2].i64[0] = v23 - 1;
    a1[2].i64[1] = v27;
  }

LABEL_48:
  v46 = a1->i64[1];
  if (a1[1].i64[0] == v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = (*(v46 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF));
  }

  v49 = (v46 + 8 * (a1[2].i64[0] >> 9));
  v50 = v47;
  return std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](&v49, v11);
}

uint64_t *std::prev[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(void *a1, uint64_t a2)
{
  v2 = (a2 - *a1) >> 3;
  if (v2 < 2)
  {
    result = &a1[-((512 - v2) >> 9)];
    v5 = *result;
  }

  else
  {
    result = &a1[(v2 - 1) >> 9];
    v4 = *result;
  }

  return result;
}

void **std::deque<SLToken *>::__move_and_check(int a1, char *a2, char *__src, char *a4, char *a5, void **a6, char *__dst, unint64_t *a8)
{
  if (a5 != __src)
  {
    v27[11] = v8;
    v27[12] = v9;
    v10 = __src;
    v11 = a2;
    v12 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - (&__src[-*a2] >> 3);
    if (v12 >= 1)
    {
      do
      {
        v14 = *v11;
        v15 = *v11 + 4096;
        v16 = (v15 - v10) >> 3;
        if (v16 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = (v15 - v10) >> 3;
        }

        if (v16 <= v12)
        {
          v18 = (*v11 + 4096);
        }

        else
        {
          v18 = &v10[8 * v12];
        }

        v19 = *a8;
        if (v10 <= *a8 && v19 < v18)
        {
          if (v10 != __dst)
          {
            v21 = ((a6 - v11) << 6) - (&v10[-v14] >> 3) + ((__dst - *a6) >> 3);
            if (v21)
            {
              v22 = v21 + ((v19 - v14) >> 3);
              if (v22 < 1)
              {
                v19 = *&v11[-8 * ((511 - v22) >> 9)] + 8 * (~(511 - v22) & 0x1FF);
              }

              else
              {
                v19 = *&v11[(v22 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v22 & 0x1FF);
              }
            }
          }

          *a8 = v19;
        }

        std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,SLToken **,SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v10, __dst, v18, a6, v27);
        if (v15 != v10)
        {
          v23 = v17 + (&v10[-*v11] >> 3);
          if (v23 < 1)
          {
            v24 = 511 - v23;
            v11 -= 8 * (v24 >> 9);
            v10 = (*v11 + 8 * (~v24 & 0x1FF));
          }

          else
          {
            v11 += 8 * (v23 >> 9);
            v10 = (*v11 + 8 * (v23 & 0x1FF));
          }
        }

        a6 = v27[1];
        __dst = v27[2];
        v25 = v12 <= v17;
        v12 -= v17;
      }

      while (!v25);
    }
  }

  return a6;
}