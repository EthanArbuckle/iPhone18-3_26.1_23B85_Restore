void morphun::analysis::filter::SuffixFilter::~SuffixFilter(morphun::analysis::filter::SuffixFilter *this)
{
  v2 = (this + 144);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA570);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = (this + 144);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA570);
}

uint64_t morphun::analysis::AnalyzerWrapper::getOffsetGap(morphun::analysis::AnalyzerWrapper *this)
{
  v1 = (*(*this + 56))(this);
  v2 = *(*npc<morphun::analysis::Analyzer>(v1) + 48);

  return v2();
}

uint64_t morphun::analysis::AnalyzerWrapper::getPositionIncrementGap(morphun::analysis::AnalyzerWrapper *this)
{
  v1 = (*(*this + 56))(this);
  v2 = *(*npc<morphun::analysis::Analyzer>(v1) + 40);

  return v2();
}

uint64_t morphun::analysis::AnalyzerWrapper::initReader(morphun::analysis::AnalyzerWrapper *this, UText *a2)
{
  v4 = (*(*this + 56))(this);
  npc<morphun::analysis::Analyzer>(v4);
  v5 = (*(*this + 72))(this, a2);
  v6 = *(*v4 + 32);

  return v6(v4, v5);
}

uint64_t morphun::analysis::AnalyzerWrapper::createComponents(morphun::analysis::AnalyzerWrapper *this)
{
  v2 = (*(*this + 56))(this);
  v3 = npc<morphun::analysis::Analyzer>(v2);
  v4 = (*(*v3 + 24))(v3);
  v5 = *(*this + 64);

  return v5(this, v4);
}

morphun::analysis::Analyzer *morphun::analysis::AnalyzerWrapper::AnalyzerWrapper(morphun::analysis::AnalyzerWrapper *this, uint64_t *a2)
{
  result = morphun::analysis::Analyzer::Analyzer(this, a2 + 1);
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 40)) = a2[3];
  return result;
}

uint64_t morphun::grammar::synthesis::ArGrammarSynthesizer_DefinitenessLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  v4 = v3;
  v5 = a1[2];
  v6 = *(v3 + 23);
  if (v6 < 0)
  {
    v6 = *(v3 + 8);
    if (!v6)
    {
      return 0;
    }

    v31 = 0;
    v7 = *v3;
  }

  else
  {
    if (!*(v3 + 23))
    {
      return 0;
    }

    v31 = 0;
    v7 = v3;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v5, &v31, v7, v6);
  if ((a1[29] & v31) != 0)
  {
    operator new();
  }

  v8 = (*(*a1 + 32))(&__p, a1, v4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    operator new();
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((a1[30] & v31) == 0)
  {
    v11 = *(v4 + 23);
    v12 = v11 >= 0 ? *(v4 + 23) : *(v4 + 8);
    if (v12)
    {
      memset(&__p, 0, sizeof(__p));
      v13 = *v4;
      v14 = morphun::util::LocaleUtils::ARABIC(v8);
      if (v11 >= 0)
      {
        v15 = v4;
      }

      else
      {
        v15 = v13;
      }

      morphun::util::StringViewUtils::lowercase(&__p, v15, v12, v14);
      if (std::basic_string<char16_t>::starts_with[abi:se200100](&__p, word_1BE7E4FB6))
      {
        operator new();
      }

      v16 = a1[26];
      if (v16 != a1 + 27)
      {
        do
        {
          v17 = v16[5];
          v18 = v16[6];
          v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
            v19 = __p.__r_.__value_.__l.__size_;
          }

          v29.__r_.__value_.__r.__words[0] = p_p;
          v29.__r_.__value_.__l.__size_ = v19;
          if (std::u16string_view::ends_with[abi:se200100](&v29, v17, v18))
          {
            v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __p.__r_.__value_.__l.__size_;
            }

            std::basic_string<char16_t>::basic_string(&v29, &__p, 0, v22 - v16[6], v21);
            v28 = 0;
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v29;
            }

            else
            {
              v23 = v29.__r_.__value_.__r.__words[0];
            }

            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v24 = v29.__r_.__value_.__l.__size_;
            }

            morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v5, &v28, v23, v24);
            if ((a1[31] & v28) != 0)
            {
              operator new();
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }
          }

          v25 = v16[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v16[2];
              v27 = *v26 == v16;
              v16 = v26;
            }

            while (!v27);
          }

          v16 = v26;
        }

        while (v26 != a1 + 27);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return 0;
}

void sub_1BE66BED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1BFB49160](v21, 0x10B3C40F7FF9C27);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_DefinitenessLookupFunction::~ArGrammarSynthesizer_DefinitenessLookupFunction(morphun::grammar::synthesis::ArGrammarSynthesizer_DefinitenessLookupFunction *this)
{
  *this = &unk_1F3CF0150;
  std::__tree<std::u16string_view>::destroy(*(this + 27));
  *this = &off_1F3CF01F8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CF0150;
  std::__tree<std::u16string_view>::destroy(*(this + 27));
  *this = &off_1F3CF01F8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;
}

uint64_t morphun::grammar::synthesis::DEFINITENESS_VALUES(morphun::grammar::synthesis *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::DEFINITENESS_VALUES(void)::_DEFINITENESS_VALUES;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE66C2B4(_Unwind_Exception *a1)
{
  v4 = (v2 + 71);
  v5 = -72;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1BFB49160](v1, 0x20C40960023A9);
      _Unwind_Resume(a1);
    }
  }
}

void virtual thunk tomorphun::analysis::tokenattributes::PackedTokenAttributeImpl::~PackedTokenAttributeImpl(morphun::analysis::tokenattributes::PackedTokenAttributeImpl *this)
{
  morphun::analysis::tokenattributes::PackedTokenAttributeImpl::~PackedTokenAttributeImpl((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::tokenattributes::PackedTokenAttributeImpl::~PackedTokenAttributeImpl((this + *(*this - 32)));
}

void morphun::analysis::tokenattributes::PackedTokenAttributeImpl::~PackedTokenAttributeImpl(morphun::analysis::tokenattributes::PackedTokenAttributeImpl *this)
{
  *this = &unk_1F3CD2418;
  *(this + unk_1F3CD23B8) = &unk_1F3CD2508;
  *(this + *(*this - 112)) = &unk_1F3CD25B0;
  *(this + *(*this - 120)) = &unk_1F3CD2670;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

{
  morphun::analysis::tokenattributes::PackedTokenAttributeImpl::~PackedTokenAttributeImpl(this);

  JUMPOUT(0x1BFB49160);
}

char **morphun::analysis::tokenattributes::PackedTokenAttributeImpl::setSkippedTextWithOffsets(uint64_t a1, int a2, char **a3)
{
  *(a1 + 16) = a2;
  result = (a1 + 24);
  if (result != a3)
  {
    return std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(result, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return result;
}

BOOL morphun::analysis::tokenattributes::PackedTokenAttributeImpl::isImplemented(morphun::analysis::tokenattributes::PackedTokenAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v3 = *lpsrc;
  v4 = **lpsrc;
  {
    return 1;
  }

  v5 = *v3;
  {
    return 1;
  }

  v7 = *v3;
}

std::basic_string<char16_t> *morphun::analysis::tokenattributes::PackedTokenAttributeImpl::copyTo(char **this, char **lpsrc)
{
  if (!lpsrc)
  {
    morphun::analysis::tokenattributes::CharTermAttributeImpl::copyTo(this, 0);
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v4 = *lpsrc;
  v5 = **lpsrc;
  {
    v6 = *v4;
    if (v7)
    {
      v8 = v7;
      result = std::basic_string<char16_t>::operator=((v7 + *(*v7 - 13)), (this + *(*this - 13)));
      v8[1] = this[1];
      *(v8 + 4) = *(this + 4);
      if (v8 != this)
      {
        v10 = this[3];
        v11 = this[4];

        return std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(v8 + 3, v10, v11, (v11 - v10) >> 2);
      }

      return result;
    }

LABEL_14:
    v18 = __cxa_allocate_exception(0x38uLL);
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *v18 = &unk_1F3CD0AE8;
  }

  morphun::analysis::tokenattributes::CharTermAttributeImpl::copyTo(this, lpsrc);
  v12 = **lpsrc;
  if (!v13)
  {
    goto LABEL_14;
  }

  (*(*v13 + 64))(v13, *(this + 2), *(this + 3));
  v14 = **lpsrc;
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = *(this + 4);
  v17 = *(*v15 + 56);

  return v17();
}

void sub_1BE66CAC0(_Unwind_Exception *a1)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::tokenattributes::PackedTokenAttributeImpl::operator()(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return (*(*v3 + 40))(v3);
}

uint64_t morphun::analysis::tokenattributes::PackedTokenAttributeImpl::hashCode(morphun::analysis::tokenattributes::PackedTokenAttributeImpl *this)
{
  v2 = this + *(*this - 104);
  v3 = v2[23];
  if (v3 >= 0)
  {
    v4 = (this + *(*this - 104));
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = v2[23];
  }

  else
  {
    v5 = *(v2 + 1);
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v4, 2 * v5);
  v7 = *(this + 2) - v6 + 32 * v6;
  v8 = *(this + 3) - v7 + 32 * v7;
  return (*(this + 4) - v8 + 32 * v8);
}

uint64_t morphun::analysis::tokenattributes::PackedTokenAttributeImpl::equals(const void **this, char **lpsrc)
{
  if ((this + *(*this - 11)) == lpsrc)
  {
    return 1;
  }

  v4 = **lpsrc;
  if (result)
  {
    if (*(this + 2) == *(result + 8) && *(this + 3) == *(result + 12) && *(this + 4) == *(result + 16) && (v6 = this[4] - this[3], v7 = *(result + 24), v6 == *(result + 32) - v7) && !memcmp(this[3], v7, v6))
    {

      return morphun::analysis::tokenattributes::CharTermAttributeImpl::equals(this, lpsrc);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BE66CEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(va);
  MEMORY[0x1BFB49160](v2, v3);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::DaGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::DaGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"negArticle");
  operator new();
}

void sub_1BE66EA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  __cxa_free_exception(v56);
  MEMORY[0x1BFB49160](v54, v55);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Count>>(morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v4 + 32), a1);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v3 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, (v6 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v6 = v3;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Count>>(morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    result = *(v6 + 56);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE66F270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[16 * a3];
    while (1)
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 != v4)
      {
        v9 = a1[1];
        v10 = v4;
        if (v7)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 16, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 16;
      if (v5 == v6)
      {
        return a1;
      }
    }

    for (; v7; v7 = v7[1])
    {
      while (1)
      {
        v12 = v7;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v5, v7 + 16) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_1BE66F4B0(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v4 + 32), a1);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v3 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, (v6 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v6 = v3;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    result = *(v6 + 56);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE66F71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[16 * a3];
    while (1)
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 != v4)
      {
        v9 = a1[1];
        v10 = v4;
        if (v7)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 16, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 16;
      if (v5 == v6)
      {
        return a1;
      }
    }

    for (; v7; v7 = v7[1])
    {
      while (1)
      {
        v12 = v7;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v5, v7 + 16) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_1BE66F95C(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DaGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::filter::LowerCaseFilter::~LowerCaseFilter(void **this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA4E0);

  JUMPOUT(0x1BFB49160);
}

{

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA4E0);
}

uint64_t morphun::tokenizer::SemiticTokenExtractorIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 84) = 0;
  result = morphun::tokenizer::ICUTokenExtractorIterator::reset(a1 + 16);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 80) = 0;
  return result;
}

uint64_t morphun::tokenizer::SemiticTokenExtractorIterator::getNextBoundary(morphun::tokenizer::SemiticTokenExtractorIterator *this)
{
  v3 = this + 56;
  v2 = *(this + 7);
  v4 = *(this + 20);
  v5 = (*(this + 8) - v2) >> 2;
  if (v4 < v5)
  {
    *(this + 20) = v4 + 1;
    if (v5 > v4)
    {
      v6 = *(v2 + 4 * v4);
LABEL_21:
      *(this + 21) = v6;
      return v6;
    }

    goto LABEL_23;
  }

  *(this + 8) = v2;
  *(this + 20) = 0;
  v7 = *(this + 3);
  v8 = ubrk_next();
  v6 = v8;
  if (v8 != -1)
  {
    v9 = *(this + 21);
    if (v8 - v9 < 2)
    {
      goto LABEL_21;
    }

    morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::decompoundWord(*(this + 1), v3, *(this + 5), *(this + 6), v9, v8);
    v10 = *(this + 7);
    v11 = *(this + 8);
    v12 = v11 - v10;
    if (v12 < 2)
    {
      goto LABEL_21;
    }

    if (v10 != v11)
    {
      if (*(v11 - 1) == v6)
      {
        goto LABEL_19;
      }

      v13 = *(this + 9);
      if (v11 < v13)
      {
        *v11 = v6;
        v14 = v11 + 1;
        *(this + 8) = v14;
        v12 = v14 - v10;
LABEL_19:
        v18 = *(this + 20);
        *(this + 20) = v18 + 1;
        if (v12 > v18)
        {
          v6 = v10[v18];
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v15 = v12 + 1;
      if (v15 >> 62)
      {
        goto LABEL_24;
      }

      v16 = v13 - v10;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v17);
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return v6;
}

void morphun::tokenizer::SemiticTokenExtractorIterator::~SemiticTokenExtractorIterator(morphun::tokenizer::SemiticTokenExtractorIterator *this)
{
  morphun::tokenizer::SemiticTokenExtractorIterator::~SemiticTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD05C0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((this + 16));
}

void morphun::dialog::DictionaryLookupInflector::~DictionaryLookupInflector(morphun::dialog::DictionaryLookupInflector *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::DictionaryLookupInflector::~DictionaryLookupInflector(morphun::dialog::DictionaryLookupInflector *this, void *a2)
{
  v4 = a2[1];
  *this = v4;
  *(this + *(v4 - 40)) = a2[4];
  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v8 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v8);
  v6 = *(this + 19);
  if (v6)
  {
    *(this + 20) = v6;
    operator delete(v6);
  }

  v7 = a2[2];
  *this = v7;
  *(this + *(v7 - 40)) = a2[3];
}

uint64_t *morphun::dialog::DictionaryLookupInflector::DictionaryLookupInflector(uint64_t *a1, morphun::dictionary::DictionaryMetaData *a2, void *a3, uint64_t **a4, char a5)
{
  *a1 = &unk_1F3CD9158;
  memset(v7, 0, sizeof(v7));
  result = morphun::analysis::MorphologicalAnalyzer::MorphologicalAnalyzer(a1, off_1F3CDCA40, a2, v7, a3, a4);
  *result = &unk_1F3CD8608;
  *(result + 224) = a5;
  return result;
}

void morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(_BYTE *a1, uint64_t *a2, std::basic_string<char16_t> *__src, unint64_t a4, uint64_t a5, std::basic_string<char16_t> *a6, std::basic_string<char16_t> *a7, std::basic_string<char16_t> *a8)
{
  v38 = *MEMORY[0x1E69E9840];
  if (morphun::util::gLogLevel <= 0)
  {
    v14 = std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "D");
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (!a5)
  {
    if (morphun::util::gLogLevel <= 0)
    {
      if (a4 > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
      }

      if (a4 > 0xA)
      {
        if ((a4 | 3) == 0xB)
        {
          v21 = 13;
        }

        else
        {
          v21 = (a4 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v21);
      }

      *(&v36.__r_.__value_.__s + 23) = a4;
      v22 = (&v36 + 2 * a4);
      if (&v36 <= __src && v22 > __src)
      {
        goto LABEL_77;
      }

      if (a4)
      {
        memmove(&v36, __src, 2 * a4);
      }

      v22->__r_.__value_.__s.__data_[0] = 0;
      std::basic_string<char16_t>::append(&v36, L": not in dictionary return std::nullopt\n", 0x28uLL);
      __dst = v36;
      memset(&v36, 0, sizeof(v36));
      if (morphun::util::gLogLevel <= 0)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        morphun::util::logToTopOfStackLogger(0, 0, p_dst);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }
    }

    *a1 = 0;
    a1[24] = 0;
LABEL_74:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  morphun::dictionary::Inflector::getInflectionPatternsForWord(a2[2], __src, a4, &v32);
  v16 = v32;
  v31 = v33;
  if (v32 != v33)
  {
    v30 = a4;
    do
    {
      v17 = *(v16 + 8);
      if (*(v16 + 18))
      {
        morphun::dictionary::Inflector_InflectionPattern::inflectionsForSurfaceForm(&v36, v16, __src, v30, a5);
        v18 = v36.__r_.__value_.__r.__words[0];
        if (v36.__r_.__value_.__r.__words[0] != v36.__r_.__value_.__l.__size_)
        {
          do
          {
            for (i = a2[25]; ; ++i)
            {
              if (i == a2[26])
              {
                std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes>>(1uLL);
              }

              if ((*i & ~(v17 | v18[2])) == 0)
              {
                break;
              }
            }

            v18 += 3;
          }

          while (v18 != v36.__r_.__value_.__l.__size_);
          v18 = v36.__r_.__value_.__r.__words[0];
        }

        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        for (j = a2[25]; ; ++j)
        {
          if (j == a2[26])
          {
            std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes>>(1uLL);
          }

          if ((*j & ~v17) == 0)
          {
            break;
          }
        }
      }

      v16 += 40;
    }

    while (v16 != v31);
    *a1 = 0;
    a1[24] = 0;
    v16 = v32;
    if (!v32)
    {
      goto LABEL_74;
    }

LABEL_73:
    operator delete(v16);
    goto LABEL_74;
  }

  if (morphun::util::gLogLevel > 0)
  {
LABEL_70:
    *a1 = 0;
    a1[24] = 0;
    if (!v16)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v24 = 13;
    }

    else
    {
      v24 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v24);
  }

  *(&v35.__r_.__value_.__s + 23) = a4;
  v25 = (&v35 + 2 * a4);
  if (&v35 > __src || v25 <= __src)
  {
    if (a4)
    {
      memmove(&v35, __src, 2 * a4);
    }

    v25->__r_.__value_.__s.__data_[0] = 0;
    std::basic_string<char16_t>::insert(&v35, "\t", 1, v15);
    v36 = v35;
    memset(&v35, 0, sizeof(v35));
    std::basic_string<char16_t>::append(&v36, ":", 0x1FuLL);
    __dst = v36;
    memset(&v36, 0, sizeof(v36));
    if (morphun::util::gLogLevel <= 0)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__dst;
      }

      else
      {
        v26 = __dst.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(0, 0, v26);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    goto LABEL_70;
  }

LABEL_77:
  __break(1u);
}

void sub_1BE6712E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::anonymous namespace::traceLogInflectCall(std::basic_string<char16_t> **a1, void **a2, unint64_t a3, std::basic_string<char16_t> *a4, std::basic_string<char16_t> *a5, std::basic_string<char16_t> *a6)
{
  if (*(a1 + 23) >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  std::basic_string<char16_t>::basic_string[abi:se200100](&v37, v12->__r_.__value_.__r.__words + 1);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v37;
  }

  else
  {
    v13 = v37.__r_.__value_.__r.__words[0];
  }

  if (*(a1 + 23) >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_99;
  }

  v15 = (v13 + 2 * v12);
  if (v14 >= v13 && v15 > v14)
  {
    goto LABEL_99;
  }

  if (v12)
  {
    memmove(v13, v14, 2 * v12);
  }

  if (v15 <= L"(" && v15 + 1 > L"(")
  {
    goto LABEL_99;
  }

  *v15 = 40;
  std::basic_string<char16_t>::append(&v37, L"word=", 5uLL);
  v38 = v37;
  memset(&v37, 0, sizeof(v37));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a3 > 0xA)
  {
    if ((a3 | 3) == 0xB)
    {
      v18 = 13;
    }

    else
    {
      v18 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v18);
  }

  v36 = a3;
  v19 = (v35 + 2 * a3);
  if (v35 <= a2 && v19 > a2)
  {
LABEL_99:
    __break(1u);
  }

  else
  {
    if (a3)
    {
      memmove(v35, a2, 2 * a3);
    }

    *v19 = 0;
    if ((v36 & 0x80u) == 0)
    {
      v20 = v35;
    }

    else
    {
      v20 = v35[0];
    }

    if ((v36 & 0x80u) == 0)
    {
      v21 = v36;
    }

    else
    {
      v21 = v35[1];
    }

    std::basic_string<char16_t>::append(&v38, v20, v21);
    v39 = v38;
    memset(&v38, 0, sizeof(v38));
    std::basic_string<char16_t>::append(&v39, L", ", 2uLL);
    v40 = v39;
    memset(&v39, 0, sizeof(v39));
    std::basic_string<char16_t>::append(&v40, L"constraints = [", 0xFuLL);
    v41 = v40;
    memset(&v40, 0, sizeof(v40));
    morphun::util::StringViewUtils::join(L", ", 2uLL, a4, v33);
    if ((v34 & 0x80u) == 0)
    {
      v22 = v33;
    }

    else
    {
      v22 = v33[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v23 = v34;
    }

    else
    {
      v23 = v33[1];
    }

    std::basic_string<char16_t>::append(&v41, v22, v23);
    v42 = v41;
    memset(&v41, 0, sizeof(v41));
    std::basic_string<char16_t>::append(&v42, L"], ", 3uLL);
    v43 = v42;
    memset(&v42, 0, sizeof(v42));
    std::basic_string<char16_t>::append(&v43, L"optionalConstraints = [", 0x17uLL);
    v44 = v43;
    memset(&v43, 0, sizeof(v43));
    morphun::util::StringViewUtils::join(L", ", 2uLL, a5, v31);
    if ((v32 & 0x80u) == 0)
    {
      v24 = v31;
    }

    else
    {
      v24 = v31[0];
    }

    if ((v32 & 0x80u) == 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v31[1];
    }

    std::basic_string<char16_t>::append(&v44, v24, v25);
    v45 = v44;
    memset(&v44, 0, sizeof(v44));
    std::basic_string<char16_t>::append(&v45, L"], ", 3uLL);
    v46 = v45;
    memset(&v45, 0, sizeof(v45));
    std::basic_string<char16_t>::append(&v46, L"disambiguationGrammemeValues = [", 0x20uLL);
    v47 = v46;
    memset(&v46, 0, sizeof(v46));
    morphun::util::StringViewUtils::join(L", ", 2uLL, a6, __p);
    if ((v30 & 0x80u) == 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v27 = v30;
    }

    else
    {
      v27 = __p[1];
    }

    std::basic_string<char16_t>::append(&v47, v26, v27);
    v48 = v47;
    memset(&v47, 0, sizeof(v47));
    std::basic_string<char16_t>::append(&v48, "]", 1uLL);
    v49 = v48;
    memset(&v48, 0, sizeof(v48));
    std::basic_string<char16_t>::append(&v49, ")", 2uLL);
    v50 = v49;
    memset(&v49, 0, sizeof(v49));
    if (morphun::util::gLogLevel <= 0)
    {
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v50;
      }

      else
      {
        v28 = v50.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(0, 0, v28);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE671C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (*(v78 - 89) < 0)
  {
    operator delete(*(v78 - 112));
  }

  if (*(v78 - 121) < 0)
  {
    operator delete(*(v78 - 144));
  }

  if (*(v78 - 153) < 0)
  {
    operator delete(*(v78 - 176));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v78 - 185) < 0)
  {
    operator delete(*(v78 - 208));
  }

  if (*(v78 - 217) < 0)
  {
    operator delete(*(v78 - 240));
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,false>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 40);
  for (i = a1; ; *(i - 24) = v56)
  {
LABEL_2:
    a1 = i;
    v11 = a2 - i;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - i) >> 3);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(i, i + 40, a2 - 40, a3);
          return;
        case 4:
          std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(i, i + 40, i + 80, a3);
          if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a2 - 40, i + 80, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
          {
            v58 = *(i + 96);
            v153 = *(i + 80);
            v57 = v153;
            v154 = v58;
            v155 = *(i + 112);
            v59 = v155;
            v61 = *v9;
            v60 = *(a2 - 24);
            *(i + 112) = *(a2 - 8);
            *(i + 80) = v61;
            *(i + 96) = v60;
            *(a2 - 8) = v59;
            *v9 = v57;
            *(a2 - 24) = v58;
            if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, i + 80, i + 40, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
            {
              v62 = *(i + 72);
              v63 = *(i + 40);
              v64 = *(i + 96);
              *(i + 40) = *(i + 80);
              v65 = *(i + 56);
              *(i + 56) = v64;
              *(i + 72) = *(i + 112);
              *(i + 80) = v63;
              *(i + 96) = v65;
              *(i + 112) = v62;
              if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, i + 40, i, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
              {
                v66 = *i;
                v67 = *(i + 16);
                v155 = *(i + 32);
                v153 = v66;
                v154 = v67;
                v68 = *(i + 56);
                *i = *(i + 40);
                *(i + 16) = v68;
                *(i + 32) = *(i + 72);
                v69 = v154;
                *(i + 40) = v153;
                *(i + 56) = v69;
                *(i + 72) = v155;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(i, i + 40, i + 80, i + 120, a2 - 40, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v70 = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a2 - 40, i, **(a3 + 8), *(*(a3 + 8) + 8));
        if (v70 < 0)
        {
          v71 = *i;
          v72 = *(i + 16);
          v155 = *(i + 32);
          v153 = v71;
          v154 = v72;
          v73 = *v9;
          v74 = *(a2 - 24);
          *(i + 32) = *(a2 - 8);
          *i = v73;
          *(i + 16) = v74;
          v75 = v153;
          v76 = v154;
          *(a2 - 8) = v155;
          *v9 = v75;
          *(a2 - 24) = v76;
        }

        return;
      }
    }

    if (v11 <= 959)
    {
      break;
    }

    if (!a4)
    {
      if (i != a2)
      {
        v147 = a2 - i;
        v91 = v13 >> 1;
        v92 = v13 >> 1;
        do
        {
          v93 = v92;
          if (v91 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = a1 + 40 * v94;
            if (2 * v92 + 2 < v12 && morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a1 + 40 * v94, v95 + 40, **(a3 + 8), *(*(a3 + 8) + 8)) < 0)
            {
              v95 += 40;
              v94 = 2 * v93 + 2;
            }

            v96 = a1 + 40 * v93;
            if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v95, v96, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
            {
              v149 = v93;
              v97 = *v96;
              v98 = *(v96 + 16);
              v155 = *(v96 + 32);
              v153 = v97;
              v154 = v98;
              do
              {
                v99 = v95;
                v100 = *v95;
                v101 = *(v95 + 16);
                *(v96 + 32) = *(v95 + 32);
                *v96 = v100;
                *(v96 + 16) = v101;
                if (v91 < v94)
                {
                  break;
                }

                v102 = (2 * v94) | 1;
                v95 = a1 + 40 * v102;
                v103 = 2 * v94 + 2;
                if (v103 < v12 && morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a1 + 40 * v102, v95 + 40, **(a3 + 8), *(*(a3 + 8) + 8)) < 0)
                {
                  v95 += 40;
                  v102 = v103;
                }

                v96 = v99;
                v94 = v102;
              }

              while ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v95, &v153, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0);
              v104 = v153;
              v105 = v154;
              *(v99 + 32) = v155;
              *v99 = v104;
              *(v99 + 16) = v105;
              v93 = v149;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v106 = 0xCCCCCCCCCCCCCCCDLL * (v147 >> 3);
        do
        {
          v107 = 0;
          v108 = *a1;
          v109 = *(a1 + 16);
          v152 = *(a1 + 32);
          v150 = v108;
          v151 = v109;
          v110 = a1;
          do
          {
            v111 = v110 + 40 * v107;
            v112 = v111 + 40;
            v113 = (2 * v107) | 1;
            v114 = 2 * v107 + 2;
            if (v114 < v106)
            {
              v115 = v111 + 80;
              if (morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v111 + 40, v111 + 80, **(a3 + 8), *(*(a3 + 8) + 8)) < 0)
              {
                v112 = v115;
                v113 = v114;
              }
            }

            v116 = *v112;
            v117 = *(v112 + 16);
            *(v110 + 32) = *(v112 + 32);
            *v110 = v116;
            *(v110 + 16) = v117;
            v110 = v112;
            v107 = v113;
          }

          while (v113 <= ((v106 - 2) >> 1));
          a2 -= 40;
          if (v112 == a2)
          {
            v132 = v150;
            v133 = v151;
            *(v112 + 32) = v152;
            *v112 = v132;
            *(v112 + 16) = v133;
          }

          else
          {
            v118 = *a2;
            v119 = *(a2 + 16);
            *(v112 + 32) = *(a2 + 32);
            *v112 = v118;
            *(v112 + 16) = v119;
            v120 = v150;
            v121 = v151;
            *(a2 + 32) = v152;
            *a2 = v120;
            *(a2 + 16) = v121;
            v122 = v112 - a1 + 40;
            if (v122 >= 41)
            {
              v123 = (-2 - 0x3333333333333333 * (v122 >> 3)) >> 1;
              v124 = a1 + 40 * v123;
              if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v124, v112, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
              {
                v125 = *v112;
                v126 = *(v112 + 16);
                v155 = *(v112 + 32);
                v153 = v125;
                v154 = v126;
                do
                {
                  v127 = v124;
                  v128 = *v124;
                  v129 = *(v124 + 16);
                  *(v112 + 32) = *(v124 + 32);
                  *v112 = v128;
                  *(v112 + 16) = v129;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = a1 + 40 * v123;
                  v112 = v127;
                }

                while ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v124, &v153, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0);
                v130 = v153;
                v131 = v154;
                *(v127 + 32) = v155;
                *v127 = v130;
                *(v127 + 16) = v131;
              }
            }
          }
        }

        while (v106-- > 2);
      }

      return;
    }

    v14 = v12 >> 1;
    v15 = i + 40 * v14;
    if (v11 < 0x1401)
    {
      std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(i + 40 * v14, i, a2 - 40, a3);
    }

    else
    {
      std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(i, i + 40 * v14, a2 - 40, a3);
      v16 = 5 * v14;
      v17 = a1 + 40 * v14 - 40;
      std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1 + 40, v17, a2 - 80, a3);
      std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1 + 80, a1 + 40 + 8 * v16, a2 - 120, a3);
      std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(v17, v15, a1 + 40 + 8 * v16, a3);
      v18 = *a1;
      v19 = *(a1 + 16);
      v155 = *(a1 + 32);
      v153 = v18;
      v154 = v19;
      v20 = *v15;
      v21 = *(v15 + 16);
      *(a1 + 32) = *(v15 + 32);
      *a1 = v20;
      *(a1 + 16) = v21;
      v22 = v153;
      v23 = v154;
      *(v15 + 32) = v155;
      *v15 = v22;
      *(v15 + 16) = v23;
    }

    --a4;
    if ((a5 & 1) != 0 || (morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a1 - 40, a1, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
    {
      v24 = *a1;
      v25 = *(a1 + 16);
      v152 = *(a1 + 32);
      v150 = v24;
      v151 = v25;
      v26 = a1;
      do
      {
        v26 += 40;
        if (v26 == a2)
        {
          goto LABEL_136;
        }
      }

      while ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v26, &v150, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0);
      v27 = v26 - 40;
      v28 = a2;
      if (v26 - 40 != a1)
      {
        while (v28 != a1)
        {
          v28 -= 40;
          if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v28, &v150, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_136;
      }

      v28 = a2;
      do
      {
        if (v26 >= v28)
        {
          break;
        }

        v28 -= 40;
      }

      while ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v28, &v150, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0);
LABEL_26:
      if (v26 < v28)
      {
        v29 = v26;
        v30 = v28;
LABEL_28:
        v32 = *(v29 + 16);
        v153 = *v29;
        v31 = v153;
        v154 = v32;
        v155 = *(v29 + 32);
        v33 = v155;
        v35 = *v30;
        v34 = *(v30 + 16);
        *(v29 + 32) = *(v30 + 32);
        *v29 = v35;
        *(v29 + 16) = v34;
        *(v30 + 32) = v33;
        *v30 = v31;
        *(v30 + 16) = v32;
        while (1)
        {
          v29 += 40;
          if (v29 == a2)
          {
            goto LABEL_136;
          }

          if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v29, &v150, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
          {
            v27 = v29 - 40;
            while (v30 != a1)
            {
              v30 -= 40;
              if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v30, &v150, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
              {
                if (v29 < v30)
                {
                  goto LABEL_28;
                }

                goto LABEL_35;
              }
            }

            goto LABEL_136;
          }
        }
      }

LABEL_35:
      if (v27 != a1)
      {
        v36 = *v27;
        v37 = *(v27 + 16);
        *(a1 + 32) = *(v27 + 32);
        *a1 = v36;
        *(a1 + 16) = v37;
      }

      v38 = v150;
      v39 = v151;
      *(v27 + 32) = v152;
      *v27 = v38;
      *(v27 + 16) = v39;
      if (v26 < v28)
      {
LABEL_40:
        std::__introsort<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,false>(a1, v27, a3, a4, a5 & 1);
        a5 = 0;
        i = v27 + 40;
        goto LABEL_2;
      }

      v40 = std::__insertion_sort_incomplete[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *>(a1, v27, a3);
      i = v27 + 40;
      if (!std::__insertion_sort_incomplete[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *>(v27 + 40, a2, a3))
      {
        if (v40)
        {
          goto LABEL_2;
        }

        goto LABEL_40;
      }

      a2 = v27;
      if (v40)
      {
        return;
      }

      goto LABEL_1;
    }

    v41 = *a1;
    v42 = *(a1 + 16);
    v152 = *(a1 + 32);
    v150 = v41;
    v151 = v42;
    if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, a2 - 40, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
    {
      i = a1;
      while (1)
      {
        i += 40;
        if (i == a2)
        {
          goto LABEL_136;
        }

        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, i, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    v43 = a1 + 40;
    do
    {
      i = v43;
      if (v43 >= a2)
      {
        break;
      }

      v44 = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, v43, **(a3 + 8), *(*(a3 + 8) + 8));
      v43 = i + 40;
    }

    while ((v44 & 0x80000000) == 0);
LABEL_49:
    v45 = a2;
    if (i < a2)
    {
      v45 = a2;
      while (v45 != a1)
      {
        v45 -= 40;
        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, v45, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_136;
    }

LABEL_59:
    if (i < v45)
    {
      v46 = *i;
      v47 = *(i + 16);
      v155 = *(i + 32);
      v153 = v46;
      v154 = v47;
      v48 = *v45;
      v49 = *(v45 + 16);
      *(i + 32) = *(v45 + 32);
      *i = v48;
      *(i + 16) = v49;
      v50 = v153;
      v51 = v154;
      *(v45 + 32) = v155;
      *v45 = v50;
      *(v45 + 16) = v51;
      while (1)
      {
        i += 40;
        if (i == a2)
        {
          goto LABEL_136;
        }

        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, i, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
        {
          while (v45 != a1)
          {
            v45 -= 40;
            if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v150, v45, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_136;
        }
      }
    }

    v52 = (i - 40);
    if (i - 40 != a1)
    {
      v53 = *v52;
      v54 = *(i - 24);
      *(a1 + 32) = *(i - 8);
      *a1 = v53;
      *(a1 + 16) = v54;
    }

    a5 = 0;
    v55 = v150;
    v56 = v151;
    *(i - 8) = v152;
    *v52 = v55;
  }

  v77 = i + 40;
  v79 = i == a2 || v77 == a2;
  if ((a5 & 1) == 0)
  {
    if (v79)
    {
      return;
    }

    v135 = 0;
    v136 = -40;
    v137 = 40;
    while (1)
    {
      v138 = v135;
      v135 = v137;
      if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v77, i + v138, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
      {
        break;
      }

LABEL_134:
      v137 = v135 + 40;
      v77 += 40;
      v136 -= 40;
      if (v77 == a2)
      {
        return;
      }
    }

    v139 = *v77;
    v140 = *(v77 + 16);
    v155 = *(v77 + 32);
    v153 = v139;
    v154 = v140;
    v141 = v136;
    v142 = v77;
    while (1)
    {
      v143 = *(v142 - 24);
      *v142 = *(v142 - 40);
      *(v142 + 16) = v143;
      *(v142 + 32) = *(v142 - 8);
      if (!v141)
      {
        break;
      }

      v144 = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v153, v142 - 80, **(a3 + 8), *(*(a3 + 8) + 8));
      v142 -= 40;
      v141 += 40;
      if ((v144 & 0x80000000) == 0)
      {
        v145 = v153;
        v146 = v154;
        *(v142 + 32) = v155;
        *v142 = v145;
        *(v142 + 16) = v146;
        goto LABEL_134;
      }
    }

LABEL_136:
    __break(1u);
    return;
  }

  if (!v79)
  {
    v80 = 0;
    v81 = i;
    do
    {
      v82 = v81;
      v81 = v77;
      if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v77, v82, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
      {
        v83 = *v77;
        v84 = *(v77 + 16);
        v155 = *(v77 + 32);
        v153 = v83;
        v154 = v84;
        v85 = v80;
        while (1)
        {
          v86 = i + v85;
          v87 = *(i + v85 + 16);
          *(v86 + 40) = *(i + v85);
          *(v86 + 56) = v87;
          *(v86 + 72) = *(i + v85 + 32);
          if (!v85)
          {
            break;
          }

          v85 -= 40;
          if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v153, v85 + i, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
          {
            v88 = i + v85 + 40;
            goto LABEL_92;
          }
        }

        v88 = i;
LABEL_92:
        v89 = v153;
        v90 = v154;
        *(v88 + 32) = v155;
        *v88 = v89;
        *(v88 + 16) = v90;
      }

      v77 = v81 + 40;
      v80 += 40;
    }

    while (v81 + 40 != a2);
  }
}

uint64_t morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a2;
  v8 = *a3;
  if (a4 != a5)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = *v10++;
      v9 = ((v11 & v7) != 0) | (2 * v9);
    }

    while (v10 != a5);
    v12 = 0;
    do
    {
      v13 = *a4++;
      v12 = ((v13 & v8) != 0) | (2 * v12);
    }

    while (a4 != a5);
    if (v9 != v12)
    {
      if (v9 > v12)
      {
        LOBYTE(v14) = -1;
      }

      else
      {
        LOBYTE(v14) = 1;
      }

      return v14;
    }
  }

  v14 = morphun::analysis::MorphologicalAnalyzer::compareGrammemes(*(a1 + 176), *(a1 + 184), v7, v8);
  if (v14)
  {
    return v14;
  }

  if (*(a2 + 32) != 1)
  {
    LOBYTE(v14) = 1;
    return v14;
  }

  if (*(a3 + 32) != 1)
  {
    LOBYTE(v14) = -1;
    return v14;
  }

  v15 = vcnt_s8(v7);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  v17 = vcnt_s8(v8);
  v17.i16[0] = vaddlv_u8(v17);
  if (v16 != v17.u32[0])
  {
    if (v16 < v17.u32[0])
    {
      LOBYTE(v14) = -1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    return v14;
  }

  result = npc<morphun::dictionary::Inflector_InflectionPattern const>(*(a2 + 8));
  if (*(a3 + 32))
  {
    v19 = *(result + 18);
    v20 = *(result + 18);
    v21 = *(npc<morphun::dictionary::Inflector_InflectionPattern const>(*(a3 + 8)) + 18);
    if (v19 < v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (v20 == v21)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      LOBYTE(v14) = v22;
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a4, a2, a1, **(a4 + 8), *(*(a4 + 8) + 8));
  result = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a4, a3, a2, **(a4 + 8), *(*(a4 + 8) + 8));
  if (v8 < 0)
  {
    if ((result & 0x80000000) != 0)
    {
      v25 = *a1;
      v26 = *(a1 + 16);
      v27 = *(a1 + 32);
      v30 = *(a3 + 32);
      v31 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 16);
      v22 = *(a1 + 32);
      v23 = *(a2 + 32);
      v24 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v24;
      *(a1 + 32) = v23;
      *(a2 + 32) = v22;
      *a2 = v20;
      *(a2 + 16) = v21;
      result = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a4, a3, a2, **(a4 + 8), *(*(a4 + 8) + 8));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v25 = *a2;
      v26 = *(a2 + 16);
      v27 = *(a2 + 32);
      v28 = *(a3 + 32);
      v29 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v29;
      *(a2 + 32) = v28;
    }

    *(a3 + 32) = v27;
    *a3 = v25;
    *(a3 + 16) = v26;
  }

  else if ((result & 0x80000000) != 0)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a3 + 32);
    v14 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v14;
    *(a2 + 32) = v13;
    *(a3 + 32) = v12;
    *a3 = v10;
    *(a3 + 16) = v11;
    result = morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a4, a2, a1, **(a4 + 8), *(*(a4 + 8) + 8));
    if ((result & 0x80000000) != 0)
    {
      v15 = *a1;
      v16 = *(a1 + 16);
      v17 = *(a1 + 32);
      v18 = *(a2 + 32);
      v19 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      *(a2 + 32) = v17;
      *a2 = v15;
      *(a2 + 16) = v16;
    }
  }

  return result;
}

__n128 std::__sort5[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1, a2, a3, a6);
  if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a4, a3, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
  {
    v12 = *a3;
    v13 = *(a3 + 16);
    v14 = *(a3 + 32);
    v15 = *(a4 + 32);
    v16 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    *(a4 + 32) = v14;
    *a4 = v12;
    *(a4 + 16) = v13;
    if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a3, a2, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
    {
      v17 = *a2;
      v18 = *(a2 + 16);
      v19 = *(a2 + 32);
      v20 = *(a3 + 32);
      v21 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v21;
      *(a2 + 32) = v20;
      *(a3 + 32) = v19;
      *a3 = v17;
      *(a3 + 16) = v18;
      if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a2, a1, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
      {
        v22 = *a1;
        v23 = *(a1 + 16);
        v24 = *(a1 + 32);
        v25 = *(a2 + 32);
        v26 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v26;
        *(a1 + 32) = v25;
        *(a2 + 32) = v24;
        *a2 = v22;
        *(a2 + 16) = v23;
      }
    }
  }

  if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a5, a4, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
  {
    v28 = *a4;
    v29 = *(a4 + 16);
    v30 = *(a4 + 32);
    v31 = *(a5 + 32);
    v32 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v32;
    *(a4 + 32) = v31;
    *(a5 + 32) = v30;
    *a5 = v28;
    *(a5 + 16) = v29;
    if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a4, a3, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
    {
      v33 = *a3;
      v34 = *(a3 + 16);
      v35 = *(a3 + 32);
      v36 = *(a4 + 32);
      v37 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v37;
      *(a3 + 32) = v36;
      *(a4 + 32) = v35;
      *a4 = v33;
      *(a4 + 16) = v34;
      if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a3, a2, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
      {
        v38 = *a2;
        v39 = *(a2 + 16);
        v40 = *(a2 + 32);
        v41 = *(a3 + 32);
        v42 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v42;
        *(a2 + 32) = v41;
        *(a3 + 32) = v40;
        *a3 = v38;
        *(a3 + 16) = v39;
        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a6, a2, a1, **(a6 + 8), *(*(a6 + 8) + 8)) & 0x80000000) != 0)
        {
          result = *a1;
          v43 = *(a1 + 16);
          v44 = *(a1 + 32);
          v45 = *(a2 + 32);
          v46 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v46;
          *(a1 + 32) = v45;
          *(a2 + 32) = v44;
          *a2 = result;
          *(a2 + 16) = v43;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1, a1 + 40, a2 - 40, a3);
        break;
      case 4:
        v24 = a2 - 40;
        std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1, a1 + 40, a1 + 80, a3);
        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v24, a1 + 80, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
        {
          v25 = *(a1 + 80);
          v26 = *(a1 + 96);
          v27 = *(a1 + 112);
          v28 = *(v24 + 32);
          v29 = *(v24 + 16);
          *(a1 + 80) = *v24;
          *(a1 + 96) = v29;
          *(a1 + 112) = v28;
          *(v24 + 32) = v27;
          *v24 = v25;
          *(v24 + 16) = v26;
          if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a1 + 80, a1 + 40, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
          {
            v30 = *(a1 + 72);
            v31 = *(a1 + 40);
            v32 = *(a1 + 96);
            *(a1 + 40) = *(a1 + 80);
            v33 = *(a1 + 56);
            *(a1 + 56) = v32;
            *(a1 + 72) = *(a1 + 112);
            *(a1 + 80) = v31;
            *(a1 + 96) = v33;
            *(a1 + 112) = v30;
            if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a1 + 40, a1, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
            {
              v34 = *(a1 + 32);
              v36 = *a1;
              v35 = *(a1 + 16);
              v37 = *(a1 + 56);
              *a1 = *(a1 + 40);
              *(a1 + 16) = v37;
              *(a1 + 32) = *(a1 + 72);
              *(a1 + 40) = v36;
              *(a1 + 56) = v35;
              result = 1;
              *(a1 + 72) = v34;
              return result;
            }
          }
        }

        break;
      case 5:
        std::__sort5[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 40;
    if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, a2 - 40, a1, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
    {
      v8 = *a1;
      v9 = *(a1 + 16);
      v10 = *(a1 + 32);
      v11 = *(v7 + 32);
      v12 = *(v7 + 16);
      *a1 = *v7;
      *(a1 + 16) = v12;
      *(a1 + 32) = v11;
      *(v7 + 32) = v10;
      result = 1;
      *v7 = v8;
      *(v7 + 16) = v9;
      return result;
    }

    return 1;
  }

LABEL_11:
  v14 = a1 + 80;
  std::__sort3[abi:se200100]<std::_RangeAlgPolicy,morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(std::u16string_view,long long,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>> const&)::$_0 &,morphun::analysis::DictionaryExposableMorphology::InflectionGrammemes *,0>(a1, a1 + 40, a1 + 80, a3);
  v15 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, v15, v14, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) != 0)
    {
      v18 = *(v15 + 16);
      v38 = *v15;
      v39 = v18;
      v40 = *(v15 + 32);
      v19 = v16;
      while (1)
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 96);
        *(v20 + 120) = *(a1 + v19 + 80);
        *(v20 + 136) = v21;
        *(v20 + 152) = *(a1 + v19 + 112);
        if (v19 == -80)
        {
          break;
        }

        v19 -= 40;
        if ((morphun::dialog::DictionaryLookupInflector::compareInflectionGrammemes(*a3, &v38, v20 + 40, **(a3 + 8), *(*(a3 + 8) + 8)) & 0x80000000) == 0)
        {
          v22 = a1 + v19 + 120;
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      v23 = v39;
      *v22 = v38;
      *(v22 + 16) = v23;
      *(v22 + 32) = v40;
      if (++v17 == 8)
      {
        return v15 + 40 == a2;
      }
    }

    v14 = v15;
    v16 += 40;
    v15 += 40;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

void morphun::dialog::DictionaryLookupInflector::inflectImplementation(uint64_t a1, uint64_t *a2, std::basic_string<char16_t> *__src, unint64_t a4, uint64_t a5, std::basic_string<char16_t> *a6, std::basic_string<char16_t> *a7, std::basic_string<char16_t> *a8)
{
  if (morphun::util::gLogLevel <= 0)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "D");
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }
  }

  for (i = a6->__r_.__value_.__r.__words[0]; ; i += 24)
  {
    if (i == a6->__r_.__value_.__l.__size_)
    {
      if (a4 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_61;
      }

      if (a4 > 0xA)
      {
        if ((a4 | 3) == 0xB)
        {
          v18 = 13;
        }

        else
        {
          v18 = (a4 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v18);
      }

      HIBYTE(v35) = a4;
      v19 = (__p + 2 * a4);
      if (__p > __src || v19 <= __src)
      {
        if (a4)
        {
          memmove(__p, __src, 2 * a4);
        }

        v19->__r_.__value_.__s.__data_[0] = 0;
        *a1 = *__p;
        *(a1 + 16) = v35;
        *(a1 + 24) = 1;
        return;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    v17 = *(i + 23);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(i + 8);
    }

    if (v17)
    {
      break;
    }
  }

  isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(__src, a4);
  if ((isAllUpperCase & 1) == 0)
  {
    morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(a1, a2, __src, a4, a5, a6, a7, a8);
    if (*(a1 + 24))
    {
      return;
    }
  }

  morphun::util::ULocale::ULocale(__p, (a2 + 3));
  v31 = 0;
  v32 = 0;
  v33 = 0;
  morphun::util::StringViewUtils::lowercase(&v31, __src, a4, __p);
  if (v33 >= 0)
  {
    v21 = &v31;
  }

  else
  {
    v21 = v31;
  }

  if (v33 >= 0)
  {
    v22 = HIBYTE(v33);
  }

  else
  {
    v22 = v32;
  }

  morphun::dialog::DictionaryLookupInflector::inflectWordImplementation(&v29, a2, v21, v22, a5, a6, a7, a8);
  if (v30 != 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_56;
  }

  if (isAllUpperCase)
  {
    memset(&v28, 0, sizeof(v28));
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v29.__r_.__value_.__r.__words[1];
    }

    morphun::util::StringViewUtils::uppercase(&v28, v23, v24, __p);
    std::optional<std::basic_string<char16_t>>::operator=[abi:se200100]<std::basic_string<char16_t> const&,void>(&v29, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_54;
  }

  v25 = morphun::util::StringViewUtils::codePointAt(__src, a4, 0);
  if (!u_isupper(v25))
  {
    goto LABEL_54;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_60;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v29;
  }

  else
  {
    v26 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  morphun::util::StringViewUtils::capitalizeFirst(v26, size, __p, &v28);
  if (v30 == 1)
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v29 = v28;
  }

  else
  {
    v29 = v28;
    v30 = 1;
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 24) = 0;
  if (v30)
  {
    *a1 = v29;
    memset(&v29, 0, sizeof(v29));
    *(a1 + 24) = 1;
  }

LABEL_56:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void sub_1BE6733A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1BE673410(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1BE673408);
}

void morphun::dialog::DictionaryLookupInflector::inflect(uint64_t a1, uint64_t *a2, std::basic_string<char16_t> *a3, unint64_t a4, uint64_t a5, std::basic_string<char16_t> *a6, std::basic_string<char16_t> *a7)
{
  memset(&v7, 0, sizeof(v7));
  morphun::dialog::DictionaryLookupInflector::inflectImplementation(a1, a2, a3, a4, a5, a6, &v7, a7);
  v8 = &v7;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v8);
}

void sub_1BE673470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a12);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_WithConditionalHyphen::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 24))(a2);
  v3 = morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(v2);
  v4 = morphun::lang::StringFilterUtil::HEBREW_SCRIPT(v3);
  memset(v5, 0, 24);
  morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(v2, v3, v4, v5);
  operator new();
}

void sub_1BE6735B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v22, v21);
  _Unwind_Resume(a1);
}

void *mddmd_getCombinedBinaryType(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  npc<morphun::dictionary::DictionaryMetaData const>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a3);
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

  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return CombinedBinaryType;
}

void sub_1BE6736C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v18, v15, v19);
    __cxa_end_catch();
    JUMPOUT(0x1BE6736A4);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef mddmd_createPropertyNames(uint64_t a1, unint64_t a2)
{
  v3 = npc<morphun::dictionary::DictionaryMetaData const>(a1);
  v4 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(v3 + 8));
  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(v4, a2, v9);
  if (v9[0] != v9[1])
  {
    v5 = *(v9[0] + 23);
    if (v5 < 0)
    {
      v6 = *v9[0];
      v5 = *(v9[0] + 8);
    }

    else
    {
      v6 = v9[0];
    }

    CFStringCreateWithCharacters(0, v6, v5);
    operator new();
  }

  v7 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  v10 = v9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v10);
  return v7;
}

void sub_1BE673950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception *a10, char a11, uint64_t a12, uint64_t a13, char *a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  a14 = &a11;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v17, a10, v18);
    __cxa_end_catch();
    JUMPOUT(0x1BE67391CLL);
  }

  _Unwind_Resume(a1);
}

CFStringRef mddmd_createPropertyName(uint64_t a1, uint64_t a2)
{
  v3 = npc<morphun::dictionary::DictionaryMetaData const>(a1);
  morphun::dictionary::DictionaryMetaData::getPropertyName(v3, a2, __p);
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = CFStringCreateWithCharacters(0, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1BE673A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v18, v15, v19);
    __cxa_end_catch();
    JUMPOUT(0x1BE673A30);
  }

  _Unwind_Resume(exception_object);
}

BOOL mddmd_isKnownWord(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dictionary::DictionaryMetaData const>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
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

  v9 = 0;
  v6 = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, &v9, p_p, size) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1BE673B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v17, v14, v18);
    __cxa_end_catch();
    JUMPOUT(0x1BE673B1CLL);
  }

  _Unwind_Resume(exception_object);
}

void mddmd_getBinaryProperties(uint64_t a1, const __CFArray *a2)
{
  npc<morphun::dictionary::DictionaryMetaData const>(a1);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (CFArrayGetCount(a2) < 1)
  {
    morphun::dictionary::DictionaryMetaData::getBinaryProperties(a1, &v7);
    v11[0] = &v7;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](v11);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    morphun::util::CFUtils::to_u16string(&__p, ValueAtIndex);
    v4 = 1 - 0x5555555555555555 * ((v8 - v7) >> 3);
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    if (0x5555555555555556 * ((v9 - v7) >> 3) > v4)
    {
      v4 = 0x5555555555555556 * ((v9 - v7) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 3) >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v4;
    }

    v11[4] = &v7;
    if (v5)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v5);
    }

    __break(1u);
  }
}

void sub_1BE673D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a21);
  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v23, a10, v24);
    __cxa_end_catch();
    JUMPOUT(0x1BE673D28);
  }

  _Unwind_Resume(a1);
}

uint64_t mddmd_getDictionary(__CFLocale *a1)
{
  morphun::util::CFUtils::convert(v4, a1);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(v4, v1);
  npc<morphun::dictionary::DictionaryMetaData const>(Dictionary);
  return Dictionary;
}

void sub_1BE673E48(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE673E30);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::TrGrammarSynthesizer_DeConjunctionArticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  memset(&v10, 0, sizeof(v10));
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(v3 + 23);
    if (v5 >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *v3;
    }

    if (v5 >= 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = *(v3 + 8);
    }

    if (morphun::grammar::synthesis::TrGrammarSynthesizer_TrDisplayFunction::getVowelGroup(v4, v6, v7) >= 2)
    {
      v8 = " ";
    }

    else
    {
      v8 = " ";
    }

    std::basic_string<char16_t>::append(&v10, v8, 3uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void sub_1BE673FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::~NlGrammarSynthesizer_NlNounInflectionPattern(morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern *this)
{
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::~NlGrammarSynthesizer_NlNounInflectionPattern(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4410;
  std::__tree<std::u16string_view>::destroy(*(this + 19));
  std::__tree<std::u16string_view>::destroy(*(this + 16));
  std::__tree<std::u16string_view>::destroy(*(this + 13));
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getGrammaticalNumber(uint64_t a1, uint64_t a2)
{
  morphun::grammar::synthesis::getFeatureValue(&__p, a2, a1);
  Number = morphun::grammar::synthesis::NlGrammarSynthesizer::getNumber(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Number;
}

void sub_1BE6741D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getDeclension(uint64_t a1, uint64_t a2)
{
  morphun::grammar::synthesis::getFeatureValue(&__p, a2, a1);
  Declension = morphun::grammar::synthesis::NlGrammarSynthesizer::getDeclension(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Declension;
}

void sub_1BE67423C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::inflect(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  morphun::grammar::synthesis::getFeatureValue(&__p, a5, a2[3]);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_35;
  }

  v12 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v10);
  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  v14 = *(v12 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v12 + 8);
  }

  if (v13 != v14)
  {
    goto LABEL_34;
  }

  if (v13)
  {
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *v12;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (*v16 == p_p->__r_.__value_.__s.__data_[0])
    {
      p_p = (p_p + 2);
      ++v16;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

LABEL_34:
    morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v12);
    goto LABEL_35;
  }

LABEL_17:
  v18 = *(a3 + 23);
  v19 = v18;
  v20 = *a3;
  v21 = *(a3 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if ((v18 & 0x80u) == 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  if (a2 + 16 != std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>((a2 + 15), v22, v23))
  {
    if (!morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getGrammaticalNumber(a2[2], a5))
    {
LABEL_35:
      v26 = 0;
      goto LABEL_36;
    }

    v18 = *(a3 + 23);
    v20 = *a3;
    v21 = *(a3 + 8);
    v19 = *(a3 + 23);
  }

  if (v19 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = v20;
  }

  if (v19 >= 0)
  {
    v25 = v18;
  }

  else
  {
    v25 = v21;
  }

  v26 = a2 + 19 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>((a2 + 18), v24, v25) || morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getDeclension(a2[4], a5) != 0;
LABEL_36:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v26)
    {
      goto LABEL_38;
    }

LABEL_49:
    morphun::grammar::synthesis::getFeatureValue(&v97, a5, a2[5]);
    GrammaticalNumber = morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getGrammaticalNumber(a2[2], a5);
    v37 = GrammaticalNumber;
    if (GrammaticalNumber && (a2[7] & ~a4) == 0)
    {
      v38 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v97.__r_.__value_.__l.__size_;
      }

      if (!v38)
      {
        goto LABEL_67;
      }

      v39 = morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(GrammaticalNumber);
      v40 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v97.__r_.__value_.__l.__size_;
      }

      v41 = *(v39 + 23);
      v42 = v41;
      if ((v41 & 0x80u) != 0)
      {
        v41 = *(v39 + 8);
      }

      if (v40 == v41)
      {
        if (v40)
        {
          if (v42 >= 0)
          {
            v43 = v39;
          }

          else
          {
            v43 = *v39;
          }

          v44 = &v97;
          if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v97.__r_.__value_.__r.__words[0];
          }

          while (*v43 == v44->__r_.__value_.__s.__data_[0])
          {
            v44 = (v44 + 2);
            ++v43;
            if (!--v40)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_70;
        }

LABEL_67:
        if (*(a5 + 16) != 1 || (v37 != 1 ? (v45 = a2[9]) : (v45 = a2[8]), (v45 & ~a4) != 0))
        {
          v95 = 0uLL;
          v96 = 0;
          v53 = *(a3 + 23);
          if (v53 >= 0)
          {
            v54 = a3;
          }

          else
          {
            v54 = *a3;
          }

          if (v53 >= 0)
          {
            v55 = *(a3 + 23);
          }

          else
          {
            v55 = *(a3 + 8);
          }

          morphun::dictionary::Inflector::getInflectionPatternsForWord(a2[1], v54, v55, &v95);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v56 = *(&v95 + 1);
          v57 = v95;
          if (v95 != *(&v95 + 1))
          {
            v58 = 9;
            if (v37 == 1)
            {
              v58 = 8;
            }

            v59 = a2[v58];
            do
            {
              if ((a2[7] & v57[1]) != 0)
              {
                v60 = *(a3 + 23);
                if (v60 >= 0)
                {
                  v61 = a3;
                }

                else
                {
                  v61 = *a3;
                }

                if (v60 >= 0)
                {
                  v62 = *(a3 + 23);
                }

                else
                {
                  v62 = *(a3 + 8);
                }

                memset(&__p, 0, sizeof(__p));
                morphun::dictionary::Inflector_InflectionPattern::reinflectImplementation(&__dst, v57, a4, v59, &__p, v61, v62);
                if (*(a1 + 23) < 0)
                {
                  operator delete(*a1);
                }

                *a1 = *&__dst.__r_.__value_.__l.__data_;
                v63 = __dst.__r_.__value_.__r.__words[2];
                *(a1 + 16) = *(&__dst.__r_.__value_.__l + 2);
                v64 = HIBYTE(v63);
                if ((v64 & 0x80u) != 0)
                {
                  v64 = *(a1 + 8);
                }

                if (v64)
                {
                  break;
                }
              }

              v57 += 5;
            }

            while (v57 != v56);
            v57 = v95;
          }

          if (v57)
          {
            operator delete(v57);
          }
        }

        else if (*(a3 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
        }

        else
        {
          *a1 = *a3;
          *(a1 + 16) = *(a3 + 16);
        }

        goto LABEL_71;
      }
    }

LABEL_70:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_71:
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v26)
  {
    goto LABEL_49;
  }

LABEL_38:
  v27 = *(a3 + 23);
  v28 = v27;
  v29 = *a3;
  v30 = *(a3 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v31 = a3;
  }

  else
  {
    v31 = *a3;
  }

  if ((v27 & 0x80u) == 0)
  {
    v32 = *(a3 + 23);
  }

  else
  {
    v32 = *(a3 + 8);
  }

  v33 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>((a2 + 12), v31, v32);
  if (a2 + 13 != v33)
  {
    v34 = *(v33 + 56);
    if (v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_197;
    }

    v35 = *(v33 + 48);
    if (v34 > 0xA)
    {
      if ((v34 | 3) == 0xB)
      {
        v48 = 13;
      }

      else
      {
        v48 = (v34 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v48);
    }

    *(a1 + 23) = v34;
    v49 = (a1 + 2 * v34);
    if (a1 > v35 || v49 <= v35)
    {
      if (v34)
      {
        memmove(a1, v35, 2 * v34);
      }

      *v49 = 0;
      return;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a2 + 16 != std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>((a2 + 15), v31, v32))
  {
    v46 = morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getGrammaticalNumber(a2[2], a5);
    if (v46 == 2)
    {
      v47 = "h";
      goto LABEL_130;
    }

    if (v46 == 1)
    {
      v47 = L"haar";
LABEL_130:
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a1, v47);
      return;
    }

    goto LABEL_98;
  }

  v51 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>((a2 + 18), v31, v32);
  if (a2 + 19 != v51)
  {
    Declension = morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getDeclension(a2[4], a5);
    if (Declension == 1)
    {
      v47 = "o";
      goto LABEL_130;
    }

    if (Declension == 2)
    {
      v47 = "o";
      goto LABEL_130;
    }

LABEL_98:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  if (v32 < 3)
  {
    goto LABEL_98;
  }

  if (v27 < 0)
  {
    if (v30 <= 2)
    {
      goto LABEL_171;
    }

    v27 = v30;
  }

  else
  {
    if (v27 <= 2)
    {
      goto LABEL_171;
    }

    v29 = a3;
  }

  memset(&__p, 0, sizeof(__p));
  v65 = morphun::util::LocaleUtils::DUTCH(v51);
  morphun::util::StringViewUtils::lowercase(&__p, v29, v27, v65);
  v67 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v67 = __p.__r_.__value_.__l.__size_;
  }

  v68 = v67 - 1;
  if (v67 <= 1)
  {
    goto LABEL_196;
  }

  v69 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = &__p;
  }

  v70 = a2[11];
  if (!v70)
  {
LABEL_164:
    v81 = 0;
    goto LABEL_165;
  }

  v71 = v69 + 2 * v67;
  v72 = *(v71 - 2);
  v73 = *(v71 - 1);
  v74 = a2[10];
  v75 = v74;
  v76 = &v74[v70];
  v77 = 2 * v70;
  v78 = v77;
  v79 = v74;
  while (*v79 != v72)
  {
    ++v79;
    v78 -= 2;
    if (!v78)
    {
      v79 = v76;
      break;
    }
  }

  if (v79 == v76)
  {
    v80 = 0;
  }

  else
  {
    v80 = v79;
  }

  if (v79 != v76 && v80 - v74 != -2 && v73 == 115)
  {
    LOBYTE(v27) = 1;
    v81 = 1;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  while (*v75 != v73)
  {
    ++v75;
    v77 -= 2;
    if (!v77)
    {
      goto LABEL_164;
    }
  }

  v81 = 0;
  if (v75 == v76)
  {
    v82 = 0;
  }

  else
  {
    v82 = v75;
  }

  if (v75 != v76)
  {
    if (v82 - v74 != -2)
    {
      std::basic_string<char16_t>::basic_string(&v97, &__p, 0, v68, v66);
      LOBYTE(v27) = morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::endsWithDutchSSound(&v97);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v81 = 1;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_166;
      }

      goto LABEL_167;
    }

LABEL_165:
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_166:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_167:
  v28 = *(a3 + 23);
  if (v81)
  {
    v83 = v28 < 0;
    if (v27)
    {
      if (v28 < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
      }

      else
      {
        *a1 = *a3;
        *(a1 + 16) = *(a3 + 16);
      }

      return;
    }

    goto LABEL_172;
  }

LABEL_171:
  v83 = v28 < 0;
LABEL_172:
  v84 = *(a3 + 8);
  if (!v83)
  {
    v84 = v28;
  }

  if (!v84)
  {
    goto LABEL_196;
  }

  if (v83)
  {
    v85 = *a3;
  }

  else
  {
    v85 = a3;
  }

  v86 = a2[11];
  if (!v86)
  {
    goto LABEL_189;
  }

  v87 = v85[v84 - 1];
  v88 = a2[10];
  v89 = &v88[v86];
  v90 = 2 * v86;
  v91 = v88;
  while (*v91 != v87)
  {
    ++v91;
    v90 -= 2;
    if (!v90)
    {
      goto LABEL_189;
    }
  }

  v92 = v91 == v89 ? 0 : v91;
  if (v91 == v89 || v92 - v88 == -2)
  {
LABEL_189:
    if (morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::endsWithDutchSSound(a3))
    {
      v93 = L"'";
    }

    else
    {
      v93 = L"'s";
    }
  }

  else
  {
    v93 = word_1BE80EB90;
  }

  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, a3, v93);
}

void sub_1BE6749F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::endsWithDutchSSound(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v2 = *(a1 + 23);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = morphun::util::LocaleUtils::DUTCH(a1);
  if ((v2 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = v3;
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  morphun::util::StringViewUtils::lowercase(__p, v6, v7, v5);
  if (std::basic_string<char16_t>::ends_with[abi:se200100](__p, word_1BE80EB90) & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](__p, "z") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](__p, L"sch") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](__p, L"x"))
  {
    v8 = 1;
  }

  else
  {
    v8 = std::basic_string<char16_t>::ends_with[abi:se200100](__p, L"sh");
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_1BE674B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::filter::DiacriticFilter::~DiacriticFilter(morphun::analysis::filter::DiacriticFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA528);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA528);
}

void morphun::grammar::synthesis::NbGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::NbGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE676088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  __cxa_free_exception(v44);
  MEMORY[0x1BFB49160](v42, v43);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Count>>(morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v4 + 32), a1);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v3 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, (v6 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v6 = v3;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Count>>(morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    result = *(v6 + 56);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE676748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[16 * a3];
    while (1)
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 != v4)
      {
        v9 = a1[1];
        v10 = v4;
        if (v7)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 16, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 16;
      if (v5 == v6)
      {
        return a1;
      }
    }

    for (; v7; v7 = v7[1])
    {
      while (1)
      {
        v12 = v7;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v5, v7 + 16) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_1BE676988(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v4 + 32), a1);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v3 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, (v6 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v6 = v3;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    result = *(v6 + 56);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE676C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a9)
    {
      MEMORY[0x1BFB49160](v9, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[16 * a3];
    while (1)
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 != v4)
      {
        v9 = a1[1];
        v10 = v4;
        if (v7)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 16, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 16;
      if (v5 == v6)
      {
        return a1;
      }
    }

    for (; v7; v7 = v7[1])
    {
      while (1)
      {
        v12 = v7;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v5, v7 + 16) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_1BE676E88(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::NbGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::Token *morphun::Token_Delim::Token_Delim(morphun::Token *a1, int a2, int a3, morphun::Token *__src, unint64_t a5, morphun::Token *a6, unint64_t a7)
{
  *a1 = &off_1F3CED8F8;
  result = morphun::Token::Token(a1, off_1F3CDCFB0, a2, a3, __src, a5, a6, a7, 0);
  *result = &unk_1F3CD97F0;
  return result;
}

BOOL morphun::analysis::tokenattributes::GrammemeAttributeImpl::isImplemented(morphun::analysis::tokenattributes::GrammemeAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
}

void morphun::analysis::tokenattributes::GrammemeAttributeImpl::reflectWith(morphun::util::StringUtils **this, morphun::analysis::util::AttributeReflector *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"grammemes");
  morphun::util::StringUtils::to_u16string(this[1], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(__dst[0]);
  }
}

uint64_t morphun::analysis::tokenattributes::GrammemeAttributeImpl::copyTo(morphun::analysis::tokenattributes::GrammemeAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = **lpsrc;
  if (!v4)
  {
    v9 = __cxa_allocate_exception(0x38uLL);
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *v9 = &unk_1F3CD0AE8;
  }

  v5 = *(this + 1);
  v6 = *(*v4 + 64);

  return v6();
}

uint64_t morphun::analysis::tokenattributes::GrammemeAttributeImpl::operator()(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return (*(*v3 + 40))(v3);
}

uint64_t morphun::analysis::tokenattributes::GrammemeAttributeImpl::equals(morphun::analysis::tokenattributes::GrammemeAttributeImpl *this, const morphun::analysis::util::Attribute *lpsrc)
{
  if ((this + *(*this - 88)) == lpsrc)
  {
    return 1;
  }

  v3 = **lpsrc;
  if (result)
  {
    return *(this + 1) == *(result + 8);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_DefinitenessLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  v4 = v3;
  v5 = *(v3 + 23);
  if (v5 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  if (v6)
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    v7 = *v3;
    v8 = morphun::util::LocaleUtils::ENGLISH(v3);
    if (v5 >= 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = v7;
    }

    morphun::util::StringViewUtils::lowercase(&__p, v9, v6, v8);
    if ((std::basic_string<char16_t>::starts_with[abi:se200100](&__p, L"de ") & 1) != 0 || std::basic_string<char16_t>::starts_with[abi:se200100](&__p, L"het "))
    {
      operator new();
    }

    if (std::basic_string<char16_t>::starts_with[abi:se200100](&__p, "e"))
    {
      operator new();
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  (*(*a1 + 32))(&__p, a1, v4);
  v10 = HIBYTE(v14);
  if (v14 < 0)
  {
    v10 = v13;
  }

  if (v10)
  {
    operator new();
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1BE677934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x10B3C40F7FF9C27);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_DefinitenessLookupFunction::~NlGrammarSynthesizer_DefinitenessLookupFunction(morphun::grammar::synthesis::NlGrammarSynthesizer_DefinitenessLookupFunction *this)
{
  *this = &off_1F3CE6130;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE6130;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;
}

uint64_t morphun::TokenChain::toOriginatingString@<X0>(uint64_t this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = this;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = (this + 8);
  v5 = -1;
  while (1)
  {
    v6 = *v4;
    if (!*v4 || v6 == *(v2 + 16))
    {
      break;
    }

    this = (*(*v6 + 24))(v6);
    if (this >= v5)
    {
      v7 = *(v6 + 39);
      if (v7 >= 0)
      {
        v8 = (v6 + 16);
      }

      else
      {
        v8 = *(v6 + 16);
      }

      if (v7 >= 0)
      {
        v9 = *(v6 + 39);
      }

      else
      {
        v9 = *(v6 + 24);
      }

      std::basic_string<char16_t>::append(a2, v8, v9);
      this = (*(*v6 + 32))(v6);
      v5 = this;
    }

    v4 = (v6 + 80);
  }

  return this;
}

void sub_1BE677BD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::TokenChain::getToken(uint64_t this, int a2)
{
  if (a2 == -1)
  {
    v7 = *(*this + 104);

    return v7();
  }

  else
  {
    v2 = a2 - *(this + 60);
    if (v2 < 0 || (v3 = *(this + 32), v4 = (*(this + 40) - v3) >> 3, v2 >= v4))
    {
      if (morphun::util::gLogLevel <= 4)
      {
        morphun::util::StringUtils::to_u16string(a2, &v8);
        std::basic_string<char16_t>::insert(&v8, L"Attempting to getToken with invalid index: ", 0x2B, v5);
        __p = v8;
        memset(&v8, 0, sizeof(v8));
        if (morphun::util::gLogLevel <= 4)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          morphun::util::logToTopOfStackLogger(4, 0, p_p);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v8.__r_.__value_.__l.__data_);
        }
      }

      return 0;
    }

    else if (v4 <= v2)
    {
      __break(1u);
    }

    else
    {
      return *(v3 + 8 * v2);
    }
  }

  return this;
}

void sub_1BE677D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t morphun::TokenChain::getTokenValue(morphun::TokenChain *this)
{
  v2 = (*(*this + 152))(this);
  if (!v2)
  {
    v2 = (*(*this + 104))(this);
  }

  return v2 + 16;
}

void morphun::TokenChain::getNewTokenChain(morphun::TokenChain *this, uint64_t a2, int a3)
{
  v6 = (*(*this + 104))(this);
  v7 = npc<morphun::Token_Head>(v6);
  v8 = (*(*v7 + 40))(v7, a2);
  v9 = java_cast<morphun::Token_Head *,morphun::Token>(v8);
  v10 = (*(*this + 104))(this);
  v11 = v9;
  while (1)
  {
    npc<morphun::Token const>(v10);
    v12 = v10[10];
    if (v12 == (*(*this + 112))(this))
    {
      break;
    }

    npc<morphun::Token const>(v10);
    v10 = v10[10];
    v13 = npc<morphun::Token const>(v10);
    if ((*(*v10 + 24))(v13) >= a2 && (*(*v10 + 32))(v10) <= a3)
    {
      v14 = (*(*v10 + 40))(v10, a2);
      *(npc<morphun::Token>(v14) + 72) = v11;
      npc<morphun::Token>(v11);
      *(v11 + 80) = v14;
      v11 = v14;
    }
  }

  operator new();
}

uint64_t morphun::TokenChain::isExplicitOnly(morphun::TokenChain *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = v1 == 1;
  }

  else
  {
    v4 = (*(*this + 104))(this);
    v5 = 0;
LABEL_4:
    v6 = v5;
    while (1)
    {
      npc<morphun::Token>(v4);
      v4 = *(v4 + 10);
      if (!v4)
      {
        break;
      }

      v7 = *v4;
      v8 = **v4;
      {
        v9 = *v7;
        v5 = 1;
        if (v10)
        {
          goto LABEL_4;
        }

        break;
      }
    }

    v2 = v6 & (v4 == 0);
    if (v2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    *(this + 14) = v11;
  }

  return v2 & 1;
}

uint64_t morphun::TokenChain::hashCode(morphun::TokenChain *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    v2 = (*(*v1 + 48))(v1) - v2 + 32 * v2;
    v1 = v1[10];
  }

  while (v1);
  return v2;
}

char **morphun::TokenChain::getTail(morphun::TokenChain *this)
{
  result = *(this + 2);
  if (result)
  {
    v2 = **result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      *(exception + 8) = 0u;
      *(exception + 24) = 0u;
      *(exception + 40) = 0u;
      *exception = &unk_1F3CD0AE8;
    }
  }

  return result;
}

void *morphun::TokenChain::toString@<X0>(morphun::TokenChain *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  result = std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a2, L"Tokens: ");
  v5 = 0;
  for (i = (this + 8); ; i = (v7 + 80))
  {
    v7 = *i;
    if (!*i || v7 == *(this + 2))
    {
      break;
    }

    if ((*(v7 + 65) & 1) == 0)
    {
      if (v5)
      {
        std::basic_string<char16_t>::append(a2, " ", 3uLL);
      }

      v8 = *(v7 + 39);
      if (v8 >= 0)
      {
        v9 = (v7 + 16);
      }

      else
      {
        v9 = *(v7 + 16);
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 39);
      }

      else
      {
        v10 = *(v7 + 24);
      }

      result = std::basic_string<char16_t>::append(a2, v9, v10);
      v5 = 1;
    }
  }

  return result;
}

void sub_1BE678428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

morphun::TokenChain *morphun::TokenChain::TokenChain(morphun::TokenChain *this, morphun::Token_Head *a2, morphun::Token_Tail *a3, const morphun::Token *a4)
{
  v6 = a2;
  v8 = *(a2 + 1);
  *this = v8;
  *(this + *(v8 - 40)) = *(a2 + 2);
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 6) = 0;
  *(this + 28) = 1;
  *(this + 6) = morphun::Chunk::checkSize(a3, a4, a3);
  v9 = *v6;
  *this = *v6;
  *(this + *(v9 - 40)) = *(v6 + 3);
  npc<morphun::Token_Tail>(a4);
  LODWORD(v6) = (*(*a4 + 32))(a4);
  npc<morphun::Token_Head>(a3);
  v10 = (*(*a3 + 24))(a3);
  std::vector<morphun::Token *>::vector[abi:se200100](this + 4, v6 - v10 + 1);
  *(this + 7) = 0;
  result = (*(*a3 + 24))(a3);
  *(this + 15) = result;
  v12 = *(this + 4);
  if (*(this + 5) == v12)
  {
    goto LABEL_13;
  }

  *v12 = a3;
  result = (*(*a3 + 32))(a3);
  v13 = result - *(this + 15);
  v14 = *(this + 4);
  if (v13 >= (*(this + 5) - v14) >> 3)
  {
    goto LABEL_13;
  }

  *(v14 + 8 * v13) = a3;
  result = (*(*a4 + 24))(a4);
  v15 = result - *(this + 15);
  v16 = *(this + 4);
  if (v15 >= (*(this + 5) - v16) >> 3 || (*(v16 + 8 * v15) = a4, result = (*(*a4 + 32))(a4), v17 = result - *(this + 15), v18 = *(this + 4), v17 >= (*(this + 5) - v18) >> 3))
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    *(v18 + 8 * v17) = a4;
    v19 = *(a3 + 10);
    do
    {
      if (v19 == a4)
      {
        break;
      }

      npc<morphun::Token>(v19);
      if (*(v19 + 12) > *(v19 + 8))
      {
        npc<morphun::Token>(v19);
        result = (*(*v19 + 24))(v19);
        v20 = result - *(this + 15);
        v21 = *(this + 4);
        if (v20 >= (*(this + 5) - v21) >> 3)
        {
          goto LABEL_13;
        }

        *(v21 + 8 * v20) = v19;
        result = (*(*v19 + 32))(v19);
        v22 = result + ~*(this + 15);
        v23 = *(this + 4);
        if (v22 >= (*(this + 5) - v23) >> 3)
        {
          goto LABEL_13;
        }

        *(v23 + 8 * v22) = v19;
      }

      npc<morphun::Token>(v19);
      v24 = (*(*v19 + 32))(v19);
      v19 = *(v19 + 80);
      npc<morphun::Token>(v19);
    }

    while ((*(*v19 + 24))(v19) >= v24);
    return this;
  }

  return result;
}

void virtual thunk tomorphun::TokenChain::~TokenChain(morphun::TokenChain *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void sub_1BE6789D8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1BFB49160](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t morphun::TokenChain::EMPTY_CHAIN(morphun::TokenChain *this)
{
  {
    if (v2)
    {
      morphun::TokenChain::createEmptyTokenChain(v2);
    }
  }

  return morphun::TokenChain::EMPTY_CHAIN(void)::EMPTY_CHAIN_;
}

uint64_t morphun::TokenChain::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = (*(*a1 + 40))(a1);
  if (v4 != (*(*a2 + 40))(a2))
  {
    return 0;
  }

  v5 = (*(*a1 + 48))(a1);
  v6 = (*(*a2 + 48))(a2);
  if (!v5)
  {
    return v6 == 0;
  }

  while (1)
  {
    result = morphun::Token::operator==(v5, v6);
    if (!result)
    {
      break;
    }

    v5 = *(v5 + 80);
    v6 = *(v6 + 80);
    if (!v5)
    {
      return v6 == 0;
    }
  }

  return result;
}

void sub_1BE6790D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a26);
  a11 = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a11);
  v42 = &a38;
  v43 = -72;
  v44 = &a38;
  while (1)
  {
    v45 = *v44;
    v44 -= 24;
    if (v45 < 0)
    {
      operator delete(*(v42 - 23));
    }

    v42 = v44;
    v43 += 24;
    if (!v43)
    {
      a27 = &a17;
      std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&a27);
      a27 = &a20;
      std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&a27);
      v46 = (v40 - 136);
      v47 = -96;
      while (1)
      {
        v48 = *(v46 - 1);
        if (v48)
        {
          *v46 = v48;
          operator delete(v48);
        }

        v46 -= 3;
        v47 += 24;
        if (!v47)
        {
          if (__p)
          {
            operator delete(__p);
          }

          MEMORY[0x1BFB49160](v38, v39);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void morphun::analysis::HiAnalyzer::~HiAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CF0360);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CF0360);
}

uint64_t morphun::Token_Group::cloneSubTokens(morphun::Token_Group *this, uint64_t a2)
{
  v3 = *(this + 11);
  if (v3 && (*(*v3 + 40))(v3) >= 1)
  {
    v5 = npc<morphun::Chunk>(*(this + 11));
    v6 = (*(*v5 + 48))(v5);
    v7 = npc<morphun::Token>(v6);
    v8 = (*(*v7 + 40))(v7, a2);
    v9 = npc<morphun::Chunk>(*(this + 11));
    v10 = (*(*v9 + 56))(v9);
    if (v6 != v10)
    {
      v11 = v10;
      v12 = v8;
      do
      {
        v6 = v6[10];
        v13 = npc<morphun::Token>(v6);
        v14 = (*(*v6 + 40))(v13, a2);
        *(npc<morphun::Token>(v14) + 72) = v12;
        npc<morphun::Token>(v12);
        *(v12 + 80) = v14;
        v12 = v14;
      }

      while (v6 != v11);
    }

    operator new();
  }

  return 0;
}

morphun::Token *morphun::Token_Group::Token_Group(morphun::Token *a1, int a2, int a3, morphun::Token *__src, unint64_t a5, morphun::Token *a6, unint64_t a7, uint64_t a8)
{
  *a1 = &off_1F3CED818;
  result = morphun::Token::Token(a1, off_1F3CDCF70, a2, a3, __src, a5, a6, a7, 1);
  *result = &unk_1F3CD9768;
  *(result + 11) = a8;
  return result;
}

uint64_t npc<morphun::Chunk>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::Token_Group::~Token_Group(morphun::Token_Group *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::Token_Group::~Token_Group(morphun::Token_Group *this, void **a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 8)) = a2[4];
  *(this + *(*this - 40)) = a2[5];
  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  morphun::Token::~Token(this, a2 + 1);
}

void virtual thunk tomorphun::Token_Group::~Token_Group(morphun::Token_Group *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::Token_Group::~Token_Group(void *a1)
{
}

{

  JUMPOUT(0x1BFB49160);
}

morphun::Token *morphun::Token_Group::Token_Group(morphun::Token *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8, uint64_t a9)
{
  result = morphun::Token::Token(a1, a2 + 1, a3, a4, a5, a6, a7, a8, 1);
  v11 = *a2;
  *result = *a2;
  *(result + *(v11 - 64)) = a2[4];
  *(result + *(*result - 40)) = a2[5];
  *(result + 11) = a9;
  return result;
}

uint64_t npc<morphun::tokenizer::locale::fi::FiSegment const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::tokenizer::locale::fi::FiSegment::FiSegment(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8, char a9)
{
  *a1 = a2;
  if (a4 < a7)
  {
    goto LABEL_18;
  }

  v10 = a8 - a7;
  v11 = a4 - a7;
  if (v11 >= v10)
  {
    v11 = a8 - a7;
  }

  *(a1 + 8) = a3 + 2 * a7;
  *(a1 + 16) = v11;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *(a1 + 68) = a8;
  *(a1 + 72) = 0;
  *(a1 + 74) = a9;
  if (a6 < a8)
  {
LABEL_18:
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  if (a8 >= v10)
  {
    v12 = a8 - a7;
  }

  else
  {
    v12 = a8;
  }

  v13 = morphun::dictionary::metadata::MarisaTrie<int>::find((a2 + 40), (a5 + 2 * (a6 - a8)), v12);
  v14 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    if (v13 <= 2u)
    {
      v18 = 2;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18 - 1;
    if (v13 <= 0xF9Fu)
    {
      v20 = v19;
    }

    else
    {
      v20 = 3998;
    }

    v17 = FREQ_TO_LOG_PROB[v20];
    LODWORD(v14) = WORD1(v13) & 0x3F;
    v15 = (v13 >> 22) & 1;
    v16 = 1;
  }

  else
  {
    LOBYTE(v15) = 0;
    v16 = 0;
    v17 = 0;
  }

  *(a1 + 60) = v17;
  *(a1 + 56) = v14;
  *(a1 + 72) = v15;
  *(a1 + 73) = v16;
  return a1;
}

uint64_t morphun::tokenizer::locale::fi::FiSegment::addBoundaries(uint64_t result, void *a2)
{
  if (*(result + 73) == 1)
  {
    v2 = result;
    v3 = *(result + 56);
    if (v3)
    {
      v5 = *(result + 68) - v3;
      morphun::tokenizer::locale::fi::FiSegment::FiSegment(v20, result, *(result + 64), v5, 0);
      morphun::tokenizer::locale::fi::FiSegment::addBoundaries(v20, a2);
      result = morphun::tokenizer::locale::fi::FiSegment::FiSegment(&v17, v2, v5, *(v2 + 68), 1);
      if (*(v2 + 72) == 1)
      {
        v6 = v18;
        v7 = v19;
        v8 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(result);
        result = std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::find<std::u16string_view>(*v8, *(v8 + 8), v6, v7);
        if (!result)
        {
          if (a2)
          {
            v10 = a2[1];
            v9 = a2[2];
            if (v10 >= v9)
            {
              v11 = v10 - *a2;
              v12 = (v11 >> 2) + 1;
              if (v12 >> 62)
              {
                std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
              }

              v13 = v9 - *a2;
              v14 = v13 >> 1;
              if (v13 >> 1 <= v12)
              {
                v14 = (v11 >> 2) + 1;
              }

              if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v15);
              }
            }

            else if (v10)
            {
              *v10 = v5;
              a2[1] = v10 + 1;
              return morphun::tokenizer::locale::fi::FiSegment::addBoundaries(&v17, a2);
            }

            __break(1u);
          }

          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }
      }

      if (*(v2 + 74) == 1)
      {
        result = morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(v2, v18, v19);
        if (result)
        {
          return morphun::tokenizer::locale::fi::FiSuffixSplit::addSuffixInfo(v18, v19, a2, v5);
        }
      }
    }
  }

  return result;
}

uint64_t morphun::tokenizer::dictionary::DictionaryTokenizerConfig::DictionaryTokenizerConfig(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = xmmword_1BE695FE0;
  *(a1 + 16) = xmmword_1BE695FF0;
  *(a1 + 32) = 200;
  *(a1 + 40) = 100;
  *(a1 + 44) = 1036831949;
  *(a1 + 52) = 0;
  std::set<std::u16string_view>::set[abi:se200100]((a1 + 64), a2);
  std::set<std::u16string_view>::set[abi:se200100]((a1 + 88), a3);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 112, *a4, a4[1], (a4[1] - *a4) >> 4);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  result = std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 136, *a5, a5[1], (a5[1] - *a5) >> 4);
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  memset(&v42, 0, sizeof(v42));
  v13 = *a2;
  v11 = a2 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      v14 = v12[4];
      v15 = v12[5];
      v16 = v14 || v15 == 0;
      if (!v16)
      {
        goto LABEL_60;
      }

      std::basic_string<char16_t>::__assign_external(&v42, v14, v15);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v42;
      }

      else
      {
        v17 = v42.__r_.__value_.__r.__words[0];
      }

      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      v19 = (v17 + 2 * size - 2);
      if (size)
      {
        v20 = v19 > v17;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v21 = &v17->__r_.__value_.__s.__data_[1];
        do
        {
          v22 = *(v21 - 1);
          *(v21 - 1) = v19->__r_.__value_.__s.__data_[0];
          v19->__r_.__value_.__s.__data_[0] = v22;
          v19 = (v19 - 2);
          v23 = v21 >= v19;
          v21 += 2;
        }

        while (!v23);
      }

      result = std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(a1 + 160, &v42);
      v24 = *(v12 + 10);
      if (*(a1 + 28) < v24)
      {
        *(a1 + 28) = v24;
      }

      v25 = v12[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v12[2];
          v16 = *v26 == v12;
          v12 = v26;
        }

        while (!v16);
      }

      v12 = v26;
    }

    while (v26 != v11);
  }

  v29 = *a3;
  v27 = a3 + 1;
  v28 = v29;
  if (v29 != v27)
  {
    while (1)
    {
      v30 = v28[4];
      v31 = v28[5];
      if (!v30 && v31 != 0)
      {
        break;
      }

      std::basic_string<char16_t>::__assign_external(&v42, v30, v31);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v42;
      }

      else
      {
        v33 = v42.__r_.__value_.__r.__words[0];
      }

      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v42.__r_.__value_.__l.__size_;
      }

      v35 = (v33 + 2 * v34 - 2);
      if (v34)
      {
        v36 = v35 > v33;
      }

      else
      {
        v36 = 0;
      }

      if (v36)
      {
        v37 = &v33->__r_.__value_.__s.__data_[1];
        do
        {
          v38 = *(v37 - 1);
          *(v37 - 1) = v35->__r_.__value_.__s.__data_[0];
          v35->__r_.__value_.__s.__data_[0] = v38;
          v35 = (v35 - 2);
          v23 = v37 >= v35;
          v37 += 2;
        }

        while (!v23);
      }

      result = std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(a1 + 160, &v42);
      v39 = *(v28 + 10);
      if (*(a1 + 28) < v39)
      {
        *(a1 + 28) = v39;
      }

      v40 = v28[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v28[2];
          v16 = *v41 == v28;
          v28 = v41;
        }

        while (!v16);
      }

      v28 = v41;
      if (v41 == v27)
      {
        goto LABEL_57;
      }
    }

LABEL_60:
    __break(1u);
    return result;
  }

LABEL_57:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1BE67A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 120) = v18;
    operator delete(v18);
  }

  std::__tree<std::u16string_view>::destroy(*(v15 + 96));
  std::__tree<std::u16string_view>::destroy(*(v15 + 72));
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::EnGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    v5 = (*(*a2 + 32))(a2);
    if (v5)
    {
      v6 = *(*a1 + 32);

      return v6(a1, a2, v5);
    }
  }

  v8 = (*(*a2 + 24))(a2);
  if (*(v8 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v30, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v30.__r_.__value_.__r.__words[2] = *(v8 + 16);
    *&v30.__r_.__value_.__l.__data_ = v9;
  }

  size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_46;
  }

  morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::determine(a1 + 4, &v30, &__p);
  v12 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v11);
  v13 = HIBYTE(v29);
  v14 = SHIBYTE(v29);
  if (v29 < 0)
  {
    v13 = v28;
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = v12[1];
  }

  if (v13 == v15)
  {
    if (!v13)
    {
LABEL_25:
      v19 = 1;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_26:
      operator delete(__p);
      if (v19)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    }

    if (v16 >= 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = *v12;
    }

    p_p = __p;
    if (v29 >= 0)
    {
      p_p = &__p;
    }

    while (*v17 == *p_p)
    {
      ++p_p;
      ++v17;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }
  }

  v20 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v30.__r_.__value_.__l.__size_;
  }

  if (v20 >= 4)
  {
    if ((std::basic_string<char16_t>::ends_with[abi:se200100](&v30, word_1BE80E64A) & 1) != 0 || (v12 = std::basic_string<char16_t>::ends_with[abi:se200100](&v30, L"'s"), v12))
    {
      v21 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v30.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::resize(&v30, v21 - 2, 0);
    }
  }

  v22 = morphun::util::LocaleUtils::ENGLISH(v12);
  if (morphun::dictionary::PhraseProperties::isStartsWithVowel(v22, &v30))
  {
    goto LABEL_40;
  }

  v23 = &v30;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v30.__r_.__value_.__r.__words[0];
  }

  if (v23->__r_.__value_.__s.__data_[0] == 56)
  {
LABEL_40:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v25, "a");
    v24 = (*(*a1 + 32))(a1, a2, v25);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v25, "a");
    v24 = (*(*a1 + 32))(a1, a2, v25);
  }

  v2 = v24;
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v19 = 0;
  if (v14 < 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  if (v19)
  {
LABEL_46:
    __p = 0;
    v28 = 0;
    v29 = 0;
    v2 = (*(*a1 + 32))(a1, a2, &__p);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_48:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_1BE67A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_ArticleLookupFunction::~EnGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::EnGrammarSynthesizer_ArticleLookupFunction *this)
{
  *this = &unk_1F3CD4A58;
  morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::~EnGrammarSynthesizer_CountLookupFunction((this + 32));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4A58;
  morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::~EnGrammarSynthesizer_CountLookupFunction((this + 32));
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_ArticleLookupFunction::EnGrammarSynthesizer_ArticleLookupFunction(void *a1, uint64_t a2, _WORD *a3)
{
  *a1 = &off_1F3CE6D60;
  *morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDBA78, a2, a3 != 0, 1) = &unk_1F3CD4A58;
  if (a3)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, a3);
    v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
    if (a2 + 16 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 56);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  a1[3] = v7;
  morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::EnGrammarSynthesizer_CountLookupFunction((a1 + 4));
}

morphun::Token *morphun::Token_Tail::Token_Tail(morphun::Token_Tail *this, uint64_t *a2, int a3)
{
  result = morphun::Token_Delim::Token_Delim(this, a2 + 1, a3, a3, &word_1BE80F080, 0, &word_1BE80F080, 0);
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 64)) = a2[7];
  *(result + *(*result - 40)) = a2[8];
  return result;
}

uint64_t msfc_isExists(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return (*(*a1 + 32))(a1);
}

void sub_1BE67A968(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v3);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v6, v2, v7);
    __cxa_end_catch();
    JUMPOUT(0x1BE67A924);
  }

  _Unwind_Resume(a1);
}

CFStringRef msfc_createConstraintByNameCopy(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 40))(a1);
  v5 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v4 + 8, &__p);
  if (&v5->data == v6 || !*(v6 + 56))
  {
    v12 = __cxa_allocate_exception(0x38uLL);
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v14, &__p, L" is not a valid feature name for the SemanticFeatureModel");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v12, &v14);
  }

  v7 = (*(*a1 + 48))(a1);
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 23);
    if (v9 < 0)
    {
      v10 = *v7;
      v9 = *(v7 + 8);
    }

    else
    {
      v10 = v7;
    }

    v5 = CFStringCreateWithCharacters(0, v10, v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      return 0;
    }
  }

  else if (!v8)
  {
    return 0;
  }

  return v5;
}

void sub_1BE67AB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v23, v20, v24);
    __cxa_end_catch();
    JUMPOUT(0x1BE67AAB4);
  }

  _Unwind_Resume(exception_object);
}

void msfc_putConstraintByName(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  npc<morphun::dialog::SemanticFeatureConceptBase>(a1);
  morphun::util::CFUtils::to_u16string(&v7, a2);
  morphun::util::CFUtils::to_u16string(&__p, a3);
  (*(*a1 + 72))(a1, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1BE67AD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v23, v20, v24);
    __cxa_end_catch();
    JUMPOUT(0x1BE67ACFCLL);
  }

  _Unwind_Resume(exception_object);
}

void msfc_clearConstraintByName(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::SemanticFeatureConceptBase>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  (*(*a1 + 88))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE67AE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v18, v15, v19);
    __cxa_end_catch();
    JUMPOUT(0x1BE67AE5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t msfc_createFeatureValueByNameCopy(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 112))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE67AFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v18, v15, v19);
    __cxa_end_catch();
    JUMPOUT(0x1BE67AFD4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t msfc_toSpeakableStringCopy(char *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return (*(*&a1[*(*a1 - 56)] + 24))(&a1[*(*a1 - 56)]);
}

void sub_1BE67B0E8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v3);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v6, v2, v7);
    __cxa_end_catch();
    JUMPOUT(0x1BE67B0A4);
  }

  _Unwind_Resume(a1);
}

uint64_t msfc_toSpeakableStringWithDependencyCopy(char **lpsrc, uint64_t a2)
{
  {
    v6 = *v4;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v8 = v7;
    npc<morphun::dialog::SemanticFeatureConceptBase const>(a2);
    return (*(*v8 + 136))(v8, a2);
  }

  else
  {
    npc<morphun::dialog::SemanticFeatureConceptBase const>(lpsrc);
    return (*(lpsrc + *(*lpsrc - 7)))[3](lpsrc + *(*lpsrc - 7));
  }
}

void sub_1BE67B294(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v3);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v6, v2, v7);
    __cxa_end_catch();
    JUMPOUT(0x1BE67B250);
  }

  _Unwind_Resume(a1);
}

uint64_t msfc_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::determine(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, a3);
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    v14 = 0;
    v7 = *(a2 + 23);
    v8 = v7 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
    CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[26], &v14, v8, v9);
    if (CombinedBinaryType)
    {
      v11 = v14;
      if ((a1[27] & v14) != 0)
      {
        v12 = morphun::grammar::synthesis::GrammemeConstants::GENDER_COMMON(CombinedBinaryType);
        CombinedBinaryType = std::basic_string<char16_t>::operator=(a3, v12);
        v11 = v14;
      }

      if ((a1[28] & v11) != 0)
      {
        v13 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(CombinedBinaryType);
        std::basic_string<char16_t>::operator=(a3, v13);
      }
    }
  }
}

void sub_1BE67B460(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::~SvGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction *this)
{
  morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::~SvGrammarSynthesizer_GenderLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE70C0;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::SvGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE7128;
  v1 = morphun::util::LocaleUtils::SWEDISH(this);
  v2 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v1);
  if (*(v2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v6, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v6.__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&v6.__r_.__value_.__l.__data_ = v3;
  }

  v4 = morphun::grammar::synthesis::GrammemeConstants::GENDER_COMMON(v2);
  if (*(v4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v7, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v7.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v7.__r_.__value_.__l.__data_ = v5;
  }

  memset(&v8, 0, sizeof(v8));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v8, &v6, &v8, 2uLL);
}

void sub_1BE67B7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v25, off_1F3CDBBA0);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_AsPrepositionLookupFunction::getArticle(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v2 = (*(*a2 + 24))(a2);
  v3 = morphun::util::StringUtils::trim(v2, v8);
  v4 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v4 = v8[1];
  }

  if (v4)
  {
    v5 = morphun::lang::StringFilterUtil::ARABIC_SCRIPT(v3);
    v6 = v8;
    if ((v9 & 0x80u) != 0)
    {
      v6 = v8[0];
    }

    if (MEMORY[0x1BFB49A20](*v5, *v6))
    {
      HIBYTE(v11) = 1;
      LOWORD(v10[0]) = 1603;
      v7 = 2;
    }

    else
    {
      HIBYTE(v11) = 3;
      LODWORD(v10[0]) = 104859203;
      WORD2(v10[0]) = 160;
      v7 = 6;
    }

    *(v10 | v7) = 0;
    operator new();
  }

  operator new();
}

void sub_1BE67BA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1BFB49160](v21, 0x10B3C40F7FF9C27);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::Tokenizer::close(uint64_t this)
{
  *(this + 120) = 0;
  *(this + 128) = 0;
  return this;
}

uint64_t morphun::analysis::Tokenizer::reset(uint64_t this)
{
  *(this + 120) = *(this + 128);
  *(this + 128) = 0;
  return this;
}

morphun::analysis::TokenStream *morphun::analysis::Tokenizer::Tokenizer(morphun::analysis::Tokenizer *this, uint64_t *a2)
{
  result = morphun::analysis::TokenStream::TokenStream(this, a2 + 1);
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 40)) = a2[5];
  *(result + 15) = 0;
  *(result + 16) = 0;
  return result;
}

morphun::analysis::util::AttributeSource *morphun::analysis::Tokenizer::Tokenizer(morphun::analysis::Tokenizer *this, morphun::analysis::util::AttributeFactory *a2, uint64_t a3)
{
  result = morphun::analysis::util::AttributeSource::AttributeSource(this, (a2 + 16), a3);
  v5 = *(a2 + 1);
  *result = v5;
  *(result + *(v5 - 40)) = *(a2 + 4);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 40)) = *(a2 + 5);
  *(result + 15) = 0;
  *(result + 16) = 0;
  return result;
}

void morphun::dialog::language::ViCommonConceptFactory::~ViCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC160);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC160);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_ADPOSITION(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_ADPOSITION(void)::POS_ADPOSITION_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67BE00(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_VERB(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_VERB(void)::POS_VERB_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67BEC8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_DETERMINER(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_DETERMINER(void)::POS_DETERMINER_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67BF90(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_PRONOUN(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_PRONOUN(void)::POS_PRONOUN_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C058(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(void)::CASE_NOMINATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C120(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ABLATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ABLATIVE(void)::CASE_ABLATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C1E8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(void)::CASE_ACCUSATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C2B0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ADESSIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ADESSIVE(void)::CASE_ADESSIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C378(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ALLATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ALLATIVE(void)::CASE_ALLATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C440(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_DATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_DATIVE(void)::CASE_DATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C508(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_DIRECT(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_DIRECT(void)::CASE_DIRECT_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C5D0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ELATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ELATIVE(void)::CASE_ELATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C698(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ESSIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ESSIVE(void)::CASE_ESSIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C760(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(void)::CASE_GENITIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C828(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_ILLATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_ILLATIVE(void)::CASE_ILLATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C8F0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_INESSIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_INESSIVE(void)::CASE_INESSIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67C9B8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_INSTRUMENTAL(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_INSTRUMENTAL(void)::CASE_INSTRUMENTAL_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CA80(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_LOCATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_LOCATIVE(void)::CASE_LOCATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CB48(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_OBLIQUE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_OBLIQUE(void)::CASE_OBLIQUE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CC10(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_PARTITIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_PARTITIVE(void)::CASE_PARTITIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CCD8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_PREPOSITIONAL(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_PREPOSITIONAL(void)::CASE_PREPOSITIONAL_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CDA0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_TRANSLATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_TRANSLATIVE(void)::CASE_TRANSLATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CE68(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CASE_VOCATIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CASE_VOCATIVE(void)::CASE_VOCATIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CF30(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::NUMBER_DUAL(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_DUAL(void)::NUMBER_DUAL_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67CFF8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(void)::GENDER_MASCULINE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D0C0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(void)::GENDER_FEMININE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D188(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(void)::GENDER_NEUTER_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D250(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::GENDER_COMMON(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::GENDER_COMMON(void)::GENDER_COMMON_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D318(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(void)::DEFINITENESS_INDEFINITE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D3E0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(void)::DEFINITENESS_DEFINITE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D4A8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_CONSTRUCT(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_CONSTRUCT(void)::DEFINITENESS_CONSTRUCT_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D570(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::PERSON_FIRST(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::PERSON_FIRST(void)::PERSON_FIRST_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D638(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::PERSON_SECOND(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::PERSON_SECOND(void)::PERSON_SECOND_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D700(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::PERSON_THIRD(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::PERSON_THIRD(void)::PERSON_THIRD_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D7C8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::ANIMACY_ANIMATE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_ANIMATE(void)::ANIMACY_ANIMATE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D890(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::ANIMACY_INANIMATE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_INANIMATE(void)::ANIMACY_INANIMATE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67D958(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::ANIMACY_HUMAN(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_HUMAN(void)::ANIMACY_HUMAN_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DA20(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::TENSE_PAST(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::TENSE_PAST(void)::TENSE_PAST_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DAE8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::CLUSIVITY_EXCLUSIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::CLUSIVITY_EXCLUSIVE(void)::CLUSIVITY_EXCLUSIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DBB0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::COMPARISON_PLAIN(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::COMPARISON_PLAIN(void)::COMPARISON_PLAIN_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DC78(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::SIZENESS_UNSIZED(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::SIZENESS_UNSIZED(void)::SIZENESS_UNSIZED_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DD40(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::SIZENESS_DIMINUTIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::SIZENESS_DIMINUTIVE(void)::SIZENESS_DIMINUTIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DE08(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::VERBTYPE_PARTICIPLE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::VERBTYPE_PARTICIPLE(void)::VERBTYPE_PARTICIPLE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE67DED0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void non-virtual thunk tomorphun::analysis::pt::BrazilianStemFilter::~BrazilianStemFilter(morphun::analysis::pt::BrazilianStemFilter *this)
{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA818);
  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA7E8);

  JUMPOUT(0x1BFB49160);
}

{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA818);

  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA7E8);
}

void *morphun::analysis::pt::BrazilianStemFilter::reset(morphun::analysis::pt::BrazilianStemFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 58) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 59) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 60) = result;
  return result;
}

uint64_t morphun::analysis::pt::BrazilianStemFilter::incrementToken(morphun::analysis::pt::BrazilianStemFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_102;
  }

  v3 = (*(*v2 + 24))(v2);
  if (!v3)
  {
    return v3;
  }

  v4 = *(this + 58);
  if (v4)
  {
    if ((*(*v4 + 56))(v4))
    {
      return v3;
    }
  }

  v5 = *(this + 57);
  if (!v5)
  {
LABEL_102:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v6 = (v5 + *(*v5 - 96));
  size = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v6->__r_.__value_.__l.__size_;
    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_105;
    }

    v6 = v6->__r_.__value_.__r.__words[0];
  }

  if (size > 0xA)
  {
    if ((size | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (size | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v8);
  }

  *(&v60.__r_.__value_.__s + 23) = size;
  v9 = (&v60 + 2 * size);
  v10 = &v60 <= v6 && v9 > v6;
  if (v10)
  {
    __break(1u);
LABEL_105:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (size)
  {
    memmove(&v60, v6, 2 * size);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  v59 = 0;
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v60;
  }

  else
  {
    v11 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v60.__r_.__value_.__l.__size_;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v59, v11, v12);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v60;
  }

  else
  {
    v13 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v60.__r_.__value_.__l.__size_;
  }

  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::getLemma(&__str, this + 128, &v13->__r_.__value_.__l.__data_, v14, v59);
  v16 = *(this + 57);
  v17 = *(*v16 - 96);
  if (v58 != 1)
  {
    v18 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v60.__r_.__value_.__r.__words[1];
    }

    if (v18 < 1)
    {
LABEL_66:
      if (v19 < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v56, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        goto LABEL_78;
      }

      *&v56.__r_.__value_.__l.__data_ = *&v60.__r_.__value_.__l.__data_;
      v34 = v60.__r_.__value_.__r.__words[2];
    }

    else
    {
      v50 = *(*v16 - 96);
      v51 = *(this + 57);
      v52 = v3;
      v20 = v18 & 0x7FFFFFFF;
      if ((v18 & 0x7FFFFFFC) != 0)
      {
        v21 = 4;
      }

      else
      {
        v21 = v18 & 0x7FFFFFFF;
      }

      while (1)
      {
        v22 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = v60.__r_.__value_.__l.__size_;
        }

        v23 = v22 >= v20 - v21;
        v24 = v22 - (v20 - v21);
        if (!v23)
        {
          std::__throw_out_of_range[abi:se200100]("string_view::substr");
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v60;
        }

        else
        {
          v25 = v60.__r_.__value_.__r.__words[0];
        }

        if (v24 >= v20)
        {
          v26 = v20;
        }

        else
        {
          v26 = v24;
        }

        v27 = morphun::analysis::pt::inflectorMap(v15);
        v29 = v27 + 8;
        v28 = *(v27 + 8);
        if (!v28)
        {
          goto LABEL_61;
        }

        v30 = (v25 + 2 * (v20 - v21));
        v31 = v27 + 8;
        do
        {
          v27 = std::less<std::u16string_view>::operator()[abi:se200100](*(v28 + 32), *(v28 + 40), v30, v26);
          if (v27)
          {
            v32 = 8;
          }

          else
          {
            v32 = 0;
          }

          if (!v27)
          {
            v31 = v28;
          }

          v28 = *(v28 + v32);
        }

        while (v28);
        if (v31 == v29 || (v27 = std::less<std::u16string_view>::operator()[abi:se200100](v30, v26, *(v31 + 32), *(v31 + 40)), v27))
        {
LABEL_61:
          v31 = v29;
        }

        v15 = morphun::analysis::pt::inflectorMap(v27);
        if ((v15 + 8) != v31)
        {
          break;
        }

        v10 = v21-- <= 1;
        if (v10)
        {
          v19 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          v3 = v52;
          v17 = v50;
          v16 = v51;
          goto LABEL_66;
        }
      }

      v35 = *(v31 + 48);
      if (!v35)
      {
        v35 = v26;
      }

      v36 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v60.__r_.__value_.__l.__size_;
      }

      v37 = std::basic_string<char16_t>::basic_string(&v61, &v60, 0, v36 - v35, v33);
      v3 = v52;
      v17 = v50;
      v16 = v51;
      std::basic_string<char16_t>::append(v37, *(v31 + 56), *(v31 + 64));
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v56, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      *&v56.__r_.__value_.__l.__data_ = *&v61.__r_.__value_.__l.__data_;
      v34 = v61.__r_.__value_.__r.__words[2];
    }

    v56.__r_.__value_.__r.__words[2] = v34;
LABEL_78:
    v38 = v16 + v17;
    if (v38[23] < 0)
    {
      operator delete(*v38);
    }

    v39 = *&v56.__r_.__value_.__l.__data_;
    *(v38 + 2) = *(&v56.__r_.__value_.__l + 2);
    *v38 = v39;
    goto LABEL_81;
  }

  std::basic_string<char16_t>::operator=((v16 + v17), &__str);
LABEL_81:
  if (*(this + 59))
  {
    v61.__r_.__value_.__r.__words[0] = 0;
    v40 = *(this + 57);
    v41 = *(*v40 - 96);
    v42 = v40 + v41;
    v43 = *(v40 + v41 + 23);
    if (v43 < 0)
    {
      v42 = *v42;
      v43 = *(v40 + v41 + 8);
    }

    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v61, v42, v43))
    {
      v44 = *(this + 59);
      if (!v44)
      {
        v49 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v49);
      }

      (*(*v44 + 64))(v44, v61.__r_.__value_.__r.__words[0]);
    }
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v60;
  }

  else
  {
    v45 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v60.__r_.__value_.__l.__size_;
  }

  morphun::analysis::MorphologicalAnalyzer::analyze_word(&__p, this + 16, v45, v46, v59, *(this + 60), 0);
  if (v55 == 1 && v54 < 0)
  {
    operator delete(__p);
  }

  if (v58 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1BE67E518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_free_exception(v34);
  if (a27 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::pt::inflectorMap(morphun::analysis::pt *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::analysis::pt::inflectorMap(void)::inflectorMap_;
  if (!morphun::analysis::pt::inflectorMap(void)::inflectorMap_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE67E814(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::u16string_view,morphun::analysis::pt::BrazilianStemFilter_InflectionRule>::map[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 40 * a3;
    do
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 == v4)
      {
        goto LABEL_23;
      }

      v9 = a1[1];
      v10 = v4;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = *v5;
      v13 = *(v5 + 8);
      if (std::less<std::u16string_view>::operator()[abi:se200100](v8[4], v8[5], *v5, v13))
      {
LABEL_23:
        if (!v7 || !v8[1])
        {
LABEL_18:
          operator new();
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_18;
        }

        while (1)
        {
          while (1)
          {
            v14 = v7;
            v15 = *(v7 + 32);
            v16 = v14[5];
            if (!std::less<std::u16string_view>::operator()[abi:se200100](v12, v13, v15, v16))
            {
              break;
            }

            v7 = *v14;
            if (!*v14)
            {
              goto LABEL_18;
            }
          }

          if (!std::less<std::u16string_view>::operator()[abi:se200100](v15, v16, v12, v13))
          {
            break;
          }

          v7 = v14[1];
          if (!v7)
          {
            goto LABEL_18;
          }
        }
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  return a1;
}

void morphun::analysis::pt::BrazilianStemFilter::~BrazilianStemFilter(morphun::analysis::pt::BrazilianStemFilter *this)
{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA818);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA7E8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA818);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA7E8);
}

uint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::getFeatureValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this, const morphun::dialog::SemanticFeature *a2)
{
  v3 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(this + 32, a2);
  if ((this + 40) == v3)
  {
    return 0;
  }

  else
  {
    return v3 + 104;
  }
}

void morphun::dialog::SemanticFeatureModel_DisplayValue::~SemanticFeatureModel_DisplayValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::SemanticFeatureModel_DisplayValue::~SemanticFeatureModel_DisplayValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(*(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 40)) = a2[1];
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100]((a1 + 32), a4);
  return a1;
}

void sub_1BE67ED04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F3CD8370;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100]((a1 + 32), a3);
  return a1;
}

void sub_1BE67EDA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(a1, a2, a3, &v5);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v6[0]);
  return a1;
}

uint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(uint64_t a1, __int128 *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(a1, a2, &v4);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v5[0]);
  return a1;
}

morphun::dialog::SemanticFeatureModel_DisplayValue *morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this, const morphun::dialog::SpeakableString *a2, const morphun::dialog::SemanticFeature *a3, uint64_t a4)
{
  v8 = (*(*a3 + 32))(a3);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(this, a2, v8, &v10);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v11[0]);
  if (((*(*a3 + 48))(a3) & 1) == 0)
  {
    (*(*a3 + 40))(a3);
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,morphun::dialog::SemanticFeature const&,std::basic_string<char16_t> const&>(this + 32, a4);
  }

  return this;
}

morphun::dialog::SemanticFeatureModel_DisplayValue *morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this, const morphun::dialog::SpeakableString *a2, const morphun::dialog::SemanticFeature *a3)
{
  v6 = (*(*a2 + 32))(a2);
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(this, v6, &v8);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v9[0]);
  if (((*(*a2 + 48))(a2) & 1) == 0)
  {
    (*(*a2 + 40))(a2);
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,morphun::dialog::SemanticFeature const&,std::basic_string<char16_t> const&>(this + 32, a3);
  }

  return this;
}

void virtual thunk tomorphun::dialog::SemanticFeatureModel_DisplayValue::~SemanticFeatureModel_DisplayValue(morphun::dialog::SemanticFeatureModel_DisplayValue *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

BOOL morphun::dialog::SemanticFeatureModel_DisplayValue::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v2 != v4)
  {
    return 0;
  }

  if (v2)
  {
    if (v5 >= 0)
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    if (v3 >= 0)
    {
      v7 = (a1 + 8);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    while (*v6 == *v7)
    {
      ++v7;
      ++v6;
      if (!--v2)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = (a1 + 40);
  if (v8 == (a1 + 40))
  {
    return 1;
  }

  v10 = *(a2 + 32);
  do
  {
    result = morphun::dialog::SemanticFeature::operator==((v8 + 4), (v10 + 4));
    if (!result)
    {
      break;
    }

    v12 = *(v8 + 127);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = v8[14];
    }

    v14 = *(v10 + 127);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = v10[14];
    }

    if (v12 != v14)
    {
      return 0;
    }

    if (v12)
    {
      if (v15 >= 0)
      {
        v16 = (v10 + 13);
      }

      else
      {
        v16 = v10[13];
      }

      if (v13 >= 0)
      {
        v17 = (v8 + 13);
      }

      else
      {
        v17 = v8[13];
      }

      while (*v16 == *v17)
      {
        ++v17;
        ++v16;
        if (!--v12)
        {
          goto LABEL_33;
        }
      }

      return 0;
    }

LABEL_33:
    v18 = v8[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v8[2];
        v20 = *v19 == v8;
        v8 = v19;
      }

      while (!v20);
    }

    v21 = v10[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v10[2];
        v20 = *v22 == v10;
        v10 = v22;
      }

      while (!v20);
    }

    result = 1;
    v10 = v22;
    v8 = v19;
  }

  while (v19 != v9);
  return result;
}

unint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::hashCode(morphun::dialog::SemanticFeatureModel_DisplayValue *this)
{
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  v4 = *(v1 + 23);
  if (v4 >= 0)
  {
    v2 = v1;
  }

  if (v4 < 0)
  {
    v4 = v1[1];
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v2, 2 * v4);
}

unint64_t morphun::dialog::SemanticFeatureModel_DisplayValue::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = *(v2 + 8);
  if (v5 >= 0)
  {
    v7 = *(v2 + 23);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v6, 2 * v7);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_WithHyphenSuffixLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 24))(a2);
  v3 = *(v2 + 23);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = *v2;
  }

  if (v4)
  {
    v6 = *(v2 + 8);
  }

  else
  {
    v6 = *(v2 + 23);
  }

  if (v6)
  {
    v7 = 2 * v6;
    v8 = v5;
    v9 = &v5[2 * v6];
    while (*v8 != 32)
    {
      v8 += 2;
      v7 -= 2;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    if (v8 != v9 && v10 - v5 != -2)
    {
      operator new();
    }
  }

LABEL_18:
  operator new();
}

void sub_1BE67F544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk tomorphun::analysis::stemmer::EsStemFilter::~EsStemFilter(morphun::analysis::stemmer::EsStemFilter *this)
{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA168);
  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA138);

  JUMPOUT(0x1BFB49160);
}

{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA168);

  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA138);
}

void *morphun::analysis::stemmer::EsStemFilter::reset(morphun::analysis::stemmer::EsStemFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 58) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 59) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 60) = result;
  return result;
}

uint64_t morphun::analysis::stemmer::EsStemFilter::incrementToken(morphun::analysis::stemmer::EsStemFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_108;
  }

  v3 = (*(*v2 + 24))(v2);
  if (!v3)
  {
    return v3;
  }

  v4 = *(this + 58);
  if (v4)
  {
    if ((*(*v4 + 56))(v4))
    {
      return v3;
    }
  }

  v5 = *(this + 57);
  if (!v5)
  {
LABEL_108:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v6 = (v5 + *(*v5 - 96));
  v7 = *(v6 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = v6[1];
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_111;
    }

    v6 = *v6;
  }

  if (v7 > 0xA)
  {
    if ((v7 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v7 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v8);
  }

  v55 = v7;
  v9 = (&v53 + 2 * v7);
  if (&v53 <= v6 && v9 > v6)
  {
    goto LABEL_110;
  }

  if (v7)
  {
    memmove(&v53, v6, 2 * v7);
  }

  *v9 = 0;
  v52 = 0;
  if ((v55 & 0x80u) == 0)
  {
    v11 = &v53;
  }

  else
  {
    v11 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v12 = v55;
  }

  else
  {
    v12 = v54;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v52, v11, v12);
  if ((v55 & 0x80u) == 0)
  {
    v13 = &v53;
  }

  else
  {
    v13 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v14 = v55;
  }

  else
  {
    v14 = v54;
  }

  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::getLemma(&__str, this + 128, v13, v14, v52);
  v15 = (*(this + 57) + *(**(this + 57) - 96));
  if (v51 != 1)
  {
    v16 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
    v17 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
    if (v16 < 0)
    {
      size = v15->__r_.__value_.__l.__size_;
      if (size < 5)
      {
        goto LABEL_86;
      }

      v18 = (size - 1);
      if (size < v18)
      {
        goto LABEL_110;
      }

      v22 = v15->__r_.__value_.__r.__words[0];
      if (*(v15->__r_.__value_.__r.__words[0] + 2 * v18) != 115)
      {
        goto LABEL_86;
      }

      v19 = (size - 2);
      if (size < v19)
      {
        goto LABEL_110;
      }

      v20 = v15->__r_.__value_.__l.__size_;
    }

    else
    {
      if (v17 < 5)
      {
        goto LABEL_41;
      }

      v18 = (v16 - 1);
      if (v17 < v18)
      {
        goto LABEL_110;
      }

      if (v15->__r_.__value_.__s.__data_[v18] != 115)
      {
LABEL_41:
        LODWORD(size) = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
        goto LABEL_86;
      }

      v19 = (v16 - 2);
      if (v17 < v19)
      {
        goto LABEL_110;
      }

      LODWORD(v20) = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
      LODWORD(size) = v20;
      v22 = *(this + 57) + *(**(this + 57) - 96);
    }

    v23 = *(v22 + 2 * v19);
    if ((v23 - 232) >= 2 && v23 != 101)
    {
      if ((v17 & 0x80000000) != 0)
      {
        if (v15->__r_.__value_.__l.__size_ < v19)
        {
          goto LABEL_110;
        }

        v28 = v15->__r_.__value_.__r.__words[0];
        v27 = *(v15->__r_.__value_.__r.__words[0] + 2 * v19);
      }

      else
      {
        if (v19 > v17)
        {
          goto LABEL_110;
        }

        v27 = v15->__r_.__value_.__s.__data_[v19];
        v28 = *(this + 57) + *(**(this + 57) - 96);
      }

      if (v27 == 111 || (v32 = *(v28 + 2 * v19), (v32 - 224) < 2) || v32 == 97)
      {
        LODWORD(size) = v18;
      }

      goto LABEL_86;
    }

    v24 = (v20 - 3);
    if (v16 < 0)
    {
      if (v15->__r_.__value_.__l.__size_ < v24)
      {
        goto LABEL_110;
      }

      size = v15->__r_.__value_.__r.__words[0];
    }

    else
    {
      size = *(this + 57) + *(**(this + 57) - 96);
      if (v24 > v17)
      {
        goto LABEL_110;
      }
    }

    v25 = *(size + 2 * v24);
    LODWORD(size) = v18;
    if (v25 != 116)
    {
      if (v25 != 110)
      {
        if (v25 == 99)
        {
          if ((v17 & 0x80000000) == 0)
          {
            v26 = *(this + 57) + *(**(this + 57) - 96);
            if (v24 > v17)
            {
              goto LABEL_110;
            }

            goto LABEL_80;
          }

          if (v15->__r_.__value_.__l.__size_ >= v24)
          {
            v26 = v15->__r_.__value_.__r.__words[0];
LABEL_80:
            *(v26 + 2 * v24) = 122;
            goto LABEL_85;
          }

LABEL_110:
          __break(1u);
LABEL_111:
          std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
        }

LABEL_85:
        LODWORD(size) = v19;
        goto LABEL_86;
      }

      v29 = (v20 - 4);
      if ((v17 & 0x80000000) != 0)
      {
        v33 = v15->__r_.__value_.__l.__size_;
        if (v33 < v29)
        {
          goto LABEL_110;
        }

        v31 = v15->__r_.__value_.__r.__words[0];
        v34 = *(v15->__r_.__value_.__r.__words[0] + 2 * v29);
        if (v34 != 97)
        {
          if (v34 != 111)
          {
            goto LABEL_85;
          }

          goto LABEL_77;
        }

        if (v33 < v29)
        {
          goto LABEL_110;
        }

        v31 = v15->__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v29 > v17)
        {
          goto LABEL_110;
        }

        v30 = v15->__r_.__value_.__s.__data_[v29];
        v31 = *(this + 57) + *(**(this + 57) - 96);
        if (v30 != 97)
        {
          v31 = *(this + 57) + *(**(this + 57) - 96);
          if (v30 != 111)
          {
            goto LABEL_85;
          }

LABEL_77:
          v35 = 243;
LABEL_84:
          *(v31 + 2 * v29) = v35;
          goto LABEL_85;
        }
      }

      v35 = 225;
      goto LABEL_84;
    }

LABEL_86:
    std::basic_string<char16_t>::resize(v15, size, 0);
    goto LABEL_87;
  }

  std::basic_string<char16_t>::operator=(v15, &__str);
LABEL_87:
  if (*(this + 59))
  {
    v49 = 0;
    v36 = *(this + 57);
    v37 = *(*v36 - 96);
    v38 = v36 + v37;
    v39 = *(v36 + v37 + 23);
    if (v39 < 0)
    {
      v38 = *v38;
      v39 = *(v36 + v37 + 8);
    }

    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v49, v38, v39))
    {
      v40 = *(this + 59);
      if (!v40)
      {
        v45 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v45);
      }

      (*(*v40 + 64))(v40, v49);
    }
  }

  if ((v55 & 0x80u) == 0)
  {
    v41 = &v53;
  }

  else
  {
    v41 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v42 = v55;
  }

  else
  {
    v42 = v54;
  }

  morphun::analysis::MorphologicalAnalyzer::analyze_word(&__p, this + 16, v41, v42, v52, *(this + 60), 0);
  if (v48 == 1 && v47 < 0)
  {
    operator delete(__p);
  }

  if (v51 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  return v3;
}

void sub_1BE67FBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 49) < 0)
  {
    operator delete(*(v22 - 72));
  }

  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::EsStemFilter::~EsStemFilter(morphun::analysis::stemmer::EsStemFilter *this)
{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA168);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA138);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA168);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA138);
}

void morphun::dialog::language::EsCommonConceptFactory_EsOrList::getBeforeLast(const morphun::dialog::SemanticFeatureConceptBase *a1@<X1>, const morphun::dialog::SpeakableString *a2@<X2>, const morphun::dialog::SemanticFeatureConceptBase *a3@<X3>, const morphun::dialog::SpeakableString *a4@<X4>, void *a5@<X8>)
{
  v7 = (*(*a4 + 32))(a4, a1, a2, a3);
  v8 = morphun::dialog::language::EsCommonConceptFactory_EsAndList::IMPORTANT_SET(v7);
  {
    operator new();
  }

  if (!morphun::dialog::language::O_SOUND(void)::O_SOUND_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  __p = 0uLL;
  v11 = 0;
  if (morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(v7, v8, morphun::dialog::language::O_SOUND(void)::O_SOUND_, &__p))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, word_1BE80EB7E);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L" o ");
  }

  morphun::dialog::SpeakableString::SpeakableString(a5, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1BE67FE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::EsCommonConceptFactory_EsOrList::~EsCommonConceptFactory_EsOrList(morphun::dialog::language::EsCommonConceptFactory_EsOrList *this)
{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDC040);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDC040);
}

void sub_1BE6800A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  morphun::tokenizer::TokenExtractor::~TokenExtractor(v15, off_1F3CD9C10);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::exception::IllegalStateException::~IllegalStateException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::IllegalStateException::IllegalStateException(morphun::exception::IllegalStateException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A48;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A48;
  return result;
}

void *morphun::exception::IllegalStateException::IllegalStateException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A48;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A48;
  return result;
}

void morphun::analysis::NbAnalyzer::~NbAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAFC0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAFC0);
}

void morphun::dialog::language::DeCommonConceptFactory::quantify(morphun::dialog::language::DeCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a3);
  v6 = *(this + 94);
  npc<morphun::dialog::SemanticFeature const>(v6);
  v7 = (*(*a3 + 104))(a3, v6);
  memset(&v139, 0, sizeof(v139));
  if (v7)
  {
    v8 = v7;
    v9 = (*(*v7 + 32))(v7);
    std::basic_string<char16_t>::operator=(&v139, v9);
    (*(*v8 + 16))(v8);
  }

  v10 = *(this + 95);
  npc<morphun::dialog::SemanticFeature const>(v10);
  v11 = (*(*a3 + 104))(a3, v10);
  v12 = v11;
  memset(&v138, 0, sizeof(v138));
  if (v11)
  {
    v13 = (*(*v11 + 32))(v11);
    std::basic_string<char16_t>::operator=(&v138, v13);
    (*(*v12 + 16))(v12);
  }

  v133 = 0uLL;
  v134 = 0;
  v14 = morphun::dialog::SpeakableString::SpeakableString(v135, &v133);
  size = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v138.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v14 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v14);
    v16 = *(v14 + 23);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v14 + 1);
    }

    v18 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v138.__r_.__value_.__l.__size_;
    }

    if (v16 != v18)
    {
      goto LABEL_35;
    }

    if (v16)
    {
      v19 = &v138;
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v138.__r_.__value_.__r.__words[0];
      }

      if (v17 >= 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = *v14;
      }

      while (v19->__r_.__value_.__s.__data_[0] == *v20)
      {
        v20 = (v20 + 2);
        v19 = (v19 + 2);
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

LABEL_35:
      v27 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v14);
      v28 = *(v27 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v27 + 8);
      }

      v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v138.__r_.__value_.__l.__size_;
      }

      if (v28 != v30)
      {
        goto LABEL_76;
      }

      if (v28)
      {
        v31 = &v138;
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v138.__r_.__value_.__r.__words[0];
        }

        if (v29 >= 0)
        {
          v32 = v27;
        }

        else
        {
          v32 = *v27;
        }

        while (v31->__r_.__value_.__s.__data_[0] == *v32)
        {
          ++v32;
          v31 = (v31 + 2);
          if (!--v28)
          {
            goto LABEL_48;
          }
        }

LABEL_76:
        v45 = morphun::grammar::synthesis::GrammemeConstants::CASE_DATIVE(v27);
        v46 = *(v45 + 23);
        v47 = v46;
        if ((v46 & 0x80u) != 0)
        {
          v46 = *(v45 + 8);
        }

        v48 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = v138.__r_.__value_.__l.__size_;
        }

        if (v46 != v48)
        {
LABEL_117:
          v63 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v45);
          v64 = *(v63 + 23);
          v65 = v64;
          if ((v64 & 0x80u) != 0)
          {
            v64 = *(v63 + 8);
          }

          v66 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v66 = v138.__r_.__value_.__l.__size_;
          }

          if (v64 != v66)
          {
            goto LABEL_245;
          }

          if (v64)
          {
            v67 = &v138;
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v67 = v138.__r_.__value_.__r.__words[0];
            }

            if (v65 >= 0)
            {
              v68 = v63;
            }

            else
            {
              v68 = *v63;
            }

            while (v67->__r_.__value_.__s.__data_[0] == *v68)
            {
              ++v68;
              v67 = (v67 + 2);
              if (!--v64)
              {
                goto LABEL_130;
              }
            }

LABEL_245:
            v130 = v136;
            if ((v136 & 0x80u) != 0)
            {
              v130 = v135[2];
            }

            if (!v130)
            {
              if (v137)
              {
                if ((*(v137 + 23) & 0x8000000000000000) != 0)
                {
                  if (*(v137 + 8))
                  {
                    goto LABEL_254;
                  }
                }

                else if (*(v137 + 23))
                {
                  goto LABEL_254;
                }
              }

              (*(*a2 + 208))(&v133, a2);
              morphun::dialog::SpeakableString::operator=(v135, &v133);
            }

LABEL_254:
            morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, v135, a3);
          }

LABEL_130:
          v69 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v63);
          v70 = *(v69 + 23);
          v71 = v70;
          if ((v70 & 0x80u) != 0)
          {
            v70 = *(v69 + 8);
          }

          v72 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = v139.__r_.__value_.__l.__size_;
          }

          if (v70 == v72)
          {
            if (!v70)
            {
LABEL_143:
              std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"cardinal-n");
              (*(*a2 + 200))(&v133, a2, __p);
              morphun::dialog::SpeakableString::operator=(v135, &v133);
              goto LABEL_243;
            }

            v73 = &v139;
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v73 = v139.__r_.__value_.__r.__words[0];
            }

            if (v71 >= 0)
            {
              v74 = v69;
            }

            else
            {
              v74 = *v69;
            }

            while (v73->__r_.__value_.__s.__data_[0] == *v74)
            {
              ++v74;
              v73 = (v73 + 2);
              if (!--v70)
              {
                goto LABEL_143;
              }
            }
          }

          v93 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v69);
          v94 = *(v93 + 23);
          v95 = *(v93 + 8);
          if (v94 >= 0)
          {
            v95 = *(v93 + 23);
          }

          v96 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v96 = v139.__r_.__value_.__l.__size_;
          }

          if (v95 == v96)
          {
            if (!v95)
            {
              goto LABEL_75;
            }

            v97 = &v139;
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v97 = v139.__r_.__value_.__r.__words[0];
            }

            v98 = v94 >= 0 ? v93 : *v93;
            v99 = v95 - 1;
            do
            {
              v101 = *v98++;
              v100 = v101;
              v103 = v97->__r_.__value_.__s.__data_[0];
              v97 = (v97 + 2);
              v102 = v103;
              v104 = v99-- != 0;
              v105 = v104;
            }

            while (v102 == v100 && (v105 & 1) != 0);
            if (v102 == v100)
            {
              goto LABEL_75;
            }
          }

          v118 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v93);
          v119 = *(v118 + 23);
          v120 = *(v118 + 8);
          if (v119 >= 0)
          {
            v120 = *(v118 + 23);
          }

          v121 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v121 = v139.__r_.__value_.__l.__size_;
          }

          if (v120 != v121)
          {
            goto LABEL_245;
          }

          if (v120)
          {
            v122 = &v139;
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v122 = v139.__r_.__value_.__r.__words[0];
            }

            v123 = v119 >= 0 ? v118 : *v118;
            v124 = v120 - 1;
            do
            {
              v126 = *v123++;
              v125 = v126;
              v128 = v122->__r_.__value_.__s.__data_[0];
              v122 = (v122 + 2);
              v127 = v128;
              v104 = v124-- != 0;
              v129 = v104;
            }

            while (v127 == v125 && (v129 & 1) != 0);
            if (v127 != v125)
            {
              goto LABEL_245;
            }
          }

          goto LABEL_242;
        }

        if (v46)
        {
          v49 = &v138;
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = v138.__r_.__value_.__r.__words[0];
          }

          if (v47 >= 0)
          {
            v50 = v45;
          }

          else
          {
            v50 = *v45;
          }

          while (v49->__r_.__value_.__s.__data_[0] == *v50)
          {
            ++v50;
            v49 = (v49 + 2);
            if (!--v46)
            {
              goto LABEL_89;
            }
          }

          goto LABEL_117;
        }

LABEL_89:
        v51 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v45);
        v52 = *(v51 + 23);
        v53 = v52;
        if ((v52 & 0x80u) != 0)
        {
          v52 = *(v51 + 8);
        }

        v54 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = v139.__r_.__value_.__l.__size_;
        }

        if (v52 == v54)
        {
          if (!v52)
          {
            goto LABEL_171;
          }

          v55 = &v139;
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v55 = v139.__r_.__value_.__r.__words[0];
          }

          if (v53 >= 0)
          {
            v56 = v51;
          }

          else
          {
            v56 = *v51;
          }

          while (v55->__r_.__value_.__s.__data_[0] == *v56)
          {
            ++v56;
            v55 = (v55 + 2);
            if (!--v52)
            {
              goto LABEL_171;
            }
          }
        }

        v81 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v51);
        v82 = *(v81 + 23);
        v83 = v82;
        if ((v82 & 0x80u) != 0)
        {
          v82 = *(v81 + 8);
        }

        v84 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v84 = v139.__r_.__value_.__l.__size_;
        }

        if (v82 != v84)
        {
          goto LABEL_205;
        }

        if (v82)
        {
          v85 = &v139;
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v85 = v139.__r_.__value_.__r.__words[0];
          }

          if (v83 >= 0)
          {
            v86 = v81;
          }

          else
          {
            v86 = *v81;
          }

          while (v85->__r_.__value_.__s.__data_[0] == *v86)
          {
            ++v86;
            v85 = (v85 + 2);
            if (!--v82)
            {
              goto LABEL_171;
            }
          }

LABEL_205:
          v106 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v81);
          v107 = *(v106 + 23);
          v108 = *(v106 + 8);
          if (v107 >= 0)
          {
            v108 = *(v106 + 23);
          }

          v109 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v109 = v139.__r_.__value_.__l.__size_;
          }

          if (v108 != v109)
          {
            goto LABEL_245;
          }

          if (v108)
          {
            v110 = &v139;
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v110 = v139.__r_.__value_.__r.__words[0];
            }

            v111 = v107 >= 0 ? v106 : *v106;
            v112 = v108 - 1;
            do
            {
              v114 = *v111++;
              v113 = v114;
              v116 = v110->__r_.__value_.__s.__data_[0];
              v110 = (v110 + 2);
              v115 = v116;
              v104 = v112-- != 0;
              v117 = v104;
            }

            while (v115 == v113 && (v117 & 1) != 0);
            if (v115 != v113)
            {
              goto LABEL_245;
            }
          }

LABEL_185:
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"cardinal-r");
          (*(*a2 + 200))(&v133, a2, __p);
          morphun::dialog::SpeakableString::operator=(v135, &v133);
          goto LABEL_243;
        }

LABEL_171:
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
        (*(*a2 + 200))(&v133, a2, __p);
        morphun::dialog::SpeakableString::operator=(v135, &v133);
        goto LABEL_243;
      }

LABEL_48:
      v33 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v27);
      v34 = *(v33 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v33 + 8);
      }

      v36 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
      if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v139.__r_.__value_.__l.__size_;
      }

      if (v34 == v36)
      {
        if (!v34)
        {
          goto LABEL_157;
        }

        v37 = &v139;
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v139.__r_.__value_.__r.__words[0];
        }

        if (v35 >= 0)
        {
          v38 = v33;
        }

        else
        {
          v38 = *v33;
        }

        while (v37->__r_.__value_.__s.__data_[0] == *v38)
        {
          ++v38;
          v37 = (v37 + 2);
          if (!--v34)
          {
            goto LABEL_157;
          }
        }
      }

      v75 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v33);
      v76 = *(v75 + 23);
      v77 = v76;
      if ((v76 & 0x80u) != 0)
      {
        v76 = *(v75 + 8);
      }

      v78 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
      if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v78 = v139.__r_.__value_.__l.__size_;
      }

      if (v76 != v78)
      {
        goto LABEL_172;
      }

      if (v76)
      {
        v79 = &v139;
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v79 = v139.__r_.__value_.__r.__words[0];
        }

        if (v77 >= 0)
        {
          v80 = v75;
        }

        else
        {
          v80 = *v75;
        }

        while (v79->__r_.__value_.__s.__data_[0] == *v80)
        {
          ++v80;
          v79 = (v79 + 2);
          if (!--v76)
          {
            goto LABEL_157;
          }
        }

LABEL_172:
        v87 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v75);
        v88 = *(v87 + 23);
        v89 = v88;
        if ((v88 & 0x80u) != 0)
        {
          v88 = *(v87 + 8);
        }

        v90 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v90 = v139.__r_.__value_.__l.__size_;
        }

        if (v88 != v90)
        {
          goto LABEL_245;
        }

        if (v88)
        {
          v91 = &v139;
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v91 = v139.__r_.__value_.__r.__words[0];
          }

          if (v89 >= 0)
          {
            v92 = v87;
          }

          else
          {
            v92 = *v87;
          }

          while (v91->__r_.__value_.__s.__data_[0] == *v92)
          {
            ++v92;
            v91 = (v91 + 2);
            if (!--v88)
            {
              goto LABEL_185;
            }
          }

          goto LABEL_245;
        }

        goto LABEL_185;
      }

LABEL_157:
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80EBA2);
      (*(*a2 + 200))(&v133, a2, __p);
      morphun::dialog::SpeakableString::operator=(v135, &v133);
      goto LABEL_243;
    }
  }

LABEL_21:
  v21 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v14);
  v22 = *(v21 + 23);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(v21 + 8);
  }

  v24 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v139.__r_.__value_.__l.__size_;
  }

  if (v22 == v24)
  {
    if (!v22)
    {
LABEL_34:
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
      (*(*a2 + 200))(&v133, a2, __p);
      morphun::dialog::SpeakableString::operator=(v135, &v133);
      goto LABEL_243;
    }

    v25 = &v139;
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v139.__r_.__value_.__r.__words[0];
    }

    if (v23 >= 0)
    {
      v26 = v21;
    }

    else
    {
      v26 = *v21;
    }

    while (v25->__r_.__value_.__s.__data_[0] == *v26)
    {
      ++v26;
      v25 = (v25 + 2);
      if (!--v22)
      {
        goto LABEL_34;
      }
    }
  }

  v39 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v21);
  v40 = *(v39 + 23);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(v39 + 8);
  }

  v42 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = v139.__r_.__value_.__l.__size_;
  }

  if (v40 == v42)
  {
    if (!v40)
    {
LABEL_75:
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"cardinal-feminine");
      (*(*a2 + 200))(&v133, a2, __p);
      morphun::dialog::SpeakableString::operator=(v135, &v133);
      goto LABEL_243;
    }

    v43 = &v139;
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v43 = v139.__r_.__value_.__r.__words[0];
    }

    if (v41 >= 0)
    {
      v44 = v39;
    }

    else
    {
      v44 = *v39;
    }

    while (v43->__r_.__value_.__s.__data_[0] == *v44)
    {
      ++v44;
      v43 = (v43 + 2);
      if (!--v40)
      {
        goto LABEL_75;
      }
    }
  }

  v57 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v39);
  v58 = *(v57 + 23);
  v59 = v58;
  if ((v58 & 0x80u) != 0)
  {
    v58 = *(v57 + 8);
  }

  v60 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v60 = v139.__r_.__value_.__l.__size_;
  }

  if (v58 != v60)
  {
    goto LABEL_245;
  }

  if (v58)
  {
    v61 = &v139;
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v61 = v139.__r_.__value_.__r.__words[0];
    }

    if (v59 >= 0)
    {
      v62 = v57;
    }

    else
    {
      v62 = *v57;
    }

    while (v61->__r_.__value_.__s.__data_[0] == *v62)
    {
      ++v62;
      v61 = (v61 + 2);
      if (!--v58)
      {
        goto LABEL_242;
      }
    }

    goto LABEL_245;
  }

LABEL_242:
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"cardinal-neuter");
  (*(*a2 + 200))(&v133, a2, __p);
  morphun::dialog::SpeakableString::operator=(v135, &v133);
LABEL_243:
  if (v132 < 0)
  {
    operator delete(__p[0]);
  }

  goto LABEL_245;
}