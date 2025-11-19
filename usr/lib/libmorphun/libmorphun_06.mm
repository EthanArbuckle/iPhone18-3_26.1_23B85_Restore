void sub_1BE5DA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x1BFB49160](v32, 0x1020C405F07FB98);
  if (a20 < 0)
  {
    operator delete(__p);
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

uint64_t icu4cxx::Normalizer2::getNFDInstance(icu4cxx::Normalizer2 *this)
{
  result = unorm2_getNFDInstance();
  *this = result;
  *(this + 8) = 0;
  return result;
}

uint64_t npc<icu4cxx::Normalizer2>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t icu4cxx::Normalizer2::getNFCInstance(icu4cxx::Normalizer2 *this)
{
  result = unorm2_getNFCInstance();
  *this = result;
  *(this + 8) = 0;
  return result;
}

uint64_t morphun::lang::StringFilterUtil::COMBINING_DIACRITICAL_MARKS(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::COMBINING_DIACRITICAL_MARKS(void)::COMBINING_DIACRITICAL_MARKS_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DA8C4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

morphun::lang::StringFilterUtil *morphun::lang::StringFilterUtil::getSetSingleton(morphun::lang::StringFilterUtil *this, icu4cxx::UnicodeSet *a2)
{
  {
    operator new();
  }

  v3 = morphun::lang::SET_SINGLETONS(void)::setSingletons_;
  npc<std::map<icu4cxx::UnicodeSet const*,icu4cxx::UnicodeSet const*>>(morphun::lang::SET_SINGLETONS(void)::setSingletons_);
  v4 = *(v3 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= this;
    v8 = v6 < this;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != v3 + 8 && *(v5 + 32) <= this)
  {
    npc<std::map<icu4cxx::UnicodeSet const*,icu4cxx::UnicodeSet const*>>(v3);
    if (this)
    {
      icu4cxx::UnicodeSet::~UnicodeSet(this);
      MEMORY[0x1BFB49160]();
    }

    return *(v5 + 40);
  }

  else
  {
LABEL_10:
    npc<std::map<icu4cxx::UnicodeSet const*,icu4cxx::UnicodeSet const*>>(v3);
    morphun::util::Validate::notNull<icu4cxx::UnicodeSet>(this);
    MEMORY[0x1BFB49A40](*this);
    npc<std::map<icu4cxx::UnicodeSet const*,icu4cxx::UnicodeSet const*>>(v3);
    v9 = *(v3 + 8);
    if (!v9)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v10 = v9;
        v11 = v9[4];
        if (v11 <= this)
        {
          break;
        }

        v9 = *v10;
        if (!*v10)
        {
          goto LABEL_16;
        }
      }

      if (v11 >= this)
      {
        break;
      }

      v9 = v10[1];
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  return this;
}

uint64_t npc<std::map<icu4cxx::UnicodeSet const*,icu4cxx::UnicodeSet const*>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::lang::StringFilterUtil::getExemplarCharacters(morphun::lang::StringFilterUtil *this, const morphun::util::ULocale *a2)
{
  {
    operator new();
  }

  v3 = morphun::lang::StringFilterUtil::getExemplarCharacters(morphun::util::ULocale const&)::functionMutex;
  v4 = npc<std::mutex>(morphun::lang::StringFilterUtil::getExemplarCharacters(morphun::util::ULocale const&)::functionMutex);
  std::mutex::lock(v4);
  {
    operator new();
  }

  v5 = npc<std::map<morphun::util::ULocale,icu4cxx::UnicodeSet const*>>(morphun::lang::StringFilterUtil::getExemplarCharacters(morphun::util::ULocale const&)::exemplarCache);
  v6 = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(v5, this);
  if (npc<std::map<morphun::util::ULocale,icu4cxx::UnicodeSet const*>>(morphun::lang::StringFilterUtil::getExemplarCharacters(morphun::util::ULocale const&)::exemplarCache) + 8 == v6)
  {
    operator new();
  }

  v7 = *(v6 + 160);
  npc<icu4cxx::UnicodeSet const>(v7);
  std::mutex::unlock(v3);
  return v7;
}

void sub_1BE5DAD70(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<morphun::util::ULocale,icu4cxx::UnicodeSet const*>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,icu4cxx::UnicodeSet const*>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,icu4cxx::UnicodeSet const*>>>::__emplace_unique_key_args<morphun::util::ULocale,morphun::util::ULocale const&,icu4cxx::UnicodeSet const*&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 17, (a2 + 104)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 104), v4 + 17);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1BE5DAF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>>>>::~unique_ptr[abi:se200100](va);
  _Unwind_Resume(a1);
}

void morphun::lang::StringFilterUtil::stripNonNativeAccents(morphun::lang::StringFilterUtil *a1@<X0>, const morphun::util::ULocale *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  NfdVolatileForeignExemplarCharacters = morphun::lang::StringFilterUtil::getNfdVolatileForeignExemplarCharacters(a1, a2);
  v6 = morphun::lang::StringFilterUtil::COMBINING_DIACRITICAL_MARKS(NfdVolatileForeignExemplarCharacters);

  morphun::lang::StringFilterUtil::filteredUnaccent(NfdVolatileForeignExemplarCharacters, v6, a2, a3);
}

uint64_t morphun::lang::StringFilterUtil::unaccent(morphun::lang *a1, uint64_t *a2)
{
  v2 = a1;
  v19 = 0;
  if (*(a2 + 23) >= 0)
  {
    LODWORD(v3) = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  memset(&__p, 0, sizeof(__p));
  if (v3 >= 1)
  {
    std::basic_string<char16_t>::resize(&__p, v3 & 0x7FFFFFFF, 0);
    morphun::lang::NFD_NORMALIZER(v5);
    v6 = *(a2 + 2);
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    a1 = unorm2_normalize();
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = __p.__r_.__value_.__r.__words[1];
    }

    if (a1 != v8)
    {
      std::basic_string<char16_t>::resize(&__p, a1, 0);
    }

    v9 = v19;
    if (v19 == 15)
    {
      v19 = 0;
      morphun::lang::NFD_NORMALIZER(a1);
      v10 = *(a2 + 2);
      if (*(a2 + 23) < 0)
      {
        v11 = *a2;
      }

      a1 = unorm2_normalize();
      v9 = v19;
    }

    if (v9 >= 1)
    {
      v16 = v9;
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::ICUException::ICUException(exception, v16);
    }
  }

  v12 = morphun::lang::StringFilterUtil::COMBINING_DIACRITICAL_MARKS(a1);
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

  morphun::util::UnicodeSetUtils::removeSetFromString(v2, v12, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_1BE5DB128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::lang::NFD_NORMALIZER(morphun::lang *this)
{
  {
    if (v2)
    {
      morphun::lang::NFD_NORMALIZER(void)::NFD_NORMALIZER_ = morphun::lang::getNFDInstance(v2);
    }
  }

  return morphun::lang::NFD_NORMALIZER(void)::NFD_NORMALIZER_;
}

BOOL morphun::lang::StringFilterUtil::hasAccents(uint64_t *a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  morphun::lang::StringFilterUtil::unaccent(&__p, a1);
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = HIBYTE(v16);
  if (v16 < 0)
  {
    v4 = v15;
  }

  if (v3 == v4)
  {
    if (!v3)
    {
      v11 = 0;
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        return v11;
      }

      goto LABEL_22;
    }

    p_p = __p;
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    if (v2 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v7 = v3 - 1;
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *p_p++;
      v11 = v10 != v8;
    }

    while (v10 == v8 && v7-- != 0);
  }

  else
  {
    v11 = 1;
  }

  if (SHIBYTE(v16) < 0)
  {
LABEL_22:
    operator delete(__p);
  }

  return v11;
}

void sub_1BE5DB31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL morphun::lang::StringFilterUtil::equalIgnoreCaseAndAllAccents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    LODWORD(v7) = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  morphun::util::StringViewUtils::lowercase(v32, v6, v7, a3);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    LODWORD(v10) = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  morphun::util::StringViewUtils::lowercase(__p, v9, v10, a3);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  morphun::lang::StringFilterUtil::unaccent(&v27, v32);
  morphun::lang::StringFilterUtil::unaccent(&v24, __p);
  if (v29 >= 0)
  {
    v11 = HIBYTE(v29);
  }

  else
  {
    v11 = v28;
  }

  v12 = HIBYTE(v26);
  if (v26 < 0)
  {
    v12 = v25;
  }

  if (v11 != v12)
  {
    v22 = 0;
    goto LABEL_32;
  }

  if (v11)
  {
    v13 = v24;
    if (v26 >= 0)
    {
      v13 = &v24;
    }

    v14 = v27;
    if (v29 >= 0)
    {
      v14 = &v27;
    }

    v15 = v11 - 1;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v19 = *v13++;
      v18 = v19;
      v21 = v15-- != 0;
      v22 = v18 == v16;
    }

    while (v18 == v16 && v21);
LABEL_32:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_40:
    operator delete(v24);
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  v22 = 1;
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_40;
  }

LABEL_33:
  if ((v29 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_41:
  operator delete(v27);
LABEL_34:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return v22;
}

void sub_1BE5DB4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
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

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::lang::StringFilterUtil::hasNonWhitespaceSeparableCharacter(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = morphun::lang::StringFilterUtil::NON_WHITESPACE_SEPARATED_SCRIPTS(a1);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  return morphun::util::UnicodeSetUtils::containsSome(v3, v5, v6);
}

BOOL morphun::lang::StringFilterUtil::isFirstNonWhitespaceSeparableCharacter(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = morphun::lang::StringFilterUtil::NON_WHITESPACE_SEPARATED_SCRIPTS(a1);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = morphun::util::StringViewUtils::codePointAt(v5, v6, 0);
  return MEMORY[0x1BFB49A20](*v3, v7) != 0;
}

void morphun::analysis::filter::ContractionExpandingFilter::~ContractionExpandingFilter(void **this)
{
  *this = &unk_1F3CD15C8;
  v2 = this + 36;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);
  std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(this[18]);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA348);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD15C8;
  v2 = this + 36;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);
  std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(this[18]);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA348);
}

void sub_1BE5DB934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p)
{
  morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(&a10);
  MEMORY[0x1BFB49160](v33, v34);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, a3);
  v6 = *(a3 + 23);
  LOBYTE(v7) = v6;
  v8 = *(a3 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (!v9)
  {
    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v10)
    {
      v11 = a1[26];
      if (!v11 || (v12 = (*(*v11 + 24))(v11, a2)) == 0)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      v13 = v12;
      v38 = *(v12 + 8);
      v14 = *(&v38 + 1);
      if (*(&v38 + 1))
      {
LABEL_11:
        v14 = *(v14 + 80);
      }

      while (v14 != v38)
      {
        if (v38)
        {
          v15 = **v38;
          {
            v16 = *(v38 + 63);
            v17 = v16 >= 0 ? (v38 + 40) : *(v38 + 40);
            v18 = v16 >= 0 ? *(v38 + 63) : *(v38 + 48);
            v19 = a1[27];
            v20 = a1[28];
            v40.__r_.__value_.__r.__words[0] = 0;
            if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v19, &v40, v17, v18) && (v40.__r_.__value_.__r.__words[0] & v20) == v20)
            {
              morphun::dialog::DictionaryLookupFunction::determine(a1, v38 + 16, &v40);
              if (v6 < 0)
              {
                operator delete(*a3);
              }

              *a3 = *&v40.__r_.__value_.__l.__data_;
              v23 = v40.__r_.__value_.__r.__words[2];
              *(a3 + 16) = *(&v40.__r_.__value_.__l + 2);
              v6 = HIBYTE(v23);
              v8 = *(a3 + 8);
              v7 = HIBYTE(v23);
              break;
            }
          }
        }

        npc<morphun::Token const>(v38);
        *(&v22 + 1) = *(&v38 + 1);
        *&v22 = *(v38 + 80);
        v38 = v22;
        v14 = *(v13 + 16);
        if (v14)
        {
          goto LABEL_11;
        }
      }

      if ((v7 & 0x80u) == 0)
      {
        v24 = v6;
      }

      else
      {
        v24 = v8;
      }

      if (!v24)
      {
        v39 = *(v13 + 8);
        v25 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          goto LABEL_37;
        }

LABEL_36:
        v25 = *(v25 + 80);
LABEL_37:
        while (v25 != v39)
        {
          if (v39)
          {
            v26 = **v39;
            {
              morphun::dialog::DictionaryLookupFunction::determine(a1, v39 + 16, &v40);
              if ((v7 & 0x80) != 0)
              {
                operator delete(*a3);
              }

              *a3 = *&v40.__r_.__value_.__l.__data_;
              v28 = v40.__r_.__value_.__r.__words[2];
              *(a3 + 16) = *(&v40.__r_.__value_.__l + 2);
              v6 = HIBYTE(v28);
              v8 = *(a3 + 8);
              v7 = HIBYTE(v28);
              break;
            }
          }

          npc<morphun::Token const>(v39);
          *(&v27 + 1) = *(&v39 + 1);
          *&v27 = *(v39 + 80);
          v39 = v27;
          v25 = *(v13 + 16);
          if (v25)
          {
            goto LABEL_36;
          }
        }
      }

      if ((v7 & 0x80u) == 0)
      {
        v29 = v6;
      }

      else
      {
        v29 = v8;
      }

      if (v29)
      {
        goto LABEL_61;
      }

      v30 = (*(*v13 + 104))(v13);
      if (!v30)
      {
        v36 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v36);
      }

      v31 = *(v30 + 80);
      if (!v31)
      {
        v37 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v37);
      }

      if (*(v31 + 63) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v40, *(v31 + 40), *(v31 + 48));
      }

      else
      {
        v40 = *(v31 + 40);
      }

      v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, "a");
      if ((v32 & 1) != 0 || (v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80C3EA), v32))
      {
        v33 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v32);
      }

      else
      {
        v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80B180);
        if (!v34)
        {
LABEL_59:
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

LABEL_61:
          (*(*v13 + 16))(v13);
          return;
        }

        v33 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v34);
      }

      std::basic_string<char16_t>::operator=(a3, v33);
      goto LABEL_59;
    }
  }
}

void sub_1BE5DBE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  (*(*v19 + 16))(v19);
  if ((*(v18 + 23) & 0x80) != 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction *this)
{
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4E90;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE7478;
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

void morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::ItGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction *this)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE74D8;
  v1 = morphun::util::LocaleUtils::ITALIAN(this);
  v2 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v1);
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

  v4 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v2);
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

  memset(__p, 0, 24);
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(__p, &v6, __p, 2uLL);
}

void sub_1BE5DC1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 26);
  *(v25 + 26) = 0;
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v25, off_1F3CDBCF8);
  _Unwind_Resume(a1);
}

morphun::analysis::Analyzer *morphun::analysis::util::StopwordAnalyzerBase::StopwordAnalyzerBase(morphun::analysis::Analyzer *a1, uint64_t *a2, uint64_t a3)
{
  result = morphun::analysis::Analyzer::Analyzer(a1, a2 + 1);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 40)) = a2[3];
  *(result + 8) = a3;
  return result;
}

morphun::analysis::Analyzer *morphun::analysis::util::StopwordAnalyzerBase::StopwordAnalyzerBase(morphun::analysis::util::StopwordAnalyzerBase *this, uint64_t *a2)
{
  result = morphun::analysis::Analyzer::Analyzer(this, a2 + 1);
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 40)) = a2[3];
  *(result + 8) = 0;
  return result;
}

void morphun::analysis::util::StopwordAnalyzerBase::loadStopwordSet(void ***a1, uint64_t a2, uint64_t *a3)
{
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(__p, a1, a2);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  String = morphun::resources::DataResource::getString(v4, v5, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (String)
  {
    if (*String)
    {
      v7 = 0;
        ;
      }
    }

    if (*(a3 + 23) >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v9 = *a3;
      v10 = a3[1];
    }

    morphun::analysis::util::WordlistLoader::getWordSet();
  }

  __break(1u);
}

void sub_1BE5DC4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::util::StopwordAnalyzerBase::loadSnowballStopwordSet(uint64_t a1)
{
  std::operator+<char16_t>(__p, L"/com/apple/morphun/morphology/stopwords/", a1);
  if ((v7 & 0x80u) == 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v2 = v7;
  }

  else
  {
    v2 = __p[1];
  }

  String = morphun::resources::DataResource::getString(v1, v2, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (String)
  {
    if (*String)
    {
      v4 = 0;
        ;
      }
    }

    morphun::analysis::util::WordlistLoader::getWordSet();
  }

  __break(1u);
}

void sub_1BE5DC5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer_IndefiniteArticleLookupFunction::getArticle(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = (*(*a2 + 24))(a2);
  v10 = v9;
  if (a5 == 2)
  {
    if (a4 == 2)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"delle ");
      v11 = (*(*a1 + 32))(a1, a2, __p);
    }

    else
    {
      v13 = morphun::util::LocaleUtils::ITALIAN(v9);
      if (morphun::dictionary::PhraseProperties::isStartsWithVowel(v13, v10))
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "u");
      }

      else
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80922A);
      }

      v11 = (*(*a1 + 32))(a1, a2, __p);
    }
  }

  else if (a4 == 2)
  {
    v12 = morphun::util::LocaleUtils::ITALIAN(v9);
    if ((morphun::dictionary::PhraseProperties::isStartsWithVowel(v12, v10) & 1) != 0 || morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithConsonantSubset(v10))
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "d");
      v11 = (*(*a1 + 32))(a1, a2, __p);
    }

    else
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"dei ");
      v11 = (*(*a1 + 32))(a1, a2, __p);
    }
  }

  else if (morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithConsonantSubset(v9))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"uno ");
    v11 = (*(*a1 + 32))(a1, a2, __p);
  }

  else if (a4 == 1 && a5 == 1)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "u");
    v11 = (*(*a1 + 32))(a1, a2, __p);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v11 = (*(*a1 + 32))(a1, a2, __p);
  }

  v14 = v11;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_1BE5DC8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_IndefiniteArticleLookupFunction::~ItGrammarSynthesizer_IndefiniteArticleLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_IndefiniteArticleLookupFunction *this)
{
  *this = &off_1F3CE55A0;
  v1 = (this + 64);
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 296));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(v1);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE55A0;
  v1 = (this + 64);
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 296));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(v1);
}

uint64_t morphun::dictionary::PhraseProperties::RIEUL_END_TAG(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  result = morphun::dictionary::PhraseProperties::RIEUL_END_TAG(void)::RIEUL_END_TAG_;
  if (!morphun::dictionary::PhraseProperties::RIEUL_END_TAG(void)::RIEUL_END_TAG_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE5DCA88(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  return npc<icu4cxx::UnicodeSet const>(morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(void)::DEFAULT_VOWELS_START_);
}

void sub_1BE5DCC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MEMORY[0x1BFB49160](v28, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::FRENCH_VOWELS_START(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  return npc<icu4cxx::UnicodeSet const>(morphun::dictionary::PhraseProperties::FRENCH_VOWELS_START(void)::FRENCH_VOWELS_START_);
}

void sub_1BE5DCE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MEMORY[0x1BFB49160](v28, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_END(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  return npc<icu4cxx::UnicodeSet const>(morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_END(void)::DEFAULT_VOWELS_END_);
}

void sub_1BE5DD0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MEMORY[0x1BFB49160](v28, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::I_LETTER(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  v1 = morphun::dictionary::PhraseProperties::I_LETTER(void)::I_LETTER_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DD1E8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::J_LETTER(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  v1 = morphun::dictionary::PhraseProperties::J_LETTER(void)::J_LETTER_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DD2C8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  v1 = morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(void)::DEFAULT_MATCHABLE_SET_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DD39C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::isStartsWithVowel(morphun::dictionary::DictionaryMetaData *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(a1, a2);
  v5 = npc<morphun::dictionary::DictionaryMetaData const>(Dictionary);
  memset(v35, 0, sizeof(v35));
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v5, v35, v7, v8))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, &morphun::dialog::VOWEL_START);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v30, __dst, &v38, 1uLL);
  }

  v9 = morphun::util::LocaleUtils::FRENCH(0);
  __dst[0] = 0;
  __dst[1] = 0;
  v37 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  morphun::util::ULocale::ULocale(&v30, a1 + 8, __dst, v28, __p);
  if ((v34 & 0x80u) == 0)
  {
    v10 = v34;
  }

  else
  {
    v10 = v33[1];
  }

  v11 = *(v9 + 127);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v9 + 112);
  }

  if (v10 == v11)
  {
    if ((v34 & 0x80u) == 0)
    {
      v13 = v33;
    }

    else
    {
      v13 = v33[0];
    }

    v16 = *(v9 + 104);
    v15 = (v9 + 104);
    v14 = v16;
    if (v12 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v18 = memcmp(v13, v17, v10) == 0;
  }

  else
  {
    v18 = 0;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__dst[0]);
    if (v18)
    {
      goto LABEL_29;
    }

LABEL_33:
    v21 = morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(v19);
    v22 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v21);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    result = morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(a2, v21, v22, &v30);
    goto LABEL_35;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (v35[0] && (v19 = std::basic_string<char16_t>::starts_with[abi:se200100](a2, "H"), (v19 & 1) != 0))
  {
    result = 0;
  }

  else
  {
    v23 = morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(v19);
    v24 = morphun::dictionary::PhraseProperties::FRENCH_VOWELS_START(v23);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    result = morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(a2, v23, v24, &v30);
  }

LABEL_35:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5DD6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a16);
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dictionary::DictionaryMetaData const>(uint64_t result)
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

uint64_t morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(uint64_t a1, void *a2, void *a3, uint64_t **a4)
{
  FirstUsableIndex = morphun::dictionary::PhraseProperties::getFirstUsableIndex(a1, a2);
  if ((FirstUsableIndex & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = FirstUsableIndex;
  if (*a4 == a4[1])
  {
    memset(&v34, 0, sizeof(v34));
    v24 = *(a1 + 23);
    if (v24 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 23);
    }

    else
    {
      v26 = *(a1 + 8);
    }

    v27 = morphun::util::StringViewUtils::codePointAt(v25, v26, v8);
    appended = morphun::util::StringUtils::appendCodePoint(&v34, v27);
    v29 = morphun::dictionary::NFKD(appended);
    morphun::dictionary::PhraseProperties::normalize(v29, &v34, &__p);
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

    v32 = morphun::util::StringViewUtils::codePointAt(p_p, size, 0);
    v22 = MEMORY[0x1BFB49A20](*a3, v32) != 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    return v22;
  }

  v9 = *(a1 + 23);
  v10 = v9 >= 0 ? a1 : *a1;
  v11 = v9 >= 0 ? *(a1 + 23) : *(a1 + 8);
  v12 = morphun::util::StringViewUtils::codePointAt(v10, v11, v8);
  if (!MEMORY[0x1BFB49A20](*a3, v12))
  {
    return 0;
  }

  v13 = *a4;
  if (*(a1 + 23) >= 0)
  {
    v14 = *(a1 + 23);
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v15 = v8 + 1;
  while (v13 != a4[1])
  {
    if (v15 < v14)
    {
      v17 = *v13++;
      v16 = v17;
      npc<icu4cxx::UnicodeSet const>(v17);
      v18 = *(a1 + 23);
      v19 = v18 >= 0 ? a1 : *a1;
      v20 = v18 >= 0 ? *(a1 + 23) : *(a1 + 8);
      v21 = morphun::util::StringViewUtils::codePointAt(v19, v20, v15++);
      if (MEMORY[0x1BFB49A20](*v16, v21))
      {
        continue;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1BE5DD940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t morphun::dictionary::PhraseProperties::getFirstUsableIndex(uint64_t a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!*(a1 + 23))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(a1 + 23);
    v7 = v6 >= 0 ? a1 : *a1;
    v8 = v6 >= 0 ? *(a1 + 23) : *(a1 + 8);
    v9 = morphun::util::StringViewUtils::codePointAt(v7, v8, v5);
    if (MEMORY[0x1BFB49A20](*a2, v9))
    {
      break;
    }

    v5 = (v5 + 1);
    if (v4 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t morphun::dictionary::NFKD(morphun::dictionary *this)
{
  {
    operator new();
  }

  result = morphun::dictionary::NFKD(void)::NFKD_;
  if (!morphun::dictionary::NFKD(void)::NFKD_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE5DDAB8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

void morphun::dictionary::PhraseProperties::normalize(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    LODWORD(v4) = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (v4 >= 1)
  {
    std::basic_string<char16_t>::resize(a3, v4 & 0x7FFFFFFF, 0);
    v7 = *a1;
    v8 = *(a2 + 2);
    if (*(a2 + 23) < 0)
    {
      v9 = *a2;
    }

    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = a3->__r_.__value_.__r.__words[0];
    }

    v11 = unorm2_normalize();
    v12 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x80u) != 0)
    {
      v12 = a3->__r_.__value_.__r.__words[1];
    }

    if (v11 != v12)
    {
      std::basic_string<char16_t>::resize(a3, v11, 0);
    }
  }
}

void sub_1BE5DDC70(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t icu4cxx::Normalizer2::getNFKDInstance(icu4cxx::Normalizer2 *this)
{
  result = unorm2_getNFKDInstance();
  *this = result;
  *(this + 8) = 0;
  return result;
}

void morphun::dictionary::PhraseProperties::isEndsWithVowel(morphun::dictionary::PhraseProperties *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_END(a1);
  v14[3] = MEMORY[0x1BFB499E0](*v4);
  v15 = 1;
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(a1, v5);
  v7 = npc<morphun::dictionary::DictionaryMetaData const>(Dictionary);
  memset(v14, 0, 24);
  v8 = morphun::dictionary::PhraseProperties::PUNCTUATION(v7);
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

  morphun::util::UnicodeSetUtils::removeSetFromString(v14, v8, v10, v11);
  v12 = 0;
  v13 = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, &morphun::dialog::VOWEL_END);
  memset(__dst, 0, 24);
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(__dst, &__p, &v18, 1uLL);
}

void sub_1BE5DE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  icu4cxx::UnicodeSet::~UnicodeSet(&a17);
  _Unwind_Resume(a1);
}

void sub_1BE5DE244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::PhraseProperties::isEndsWithUnicodeSets(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  LastUsableIndex = morphun::dictionary::PhraseProperties::getLastUsableIndex(a1, a2);
  if ((LastUsableIndex & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v9 = LastUsableIndex;
  v10 = *a4;
  v11 = *(a4 + 1);
  if (*a4 != v11)
  {
    v12 = (v11 - 8);
    while (1)
    {
      v13 = v9;
      v14 = v12;
      v15 = *v12;
      npc<icu4cxx::UnicodeSet const>(*v12);
      v16 = *(a1 + 23);
      v17 = v16 >= 0 ? a1 : *a1;
      v18 = v16 >= 0 ? *(a1 + 23) : *(a1 + 8);
      v19 = morphun::util::StringViewUtils::codePointAt(v17, v18, v13);
      if (!MEMORY[0x1BFB49A20](*v15, v19))
      {
        goto LABEL_44;
      }

      v9 = v13 - 1;
      v12 = v14 - 1;
      if (v14 == *a4 || v13 <= 0)
      {
        if (v14 == *a4 && v13 >= 1)
        {
          v21 = *(a1 + 23);
          v22 = v21 >= 0 ? a1 : *a1;
          v23 = v21 >= 0 ? *(a1 + 23) : *(a1 + 8);
          v24 = morphun::util::StringViewUtils::codePointAt(v22, v23, v9);
          if (MEMORY[0x1BFB49A20](*a3, v24))
          {
            LOBYTE(a3) = 1;
            return a3 & 1;
          }
        }

        goto LABEL_44;
      }
    }
  }

  memset(&v37, 0, sizeof(v37));
  v25 = *(a1 + 23);
  if (v25 >= 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = *a1;
  }

  if (v25 >= 0)
  {
    v27 = *(a1 + 23);
  }

  else
  {
    v27 = *(a1 + 8);
  }

  v28 = morphun::util::StringViewUtils::codePointAt(v26, v27, v9);
  appended = morphun::util::StringUtils::appendCodePoint(&v37, v28);
  v30 = morphun::dictionary::NFKD(appended);
  morphun::dictionary::PhraseProperties::normalize(v30, &v37, &__p);
  v31 = morphun::dictionary::PhraseProperties::getLastUsableIndex(&__p, a2);
  if ((v31 & 0x80000000) == 0)
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

    v34 = morphun::util::StringViewUtils::codePointAt(p_p, size, v31);
    LOBYTE(a3) = MEMORY[0x1BFB49A20](*a3, v34) != 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
      return a3 & 1;
    }

    goto LABEL_44;
  }

  if ((v31 & 0x80000000) != 0)
  {
LABEL_44:
    LOBYTE(a3) = 0;
  }

  return a3 & 1;
}

void sub_1BE5DE42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::PhraseProperties::getLastUsableIndex(uint64_t a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
LABEL_5:
      while (1)
      {
        v4 = (v4 - 1);
        if (v4 < 0)
        {
          break;
        }

        v5 = *(a1 + 23);
        if (v5 >= 0)
        {
          v6 = a1;
        }

        else
        {
          v6 = *a1;
        }

        if (v5 >= 0)
        {
          v7 = *(a1 + 23);
        }

        else
        {
          v7 = *(a1 + 8);
        }

        v8 = morphun::util::StringViewUtils::codePointAt(v6, v7, v4);
        if (MEMORY[0x1BFB49A20](*a2, v8))
        {
          return v4;
        }
      }
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  return 0xFFFFFFFFLL;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,void *>>>::operator()[abi:se200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

double morphun::tokenizer::RegexSplitIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 224) = xmmword_1BE695F70;
  *(a1 + 240) = -1;
  return result;
}

uint64_t morphun::tokenizer::RegexSplitIterator::getNextBoundary(morphun::tokenizer::RegexSplitIterator *this)
{
  v2 = *(this + 58);
  if (*(this + 57) >= v2)
  {
    *(this + 56) = v2;
    result = (*(**(this + 4) + 24))(*(this + 4));
    *(this + 58) = result;
    v4 = *(this + 56);
    v5 = (result - v4);
    if (v5 >= 2)
    {
      status = U_ZERO_ERROR;
      utext_openUChars((this + 80), (*(this + 2) + 2 * v4), v5, &status);
      v6 = status;
      if (status >= U_ILLEGAL_ARGUMENT_ERROR || (v22 = U_ZERO_ERROR, uregex_setUText(*(this + 8), (this + 80), &v22), v6 = v22, v22 >= U_ILLEGAL_ARGUMENT_ERROR) || (v22 = U_ZERO_ERROR, v7 = uregex_find(*(this + 8), 0, &v22), v6 = v22, v22 >= U_ILLEGAL_ARGUMENT_ERROR))
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::ICUException::ICUException(exception, v6);
      }

      else
      {
        if (!v7)
        {
          goto LABEL_19;
        }

        v8 = *(this + 1);
        if (*(v8 + 136))
        {
          v9 = *(this + 56);
          v10 = *(this + 3);
          v11 = v10 >= v9;
          v12 = v10 - v9;
          if (!v11)
          {
            std::__throw_out_of_range[abi:se200100]("string_view::substr");
          }

          v13 = (this + 40);
          if (v12 >= v5)
          {
            v14 = v5;
          }

          else
          {
            v14 = v12;
          }

          morphun::util::StringViewUtils::lowercase(this + 40, (*(this + 2) + 2 * v9), v14, v8 + 8);
          v15 = npc<std::set<std::u16string_view>>(*(*(this + 1) + 136));
          v16 = *(this + 63);
          if ((v16 & 0x8000000000000000) != 0)
          {
            v13 = *(this + 5);
            v16 = *(this + 6);
          }

          v17 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v15, v13, v16);
          if (npc<std::set<std::u16string_view>>(*(*(this + 1) + 136)) + 8 != v17)
          {
LABEL_19:
            result = *(this + 58);
            goto LABEL_20;
          }
        }

        v22 = U_ZERO_ERROR;
        v18 = uregex_groupCount(*(this + 8), &v22);
        v19 = v22;
        if (v22 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          *(this + 59) = 1;
          *(this + 60) = v18;
          return morphun::tokenizer::RegexSplitIterator::getNextRegexBoundary(this);
        }

        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::ICUException::ICUException(exception, v19);
      }
    }

LABEL_20:
    *(this + 57) = result;
    return result;
  }

  return morphun::tokenizer::RegexSplitIterator::getNextRegexBoundary(this);
}

uint64_t morphun::tokenizer::RegexSplitIterator::getNextRegexBoundary(morphun::tokenizer::RegexSplitIterator *this)
{
  v2 = *(this + 59);
  if (v2 > *(this + 60))
  {
LABEL_7:
    result = *(this + 58);
  }

  else
  {
    while (1)
    {
      status = U_ZERO_ERROR;
      v3 = uregex_end(*(this + 8), v2, &status);
      v4 = status;
      if (status >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::ICUException::ICUException(exception, v4);
      }

      if (v3 >= 1)
      {
        result = (*(this + 56) + v3);
        if (result < *(this + 58) && *(this + 57) < result)
        {
          break;
        }
      }

      v6 = *(this + 59);
      v7 = *(this + 60);
      v2 = v6 + 1;
      *(this + 59) = v6 + 1;
      if (v6 >= v7)
      {
        goto LABEL_7;
      }
    }
  }

  *(this + 57) = result;
  return result;
}

uint64_t npc<std::set<std::u16string_view>>(uint64_t result)
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

icu4cxx::RegularExpression *icu4cxx::RegularExpression::RegularExpression(icu4cxx::RegularExpression *this, const URegularExpression **a2)
{
  *this = 0;
  *(this + 8) = 1;
  status = U_ZERO_ERROR;
  *this = uregex_clone(*a2, &status);
  *(this + 8) = 1;
  v3 = status;
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v3);
  }

  return this;
}

uint64_t morphun::dialog::language::FiCommonConceptFactory::quantifyType@<X0>(morphun::dialog::language::FiCommonConceptFactory *a1@<X0>, uint64_t a2@<X1>, const morphun::dialog::SemanticFeatureConceptBase *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  if (*(a1 + 49))
  {
    v11 = (*(*a3 + 104))(a3);
    v12 = (*(*a3 + 128))(a3);
    npc<morphun::dialog::SemanticFeatureConceptBase>(v12);
    shouldUsePlural = morphun::dialog::language::FiCommonConceptFactory::shouldUsePlural(a1, a3);
    v14 = *(a1 + 47);
    v15 = npc<morphun::dialog::SemanticFeature const>(v14);
    if (shouldUsePlural)
    {
      v16 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v15);
    }

    else
    {
      v16 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v15);
    }

    (*(*v12 + 64))(v12, v14, v16);
    if (v11)
    {
      v18 = (*(*v11 + 32))(v11);
      v19 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v18);
      v20 = *(v18 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v18 + 8);
      }

      v22 = *(v19 + 23);
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v19 + 8);
      }

      if (v20 != v22)
      {
        goto LABEL_28;
      }

      if (v20)
      {
        if (v23 >= 0)
        {
          v24 = v19;
        }

        else
        {
          v24 = *v19;
        }

        if (v21 >= 0)
        {
          v25 = v18;
        }

        else
        {
          v25 = *v18;
        }

        while (*v24 == *v25)
        {
          ++v25;
          ++v24;
          if (!--v20)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }
    }

LABEL_23:
    v26 = v6 == 1 || shouldUsePlural;
    if ((v26 & 1) == 0)
    {
      v27 = *(a1 + 49);
      v28 = npc<morphun::dialog::SemanticFeature const>(v27);
      v29 = morphun::grammar::synthesis::GrammemeConstants::CASE_PARTITIVE(v28);
      (*(*v12 + 64))(v12, v27, v29);
    }

LABEL_28:
    v30 = (*(*(v12 + *(*v12 - 56)) + 24))(v12 + *(*v12 - 56));
    npc<morphun::dialog::SpeakableString>(v30);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v33, __p);
    morphun::dialog::SpeakableString::operator+(a2, v33, v34);
    morphun::dialog::SpeakableString::operator+(v34, v30, a6);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v30 + 16))(v30);
    result = (*(*v12 + 16))(v12);
    if (v11)
    {
      return (*(*v11 + 16))(v11);
    }

    return result;
  }

  return morphun::dialog::CommonConceptFactoryImpl::quantifyType(a1, a2, a3, a4, a5);
}

void sub_1BE5DED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  (*(*v22 + 16))(v22);
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::SemanticFeatureConceptBase>(uint64_t result)
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

BOOL morphun::dialog::language::FiCommonConceptFactory::shouldUsePlural(morphun::dialog::language::FiCommonConceptFactory *this, const morphun::dialog::SemanticFeatureConceptBase *a2)
{
  v4 = *(this + 47);
  npc<morphun::dialog::SemanticFeature const>(v4);
  if (!(*(*a2 + 56))(a2, v4))
  {
    goto LABEL_18;
  }

  v5 = *(this + 47);
  npc<morphun::dialog::SemanticFeature const>(v5);
  v6 = (*(*a2 + 48))(a2, v5);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v7 = v6;
  v8 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v6);
  v9 = *(v7 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v7 + 1);
  }

  v11 = *(v8 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 8);
  }

  if (v9 != v11)
  {
    goto LABEL_18;
  }

  if (v9)
  {
    if (v12 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = *v8;
    }

    if (v10 >= 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = *v7;
    }

    while (*v13 == *v14)
    {
      v14 = (v14 + 2);
      ++v13;
      if (!--v9)
      {
        return 1;
      }
    }

LABEL_18:
    v16 = (*(*a2 + 128))(a2);
    v17 = npc<morphun::dialog::SemanticFeatureConceptBase>(v16);
    (*(*v17 + 96))(v17);
    memset(&v31, 0, sizeof(v31));
    v18 = (*(*(v16 + *(*v16 - 56)) + 24))(v16 + *(*v16 - 56));
    npc<morphun::dialog::SpeakableString>(v18);
    if (!v18)
    {
      v15 = 0;
LABEL_44:
      (*(*v16 + 16))(v16);
      return v15;
    }

    v19 = (*(*v18 + 32))(v18);
    std::basic_string<char16_t>::operator=(&v31, v19);
    size = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v31.__r_.__value_.__l.__size_;
      if (v31.__r_.__value_.__l.__size_)
      {
        v21 = v31.__r_.__value_.__r.__words[0];
LABEL_25:
        morphun::dictionary::DictionaryMetaData::getPropertyValues(*(this + 94), v21, size, "i", 0xAuLL, v30);
        if (v30[0] == v30[1] || (std::basic_string<char16_t>::ends_with[abi:se200100](v30[0], "y") & 1) == 0)
        {
          v22 = *(this + 94);
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v31;
          }

          else
          {
            v23 = v31.__r_.__value_.__r.__words[0];
          }

          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v31.__r_.__value_.__l.__size_;
          }

          v25 = *(this + 95);
          v32 = 0;
          CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v22, &v32, v23, v24);
          v15 = (v25 & ~v32) == 0 && CombinedBinaryType != 0;
        }

        else
        {
          v15 = 1;
        }

        v32 = v30;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v32);
        goto LABEL_42;
      }
    }

    else if (*(&v31.__r_.__value_.__s + 23))
    {
      v21 = &v31;
      goto LABEL_25;
    }

    v15 = 0;
LABEL_42:
    (*(*v18 + 16))(v18);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    goto LABEL_44;
  }

  return 1;
}

void sub_1BE5DF27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t *a18)
{
  a18 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a18);
  (*(*v19 + 16))(v19);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  (*(*v18 + 16))(v18);
  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::SpeakableString>(uint64_t result)
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

uint64_t morphun::dialog::language::FiCommonConceptFactory::quantify(morphun::dialog::language::FiCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  if (*(this + 49))
  {
    npc<morphun::dialog::SemanticFeatureConceptBase const>(a3);
    v6 = *(this + 49);
    npc<morphun::dialog::SemanticFeature const>(v6);
    v7 = (*(*a3 + 104))(a3, v6);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"cardinal");
    if (v7)
    {
      v8 = (*(*v7 + 32))(v7);
      v9 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(this + 400, v8);
      if ((this + 408) != v9)
      {
        std::basic_string<char16_t>::operator=(&__dst, (v9 + 56));
      }
    }

    if (morphun::dialog::language::FiCommonConceptFactory::shouldUsePlural(this, a3))
    {
      std::basic_string<char16_t>::append(&__dst, "-", 7uLL);
    }

    (*(*a2 + 200))(v11, a2, &__dst);
    morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, v11, a3);
  }

  return morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, a3);
}

void sub_1BE5DF558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::FiCommonConceptFactory::~FiCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC6A8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC6A8);
}

void *std::map<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::map[abi:se200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 16);
      if (*(v4 + 16) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(*a1);
    std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(a1[1]);
    std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void morphun::dialog::language::CsCommonConceptFactory::~CsCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC840);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC840);
}

void morphun::exception::ExcessComplexityException::~ExcessComplexityException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::ExcessComplexityException::ExcessComplexityException(morphun::exception::ExcessComplexityException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD09A8;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD09A8;
  return result;
}

uint64_t morphun::util::Logger::registerLogger(morphun::util *a1, morphun::util *a2)
{
  v4 = morphun::util::CLASS_MUTEX(a1);
  std::mutex::lock(v4);
  v6 = morphun::util::LOGGER_CACHE(v5);
  result = npc<std::vector<std::pair<void *,void (*)(void *,MLogLevel,char16_t const*,char16_t const*)>>>(v6);
  if (!a2)
  {
    v13 = *v6;
    v12 = v6[1];
    while (v13 != v12)
    {
      if (*v13 == a1)
      {
        v18 = v13 + 2;
        if (v13 + 2 != v12)
        {
          do
          {
            v19 = v18[1];
            *(v18 - 2) = *v18;
            *(v18 - 1) = v19;
            v18 += 2;
          }

          while (v18 != v12);
          v13 = v18 - 2;
        }

        v6[1] = v13;
        goto LABEL_27;
      }

      v13 += 2;
    }

    goto LABEL_13;
  }

  v8 = *v6;
  v9 = v6[1];
  if (*v6 != v9)
  {
    v10 = *v6;
    while (*v10 != a1)
    {
      v10 += 2;
      if (v10 == v9)
      {
        goto LABEL_6;
      }
    }

LABEL_13:
    v14 = 0;
LABEL_28:
    std::mutex::unlock(v4);
    return v14;
  }

LABEL_6:
  v11 = v6[2];
  if (v9 >= v11)
  {
    v15 = ((v9 - v8) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    v16 = v11 - v8;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:se200100]();
    }
  }

  else if (v9)
  {
    *v9 = a1;
    v9[1] = a2;
    v6[1] = v9 + 2;
LABEL_27:
    v14 = 1;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

std::basic_string<char16_t> *morphun::grammar::synthesis::DeGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(uint64_t *a1, uint64_t a2)
{
  v4 = a1[11];
  npc<morphun::dialog::SemanticFeature const>(v4);
  v5 = (*(*a2 + 32))(a2, v4);
  Case = morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(v5);
  v7 = a1[12];
  npc<morphun::dialog::SemanticFeature const>(v7);
  v8 = (*(*a2 + 32))(a2, v7);
  Count = morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(v8);
  v10 = a1[13];
  npc<morphun::dialog::SemanticFeature const>(v10);
  v11 = (*(*a2 + 32))(a2, v10);
  Gender = morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(v11);
  v13 = Gender;
  v46 = 0;
  if (Count)
  {
    v14 = Gender == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = (*(*a2 + 24))(a2);
    if (*(v15 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v15, *(v15 + 8));
    }

    else
    {
      v16 = *v15;
      __p.__r_.__value_.__r.__words[2] = *(v15 + 16);
      *&__p.__r_.__value_.__l.__data_ = v16;
    }

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

    if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[3], &v46, p_p, size))
    {
      v19 = a1[17];
      if (!v19)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      v20 = (*(*v19 + 24))(v19, &__p);
      if ((*(*v20 + 32))(v20) >= 2)
      {
        v21 = a1[3];
        v22 = (*(*v20 + 56))(v20);
        v23 = npc<morphun::Token>(v22);
        v24 = npc<morphun::Token>(*(v23 + 72));
        v27 = *(v24 + 16);
        v25 = v24 + 16;
        v26 = v27;
        v28 = *(v25 + 23);
        if (v28 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = v26;
        }

        if (v28 >= 0)
        {
          v30 = *(v25 + 23);
        }

        else
        {
          v30 = *(v25 + 8);
        }

        morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v21, &v46, v29, v30);
      }

      (*(*v20 + 16))(v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!Count)
    {
      if (v46 && (a1[10] & v46) == a1[9])
      {
        LOBYTE(Count) = 2;
      }

      else
      {
        LOBYTE(Count) = 1;
      }
    }

    if (!v13 && v46)
    {
      v31 = a1[7] & v46;
      if (v31 == a1[4])
      {
        LOBYTE(v13) = 2;
      }

      else if (v31 == a1[5])
      {
        LOBYTE(v13) = 1;
      }

      else if (v31 == a1[6])
      {
        LOBYTE(v13) = 3;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }
  }

  if (Case <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = Case;
  }

  v33 = a1[15];
  if (!v33)
  {
    goto LABEL_52;
  }

  v34 = Count & 0xF | (16 * (v13 & 0xF)) | ((v32 & 0xF) << 8);
  v35 = a1 + 15;
  do
  {
    if (*(v33 + 32) >= v34)
    {
      v35 = v33;
    }

    v33 = *(v33 + 8 * (*(v33 + 32) < v34));
  }

  while (v33);
  if (v35 != a1 + 15 && v34 >= *(v35 + 8))
  {
    v39 = v35[6];
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    v40 = v35[5];
    if (v39 > 0xA)
    {
      if ((v39 | 3) == 0xB)
      {
        v41 = 13;
      }

      else
      {
        v41 = (v39 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v41);
    }

    *(&__p.__r_.__value_.__s + 23) = v35[6];
    result = &__p;
    v42 = (&__p + 2 * v39);
    if (&__p <= v40 && v42 > v40)
    {
      __break(1u);
      return result;
    }

    if (v39)
    {
      memmove(&__p, v40, 2 * v39);
    }

    v42->__r_.__value_.__s.__data_[0] = 0;
    v36 = (*(*a1 + 32))(a1, a2, &__p);
  }

  else
  {
LABEL_52:
    memset(&__p, 0, sizeof(__p));
    v36 = (*(*a1 + 32))(a1, a2, &__p);
  }

  v37 = v36;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v37;
}

void sub_1BE5DFF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_ArticleLookupFunction::~DeGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::DeGrammarSynthesizer_ArticleLookupFunction *this)
{
  morphun::grammar::synthesis::DeGrammarSynthesizer_ArticleLookupFunction::~DeGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD4AE0;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  std::__tree<std::u16string_view>::destroy(*(this + 15));
}

uint64_t morphun::util::Validate::notNull<morphun::dialog::SemanticFeature const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Input argument is null.");
    morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
  }

  return result;
}

void sub_1BE5E01FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void morphun::grammar::synthesis::DeGrammarSynthesizer_ArticleLookupFunction::DeGrammarSynthesizer_ArticleLookupFunction(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE6E38;
  v7 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDBAC0, a2, a3, 1);
  *a1 = &off_1F3CD4AE0;
  v8 = morphun::util::LocaleUtils::GERMAN(v7);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(v8, v9);
  if (Dictionary)
  {
    *(a1 + 32) = 0u;
    *(a1 + 24) = Dictionary;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"case");
    v11 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
    v12 = a2 + 16;
    if (a2 + 16 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v11 + 56);
    }

    morphun::util::Validate::notNull<morphun::dialog::SemanticFeature const>(v13);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 88) = v13;
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
    v14 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
    if (v12 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 56);
    }

    morphun::util::Validate::notNull<morphun::dialog::SemanticFeature const>(v15);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 96) = v15;
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"gender");
    v16 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
    if (v12 == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 56);
    }

    morphun::util::Validate::notNull<morphun::dialog::SemanticFeature const>(v17);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 104) = v17;
    v18 = std::map<int,std::u16string_view>::map[abi:se200100]((a1 + 112), a4);
    v19 = morphun::util::LocaleUtils::GERMAN(v18);
    morphun::TokenizerFactory::createTokenizer(v19, v20);
  }

  exception = __cxa_allocate_exception(0x38uLL);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"Input argument is null.");
  morphun::exception::NullPointerException::NullPointerException(exception, __p);
}

void sub_1BE5E0710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::__tree<std::u16string_view>::destroy(*(v21 + 120));
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void morphun::dialog::language::CaCommonConceptFactory::~CaCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC880);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC880);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::inflectSignificantTokens(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  Declension = morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::getDeclension(*(a1 + 8), a2);
  v10 = *a4;
  v9 = a4[1];
  if (v10 == v9)
  {
LABEL_8:
    npc<std::vector<std::basic_string<char16_t>>>(a3);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  else
  {
    v11 = Declension;
    while (1)
    {
      v12 = *v10;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v12)
      {
        break;
      }

      morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::inflectWithDeclension(&v15, *a3 + 24 * v12, v11);
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v12)
      {
        std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
      }

      v13 = *a3 + 24 * v12;
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v14 = *&v15.__r_.__value_.__l.__data_;
      *(v13 + 16) = *(&v15.__r_.__value_.__l + 2);
      *v13 = v14;
      if (++v10 == v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1BE5E0A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::getDeclension(uint64_t a1, uint64_t a2)
{
  morphun::grammar::synthesis::getFeatureValue(&__p, a2, a1);
  Declension = morphun::grammar::synthesis::NlGrammarSynthesizer::getDeclension(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Declension;
}

void sub_1BE5E0B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::inflectWithDeclension(std::basic_string<char16_t> *this, uint64_t a2, int a3)
{
  v4 = this;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      *&this->__r_.__value_.__l.__data_ = 0uLL;
      this->__r_.__value_.__r.__words[2] = 0;
      return;
    }

    goto LABEL_3;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(a2 + 8);
    if (v7 < 2)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      goto LABEL_13;
    }
  }

  else if (v7 <= 1)
  {
LABEL_7:
    *&v4->__r_.__value_.__l.__data_ = *a2;
    v8 = *(a2 + 16);
LABEL_8:
    v4->__r_.__value_.__r.__words[2] = v8;
    return;
  }

  if ((std::basic_string<char16_t>::ends_with[abi:se200100](a2, "e") & 1) != 0 || (v9 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, byte_1BE80ECC4), v9))
  {
LABEL_3:
    if (*(a2 + 23) < 0)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      this = v4;
LABEL_13:

      std::basic_string<char16_t>::__init_copy_ctor_external(this, v5, v6);
      return;
    }

    goto LABEL_7;
  }

  v10 = v7 - 2;
  if (v7 == 2)
  {
    goto LABEL_49;
  }

  v11 = v7 - 1;
  v12 = *(a2 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12 < v11 || (v13 >= 0 ? (v14 = a2) : (v14 = *a2), v12 < v10 || (v15 = v7 - 3, v12 < v7 - 3)))
  {
LABEL_77:
    __break(1u);
    return;
  }

  v16 = *(v14 + 2 * v11);
  v17 = *(v14 + 2 * v10);
  v18 = *(v14 + 2 * v15);
  v19 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v9);
  v20 = MEMORY[0x1BFB49A20](*v19, v18);
  v21 = v18 != v17 || v20 == 0;
  if (v21 && (v18 != 105 || v17 != 106) && (v18 != 101 || v17 != 105) && (v18 != 105 || v17 != 101) && (v18 != 111 || v17 != 101) && (v18 != 97 ? (v22 = v18 == 111) : (v22 = 1), !v22 || v17 != 117) || (v23 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v20), MEMORY[0x1BFB49A20](*v23, v16)))
  {
    v25 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, "i");
    if ((v25 & 1) == 0)
    {
      v26 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v25);
      v27 = MEMORY[0x1BFB49A20](*v26, v18);
      if (!v27)
      {
        v33 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v27);
        v34 = MEMORY[0x1BFB49A20](*v33, v17);
        if (v34)
        {
          v35 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v34);
          if (!MEMORY[0x1BFB49A20](*v35, v16))
          {
            std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v37, a2, v16);
            std::basic_string<char16_t>::push_back(&v37, 101);
            *&v4->__r_.__value_.__l.__data_ = *&v37.__r_.__value_.__l.__data_;
            v8 = v37.__r_.__value_.__r.__words[2];
            goto LABEL_8;
          }
        }
      }
    }

LABEL_49:
    if (*(a2 + 23) >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 8);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](v4, v28 + 1);
    if ((v4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = v4;
    }

    else
    {
      v29 = v4->__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if ((v28 & 0x8000000000000000) == 0)
    {
      v31 = v29 + 2 * v28;
      if (v30 < v29 || v31 <= v30)
      {
        if (v28)
        {
          memmove(v29, v30, 2 * v28);
        }

        if (v31 > byte_1BE80ECC4 || v31 + 2 <= byte_1BE80ECC4)
        {
          *v31 = 101;
          return;
        }
      }
    }

    goto LABEL_77;
  }

  if (v16 == 115)
  {
    v32 = 122;
  }

  else
  {
    v32 = v16;
  }

  if (v18 == v17)
  {
    std::basic_string<char16_t>::basic_string(&v36, a2, 0, v10, v24);
  }

  else
  {
    std::basic_string<char16_t>::basic_string(&v36, a2, 0, v11, v24);
  }

  std::basic_string<char16_t>::push_back(&v36, v32);
  v37 = v36;
  memset(&v36, 0, sizeof(v36));
  std::basic_string<char16_t>::push_back(&v37, 101);
  *v4 = v37;
  memset(&v37, 0, sizeof(v37));
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5E0F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::SemanticConcept::toSpeakableStringDefault(morphun::dialog::SemanticConcept *this, int a2)
{
  memset(&v12, 0, sizeof(v12));
  v11 = 0;
  CurrentValue = morphun::dialog::SemanticConcept::getCurrentValue(this, &v11);
  v5 = CurrentValue;
  if (CurrentValue)
  {
    v6 = (*(*CurrentValue + 24))(CurrentValue);
    std::basic_string<char16_t>::operator=(&v12, v6);
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (!(*(*this + 120))(this))
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      if ((*(*v5 + 32))(v5))
      {
        operator new();
      }

      goto LABEL_12;
    }
  }

  else if (a2)
  {
    std::basic_string<char16_t>::operator=(&v12, (this + *(*(this + 5) - 40) + 64));
    v8 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v12.__r_.__value_.__l.__size_;
    }

    if (v8)
    {
LABEL_12:
      operator new();
    }
  }

  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1BE5E11BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a9)
  {
    (*(*a9 + 16))(a9);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticConcept::getCurrentValue(uint64_t a1, uint64_t *a2)
{
  FirstPossibleValue = morphun::dialog::SemanticConcept::getFirstPossibleValue(a1, a2);
  if (!FirstPossibleValue)
  {
    goto LABEL_8;
  }

  v4 = FirstPossibleValue;
  v5 = (*(*FirstPossibleValue + 24))(FirstPossibleValue);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  if (!v6)
  {
    if (*(a1 + 160) != 1)
    {
      return 0;
    }

LABEL_8:
    v7 = *(a1 + 127);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 112);
    }

    if (v7)
    {
      return a1 + 96;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t morphun::dialog::SemanticConcept::getFirstPossibleValue(uint64_t a1, uint64_t *a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 152);
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    goto LABEL_31;
  }

  v7 = (a1 + 24);
  do
  {
    v8 = (*(*v5 + 40))(v5);
    std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](&v31, v8);
    v9 = *(a1 + 16);
    if (v9 == v7)
    {
      std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v31.__r_.__value_.__l.__size_);
      goto LABEL_43;
    }

    v10 = 1;
    do
    {
      v11 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(&v31, (v9 + 4));
      if (&v31.__r_.__value_.__r.__words[1] != v11)
      {
        v12 = *(v11 + 127);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v11 + 112);
        }

        v14 = *(v9 + 127);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = v9[14];
        }

        if (v12 == v14)
        {
          if (!v12)
          {
            goto LABEL_23;
          }

          if (v15 >= 0)
          {
            v16 = (v9 + 13);
          }

          else
          {
            v16 = v9[13];
          }

          if (v13 >= 0)
          {
            v17 = (v11 + 104);
          }

          else
          {
            v17 = *(v11 + 104);
          }

          while (*v16 == *v17)
          {
            ++v17;
            ++v16;
            if (!--v12)
            {
              goto LABEL_23;
            }
          }
        }
      }

      v10 = 0;
LABEL_23:
      v18 = v9[1];
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
          v19 = v9[2];
          v20 = *v19 == v9;
          v9 = v19;
        }

        while (!v20);
      }

      v9 = v19;
    }

    while (v19 != v7);
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v31.__r_.__value_.__l.__size_);
    if (v10)
    {
      goto LABEL_43;
    }

    v5 += 56;
  }

  while (v5 != v6);
LABEL_31:
  v21 = (*(*a1 + 40))(a1);
  v22 = npc<morphun::dialog::SemanticFeatureModel const>(v21);
  v5 = *(v22 + 232);
  if (v5)
  {
    v23 = *(a1 + 152);
    if (!v23)
    {
      if (*(a1 + 160) == 1)
      {
        v31.__r_.__value_.__r.__words[0] = &unk_1F3CD8370;
        if (*(a1 + 127) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v31.__r_.__value_.__r.__words[1], *(a1 + 104), *(a1 + 112));
        }

        else
        {
          *&v31.__r_.__value_.__r.__words[1] = *(a1 + 104);
          v32 = *(a1 + 120);
        }

        std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](v33, a1 + 128);
        memset(&v29, 0, sizeof(v29));
        std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue const*,morphun::dialog::SemanticFeatureModel_DisplayValue const*>();
      }

      exception = __cxa_allocate_exception(0x38uLL);
      morphun::dialog::SemanticValue::toString((a1 + 40), &v29);
      std::basic_string<char16_t>::insert(&v29, L"Display data is missing for ", 0x1D, v28);
      v30 = v29;
      memset(&v29, 0, sizeof(v29));
      std::basic_string<char16_t>::append(&v30, "", 0x28uLL);
      v31 = v30;
      memset(&v30, 0, sizeof(v30));
      morphun::exception::IllegalStateException::IllegalStateException(exception, &v31);
    }

    v5 = (*(*v5 + 24))(*(v22 + 232), v23, a1 + 16, 1);
    if (v5)
    {
      v24 = *a2;
      *a2 = v5;
      if (v24)
      {
        (*(*v24 + 16))(v24);
      }
    }
  }

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1BE5E1700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, void *a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v35 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v34);
  goto LABEL_10;
}

uint64_t npc<morphun::dialog::SemanticFeatureModel const>(uint64_t result)
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

morphun::dialog::SemanticConcept *morphun::dialog::SemanticConcept::SemanticConcept(morphun::dialog::SemanticConcept *this, const morphun::dialog::SemanticConcept *a2)
{
  *this = &off_1F3CED1B0;
  v4 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCC50, a2);
  v4->__r_.__value_.__r.__words[0] = &unk_1F3CD8E20;
  std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100](v4 + 2, (a2 + *(*(a2 + 5) - 40) + 40));
  *(this + 5) = &unk_1F3CD8FC0;
  *(this + 12) = &unk_1F3CD8370;
  if (*(a2 + 127) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v5;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 16, a2 + 128);
  *(this + 19) = *(a2 + 19);
  *(this + 160) = *(a2 + 160);
  return this;
}

void sub_1BE5E1B90(_Unwind_Exception *a1)
{
  morphun::dialog::SemanticValue::~SemanticValue(v2);
  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, off_1F3CDCC50);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticConcept::getFeatureValue(morphun::dialog::SemanticConcept *this, const morphun::dialog::SemanticFeature *a2)
{
  v12 = 0;
  CurrentValue = morphun::dialog::SemanticConcept::getCurrentValue(this, &v12);
  v5 = CurrentValue;
  if (CurrentValue)
  {
    if ((*(*CurrentValue + 32))(CurrentValue, a2))
    {
      operator new();
    }

    v6 = (*(*this + 40))(this);
    v7 = npc<morphun::dialog::SemanticFeatureModel const>(v6);
    DefaultFeatureFunction = morphun::dialog::SemanticFeatureModel::getDefaultFeatureFunction(v7, a2);
    if (DefaultFeatureFunction)
    {
      v9 = (*(*DefaultFeatureFunction + 24))(DefaultFeatureFunction, v5, this + 16);
      goto LABEL_10;
    }

    FirstPossibleValue = morphun::dialog::SemanticConcept::getFirstPossibleValue(this, &v12);
    if (FirstPossibleValue && (*(*FirstPossibleValue + 32))(FirstPossibleValue, a2))
    {
      operator new();
    }
  }

  v9 = 0;
LABEL_10:
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  return v9;
}

void sub_1BE5E1D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1BFB49160](v10, 0x10B3C40F7FF9C27);
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(a1);
}

BOOL morphun::dialog::SemanticConcept::isExists(morphun::dialog::SemanticConcept *this)
{
  v3 = 0;
  CurrentValue = morphun::dialog::SemanticConcept::getCurrentValue(this, &v3);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  return CurrentValue != 0;
}

void sub_1BE5E1E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::SemanticConcept::~SemanticConcept(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::SemanticConcept::~SemanticConcept(void **this, uint64_t a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 9)) = *(a2 + 40);
  *(this + *(*this - 7)) = *(a2 + 48);
  *(this + *(*this - 5)) = *(a2 + 56);
  morphun::dialog::SemanticValue::~SemanticValue(this + 5);

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(this, (a2 + 8));
}

_BYTE *morphun::dialog::SemanticConcept::toString@<X0>(morphun::dialog::SemanticConcept *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 160);
  return morphun::dialog::SemanticConcept::toString(this, a2);
}

{
  v3 = (*(*this + 144))(this);
  if (v3)
  {
    v4 = v3;
    (**v3)(v3);
    v5 = (*v4)[2];

    return (v5)(v4);
  }

  else
  {

    return std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a2, L"null");
  }
}

std::basic_string<char16_t> *morphun::dialog::SemanticConcept::SemanticConcept(std::basic_string<char16_t> *this, const morphun::dialog::SemanticFeatureModel *a2, const morphun::dialog::SemanticValue *a3, uint64_t *a4, char a5)
{
  v10 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v11 = *a2;
  *v10 = *a2;
  *(this->__r_.__value_.__r.__words + *(v11 - 72)) = *(a2 + 5);
  *(this->__r_.__value_.__r.__words + *(this->__r_.__value_.__r.__words[0] - 56)) = *(a2 + 6);
  *(this->__r_.__value_.__r.__words + *(this->__r_.__value_.__r.__words[0] - 40)) = *(a2 + 7);
  std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100](this + 2, (a4 + *(*a4 - 40)));
  this[1].__r_.__value_.__r.__words[2] = &unk_1F3CD8FC0;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(&this[4], (a4 + *(*a4 - 40) + 24));
  npc<morphun::dialog::SemanticFeatureModel const>(a3);
  DisplayData = morphun::dialog::SemanticFeatureModel::getDisplayData(a3, a4);
  this[6].__r_.__value_.__l.__size_ = DisplayData;
  LOBYTE(this[6].__r_.__value_.__r.__words[2]) = a5;
  if ((a5 & 1) == 0 && (!DisplayData || *(DisplayData + 8) == *(DisplayData + 16)))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v15 = a4;
    v16 = exception;
    (**v15)(&v18, v15);
    std::basic_string<char16_t>::insert(&v18, L"Display data is missing for semantic value ", 0x2C, v17);
    v19 = v18;
    memset(&v18, 0, sizeof(v18));
    std::basic_string<char16_t>::append(&v19, "", 0x28uLL);
    v20 = v19;
    memset(&v19, 0, sizeof(v19));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v16, &v20);
  }

  return this;
}

void sub_1BE5E244C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v32 & 1) == 0)
    {
LABEL_10:
      morphun::dialog::SemanticValue::~SemanticValue(v30);
      morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v28, (v29 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v31);
  goto LABEL_10;
}

morphun::dialog::SemanticConcept *morphun::dialog::SemanticConcept::SemanticConcept(morphun::dialog::SemanticConcept *this, const morphun::dialog::SemanticFeatureModel *a2, const morphun::dialog::SemanticValue *a3, char a4)
{
  *this = &off_1F3CED1B0;
  v8 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCC50, a2);
  v8->__r_.__value_.__r.__words[0] = &unk_1F3CD8E20;
  std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100](v8 + 2, (a3 + *(*a3 - 40)));
  *(this + 5) = &unk_1F3CD8FC0;
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(this + 96, (a3 + *(*a3 - 40) + 24));
  npc<morphun::dialog::SemanticFeatureModel const>(a2);
  DisplayData = morphun::dialog::SemanticFeatureModel::getDisplayData(a2, a3);
  *(this + 19) = DisplayData;
  *(this + 160) = a4;
  if ((a4 & 1) == 0 && (!DisplayData || *(DisplayData + 8) == *(DisplayData + 16)))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    (**a3)(&v13, a3);
    std::basic_string<char16_t>::insert(&v13, L"Display data is missing for semantic value ", 0x2C, v12);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    std::basic_string<char16_t>::append(&v14, "", 0x28uLL);
    v15 = v14;
    memset(&v14, 0, sizeof(v14));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v15);
  }

  return this;
}

void sub_1BE5E26EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      morphun::dialog::SemanticValue::~SemanticValue(v29);
      morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v28, off_1F3CDCC50);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

morphun::dialog::SemanticConcept *morphun::dialog::SemanticConcept::SemanticConcept(morphun::dialog::SemanticConcept *this, const morphun::dialog::SemanticConcept *a2, uint64_t a3)
{
  v6 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 72)) = *(a2 + 5);
  *(this + *(*this - 56)) = *(a2 + 6);
  *(this + *(*this - 40)) = *(a2 + 7);
  std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100](this + 2, (a3 + 40 + *(*(a3 + 40) - 40)));
  *(this + 5) = &unk_1F3CD8FC0;
  *(this + 12) = &unk_1F3CD8370;
  if (*(a3 + 127) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v8 = *(a3 + 104);
    *(this + 15) = *(a3 + 120);
    *(this + 104) = v8;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 16, a3 + 128);
  *(this + 19) = *(a3 + 152);
  *(this + 160) = *(a3 + 160);
  return this;
}

void sub_1BE5E29A8(_Unwind_Exception *a1)
{
  morphun::dialog::SemanticValue::~SemanticValue(v3);
  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::SemanticConcept::~SemanticConcept(morphun::dialog::SemanticConcept *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::SemanticConcept::~SemanticConcept(void *a1)
{
}

{
}

{

  JUMPOUT(0x1BFB49160);
}

{

  JUMPOUT(0x1BFB49160);
}

_BYTE *virtual thunk tomorphun::dialog::SemanticConcept::toString@<X0>(morphun::dialog::SemanticConcept *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this + *(*this - 24);
  v3 = v2[160];
  return morphun::dialog::SemanticConcept::toString(v2, a2);
}

BOOL morphun::dialog::SemanticConcept::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v4 = (*(*a1 + 40))(a1);
  if (v4 != (*(*a2 + 40))(a2))
  {
    return 0;
  }

  v5 = a1 + 40 + *(*(a1 + 40) - 40);
  v6 = a2 + 40 + *(*(a2 + 40) - 40);
  v7 = *(v5 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v5 + 8);
  }

  v9 = *(v6 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v6 + 8);
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v7)
  {
    if (v10 >= 0)
    {
      v11 = (a2 + 40 + *(*(a2 + 40) - 40));
    }

    else
    {
      v11 = *v6;
    }

    if (v8 >= 0)
    {
      v12 = (a1 + 40 + *(*(a1 + 40) - 40));
    }

    else
    {
      v12 = *v5;
    }

    while (*v11 == *v12)
    {
      ++v12;
      ++v11;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v13 = *(v5 + 47);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v5 + 32);
  }

  v15 = *(v6 + 47);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v6 + 32);
  }

  if (v13 != v15)
  {
    return 0;
  }

  if (v13)
  {
    v17 = (v5 + 24);
    v18 = (v6 + 24);
    v19 = *(v6 + 24);
    if (v16 < 0)
    {
      v18 = v19;
    }

    v20 = *v17;
    if (v14 >= 0)
    {
      v20 = v17;
    }

    while (*v18 == *v20)
    {
      ++v20;
      ++v18;
      if (!--v13)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

LABEL_29:
  if (*(a1 + 160) != *(a2 + 160))
  {
    return 0;
  }

  v21 = (*(*a1 + 120))(a1);
  if (v21 != (*(*a2 + 120))(a2) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v22 = *(a1 + 16);
  v23 = (a1 + 24);
  if (v22 == v23)
  {
    return 1;
  }

  v24 = *(a2 + 16);
  do
  {
    result = morphun::dialog::SemanticFeature::operator==((v22 + 4), (v24 + 4));
    if (!result)
    {
      break;
    }

    v26 = *(v22 + 127);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = v22[14];
    }

    v28 = *(v24 + 127);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v24[14];
    }

    if (v26 != v28)
    {
      return 0;
    }

    if (v26)
    {
      if (v29 >= 0)
      {
        v30 = (v24 + 13);
      }

      else
      {
        v30 = v24[13];
      }

      if (v27 >= 0)
      {
        v31 = (v22 + 13);
      }

      else
      {
        v31 = v22[13];
      }

      while (*v30 == *v31)
      {
        ++v31;
        ++v30;
        if (!--v26)
        {
          goto LABEL_49;
        }
      }

      return 0;
    }

LABEL_49:
    v32 = v22[1];
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
        v33 = v22[2];
        v34 = *v33 == v22;
        v22 = v33;
      }

      while (!v34);
    }

    v35 = v24[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = v24[2];
        v34 = *v36 == v24;
        v24 = v36;
      }

      while (!v34);
    }

    result = 1;
    v24 = v36;
    v22 = v33;
  }

  while (v33 != v23);
  return result;
}

void morphun::grammar::synthesis::BgGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::BgGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE5E3270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = 0;
  while (1)
  {
    if (*(&a31 + v33) < 0)
    {
      operator delete(*(&a26 + v33));
    }

    v33 -= 24;
    if (v33 == -48)
    {
      MEMORY[0x1BFB49160](v31, 0x10F3C40BE507067);
      if (a18 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

BOOL morphun::analysis::tokenattributes::KeywordAttributeImpl::isImplemented(morphun::analysis::tokenattributes::KeywordAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
}

void morphun::analysis::tokenattributes::KeywordAttributeImpl::reflectWith(morphun::analysis::tokenattributes::KeywordAttributeImpl *this, morphun::analysis::util::AttributeReflector *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"keyword");
  if (*(this + 16))
  {
    v4 = &word_1BE80DBB2;
  }

  else
  {
    v4 = L"false";
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

uint64_t morphun::analysis::tokenattributes::KeywordAttributeImpl::copyTo(morphun::analysis::tokenattributes::KeywordAttributeImpl *this, char **lpsrc)
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

  v5 = *(this + 16);
  v6 = *(*v4 + 64);

  return v6();
}

uint64_t morphun::analysis::tokenattributes::KeywordAttributeImpl::operator()(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  if (v3[16])
  {
    return 31;
  }

  else
  {
    return 37;
  }
}

uint64_t morphun::analysis::tokenattributes::KeywordAttributeImpl::hashCode(morphun::analysis::tokenattributes::KeywordAttributeImpl *this)
{
  if (*(this + 16))
  {
    return 31;
  }

  else
  {
    return 37;
  }
}

uint64_t morphun::analysis::tokenattributes::KeywordAttributeImpl::equals(morphun::analysis::tokenattributes::KeywordAttributeImpl *this, const morphun::analysis::util::Attribute *lpsrc)
{
  if (this == lpsrc)
  {
    return 1;
  }

  v3 = **lpsrc;
  if (result)
  {
    return *(this + 16) == *(result + 16);
  }

  return result;
}

uint64_t morphun::transliteration::TransliteratorFactory::createTransliterator(morphun::transliteration::TransliteratorFactory *this, const morphun::util::ULocale *a2, const morphun::util::ULocale *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  morphun::util::ULocale::ULocale(&v56, this);
  morphun::util::ULocale::ULocale(&v49, a2);
  v4 = v61;
  if ((v61 & 0x80u) != 0)
  {
    v4 = v60;
  }

  if (v4)
  {
    do
    {
      morphun::util::ULocale::getFallback(&v56, &v67);
      morphun::util::ULocale::operator=(&v56, &v67);
      v5 = v61;
      if ((v61 & 0x80u) != 0)
      {
        v5 = v60;
      }
    }

    while (v5);
  }

  v6 = v54;
  if ((v54 & 0x80u) != 0)
  {
    v6 = v53;
  }

  if (v6)
  {
    do
    {
      morphun::util::ULocale::getFallback(&v49, &v67);
      morphun::util::ULocale::operator=(&v49, &v67);
      v7 = v54;
      if ((v54 & 0x80u) != 0)
      {
        v7 = v53;
      }
    }

    while (v7);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = v62;
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v55;
  }

  {
    operator new();
  }

  v8 = morphun::transliteration::CLASS_MUTEX(void)::classMutex;
  if (!morphun::transliteration::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::mutex::lock(morphun::transliteration::CLASS_MUTEX(void)::classMutex);
  {
    if (v9)
    {
      operator new();
    }
  }

  if (!morphun::transliteration::TRANSLITERATOR_CACHE(void)::TRANSLITERATOR_CACHE_)
  {
    v46 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v46);
  }

  v11 = (morphun::transliteration::TRANSLITERATOR_CACHE(void)::TRANSLITERATOR_CACHE_ + 8);
  v10 = *(morphun::transliteration::TRANSLITERATOR_CACHE(void)::TRANSLITERATOR_CACHE_ + 8);
  if (!v10)
  {
    goto LABEL_31;
  }

  v12 = morphun::transliteration::TRANSLITERATOR_CACHE(void)::TRANSLITERATOR_CACHE_ + 8;
  do
  {
    v9 = std::operator<=>[abi:se200100]<std::string,std::string,std::string,std::string>((v10 + 32), &v47);
    if ((v9 & 0x80u) == 0)
    {
      v12 = v10;
    }

    v10 = *(v10 + ((v9 >> 4) & 8));
  }

  while (v10);
  if (v12 == v11 || (v9 = std::operator<=>[abi:se200100]<std::string,std::string,std::string,std::string>(&v47, (v12 + 32)), (v9 & 0x80) != 0))
  {
LABEL_31:
    if ((v59 & 0x80u) == 0)
    {
      v14 = v59;
    }

    else
    {
      v14 = v58;
    }

    v15 = v52;
    if ((v52 & 0x80u) != 0)
    {
      v15 = v51;
    }

    if (v14 != v15 || ((v59 & 0x80u) == 0 ? (v16 = &v57) : (v16 = v57), (v52 & 0x80u) == 0 ? (v17 = &v50) : (v17 = v50), v9 = memcmp(v16, v17, v14), v9))
    {
      v18 = morphun::util::LocaleUtils::ENGLISH(v9);
      v19 = *(v18 + 31);
      if (v19 >= 0)
      {
        v20 = *(v18 + 31);
      }

      else
      {
        v20 = *(v18 + 16);
      }

      v21 = v52;
      if ((v52 & 0x80u) != 0)
      {
        v21 = v51;
      }

      if (v20 != v21)
      {
        goto LABEL_56;
      }

      v24 = *(v18 + 8);
      v22 = (v18 + 8);
      v23 = v24;
      if (v19 < 0)
      {
        v22 = v23;
      }

      v25 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v18 = memcmp(v22, v25, v20);
      if (!v18)
      {
        v65 = 0;
        v66 = -1;
        Code = uscript_getCode();
        if (Code && (Code != 1 || v66 != 25))
        {
          v37 = morphun::util::LocaleUtils::JAPANESE(Code);
          if (*(v37 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v67, *(v37 + 8), *(v37 + 16));
          }

          else
          {
            v67 = *(v37 + 8);
          }

          v41 = morphun::util::LocaleUtils::HEBREW(v37);
          if (*(v41 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v68, *(v41 + 8), *(v41 + 16));
          }

          else
          {
            v68 = *(v41 + 8);
          }

          v42 = morphun::util::LocaleUtils::RUSSIAN(v41);
          if (*(v42 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v69, *(v42 + 8), *(v42 + 16));
          }

          else
          {
            v69 = *(v42 + 8);
          }

          v43 = morphun::util::LocaleUtils::ARABIC(v42);
          if (*(v43 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(v70, *(v43 + 8), *(v43 + 16));
          }

          else
          {
            v70[0] = *(v43 + 8);
          }

          std::set<std::string>::set[abi:se200100](&v63, &v67, 4);
          v44 = 0;
          while (1)
          {
            if (SHIBYTE(v70[0].__r_.__value_.__r.__words[v44 + 2]) < 0)
            {
              operator delete(v70[v44 / 3].__r_.__value_.__l.__data_);
            }

            v44 -= 3;
            if (v44 == 0x1FFFFFFFFFFFFFF4)
            {
              if (v64 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v63, &v57))
              {
                operator new();
              }

              operator new();
            }
          }
        }
      }

      else
      {
LABEL_56:
        v26 = morphun::util::LocaleUtils::ROOT(v18);
        v27 = *(v26 + 31);
        if (v27 >= 0)
        {
          v28 = *(v26 + 31);
        }

        else
        {
          v28 = *(v26 + 16);
        }

        v29 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v29 = v58;
        }

        if (v28 == v29)
        {
          v32 = *(v26 + 8);
          v30 = (v26 + 8);
          v31 = v32;
          if (v27 < 0)
          {
            v30 = v31;
          }

          if ((v59 & 0x80u) == 0)
          {
            v33 = &v57;
          }

          else
          {
            v33 = v57;
          }

          v34 = memcmp(v30, v33, v28);
          if (!v34)
          {
            v35 = morphun::util::LocaleUtils::RUSSIAN(v34);
            if (*(v35 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&v67, *(v35 + 8), *(v35 + 16));
            }

            else
            {
              v67 = *(v35 + 8);
            }

            std::set<std::string>::set[abi:se200100](&v63, &v67, 1);
            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v67.__r_.__value_.__l.__data_);
            }

            if (v64 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v63, &v50))
            {
              operator new();
            }

            std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(v64[0]);
          }
        }
      }
    }

    v13 = 0;
    while (1)
    {
      v38 = *v11;
      if (!*v11)
      {
        break;
      }

      while (1)
      {
        v11 = v38;
        if ((std::operator<=>[abi:se200100]<std::string,std::string,std::string,std::string>(&v47, v38 + 4) & 0x80) != 0)
        {
          break;
        }

        if ((std::operator<=>[abi:se200100]<std::string,std::string,std::string,std::string>(v11 + 4, &v47) & 0x80) == 0)
        {
          goto LABEL_87;
        }

        v38 = v11[1];
        if (!v38)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_86:
    operator new();
  }

  v13 = *(v12 + 80);
LABEL_87:
  std::mutex::unlock(v8);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1BE5E4BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  std::mutex::unlock(v32);
  std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:se200100]<std::string,std::string,std::string,std::string>(void *a1, void *a2)
{
  result = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2);
  if (!result)
  {

    return std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a2 + 3);
  }

  return result;
}

void *std::set<std::string>::set[abi:se200100](void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[3 * a3];
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

        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 3;
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
        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v5, v7 + 4) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_1BE5E5324(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

void morphun::util::ResourceLocator::getDirectoryFromEnvironment(morphun::util::ResourceLocator *this@<X0>, const char *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  v32[2] = *MEMORY[0x1E69E9840];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = getenv(this);
  if (v6)
  {
    v7 = v6;
    if (*v6)
    {
      v8 = strlen(v6);
      morphun::util::StringViewUtils::to_u16string(v7, v8, a3);
    }
  }

  else
  {
    dladdr(a2, &v30);
    if (v30.dli_fname && *v30.dli_fname)
    {
      v9 = strlen(v30.dli_fname);
      morphun::util::StringViewUtils::to_u16string(v30.dli_fname, v9, &__str);
      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      size = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (size)
      {
        v13 = p_str + 2 * size;
        v14 = -2 * size;
        while (v14)
        {
          v15 = *(v13 - 1);
          v13 -= 2;
          v14 += 2;
          if (v15 == 47)
          {
            v16 = v13 - p_str;
            if (v16 != -2)
            {
              v17 = v16 >> 1;
              do
              {
                std::basic_string<char16_t>::resize(&__str, v17--, 0);
              }

              while ((std::basic_string<char16_t>::ends_with[abi:se200100](&__str, "/") & 1) != 0);
              v18 = 0;
              v32[0] = L"/usr/local/lib";
              v32[1] = "/";
              while (1)
              {
                std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, v32[v18]);
                if ((v28 & 0x80u) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if ((v28 & 0x80u) == 0)
                {
                  v20 = v28;
                }

                else
                {
                  v20 = v27;
                }

                v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v22 = &__str;
                }

                else
                {
                  v22 = __str.__r_.__value_.__r.__words[0];
                }

                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v21 = __str.__r_.__value_.__l.__size_;
                }

                v31[0] = v22;
                v31[1] = v21;
                if (std::u16string_view::ends_with[abi:se200100](v31, p_p, v20))
                {
                  break;
                }

                if (v28 < 0)
                {
                  operator delete(__p);
                }

                if (++v18 == 2)
                {
                  goto LABEL_38;
                }
              }

              v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v23 = __str.__r_.__value_.__l.__size_;
              }

              v24 = v28;
              if ((v28 & 0x80u) != 0)
              {
                v24 = v27;
              }

              std::basic_string<char16_t>::assign(a3, &__str, 0, v23 - v24);
              if (v28 < 0)
              {
                operator delete(__p);
              }

LABEL_38:
              v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            break;
          }
        }
      }

      if (v10 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1BE5E5584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::ResourceLocator::APPLE_FRAMEWORKS_ROOT_DIRECTORY(morphun::util::ResourceLocator *this)
{
  {
    morphun::util::ResourceLocator::getDirectoryFromEnvironment("APPLE_FRAMEWORKS_ROOT", MEMORY[0x1E695D7C0], &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    morphun::util::StringViewUtils::strdup(p_p);
  }

  return morphun::util::ResourceLocator::APPLE_FRAMEWORKS_ROOT_DIRECTORY(void)::APPLE_FRAMEWORKS_ROOT_DIRECTORY_;
}

void sub_1BE5E5690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::util::ResourceLocator::MORPHUN_ROOT_DIRECTORY(morphun::util::ResourceLocator *this)
{
  {
    morphun::util::ResourceLocator::getDirectoryFromEnvironment("MORPHUN_ROOT", morphun::util::ResourceLocator::getDirectoryFromEnvironment, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    morphun::util::StringViewUtils::strdup(p_p);
  }

  return morphun::util::ResourceLocator::MORPHUN_ROOT_DIRECTORY(void)::MORPHUN_ROOT_DIRECTORY_;
}

void sub_1BE5E5774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::util::ResourceLocator::getRootForLocale(morphun::util::ResourceLocator *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  morphun::resources::DataRegistrationService::getDataPathForLocale(this, &__p);
  v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__r.__words[1];
    if (__p.__r_.__value_.__l.__size_)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    p_p = &__p;
LABEL_6:
    morphun::util::StringViewUtils::to_u16string(p_p, v5, a2);
    goto LABEL_14;
  }

  v7 = morphun::util::ResourceLocator::MORPHUN_ROOT_DIRECTORY(v4);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v12, L"/usr/share/morphun");
  if (!v7)
  {
    __break(1u);
    return;
  }

  if (*v7)
  {
    v9 = 0;
    do
    {
      v10 = (v9 + 1);
    }

    while (v7[++v9]);
  }

  else
  {
    v10 = 0;
  }

  std::basic_string<char16_t>::insert(&v12, v7, v10, v8);
  *a2 = v12;
LABEL_14:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5E5874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void morphun::analysis::stemmer::NlLemmaFilter::stem(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    LODWORD(v5) = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = (v5 - 4);
  if (v5 >= 4)
  {
    if (v5 < 9)
    {
      goto LABEL_16;
    }

    v8 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, L"heden");
    v2 = *(a2 + 23);
    v3 = v2;
    v4 = *(a2 + 8);
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = (v5 - 6);
    if ((v2 & 0x80u) == 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    if (v10 < v9)
    {
      goto LABEL_137;
    }

    v11 = *a2;
    if ((v2 & 0x80u) == 0)
    {
      v11 = a2;
    }

    if (*(v11 + 2 * v9) == 99)
    {
      goto LABEL_16;
    }

    v12 = (v5 - 7);
    if (v10 < v12)
    {
      goto LABEL_137;
    }

    if (*(v11 + 2 * v12) == 115)
    {
LABEL_16:
      memset(&__str, 0, sizeof(__str));
      if (v3 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if (v3 >= 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v4;
      }

      morphun::grammar::synthesis::NlGrammarSynthesizer::guessDiminutive(&__str, v13, v14);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::basic_string<char16_t>::operator=(a2, &__str);
        goto LABEL_26;
      }

      v17 = (v5 - 1);
      v18 = *(a2 + 23);
      if (v18 >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = *(a2 + 8);
      }

      if (v19 >= v17)
      {
        v20 = *a2;
        if (v18 >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        if (*(v21 + 2 * v17) != 110)
        {
          goto LABEL_70;
        }

        {
          operator new();
        }

        if (!morphun::analysis::stemmer::E_SET(void)::E_SET_)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }

        v22 = (v5 - 2);
        v18 = *(a2 + 23);
        if (v18 >= 0)
        {
          v19 = *(a2 + 23);
        }

        else
        {
          v19 = *(a2 + 8);
        }

        if (v19 < v22)
        {
          goto LABEL_137;
        }

        v23 = *(morphun::analysis::stemmer::E_SET(void)::E_SET_ + 8);
        v20 = *a2;
        v24 = v18 >= 0 ? a2 : *a2;
        if (!v23)
        {
          goto LABEL_70;
        }

        v25 = *morphun::analysis::stemmer::E_SET(void)::E_SET_ + 2 * v23;
        v26 = 2 * v23;
        v27 = *morphun::analysis::stemmer::E_SET(void)::E_SET_;
        while (*v27 != *(v24 + 2 * v22))
        {
          ++v27;
          v26 -= 2;
          if (!v26)
          {
            goto LABEL_70;
          }
        }

        v29 = v27 == v25 ? 0 : v27;
        if (v27 == v25 || (v29 - *morphun::analysis::stemmer::E_SET(void)::E_SET_) == -2)
        {
LABEL_70:
          if (v19 >= v17)
          {
            if (v18 >= 0)
            {
              v37 = a2;
            }

            else
            {
              v37 = v20;
            }

            if (*(v37 + 2 * v17) != 115)
            {
              goto LABEL_77;
            }

            v38 = (v5 - 2);
            if (v19 >= v38)
            {
              *(v37 + 2 * v38);
              goto LABEL_77;
            }
          }
        }

        else
        {
          v30 = (v5 - 3);
          isVowelAtIndex = morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(v24, v19, v5 - 3);
          v32 = *(a2 + 23);
          v33 = v32;
          v34 = *(a2 + 8);
          if ((v32 & 0x80u) == 0)
          {
            v35 = *(a2 + 23);
          }

          else
          {
            v35 = *(a2 + 8);
          }

          if (!isVowelAtIndex)
          {
            if (v35 < v30 || v35 < v6)
            {
              goto LABEL_137;
            }

            if ((v32 & 0x80u) == 0)
            {
              v39 = a2;
            }

            else
            {
              v39 = *a2;
            }

            v40 = *(v39 + 2 * v30);
            if (v40 == *(v39 + 2 * v6) || v40 == 39)
            {
              goto LABEL_77;
            }

            if (v5 == 4)
            {
              goto LABEL_119;
            }

            v41 = morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(v39, v35, v5 - 4);
            v32 = *(a2 + 23);
            v33 = v32;
            v34 = *(a2 + 8);
            if (!v41)
            {
              goto LABEL_119;
            }

            v42 = *a2;
            v43 = (v32 & 0x80u) == 0 ? a2 : *a2;
            v44 = (v32 & 0x80u) == 0 ? *(a2 + 23) : *(a2 + 8);
            v45 = morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(v43, v44, v5 - 5);
            v32 = *(a2 + 23);
            v33 = v32;
            v34 = *(a2 + 8);
            if (v45 && ((v46 = *a2, (v32 & 0x80u) == 0) ? (v47 = a2) : (v47 = *a2), (v32 & 0x80u) == 0 ? (v48 = *(a2 + 23)) : (v48 = *(a2 + 8)), !morphun::analysis::stemmer::NlLemmaFilter::shouldElongateVowel(v47, v48, v5 - 5)))
            {
LABEL_119:
              if (v33 >= 0)
              {
                v56 = v32;
              }

              else
              {
                v56 = v34;
              }

              if (v56 < v30)
              {
                goto LABEL_137;
              }

              v57 = *a2;
              if (v33 >= 0)
              {
                v57 = a2;
              }

              v58 = *(v57 + 2 * v30);
              if (v58 == 122)
              {
                v59 = word_1BE80EB90;
              }

              else
              {
                if (v58 != 118)
                {
                  goto LABEL_77;
                }

                v59 = "f";
              }

              std::basic_string<char16_t>::replace(a2, (v5 - 3), 3uLL, v59, 1uLL);
            }

            else
            {
              if ((v32 & 0x80u) == 0)
              {
                v49 = v32;
              }

              else
              {
                v49 = v34;
              }

              if (v49 < v30)
              {
                goto LABEL_137;
              }

              v50 = *a2;
              if ((v32 & 0x80u) == 0)
              {
                v50 = a2;
              }

              v51 = *(v50 + 2 * v30);
              if (v51 == 118)
              {
                v52 = 102;
              }

              else
              {
                v52 = v51;
              }

              if (v51 == 122)
              {
                v53 = 115;
              }

              else
              {
                v53 = v52;
              }

              std::basic_string<char16_t>::resize(a2, (v5 - 3), 0);
              v54 = *(a2 + 23);
              if (v54 < 0)
              {
                v54 = *(a2 + 8);
                if (!v54)
                {
                  goto LABEL_137;
                }

                v55 = *a2;
              }

              else
              {
                if (!*(a2 + 23))
                {
                  goto LABEL_137;
                }

                v55 = a2;
              }

              std::basic_string<char16_t>::push_back(a2, *(v55 + 2 * v54 - 2));
              std::basic_string<char16_t>::push_back(a2, v53);
            }

LABEL_26:
            if (*(a2 + 23) >= 0)
            {
              v16 = *(a2 + 23);
            }

            else
            {
              v16 = *(a2 + 8);
            }

            goto LABEL_77;
          }

          if (v35 >= v30)
          {
            v36 = *a2;
            if ((v32 & 0x80u) == 0)
            {
              v36 = a2;
            }

            if (*(v36 + 2 * v30) != 105)
            {
              goto LABEL_77;
            }

            if (v35 >= v22)
            {
              if (*(v36 + 2 * v22) == 235)
              {
                std::basic_string<char16_t>::replace(a2, (v5 - 2), 2uLL, byte_1BE80ECC4, 1uLL);
                goto LABEL_26;
              }

LABEL_77:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              return;
            }
          }
        }
      }

LABEL_137:
      __break(1u);
      return;
    }

    std::basic_string<char16_t>::replace(a2, (v5 - 3), 3uLL, L"id", 2uLL);
    if (*(a2 + 23) >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 8);
    }
  }
}

void sub_1BE5E5DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL morphun::analysis::stemmer::NlLemmaFilter::shouldElongateVowel(_BOOL8 result, unint64_t a2, unsigned int a3)
{
  v3 = a3 + 1;
  if (v3 >= a2)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    goto LABEL_11;
  }

  v4 = *(result + 2 * a3);
  if (v4 != 117)
  {
    if (v4 == 105)
    {
      if (a2 > v3)
      {
        v5 = 97;
        return *(result + 2 * v3) == v5;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (a2 > v3)
  {
    v5 = 101;
    return *(result + 2 * v3) == v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

void morphun::analysis::stemmer::NlLemmaFilter::getLemmaWithLemmaMappingsWithLowerCase(uint64_t *a1@<X0>, std::basic_string<char16_t>::value_type *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a1[68] & a4) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    morphun::grammar::synthesis::NlGrammarSynthesizer::guessDiminutive(&__p, a2, a3);
    v17 = 0;
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &__p) : (v12 = __p.__r_.__value_.__r.__words[0]), CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[48], &v17, v12, size), v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]), CombinedBinaryType))
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
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::getLemmaWithLemmaMappingsWithLowerCase(a1, &p_p->__r_.__value_.__l.__data_, v15, v17, a5);
      v16 = 0;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_20:
        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 1;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_20;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

LABEL_21:
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::getLemmaWithLemmaMappingsWithLowerCase(a1, a2, a3, a4, a5);
}

void sub_1BE5E5F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::stemmer::NlLemmaFilter::~NlLemmaFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9E90);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9E90);
}

morphun::dialog::InflectableStringConcept *morphun::dialog::InflectableStringConcept::InflectableStringConcept(morphun::dialog::InflectableStringConcept *this, const morphun::dialog::InflectableStringConcept *a2)
{
  *this = &off_1F3CECC98;
  v4 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCA78, a2);
  *v4 = &unk_1F3CD8678;
  morphun::dialog::SpeakableString::SpeakableString((v4 + 40), (a2 + 40));
  *(this + 10) = &unk_1F3CD8370;
  if (*(a2 + 111) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v5 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v5;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 14, a2 + 112);
  return this;
}

void sub_1BE5E6138(_Unwind_Exception *a1)
{
  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, off_1F3CDCA78);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::InflectableStringConcept::getFeatureValue(morphun::dialog::InflectableStringConcept *this, const morphun::dialog::SemanticFeature *a2)
{
  if ((*(*this + 48))(this))
  {
    operator new();
  }

  v4 = (*(*this + 40))(this);
  v5 = npc<morphun::dialog::SemanticFeatureModel const>(v4);
  DefaultFeatureFunction = morphun::dialog::SemanticFeatureModel::getDefaultFeatureFunction(v5, a2);
  if (!DefaultFeatureFunction)
  {
    return 0;
  }

  v7 = DefaultFeatureFunction;
  morphun::dialog::InflectableStringConcept::getDisplayValue(this, 1, v10);
  if (v11 != 1)
  {
    return 0;
  }

  v8 = (*(*v7 + 24))(v7, v10, this + 16);
  if (v11)
  {
  }

  return v8;
}

void sub_1BE5E62C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::InflectableStringConcept::getDisplayValue@<X0>(morphun::dialog::InflectableStringConcept *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v16[7] = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 40))(this);
  result = npc<morphun::dialog::SemanticFeatureModel const>(v6);
  if (*(result + 232) && *(this + 4))
  {
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    if (*(this + 9))
    {
      v8 = (*(*this + 120))(this);
      npc<morphun::dialog::SemanticFeature const>(v8);
      if (*(this + 9))
      {
        v9 = *(this + 9);
      }

      std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,morphun::dialog::SemanticFeature const&,std::basic_string<char16_t> const&>(&v14, v8);
    }

    morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(v16, this + 3, &v14);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue const*,morphun::dialog::SemanticFeatureModel_DisplayValue const*>();
  }

  if (a2)
  {
    *a3 = &unk_1F3CD8370;
    if (*(this + 111) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((a3 + 8), *(this + 11), *(this + 12));
    }

    else
    {
      *(a3 + 8) = *(this + 88);
      *(a3 + 24) = *(this + 13);
    }

    result = std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100]((a3 + 32), this + 112);
    *(a3 + 56) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 56) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5E6664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, void **a21)
{
  (*(*v21 + 16))(v21);
  a21 = &a14;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&a21);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a18);
  _Unwind_Resume(a1);
}

unsigned __int16 *std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,morphun::dialog::SemanticFeature const&,std::basic_string<char16_t> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

std::basic_string<char16_t> *std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>::pair[abi:se200100]<true,0>(std::basic_string<char16_t> *a1, const morphun::dialog::SemanticFeature *a2, __int128 *a3)
{
  morphun::dialog::SemanticFeature::SemanticFeature(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1 + 3, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[3].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

uint64_t morphun::dialog::InflectableStringConcept::isExists(morphun::dialog::InflectableStringConcept *this)
{
  morphun::dialog::InflectableStringConcept::getDisplayValue(this, 0, v3);
  v1 = v4;
  if (v4 == 1)
  {
  }

  return v1;
}

uint64_t morphun::dialog::InflectableStringConcept::toSpeakableString(morphun::dialog::InflectableStringConcept *this)
{
  morphun::dialog::InflectableStringConcept::getDisplayValue(this, 1, v4);
  if (v5 == 1)
  {
    v2 = (*(*this + 120))(this);
    npc<morphun::dialog::SemanticFeature const>(v2);
    if ((*(v4[0] + 32))(v4, v2))
    {
      operator new();
    }

    operator new();
  }

  if (v5 == 1)
  {
  }

  return 0;
}

void sub_1BE5E6ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  MEMORY[0x1BFB49160](v16, 0x10B3C40F7FF9C27);
  if (a16 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::InflectableStringConcept::~InflectableStringConcept(void ***this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::InflectableStringConcept::~InflectableStringConcept(void ***this, uint64_t a2)
{
  v4 = *a2;
  *this = *a2;
  *(*(v4 - 9) + this) = *(a2 + 40);
  *(*(*this - 7) + this) = *(a2 + 48);
  *(*(*this - 5) + this) = *(a2 + 56);

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(this, (a2 + 8));
}

morphun::dialog::InflectableStringConcept *morphun::dialog::InflectableStringConcept::InflectableStringConcept(morphun::dialog::InflectableStringConcept *this, const morphun::dialog::SemanticFeatureModel *a2, const morphun::dialog::SpeakableString *a3, const morphun::dialog::SpeakableString *a4)
{
  v7 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v8 = *a2;
  *v7 = *a2;
  *(this + *(v8 - 72)) = *(a2 + 5);
  *(this + *(*this - 56)) = *(a2 + 6);
  *(this + *(*this - 40)) = *(a2 + 7);
  morphun::dialog::SpeakableString::SpeakableString((this + 40), a4);
  SpeakFeature = morphun::dialog::SemanticFeatureConceptBase::getSpeakFeature(this);
  npc<morphun::dialog::SemanticFeature const>(SpeakFeature);
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue((this + 80), a4, SpeakFeature);
  return this;
}

morphun::dialog::InflectableStringConcept *morphun::dialog::InflectableStringConcept::InflectableStringConcept(morphun::dialog::InflectableStringConcept *this, const morphun::dialog::SemanticFeatureModel *a2, const morphun::dialog::SpeakableString *a3)
{
  *this = &off_1F3CECC98;
  v5 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCA78, a2);
  *v5 = &unk_1F3CD8678;
  morphun::dialog::SpeakableString::SpeakableString((v5 + 5), a3);
  SpeakFeature = morphun::dialog::SemanticFeatureConceptBase::getSpeakFeature(this);
  npc<morphun::dialog::SemanticFeature const>(SpeakFeature);
  morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue((this + 80), a3, SpeakFeature);
  return this;
}

morphun::dialog::InflectableStringConcept *morphun::dialog::InflectableStringConcept::InflectableStringConcept(morphun::dialog::InflectableStringConcept *this, const morphun::dialog::InflectableStringConcept *a2, uint64_t a3)
{
  v6 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 72)) = *(a2 + 5);
  *(this + *(*this - 56)) = *(a2 + 6);
  *(this + *(*this - 40)) = *(a2 + 7);
  morphun::dialog::SpeakableString::SpeakableString((this + 40), (a3 + 40));
  *(this + 10) = &unk_1F3CD8370;
  if (*(a3 + 111) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 88), *(a3 + 88), *(a3 + 96));
  }

  else
  {
    v8 = *(a3 + 88);
    *(this + 13) = *(a3 + 104);
    *(this + 88) = v8;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 14, a3 + 112);
  return this;
}

void sub_1BE5E711C(_Unwind_Exception *a1)
{
  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::InflectableStringConcept::~InflectableStringConcept(morphun::dialog::InflectableStringConcept *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::InflectableStringConcept::~InflectableStringConcept(void *a1)
{
}

{
}

{

  JUMPOUT(0x1BFB49160);
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::analysis::stemmer::HeLemmaFilter::stem(uint64_t a1, uint64_t a2)
{
  if (std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80F522))
  {
    v3 = *(a2 + 23);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 8);
    }

    std::basic_string<char16_t>::resize(a2, v3 - 2, 0);
    morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(a2, word_1BE808680, 1uLL, word_1BE808684, 1uLL);
    morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(a2, word_1BE808688, 1uLL, word_1BE80F390, 1uLL);
    morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(a2, word_1BE80868C, 1uLL, word_1BE808690, 1uLL);
    morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(a2, word_1BE808694, 1uLL, word_1BE808698, 1uLL);
    v4 = &unk_1BE80869C;
    v5 = &unk_1BE8086A0;
    v6 = a2;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(a2, word_1BE80F50C, 3uLL, word_1BE80F506, 2uLL);
    v4 = &unk_1BE80F514;
    v5 = &unk_1BE80F4F0;
    v6 = a2;
    v7 = 4;
    v8 = 2;
  }

  morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(v6, v4, v7, v5, v8);
  if (std::basic_string<char16_t>::starts_with[abi:se200100](a2, word_1BE80F4FC))
  {
    std::basic_string<char16_t>::erase(a2, 0, 1uLL);
  }

  if (*(a2 + 23) >= 0)
  {
    return *(a2 + 23);
  }

  else
  {
    return *(a2 + 8);
  }
}

std::basic_string<char16_t> *morphun::analysis::stemmer::HeLemmaFilter::replaceSuffix(std::basic_string<char16_t> *a1, unsigned __int16 *a2, unint64_t a3, const std::basic_string<char16_t>::value_type *a4, std::basic_string<char16_t>::size_type a5)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v13[0] = v10;
  v13[1] = size;
  result = std::u16string_view::ends_with[abi:se200100](v13, a2, a3);
  if (result)
  {
    v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x80u) != 0)
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    return std::basic_string<char16_t>::replace(a1, v12 - a3, a3, a4, a5);
  }

  return result;
}

void morphun::analysis::stemmer::HeLemmaFilter::~HeLemmaFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9EE8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9EE8);
}

uint64_t morphun::exception::Throwable::what(morphun::exception::Throwable *this)
{
  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void morphun::exception::Throwable::~Throwable(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

{
  this->__vftable = &unk_1F3CD0878;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

double morphun::exception::Throwable::Throwable(morphun::exception::Throwable *this)
{
  *this = &unk_1F3CD0878;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F3CD0878;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t morphun::exception::Throwable::Throwable(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F3CD0878;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    LODWORD(v7) = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 1);
  }

  morphun::util::StringViewUtils::convert((a1 + 32), v6, v7);
  return a1;
}

void sub_1BE5E824C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void **a10, icu4cxx::UnicodeSet *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  __p = a9;
  std::vector<morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::__destroy_vector::operator()[abi:se200100](&__p);
  std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(*a10);
  icu4cxx::UnicodeSet::~UnicodeSet(a11);
  morphun::tokenizer::TokenExtractor::~TokenExtractor(v26, off_1F3CD9C80);
  MEMORY[0x1BFB49160](v26, 0x10F3C40C2C6248CLL);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::JaCommonConceptFactory::quantifiedJoin(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, void *a4@<X8>)
{
  morphun::dialog::SpeakableString::SpeakableString(v7, a3);
  morphun::dialog::SpeakableString::operator+(a1, v7, v8);
  morphun::dialog::SpeakableString::operator+(v8, a2, a4);
}

void sub_1BE5E841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  _Unwind_Resume(a1);
}

void morphun::dialog::language::JaCommonConceptFactory::quote(const morphun::dialog::SpeakableString *a1@<X1>, void *a2@<X8>)
{
  if ((*(*a1 + 48))(a1))
  {
    v5 = (*(*a1 + 32))(a1);
    std::operator+<char16_t>(&v8, &unk_1BE80ED88, v5);
    std::basic_string<char16_t>::append(&v8, word_1BE80ED8C, 1uLL);
    __p = v8;
    memset(&v8, 0, sizeof(v8));
    morphun::dialog::SpeakableString::SpeakableString(a2, &__p);
  }

  else
  {
    v6 = (*(*a1 + 32))(a1);
    std::operator+<char16_t>(&v8, &unk_1BE80ED88, v6);
    std::basic_string<char16_t>::append(&v8, word_1BE80ED8C, 1uLL);
    __p = v8;
    memset(&v8, 0, sizeof(v8));
    v7 = (*(*a1 + 40))(a1);
    morphun::dialog::SpeakableString::SpeakableString(a2, &__p, v7);
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

void sub_1BE5E85E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1BE5E879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1BE5E8A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::JaCommonConceptFactory::~JaCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC518);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC518);
}

void sub_1BE5E8C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  morphun::analysis::TokenFilter::~TokenFilter(v15, off_1F3CD9F40);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::analysis::FiAnalyzer::~FiAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB118);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB118);
}

uint64_t morphun::grammar::synthesis::EsGrammarSynthesizer_EsDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  if (TheBestDisplayValue)
  {
    v6 = TheBestDisplayValue;
    v7 = (*(*TheBestDisplayValue + 24))(TheBestDisplayValue);
    if (*(v7 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__str, *v7, *(v7 + 8));
    }

    else
    {
      v8 = *v7;
      __str.__r_.__value_.__r.__words[2] = *(v7 + 16);
      *&__str.__r_.__value_.__l.__data_ = v8;
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      morphun::grammar::synthesis::GrammarSynthesizerUtil::mergeConstraintsWithDisplayValue(&v29, v6, a3);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = __str.__r_.__value_.__l.__size_;
      }

      v31.__r_.__value_.__r.__words[0] = p_str;
      v31.__r_.__value_.__l.__size_ = v11;
      v12 = *(a1 + 120);
      v13 = *(a1 + 128);
      while (1)
      {
        if (v12 == v13)
        {
          goto LABEL_46;
        }

        v14 = v12[1];
        v15 = v12[2];
        if (v14 != v15)
        {
          break;
        }

LABEL_31:
        v12 += 4;
      }

      v16 = v14 + 23;
      while (1)
      {
        v17 = (v16 - 23);
        v18 = *v16;
        if ((v18 & 0x8000000000000000) != 0)
        {
          v18 = *(v16 - 15);
          if (!v18)
          {
            goto LABEL_30;
          }

          v17 = *v17;
        }

        else if (!*v16)
        {
          goto LABEL_30;
        }

        if (std::u16string_view::starts_with[abi:se200100](&v31, v17, v18))
        {
          v20 = *(*v12 + 9);
          if (v20 != 1)
          {
            goto LABEL_35;
          }

          v21 = *v16;
          if ((v21 & 0x8000000000000000) != 0)
          {
            v21 = *(v16 - 15);
          }

          if (v11 <= v21 || p_str->__r_.__value_.__s.__data_[v21] == 32)
          {
LABEL_35:
            if (*v12 && v16 != 23)
            {
              v23 = *v16;
              if (v23 < 0)
              {
                v23 = *(v16 - 15);
              }

              v24 = v23 + v20;
              v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = __str.__r_.__value_.__l.__size_;
              }

              if (v25 >= v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = v25;
              }

              std::basic_string<char16_t>::basic_string(&v31, &__str, v26, 0xFFFFFFFFFFFFFFFFLL, v19);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v31;
            }

LABEL_46:
            v32 = *(a1 + 8);
            memset(&v31, 0, sizeof(v31));
            std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v31, &v32, v33, 2uLL);
          }
        }

LABEL_30:
        v22 = v16 + 25;
        v16 += 48;
        if (v22 == v15)
        {
          goto LABEL_31;
        }
      }
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE5E95A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void **a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (v42)
  {
    (*(*v42 + 16))(v42);
  }

  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a20);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::EsGrammarSynthesizer_EsDisplayFunction::inflectWord(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4.__r_.__value_.__l.__data_ = *(a2 + 8);
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(v2, &v4, &v4.__r_.__value_.__r.__words[2], 2uLL);
}

void sub_1BE5E9FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    operator delete(a27);
  }

  a27 = &a31;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a27);
  a27 = (v32 - 136);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a27);
  _Unwind_Resume(a1);
}

void sub_1BE5EA0C8()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x1BE5EA0C0);
}

void morphun::grammar::synthesis::EsGrammarSynthesizer_EsDisplayFunction::~EsGrammarSynthesizer_EsDisplayFunction(morphun::grammar::synthesis::EsGrammarSynthesizer_EsDisplayFunction *this)
{
  morphun::grammar::synthesis::EsGrammarSynthesizer_EsDisplayFunction::~EsGrammarSynthesizer_EsDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5648;
  v2 = *(this + 48);
  *(this + 48) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = (this + 120);
  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__destroy_vector::operator()[abi:se200100](&v3);
  *(this + 4) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 10));
}

void morphun::grammar::synthesis::ArGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::ArGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"withWithPrep");
  operator new();
}

void sub_1BE5EB830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  MEMORY[0x1BFB49160](v55, 0x1012C40EC159624);
  while (1)
  {
    v58 = *(v54 - 1);
    v54 -= 3;
    if (v58 < 0)
    {
      operator delete(*v54);
    }

    if (v54 == (v56 - 224))
    {
      std::__tree<std::u16string_view>::destroy(*(v53 + 27));
      morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v53, off_1F3CF0188);
      MEMORY[0x1BFB49160](v53, 0x10F3C4048E31FC7);
      if (a53 < 0)
      {
        operator delete(__p);
      }

      std::__tree<std::u16string_view>::destroy(a10);
      _Unwind_Resume(a1);
    }
  }
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounCount>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5EC11C(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounCount>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::Person>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5EC358(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::Person>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounGender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5EC594(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ArGrammarSynthesizer::PronounGender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::Token *morphun::Token_Explicit::Token_Explicit(morphun::Token *a1, int a2, int a3, morphun::Token *a4, unint64_t a5, morphun::Token *a6, unint64_t a7, uint64_t a8, char *__src, unint64_t a10)
{
  *a1 = &off_1F3CED6A8;
  v11 = morphun::Token_Group::Token_Group(a1, off_1F3CDCF18, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_1F3CD96D8;
  result = (v11 + 96);
  if (a10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a10 > 0xA)
  {
    if ((a10 | 3) == 0xB)
    {
      v13 = 13;
    }

    else
    {
      v13 = (a10 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v13);
  }

  *(a1 + 119) = a10;
  v14 = result + 2 * a10;
  if (result <= __src && v14 > __src)
  {
    __break(1u);
  }

  else
  {
    if (a10)
    {
      memmove(result, __src, 2 * a10);
    }

    *v14 = 0;
    return a1;
  }

  return result;
}

void morphun::Token_Explicit::~Token_Explicit(void **this)
{
  *this = &unk_1F3CD96D8;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  morphun::Token_Group::~Token_Group(this, off_1F3CDCF18);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD96D8;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  morphun::Token_Group::~Token_Group(this, off_1F3CDCF18);
}

void morphun::Token_Explicit::toString(morphun::Token_Explicit *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "E");
  morphun::util::StringUtils::to_u16string(*(this + 2), &v50);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v50;
  }

  else
  {
    v4 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&__dst, v4, size);
  v52 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v48, ",");
  if ((v49 & 0x80u) == 0)
  {
    v6 = v48;
  }

  else
  {
    v6 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v7 = v49;
  }

  else
  {
    v7 = v48[1];
  }

  std::basic_string<char16_t>::append(&v52, v6, v7);
  v53 = v52;
  memset(&v52, 0, sizeof(v52));
  morphun::util::StringUtils::to_u16string(*(this + 3), &v47);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v47;
  }

  else
  {
    v8 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v47.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v53, v8, v9);
  v54 = v53;
  memset(&v53, 0, sizeof(v53));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v45, L", value='");
  if ((v46 & 0x80u) == 0)
  {
    v10 = v45;
  }

  else
  {
    v10 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v11 = v46;
  }

  else
  {
    v11 = v45[1];
  }

  std::basic_string<char16_t>::append(&v54, v10, v11);
  v55 = v54;
  memset(&v54, 0, sizeof(v54));
  v12 = *(this + 39);
  if (v12 >= 0)
  {
    v13 = (this + 16);
  }

  else
  {
    v13 = *(this + 2);
  }

  if (v12 >= 0)
  {
    v14 = *(this + 39);
  }

  else
  {
    v14 = *(this + 3);
  }

  std::basic_string<char16_t>::append(&v55, v13, v14);
  v56 = v55;
  memset(&v55, 0, sizeof(v55));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v43, L"', cleanValue='");
  if ((v44 & 0x80u) == 0)
  {
    v15 = v43;
  }

  else
  {
    v15 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v16 = v44;
  }

  else
  {
    v16 = v43[1];
  }

  std::basic_string<char16_t>::append(&v56, v15, v16);
  v57 = v56;
  memset(&v56, 0, sizeof(v56));
  v17 = *(this + 63);
  if (v17 >= 0)
  {
    v18 = (this + 40);
  }

  else
  {
    v18 = *(this + 5);
  }

  if (v17 >= 0)
  {
    v19 = *(this + 63);
  }

  else
  {
    v19 = *(this + 6);
  }

  std::basic_string<char16_t>::append(&v57, v18, v19);
  v58 = v57;
  memset(&v57, 0, sizeof(v57));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v41, L"', subTokens={");
  if ((v42 & 0x80u) == 0)
  {
    v20 = v41;
  }

  else
  {
    v20 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v21 = v42;
  }

  else
  {
    v21 = v41[1];
  }

  std::basic_string<char16_t>::append(&v58, v20, v21);
  v59 = v58;
  memset(&v58, 0, sizeof(v58));
  if ((*(*this + 56))(this))
  {
    v22 = (*(*this + 56))(this);
    (**v22)(v39);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v39, L"null");
  }

  if ((v40 & 0x80u) == 0)
  {
    v23 = v39;
  }

  else
  {
    v23 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v24 = v40;
  }

  else
  {
    v24 = v39[1];
  }

  std::basic_string<char16_t>::append(&v59, v23, v24);
  v60 = v59;
  memset(&v59, 0, sizeof(v59));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v37, "}");
  if ((v38 & 0x80u) == 0)
  {
    v25 = v37;
  }

  else
  {
    v25 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v26 = v38;
  }

  else
  {
    v26 = v37[1];
  }

  std::basic_string<char16_t>::append(&v60, v25, v26);
  v61 = v60;
  memset(&v60, 0, sizeof(v60));
  v29 = *(this + 12);
  v28 = this + 96;
  v27 = v29;
  v30 = v28[23];
  if (v30 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v30 >= 0)
  {
    v32 = v28[23];
  }

  else
  {
    v32 = *(v28 + 1);
  }

  std::basic_string<char16_t>::append(&v61, v31, v32);
  v62 = v61;
  memset(&v61, 0, sizeof(v61));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"'}");
  if ((v36 & 0x80u) == 0)
  {
    v33 = __p;
  }

  else
  {
    v33 = __p[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v34 = v36;
  }

  else
  {
    v34 = __p[1];
  }

  std::basic_string<char16_t>::append(&v62, v33, v34);
  *a2 = v62;
  memset(&v62, 0, sizeof(v62));
  if (v36 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5ECF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v78 - 41) < 0)
  {
    operator delete(*(v78 - 64));
  }

  if (*(v78 - 73) < 0)
  {
    operator delete(*(v78 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v78 - 105) < 0)
  {
    operator delete(*(v78 - 128));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v78 - 137) < 0)
  {
    operator delete(*(v78 - 160));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v78 - 169) < 0)
  {
    operator delete(*(v78 - 192));
  }

  if (*(v78 - 201) < 0)
  {
    operator delete(*(v78 - 224));
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v78 - 233) < 0)
  {
    operator delete(*(v78 - 256));
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  _Unwind_Resume(a1);
}

char *morphun::Token_Explicit::Token_Explicit(char *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8, uint64_t a9, char *__src, unint64_t a11)
{
  v13 = morphun::Token_Group::Token_Group(a1, a2 + 1, a3, a4, a5, a6, a7, a8, a9);
  v14 = *a2;
  *v13 = *a2;
  *&a1[*(v14 - 64)] = a2[7];
  *&a1[*(*a1 - 40)] = a2[8];
  if (a11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a11 > 0xA)
  {
    if ((a11 | 3) == 0xB)
    {
      v16 = 13;
    }

    else
    {
      v16 = (a11 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v16);
  }

  result = a1 + 96;
  a1[119] = a11;
  v17 = &result[2 * a11];
  if (result <= __src && v17 > __src)
  {
    __break(1u);
  }

  else
  {
    if (a11)
    {
      memmove(result, __src, 2 * a11);
    }

    *v17 = 0;
    return a1;
  }

  return result;
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::compareTo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = (a2 + 8);
  v3 = v4;
  v5 = *(v2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  if (v6)
  {
    v8 = *(v2 + 1);
  }

  else
  {
    v8 = *(v2 + 23);
  }

  v9 = *(a1 + 31);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = *v7;
      if (v12 < v13)
      {
        return 0xFFFFFFFFLL;
      }

      if (v13 < v12)
      {
        return 1;
      }

      ++v10;
      ++v7;
      if (!--v11)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (v9 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v8 < v9;
    }
  }
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::~LanguageGrammarFeatures_GrammarFeatures(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::~LanguageGrammarFeatures_GrammarFeatures(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 5)) = a2[1];
  v4 = this + 4;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::LanguageGrammarFeatures_GrammarFeatures(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
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

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(a1 + 32, *a4, a4[1], 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_1BE5ED5B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>(a4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }
}

void *std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(a1, v3, v5 + 16);
      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::LanguageGrammarFeatures_GrammarFeatures(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_1F3CD93B8;
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

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(a1 + 32, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1BE5ED8C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::~LanguageGrammarFeatures_GrammarFeatures(morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::getName(morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::getValues(morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(a2, *(this + 4), *(this + 5), 0x6DB6DB6DB6DB6DB7 * ((*(this + 5) - *(this + 4)) >> 3));
}

BOOL morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::operator<(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = (a2 + 8);
  v3 = v4;
  v5 = *(v2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  if (v6)
  {
    v8 = *(v2 + 1);
  }

  else
  {
    v8 = *(v2 + 23);
  }

  v9 = *(a1 + 31);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = *v7;
      if (v13 != v12)
      {
        break;
      }

      ++v10;
      ++v7;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    v14 = v12 >= v13;
  }

  else
  {
LABEL_16:
    v14 = v9 >= v8;
  }

  return !v14;
}

void morphun::grammar::synthesis::EsGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::EsGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE5EF054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  __cxa_free_exception(v47);
  *(v50 - 208) = v48;
  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__destroy_vector::operator()[abi:se200100]((v50 - 208));
  morphun::dialog::DefinitenessDisplayFunction::~DefinitenessDisplayFunction((v49 + 32));
  MEMORY[0x1BFB49160](v49, 0x10F3C4029A517A0);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Count>>(morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Count>>(morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5EF810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5EFA50(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5EFCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5EFEFC(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::EsGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::Object::toString(morphun::Object *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*(*this - 8) + 8);
  v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = strlen((v3 & 0x7FFFFFFFFFFFFFFFLL));
    morphun::util::StringViewUtils::convert(__p, v4, v5);
    if (SHIBYTE(v7) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, __p[0], __p[1]);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *__p;
      a2->__r_.__value_.__r.__words[2] = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BE5F004C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE5F07F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x1BFB49160](v35, 0x1012C40EC159624);
  v38 = v34;
  while (1)
  {
    v40 = *(v38 - 24);
    v38 -= 24;
    v39 = v40;
    if (v40)
    {
      *(v34 - 16) = v39;
      operator delete(v39);
    }

    v34 = v38;
    if (v38 == v36 - 240)
    {
      if (__p)
      {
        operator delete(__p);
      }

      MEMORY[0x1BFB49160](v32, v33);
      _Unwind_Resume(a1);
    }
  }
}

void morphun::analysis::NlAnalyzer::~NlAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAF78);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAF78);
}

void morphun::analysis::MinimalAnalyzer::~MinimalAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDADE8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDADE8);
}

morphun::analysis::Analyzer *morphun::analysis::MinimalAnalyzer::MinimalAnalyzer(morphun::analysis::MinimalAnalyzer *this, const morphun::util::ULocale *a2, uint64_t a3, uint64_t a4)
{
  result = morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(this, a2 + 1, a3, 0, a4);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 40)) = *(a2 + 7);
  return result;
}

morphun::analysis::Analyzer *morphun::analysis::MinimalAnalyzer::MinimalAnalyzer(morphun::analysis::MinimalAnalyzer *this, const morphun::util::ULocale *a2, uint64_t a3)
{
  *this = &unk_1F3CD9158;
  result = morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(this, off_1F3CDADE8, a2, 0, a3);
  *result = &unk_1F3CD2E08;
  return result;
}

void virtual thunk tomorphun::analysis::MinimalAnalyzer::~MinimalAnalyzer(morphun::analysis::MinimalAnalyzer *this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer((this + *(*this - 32)), off_1F3CDADE8);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer((this + *(*this - 32)), off_1F3CDADE8);

  JUMPOUT(0x1BFB49160);
}

void *mpron_toPronounConcept(char **a1)
{
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "O");
    morphun::exception::ClassCastException::ClassCastException(exception, &__dst);
  }

  return result;
}

void sub_1BE5F0D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v17)
  {
LABEL_6:
    if (a2 == 1)
    {
      v20 = __cxa_begin_catch(exception_object);
      morphun::util::CFUtils::convert(v20, v15, v21);
      __cxa_end_catch();
      JUMPOUT(0x1BE5F0D28);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *mpron_createWithCustom(const morphun::dialog::SemanticFeatureModel *a1, const __CFArray *a2, const __CFDictionary *a3)
{
  v30 = 0;
  v31 = 0uLL;
  npc<morphun::dialog::SemanticFeatureModel const>(a1);
  morphun::dialog::SemanticUtils::to_constraintMap(v29, a1, a3);
  Count = CFArrayGetCount(a2);
  v7 = Count;
  if (Count < 1)
  {
LABEL_22:
    operator new();
  }

  v8 = 0;
  v25 = a2;
  v26 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    if (!ValueAtIndex)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v10 = v31;
    if (v31 >= *(&v31 + 1))
    {
      break;
    }

    std::allocator_traits<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>::construct[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue,morphun::dialog::SemanticFeatureModel_DisplayValue const&,void,0>(v31, ValueAtIndex);
    v11 = v10 + 56;
LABEL_21:
    *&v31 = v11;
    if (++v8 == v7)
    {
      goto LABEL_22;
    }
  }

  v12 = 0x6DB6DB6DB6DB6DB7 * ((v31 - v30) >> 3) + 1;
  if (v12 > 0x492492492492492)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(&v31 + 1) - v30) >> 3) > v12)
  {
    v12 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v31 + 1) - v30) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(&v31 + 1) - v30) >> 3)) >= 0x249249249249249)
  {
    v13 = 0x492492492492492;
  }

  else
  {
    v13 = v12;
  }

  v35 = &v30;
  if (v13)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>(v13);
  }

  v32 = 0;
  v33 = (8 * ((v31 - v30) >> 3));
  v34 = v33;
  std::allocator_traits<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>::construct[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue,morphun::dialog::SemanticFeatureModel_DisplayValue const&,void,0>(v33, ValueAtIndex);
  v14 = v30;
  v15 = v31;
  v27 = v33 - (v31 - v30);
  *&v34 = v34 + 56;
  if (v31 == v30)
  {
LABEL_20:
    v22 = v30;
    v23 = *(&v31 + 1);
    v30 = v27;
    v28 = v34;
    v31 = v34;
    *&v34 = v22;
    *(&v34 + 1) = v23;
    v32 = v22;
    v33 = v22;
    std::__split_buffer<morphun::dialog::SemanticFeatureModel_DisplayValue>::~__split_buffer(&v32);
    v11 = v28;
    goto LABEL_21;
  }

  v16 = 0;
  v17 = &v33[-((v31 - v30) >> 3) - 7];
  v18 = v30;
  v19 = (v33 - (v31 - v30));
  do
  {
    result = std::allocator_traits<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>::construct[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue,morphun::dialog::SemanticFeatureModel_DisplayValue const&,void,0>(v19, v18);
    v18 += 56;
    v19 += 7;
    v16 -= 56;
    v17 += 7;
  }

  while (v18 != v15);
  v21 = v14;
  a2 = v25;
  v7 = v26;
  while (v14)
  {
    result = (*(*v14 + 8))(v14);
    v21 += 7;
    v14 += 7;
    if (v14 == v15)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_1BE5F1100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, void **a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  MEMORY[0x1BFB49160](v22, 0x10E1C4055CA4715);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a17);
  a16 = &a19;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&a16);
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v25, a10, v26);
    __cxa_end_catch();
    JUMPOUT(0x1BE5F10A0);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>::construct[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue,morphun::dialog::SemanticFeatureModel_DisplayValue const&,void,0>(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *result = &unk_1F3CD8370;
    if (*(a2 + 31) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((result + 1), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      result[3] = *(a2 + 24);
      *(result + 1) = v4;
    }

    return std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](v3 + 4, a2 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BE5F130C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<morphun::dialog::SemanticFeatureModel_DisplayValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void mpron_createWithDefaults(const morphun::dialog::SemanticFeatureModel *a1, const __CFDictionary *a2)
{
  npc<morphun::dialog::SemanticFeatureModel const>(a1);
  morphun::dialog::SemanticUtils::to_constraintMap(v4, a1, a2);
  operator new();
}

void sub_1BE5F1414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v13 = v12;
  MEMORY[0x1BFB49160](v13, 0x10E1C4055CA4715);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a11);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v16, v11, v17);
    __cxa_end_catch();
    JUMPOUT(0x1BE5F13FCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1BE5F153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, 0x10E1C4055CA4715);
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v19, v15, v20);
    __cxa_end_catch();
    JUMPOUT(0x1BE5F1520);
  }

  _Unwind_Resume(a1);
}

uint64_t mpron_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t *mpron_isCustomMatch(morphun::dialog::PronounConcept *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return morphun::dialog::PronounConcept::isCustomMatch(a1);
}

void sub_1BE5F1650(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v3);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v6, v2, v7);
    __cxa_end_catch();
    JUMPOUT(0x1BE5F160CLL);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::SemanticFeatureModel_DisplayData::~SemanticFeatureModel_DisplayData(morphun::dialog::SemanticFeatureModel_DisplayData *this)
{
  *this = &unk_1F3CD83C8;
  v1 = (this + 8);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v1);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD83C8;
  v1 = (this + 8);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v1);
}

uint64_t *morphun::dialog::SemanticFeatureModel_DisplayData::SemanticFeatureModel_DisplayData(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 40)) = a2[1];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue*,morphun::dialog::SemanticFeatureModel_DisplayValue*>((a1 + 1), *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  return a1;
}

void *morphun::dialog::SemanticFeatureModel_DisplayData::SemanticFeatureModel_DisplayData(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F3CD83C8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue*,morphun::dialog::SemanticFeatureModel_DisplayValue*>((a1 + 1), *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  return a1;
}

void morphun::dialog::SemanticFeatureModel_DisplayData::~SemanticFeatureModel_DisplayData(morphun::dialog::SemanticFeatureModel_DisplayData *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  v3 = (this + 8);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v3);
}

void virtual thunk tomorphun::dialog::SemanticFeatureModel_DisplayData::~SemanticFeatureModel_DisplayData(morphun::dialog::SemanticFeatureModel_DisplayData *this)
{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD83C8;
  v2 = (v1 + 8);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v2);
}

{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD83C8;
  v2 = (v1 + 8);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v2);

  JUMPOUT(0x1BFB49160);
}

unint64_t morphun::dialog::SemanticFeatureModel_DisplayData::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v7 = *(v2 + 8);
    v6 = v2 + 8;
    v5 = v7;
    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    v10 = *(v6 + 8);
    if (v8 >= 0)
    {
      v10 = *(v6 + 23);
    }

    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v9, 2 * v10);
    v2 = v6 + 48;
  }

  while (v2 != v3);
  return v4;
}

BOOL morphun::dialog::SemanticFeatureModel_DisplayData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = morphun::dialog::SemanticFeatureModel_DisplayValue::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 56;
    v4 += 56;
  }

  while (v2 != v3);
  return result;
}

uint64_t morphun::dialog::DefinitenessDisplayFunction::updateDefiniteness(morphun::dialog::DefinitenessDisplayFunction *a1, morphun::dialog::SemanticFeatureModel_DisplayValue *a2, uint64_t a3)
{
  if (!a2)
  {
    return a2;
  }

  v6 = *(a1 + 1);
  npc<morphun::dialog::SemanticFeature const>(v6);
  if (a3 + 8 == std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, v6))
  {
    memset(&__p, 0, sizeof(__p));
    ArticlePrefixLength = morphun::dialog::DefinitenessDisplayFunction::getArticlePrefixLength(a2, a1 + 5);
    if (ArticlePrefixLength < 1)
    {
      v16 = morphun::dialog::DefinitenessDisplayFunction::getArticlePrefixLength(a2, a1 + 8);
      if (v16 < 1)
      {
        goto LABEL_13;
      }

      v17 = (*(*a2 + 24))(a2);
      std::basic_string<char16_t>::basic_string(&v23, v17, v16, 0xFFFFFFFFFFFFFFFFLL, v18);
      v19 = *a2;
      __p = v23;
      v20 = (*(v19 + 40))(a2);
      morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(&v23, &__p, v20);
      v21 = npc<morphun::dialog::DefaultFeatureFunction const>(*(a1 + 4));
      v22 = (*(*v21 + 24))(v21, &v23, a3);
      if (v22)
      {
        morphun::dialog::DefinitenessDisplayFunction::replaceDisplayValue(a1, a2, v22);
      }
    }

    else
    {
      v10 = (*(*a2 + 24))(a2);
      std::basic_string<char16_t>::basic_string(&v23, v10, ArticlePrefixLength, 0xFFFFFFFFFFFFFFFFLL, v11);
      v12 = *a2;
      __p = v23;
      v13 = (*(v12 + 40))(a2);
      morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(&v23, &__p, v13);
      v14 = npc<morphun::dialog::DefaultFeatureFunction const>(*(a1 + 3));
      v15 = (*(*v14 + 24))(v14, &v23, a3);
      if (v15)
      {
        morphun::dialog::DefinitenessDisplayFunction::replaceDisplayValue(a1, a2, v15);
      }
    }

LABEL_13:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return a2;
  }

  v7 = *(*a1 + 24);

  return v7(a1, a2, a3);
}

void sub_1BE5F1EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  (*(*v22 + 16))(v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::DefinitenessDisplayFunction::getArticlePrefixLength(uint64_t a1, void *a2)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  v3 = (*(*a1 + 24))(a1);
  v4 = *(v3 + 23);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = morphun::util::LocaleUtils::ROOT(v3);
  if ((v4 & 0x80u) == 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  result = morphun::util::StringViewUtils::lowercase(&__p, v8, v9, v7);
  v13 = *a2;
  v12 = a2 + 1;
  v11 = v13;
  if (v13 == v12)
  {
LABEL_29:
    v17 = 0xFFFFFFFFLL;
    if (v25 < 0)
    {
      goto LABEL_33;
    }

    return v17;
  }

  p_p = __p;
  v14 = v24;
  if (v25 >= 0)
  {
    v14 = HIBYTE(v25);
    p_p = &__p;
  }

  while (1)
  {
    v16 = (v11 + 4);
    v17 = *(v11 + 55);
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    v18 = *(v11 + 55);
    if (v14 > v17)
    {
      goto LABEL_18;
    }

LABEL_23:
    v21 = v11[1];
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
        v22 = v11[2];
        v19 = *v22 == v11;
        v11 = v22;
      }

      while (!v19);
    }

    v11 = v22;
    if (v22 == v12)
    {
      goto LABEL_29;
    }
  }

  v18 = v11[5];
  if (v18 >= v14)
  {
    goto LABEL_23;
  }

  v16 = *v16;
  if (v18)
  {
    v19 = v16 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    __break(1u);
    return result;
  }

LABEL_18:
  if (v18)
  {
    v20 = p_p;
    while (*v16 == *v20)
    {
      ++v20;
      ++v16;
      if (!--v18)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_23;
  }

LABEL_31:
  if ((v17 & 0x80000000) != 0)
  {
    v17 = v11[5];
    if ((v25 & 0x8000000000000000) == 0)
    {
      return v17;
    }
  }

  else if ((v25 & 0x8000000000000000) == 0)
  {
    return v17;
  }

LABEL_33:
  operator delete(__p);
  return v17;
}

void sub_1BE5F2108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::dialog::DefaultFeatureFunction const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::dialog::DefinitenessDisplayFunction::replaceDisplayValue(morphun::dialog::DefinitenessDisplayFunction *this, morphun::dialog::SemanticFeatureModel_DisplayValue *a2, const morphun::dialog::SpeakableString *a3)
{
  v5 = (*(*a2 + 40))(a2);
  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](v9, v5);
  if (((*(*a3 + 48))(a3) & 1) == 0)
  {
    v6 = (*(*a3 + 40))(a3);
    v7 = *(this + 2);
    npc<morphun::dialog::SemanticFeature const>(v7);
    v9[3] = v7;
    v8 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::piecewise_construct_t const&,std::tuple<morphun::dialog::SemanticFeature const&>,std::tuple<>>(v9, v7);
    std::basic_string<char16_t>::operator=((v8 + 104), v6);
  }

  operator new();
}

uint64_t std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::piecewise_construct_t const&,std::tuple<morphun::dialog::SemanticFeature const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

morphun::dialog::SemanticFeatureModel_DisplayValue *morphun::dialog::DefinitenessDisplayFunction::addDefiniteness(morphun::dialog::DefinitenessDisplayFunction *a1, morphun::dialog::SemanticFeatureModel_DisplayValue *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a1 + 1);
    npc<morphun::dialog::SemanticFeature const>(v6);
    v7 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, v6);
    if (a3 + 8 == v7)
    {
      return a2;
    }

    v8 = v7;
    memset(&__p, 0, sizeof(__p));
    ArticlePrefixLength = morphun::dialog::DefinitenessDisplayFunction::getArticlePrefixLength(a2, a1 + 5);
    if (ArticlePrefixLength < 1)
    {
      v12 = morphun::dialog::DefinitenessDisplayFunction::getArticlePrefixLength(a2, a1 + 8);
      if (v12 < 1)
      {
        v36 = (*(*a2 + 24))(a2);
        std::basic_string<char16_t>::operator=(&__p, v36);
        goto LABEL_8;
      }

      v34 = (*(*a2 + 24))(a2);
      std::basic_string<char16_t>::basic_string(&v37, v34, v12, 0xFFFFFFFFFFFFFFFFLL, v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v10 = (*(*a2 + 24))(a2);
      std::basic_string<char16_t>::basic_string(&v37, v10, ArticlePrefixLength, 0xFFFFFFFFFFFFFFFFLL, v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = 0;
    }

    __p = v37;
LABEL_8:
    v13 = (*(*a2 + 40))(a2);
    v14 = morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(&v37, &__p, v13);
    if (ArticlePrefixLength <= 0)
    {
      v14 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(v14);
      v15 = *(v8 + 127);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v8 + 112);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v15 == v17)
      {
        if (!v15)
        {
LABEL_23:
          v21 = npc<morphun::dialog::DefaultFeatureFunction const>(*(a1 + 3));
          v22 = (*(*v21 + 24))(v21, &v37, a3);
          if (v22)
          {
            morphun::dialog::DefinitenessDisplayFunction::replaceDisplayValue(a1, a2, v22);
          }

LABEL_43:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return a2;
        }

        if (v18 >= 0)
        {
          v19 = v14;
        }

        else
        {
          v19 = *v14;
        }

        if (v16 >= 0)
        {
          v20 = (v8 + 104);
        }

        else
        {
          v20 = *(v8 + 104);
        }

        while (*v19 == *v20)
        {
          ++v20;
          ++v19;
          if (!--v15)
          {
            goto LABEL_23;
          }
        }
      }
    }

    if (v12 <= 0)
    {
      v24 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(v14);
      v25 = *(v8 + 127);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v8 + 112);
      }

      v27 = *(v24 + 23);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v24 + 8);
      }

      if (v25 == v27)
      {
        if (v25)
        {
          if (v28 >= 0)
          {
            v29 = v24;
          }

          else
          {
            v29 = *v24;
          }

          if (v26 >= 0)
          {
            v30 = (v8 + 104);
          }

          else
          {
            v30 = *(v8 + 104);
          }

          while (*v29 == *v30)
          {
            ++v30;
            ++v29;
            if (!--v25)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
LABEL_41:
          v31 = npc<morphun::dialog::DefaultFeatureFunction const>(*(a1 + 4));
          v32 = (*(*v31 + 24))(v31, &v37, a3);
          if (v32)
          {
            morphun::dialog::DefinitenessDisplayFunction::replaceDisplayValue(a1, a2, v32);
          }
        }
      }
    }

    goto LABEL_43;
  }

  return 0;
}