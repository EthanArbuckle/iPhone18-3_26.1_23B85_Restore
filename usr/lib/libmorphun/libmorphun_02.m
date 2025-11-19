void sub_1BE58F6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  MEMORY[0x1BFB49160](v38, 0x20C40960023A9);
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

  _Unwind_Resume(a1);
}

uint64_t *std::basic_string<char16_t>::ends_with[abi:se200100](uint64_t *result, unsigned __int16 *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
      }

      while (a2[++v4]);
    }

    else
    {
      v5 = 0;
    }

    v7 = *(result + 23);
    if (v7 < 0)
    {
      v8 = result;
      result = *result;
      v7 = v8[1];
    }

    v9[2] = v2;
    v9[3] = v3;
    v9[0] = result;
    v9[1] = v7;
    return std::u16string_view::ends_with[abi:se200100](v9, a2, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t npc<std::vector<std::u16string_view>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::stemmer::SvStemFilter::~SvStemFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9F88);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9F88);
}

uint64_t mlogc_logToConsole(int a1)
{
  if (a1)
  {
    v1 = morphun::util::logClog;
  }

  else
  {
    v1 = 0;
  }

  return morphun::util::Logger::registerLogger(MEMORY[0x1E69E5308], v1);
}

void morphun::dialog::language::EtCommonConceptFactory::~EtCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEDFA0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEDFA0);
}

void morphun::grammar::synthesis::SvGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::SvGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE5911B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_free_exception(v41);
  MEMORY[0x1BFB49160](v39, v40);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>(morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>(morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5917D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE591A14(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE591D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE591F78(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE592180(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1020C405F07FB98);
  morphun::analysis::filter::LanguageExpansion::~LanguageExpansion(v2 + 18);
  morphun::analysis::TokenFilter::~TokenFilter(v2, off_1F3CDA388);
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

morphun::analysis::TokenStream *morphun::analysis::ConfigurableAnalyzer::addToNativeScriptTransliterationFilter(morphun::analysis::ConfigurableAnalyzer *this, morphun::analysis::TokenStream *a2)
{
  v4 = morphun::util::LocaleUtils::ROOT(this);
  if (morphun::transliteration::TransliteratorFactory::createTransliterator(v4, (this + 80), v5))
  {
    operator new();
  }

  return a2;
}

void sub_1BE5922D4(_Unwind_Exception *a1, std::basic_string<char16_t> *a2, void *__p, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, __int128 __pa, uint64_t a13)
{
  v15 = a2;
  MEMORY[0x1BFB49160](v14, 0x10F3C4027F2FEB2, __p);
  if (v15 == 1)
  {
    __cxa_begin_catch(a1);
    if (morphun::util::gLogLevel <= 1)
    {
      v17 = *(v13 + 207);
      if (v17 < 0)
      {
        v18 = *(v13 + 184);
        v17 = *(v13 + 192);
      }

      else
      {
        v18 = (v13 + 184);
      }

      morphun::util::StringViewUtils::to_u16string(v18, v17, &a10);
      std::basic_string<char16_t>::insert(&a10, L"Failed to load the transliterator to ", 0x25, v19);
      __pa = a10;
      a13 = a11;
      a11 = 0;
      a10 = 0uLL;
      if (morphun::util::gLogLevel <= 1)
      {
        if (a13 >= 0)
        {
          p_pa = &__pa;
        }

        else
        {
          p_pa = __pa;
        }

        morphun::util::logToTopOfStackLogger(1, 0, p_pa);
      }

      if (SHIBYTE(a13) < 0)
      {
        operator delete(__pa);
      }

      if (SHIBYTE(a11) < 0)
      {
        operator delete(a10);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1BE5922B8);
  }

  _Unwind_Resume(a1);
}

morphun::analysis::TokenStream *morphun::analysis::ConfigurableAnalyzer::addToLatinScriptTransliterationFilter(morphun::analysis::ConfigurableAnalyzer *this, morphun::analysis::TokenStream *a2)
{
  v4 = morphun::util::LocaleUtils::ENGLISH(this);
  if (morphun::transliteration::TransliteratorFactory::createTransliterator((this + 80), v4, v5))
  {
    operator new();
  }

  return a2;
}

void sub_1BE59248C(_Unwind_Exception *a1, std::basic_string<char16_t> *a2, std::basic_string<char16_t> *a3, uint64_t a4, void *__p, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 __pa, uint64_t a16)
{
  v18 = a2;
  MEMORY[0x1BFB49160](v17, 0x10F3C4027F2FEB2, a3, a4, __p);
  if (v18 == 1)
  {
    __cxa_begin_catch(a1);
    if (morphun::util::gLogLevel <= 1)
    {
      v20 = *(v16 + 207);
      if (v20 < 0)
      {
        v21 = *(v16 + 184);
        v20 = *(v16 + 192);
      }

      else
      {
        v21 = (v16 + 184);
      }

      morphun::util::StringViewUtils::to_u16string(v21, v20, &a10);
      std::basic_string<char16_t>::insert(&a10, L"Failed to load the transliterator from ", 0x27, v22);
      a12 = a10;
      a13 = a11;
      a11 = 0;
      a10 = 0uLL;
      std::basic_string<char16_t>::append(&a12, L" to Latin", 9uLL);
      __pa = a12;
      a16 = a13;
      a13 = 0;
      a12 = 0uLL;
      if (morphun::util::gLogLevel <= 1)
      {
        if (a16 >= 0)
        {
          p_pa = &__pa;
        }

        else
        {
          p_pa = __pa;
        }

        morphun::util::logToTopOfStackLogger(1, 0, p_pa);
      }

      if (SHIBYTE(a16) < 0)
      {
        operator delete(__pa);
      }

      if (SHIBYTE(a13) < 0)
      {
        operator delete(a12);
      }

      if (SHIBYTE(a11) < 0)
      {
        operator delete(a10);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1BE592470);
  }

  _Unwind_Resume(a1);
}

void sub_1BE5926E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](va);
  morphun::analysis::TokenFilter::~TokenFilter(v3, off_1F3CDA458);
  MEMORY[0x1BFB49160](v3, v2);
  _Unwind_Resume(a1);
}

void morphun::analysis::ConfigurableAnalyzer::createTokenChain(morphun::analysis::ConfigurableAnalyzer *this, const morphun::Chunk *a2)
{
  memset(&v21, 0, sizeof(v21));
  npc<morphun::Chunk const>(a2);
  v4 = (*(*a2 + 48))(a2);
  v5 = npc<morphun::Token>(v4);
  v6 = (*(*v5 + 24))(v5);
  v7 = (*(*a2 + 56))(a2);
  v8 = npc<morphun::Token>(v7);
  v9 = (*(*v8 + 32))(v8);
  std::basic_string<char16_t>::resize(&v21, v9 - v6, 0);
  v10 = *(a2 + 8);
  v11 = *(a2 + 2);
  if (v11)
  {
    v12 = *(v11 + 80);
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v20 = *(&v10 + 1);
    v17 = v10;
    if (v12 == v10)
    {
      break;
    }

    if (*(v10 + 12) > *(v10 + 8))
    {
      v13 = ((*(*v10 + 24))(v10) - v6);
      v14 = *(v17 + 39);
      if (v14 >= 0)
      {
        v15 = (v17 + 16);
      }

      else
      {
        v15 = *(v17 + 16);
      }

      if (v14 >= 0)
      {
        v16 = *(v17 + 39);
      }

      else
      {
        v16 = *(v17 + 24);
      }

      std::basic_string<char16_t>::replace(&v21, v13, *(v17 + 12) - *(v17 + 8), v15, v16);
    }

    npc<morphun::Token const>(v17);
    *(&v10 + 1) = v20;
    *&v10 = *(v17 + 80);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v21;
  }

  else
  {
    v18 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v21.__r_.__value_.__r.__words[1];
  }

  morphun::analysis::ConfigurableAnalyzer::createTokenChain(this, a2, v18, v19);
}

void sub_1BE592928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::Chunk const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t npc<morphun::Token>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n1, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n2)
{
  v5 = __n2;
  v6 = __s;
  v7 = __pos;
  if (!__s && __n2)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = size - __pos;
    if (size < __pos)
    {
      goto LABEL_43;
    }

    if (v10 >= __n1)
    {
      v11 = __n1;
    }

    else
    {
      v11 = size - __pos;
    }

    v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size + v12 < __n2)
    {
      goto LABEL_15;
    }

    v13 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v10 = size - __pos;
    if (size < __pos)
    {
      goto LABEL_43;
    }

    if (v10 >= __n1)
    {
      v11 = __n1;
    }

    else
    {
      v11 = size - __pos;
    }

    if (v11 - size + 10 < __n2)
    {
      v12 = 10;
LABEL_15:
      std::basic_string<char16_t>::__grow_by_and_replace(this, v12, size + __n2 - v12 - v11, size, v7, v11, __n2, __s);
      return this;
    }

    v13 = this;
  }

  if (__n2 != v11)
  {
    v14 = v10 - v11;
    if (v10 == v11)
    {
      goto LABEL_34;
    }

    v15 = v13 + 2 * v7;
    v16 = __n2 - v11;
    if (__n2 < v11)
    {
      if (__n2)
      {
        memmove(v13 + 2 * v7, __s, 2 * __n2);
      }

      memmove(&v15[2 * v5], &v15[2 * v11], 2 * v14);
      v17 = size + v16;
      goto LABEL_37;
    }

    v18 = v13 + 2 * size;
    if (v18 >= (v15 + 2))
    {
      if (v18 > __s && v15 + 2 <= __s)
      {
        if (&v15[2 * v11] <= __s)
        {
          v6 = &__s[v16];
        }

        else
        {
          if (v11)
          {
            memmove(v13 + 2 * v7, __s, 2 * v11);
          }

          v7 += v11;
          v6 += v5;
          v5 -= v11;
          v11 = 0;
        }
      }

      memmove(v13 + 2 * v7 + 2 * v5, v13 + 2 * v7 + 2 * v11, 2 * v14);
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v11 = __n2;
LABEL_34:
  if (v5)
  {
    memmove(v13 + 2 * v7, v6, 2 * v5);
  }

  v17 = v5 - v11 + size;
LABEL_37:
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v17;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
  }

  v13->__r_.__value_.__s.__data_[v17] = 0;
  return this;
}

void morphun::analysis::ConfigurableAnalyzer::splitDelimiters(morphun::analysis::ConfigurableAnalyzer *this, uint64_t a2, uint64_t *a3, morphun::Token **a4, char **lpsrc, const morphun::Chunk *a6)
{
  v9 = this;
  {
    v13 = *v11;
    a4 = (*(*v14 + 152))(v14, a2);
    if (a4)
    {
LABEL_8:
      (*(*a4 + 3))(a4);
      (*(*a4 + 4))(a4);
      v15 = *a3;
      operator new();
    }
  }

  else
  {
    while (a4)
    {
      if ((*(*a4 + 3))(a4) >= a2)
      {
        goto LABEL_8;
      }

      a4 = a4[10];
    }
  }

  exception = __cxa_allocate_exception(0x38uLL);
  v17 = a2;
  v18 = exception;
  morphun::util::StringUtils::to_u16string(v17, &v23);
  std::basic_string<char16_t>::insert(&v23, L"Cannot locate the sub-chunk from ", 0x21, v19);
  v24 = v23;
  memset(&v23, 0, sizeof(v23));
  std::basic_string<char16_t>::append(&v24, L" to ", 4uLL);
  v25 = v24;
  memset(&v24, 0, sizeof(v24));
  morphun::util::StringUtils::to_u16string(v9, &v22);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v22;
  }

  else
  {
    v20 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v25, v20, size);
  v26 = v25;
  memset(&v25, 0, sizeof(v25));
  morphun::exception::IllegalStateException::IllegalStateException(v18, &v26);
}

void sub_1BE592F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v36 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v35);
  goto LABEL_14;
}

uint64_t morphun::analysis::ConfigurableAnalyzer::addDelimitersFromOffsets(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 72);
  v11 = (*(*a6 + 64))(a6);
  result = (*(*a6 + 72))(a6);
  if (*result == *(result + 8))
  {
    return a5;
  }

  v19 = v10 & 6;
  v13 = **result;
  memset(&v21, 0, sizeof(v21));
  v14 = v11 - a4;
  if (a3 < v11 - a4)
  {
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  v15 = (a2 + 2 * v14);
  v16 = a3 - v14;
  if (v16 >= v13 - v11)
  {
    v17 = v13 - v11;
  }

  else
  {
    v17 = v16;
  }

  if (v19)
  {
    morphun::util::StringViewUtils::lowercase(&v21, v15, v17, a1 + 80);
    goto LABEL_11;
  }

  if (a2 || !v17)
  {
    std::basic_string<char16_t>::__assign_external(&v21, v15, v17);
LABEL_11:
    operator new();
  }

  __break(1u);
  return result;
}

void sub_1BE59323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MEMORY[0x1BFB49160](v19, 0x10B3C405B5873CALL);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__assign_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(void **result, const std::basic_string<char16_t> *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 4) < a4)
  {
    if (v9)
    {
      v10 = result[1];
      v11 = *result;
      if (v10 != v9)
      {
        v12 = v10 - 48;
        v13 = v10 - 48;
        v14 = v10 - 48;
        do
        {
          v15 = *v14;
          v14 -= 48;
          (*(v15 + 8))(v13);
          v12 -= 48;
          v16 = v13 == v9;
          v13 = v14;
        }

        while (!v16);
        v11 = *v7;
      }

      v7[1] = v9;
      operator delete(v11);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v18;
      }

      std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__vallocate[abi:se200100](v7, v19);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v20 = result[1];
  v21 = v20 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *(v9 + 8) = *&v6->__r_.__value_.__r.__words[1];
        result = std::basic_string<char16_t>::operator=(v9 + 1, v6 + 1);
        v6 += 2;
        v9 += 48;
      }

      while (v6 != a3);
      v20 = v7[1];
    }

    if (v20 != v9)
    {
      v25 = v20 - 48;
      v26 = (v20 - 48);
      v27 = (v20 - 48);
      do
      {
        v28 = *v27;
        v27 -= 48;
        result = (*(v28 + 8))(v26);
        v25 -= 48;
        v16 = v26 == v9;
        v26 = v27;
      }

      while (!v16);
    }

    v7[1] = v9;
  }

  else
  {
    if (v20 != v9)
    {
      v22 = (v9 + 24);
      v23 = a2 + 1;
      v24 = v21;
      do
      {
        *&v22[-1].__r_.__value_.__r.__words[1] = *&v23[-1].__r_.__value_.__r.__words[1];
        std::basic_string<char16_t>::operator=(v22, v23);
        v22 += 2;
        v23 += 2;
        v24 -= 48;
      }

      while (v24);
      v20 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>,morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(v6 + v21, a3, v20);
    v7[1] = result;
  }

  return result;
}

void std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*(v9 + 8))(v7);
        v6 -= 48;
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>,morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      if (!(a3 + v6))
      {
        __break(1u);
        JUMPOUT(0x1BE59362CLL);
      }

      v7 = a3 + v6;
      *v7 = &off_1F3CD2DC8;
      v8 = a1 + v6;
      *(v7 + 8) = *(a1 + v6 + 8);
      if (*(a1 + v6 + 47) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external((v7 + 24), *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v9 = *(v8 + 24);
        *(v7 + 40) = *(v8 + 40);
        *(v7 + 24) = v9;
      }

      v6 += 48;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::__shared_ptr_pointer<morphun::analysis::util::AttributeImpl *,std::shared_ptr<morphun::analysis::util::AttributeImpl>::__shared_ptr_default_delete<morphun::analysis::util::AttributeImpl,morphun::analysis::util::AttributeImpl>,std::allocator<morphun::analysis::util::AttributeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), 0x80000001BE7E9B81))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<morphun::analysis::util::AttributeImpl *,std::shared_ptr<morphun::analysis::util::AttributeImpl>::__shared_ptr_default_delete<morphun::analysis::util::AttributeImpl,morphun::analysis::util::AttributeImpl>,std::allocator<morphun::analysis::util::AttributeImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<morphun::analysis::util::AttributeImpl *,std::shared_ptr<morphun::analysis::util::AttributeImpl>::__shared_ptr_default_delete<morphun::analysis::util::AttributeImpl,morphun::analysis::util::AttributeImpl>,std::allocator<morphun::analysis::util::AttributeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFB49160);
}

void morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

morphun::analysis::Analyzer *morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(morphun::analysis::Analyzer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F3CD9158;
  v8 = morphun::analysis::Analyzer::Analyzer(a1, off_1F3CDA918);
  *(v8 + 8) = a3;
  *(v8 + 9) = a4;
  *v8 = &unk_1F3CD2180;
  morphun::util::ULocale::ULocale(v8 + 80, a2);
  return a1;
}

void virtual thunk tomorphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(morphun::analysis::ConfigurableAnalyzer *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void sub_1BE593AD8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1020C405F07FB98);
  MEMORY[0x1BFB49160](v1, v2);
  _Unwind_Resume(a1);
}

_BYTE *std::basic_string<char16_t>::basic_string<std::u16string_view,0>(_BYTE *a1, _WORD *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_14:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a3 > 0xA)
  {
    if ((a3 | 3) == 0xB)
    {
      v4 = 13;
    }

    else
    {
      v4 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v4);
  }

  a1[23] = a3;
  v5 = &a1[2 * a3];
  if (a1 <= __src && v5 > __src)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a3)
  {
    memmove(a1, __src, 2 * a3);
  }

  *v5 = 0;
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>::operator()[abi:se200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void morphun::resources::DataRegistrationService::getDataPathForLocale(morphun::resources::DataRegistrationService *this@<X0>, std::string *a2@<X8>)
{
  morphun::resources::fallthroughLocaleString(&__p, this);
  v5 = morphun::resources::CLASS_MUTEX(v4);
  std::mutex::lock(v5);
  v7 = morphun::resources::PATHS_MAP(v6);
  npc<std::map<std::string,std::string>>(v7);
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v7, &__p);
  if (v7 + 8 == v8)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else if (*(v8 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v8 + 56), *(v8 + 64));
  }

  else
  {
    v9 = *(v8 + 56);
    a2->__r_.__value_.__r.__words[2] = *(v8 + 72);
    *&a2->__r_.__value_.__l.__data_ = v9;
  }

  std::mutex::unlock(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE593D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::exception::IOException::~IOException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::IOException::IOException(morphun::exception::IOException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0BB0;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0BB0;
  return result;
}

void *morphun::exception::IOException::IOException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0BB0;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0BB0;
  return result;
}

void morphun::dialog::DictionaryLookupFunction::determinePhrase(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v40 = 0;
  v8 = *(a1 + 16);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v8, &v40, v10, v11);
  v12 = *(a1 + 168) & v40;
  if ((v12 ^ (v12 - 1)) > v12 - 1)
  {
    morphun::dictionary::DictionaryMetaData::getPropertyName(*(a1 + 16), v12, a4);
    return;
  }

  memset(v39, 0, 7);
  if (v40)
  {
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
LABEL_46:
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 16) = v39[0];
    *(a4 + 19) = *(v39 + 3);
    *(a4 + 23) = v15;
    return;
  }

  v16 = (*(**(a1 + 160) + 24))(*(a1 + 160), a2);
  v32 = npc<morphun::TokenChain>(v16);
  if ((*(*v32 + 32))() < 2)
  {
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
LABEL_45:
    (*(*v32 + 16))(v32);
    goto LABEL_46;
  }

  v35 = 0;
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  v33 = a3;
  if (v18)
  {
    v19 = *(v18 + 80);
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
  v14 = 0;
  while (1)
  {
    v34 = *(&v17 + 1);
    v21 = v17;
    if (v19 == v17)
    {
      break;
    }

    v22 = *v17;
    v23 = **v17;
    {
      if (!v20)
      {
        v24 = *v22;
      }

      v25 = *(v21 + 63);
      v26 = v25 >= 0 ? (v21 + 5) : v21[5];
      v27 = v25 >= 0 ? *(v21 + 63) : v21[6];
      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a1 + 16), &v35, v26, v27))
      {
        if ((*(a1 + 168) & v35) != 0)
        {
          v28 = **v21;
          if (v33)
          {
            break;
          }
        }
      }
    }

    npc<morphun::Token const>(v21);
    *(&v17 + 1) = v34;
    *&v17 = v21[10];
  }

  if (!v14)
  {
    v15 = 0;
    v13 = 0;
    goto LABEL_35;
  }

  morphun::dialog::DictionaryLookupFunction::determine(a1, v14 + 16, &v35);
  v13 = v35;
  v14 = v36;
  v39[0] = *v37;
  *(v39 + 3) = *&v37[3];
  v15 = v38;
  if ((v38 & 0x80000000) == 0)
  {
LABEL_35:
    v29 = 0;
    v30 = v15;
    goto LABEL_36;
  }

  v29 = 1;
  v30 = v36;
LABEL_36:
  if (!v30 && v20)
  {
    morphun::dialog::DictionaryLookupFunction::determine(a1, v20 + 16, &v35);
    if (v29)
    {
      operator delete(v13);
    }

    v13 = v35;
    v14 = v36;
    v39[0] = *v37;
    *(v39 + 3) = *&v37[3];
    LOBYTE(v15) = v38;
  }

  if ((v15 & 0x80u) == 0)
  {
    v31 = v15;
  }

  else
  {
    v31 = v14;
  }

  if (v31)
  {
    goto LABEL_45;
  }

  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, a4);
  (*(*v32 + 16))(v32);
  if ((v15 & 0x80) != 0)
  {
    operator delete(v13);
  }
}

void sub_1BE594200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*a9 + 16))(a9);
  if (v9 < 0)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DictionaryLookupFunction::determine(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = 0;
  v6 = *(a1 + 16);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v6, &v23, v8, v9);
  v10 = *(a1 + 168) & v23;
  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (*(a1 + 200) != 1 || v11.u32[0] == 1)
  {
    morphun::dictionary::DictionaryMetaData::getPropertyName(*(a1 + 16), v10, a3);
  }

  else
  {
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    morphun::analysis::DictionaryExposableMorphology::getWordGrammemeSets(&v24, a1 + 8, v14, v15);
    v16 = v24;
    if (v24 == v25)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
LABEL_35:
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      v17 = (*(a1 + 184) - *(a1 + 176)) >> 3;
      if (v17 != -1)
      {
        if (!((v17 + 1) >> 61))
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(v17 + 1);
        }

        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      v18 = *(a1 + 176);
      v19 = *(a1 + 184);
      v20 = v24;
      while (v18 == v19)
      {
        v21 = 0;
LABEL_32:
        if (v21 == v19 - v18)
        {
          goto LABEL_39;
        }

        if (++v20 == v25)
        {
          *a3 = 0;
          a3[1] = 0;
          a3[2] = 0;
          goto LABEL_35;
        }
      }

      v21 = 0;
      v22 = *(a1 + 176);
      while ((*v22 & *v20) == 0)
      {
        ++v21;
        if (++v22 == v19)
        {
          goto LABEL_32;
        }
      }

LABEL_39:
      __break(1u);
    }
  }
}

void sub_1BE59450C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::DictionaryLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  (*(*a1 + 32))(__p, a1, v3);
  v4 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    operator new();
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1BE594614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x10B3C40F7FF9C27);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(morphun::dialog::DictionaryLookupFunction *this)
{
  *this = &unk_1F3CD8738;
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
  *this = &unk_1F3CD8738;
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

void morphun::dialog::DictionaryLookupFunction::DictionaryLookupFunction(uint64_t *a1, uint64_t *a2, const morphun::util::ULocale *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology((a1 + 1), a3);
  morphun::TokenizerFactory::createTokenizer(a3, v5);
}

{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology((a1 + 1), a3);
  morphun::TokenizerFactory::createTokenizer(a3, v5);
}

void sub_1BE594918(_Unwind_Exception *a1)
{
  v3 = *(v1 + 176);
  if (v3)
  {
    *(v1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  *(v1 + 8) = &unk_1F3CD2000;
  _Unwind_Resume(a1);
}

void morphun::dialog::DictionaryLookupFunction::DictionaryLookupFunction(void *a1, const morphun::util::ULocale *a2)
{
  *a1 = &unk_1F3CD8738;
  morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology((a1 + 1), a2);
  morphun::TokenizerFactory::createTokenizer(a2, v3);
}

{
  *a1 = &unk_1F3CD8738;
  morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology((a1 + 1), a2);
  morphun::TokenizerFactory::createTokenizer(a2, v3);
}

void sub_1BE594A8C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 176);
  if (v3)
  {
    *(v1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  *(v1 + 8) = &unk_1F3CD2000;
  _Unwind_Resume(a1);
}

void sub_1BE594C70(_Unwind_Exception *a1)
{
  v3 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(v1 + 8) = &unk_1F3CD2000;
  _Unwind_Resume(a1);
}

void *morphun::dialog::DictionaryLookupFunction::convertDisambiguationPartsOfSpeech(void *a1, uint64_t a2, __int128 **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long long>::reserve(a1, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v5 = *a3;
  if (*a3 != a3[1])
  {
    if (*(v5 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v9, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      v9.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&v9.__r_.__value_.__l.__data_ = v6;
    }

    memset(v8, 0, sizeof(v8));
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v8, &v9, &v10, 1uLL);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE594ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE594FCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(v1 + 8) = &unk_1F3CD2000;
  _Unwind_Resume(a1);
}

void morphun::dialog::DictionaryLookupFunction::getFirstWord(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 24))(a2, a3);
  v5 = npc<morphun::TokenChain>(v4);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v7 + 80);
  }

  else
  {
    v8 = 0;
  }

  while (1)
  {
    v13 = *(&v6 + 1);
    v9 = v6;
    if (v8 == v6)
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_11;
    }

    v10 = **v6;
    {
      break;
    }

    npc<morphun::Token const>(v9);
    *(&v6 + 1) = v13;
    *&v6 = *(v9 + 80);
  }

  if (*(v9 + 63) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1, *(v9 + 40), *(v9 + 48));
  }

  else
  {
    v11 = *(v9 + 40);
    a1->__r_.__value_.__r.__words[2] = *(v9 + 56);
    *&a1->__r_.__value_.__l.__data_ = v11;
  }

LABEL_11:
  if (v4)
  {
    v12 = *(*v4 + 16);

    v12(v4);
  }
}

void sub_1BE5951D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::tokenizer::locale::fi::FiCompound::FiCompound(uint64_t a1, uint64_t a2)
{
  npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(a2);
  *a1 = *a2;
  *(a1 + 8) = a2;
  v4 = npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(a2);
  *(a1 + 16) = *(a2 + 8);
  npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(v4);
  *(a1 + 20) = *(a2 + 12);
  return a1;
}

uint64_t npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::tokenizer::locale::fi::FiCompound::addBoundaries(uint64_t a1, int a2, void *a3)
{
  if (a2 <= 0)
  {
    goto LABEL_49;
  }

  if (*(npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(*(a1 + 8)) + 12) != 1)
  {
    *(a1 + 16) = -990248960;
    *(a1 + 20) = 0;
    v7 = npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(*(a1 + 8));
    v8 = *(npc<morphun::tokenizer::locale::fi::FiSegment>(*v7) + 64);
    v9 = npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(*(a1 + 8));
    v10 = *(npc<morphun::tokenizer::locale::fi::FiSegment>(*v9) + 68);
    if (v8 + 3 >= v10 - 2)
    {
      return;
    }

    v11 = v8 + 5;
    while (1)
    {
      morphun::tokenizer::locale::fi::FiSegment::FiSegment(v41, *a1, v8, v11 - 2, 0);
      v39[0] = 0;
      v39[1] = 0;
      v40 = 0;
      morphun::tokenizer::locale::fi::FiSegment::addBoundaries(v41, v39);
      if (v43 == 1)
      {
        v12 = 1;
        v13 = v42;
      }

      else
      {
        v32 = v41;
        *&v33 = -1000.0;
        v34 = v43;
        v39[1] = v39[0];
        morphun::tokenizer::locale::fi::FiSuffixSplit::addBoundaries(&v32, v39, 1);
        v12 = v34;
        if (*(a1 + 20) == 1 && (v34 & 1) == 0)
        {
          goto LABEL_43;
        }

        v13 = *&v33;
      }

      morphun::tokenizer::locale::fi::FiSegment::FiSegment(&v32, *a1, v11 - 2, v10, 1);
      __p[0] = 0;
      __p[1] = 0;
      v31 = 0;
      morphun::tokenizer::locale::fi::FiSegment::addBoundaries(&v32, __p);
      if (v38 == 1)
      {
        v14 = v35;
      }

      else
      {
        v27 = &v32;
        *&v28 = -1000.0;
        v29 = v38;
        __p[1] = __p[0];
        morphun::tokenizer::locale::fi::FiSuffixSplit::addBoundaries(&v27, __p, 0);
        v14 = *&v28;
        if ((v29 & 1) == 0)
        {
          if ((*(a1 + 20) & 1) != 0 || ((v12 ^ 1) & 1) != 0 || v37 - v36 < 7)
          {
            v12 = 0;
          }

          else
          {
            morphun::tokenizer::locale::fi::FiCompound::FiCompound(v25, &v27);
            __p[1] = __p[0];
            morphun::tokenizer::locale::fi::FiCompound::addBoundaries(v25, (a2 - 1), __p);
            v12 = 0;
            v14 = v26;
          }
        }
      }

      v15 = v13 + v14;
      if (v15 > *(a1 + 16) || (*(a1 + 20) & 1) == 0 && ((v12 ^ 1) & 1) == 0)
      {
        npc<std::vector<int>>(a3);
        v16 = *a3;
        a3[1] = *a3;
        if (v39[0] != v39[1])
        {
          std::vector<int>::__insert_with_size[abi:se200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a3, v16, v39[0], v39[1], (v39[1] - v39[0]) >> 2);
          v16 = a3[1];
        }

        v17 = a3[2];
        if (v16 >= v17)
        {
          v19 = &v16[-*a3];
          v20 = (v19 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
          }

          v21 = v17 - *a3;
          v22 = v21 >> 1;
          if (v21 >> 1 <= v20)
          {
            v22 = (v19 >> 2) + 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v23);
          }

LABEL_48:
          __break(1u);
LABEL_49:
          exception = __cxa_allocate_exception(0x38uLL);
          *(exception + 8) = 0u;
          *(exception + 24) = 0u;
          *(exception + 40) = 0u;
          *exception = &unk_1F3CD09A8;
        }

        if (!v16)
        {
          goto LABEL_48;
        }

        *v16 = v11 - 2;
        v18 = v16 + 4;
        a3[1] = v18;
        if (__p[0] != __p[1])
        {
          std::vector<int>::__insert_with_size[abi:se200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a3, v18, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
        }

        *(a1 + 16) = v15;
        if (v12)
        {
          *(a1 + 20) = 1;
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

LABEL_43:
      if (v39[0])
      {
        v39[1] = v39[0];
        operator delete(v39[0]);
      }

      if (v10 == ++v11)
      {
        return;
      }
    }
  }

  *(a1 + 16) = *(npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(*(a1 + 8)) + 8);
  v6 = npc<morphun::tokenizer::locale::fi::FiSuffixSplit>(*(a1 + 8));

  morphun::tokenizer::locale::fi::FiSuffixSplit::addBoundaries(v6, a3, 0);
}

void sub_1BE5956E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<std::vector<int>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void std::vector<int>::__insert_with_size[abi:se200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
    if (!(v12 >> 62))
    {
      v13 = v9 - v11;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (__dst - v11) >> 2;
      if (v14)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v14);
      }

      v32 = 4 * a5;
      v33 = (4 * v15);
      v34 = (4 * v15 + 4 * a5);
      while (v33)
      {
        v35 = *v6++;
        *v33++ = v35;
        v32 -= 4;
        if (!v32)
        {
          memcpy(v34, __dst, *(a1 + 8) - __dst);
          v36 = *a1;
          v37 = &v34[*(a1 + 8) - __dst];
          *(a1 + 8) = __dst;
          v38 = (__dst - v36);
          v39 = (4 * v15 - (__dst - v36));
          memcpy(v39, v36, v38);
          v40 = *a1;
          *a1 = v39;
          *(a1 + 8) = v37;
          *(a1 + 16) = 0;
          if (v40)
          {

            operator delete(v40);
          }

          return;
        }
      }

      __break(1u);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v28 = &__dst[4 * a5];
    v29 = &v10[-4 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v28);
    }

    v27 = 4 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[4 * a5];
    v22 = &v10[v19];
    if (&v20[-4 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -4 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 4;
        v23 += 4;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

void std::__allocate_at_least[abi:se200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t morphun::grammar::synthesis::ArGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[3]);
  v7 = v6;
  v8 = a3 + 8;
  if (a3 + 8 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v6 + 104);
  }

  {
    operator new();
  }

  if (v8 == v7)
  {
    goto LABEL_16;
  }

  v10 = morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounCount>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounCount(std::basic_string<char16_t> const*)::valueMap);
  v13 = *(v10 + 8);
  v11 = v10 + 8;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v11;
  do
  {
    v15 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v12 + 32), v9);
    if ((v15 & 0x80u) == 0)
    {
      v14 = v12;
    }

    v12 = *(v12 + ((v15 >> 4) & 8));
  }

  while (v12);
  if (v14 == v11 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v9, (v14 + 32)) & 0x80) != 0)
  {
LABEL_13:
    v14 = v11;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounCount>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v14)
  {
LABEL_16:
    v16 = 0;
  }

  else
  {
    v16 = *(v14 + 56);
  }

  v17 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[4]);
  v18 = v17;
  if (v8 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v17 + 104);
  }

  {
    operator new();
  }

  if (v8 == v18)
  {
    goto LABEL_32;
  }

  v20 = morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounGender>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounGender(std::basic_string<char16_t> const*)::valueMap);
  v23 = *(v20 + 8);
  v21 = v20 + 8;
  v22 = v23;
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = v21;
  do
  {
    v25 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v22 + 32), v19);
    if ((v25 & 0x80u) == 0)
    {
      v24 = v22;
    }

    v22 = *(v22 + ((v25 >> 4) & 8));
  }

  while (v22);
  if (v24 == v21 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v19, (v24 + 32)) & 0x80) != 0)
  {
LABEL_29:
    v24 = v21;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounGender>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPronounGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v24)
  {
LABEL_32:
    v26 = 0;
  }

  else
  {
    v26 = *(v24 + 56);
  }

  v27 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[5]);
  v28 = v27;
  if (v8 == v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = (v27 + 104);
  }

  {
    operator new();
  }

  if (v8 == v28)
  {
    goto LABEL_48;
  }

  v30 = morphun::grammar::synthesis::ArGrammarSynthesizer::getPerson(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::Person>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPerson(std::basic_string<char16_t> const*)::valueMap);
  v33 = *(v30 + 8);
  v31 = v30 + 8;
  v32 = v33;
  if (!v33)
  {
    goto LABEL_45;
  }

  v34 = v31;
  do
  {
    v35 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v32 + 32), v29);
    if ((v35 & 0x80u) == 0)
    {
      v34 = v32;
    }

    v32 = *(v32 + ((v35 >> 4) & 8));
  }

  while (v32);
  if (v34 == v31 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v29, (v34 + 32)) & 0x80) != 0)
  {
LABEL_45:
    v34 = v31;
  }

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::Person>>(morphun::grammar::synthesis::ArGrammarSynthesizer::getPerson(std::basic_string<char16_t> const*)::valueMap) + 8 == v34)
  {
LABEL_48:
    v36 = 0;
  }

  else
  {
    v36 = *(v34 + 56);
  }

  v37 = *(*a1 + 72);
  v38 = *MEMORY[0x1E69E9840];

  return v37(a1, a2, v16, v26, v36);
}

void sub_1BE596074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  while (1)
  {
    v19 = *(v17 - 9);
    v17 -= 4;
    if (v19 < 0)
    {
      operator delete(*v17);
    }

    if (v17 == &__p)
    {
      MEMORY[0x1BFB49160](v16, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

morphun::grammar::synthesis::ArGrammarSynthesizer_ArticleLookupFunction *morphun::grammar::synthesis::ArGrammarSynthesizer_ArticleLookupFunction::ArGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::ArGrammarSynthesizer_ArticleLookupFunction *this, const morphun::dialog::SemanticFeatureModel *a2, uint64_t a3)
{
  v6 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(this, (a2 + 8), a3, 1, 0);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 56)) = *(a2 + 4);
  *(this + *(*this - 40)) = *(a2 + 5);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
  v8 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  v9 = a3 + 16;
  if (a3 + 16 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v8 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v10);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 3) = v10;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"genderPronoun");
  v11 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  if (v9 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v12);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 4) = v12;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "p");
  v13 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  if (v9 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 5) = v14;
  return this;
}

void sub_1BE596438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::FrGrammarSynthesizer_FrDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  if (TheBestDisplayValue)
  {
    v6 = TheBestDisplayValue;
    v7 = (*(*TheBestDisplayValue + 24))(TheBestDisplayValue);
    if (*(v7 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v13, *v7, *(v7 + 8));
    }

    else
    {
      v8 = *v7;
      v13.__r_.__value_.__r.__words[2] = *(v7 + 16);
      *&v13.__r_.__value_.__l.__data_ = v8;
    }

    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      morphun::grammar::synthesis::GrammarSynthesizerUtil::mergeConstraintsWithDisplayValue(&v12, v6, a3);
      *&__str.__r_.__value_.__l.__data_ = *(a1 + 16);
      memset(__p, 0, sizeof(__p));
      std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, &__str, &__str.__r_.__value_.__r.__words[2], 2uLL);
    }

    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE596AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (v39)
  {
    (*(*v39 + 16))(v39);
  }

  if (*(v40 - 104) == 1 && *(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a17);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE596C8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_FrDisplayFunction::inflectWord(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4.__r_.__value_.__l.__data_ = *(a2 + 16);
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(v2, &v4, &v4.__r_.__value_.__r.__words[2], 2uLL);
}

void sub_1BE597220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v33)
  {
    operator delete(a26);
  }

  a26 = &a30;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a26);
  a26 = &a33;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a26);
  _Unwind_Resume(a1);
}

void sub_1BE5972E4()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x1BE5972DCLL);
}

__n128 std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:se200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u16[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void **std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(uint64_t a1, void ***a2, __int16 a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = std::basic_string<char16_t>::basic_string[abi:se200100](a1, v5 + 1);
  if (*(result + 23) < 0)
  {
    result = *result;
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v5 & 0x8000000000000000) != 0 || ((v8 = result + v5, v7 >= result) ? (v9 = v8 > v7) : (v9 = 0), v9))
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      result = memmove(result, v7, 2 * v5);
    }

    *v8 = a3;
    v8[1] = 0;
  }

  return result;
}

void std::vector<morphun::dialog::SemanticFeature const*>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_FrDisplayFunction::~FrGrammarSynthesizer_FrDisplayFunction(morphun::grammar::synthesis::FrGrammarSynthesizer_FrDisplayFunction *this)
{
  morphun::grammar::synthesis::FrGrammarSynthesizer_FrDisplayFunction::~FrGrammarSynthesizer_FrDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5550;
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 17));
  *(this + 5) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 14));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 11));
}

void *std::set<std::basic_string<char16_t>>::set[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::basic_string<char16_t>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(a1, v4, a2);
      a2 += 12;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::basic_string<char16_t>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  v6 = (result + 8);
  if ((result + 8) != a2)
  {
    result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, a2 + 16);
    if ((result & 0x80) == 0)
    {
      result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2 + 16, a3);
      if ((result & 0x80) == 0)
      {
        v16 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }

        return result;
      }

      v10 = *(a2 + 1);
      if (v10)
      {
        v11 = *(a2 + 1);
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v15 = a2;
        do
        {
          v12 = *(v15 + 2);
          v14 = *v12 == v15;
          v15 = v12;
        }

        while (!v14);
      }

      if (v12 == v6 || (result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, v12 + 16), (result & 0x80) != 0))
      {
        if (v10)
        {
          v16 = v12;
        }

        else
        {
          v16 = a2;
          v12 = a2 + 4;
        }

        goto LABEL_22;
      }

LABEL_19:
      result = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(v5, &v16, a3);
      v12 = result;
      goto LABEL_22;
    }
  }

  v7 = *a2;
  if (*v5 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = *(v13 + 2);
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v9 + 16, a3);
    if ((result & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v16 = a2;
    goto LABEL_25;
  }

  v16 = v9;
  v12 = v9 + 4;
LABEL_22:
  if (!*v12)
  {
LABEL_25:
    std::__tree<std::basic_string<char16_t>>::__construct_node<std::basic_string<char16_t> const&>();
  }

  return result;
}

void sub_1BE5978E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v2);
  _Unwind_Resume(a1);
}

unsigned __int16 *std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
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
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, v4 + 16) & 0x80) == 0)
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

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
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

void morphun::dialog::language::DaCommonConceptFactory::~DaCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC7F8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC7F8);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:se200100]<std::basic_string<char16_t> const&,char16_t const(&)[16],0>(std::basic_string<char16_t> *this, __int128 *a2, _WORD *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&this[1], a3);
  return this;
}

void sub_1BE597A38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(a1, v4, a2);
      a2 += 24;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(uint64_t a1)
{
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

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>,void,0>(uint64_t a1)
{
  if (a1)
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

  else
  {
    __break(1u);
  }
}

uint64_t std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  v6 = (result + 8);
  if ((result + 8) != a2)
  {
    result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, a2 + 16);
    if ((result & 0x80) == 0)
    {
      result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2 + 16, a3);
      if ((result & 0x80) == 0)
      {
        v16 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }

        return result;
      }

      v10 = *(a2 + 1);
      if (v10)
      {
        v11 = *(a2 + 1);
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v15 = a2;
        do
        {
          v12 = *(v15 + 2);
          v14 = *v12 == v15;
          v15 = v12;
        }

        while (!v14);
      }

      if (v12 == v6 || (result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, v12 + 16), (result & 0x80) != 0))
      {
        if (v10)
        {
          v16 = v12;
        }

        else
        {
          v16 = a2;
          v12 = a2 + 4;
        }

        goto LABEL_22;
      }

LABEL_19:
      result = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(v5, &v16, a3);
      v12 = result;
      goto LABEL_22;
    }
  }

  v7 = *a2;
  if (*v5 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = *(v13 + 2);
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v9 + 16, a3);
    if ((result & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v16 = a2;
    goto LABEL_25;
  }

  v16 = v9;
  v12 = v9 + 4;
LABEL_22:
  if (!*v12)
  {
LABEL_25:
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__construct_node<std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>();
  }

  return result;
}

void sub_1BE597DDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:se200100](std::basic_string<char16_t> *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1BE597E6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::language::ThCommonConceptFactory::quantifiedJoin(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
  morphun::dialog::SpeakableString::SpeakableString(v13, __p);
  morphun::dialog::SpeakableString::operator+(a2, v13, v14);
  morphun::dialog::SpeakableString::operator+(v14, a1, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v13, __dst);
    morphun::dialog::SpeakableString::SpeakableString(__p, a3);
    morphun::dialog::SpeakableString::operator+(v13, __p, v14);
    morphun::dialog::SpeakableString::operator+=(a4, v14);
    if (v12 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1BE598044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE598214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::SemanticConceptList>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE5983EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::ThCommonConceptFactory::~ThCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC228);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC228);
}

void morphun::grammar::synthesis::HiGrammarSynthesizer_CountLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
LABEL_4:
    *a3 = __p;
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, &word_1BE80F080);
    v8 = a1[26];
    if (!v8 || (v9 = (*(*v8 + 24))(v8, a2), (v10 = v9) == 0))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      v13 = *(v12 + 80);
    }

    else
    {
      v13 = 0;
    }

    while (1)
    {
      v28 = *(&v11 + 1);
      v14 = v11;
      if (v13 == v11)
      {
        break;
      }

      v15 = **v11;
      {
        v16 = *(v14 + 63);
        v17 = v16 >= 0 ? (v14 + 40) : *(v14 + 40);
        v18 = v16 >= 0 ? *(v14 + 63) : *(v14 + 48);
        v19 = a1[27];
        v20 = a1[28];
        v29.__r_.__value_.__r.__words[0] = 0;
        if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v19, &v29, v17, v18) && (v29.__r_.__value_.__r.__words[0] & v20) == v20)
        {
          morphun::dialog::DictionaryLookupFunction::determine(a1, v14 + 16, &v29);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v29;
          v22 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v29.__r_.__value_.__l.__size_;
          }

          if (v22)
          {
            std::basic_string<char16_t>::operator=(&__dst, &__p);
          }
        }
      }

      npc<morphun::Token const>(v14);
      *(&v11 + 1) = v28;
      *&v11 = *(v14 + 80);
    }

    v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = __dst.__r_.__value_.__l.__size_;
    }

    if (v23)
    {
      *a3 = __dst;
      memset(&__dst, 0, sizeof(__dst));
    }

    else
    {
      v24 = (*(*v10 + 56))(v10);
      v25 = npc<morphun::Token>(v24);
      v26 = npc<morphun::Token>(*(v25 + 72));
      morphun::dialog::DictionaryLookupFunction::determine(a1, v26 + 16, a3);
    }

    (*(*v10 + 16))(v10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE5987B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::HiGrammarSynthesizer_CountLookupFunction::~HiGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::HiGrammarSynthesizer_CountLookupFunction *this)
{
  morphun::grammar::synthesis::HiGrammarSynthesizer_CountLookupFunction::~HiGrammarSynthesizer_CountLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4EF8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE7530;
  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  *(this + 1) = &unk_1F3CD2000;
}

void morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(morphun::dialog::DictionaryLookupFunction *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(this + 1) = &unk_1F3CD2000;
}

void morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(char **this)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[21]);
  v2 = this[17];
  if (v2)
  {
    this[18] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    this[15] = v3;
    operator delete(v3);
  }

  std::__tree<std::u16string_view>::destroy(this[12]);
  std::__tree<std::u16string_view>::destroy(this[9]);
}

uint64_t morphun::analysis::stemmer::HiLemmaFilter::stem(morphun::lang::StringFilterUtil *a1, __int128 *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = *(a2 + 2);
  }

  if (v2 < 4)
  {
    return v2;
  }

  result = morphun::lang::StringFilterUtil::DEVANAGARI_SCRIPT(a1);
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v5 = *(a2 + 1);
    if (v5)
    {
      v6 = *a2;
LABEL_10:
      if (MEMORY[0x1BFB49A20](*result, *(v6 + v5 - 1)))
      {
        morphun::analysis::stemmer::StemState::StemState(&__str, a2);
        v7 = v45;
        v8 = v46;
        if (v45 < v46)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = v46;
          v14 = v45 + 1;
          v47 = v45 + 1;
          v45 = v46;
          v49 = v46;
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          v16 = v46 + ~v7;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          result = 132;
          while (1)
          {
            v18 = v12 + ((result - v12) >> 1);
            if (v11 >= v10)
            {
              v19 = v10;
            }

            else
            {
              v19 = v11;
            }

            v20 = &morphun::analysis::stemmer::a_0[7 * v18];
            LODWORD(v21) = *v20;
            if (*v20)
            {
              v21 = 0;
                ;
              }
            }

            v23 = v21 + ~v19;
            if (v23 < 0)
            {
LABEL_34:
              v11 = v19;
LABEL_35:
              v12 += (result - v12) >> 1;
            }

            else
            {
              while (1)
              {
                if (v46 - v19 == v14)
                {
                  v19 = v16;
                  goto LABEL_33;
                }

                v24 = v46 + ~v19;
                if (size < v24)
                {
                  goto LABEL_87;
                }

                v25 = p_str->__r_.__value_.__s.__data_[v24];
                v26 = v20[v23];
                if (v25 != v26)
                {
                  break;
                }

                ++v19;
                if (v23-- <= 0)
                {
                  v11 = v21;
                  goto LABEL_35;
                }
              }

              if (v25 >= v26)
              {
                goto LABEL_34;
              }

LABEL_33:
              result = (v12 + ((result - v12) >> 1));
              v10 = v19;
            }

            if (result - v12 <= 1)
            {
              v28 = v12 > 0 || result == v12;
              v29 = v28;
              v30 = v29 | v9;
              v9 = 1;
              if (v30)
              {
                break;
              }
            }
          }

          while (1)
          {
            result = &morphun::analysis::stemmer::a_0[7 * v12];
            if (*result)
            {
              v31 = 0;
              v32 = &morphun::analysis::stemmer::a_0[7 * v12 + 1];
                ;
              }
            }

            else
            {
              LODWORD(v31) = 0;
            }

            if (v11 >= v31)
            {
              v34 = v46 - v31;
              v45 = v46 - v31;
              if (*(result + 13) != 1)
              {
                break;
              }

              if (v34 > v14)
              {
                if (size < v34 - 1)
                {
                  goto LABEL_87;
                }

                v35 = p_str->__r_.__value_.__s.__data_[v34 - 1];
                if (v35 - 2400) >= 0xFFB5u && ((morphun::analysis::stemmer::g_consonant[(v35 - 2325) >> 3] >> ((v35 - 21) & 7)))
                {
                  break;
                }
              }
            }

            v12 = *(result + 12);
            if (v12 < 0)
            {
              goto LABEL_65;
            }
          }

          v48 = v46 - v31;
          if (((v34 | v31) & 0x80000000) != 0)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"faulty slice operation: bra=");
            morphun::util::StringUtils::to_u16string(v48, &v52);
            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v52;
            }

            else
            {
              v38 = v52.__r_.__value_.__r.__words[0];
            }

            if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v52.__r_.__value_.__l.__size_;
            }

            std::basic_string<char16_t>::append(&__dst, v38, v39);
            v54 = __dst;
            memset(&__dst, 0, sizeof(__dst));
            std::basic_string<char16_t>::append(&v54, ",", 5uLL);
            v55 = v54;
            memset(&v54, 0, sizeof(v54));
            morphun::util::StringUtils::to_u16string(v49, &v51);
            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = &v51;
            }

            else
            {
              v40 = v51.__r_.__value_.__r.__words[0];
            }

            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v41 = v51.__r_.__value_.__l.__size_;
            }

            std::basic_string<char16_t>::append(&v55, v40, v41);
            v56 = v55;
            memset(&v55, 0, sizeof(v55));
            std::basic_string<char16_t>::append(&v56, ",", 7uLL);
            v57 = v56;
            memset(&v56, 0, sizeof(v56));
            morphun::util::StringUtils::to_u16string(v46, &v50);
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v50;
            }

            else
            {
              v42 = v50.__r_.__value_.__r.__words[0];
            }

            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v43 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v43 = v50.__r_.__value_.__l.__size_;
            }

            std::basic_string<char16_t>::append(&v57, v42, v43);
            v58 = v57;
            memset(&v57, 0, sizeof(v57));
            morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v58);
          }

          if (v34 > size)
          {
            std::basic_string<char16_t>::resize(&__str, (v46 - v31), 0);
            v13 = v46;
            if (v31)
            {
              if (v46 > v8)
              {
                std::basic_string<char16_t>::basic_string(&v58, &__str, (v8 - v31), v46 - v8, v36);
                std::basic_string<char16_t>::assign(&__str, &v58, v8, 0xFFFFFFFFFFFFFFFFLL);
                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                }

                v13 = v46;
              }
            }
          }

          v2 = (v13 - v31);
          v45 = v47;
          v46 = v2;
          std::basic_string<char16_t>::assign(a2, &__str, 0, v2);
        }

LABEL_65:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      return v2;
    }
  }

  else if (*(a2 + 23))
  {
    v6 = a2;
    goto LABEL_10;
  }

LABEL_87:
  __break(1u);
  return result;
}

void sub_1BE59903C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v51 - 57) < 0)
  {
    operator delete(*(v51 - 80));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
  }

  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
    if ((v50 & 1) == 0)
    {
LABEL_22:
      if (a15 < 0)
      {
        operator delete(a10);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v49);
  goto LABEL_22;
}

std::basic_string<char16_t> *morphun::analysis::stemmer::StemState::StemState(std::basic_string<char16_t> *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 2);
  }

  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = v5;
  this[1].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = v5;
  *(&this[1].__r_.__value_.__r.__words[2] + 4) = 0;
  return this;
}

void morphun::analysis::stemmer::HiLemmaFilter::~HiLemmaFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CEE280);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CEE280);
}

void morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(void **this, void *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 5)) = a2[7];
  this[20] = &unk_1F3CD2130;
  v5 = this[45];
  if (v5)
  {
    this[46] = v5;
    operator delete(v5);
  }

  v7 = this + 42;
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v7);
  v6 = this[39];
  if (v6)
  {
    this[40] = v6;
    operator delete(v6);
  }

  this[20] = &off_1F3CE2288;

  morphun::analysis::TokenFilter::~TokenFilter(this, a2 + 1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer_ItDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  if (TheBestDisplayValue)
  {
    v6 = TheBestDisplayValue;
    v7 = (*(*TheBestDisplayValue + 24))(TheBestDisplayValue);
    if (*(v7 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v13, *v7, *(v7 + 8));
    }

    else
    {
      v8 = *v7;
      v13.__r_.__value_.__r.__words[2] = *(v7 + 16);
      *&v13.__r_.__value_.__l.__data_ = v8;
    }

    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      morphun::grammar::synthesis::GrammarSynthesizerUtil::mergeConstraintsWithDisplayValue(&v12, v6, a3);
      *&__str.__r_.__value_.__l.__data_ = *(a1 + 8);
      memset(__p, 0, sizeof(__p));
      std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, &__str, &__str.__r_.__value_.__r.__words[2], 2uLL);
    }

    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE599A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_free_exception(v40);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (v39)
  {
    (*(*v39 + 16))(v39);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a17);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_ItDisplayFunction::inflectWord(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, &v4, v5, 2uLL);
}

void sub_1BE599E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a25;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  __p = &a17;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1BE599EC8()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x1BE599EC0);
}

void std::basic_string<char16_t>::reserve(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_31:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  LODWORD(v3) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = this->__r_.__value_.__r.__words[2];
    v4 = (v5 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v3 = HIBYTE(v5);
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= __requested_capacity)
  {
    return;
  }

  v6 = __requested_capacity | 3;
  if ((__requested_capacity | 3) == 0xB)
  {
    v6 = 12;
  }

  if (__requested_capacity <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  if ((v3 & 0x80) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v9 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v3 = HIBYTE(v10);
  }

  else
  {
    LOBYTE(size) = v3;
    v9 = 10;
  }

  v11 = v7 < 0xB;
  if (v7 >= 0xB)
  {
    if (v9 < v7)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v7 + 1);
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v7 + 1);
  }

  v12 = this->__r_.__value_.__r.__words[0];
  if ((v3 & 0x80) != 0)
  {
    v3 = this->__r_.__value_.__l.__size_;
    v11 = 1;
  }

  else
  {
    v3 = v3;
  }

  v13 = v3 + 1;
  if (v13 < 0 || v12 >= this && (this + 2 * v13) > v12)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v13)
  {
    memmove(this, v12, 2 * v13);
  }

  if (v11)
  {
    operator delete(v12);
  }

  *(&this->__r_.__value_.__s + 23) = size & 0x7F;
}

void sub_1BE59A11C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_ItDisplayFunction::~ItGrammarSynthesizer_ItDisplayFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_ItDisplayFunction *this)
{
  morphun::grammar::synthesis::ItGrammarSynthesizer_ItDisplayFunction::~ItGrammarSynthesizer_ItDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5430;
  *(this + 35) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 44));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 41));
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void morphun::tokenizer::locale::fi::FiWordAndDelimiterTokenExtractor::~FiWordAndDelimiterTokenExtractor(morphun::tokenizer::locale::fi::FiWordAndDelimiterTokenExtractor *this)
{
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 192);
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 160));
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C10);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 192);
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 160));

  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C10);
}

void morphun::dialog::language::NbCommonConceptFactory::~NbCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC440);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC440);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:se200100]<std::basic_string<char16_t> const&,char16_t const(&)[19],0>(std::basic_string<char16_t> *this, __int128 *a2, _WORD *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&this[1], a3);
  return this;
}

void sub_1BE59A458(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:se200100]<std::basic_string<char16_t> const&,char16_t const(&)[18],0>(std::basic_string<char16_t> *this, __int128 *a2, _WORD *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&this[1], a3);
  return this;
}

void sub_1BE59A4D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::setLemmaMappings(void **a1, uint64_t a2)
{
  v3 = a1 + 1;
  result = (*(*a1 + 7))(a1);
  if (v3 != a2)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);

    return std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__assign_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(v3, v5, v6, v7);
  }

  return result;
}

void virtual thunk tomorphun::analysis::tokenattributes::LemmaMappingAttributeImpl::~LemmaMappingAttributeImpl(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this)
{
  morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::~LemmaMappingAttributeImpl((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::~LemmaMappingAttributeImpl((this + *(*this - 32)));
}

void morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::~LemmaMappingAttributeImpl(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this)
{
  *this = &unk_1F3CD2278;
  v1 = (this + 8);
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&v1);
}

{
  morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::~LemmaMappingAttributeImpl(this);

  JUMPOUT(0x1BFB49160);
}

BOOL morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::isImplemented(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
}

void morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::reflectWith(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this, morphun::analysis::util::AttributeReflector *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v27, 0, sizeof(v27));
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    v4 = v2 + 24;
    do
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::basic_string<char16_t>::append(&v27, ",", 1uLL);
      }

      std::operator+<char16_t>(&v22, &unk_1BE800946, v4);
      std::basic_string<char16_t>::append(&v22, word_1BE800956, 0x16uLL);
      v23 = v22;
      memset(&v22, 0, sizeof(v22));
      morphun::util::StringUtils::to_u16string(*(v4 - 16), &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v7 = v21.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v23, v6, v7);
      v24 = v23;
      memset(&v23, 0, sizeof(v23));
      std::basic_string<char16_t>::append(&v24, L",lemmaGrammemes=", 0x10uLL);
      v25 = v24;
      memset(&v24, 0, sizeof(v24));
      morphun::util::StringUtils::to_u16string(*(v4 - 8), &v20);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v20;
      }

      else
      {
        v8 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = v20.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v25, v8, v9);
      v28 = v25;
      memset(&v25, 0, sizeof(v25));
      std::basic_string<char16_t>::append(&v28, "}", 1uLL);
      __p = v28;
      v10 = v28.__r_.__value_.__r.__words[2];
      memset(&v28, 0, sizeof(v28));
      v11 = HIBYTE(v10);
      if ((v11 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = __p.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v27, p_p, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      v14 = v4 + 24;
      v4 += 48;
    }

    while (v14 != v3);
  }

  std::operator+<char16_t>(&__p, "[", &v27);
  std::basic_string<char16_t>::append(&__p, "]", 1uLL);
  v28.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__l.__size_;
  v15 = __p.__r_.__value_.__r.__words[0];
  *(v28.__r_.__value_.__r.__words + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    v27.__r_.__value_.__r.__words[0] = v15;
    v27.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
    *(&v27.__r_.__value_.__r.__words[1] + 7) = *(v28.__r_.__value_.__r.__words + 7);
    *(&v27.__r_.__value_.__s + 23) = v16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v27.__r_.__value_.__r.__words[0] = v15;
    v27.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
    *(&v27.__r_.__value_.__r.__words[1] + 7) = *(v28.__r_.__value_.__r.__words + 7);
    *(&v27.__r_.__value_.__s + 23) = v16;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "l");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BE59AB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 129) < 0)
  {
    operator delete(*(v54 - 152));
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::copyTo(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = **lpsrc;
  if (!v3)
  {
    v7 = __cxa_allocate_exception(0x38uLL);
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *v7 = &unk_1F3CD0AE8;
  }

  v4 = *(*v3 + 104);

  return v4();
}

void sub_1BE59AE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](va);
  MEMORY[0x1BFB49160](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::clear(uint64_t this)
{
  v1 = this;
  v3 = *(this + 8);
  v2 = *(this + 16);
  if (v2 != v3)
  {
    v4 = v2 - 6;
    v5 = v2 - 6;
    v6 = v2 - 6;
    do
    {
      v7 = *v6;
      v6 -= 6;
      this = (*(v7 + 8))(v5);
      v4 -= 6;
      v8 = v5 == v3;
      v5 = v6;
    }

    while (!v8);
  }

  *(v1 + 16) = v3;
  return this;
}

uint64_t morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::operator()(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return (*(*v3 + 40))(v3);
}

uint64_t morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::hashCode(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v9 = &off_1F3CD2DC8;
    v10 = *(v1 + 8);
    if (*(v1 + 47) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v11, *(v1 + 24), *(v1 + 32));
    }

    else
    {
      v4 = *(v1 + 24);
      v11.__r_.__value_.__r.__words[2] = *(v1 + 40);
      *&v11.__r_.__value_.__l.__data_ = v4;
    }

    size = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v5 = DWORD2(v10) + v10;
    v3 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v7, 2 * size) - v5 + 32 * v5 - v3 + 32 * v3;
    v1 += 48;
  }

  while (v1 != v2);
  return v3;
}

uint64_t morphun::analysis::tokenattributes::LemmaMappingAttributeImpl::equals(morphun::analysis::tokenattributes::LemmaMappingAttributeImpl *this, char **lpsrc)
{
  if ((this + *(*this - 88)) == lpsrc)
  {
    return 1;
  }

  v3 = **lpsrc;
  if (!result)
  {
    return result;
  }

  v7 = this + 8;
  v5 = *(this + 1);
  v6 = *(v7 + 1);
  v8 = *(result + 8);
  if (v6 - v5 != *(result + 16) - v8)
  {
    return 0;
  }

  if (v5 == v6)
  {
    return 1;
  }

  do
  {
    result = morphun::analysis::tokenattributes::LemmaMapping::operator==(v5, v8);
    if (!result)
    {
      break;
    }

    v8 += 48;
    v5 += 48;
  }

  while (v5 != v6);
  return result;
}

void sub_1BE59B93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v23);
  MEMORY[0x1BFB49160](v21, v22);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer::getPossibleCombinations(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v1, 0, sizeof(v1));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(v1, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v2 = 0uLL;
  v3 = 0;
  std::vector<std::vector<std::basic_string<char16_t>>>::__init_with_size[abi:se200100]<std::vector<std::basic_string<char16_t>> const*,std::vector<std::basic_string<char16_t>> const*>();
}

void sub_1BE59C144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void ****a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, void ***a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  a20 = &a14;
  std::vector<std::vector<std::vector<std::basic_string<char16_t>>>>::__destroy_vector::operator()[abi:se200100](&a20);
  a14 = &a17;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a14);
  a17 = &a26;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a17);
  a26 = a12;
  std::vector<std::vector<std::vector<std::basic_string<char16_t>>>>::__destroy_vector::operator()[abi:se200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::basic_string<char16_t>>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE59C3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<std::basic_string<char16_t>>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::construct_at[abi:se200100]<std::vector<std::basic_string<char16_t>>,std::vector<std::basic_string<char16_t>> const&,std::vector<std::basic_string<char16_t>>*>(void *result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::vector<std::basic_string<char16_t>>::__assign_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(std::basic_string<char16_t> **a1, std::basic_string<char16_t> *__str, std::basic_string<char16_t> *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::basic_string<char16_t>>::__vdeallocate(a1);
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

      std::vector<std::basic_string<char16_t>>::__vallocate[abi:se200100](a1, v10);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::basic_string<char16_t>::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = SHIBYTE(v11[-1].__r_.__value_.__r.__words[2]);
      --v11;
      if (v15 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
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
        std::basic_string<char16_t>::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*,std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a1, (v6 + v12), a3, v11);
  }
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<std::basic_string<char16_t>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::__split_buffer<std::vector<std::basic_string<char16_t>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::basic_string<char16_t>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::basic_string<char16_t>>::clear[abi:se200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::__split_buffer<std::vector<std::vector<std::basic_string<char16_t>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<std::basic_string<char16_t>>>::__init_with_size[abi:se200100]<std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::basic_string<char16_t>>>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE59C810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::basic_string<char16_t>>>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<std::basic_string<char16_t>>>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<std::vector<std::basic_string<char16_t>>>,std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 == a3)
  {
    return v4;
  }

  v6 = a2;
  while (v4)
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
    v6 += 3;
    v4 = v8 + 3;
    v8 += 3;
    if (v6 == a3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::basic_string<char16_t>>>,std::vector<std::basic_string<char16_t>>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<std::basic_string<char16_t>>>::__assign_with_size[abi:se200100]<std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*>(uint64_t a1, std::basic_string<char16_t> **a2, std::basic_string<char16_t> **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::basic_string<char16_t>>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<std::basic_string<char16_t>>>::__vallocate[abi:se200100](a1, v10);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:se200100]<std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *>(a2, a3, v8);
    v13 = *(a1 + 8);
    while (v13 != v12)
    {
      v13 -= 3;
      v14 = v13;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v14);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:se200100]<std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<std::vector<std::basic_string<char16_t>>>,std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

std::basic_string<char16_t> **std::__copy_impl::operator()[abi:se200100]<std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *,std::vector<std::basic_string<char16_t>> *>(std::basic_string<char16_t> **a1, std::basic_string<char16_t> **a2, std::basic_string<char16_t> **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<std::basic_string<char16_t>>::__assign_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::vector<std::basic_string<char16_t>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::basic_string<char16_t>>>>,std::vector<std::vector<std::basic_string<char16_t>>>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&v5);
    }
  }

  return a1;
}

void *std::construct_at[abi:se200100]<std::vector<std::vector<std::basic_string<char16_t>>>,std::vector<std::vector<std::basic_string<char16_t>>> const&,std::vector<std::vector<std::basic_string<char16_t>>>*>(void *result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    std::vector<std::vector<std::basic_string<char16_t>>>::__init_with_size[abi:se200100]<std::vector<std::basic_string<char16_t>>*,std::vector<std::basic_string<char16_t>>*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::FiGrammarSynthesizer::hasBackVowels(uint64_t *a1)
{
  {
    operator new();
  }

  v2 = morphun::grammar::synthesis::BACK_VOWELS(void)::BACK_VOWELS_;
  if (!morphun::grammar::synthesis::BACK_VOWELS(void)::BACK_VOWELS_)
  {
    goto LABEL_19;
  }

  {
    operator new();
  }

  if (!morphun::grammar::synthesis::NFKC(void)::NFKC_)
  {
LABEL_19:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::dictionary::PhraseProperties::normalize(morphun::grammar::synthesis::NFKC(void)::NFKC_, a1, &__p);
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

  v5 = morphun::util::UnicodeSetUtils::containsSome(v2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1BE59CE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t icu4cxx::Normalizer2::getNFKCInstance(icu4cxx::Normalizer2 *this)
{
  result = unorm2_getNFKCInstance();
  *this = result;
  *(this + 8) = 0;
  return result;
}

uint64_t morphun::grammar::synthesis::FiGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::FiGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Count>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Count>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE59D138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE59D378(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::grammar::synthesis::FiGrammarSynthesizer::toString(int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v4 = npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>(morphun::grammar::synthesis::FiGrammarSynthesizer::toString(morphun::grammar::synthesis::FiGrammarSynthesizer::Count)::valueMap);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= a1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 32) > a1)
  {
LABEL_9:
    v8 = v5;
  }

  if (v8 == npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>(morphun::grammar::synthesis::FiGrammarSynthesizer::toString(morphun::grammar::synthesis::FiGrammarSynthesizer::Count)::valueMap) + 8)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a2, "u");
  }

  else if (*(v8 + 63) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(v8 + 40), *(v8 + 48));
  }

  else
  {
    v9 = *(v8 + 40);
    *(a2 + 16) = *(v8 + 56);
    *a2 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

{
  v11 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v4 = npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Case,std::basic_string<char16_t>>>(morphun::grammar::synthesis::FiGrammarSynthesizer::toString(morphun::grammar::synthesis::FiGrammarSynthesizer::Case)::valueMap);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= a1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 32) > a1)
  {
LABEL_9:
    v8 = v5;
  }

  if (v8 == npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Case,std::basic_string<char16_t>>>(morphun::grammar::synthesis::FiGrammarSynthesizer::toString(morphun::grammar::synthesis::FiGrammarSynthesizer::Case)::valueMap) + 8)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a2, "u");
  }

  else if (*(v8 + 63) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(v8 + 40), *(v8 + 48));
  }

  else
  {
    v9 = *(v8 + 40);
    *(a2 + 16) = *(v8 + 56);
    *a2 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BE59D5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v19 = v17 + 40;
  v20 = -64;
  while (1)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    v19 -= 32;
    v20 += 32;
    if (!v20)
    {
      MEMORY[0x1BFB49160](v16, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>::map[abi:se200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 32);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 8;
      if (v3 == &a2[8 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_1BE59D828(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,void *>>>::operator()[abi:se200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t morphun::grammar::synthesis::FiGrammarSynthesizer::getCase(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::FiGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Case>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Case>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE59DD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Case>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE59DFDC(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::Case>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE59E490(_Unwind_Exception *a1)
{
  v4 = v2 + 328;
  v5 = -352;
  while (1)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 32;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Case,std::basic_string<char16_t>>::map[abi:se200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 32);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 8;
      if (v3 == &a2[8 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_1BE59E6F0(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<morphun::grammar::synthesis::FiGrammarSynthesizer::Case,std::basic_string<char16_t>>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::FiGrammarSynthesizer::getPronounPerson(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::FiGrammarSynthesizer::getPronounPerson(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::PronounPerson>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getPronounPerson(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::PronounPerson>>(morphun::grammar::synthesis::FiGrammarSynthesizer::getPronounPerson(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE59E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::PronounPerson>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE59EBF0(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FiGrammarSynthesizer::PronounPerson>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::selectLemmaInflection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a1[35];
  v8 = a1[36];
  if (v7 == v8)
  {
    v9 = a1[35];
  }

  else
  {
    v9 = a1[35];
    while ((*v9 & *(a2 + 8)) == 0)
    {
      if (++v9 == v8)
      {
        v9 = a1[36];
        break;
      }
    }
  }

  v10 = v9 - v7;
  v11 = a1[38];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[39] - v11) >> 3);
  if (v10 == v12)
  {
    v13 = a1 + 19;
  }

  else
  {
    if (v12 <= v10)
    {
      std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
    }

    v13 = (v11 + 24 * v10);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:se200100]<long long *,long long *>(__p, *v13, v13[1], (v13[1] - *v13) >> 3);
  morphun::dictionary::Inflector_InflectionPattern::selectLemmaInflection(a4, a2, a3, __p);
  v14 = __p[0];
  if (__p[0])
  {

    operator delete(v14);
  }
}

void sub_1BE59ED8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer *this)
{
  *this = &unk_1F3CD0E60;
  v5 = (this + 304);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v5);
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  *this = &off_1F3CE0028;
  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v5 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v5);
  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  *this = &off_1F3CDFFE0;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD0E60;
  v5 = (this + 304);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v5);
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  *this = &off_1F3CE0028;
  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v5 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v5);
  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  *this = &off_1F3CDFFE0;
}

void morphun::analysis::MorphologicalAnalyzer::~MorphologicalAnalyzer(morphun::analysis::MorphologicalAnalyzer *this)
{
  *this = &unk_1F3CD2130;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v4 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  *this = &off_1F3CE2288;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD2130;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v4 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  *this = &off_1F3CE2288;
}

void morphun::analysis::MorphologicalAnalyzer::~MorphologicalAnalyzer(morphun::analysis::MorphologicalAnalyzer *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[3];
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

  v7 = a2[1];
  *this = v7;
  *(this + *(v7 - 40)) = a2[2];
}

void morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::DictionaryGenderedNounLemmatizer(morphun::grammar::synthesis::GrammemeConstants *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(a1);
  v2 = *(v1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v1 + 8);
  }

  v8.__r_.__value_.__r.__words[0] = v3;
  v8.__r_.__value_.__l.__size_ = v2;
  v4 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  v8.__r_.__value_.__r.__words[2] = v6;
  v9 = v5;
  memset(__p, 0, sizeof(__p));
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view const*,std::u16string_view const*>(__p, &v8, &v10, 2uLL);
}

void sub_1BE59FAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>>::__destroy_vector::operator()[abi:se200100](&a13);
  std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>::~pair(&__p);
  v30 = *(v28 - 128);
  if (v30)
  {
    operator delete(v30);
  }

  std::pair<std::vector<long long>,std::vector<std::vector<long long>>>::~pair(a12 + 32);
  morphun::analysis::MorphologicalAnalyzer::~MorphologicalAnalyzer(v26, (v27 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>,void,0>(i))
    {
      i -= 48;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t std::pair<std::vector<long long>,std::vector<std::vector<long long>>>::~pair(uint64_t a1)
{
  v4 = (a1 + 24);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::vector<std::u16string_view>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    if (*(a1 + 23) < 0)
    {
      v3 = *a1;

      operator delete(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

void morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::getLemma(morphun::grammar::synthesis::GrammemeConstants *a1, uint64_t a2, void **__src, unint64_t a4, uint64_t a5)
{
  v7 = a1;
  v69[0] = __src;
  v69[1] = a4;
  if (*(a2 + 224) <= a4)
  {
    if (!a5)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      return;
    }

    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if ((*(a2 + 232) & a5) == 0)
    {
      if (a4 > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
      }

      if (a4 > 0xA)
      {
        if ((a4 | 3) == 0xB)
        {
          v27 = 13;
        }

        else
        {
          v27 = (a4 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v27);
      }

      HIBYTE(v59) = a4;
      v28 = (&v58 + 2 * a4);
      if (&v58 <= __src && v28 > __src)
      {
        goto LABEL_155;
      }

      if (a4)
      {
        memmove(&v58, __src, 2 * a4);
      }

      *v28 = 0;
      *v7 = v58;
      *(v7 + 2) = v59;
      *(v7 + 24) = 1;
LABEL_149:
      *&v58 = &v66;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v58);
      return;
    }

    memset(&v65, 0, sizeof(v65));
    if ((*(a2 + 256) & a5) != 0)
    {
      v12 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(a1);
    }

    else
    {
      if ((*(a2 + 248) & a5) == 0)
      {
        goto LABEL_25;
      }

      v12 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(a1);
    }

    std::basic_string<char16_t>::operator=(&v65, v12);
    a1 = std::vector<std::basic_string<char16_t>>::push_back[abi:se200100](&v66, &v65);
LABEL_25:
    memset(&v64, 0, sizeof(v64));
    if ((*(a2 + 272) & a5) != 0)
    {
      v15 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(a1);
    }

    else
    {
      if ((*(a2 + 264) & a5) == 0)
      {
        goto LABEL_30;
      }

      v15 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(a1);
    }

    std::basic_string<char16_t>::operator=(&v64, v15);
    a1 = std::vector<std::basic_string<char16_t>>::push_back[abi:se200100](&v66, &v64);
LABEL_30:
    v16 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(a1);
    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v65.__r_.__value_.__l.__size_;
    }

    v18 = *(v16 + 23);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v16 + 8);
    }

    if (size == v18)
    {
      if (size)
      {
        if (v19 >= 0)
        {
          v20 = v16;
        }

        else
        {
          v20 = *v16;
        }

        v21 = &v65;
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v65.__r_.__value_.__r.__words[0];
        }

        while (*v20 == v21->__r_.__value_.__s.__data_[0])
        {
          v21 = (v21 + 2);
          ++v20;
          if (!--size)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
LABEL_43:
        if ((*(a2 + 240) & a5) != 0)
        {
          if (a4 > 0x7FFFFFFFFFFFFFF7)
          {
            std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
          }

          if (a4 > 0xA)
          {
            if ((a4 | 3) == 0xB)
            {
              v39 = 13;
            }

            else
            {
              v39 = (a4 | 3) + 1;
            }

            std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v39);
          }

          HIBYTE(v59) = a4;
          v40 = (&v58 + 2 * a4);
          if (&v58 <= __src && v40 > __src)
          {
            goto LABEL_155;
          }

          if (a4)
          {
            memmove(&v58, __src, 2 * a4);
          }

          *v40 = 0;
          *v7 = v58;
          *(v7 + 2) = v59;
          *(v7 + 24) = 1;
          goto LABEL_145;
        }
      }
    }

    morphun::dictionary::DictionaryMetaData::getPropertyValues(v10, __src, a4, "i", 0xAuLL, &v62);
    v22 = v63;
    v23 = v62;
    if (v62 == v63)
    {
      *v7 = 0;
      *(v7 + 24) = 0;
LABEL_144:
      *&v58 = &v62;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v58);
LABEL_145:
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      goto LABEL_149;
    }

    memset(&v61, 0, sizeof(v61));
    while (1)
    {
      v24 = *(v23 + 23);
      if (v24 < 0)
      {
        v25 = *v23;
        v24 = *(v23 + 8);
      }

      else
      {
        v25 = v23;
      }

      KeyId = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId((v11 + 256), v25, v24);
      morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(&v58, v11 + 8, KeyId);
      if (WORD1(v59))
      {
        break;
      }

      v23 += 24;
      if (v23 == v22)
      {
        goto LABEL_66;
      }
    }

    std::basic_string<char16_t>::operator=(&v61, v23);
LABEL_66:
    v29 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v29 = v61.__r_.__value_.__l.__size_;
      if (v61.__r_.__value_.__l.__size_)
      {
        v30 = v61.__r_.__value_.__r.__words[0];
LABEL_71:
        v31 = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId((v11 + 256), v30, v29);
        morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(&v58, v11 + 8, v31);
        v60 = 1;
        morphun::dictionary::Inflector_InflectionPattern::constrain(&v57, &v58, &v66, 1);
        memset(&v56, 0, sizeof(v56));
        v33 = v57.__r_.__value_.__l.__size_;
        v32 = v57.__r_.__value_.__r.__words[0];
        if (v57.__r_.__value_.__r.__words[0] != v57.__r_.__value_.__l.__size_)
        {
          v34 = v57.__r_.__value_.__r.__words[0];
          while (1)
          {
            v35 = npc<morphun::dictionary::Inflector_InflectionPattern const>(*v34);
            morphun::dictionary::metadata::StringContainer::getString((*(v35 + 32) + 144), *(v34 + 8), &__p);
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
              v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v37 = __p.__r_.__value_.__l.__size_;
            }

            v38 = std::u16string_view::ends_with[abi:se200100](v69, p_p, v37);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v38)
            {
              break;
            }

            v34 += 24;
            if (v34 == v33)
            {
              goto LABEL_120;
            }
          }

          if (a4 > 0x7FFFFFFFFFFFFFF7)
          {
            std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
          }

          if (a4 > 0xA)
          {
            if ((a4 | 3) == 0xB)
            {
              v43 = 13;
            }

            else
            {
              v43 = (a4 | 3) + 1;
            }

            std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v43);
          }

          v54 = a4;
          v44 = (&v53 + 2 * a4);
          if (&v53 <= __src && v44 > __src)
          {
            goto LABEL_155;
          }

          if (a4)
          {
            memmove(&v53, __src, 2 * a4);
          }

          *v44 = 0;
          morphun::dictionary::Inflector_Inflection::lemmatize(&__p, v34, &v53);
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          v56 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if (v54 < 0)
          {
            operator delete(v53);
          }
        }

LABEL_120:
        v45 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        v46 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v56.__r_.__value_.__l.__size_;
        }

        if (v45)
        {
          if ((*(a2 + 240) & a5) == 0)
          {
            goto LABEL_139;
          }

          v47 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v47 = v64.__r_.__value_.__l.__size_;
          }

          if (!v47)
          {
            goto LABEL_139;
          }

          v48 = v66;
          v49 = v67;
          while (v49 != v48)
          {
            v50 = *(v49 - 1);
            v49 -= 3;
            if (v50 < 0)
            {
              operator delete(*v49);
            }
          }

          v67 = v48;
          v51 = std::vector<std::basic_string<char16_t>>::push_back[abi:se200100](&v66, &v64);
          v52 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v51);
          std::vector<std::basic_string<char16_t>>::emplace_back<std::basic_string<char16_t> const&>(&v66, v52);
          if ((v60 & 1) == 0)
          {
            goto LABEL_155;
          }

          morphun::dictionary::Inflector_InflectionPattern::constrain(&__p, &v58, &v66, 1);
          if (v32)
          {
            operator delete(v32);
          }

          v32 = __p.__r_.__value_.__r.__words[0];
          v57 = __p;
          if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
          {
LABEL_139:
            *v7 = v56;
            *(v7 + 24) = 1;
LABEL_140:
            if (v32)
            {
              v57.__r_.__value_.__l.__size_ = v32;
              operator delete(v32);
            }

LABEL_142:
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            goto LABEL_144;
          }

          morphun::dictionary::Inflector_Inflection::inflect(&__p, __p.__r_.__value_.__l.__data_, &v56);
          *v7 = __p;
          *(v7 + 24) = 1;
          v46 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          *v7 = 0;
          *(v7 + 24) = 0;
        }

        if (v46 < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        goto LABEL_140;
      }
    }

    else if (*(&v61.__r_.__value_.__s + 23))
    {
      v30 = &v61;
      goto LABEL_71;
    }

    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    if (a4 > 0xA)
    {
      if ((a4 | 3) == 0xB)
      {
        v41 = 13;
      }

      else
      {
        v41 = (a4 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v41);
    }

    HIBYTE(v59) = a4;
    v42 = (&v58 + 2 * a4);
    if (&v58 <= __src && v42 > __src)
    {
      goto LABEL_155;
    }

    if (a4)
    {
      memmove(&v58, __src, 2 * a4);
    }

    *v42 = 0;
    *v7 = v58;
    *(v7 + 2) = v59;
    *(v7 + 24) = 1;
    goto LABEL_142;
  }

  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v13 = 13;
    }

    else
    {
      v13 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v13);
  }

  HIBYTE(v59) = a4;
  v14 = (&v58 + 2 * a4);
  if (&v58 <= __src && v14 > __src)
  {
LABEL_155:
    __break(1u);
    return;
  }

  if (a4)
  {
    memmove(&v58, __src, 2 * a4);
  }

  *v14 = 0;
  *v7 = v58;
  *(v7 + 2) = v59;
  *(v7 + 24) = 1;
}

void sub_1BE5A0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    operator delete(v40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  a28 = &a40;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a28);
  if (*(v41 - 153) < 0)
  {
    operator delete(*(v41 - 176));
  }

  if (*(v41 - 129) < 0)
  {
    operator delete(*(v41 - 152));
  }

  a28 = (v41 - 128);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::basic_string<char16_t>>::push_back[abi:se200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::basic_string<char16_t>>::emplace_back<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v5);
  }

  v12 = 0;
  v13 = 24 * v2;
  v14 = 24 * v2;
  v15 = 0;
  std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>((24 * v2), a2);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8) - *a1;
  v8 = 24 * v2 - v7;
  memcpy((v13 - v7), *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  v10 = *(a1 + 16);
  *(a1 + 16) = v15;
  v14 = v9;
  v15 = v10;
  v12 = v9;
  v13 = v9;
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v12);
  return v6;
}

void sub_1BE5A07B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
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

void marisa::grimoire::io::Mapper::~Mapper(marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

uint64_t marisa::grimoire::io::Mapper::seek(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t marisa::grimoire::io::Mapper::map_data(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

void morphun::tokenizer::trie::SerializedTrie::~SerializedTrie(morphun::tokenizer::trie::SerializedTrie *this)
{
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 40);
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 8));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 40);
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 8));
}

marisa::grimoire::trie::LoudsTrie **morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      MEMORY[0x1BFB49140](v2, 0x1000C8000313F17);
    }
  }

  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(a1);
}

uint64_t morphun::dictionary::metadata::MarisaTrie<int>::MarisaTrie(uint64_t a1, void *a2)
{
  morphun::util::Validate::notNull<morphun::util::MemoryMappedFile>(a2);
  LODWORD(v10[0]) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, v10);
  v4 = LODWORD(v10[0]);
  v5 = morphun::util::Validate::notNull<morphun::util::MemoryMappedFile>(a2);
  LOWORD(v10[0]) = 0;
  morphun::util::MemoryMappedFile::read<short>(v5, v10);
  v6 = SLOWORD(v10[0]);
  *a1 = 0;
  if (v6 >= 3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v6, &v14);
    std::basic_string<char16_t>::insert(&v14, L"Unknown encoding value ", 0x17, v9);
    *v10 = *&v14.__r_.__value_.__l.__data_;
    *&v11[0] = *(&v14.__r_.__value_.__l + 2);
    memset(&v14, 0, sizeof(v14));
    morphun::exception::IllegalStateException::IllegalStateException(exception, v10);
  }

  morphun::dictionary::metadata::CharsetConverter::CharsetConverter((a1 + 8), off_1E806A780[v6]);
  morphun::dictionary::metadata::CompressedArray<int>::CompressedArray((a1 + 32), a2);
  *(a1 + 64) = v6;
  if (v4 < 1)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    *v10 = 0u;
    memset(v11, 0, sizeof(v11));
    marisa::Trie::build(a1, v10);
    marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v12);
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v11 + 1);
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v10);
  }

  else
  {
    npc<morphun::util::MemoryMappedFile>(a2);
    v10[0] = 0;
    morphun::util::MemoryMappedFile::read<char *>(a2, v10, v4);
    marisa::Trie::map(a1, v10[0], v4);
  }

  return a1;
}

void sub_1BE5A0CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 49) < 0)
  {
    operator delete(*(v17 - 72));
    if ((v16 & 1) == 0)
    {
LABEL_8:
      marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

uint64_t morphun::util::Validate::notNull<morphun::util::MemoryMappedFile>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Input argument is null.");
    morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
  }

  return result;
}

void sub_1BE5A0E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *morphun::util::MemoryMappedFile::read<int>(void *result, _DWORD *a2)
{
  v2 = result;
  v3 = result[2];
  if ((result[1] - v3) <= 3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(4, &v9);
    std::basic_string<char16_t>::insert(&v9, L"Input too small. Expected at least ", 0x23, v5);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    std::basic_string<char16_t>::append(&v10, L" bytes; Available: ", 0x13uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::util::StringUtils::to_u16string((*(v2 + 2) - *(v2 + 4)), &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v11, v6, size);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::exception::IOException::IOException(exception, &v12);
  }

  *a2 = *(*result + v3);
  result[2] = v3 + 4;
  return result;
}

void sub_1BE5A0F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void *morphun::util::MemoryMappedFile::read<short>(void *result, _WORD *a2)
{
  v2 = result;
  v3 = result[2];
  if ((result[1] - v3) <= 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(2, &v9);
    std::basic_string<char16_t>::insert(&v9, L"Input too small. Expected at least ", 0x23, v5);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    std::basic_string<char16_t>::append(&v10, L" bytes; Available: ", 0x13uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::util::StringUtils::to_u16string((*(v2 + 2) - *(v2 + 4)), &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v11, v6, size);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::exception::IOException::IOException(exception, &v12);
  }

  *a2 = *(*result + v3);
  result[2] = v3 + 2;
  return result;
}

void sub_1BE5A1190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

int *morphun::dictionary::metadata::CompressedArray<int>::CompressedArray(int *a1, void *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 2) = 0;
  *(a1 + 1) = 0;
  v4 = a1 + 2;
  npc<morphun::util::MemoryMappedFile>(a2);
  morphun::util::MemoryMappedFile::read<int>(a2, a1);
  morphun::util::MemoryMappedFile::read<int>(a2, a1 + 1);
  morphun::util::MemoryMappedFile::read<unsigned long long *>(a2, v4, 8 * *a1);
  *(a1 + 2) = ~(-1 << a1[1]);
  return a1;
}

uint64_t npc<morphun::util::MemoryMappedFile>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *morphun::util::MemoryMappedFile::read<char *>(void *result, void *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (result[1] - v4 < a3)
  {
    v5 = a3;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v5, &v11);
    std::basic_string<char16_t>::insert(&v11, L"Input too small. Expected at least ", 0x23, v7);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    std::basic_string<char16_t>::append(&v12, L" bytes; Available: ", 0x13uLL);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::util::StringUtils::to_u16string((*(v3 + 2) - *(v3 + 4)), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v13, v8, size);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    morphun::exception::IOException::IOException(exception, &v14);
  }

  *a2 = *result + v4;
  result[2] = v4 + a3;
  return result;
}

void sub_1BE5A1488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
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
          MEMORY[0x1BFB49140](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1BFB49140](v4 - 8, 0x20C8093837F09);
  }

  return a1;
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
          MEMORY[0x1BFB49140](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1BFB49140](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

void marisa::Keyset::~Keyset(marisa::Keyset *this)
{
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(this + 6);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this + 3);

  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this);
}

void *morphun::util::MemoryMappedFile::read<unsigned long long *>(void *result, void *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (result[1] - v4 < a3)
  {
    v5 = a3;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v5, &v11);
    std::basic_string<char16_t>::insert(&v11, L"Input too small. Expected at least ", 0x23, v7);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    std::basic_string<char16_t>::append(&v12, L" bytes; Available: ", 0x13uLL);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::util::StringUtils::to_u16string((*(v3 + 2) - *(v3 + 4)), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v13, v8, size);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    morphun::exception::IOException::IOException(exception, &v14);
  }

  *a2 = *result + v4;
  result[2] = v4 + a3;
  return result;
}

void sub_1BE5A17EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void *morphun::util::MemoryMappedFile::read<char const*>(void *result, void *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (result[1] - v4 < a3)
  {
    v5 = a3;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v5, &v11);
    std::basic_string<char16_t>::insert(&v11, L"Input too small. Expected at least ", 0x23, v7);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    std::basic_string<char16_t>::append(&v12, L" bytes; Available: ", 0x13uLL);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::util::StringUtils::to_u16string((*(v3 + 2) - *(v3 + 4)), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v13, v8, size);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    morphun::exception::IOException::IOException(exception, &v14);
  }

  *a2 = *result + v4;
  result[2] = v4 + a3;
  return result;
}

void sub_1BE5A19F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void *morphun::util::MemoryMappedFile::read<long long>(void *result, void *a2)
{
  v2 = result;
  v3 = result[2];
  if ((result[1] - v3) <= 7)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(8, &v9);
    std::basic_string<char16_t>::insert(&v9, L"Input too small. Expected at least ", 0x23, v5);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    std::basic_string<char16_t>::append(&v10, L" bytes; Available: ", 0x13uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::util::StringUtils::to_u16string((*(v2 + 2) - *(v2 + 4)), &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v11, v6, size);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::exception::IOException::IOException(exception, &v12);
  }

  *a2 = *(*result + v3);
  result[2] = v3 + 8;
  return result;
}

void sub_1BE5A1BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void *morphun::tokenizer::trie::SerializedTrie::SerializedTrie(void *a1, uint64_t a2)
{
  *a1 = &unk_1F3CD0440;
  v4 = a1 + 1;
  v5 = morphun::util::MemoryMappedFile::MemoryMappedFile((a1 + 1), a2);
  v12 = 0;
  morphun::util::MemoryMappedFile::read<char const*>(v5, &v12, 8uLL);
  if (strncmp(v12, "MORPHTK", 8uLL))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v10, "I", a2);
    std::basic_string<char16_t>::append(&v10, " ", 0x16uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::exception::IOException::IOException(exception, &v11);
  }

  v11.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<long long>(v4, &v11);
  if (v11.__r_.__value_.__r.__words[0] != 2)
  {
    v8 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v10, "I", a2);
    std::basic_string<char16_t>::append(&v10, " ", 0x1CuLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::exception::IncompatibleVersionException::IncompatibleVersionException(v8, &v11);
  }

  v11.__r_.__value_.__s.__data_[0] = 0;
  morphun::util::MemoryMappedFile::read<short>(v4, &v11);
  if (v11.__r_.__value_.__s.__data_[0] != 1)
  {
    v9 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v10, "I", a2);
    std::basic_string<char16_t>::append(&v10, L" was built for a different architecture", 0x27uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::exception::IOException::IOException(v9, &v11);
  }

  morphun::dictionary::metadata::MarisaTrie<int>::MarisaTrie((a1 + 5), v4);
  return a1;
}

void sub_1BE5A1F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v23)
  {
LABEL_8:
    morphun::util::MemoryMappedFile::~MemoryMappedFile(v21);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_1BE5A2124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v17);
  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void morphun::tokenizer::locale::th::ThWordAndDelimiterTokenExtractor::~ThWordAndDelimiterTokenExtractor(morphun::tokenizer::locale::th::ThWordAndDelimiterTokenExtractor *this)
{
  *this = &unk_1F3CD01F8;
  icu4cxx::UnicodeSet::~UnicodeSet((this + 152));
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9BE8);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD01F8;
  icu4cxx::UnicodeSet::~UnicodeSet((this + 152));

  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9BE8);
}

uint64_t morphun::dialog::ArticleDetectionFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v5 < 2)
  {
    return 0;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v4 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *v3;
  }

  result = morphun::util::StringViewUtils::lowercase(&v36, v6, v5, a1 + 8);
  if (*(a1 + 184) != 1)
  {
    goto LABEL_23;
  }

  v8 = HIBYTE(v38);
  v9 = &v36;
  if (v38 < 0)
  {
    v9 = v36;
    v8 = v37;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

  v10 = 2 * v8;
  v11 = v9;
  v12 = &v9[v8];
  while (*v11 != 39)
  {
    ++v11;
    v10 -= 2;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  v13 = v11 == v12 ? 0 : v11;
  if (v11 == v12 || v13 - v9 == -2)
  {
LABEL_23:
    v14 = *(a1 + 136);
    if (v14 == (a1 + 144))
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = *(v14 + 55);
        if ((v16 & 0x8000000000000000) != 0)
        {
          v17 = v14[4];
          v16 = v14[5];
        }

        else
        {
          v17 = (v14 + 4);
        }

        v18 = HIBYTE(v38);
        if (v38 >= 0)
        {
          v19 = &v36;
        }

        else
        {
          v19 = v36;
        }

        if (v38 < 0)
        {
          v18 = v37;
        }

        __p = v19;
        v35 = v18;
        v20 = std::u16string_view::starts_with[abi:se200100](&__p, v17, v16);
        if (v20)
        {
          break;
        }

        v21 = v14[1];
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
            v22 = v14[2];
            v23 = *v22 == v14;
            v14 = v22;
          }

          while (!v23);
        }

        v15 |= v20;
        v14 = v22;
        if (v22 == (a1 + 144))
        {
          goto LABEL_43;
        }
      }

      v15 = 1;
    }

LABEL_43:
    v24 = *(a1 + 160);
    v25 = (a1 + 168);
    if (v24 == (a1 + 168))
    {
      v26 = 0;
      if (v15)
      {
LABEL_63:
        if ((v26 & 1) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      v26 = 0;
      do
      {
        v27 = *(v24 + 55);
        if ((v27 & 0x8000000000000000) != 0)
        {
          v28 = v24[4];
          v27 = v24[5];
        }

        else
        {
          v28 = (v24 + 4);
        }

        v29 = HIBYTE(v38);
        if (v38 >= 0)
        {
          v30 = &v36;
        }

        else
        {
          v30 = v36;
        }

        if (v38 < 0)
        {
          v29 = v37;
        }

        __p = v30;
        v35 = v29;
        v31 = std::u16string_view::starts_with[abi:se200100](&__p, v28, v27);
        if (v31)
        {
          v26 = 1;
          goto LABEL_66;
        }

        v32 = v24[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v24[2];
            v23 = *v33 == v24;
            v24 = v33;
          }

          while (!v23);
        }

        v26 |= v31;
        v24 = v33;
      }

      while (v33 != v25);
      if (v15)
      {
        goto LABEL_63;
      }
    }

LABEL_66:
    if (!(v15 & 1 | ((v26 & 1) == 0)))
    {
      operator new();
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v36);
    }

    return 0;
  }

  if (v8 >= (v13 - v9) >> 1)
  {
    *v13 = 8217;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1BE5A2578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v20, 0x10B3C40F7FF9C27);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::ArticleDetectionFunction::~ArticleDetectionFunction(morphun::dialog::ArticleDetectionFunction *this)
{
  *this = &unk_1F3CD88C0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 21));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 18));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD88C0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 21));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 18));
}

void std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(*a1);
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(a1[1]);
    (*(a1[4] + 8))();

    operator delete(a1);
  }
}

uint64_t morphun::dialog::getFeatureValues(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = *a2;
  while (1)
  {
    (*(*v4 + 24))(&__p, v4);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (*(&__p.__r_.__value_.__s + 23))
    {
      v7 |= *(&v22.__r_.__value_.__r.__words[2] + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 3) == 32;
      if (*(&v22.__r_.__value_.__r.__words[2] + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 3) == 32)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v4 += 56;
    v8 += 56;
    if (v4 == v5)
    {
      goto LABEL_11;
    }
  }

  if (!__p.__r_.__value_.__l.__size_ || (v7 |= *(__p.__r_.__value_.__r.__words[0] + 2 * __p.__r_.__value_.__l.__size_ - 2) == 32, *(__p.__r_.__value_.__r.__words[0] + 2 * __p.__r_.__value_.__l.__size_ - 2) != 32))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_10;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  v4 = *a2;
  v5 = a2[1];
LABEL_13:
  if (v4 != v5)
  {
    v9 = 0;
    while (1)
    {
      (*(*v4 + 24))(&__p, v4);
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      if (v12 && a3 + 8 == std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3, &__p))
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      v4 += 56;
      if (v4 == v5)
      {
        return v9 & 1;
      }
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if (v10 >= 0)
      {
        p_p = &__p;
      }

      v14 = p_p + 2 * v12;
      v15 = 2 * v12;
      v16 = p_p;
      while (*v16 != 8217)
      {
        v16 += 2;
        v15 -= 2;
        if (!v15)
        {
          v16 = p_p + 2 * v12;
          break;
        }
      }

      v17 = v16 == v14;
      v18 = v16 != v14;
      if (v17)
      {
        v16 = 0;
      }

      v9 = v16 - p_p != -2 && v18;
    }

    if (!a1)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    if (v7)
    {
      if (v10 < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, size);
      }

      else
      {
        v22 = __p;
      }
    }

    else
    {
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v22, &__p, 32);
    }

    std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(a1, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  v9 = 0;
  return v9 & 1;
}

void sub_1BE5A29C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*(v9 + 8))(v7);
        v6 -= 56;
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

unsigned __int16 *std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 *a2)
{
  result = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t morphun::dialog::ArticleDetectionFunction::ArticleDetectionFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F3CD88C0;
  morphun::util::ULocale::ULocale(a1 + 8, a2);
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(&v23, 0, sizeof(v23));
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  morphun::util::ULocale::ULocale(&v27, a2 + 8, &v24, &v23, __p);
  morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures(&v27, &v29);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  morphun::lang::features::LanguageGrammarFeatures::getFeatures(&v29, &v27);
  v9 = v27;
  if (v27 != v28)
  {
    do
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(&v24, *(v9 + 8), *(v9 + 9), 0x6DB6DB6DB6DB6DB7 * ((*(v9 + 9) - *(v9 + 8)) >> 3));
      if (v24 != v25)
      {
        if (v9[63] < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v23, *(v9 + 5), *(v9 + 6));
        }

        else
        {
          v23 = *(v9 + 40);
        }

        v10 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3, &v23);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (a3 + 8 != v10)
        {
          if (morphun::dialog::getFeatureValues(a1 + 136, &v24, a4))
          {
            v11 = 1;
          }

          else
          {
            v11 = *(a1 + 184);
          }

          *(a1 + 184) = v11 & 1;
        }

        if (v9[63] < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v23, *(v9 + 5), *(v9 + 6));
        }

        else
        {
          v23 = *(v9 + 40);
        }

        v12 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a5, &v23);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (a5 + 8 != v12)
        {
          if (morphun::dialog::getFeatureValues(a1 + 160, &v24, a6))
          {
            v13 = 1;
          }

          else
          {
            v13 = *(a1 + 184);
          }

          *(a1 + 184) = v13 & 1;
        }
      }

      v23.__r_.__value_.__r.__words[0] = &v24;
      std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v23);
      v14 = *(v9 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v9 + 2);
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != v28);
  }

  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v28[0]);
  v29 = &unk_1F3CD94A8;
  return a1;
}

void sub_1BE5A2E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, char **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35)
{
  *(v35 - 240) = &unk_1F3CD94A8;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*a9);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*a10);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::KoCommonConceptFactory_KoAndList::getBeforeLast(morphun::dialog::language::KoCommonConceptFactory_KoAndList *this, const morphun::dialog::SemanticFeatureConceptBase *a2, const morphun::dialog::SpeakableString *a3, const morphun::dialog::SemanticFeatureConceptBase *a4, const morphun::dialog::SpeakableString *a5)
{
  v6 = morphun::util::LocaleUtils::KOREAN(this);
  v7 = (*(*a3 + 32))(a3);
  morphun::dictionary::PhraseProperties::isEndsWithVowel(v6, v7);
}

void sub_1BE5A302C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::language::KoCommonConceptFactory_KoAndList::~KoCommonConceptFactory_KoAndList(morphun::dialog::language::KoCommonConceptFactory_KoAndList *this)
{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBE18);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBE18);
}

void morphun::exception::InvalidConfigurationException::~InvalidConfigurationException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::InvalidConfigurationException::InvalidConfigurationException(morphun::exception::InvalidConfigurationException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0908;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0908;
  return result;
}

void *morphun::exception::InvalidConfigurationException::InvalidConfigurationException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0908;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0908;
  return result;
}

uint64_t morphun::grammar::synthesis::PlGrammarSynthesizer_PlDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  v6 = TheBestDisplayValue;
  if (TheBestDisplayValue)
  {
    v7 = (*(*TheBestDisplayValue + 24))(TheBestDisplayValue);
    if (*(v7 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v18, *v7, *(v7 + 8));
    }

    else
    {
      v8 = *v7;
      v18.__r_.__value_.__r.__words[2] = *(v7 + 16);
      *&v18.__r_.__value_.__l.__data_ = v8;
    }

    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      morphun::grammar::synthesis::GrammarSynthesizerUtil::mergeConstraintsWithDisplayValue(&v17, v6, a3);
      if (*(a3 + 16))
      {
        v16 = 0;
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v18;
        }

        else
        {
          v10 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = v18.__r_.__value_.__l.__size_;
        }

        if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a1 + 64), &v16, v10, v11))
        {
          *&v19.__r_.__value_.__l.__data_ = *(a1 + 24);
          v19.__r_.__value_.__r.__words[2] = *(a1 + 16);
          memset(&v21, 0, sizeof(v21));
          std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v21, &v19, v20, 3uLL);
        }

        v12 = npc<morphun::Tokenizer>(*(a1 + 8));
        v13 = (*(*v12 + 24))(v12, &v18);
        npc<morphun::TokenChain>(v13);
        *&__str.__r_.__value_.__l.__data_ = *(a1 + 24);
        __str.__r_.__value_.__r.__words[2] = *(a1 + 16);
        memset(&v21, 0, sizeof(v21));
        std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v21, &__str, v23, 3uLL);
      }

      operator new();
    }

    v6 = 0;
    if ((*(&v18.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BE5A46EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (*(v76 - 136) == 1 && *(v76 - 137) < 0)
  {
    operator delete(*(v76 - 160));
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  *(v76 - 160) = &a75;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v76 - 160));
  *(v76 - 160) = v76 - 128;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v76 - 160));
  if (v75)
  {
    (*(*v75 + 16))(v75);
  }

  if (a21 == 1 && a20 < 0)
  {
    operator delete(a15);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a24);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::PlGrammarSynthesizer_PlDisplayFunction::inflectWord(morphun::util::LocaleUtils *CombinedBinaryType, uint64_t a2, std::basic_string<char16_t> *a3, unint64_t a4, uint64_t *a5, std::basic_string<char16_t> *a6, std::basic_string<char16_t> *a7)
{
  v13 = CombinedBinaryType;
  v37 = *MEMORY[0x1E69E9840];
  LOBYTE(v33.__r_.__value_.__l.__data_) = 0;
  v34 = 0;
  v14 = *a5;
  if (v14)
  {
    morphun::dialog::DictionaryLookupInflector::inflect(__p, (a2 + 72), a3, a4, v14, a6, a7);
    std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:se200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(&v33, __p);
    if (BYTE8(v36) == 1 && SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v34;
    if (v34 == 1)
    {
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v13, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else
      {
        *v13 = v33;
      }

      *(v13 + 24) = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v15 = 0;
  }

  v26 = a6;
  v25 = v13;
  v16 = 0;
  v17 = *(a2 + 360);
  *__p = *(a2 + 344);
  v36 = v17;
  while (1)
  {
    v19 = __p[v16];
    v18 = __p[v16 + 1];
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v20 = morphun::util::LocaleUtils::POLISH(CombinedBinaryType);
    morphun::util::StringViewUtils::lowercase(&v30, a3, a4, v20);
    v21 = HIBYTE(v32);
    if (v32 >= 0)
    {
      v22 = &v30;
    }

    else
    {
      v22 = v30;
    }

    if (v32 < 0)
    {
      v21 = v31;
    }

    v27.n128_u64[0] = v22;
    v27.n128_u64[1] = v21;
    CombinedBinaryType = std::u16string_view::starts_with[abi:se200100](&v27, v19, v18);
    if (CombinedBinaryType)
    {
      if (a4 < v18)
      {
        goto LABEL_39;
      }

      CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a2 + 64), a5, a3 + 2 * v18, a4 - v18);
      if (CombinedBinaryType)
      {
        morphun::dialog::DictionaryLookupInflector::inflect(&v27, (a2 + 72), (a3 + 2 * v18), a4 - v18, *a5, v26, a7);
        std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:se200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(&v33, &v27);
        if (v29 == 1 && v28 < 0)
        {
          operator delete(v27.n128_u64[0]);
        }

        v15 = v34;
        if (v34 == 1)
        {
          break;
        }
      }
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    v16 += 2;
    if (v16 == 4)
    {
      LOBYTE(v25->__r_.__value_.__l.__data_) = 0;
      LOBYTE(v25[1].__r_.__value_.__l.__data_) = 0;
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }
  }

  std::basic_string<char16_t>::insert(&v33, a3, v18, v23);
  if ((v34 & 1) == 0)
  {
LABEL_39:
    __break(1u);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v25, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    *v25 = v33;
  }

  LOBYTE(v25[1].__r_.__value_.__l.__data_) = 1;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

LABEL_38:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1BE5A4DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((a28 & 1) != 0 && a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::basic_string<char16_t>>::erase(void *result, void **a2, void **a3)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    if (a3 != a2)
    {
      v4 = result;
      v5 = result[1];
      if (a3 == v5)
      {
        v12 = a2;
      }

      else
      {
        v6 = -*result;
        v7 = a2 + *result;
        v8 = a3 + *result;
        do
        {
          v9 = v7 + v6;
          if (*(v7 + v6 + 23) < 0)
          {
            operator delete(*v9);
          }

          v10 = &v8[v6];
          v11 = *&v8[v6];
          *(v9 + 16) = *&v8[v6 + 16];
          *v9 = v11;
          v10[23] = 0;
          *v10 = 0;
          v7 += 24;
          v8 += 24;
        }

        while (&v8[v6] != v5);
        v12 = (v7 + v6);
        v5 = v4[1];
      }

      while (v5 != v12)
      {
        v13 = *(v5 - 1);
        v5 -= 3;
        if (v13 < 0)
        {
          operator delete(*v5);
        }
      }

      v4[1] = v12;
    }

    return a2;
  }

  return result;
}